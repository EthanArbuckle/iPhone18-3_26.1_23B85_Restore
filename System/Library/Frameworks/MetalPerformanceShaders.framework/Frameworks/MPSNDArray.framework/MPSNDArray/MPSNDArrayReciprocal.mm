@interface MPSNDArrayReciprocal
- (MPSNDArrayReciprocal)initWithDevice:(id)device;
@end

@implementation MPSNDArrayReciprocal

- (MPSNDArrayReciprocal)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayReciprocal;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 10;
  return result;
}

@end