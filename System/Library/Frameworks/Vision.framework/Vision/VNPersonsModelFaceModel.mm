@interface VNPersonsModelFaceModel
+ (BOOL)getStoredRepresentationTag:(unsigned int *)tag forModelVersion:(unint64_t)version error:(id *)error;
+ (id)modelBuiltFromConfiguration:(id)configuration dataProvider:(id)provider canceller:(id)canceller error:(id *)error;
- (BOOL)isCompatibleWithConfiguration:(id)configuration;
- (VNPersonsModelFaceModel)initWithCoder:(id)coder;
- (id)personPredictionsForFace:(id)face withDescriptor:(const void *)descriptor limit:(unint64_t)limit canceller:(id)canceller error:(id *)error;
- (id)trainingFaceprintsForPersonWithUniqueIdentifier:(id)identifier error:(id *)error;
@end

@implementation VNPersonsModelFaceModel

- (VNPersonsModelFaceModel)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = VNPersonsModelFaceModel;
  return [(VNPersonsModelFaceModel *)&v4 init];
}

- (id)trainingFaceprintsForPersonWithUniqueIdentifier:(id)identifier error:(id *)error
{
  if (error)
  {
    *error = VNPersonsModelErrorForUnimplementedMethod(self, a2);
  }

  return 0;
}

- (BOOL)isCompatibleWithConfiguration:(id)configuration
{
  v3 = [configuration resolvedAlgorithmAndReturnError:0];
  v4 = v3;
  v6 = v3 && (v5 = [v3 faceModelClass]) != 0 && objc_opt_class() == v5;

  return v6;
}

- (id)personPredictionsForFace:(id)face withDescriptor:(const void *)descriptor limit:(unint64_t)limit canceller:(id)canceller error:(id *)error
{
  if (error)
  {
    *error = VNPersonsModelErrorForUnimplementedMethod(self, a2);
  }

  return 0;
}

+ (id)modelBuiltFromConfiguration:(id)configuration dataProvider:(id)provider canceller:(id)canceller error:(id *)error
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

  faceModelClass = [v12 faceModelClass];
  if (faceModelClass && [(VisionCoreRuntimeUtilities *)VNRuntimeUtilities item:faceModelClass overridesClassSelector:sel_modelBuiltFromConfiguration_dataProvider_canceller_error_])
  {
    v15 = [faceModelClass modelBuiltFromConfiguration:configurationCopy dataProvider:providerCopy canceller:cancellerCopy error:error];
    goto LABEL_8;
  }

  if (error)
  {
    VNPersonsModelErrorForUnsupportedAlgorithm(v13);
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

@end