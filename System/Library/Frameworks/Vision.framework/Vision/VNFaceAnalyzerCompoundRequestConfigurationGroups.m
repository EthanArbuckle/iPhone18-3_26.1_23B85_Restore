@interface VNFaceAnalyzerCompoundRequestConfigurationGroups
- (VNFaceAnalyzerCompoundRequestConfigurationGroups)init;
- (id)allConfigurations;
- (id)configurationForRequest:(id)a3 withObservationGroup:(id)a4 compoundRequestRevision:(unint64_t)a5;
@end

@implementation VNFaceAnalyzerCompoundRequestConfigurationGroups

- (id)allConfigurations
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(NSMutableDictionary *)self->_generalConfigurations allValues];
  [v3 addObjectsFromArray:v4];

  v5 = [(NSMutableDictionary *)self->_observationGroupConfigurations allValues];
  [v3 addObjectsFromArray:v5];

  return v3;
}

- (id)configurationForRequest:(id)a3 withObservationGroup:(id)a4 compoundRequestRevision:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 detectionLevel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 forceFaceprintCreation];
  }

  else
  {
    v11 = 0;
  }

  objc_opt_class();
  [VNError VNAssert:objc_opt_isKindOfClass() & 1 log:@"Request object must be of type VNImageBasedRequest"];
  [v8 regionOfInterest];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (v9 && [v9 count])
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    v21 = [v9 description];
    v22 = [v20 initWithFormat:@"%@:%u:%u:%lu", v21, v10, v11, a5];

    v23 = [(NSMutableDictionary *)self->_observationGroupConfigurations objectForKeyedSubscript:v22];
    if (!v23)
    {
      v23 = [[VNFaceAnalyzerCompoundRequestConfiguration alloc] initWithRequestClass:objc_opt_class()];
      [(NSMutableDictionary *)self->_observationGroupConfigurations setObject:v23 forKeyedSubscript:v22];
    }
  }

  else
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%f, %f, %f, %f:%u:%u:%lu", v13, v15, v17, v19, v10, v11, a5];
    v23 = [(NSMutableDictionary *)self->_generalConfigurations objectForKeyedSubscript:v22];
    if (!v23)
    {
      v23 = [[VNFaceAnalyzerCompoundRequestConfiguration alloc] initWithRequestClass:objc_opt_class()];
      [(NSMutableDictionary *)self->_generalConfigurations setObject:v23 forKeyedSubscript:v22];
    }
  }

  v24 = [(VNFaceAnalyzerCompoundRequestConfiguration *)v23 originalRequests];
  [v24 addObject:v8];

  return v23;
}

- (VNFaceAnalyzerCompoundRequestConfigurationGroups)init
{
  v8.receiver = self;
  v8.super_class = VNFaceAnalyzerCompoundRequestConfigurationGroups;
  v2 = [(VNFaceAnalyzerCompoundRequestConfigurationGroups *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    generalConfigurations = v2->_generalConfigurations;
    v2->_generalConfigurations = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observationGroupConfigurations = v2->_observationGroupConfigurations;
    v2->_observationGroupConfigurations = v5;
  }

  return v2;
}

@end