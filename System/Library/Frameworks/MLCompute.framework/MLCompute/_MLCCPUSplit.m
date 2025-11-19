@interface _MLCCPUSplit
+ (id)layerWithDevice:(id)a3 dimension:(unint64_t)a4;
- (_MLCCPUSplit)initWithDevice:(id)a3 dimension:(unint64_t)a4;
@end

@implementation _MLCCPUSplit

- (_MLCCPUSplit)initWithDevice:(id)a3 dimension:(unint64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEBF8] mutableCopy];
  v7 = [MLCCPUDeviceOps deviceOpsWithType:46 params:0 inDeltaData:0 outDeltaData:0];
  if (v7)
  {
    [v6 addObject:v7];
  }

  v8 = [v6 copy];
  v11.receiver = self;
  v11.super_class = _MLCCPUSplit;
  v9 = [(_MLCCPULayer *)&v11 initWithDevice:v5 deviceOps:v8];

  return v9;
}

+ (id)layerWithDevice:(id)a3 dimension:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithDevice:v6 dimension:a4];

  return v7;
}

@end