@interface MPSNDArraySignGradient
- (MPSNDArraySignGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArraySignGradient

- (MPSNDArraySignGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySignGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 13;
  return result;
}

@end