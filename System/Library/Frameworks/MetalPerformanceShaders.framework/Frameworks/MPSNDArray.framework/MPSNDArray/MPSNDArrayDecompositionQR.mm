@interface MPSNDArrayDecompositionQR
- (MPSNDArrayDecompositionQR)initWithDevice:(id)device;
@end

@implementation MPSNDArrayDecompositionQR

- (MPSNDArrayDecompositionQR)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayDecompositionQR;
  result = [(MPSNDArrayMultiaryKernel *)&v4 initWithDevice:device sourceCount:1];
  result->_computeR = 1;
  result->_computeQ = 1;
  result->super._encode = EncodeQRDecomposition;
  result->super.super._encodeData = result;
  return result;
}

@end