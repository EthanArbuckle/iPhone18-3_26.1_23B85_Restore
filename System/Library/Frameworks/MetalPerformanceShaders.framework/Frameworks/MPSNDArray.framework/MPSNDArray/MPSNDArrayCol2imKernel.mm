@interface MPSNDArrayCol2imKernel
- (MPSNDArrayCol2imKernel)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayCol2imKernel)initWithDevice:(id)a3 ndArrayIm2colDescriptor:(id)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayCol2imKernel

- (MPSNDArrayCol2imKernel)initWithDevice:(id)a3 ndArrayIm2colDescriptor:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayCol2imKernel;
  v5 = [(MPSNDArrayUnaryKernel *)&v7 initWithDevice:a3];
  v5->super.super._encode = EncodeArrayCol2im;
  v5->super.super.super._encodeData = v5;
  v5->_kernelWidth = [a4 kernelWidth];
  v5->_kernelHeight = [a4 kernelHeight];
  v5->_paddingTop = [a4 paddingTop];
  v5->_paddingBottom = [a4 paddingBottom];
  v5->_paddingLeft = [a4 paddingLeft];
  v5->_paddingRight = [a4 paddingRight];
  v5->_strideWidth = [a4 strideInPixelsX];
  v5->_strideHeight = [a4 strideInPixelsY];
  v5->_dilationWidth = [a4 dilationRateInX];
  v5->_dilationHeight = [a4 dilationRateInY];
  v5->_dataLayout = [a4 dataLayout];
  return v5;
}

- (MPSNDArrayCol2imKernel)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayCol2imKernel;
  result = [(MPSNDArrayUnaryKernel *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodeArrayCol2im;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayCol2imKernel;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayCol2imKernel;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    self->super.super._encode = EncodeArrayCol2im;
    self->super.super.super._encodeData = self;
  }

  return result;
}

@end