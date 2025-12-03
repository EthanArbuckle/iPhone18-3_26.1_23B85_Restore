@interface VNEntityIdentificationModelTrainedModel
+ (BOOL)getStoredRepresentationTag:(unsigned int *)tag forModelVersion:(unint64_t)version error:(id *)error;
+ (id)trainedModelBuiltFromConfiguration:(id)configuration dataProvider:(id)provider canceller:(id)canceller error:(id *)error;
- (VNEntityIdentificationModelTrainedModel)initWithCoder:(id)coder;
- (id)predictionsForObservation:(id)observation limit:(unint64_t)limit canceller:(id)canceller error:(id *)error;
- (id)trainingEntityPrintsForEntityWithUniqueIdentifier:(id)identifier error:(id *)error;
@end

@implementation VNEntityIdentificationModelTrainedModel

+ (id)trainedModelBuiltFromConfiguration:(id)configuration dataProvider:(id)provider canceller:(id)canceller error:(id *)error
{
  configurationCopy = configuration;
  providerCopy = provider;
  cancellerCopy = canceller;
  v12 = [configurationCopy resolvedAlgorithmAndReturnError:error];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_7;
  }

  trainedModelClass = [v12 trainedModelClass];
  if (trainedModelClass && [(VisionCoreRuntimeUtilities *)VNRuntimeUtilities item:trainedModelClass overridesClassSelector:sel_trainedModelBuiltFromConfiguration_dataProvider_canceller_error_])
  {
    v15 = [trainedModelClass trainedModelBuiltFromConfiguration:configurationCopy dataProvider:providerCopy canceller:cancellerCopy error:error];
    goto LABEL_8;
  }

  if (error)
  {
    VNEntityIdentificationModelErrorForUnsupportedAlgorithm(v13);
    *error = v15 = 0;
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

LABEL_8:

  return v15;
}

+ (BOOL)getStoredRepresentationTag:(unsigned int *)tag forModelVersion:(unint64_t)version error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  }

  return 0;
}

- (VNEntityIdentificationModelTrainedModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  [coderCopy failWithError:v6];

  return 0;
}

- (id)predictionsForObservation:(id)observation limit:(unint64_t)limit canceller:(id)canceller error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self, canceller];
  }

  return 0;
}

- (id)trainingEntityPrintsForEntityWithUniqueIdentifier:(id)identifier error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  }

  return 0;
}

@end