@interface _MLCCPUReshape
+ (id)layerWithDevice:(id)a3;
- (_MLCCPUReshape)initWithDevice:(id)a3;
@end

@implementation _MLCCPUReshape

- (_MLCCPUReshape)initWithDevice:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [MLCCPUDeviceOps deviceOpsWithType:27 params:0 inDeltaData:0 outDeltaData:0];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = [v5 copy];
  v10.receiver = self;
  v10.super_class = _MLCCPUReshape;
  v8 = [(_MLCCPULayer *)&v10 initWithDevice:v4 deviceOps:v7];

  return v8;
}

+ (id)layerWithDevice:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDevice:v4];

  return v5;
}

@end