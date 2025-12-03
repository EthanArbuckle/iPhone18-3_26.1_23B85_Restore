@interface MPSNDArrayExponentGradient
- (MPSNDArrayExponentGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayExponentGradient

- (MPSNDArrayExponentGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayExponentGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 1;
  return result;
}

@end