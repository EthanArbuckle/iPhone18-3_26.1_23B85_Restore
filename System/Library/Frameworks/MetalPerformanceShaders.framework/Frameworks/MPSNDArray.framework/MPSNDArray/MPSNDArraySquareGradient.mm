@interface MPSNDArraySquareGradient
- (MPSNDArraySquareGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArraySquareGradient

- (MPSNDArraySquareGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySquareGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 7;
  return result;
}

@end