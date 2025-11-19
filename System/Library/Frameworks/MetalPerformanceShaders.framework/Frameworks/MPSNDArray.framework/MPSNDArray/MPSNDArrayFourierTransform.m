@interface MPSNDArrayFourierTransform
- (MPSNDArrayFourierTransform)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayFourierTransform)initWithDevice:(id)a3 axesMask:(unsigned int)a4 scale:(double)a5 scalingMode:(int)a6 inverse:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayFourierTransform

- (MPSNDArrayFourierTransform)initWithDevice:(id)a3 axesMask:(unsigned int)a4 scale:(double)a5 scalingMode:(int)a6 inverse:(BOOL)a7
{
  v15.receiver = self;
  v15.super_class = MPSNDArrayFourierTransform;
  result = [(MPSNDArrayUnaryKernel *)&v15 initWithDevice:?];
  if (result)
  {
    result->super.super._encode = EncodeArrayFFT;
    result->super.super.super._encodeData = result;
    result->_axesMask = a4;
    result->_scale = a5;
    result->_inverse = a7;
    result->_scalingMode = a6;
    v13 = result;
    v14 = [[MPSNDArrayIdentity alloc] initWithDevice:a3];
    result = v13;
    v13->_identity = v14;
  }

  return result;
}

- (MPSNDArrayFourierTransform)initWithCoder:(id)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayFourierTransform;
  result = [(MPSNDArrayUnaryKernel *)&v8 initWithCoder:a3 device:?];
  if (result)
  {
    result->super.super._encode = EncodeArrayFFT;
    result->super.super.super._encodeData = result;
    result->_axesMask = 1;
    result->_scale = 1.0;
    result->_inverse = 0;
    result->_scalingMode = 0;
    v6 = result;
    v7 = [[MPSNDArrayIdentity alloc] initWithDevice:a4];
    result = v6;
    v6->_identity = v7;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayFourierTransform;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayFourierTransform;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayFourierTransform;
  result = [MPSNDArrayMultiaryKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (result)
  {
    *(result + 17) = EncodeArrayFFT;
    *(result + 12) = result;
    *(result + 85) = *&self->_scale;
    *(result + 688) = self->_inverse;
    *(result + 168) = self->_axesMask;
    *(result + 173) = self->_scalingMode;
    identity = self->_identity;
    v9 = result;
    v10 = [(MPSNDArrayIdentity *)identity copyWithZone:a3 device:a4];
    result = v9;
    v9[83] = v10;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayFourierTransform;
  v7 = [(MPSNDArrayMultiaryBase *)&v9 workloadStatisticsForSourceArrays:a3 destArrays:a4 sourceState:a7, a6];
  [v7 setFloat32Ops:0.0];
  [v7 setFloat16Ops:0.0];
  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MPSNDArrayFourierTransform;
  v4 = [(MPSKernel *)&v9 debugDescription];
  scalingMode = self->_scalingMode;
  if (scalingMode > 2)
  {
    v6 = "<Unknown>";
  }

  else
  {
    v6 = off_278B00E70[scalingMode];
  }

  if (self->_inverse)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  return [v3 stringWithFormat:@"%@\n\tscalingMode  = %s\n\tinverse      = %s\n\taxesMask     =(%x)\n\tscale        = %f\n", v4, v6, v7, self->_axesMask, *&self->_scale];
}

@end