default:
	docker-compose up

clean:
	docker run -p 8888:8888 -v "${PWD}/exercises:/notebooks" akabe/ocaml-jupyter jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace "/notebooks/*.ipynb"
