@interface ATXScoreInterpreterCoreMLModel
@end

@implementation ATXScoreInterpreterCoreMLModel

void __121___ATXScoreInterpreterCoreMLModel_getArgumentsToEvaluateByInitializingInstanceVariablesFromFeatures_outputSpecification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = [_ATXScoreInterpreterCoreMLModelFeature alloc];
  if (isKindOfClass)
  {
    v8 = -[_ATXScoreInterpreterCoreMLModelFeature initWithFeatureName:multiArraySize:](v7, "initWithFeatureName:multiArraySize:", v5, [v9 count]);

    [*(a1 + 32) addObjectsFromArray:v9];
  }

  else
  {
    v8 = [(_ATXScoreInterpreterCoreMLModelFeature *)v7 initWithFeatureName:v5];

    [*(a1 + 32) addObject:v9];
  }

  [*(a1 + 40) addObject:v8];
}

void __93___ATXScoreInterpreterCoreMLModel_predictionForEvaluatedFeatures_withOutputIndexedSubscript___block_invoke(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v3 predictionFromFeatures:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

@end