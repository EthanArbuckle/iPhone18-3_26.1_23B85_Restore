@interface MPSNDArrayRintGradient
- (MPSNDArrayRintGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayRintGradient

- (MPSNDArrayRintGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayRintGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 18;
  return result;
}

@end