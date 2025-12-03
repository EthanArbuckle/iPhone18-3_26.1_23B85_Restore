@interface VNFaceAnalyzerCompoundRequestConfiguration
- (VNFaceAnalyzerCompoundRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDetectorConfigurationOption:(id)option value:(id)value;
- (void)setDetectorConfigurationOptions:(id)options;
- (void)setResolvedRevision:(unint64_t)revision;
@end

@implementation VNFaceAnalyzerCompoundRequestConfiguration

- (void)setDetectorConfigurationOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy mutableCopy];
  detectorConfigurationOptions = self->_detectorConfigurationOptions;
  self->_detectorConfigurationOptions = v5;

  v7 = [(NSMutableDictionary *)self->_detectorConfigurationOptions objectForKeyedSubscript:@"VNDetectorOption_OriginatingRequestSpecifier"];
  v8 = v7;
  if (v7)
  {
    v9.receiver = self;
    v9.super_class = VNFaceAnalyzerCompoundRequestConfiguration;
    -[VNRequestConfiguration setResolvedRevision:](&v9, sel_setResolvedRevision_, [v7 requestRevision]);
  }
}

- (void)setResolvedRevision:(unint64_t)revision
{
  v6.receiver = self;
  v6.super_class = VNFaceAnalyzerCompoundRequestConfiguration;
  [(VNRequestConfiguration *)&v6 setResolvedRevision:?];
  v5 = [VNRequestSpecifier specifierForRequestClass:[(objc_class *)[(VNRequestConfiguration *)self requestClass] frameworkClass] revision:revision error:0];
  [(NSMutableDictionary *)self->_detectorConfigurationOptions setObject:v5 forKeyedSubscript:@"VNDetectorOption_OriginatingRequestSpecifier"];
}

- (void)setDetectorConfigurationOption:(id)option value:(id)value
{
  optionCopy = option;
  valueCopy = value;
  [(NSMutableDictionary *)self->_detectorConfigurationOptions setValue:valueCopy forKey:optionCopy];
  if ([optionCopy isEqualToString:@"VNDetectorOption_OriginatingRequestSpecifier"])
  {
    v7 = valueCopy;
    -[VNFaceAnalyzerCompoundRequestConfiguration setResolvedRevision:](self, "setResolvedRevision:", [v7 requestRevision]);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = VNFaceAnalyzerCompoundRequestConfiguration;
  v4 = [(VNRequestConfiguration *)&v12 copyWithZone:zone];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_detectorConfigurationOptions mutableCopy];
    v6 = v4[12];
    v4[12] = v5;

    v7 = [(NSMutableArray *)self->_originalRequests mutableCopy];
    v8 = v4[13];
    v4[13] = v7;

    v9 = [(NSString *)self->_detectorType copy];
    v10 = v4[14];
    v4[14] = v9;
  }

  return v4;
}

- (VNFaceAnalyzerCompoundRequestConfiguration)initWithRequestClass:(Class)class
{
  v11.receiver = self;
  v11.super_class = VNFaceAnalyzerCompoundRequestConfiguration;
  v4 = [(VNRequestConfiguration *)&v11 initWithRequestClass:?];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    detectorConfigurationOptions = v4->_detectorConfigurationOptions;
    v4->_detectorConfigurationOptions = v5;

    v7 = [VNRequestSpecifier specifierForRequestClass:[(objc_class *)class frameworkClass] revision:[(objc_class *)class defaultRevision] error:0];
    [(NSMutableDictionary *)v4->_detectorConfigurationOptions setObject:v7 forKeyedSubscript:@"VNDetectorOption_OriginatingRequestSpecifier"];

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    originalRequests = v4->_originalRequests;
    v4->_originalRequests = v8;

    objc_storeStrong(&v4->_detectorType, @"VNFaceAnalyzerMultiDetectorType");
  }

  return v4;
}

@end