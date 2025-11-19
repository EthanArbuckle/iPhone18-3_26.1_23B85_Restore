@interface MPSNDArrayLogarithm
- (MPSNDArrayLogarithm)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayLogarithm

- (MPSNDArrayLogarithm)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLogarithm;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 4;
  return result;
}

@end