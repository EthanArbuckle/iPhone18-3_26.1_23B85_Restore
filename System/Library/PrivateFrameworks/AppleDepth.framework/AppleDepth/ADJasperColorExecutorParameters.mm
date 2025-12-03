@interface ADJasperColorExecutorParameters
- (id)initForDevice:(id)device;
@end

@implementation ADJasperColorExecutorParameters

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ADJasperColorExecutorParameters;
  v5 = [(ADExecutorParameters *)&v9 initForDevice:deviceCopy];
  if (v5)
  {
    v6 = [[ADJasperColorPipelineParameters alloc] initForDevice:deviceCopy];
    v7 = v5[7];
    v5[7] = v6;

    *(v5 + 48) = 1;
    v5[8] = 0;
    *(v5 + 49) = 0;
  }

  return v5;
}

@end