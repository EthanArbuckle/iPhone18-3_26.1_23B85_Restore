@interface MPSNDArrayLogarithmBase10
- (MPSNDArrayLogarithmBase10)initWithDevice:(id)device;
@end

@implementation MPSNDArrayLogarithmBase10

- (MPSNDArrayLogarithmBase10)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLogarithmBase10;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 6;
  return result;
}

@end