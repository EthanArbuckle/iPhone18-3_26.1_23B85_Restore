@interface MPSNDArrayHammingDistanceKernel
- (MPSNDArrayHammingDistanceKernel)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayHammingDistanceKernel)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayHammingDistanceKernel

- (MPSNDArrayHammingDistanceKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayHammingDistanceKernel;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:device];
  result->super.super._encode = EncodeHammingDistance;
  result->super.super.super._encodeGradient = 0;
  result->super.super.super._encodeData = result;
  return result;
}

- (MPSNDArrayHammingDistanceKernel)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayHammingDistanceKernel;
  result = [(MPSNDArrayBinaryKernel *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeHammingDistance;
    result->super.super.super._encodeGradient = 0;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayHammingDistanceKernel;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayHammingDistanceKernel;
  return [(MPSNDArrayMultiaryKernel *)&v5 copyWithZone:zone device:device];
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayHammingDistanceKernel;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:arrays sourceState:state, kernel, object];
}

@end