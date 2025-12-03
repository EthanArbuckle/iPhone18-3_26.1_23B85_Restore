@interface ADStereoV2ExecutorParameters
- (id)initForDevice:(id)device;
@end

@implementation ADStereoV2ExecutorParameters

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ADStereoV2ExecutorParameters;
  v5 = [(ADExecutorParameters *)&v9 initForDevice:deviceCopy];
  if (v5)
  {
    v6 = [(ADPipelineParameters *)[ADStereoV2PipelineParameters alloc] initForDevice:deviceCopy];
    v7 = v5[8];
    v5[8] = v6;

    *(v5 + 48) = 1;
    *(v5 + 13) = 1058642330;
    *(v5 + 14) = 0;
  }

  return v5;
}

@end