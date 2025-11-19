@interface VNANFDDetectorCompoundRequestConfiguration
- (VNANFDDetectorCompoundRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDetectorConfigurationOptions:(id)a3;
@end

@implementation VNANFDDetectorCompoundRequestConfiguration

- (void)setDetectorConfigurationOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  detectorConfigurationOptions = self->_detectorConfigurationOptions;
  self->_detectorConfigurationOptions = v5;

  v7 = [v4 objectForKey:@"VNDetectorOption_OriginatingRequestSpecifier"];
  if (v7 && [v7 specifiesRequestClass:{-[VNRequestConfiguration requestClass](self, "requestClass")}])
  {
    v8.receiver = self;
    v8.super_class = VNANFDDetectorCompoundRequestConfiguration;
    -[VNRequestConfiguration setResolvedRevision:](&v8, sel_setResolvedRevision_, [v7 requestRevision]);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = VNANFDDetectorCompoundRequestConfiguration;
  v4 = [(VNRequestConfiguration *)&v13 copyWithZone:a3];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_detectorConfigurationOptions mutableCopy];
    v6 = v4[12];
    v4[12] = v5;

    v7 = [(NSMutableArray *)self->_originalRequests mutableCopy];
    v8 = v4[13];
    v4[13] = v7;

    v9 = [(NSString *)self->_detectorType copy];
    v10 = v4[14];
    v4[14] = v9;

    v11 = v4;
  }

  return v4;
}

- (VNANFDDetectorCompoundRequestConfiguration)initWithRequestClass:(Class)a3
{
  v10.receiver = self;
  v10.super_class = VNANFDDetectorCompoundRequestConfiguration;
  v3 = [(VNRequestConfiguration *)&v10 initWithRequestClass:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    detectorConfigurationOptions = v3->_detectorConfigurationOptions;
    v3->_detectorConfigurationOptions = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    originalRequests = v3->_originalRequests;
    v3->_originalRequests = v6;

    objc_storeStrong(&v3->_detectorType, @"VNANFDMultiDetectorType");
    v8 = v3;
  }

  return v3;
}

@end