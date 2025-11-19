@interface ADJasperColorStillsExecutorParameters
- (id)initForDevice:(id)a3;
@end

@implementation ADJasperColorStillsExecutorParameters

- (id)initForDevice:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADJasperColorStillsExecutorParameters;
  v5 = [(ADExecutorParameters *)&v9 initForDevice:v4];
  if (v5)
  {
    v6 = [[ADJasperColorStillsPipelineParameters alloc] initForDevice:v4];
    v7 = v5[7];
    v5[7] = v6;

    *(v5 + 48) = 1;
  }

  return v5;
}

@end