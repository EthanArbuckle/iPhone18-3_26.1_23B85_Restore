@interface MPSNDArraySinGradient
- (MPSNDArraySinGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArraySinGradient

- (MPSNDArraySinGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySinGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 19;
  return result;
}

@end