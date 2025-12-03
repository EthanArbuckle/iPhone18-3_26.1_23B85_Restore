@interface _MLCCPUGather
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (id)layerWithDevice:(id)device dimension:(unint64_t)dimension;
- (_MLCCPUGather)initWithDevice:(id)device dimension:(unint64_t)dimension;
@end

@implementation _MLCCPUGather

+ (id)layerWithDevice:(id)device dimension:(unint64_t)dimension
{
  deviceCopy = device;
  v7 = [[self alloc] initWithDevice:deviceCopy dimension:dimension];

  return v7;
}

- (_MLCCPUGather)initWithDevice:(id)device dimension:(unint64_t)dimension
{
  deviceCopy = device;
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  v8 = [MLCCPUDeviceOps deviceOpsWithType:50 params:0 inDeltaData:0 outDeltaData:0];
  v9 = v8;
  if (v8)
  {
    [v8 setScatterGatherDimension:dimension];
    [v9 setScatterReduceType:1];
    [v7 addObject:v9];
  }

  v10 = [v7 copy];
  v13.receiver = self;
  v13.super_class = _MLCCPUGather;
  v11 = [(_MLCCPULayer *)&v13 initWithDevice:deviceCopy deviceOps:v10];

  return v11;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v6 = [ops objectAtIndexedSubscript:0];
  objc_opt_class();
  v7 = objc_opt_new();
  [v6 setLayer:v7];

  return 1;
}

@end