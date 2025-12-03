@interface MPSNDArrayIm2colDescriptor
- (MPSNDArrayIm2colDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSNDArrayIm2colDescriptor

- (MPSNDArrayIm2colDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayIm2colDescriptor;
  result = [(MPSNDArrayIm2colDescriptor *)&v4 init];
  if (result)
  {
    v3 = vdupq_n_s64(1uLL);
    *&result->_kernelWidth = v3;
    *&result->_strideInPixelsX = v3;
    *&result->_dilationRateInX = v3;
    *&result->_paddingTop = 0u;
    *&result->_paddingLeft = 0u;
    result->_dataLayout = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (result)
  {
    *(result + 1) = self->_kernelWidth;
    *(result + 2) = self->_kernelHeight;
    *(result + 3) = self->_strideInPixelsX;
    *(result + 4) = self->_strideInPixelsY;
    *(result + 5) = self->_dilationRateInX;
    *(result + 6) = self->_dilationRateInY;
    *(result + 7) = self->_paddingTop;
    *(result + 8) = self->_paddingBottom;
    *(result + 9) = self->_paddingLeft;
    *(result + 10) = self->_paddingRight;
    *(result + 22) = self->_dataLayout;
  }

  return result;
}

@end