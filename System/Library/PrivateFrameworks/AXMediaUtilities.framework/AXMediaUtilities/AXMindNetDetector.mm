@interface AXMindNetDetector
+ (AXMindNetDetector)detectorWithModelPath:(id)path configuration:(id)configuration modelType:(int64_t)type;
- (AXMindNetDetector)initWithNetwork:(id)network nmsThreshold:(float)threshold filterThreshold:(id)filterThreshold;
- (id)detect:(id)detect;
@end

@implementation AXMindNetDetector

+ (AXMindNetDetector)detectorWithModelPath:(id)path configuration:(id)configuration modelType:(int64_t)type
{
  configurationCopy = configuration;
  v9 = [AXMindNetNetwork networkWithModelPath:path configuration:configurationCopy modelType:type];
  v10 = [self alloc];
  nmsThreshold = [configurationCopy nmsThreshold];
  [nmsThreshold floatValue];
  v13 = v12;
  filterThresholds = [configurationCopy filterThresholds];
  LODWORD(v15) = v13;
  v16 = [v10 initWithNetwork:v9 nmsThreshold:filterThresholds filterThreshold:v15];

  return v16;
}

- (AXMindNetDetector)initWithNetwork:(id)network nmsThreshold:(float)threshold filterThreshold:(id)filterThreshold
{
  networkCopy = network;
  filterThresholdCopy = filterThreshold;
  v14.receiver = self;
  v14.super_class = AXMindNetDetector;
  v11 = [(AXMindNetDetector *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_network, network);
    v12->_nmsThreshold = threshold;
    objc_storeStrong(&v12->_filterThreshold, filterThreshold);
  }

  return v12;
}

- (id)detect:(id)detect
{
  v3 = [(AXMindNetNetwork *)self->_network processCIImage:detect];

  return v3;
}

@end