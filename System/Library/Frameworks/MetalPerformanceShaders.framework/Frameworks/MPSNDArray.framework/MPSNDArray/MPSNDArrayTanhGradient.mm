@interface MPSNDArrayTanhGradient
- (MPSNDArrayTanhGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayTanhGradient

- (MPSNDArrayTanhGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayTanhGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 24;
  return result;
}

@end