@interface VNDetectionprintMLFeatureProvider
+ (id)VNDetectionprintTensorKeyForFeatureName:(id)name;
- (NSSet)featureNames;
- (VNDetectionprintMLFeatureProvider)initWithDetectionprint:(id)detectionprint featureDescriptions:(id)descriptions originalFeatureProvider:(id)provider;
- (id)featureValueForName:(id)name;
@end

@implementation VNDetectionprintMLFeatureProvider

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  v5 = [(NSDictionary *)self->_detectionprintFeatureDescriptions objectForKey:nameCopy];
  if (v5)
  {
    v6 = [objc_opt_class() VNDetectionprintTensorKeyForFeatureName:nameCopy];
    if (v6)
    {
      detectionprint = self->_detectionprint;
      v32 = 0;
      v8 = [(VNDetectionprint *)detectionprint tensorForKey:v6 error:&v32];
      v9 = v32;
      if (v8)
      {
        multiArrayConstraint = [v5 multiArrayConstraint];
        v31 = 0;
        v11 = [v8 VNEspressoModelImageprintMLMultiArrayWithConstraint:multiArrayConstraint error:&v31];
        localizedDescription2 = v31;

        if (v11)
        {
          v13 = [MEMORY[0x1E695FE60] featureValueWithMultiArray:v11];
        }

        else
        {
          v21 = [v5 description];
          uTF8String = [v21 UTF8String];
          localizedDescription = [localizedDescription2 localizedDescription];
          [localizedDescription UTF8String];
          VNValidatedLog(4, @"Unable to create detectionprint %s - %s", v24, v25, v26, v27, v28, v29, uTF8String);

          v13 = 0;
        }
      }

      else
      {
        uTF8String2 = [v6 UTF8String];
        localizedDescription2 = [v9 localizedDescription];
        [localizedDescription2 UTF8String];
        VNValidatedLog(4, @"Unable to obtain detection print tensor %s - %s", v15, v16, v17, v18, v19, v20, uTF8String2);
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [(MLFeatureProvider *)self->_originalFeatureProvider featureValueForName:nameCopy];
  }

  return v13;
}

- (NSSet)featureNames
{
  v3 = objc_alloc(MEMORY[0x1E695DFA8]);
  allKeys = [(NSDictionary *)self->_detectionprintFeatureDescriptions allKeys];
  v5 = [v3 initWithArray:allKeys];

  originalFeatureProvider = self->_originalFeatureProvider;
  if (originalFeatureProvider)
  {
    featureNames = [(MLFeatureProvider *)originalFeatureProvider featureNames];
    [v5 unionSet:featureNames];
  }

  return v5;
}

- (VNDetectionprintMLFeatureProvider)initWithDetectionprint:(id)detectionprint featureDescriptions:(id)descriptions originalFeatureProvider:(id)provider
{
  detectionprintCopy = detectionprint;
  descriptionsCopy = descriptions;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = VNDetectionprintMLFeatureProvider;
  v12 = [(VNDetectionprintMLFeatureProvider *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_detectionprint, detectionprint);
    v14 = [descriptionsCopy copy];
    detectionprintFeatureDescriptions = v13->_detectionprintFeatureDescriptions;
    v13->_detectionprintFeatureDescriptions = v14;

    objc_storeStrong(&v13->_originalFeatureProvider, provider);
  }

  return v13;
}

+ (id)VNDetectionprintTensorKeyForFeatureName:(id)name
{
  nameCopy = name;
  if (+[VNDetectionprintMLFeatureProvider VNDetectionprintTensorKeyForFeatureName:]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectionprintMLFeatureProvider VNDetectionprintTensorKeyForFeatureName:]::onceToken, &__block_literal_global_127_22857);
  }

  v4 = [+[VNDetectionprintMLFeatureProvider VNDetectionprintTensorKeyForFeatureName:]::tensorKeyForFeatureName objectForKey:nameCopy];

  return v4;
}

void __77__VNDetectionprintMLFeatureProvider_VNDetectionprintTensorKeyForFeatureName___block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"mixed2";
  v2[1] = @"mixed6";
  v3[0] = @"VNDetectionprintTensorKeyMixed2";
  v3[1] = @"VNDetectionprintTensorKeyMixed6";
  v2[2] = @"stride8Feature";
  v2[3] = @"stride16Feature";
  v3[2] = @"VNDetectionprintTensorKeyStride8FeatureMap";
  v3[3] = @"VNDetectionprintTensorKeyStride16FeatureMap";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = +[VNDetectionprintMLFeatureProvider VNDetectionprintTensorKeyForFeatureName:]::tensorKeyForFeatureName;
  +[VNDetectionprintMLFeatureProvider VNDetectionprintTensorKeyForFeatureName:]::tensorKeyForFeatureName = v0;
}

@end