@interface VNANFDDetectorCompoundRequestConfigurationGroups
+ (id)createCompoundConfigurationHashKeyForRequest:(id)request compoundRequestRevision:(unint64_t)revision;
- (VNANFDDetectorCompoundRequestConfigurationGroups)init;
- (id)allConfigurations;
- (id)configurationForRequest:(id)request;
@end

@implementation VNANFDDetectorCompoundRequestConfigurationGroups

- (id)allConfigurations
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  allValues = [(NSMutableDictionary *)self->_regionOfInterestConfigurations allValues];
  [v3 addObjectsFromArray:allValues];

  return v3;
}

- (id)configurationForRequest:(id)request
{
  requestCopy = request;
  v5 = [VNANFDDetectorCompoundRequest compoundRequestRevisionForRequest:requestCopy];
  v6 = [objc_opt_class() createCompoundConfigurationHashKeyForRequest:requestCopy compoundRequestRevision:v5];
  v7 = [(NSMutableDictionary *)self->_regionOfInterestConfigurations objectForKeyedSubscript:v6];
  if (!v7)
  {
    v8 = [[VNANFDDetectorCompoundRequestConfiguration alloc] initWithRequestClass:objc_opt_class()];
    [(VNRequestConfiguration *)v8 setResolvedRevision:v5];
    v7 = v8;
    [(NSMutableDictionary *)self->_regionOfInterestConfigurations setObject:v8 forKeyedSubscript:v6];
  }

  originalRequests = [v7 originalRequests];
  [originalRequests addObject:requestCopy];

  return v7;
}

- (VNANFDDetectorCompoundRequestConfigurationGroups)init
{
  v7.receiver = self;
  v7.super_class = VNANFDDetectorCompoundRequestConfigurationGroups;
  v2 = [(VNANFDDetectorCompoundRequestConfigurationGroups *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    regionOfInterestConfigurations = v2->_regionOfInterestConfigurations;
    v2->_regionOfInterestConfigurations = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)createCompoundConfigurationHashKeyForRequest:(id)request compoundRequestRevision:(unint64_t)revision
{
  [request regionOfInterest];
  v9 = v8;
  if (v8 == 0.0)
  {
    v9 = 0.0;
  }

  v10 = v5;
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  v11 = *&v10 ^ __ROR8__(*&v9, 51);
  v12 = v6;
  if (v6 == 0.0)
  {
    v12 = 0.0;
  }

  v13 = *&v12 ^ __ROR8__(v11, 51);
  v14 = v7;
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{*&v14 ^ __ROR8__(v13, 51) ^ __ROR8__(revision, 51)}];

  return v15;
}

@end