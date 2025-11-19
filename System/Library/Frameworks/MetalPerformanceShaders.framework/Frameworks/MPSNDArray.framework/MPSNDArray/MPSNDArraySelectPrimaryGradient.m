@interface MPSNDArraySelectPrimaryGradient
- (MPSNDArraySelectPrimaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArraySelectPrimaryGradient

- (MPSNDArraySelectPrimaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySelectPrimaryGradient;
  result = [(MPSNDArrayMathTernaryPrimaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super._encodeGradient = EncodeArrayMathTernaryGradient;
  result->super.super.super._encodeData = result;
  result->super._opType = 1;
  return result;
}

@end