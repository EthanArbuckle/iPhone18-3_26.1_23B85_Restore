@interface MPSNDArrayClampSecondaryGradient
- (MPSNDArrayClampSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayClampSecondaryGradient

- (MPSNDArrayClampSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayClampSecondaryGradient;
  result = [(MPSNDArrayMathTernarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super._encodeGradient = EncodeArrayMathTernaryGradient;
  result->super.super.super._encodeData = result;
  result->super._opType = 2;
  return result;
}

@end