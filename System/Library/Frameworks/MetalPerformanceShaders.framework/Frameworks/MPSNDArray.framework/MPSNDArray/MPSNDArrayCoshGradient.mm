@interface MPSNDArrayCoshGradient
- (MPSNDArrayCoshGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayCoshGradient

- (MPSNDArrayCoshGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayCoshGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 23;
  return result;
}

@end