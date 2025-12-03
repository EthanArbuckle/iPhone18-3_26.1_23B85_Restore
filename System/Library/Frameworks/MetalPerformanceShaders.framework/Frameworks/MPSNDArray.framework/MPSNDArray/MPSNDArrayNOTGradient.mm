@interface MPSNDArrayNOTGradient
- (MPSNDArrayNOTGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNOTGradient

- (MPSNDArrayNOTGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNOTGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 31;
  return result;
}

@end