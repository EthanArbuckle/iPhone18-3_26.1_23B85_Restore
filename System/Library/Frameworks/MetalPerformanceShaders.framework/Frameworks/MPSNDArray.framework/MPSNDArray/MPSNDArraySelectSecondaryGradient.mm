@interface MPSNDArraySelectSecondaryGradient
- (MPSNDArraySelectSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArraySelectSecondaryGradient

- (MPSNDArraySelectSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySelectSecondaryGradient;
  result = [(MPSNDArrayMathTernarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super._encodeGradient = EncodeArrayMathTernaryGradient;
  result->super.super.super._encodeData = result;
  result->super._opType = 1;
  return result;
}

@end