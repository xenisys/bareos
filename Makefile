
subdirs = manuals/en/main/

MAKE=make

all: pdf html

depend:
	@for I in ${subdirs}; \
		do (cd $$I; echo "==>Entering directory `pwd`"; $(MAKE) $@ || exit 1); done

%:
	@for I in ${subdirs}; \
		do (cd $$I; echo "==>Entering directory `pwd`"; $(MAKE) $@ || exit 1); done
