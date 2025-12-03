@interface MPSNDArrayReverseSquareRootGradient
- (MPSNDArrayReverseSquareRootGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayReverseSquareRootGradient

- (MPSNDArrayReverseSquareRootGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayReverseSquareRootGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 9;
  return result;
}

@end