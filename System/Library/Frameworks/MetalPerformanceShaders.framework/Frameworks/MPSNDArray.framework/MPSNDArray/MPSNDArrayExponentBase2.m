@interface MPSNDArrayExponentBase2
- (MPSNDArrayExponentBase2)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayExponentBase2

- (MPSNDArrayExponentBase2)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayExponentBase2;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 2;
  return result;
}

@end