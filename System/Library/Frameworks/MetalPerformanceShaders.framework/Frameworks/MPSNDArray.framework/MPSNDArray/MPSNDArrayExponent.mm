@interface MPSNDArrayExponent
- (MPSNDArrayExponent)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayExponent

- (MPSNDArrayExponent)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayExponent;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 1;
  return result;
}

@end