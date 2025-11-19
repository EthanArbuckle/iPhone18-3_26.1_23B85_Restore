@interface _MLCGPUSplit
+ (id)layerWithDevice:(id)a3 dimension:(unint64_t)a4;
- (_MLCGPUSplit)initWithDevice:(id)a3 dimension:(unint64_t)a4;
@end

@implementation _MLCGPUSplit

- (_MLCGPUSplit)initWithDevice:(id)a3 dimension:(unint64_t)a4
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = _MLCGPUSplit;
  v6 = [(_MLCGPUSplit *)&v19 init];
  if (v6)
  {
    v7 = [v5 deviceList];
    v8 = [v7 count];

    v9 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v11 = [v5 deviceList];
        v12 = [v11 objectAtIndexedSubscript:i];

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

+ (id)layerWithDevice:(id)a3 dimension:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithDevice:v6 dimension:a4];

  return v7;
}

@end