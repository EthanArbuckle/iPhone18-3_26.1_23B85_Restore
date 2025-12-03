@interface ADJasperColorStillsExecutorParameters
- (id)initForDevice:(id)device;
@end

@implementation ADJasperColorStillsExecutorParameters

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ADJasperColorStillsExecutorParameters;
  v5 = [(ADExecutorParameters *)&v9 initForDevice:deviceCopy];
  if (v5)
  {
    v6 = [[ADJasperColorStillsPipelineParameters alloc] initForDevice:deviceCopy];
    v7 = v5[7];
    v5[7] = v6;

    *(v5 + 48) = 1;
  }

  return v5;
}

@end