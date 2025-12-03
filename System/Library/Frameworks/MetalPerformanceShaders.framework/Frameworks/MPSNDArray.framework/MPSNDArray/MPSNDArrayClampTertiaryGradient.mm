@interface MPSNDArrayClampTertiaryGradient
- (MPSNDArrayClampTertiaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayClampTertiaryGradient

- (MPSNDArrayClampTertiaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayClampTertiaryGradient;
  result = [(MPSNDArrayMathTernaryTertiaryGradient *)&v4 initWithDevice:device];
  result->super.super.super._encodeGradient = EncodeArrayMathTernaryGradient;
  result->super.super.super._encodeData = result;
  result->super._opType = 2;
  return result;
}

@end