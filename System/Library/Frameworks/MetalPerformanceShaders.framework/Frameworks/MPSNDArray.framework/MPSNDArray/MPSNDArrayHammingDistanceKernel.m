@interface MPSNDArrayHammingDistanceKernel
- (MPSNDArrayHammingDistanceKernel)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayHammingDistanceKernel)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayHammingDistanceKernel

- (MPSNDArrayHammingDistanceKernel)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayHammingDistanceKernel;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:a3];
  result->super.super._encode = EncodeHammingDistance;
  result->super.super.super._encodeGradient = 0;
  result->super.super.super._encodeData = result;
  return result;
}

- (MPSNDArrayHammingDistanceKernel)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayHammingDistanceKernel;
  result = [(MPSNDArrayBinaryKernel *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodeHammingDistance;
    result->super.super.super._encodeGradient = 0;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayHammingDistanceKernel;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayHammingDistanceKernel;
  return [(MPSNDArrayMultiaryKernel *)&v5 copyWithZone:a3 device:a4];
}

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayHammingDistanceKernel;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:a3 sourceState:a7, a5, a6];
}

@end