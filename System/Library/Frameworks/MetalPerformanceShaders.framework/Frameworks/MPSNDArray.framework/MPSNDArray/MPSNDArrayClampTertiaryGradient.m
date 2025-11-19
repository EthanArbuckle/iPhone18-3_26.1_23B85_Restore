@interface MPSNDArrayClampTertiaryGradient
- (MPSNDArrayClampTertiaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayClampTertiaryGradient

- (MPSNDArrayClampTertiaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayClampTertiaryGradient;
  result = [(MPSNDArrayMathTernaryTertiaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super._encodeGradient = EncodeArrayMathTernaryGradient;
  result->super.super.super._encodeData = result;
  result->super._opType = 2;
  return result;
}

@end