@interface MLCTensorOptimizerDeviceData
+ (id)optimizerDeviceData;
- (MLCTensorOptimizerDeviceData)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MLCTensorOptimizerDeviceData

+ (id)optimizerDeviceData
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (MLCTensorOptimizerDeviceData)init
{
  v13.receiver = self;
  v13.super_class = MLCTensorOptimizerDeviceData;
  v2 = [(MLCTensorOptimizerDeviceData *)&v13 init];
  v3 = v2;
  if (v2)
  {
    momentumVectors = v2->_momentumVectors;
    v2->_momentumVectors = 0;

    velocityVectors = v3->_velocityVectors;
    v3->_velocityVectors = 0;

    centerWeightVectors = v3->_centerWeightVectors;
    v3->_centerWeightVectors = 0;

    gpuOps = v3->_gpuOps;
    v3->_gpuOps = 0;

    momentumData = v3->_momentumData;
    v3->_momentumData = 0;

    momentumDataBytes = v3->_momentumDataBytes;
    v3->_momentumDataBytes = 0;

    sourceBNNSDesc = v3->_sourceBNNSDesc;
    v3->_sourceBNNSDesc = 0;

    gradientBNNSDesc = v3->_gradientBNNSDesc;
    v3->_gradientBNNSDesc = 0;
  }

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

@end