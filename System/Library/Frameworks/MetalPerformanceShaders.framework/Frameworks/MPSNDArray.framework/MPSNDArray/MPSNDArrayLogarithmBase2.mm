@interface MPSNDArrayLogarithmBase2
- (MPSNDArrayLogarithmBase2)initWithDevice:(id)device;
@end

@implementation MPSNDArrayLogarithmBase2

- (MPSNDArrayLogarithmBase2)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLogarithmBase2;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 5;
  return result;
}

@end