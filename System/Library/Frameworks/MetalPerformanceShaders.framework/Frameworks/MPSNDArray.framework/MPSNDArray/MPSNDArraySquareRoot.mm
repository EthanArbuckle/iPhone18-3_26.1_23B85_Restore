@interface MPSNDArraySquareRoot
- (MPSNDArraySquareRoot)initWithDevice:(id)device;
@end

@implementation MPSNDArraySquareRoot

- (MPSNDArraySquareRoot)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySquareRoot;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 8;
  return result;
}

@end