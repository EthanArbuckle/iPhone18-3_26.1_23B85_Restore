@interface MPSNDArrayNegative
- (MPSNDArrayNegative)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNegative

- (MPSNDArrayNegative)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNegative;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 12;
  return result;
}

@end