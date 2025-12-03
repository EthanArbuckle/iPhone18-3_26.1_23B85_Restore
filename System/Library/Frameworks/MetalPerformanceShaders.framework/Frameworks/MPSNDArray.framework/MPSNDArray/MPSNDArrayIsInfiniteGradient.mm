@interface MPSNDArrayIsInfiniteGradient
- (MPSNDArrayIsInfiniteGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayIsInfiniteGradient

- (MPSNDArrayIsInfiniteGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayIsInfiniteGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 32;
  return result;
}

@end