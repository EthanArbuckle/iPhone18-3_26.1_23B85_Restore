@interface ADJasperColorV2ExecutorParameters
- (id)initForDevice:(id)device;
@end

@implementation ADJasperColorV2ExecutorParameters

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ADJasperColorV2ExecutorParameters;
  v5 = [(ADExecutorParameters *)&v9 initForDevice:deviceCopy];
  if (v5)
  {
    v6 = [[ADJasperColorV2PipelineParameters alloc] initForDevice:deviceCopy];
    v7 = v5[6];
    v5[6] = v6;
  }

  return v5;
}

@end