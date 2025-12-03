@interface VNFaceAnalyzerCompoundRequestConfigurationGroups
- (VNFaceAnalyzerCompoundRequestConfigurationGroups)init;
- (id)allConfigurations;
- (id)configurationForRequest:(id)request withObservationGroup:(id)group compoundRequestRevision:(unint64_t)revision;
@end

@implementation VNFaceAnalyzerCompoundRequestConfigurationGroups

- (id)allConfigurations
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  allValues = [(NSMutableDictionary *)self->_generalConfigurations allValues];
  [v3 addObjectsFromArray:allValues];

  allValues2 = [(NSMutableDictionary *)self->_observationGroupConfigurations allValues];
  [v3 addObjectsFromArray:allValues2];

  return v3;
}

- (id)configurationForRequest:(id)request withObservationGroup:(id)group compoundRequestRevision:(unint64_t)revision
{
  requestCopy = request;
  groupCopy = group;
  detectionLevel = [requestCopy detectionLevel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    forceFaceprintCreation = [requestCopy forceFaceprintCreation];
  }

  else
  {
    forceFaceprintCreation = 0;
  }

  objc_opt_class();
  [VNError VNAssert:objc_opt_isKindOfClass() & 1 log:@"Request object must be of type VNImageBasedRequest"];
  [requestCopy regionOfInterest];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (groupCopy && [groupCopy count])
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    v21 = [groupCopy description];
    revision = [v20 initWithFormat:@"%@:%u:%u:%lu", v21, detectionLevel, forceFaceprintCreation, revision];

    v23 = [(NSMutableDictionary *)self->_observationGroupConfigurations objectForKeyedSubscript:revision];
    if (!v23)
    {
      v23 = [[VNFaceAnalyzerCompoundRequestConfiguration alloc] initWithRequestClass:objc_opt_class()];
      [(NSMutableDictionary *)self->_observationGroupConfigurations setObject:v23 forKeyedSubscript:revision];
    }
  }

  else
  {
    revision = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%f, %f, %f, %f:%u:%u:%lu", v13, v15, v17, v19, detectionLevel, forceFaceprintCreation, revision];
    v23 = [(NSMutableDictionary *)self->_generalConfigurations objectForKeyedSubscript:revision];
    if (!v23)
    {
      v23 = [[VNFaceAnalyzerCompoundRequestConfiguration alloc] initWithRequestClass:objc_opt_class()];
      [(NSMutableDictionary *)self->_generalConfigurations setObject:v23 forKeyedSubscript:revision];
    }
  }

  originalRequests = [(VNFaceAnalyzerCompoundRequestConfiguration *)v23 originalRequests];
  [originalRequests addObject:requestCopy];

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