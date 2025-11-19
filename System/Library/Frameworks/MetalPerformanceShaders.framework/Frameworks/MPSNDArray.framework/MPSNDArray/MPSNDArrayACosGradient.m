@interface MPSNDArrayACosGradient
- (MPSNDArrayACosGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayACosGradient

- (MPSNDArrayACosGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayACosGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 26;
  return result;
}

@end