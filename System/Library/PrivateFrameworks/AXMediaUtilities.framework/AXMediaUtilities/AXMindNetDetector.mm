@interface AXMindNetDetector
+ (AXMindNetDetector)detectorWithModelPath:(id)a3 configuration:(id)a4 modelType:(int64_t)a5;
- (AXMindNetDetector)initWithNetwork:(id)a3 nmsThreshold:(float)a4 filterThreshold:(id)a5;
- (id)detect:(id)a3;
@end

@implementation AXMindNetDetector

+ (AXMindNetDetector)detectorWithModelPath:(id)a3 configuration:(id)a4 modelType:(int64_t)a5
{
  v8 = a4;
  v9 = [AXMindNetNetwork networkWithModelPath:a3 configuration:v8 modelType:a5];
  v10 = [a1 alloc];
  v11 = [v8 nmsThreshold];
  [v11 floatValue];
  v13 = v12;
  v14 = [v8 filterThresholds];
  LODWORD(v15) = v13;
  v16 = [v10 initWithNetwork:v9 nmsThreshold:v14 filterThreshold:v15];

  return v16;
}

- (AXMindNetDetector)initWithNetwork:(id)a3 nmsThreshold:(float)a4 filterThreshold:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AXMindNetDetector;
  v11 = [(AXMindNetDetector *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_network, a3);
    v12->_nmsThreshold = a4;
    objc_storeStrong(&v12->_filterThreshold, a5);
  }

  return v12;
}

- (id)detect:(id)a3
{
  v3 = [(AXMindNetNetwork *)self->_network processCIImage:a3];

  return v3;
}

@end