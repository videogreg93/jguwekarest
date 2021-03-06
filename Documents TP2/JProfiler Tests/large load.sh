#!/bin/bash
# Basic range in for loop

for value in {0..250}
do
	  curl -X POST "https://jguweka.prod.openrisknet.org/algorithm/NaiveBayes" -H  "accept: text/uri-list"  -H  "Content-Type: multipart/form-data" -F "file=@weather.numeric.arff" -F "batchSize=100" -F "useKernelEstimator=0" -F "useSupervisedDiscretization=0" -F "validation=CrossValidation" -F "validationNum=10" &
done

echo All done
