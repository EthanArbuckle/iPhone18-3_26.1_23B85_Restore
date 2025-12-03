@interface MPSNDArrayACosGradient
- (MPSNDArrayACosGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayACosGradient

- (MPSNDArrayACosGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayACosGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 26;
  return result;
}

@end