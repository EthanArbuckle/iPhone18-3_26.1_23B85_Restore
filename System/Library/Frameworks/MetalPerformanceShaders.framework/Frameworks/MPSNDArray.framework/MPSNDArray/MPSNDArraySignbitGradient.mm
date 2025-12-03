@interface MPSNDArraySignbitGradient
- (MPSNDArraySignbitGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArraySignbitGradient

- (MPSNDArraySignbitGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySignbitGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 14;
  return result;
}

@end