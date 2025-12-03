@interface _MLCCPUReshape
+ (id)layerWithDevice:(id)device;
- (_MLCCPUReshape)initWithDevice:(id)device;
@end

@implementation _MLCCPUReshape

- (_MLCCPUReshape)initWithDevice:(id)device
{
  deviceCopy = device;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [MLCCPUDeviceOps deviceOpsWithType:27 params:0 inDeltaData:0 outDeltaData:0];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = [v5 copy];
  v10.receiver = self;
  v10.super_class = _MLCCPUReshape;
  v8 = [(_MLCCPULayer *)&v10 initWithDevice:deviceCopy deviceOps:v7];

  return v8;
}

+ (id)layerWithDevice:(id)device
{
  deviceCopy = device;
  v5 = [[self alloc] initWithDevice:deviceCopy];

  return v5;
}

@end