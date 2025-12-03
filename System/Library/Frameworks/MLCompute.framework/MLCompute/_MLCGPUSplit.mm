@interface _MLCGPUSplit
+ (id)layerWithDevice:(id)device dimension:(unint64_t)dimension;
- (_MLCGPUSplit)initWithDevice:(id)device dimension:(unint64_t)dimension;
@end

@implementation _MLCGPUSplit

- (_MLCGPUSplit)initWithDevice:(id)device dimension:(unint64_t)dimension
{
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = _MLCGPUSplit;
  v6 = [(_MLCGPUSplit *)&v19 init];
  if (v6)
  {
    deviceList = [deviceCopy deviceList];
    v8 = [deviceList count];

    v9 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        deviceList2 = [deviceCopy deviceList];
        v12 = [deviceList2 objectAtIndexedSubscript:i];

        v13 = [objc_alloc(MEMORY[0x277CD7788]) initWithDevice:v12];
        if (v13)
        {
          v14 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v13];
          v15 = v14;
          if (v14)
          {
            [v14 setLayer:v6];
            [v15 setSourceOfForwardNeededForGradient:0];
            [v15 setResultOfForwardNeededForGradient:0];
            [v9 addObject:v15];
          }
        }
      }
    }

    v16 = [v9 copy];
    v18.receiver = v6;
    v18.super_class = _MLCGPUSplit;
    [(_MLCGPULayer *)&v18 setDeviceOps:v16];
  }

  return v6;
}

+ (id)layerWithDevice:(id)device dimension:(unint64_t)dimension
{
  deviceCopy = device;
  v7 = [[self alloc] initWithDevice:deviceCopy dimension:dimension];

  return v7;
}

@end