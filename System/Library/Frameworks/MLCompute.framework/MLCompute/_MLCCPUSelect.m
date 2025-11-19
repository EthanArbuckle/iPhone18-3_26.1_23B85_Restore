@interface _MLCCPUSelect
+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6;
+ (id)layerWithDevice:(id)a3;
- (_MLCCPUSelect)initWithDevice:(id)a3;
@end

@implementation _MLCCPUSelect

+ (id)layerWithDevice:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDevice:v4];

  return v5;
}

- (_MLCCPUSelect)initWithDevice:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [MLCCPUDeviceOps deviceOpsWithType:49 params:0 inDeltaData:0 outDeltaData:0];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = [v5 copy];
  v10.receiver = self;
  v10.super_class = _MLCCPUSelect;
  v8 = [(_MLCCPULayer *)&v10 initWithDevice:v4 deviceOps:v7];

  return v8;
}

+ (BOOL)compileWithDevice:(id)a3 deviceOps:(id)a4 sourceTensors:(id)a5 resultTensor:(id)a6
{
  v6 = [a4 objectAtIndexedSubscript:0];
  objc_opt_class();
  v7 = objc_opt_new();
  [v6 setLayer:v7];

  return 1;
}

@end