@interface ADJasperColorV2ExecutorParameters
- (id)initForDevice:(id)a3;
@end

@implementation ADJasperColorV2ExecutorParameters

- (id)initForDevice:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADJasperColorV2ExecutorParameters;
  v5 = [(ADExecutorParameters *)&v9 initForDevice:v4];
  if (v5)
  {
    v6 = [[ADJasperColorV2PipelineParameters alloc] initForDevice:v4];
    v7 = v5[6];
    v5[6] = v6;
  }

  return v5;
}

@end