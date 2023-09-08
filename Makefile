
install:
	pip install -r requirements.txt

lint:
	pylint your_python_module.py

container-lint:
	docker run --rm -i hadolint/hadolint < Dockerfile

refactor: format lint

test:
	python -m unittest discover

deploy:
    # deploy goes here

run:
	python your_script.py

all: install lint test