@interface VNSceneprintMLFeatureProvider
- (NSSet)featureNames;
- (VNSceneprintMLFeatureProvider)initWithSceneprint:(id)sceneprint dataType:(int64_t)type forKey:(id)key originalFeatureProvider:(id)provider;
- (id)featureValueForName:(id)name;
@end

@implementation VNSceneprintMLFeatureProvider

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:self->_sceneprintKey])
  {
    sceneprint = self->_sceneprint;
    sceneprintDataType = self->_sceneprintDataType;
    v19 = 0;
    v7 = [(VNEspressoModelImageprint *)sceneprint VNEspressoModelImageprintOneDimensionMLMultiArrayWithDataType:sceneprintDataType error:&v19];
    v8 = v19;
    if (v7)
    {
      v9 = [MEMORY[0x1E695FE60] featureValueWithMultiArray:v7];
    }

    else
    {
      uTF8String = [nameCopy UTF8String];
      localizedDescription = [v8 localizedDescription];
      [localizedDescription UTF8String];
      VNValidatedLog(4, @"Unable to obtain data array %s - %s", v12, v13, v14, v15, v16, v17, uTF8String);

      v9 = 0;
    }
  }

  else
  {
    v9 = [(MLFeatureProvider *)self->_originalFeatureProvider featureValueForName:nameCopy];
  }

  return v9;
}

- (NSSet)featureNames
{
  v3 = [MEMORY[0x1E695DFA8] setWithObject:self->_sceneprintKey];
  originalFeatureProvider = self->_originalFeatureProvider;
  if (originalFeatureProvider)
  {
    featureNames = [(MLFeatureProvider *)originalFeatureProvider featureNames];
    [v3 unionSet:featureNames];
  }

  return v3;
}

- (VNSceneprintMLFeatureProvider)initWithSceneprint:(id)sceneprint dataType:(int64_t)type forKey:(id)key originalFeatureProvider:(id)provider
{
  sceneprintCopy = sceneprint;
  keyCopy = key;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = VNSceneprintMLFeatureProvider;
  v14 = [(VNSceneprintMLFeatureProvider *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sceneprint, sceneprint);
    v16 = [keyCopy copy];
    sceneprintKey = v15->_sceneprintKey;
    v15->_sceneprintKey = v16;

    v15->_sceneprintDataType = type;
    objc_storeStrong(&v15->_originalFeatureProvider, provider);
  }

  return v15;
}

@end