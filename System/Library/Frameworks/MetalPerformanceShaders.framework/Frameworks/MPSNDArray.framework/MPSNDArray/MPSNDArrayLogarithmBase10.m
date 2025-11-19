@interface MPSNDArrayLogarithmBase10
- (MPSNDArrayLogarithmBase10)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayLogarithmBase10

- (MPSNDArrayLogarithmBase10)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLogarithmBase10;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 6;
  return result;
}

@end