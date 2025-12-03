@interface MPSNDArrayCol2imKernel
- (MPSNDArrayCol2imKernel)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayCol2imKernel)initWithDevice:(id)device ndArrayIm2colDescriptor:(id)descriptor;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayCol2imKernel

- (MPSNDArrayCol2imKernel)initWithDevice:(id)device ndArrayIm2colDescriptor:(id)descriptor
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayCol2imKernel;
  v5 = [(MPSNDArrayUnaryKernel *)&v7 initWithDevice:device];
  v5->super.super._encode = EncodeArrayCol2im;
  v5->super.super.super._encodeData = v5;
  v5->_kernelWidth = [descriptor kernelWidth];
  v5->_kernelHeight = [descriptor kernelHeight];
  v5->_paddingTop = [descriptor paddingTop];
  v5->_paddingBottom = [descriptor paddingBottom];
  v5->_paddingLeft = [descriptor paddingLeft];
  v5->_paddingRight = [descriptor paddingRight];
  v5->_strideWidth = [descriptor strideInPixelsX];
  v5->_strideHeight = [descriptor strideInPixelsY];
  v5->_dilationWidth = [descriptor dilationRateInX];
  v5->_dilationHeight = [descriptor dilationRateInY];
  v5->_dataLayout = [descriptor dataLayout];
  return v5;
}

- (MPSNDArrayCol2imKernel)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayCol2imKernel;
  result = [(MPSNDArrayUnaryKernel *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeArrayCol2im;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayCol2imKernel;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayCol2imKernel;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    self->super.super._encode = EncodeArrayCol2im;
    self->super.super.super._encodeData = self;
  }

  return result;
}

@end