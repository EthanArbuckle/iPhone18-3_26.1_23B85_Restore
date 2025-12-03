@interface MPSNDArrayFourierTransform
- (MPSNDArrayFourierTransform)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayFourierTransform)initWithDevice:(id)device axesMask:(unsigned int)mask scale:(double)scale scalingMode:(int)mode inverse:(BOOL)inverse;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayFourierTransform

- (MPSNDArrayFourierTransform)initWithDevice:(id)device axesMask:(unsigned int)mask scale:(double)scale scalingMode:(int)mode inverse:(BOOL)inverse
{
  v15.receiver = self;
  v15.super_class = MPSNDArrayFourierTransform;
  result = [(MPSNDArrayUnaryKernel *)&v15 initWithDevice:?];
  if (result)
  {
    result->super.super._encode = EncodeArrayFFT;
    result->super.super.super._encodeData = result;
    result->_axesMask = mask;
    result->_scale = scale;
    result->_inverse = inverse;
    result->_scalingMode = mode;
    v13 = result;
    v14 = [[MPSNDArrayIdentity alloc] initWithDevice:device];
    result = v13;
    v13->_identity = v14;
  }

  return result;
}

- (MPSNDArrayFourierTransform)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayFourierTransform;
  result = [(MPSNDArrayUnaryKernel *)&v8 initWithCoder:coder device:?];
  if (result)
  {
    result->super.super._encode = EncodeArrayFFT;
    result->super.super.super._encodeData = result;
    result->_axesMask = 1;
    result->_scale = 1.0;
    result->_inverse = 0;
    result->_scalingMode = 0;
    v6 = result;
    v7 = [[MPSNDArrayIdentity alloc] initWithDevice:device];
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

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayFourierTransform;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
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
    v10 = [(MPSNDArrayIdentity *)identity copyWithZone:zone device:device];
    result = v9;
    v9[83] = v10;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayFourierTransform;
  object = [(MPSNDArrayMultiaryBase *)&v9 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
  [object setFloat32Ops:0.0];
  [object setFloat16Ops:0.0];
  return object;
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