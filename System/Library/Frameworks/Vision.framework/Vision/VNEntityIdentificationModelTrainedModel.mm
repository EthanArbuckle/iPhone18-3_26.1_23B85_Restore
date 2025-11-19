@interface VNEntityIdentificationModelTrainedModel
+ (BOOL)getStoredRepresentationTag:(unsigned int *)a3 forModelVersion:(unint64_t)a4 error:(id *)a5;
+ (id)trainedModelBuiltFromConfiguration:(id)a3 dataProvider:(id)a4 canceller:(id)a5 error:(id *)a6;
- (VNEntityIdentificationModelTrainedModel)initWithCoder:(id)a3;
- (id)predictionsForObservation:(id)a3 limit:(unint64_t)a4 canceller:(id)a5 error:(id *)a6;
- (id)trainingEntityPrintsForEntityWithUniqueIdentifier:(id)a3 error:(id *)a4;
@end

@implementation VNEntityIdentificationModelTrainedModel

+ (id)trainedModelBuiltFromConfiguration:(id)a3 dataProvider:(id)a4 canceller:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 resolvedAlgorithmAndReturnError:a6];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_7;
  }

  v14 = [v12 trainedModelClass];
  if (v14 && [(VisionCoreRuntimeUtilities *)VNRuntimeUtilities item:v14 overridesClassSelector:sel_trainedModelBuiltFromConfiguration_dataProvider_canceller_error_])
  {
    v15 = [v14 trainedModelBuiltFromConfiguration:v9 dataProvider:v10 canceller:v11 error:a6];
    goto LABEL_8;
  }

  if (a6)
  {
    VNEntityIdentificationModelErrorForUnsupportedAlgorithm(v13);
    *a6 = v15 = 0;
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

LABEL_8:

  return v15;
}

+ (BOOL)getStoredRepresentationTag:(unsigned int *)a3 forModelVersion:(unint64_t)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [VNError errorForUnimplementedMethod:a2 ofObject:a1];
  }

  return 0;
}

- (VNEntityIdentificationModelTrainedModel)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  [v5 failWithError:v6];

  return 0;
}

- (id)predictionsForObservation:(id)a3 limit:(unint64_t)a4 canceller:(id)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [VNError errorForUnimplementedMethod:a2 ofObject:self, a5];
  }

  return 0;
}

- (id)trainingEntityPrintsForEntityWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  }

  return 0;
}

@end