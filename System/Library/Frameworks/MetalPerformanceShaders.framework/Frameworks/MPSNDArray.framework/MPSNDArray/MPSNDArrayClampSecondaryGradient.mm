@interface MPSNDArrayClampSecondaryGradient
- (MPSNDArrayClampSecondaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayClampSecondaryGradient

- (MPSNDArrayClampSecondaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayClampSecondaryGradient;
  result = [(MPSNDArrayMathTernarySecondaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super._encodeGradient = EncodeArrayMathTernaryGradient;
  result->super.super.super._encodeData = result;
  result->super._opType = 2;
  return result;
}

@end