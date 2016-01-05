PAPER = barc2016 
TEX = $(wildcard *.tex)
BIB = *.bib
FIGS = $(wildcard figures/*.pdf figures/*.png graphs/*.pdf graphs/*.png)

.PHONY: all clean

$(PAPER).pdf: $(TEX) $(BIB) $(FIGS) 
	echo $(FIGS)
	latex $(PAPER)
	bibtex $(PAPER)
	latex $(PAPER)
	latex $(PAPER)
	dvipdfmx $(PAPER)
	evince *.pdf
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.dvi *.fls *.fdb_latexmk *.pdf *.gz 

