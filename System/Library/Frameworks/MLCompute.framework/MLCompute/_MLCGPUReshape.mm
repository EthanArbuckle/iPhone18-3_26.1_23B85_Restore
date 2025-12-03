@interface _MLCGPUReshape
+ (id)layerWithDevice:(id)device;
- (_MLCGPUReshape)initWithDevice:(id)device;
@end

@implementation _MLCGPUReshape

- (_MLCGPUReshape)initWithDevice:(id)device
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = _MLCGPUReshape;
  v5 = [(_MLCGPUReshape *)&v14 init];
  if (v5)
  {
    deviceList = [deviceCopy deviceList];
    v7 = [deviceList count];

    for (i = [MEMORY[0x277CBEBF8] mutableCopy]; v7; --v7)
    {
      v9 = +[MLCGPUDeviceOps deviceOps];
      v10 = v9;
      if (v9)
      {
        [v9 setSourceOfForwardNeededForGradient:0];
        [v10 setResultOfForwardNeededForGradient:0];
        [i addObject:v10];
      }
    }

    v11 = [i copy];
    v13.receiver = v5;
    v13.super_class = _MLCGPUReshape;
    [(_MLCGPULayer *)&v13 setDeviceOps:v11];
  }

  return v5;
}

+ (id)layerWithDevice:(id)device
{
  deviceCopy = device;
  v5 = [[self alloc] initWithDevice:deviceCopy];

  return v5;
}

@end