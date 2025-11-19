@interface MPSNDArrayDecompositionQR
- (MPSNDArrayDecompositionQR)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayDecompositionQR

- (MPSNDArrayDecompositionQR)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayDecompositionQR;
  result = [(MPSNDArrayMultiaryKernel *)&v4 initWithDevice:a3 sourceCount:1];
  result->_computeR = 1;
  result->_computeQ = 1;
  result->super._encode = EncodeQRDecomposition;
  result->super.super._encodeData = result;
  return result;
}

@end