@interface MPSNDArrayACoshGradient
- (MPSNDArrayACoshGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayACoshGradient

- (MPSNDArrayACoshGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayACoshGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 29;
  return result;
}

@end