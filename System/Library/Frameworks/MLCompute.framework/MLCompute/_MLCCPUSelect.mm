@interface _MLCCPUSelect
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (id)layerWithDevice:(id)device;
- (_MLCCPUSelect)initWithDevice:(id)device;
@end

@implementation _MLCCPUSelect

+ (id)layerWithDevice:(id)device
{
  deviceCopy = device;
  v5 = [[self alloc] initWithDevice:deviceCopy];

  return v5;
}

- (_MLCCPUSelect)initWithDevice:(id)device
{
  deviceCopy = device;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [MLCCPUDeviceOps deviceOpsWithType:49 params:0 inDeltaData:0 outDeltaData:0];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = [v5 copy];
  v10.receiver = self;
  v10.super_class = _MLCCPUSelect;
  v8 = [(_MLCCPULayer *)&v10 initWithDevice:deviceCopy deviceOps:v7];

  return v8;
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