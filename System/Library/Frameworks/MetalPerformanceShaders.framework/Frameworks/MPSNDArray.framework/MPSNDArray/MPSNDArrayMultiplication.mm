@interface MPSNDArrayMultiplication
- (MPSNDArrayMultiplication)initWithDevice:(id)device;
@end

@implementation MPSNDArrayMultiplication

- (MPSNDArrayMultiplication)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayMultiplication;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 3;
  return result;
}

@end