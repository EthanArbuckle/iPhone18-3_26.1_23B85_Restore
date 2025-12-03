@interface _MLCCPUSplit
+ (id)layerWithDevice:(id)device dimension:(unint64_t)dimension;
- (_MLCCPUSplit)initWithDevice:(id)device dimension:(unint64_t)dimension;
@end

@implementation _MLCCPUSplit

- (_MLCCPUSplit)initWithDevice:(id)device dimension:(unint64_t)dimension
{
  deviceCopy = device;
  v6 = [MEMORY[0x277CBEBF8] mutableCopy];
  v7 = [MLCCPUDeviceOps deviceOpsWithType:46 params:0 inDeltaData:0 outDeltaData:0];
  if (v7)
  {
    [v6 addObject:v7];
  }

  v8 = [v6 copy];
  v11.receiver = self;
  v11.super_class = _MLCCPUSplit;
  v9 = [(_MLCCPULayer *)&v11 initWithDevice:deviceCopy deviceOps:v8];

  return v9;
}

+ (id)layerWithDevice:(id)device dimension:(unint64_t)dimension
{
  deviceCopy = device;
  v7 = [[self alloc] initWithDevice:deviceCopy dimension:dimension];

  return v7;
}

@end