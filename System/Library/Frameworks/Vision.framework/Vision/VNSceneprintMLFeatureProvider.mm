@interface VNSceneprintMLFeatureProvider
- (NSSet)featureNames;
- (VNSceneprintMLFeatureProvider)initWithSceneprint:(id)a3 dataType:(int64_t)a4 forKey:(id)a5 originalFeatureProvider:(id)a6;
- (id)featureValueForName:(id)a3;
@end

@implementation VNSceneprintMLFeatureProvider

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:self->_sceneprintKey])
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
      v10 = [v4 UTF8String];
      v11 = [v8 localizedDescription];
      [v11 UTF8String];
      VNValidatedLog(4, @"Unable to obtain data array %s - %s", v12, v13, v14, v15, v16, v17, v10);

      v9 = 0;
    }
  }

  else
  {
    v9 = [(MLFeatureProvider *)self->_originalFeatureProvider featureValueForName:v4];
  }

  return v9;
}

- (NSSet)featureNames
{
  v3 = [MEMORY[0x1E695DFA8] setWithObject:self->_sceneprintKey];
  originalFeatureProvider = self->_originalFeatureProvider;
  if (originalFeatureProvider)
  {
    v5 = [(MLFeatureProvider *)originalFeatureProvider featureNames];
    [v3 unionSet:v5];
  }

  return v3;
}

- (VNSceneprintMLFeatureProvider)initWithSceneprint:(id)a3 dataType:(int64_t)a4 forKey:(id)a5 originalFeatureProvider:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = VNSceneprintMLFeatureProvider;
  v14 = [(VNSceneprintMLFeatureProvider *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sceneprint, a3);
    v16 = [v12 copy];
    sceneprintKey = v15->_sceneprintKey;
    v15->_sceneprintKey = v16;

    v15->_sceneprintDataType = a4;
    objc_storeStrong(&v15->_originalFeatureProvider, a6);
  }

  return v15;
}

@end