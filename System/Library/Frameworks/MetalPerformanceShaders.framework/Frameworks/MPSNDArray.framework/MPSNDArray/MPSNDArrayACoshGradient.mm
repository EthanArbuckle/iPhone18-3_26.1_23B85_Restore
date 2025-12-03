@interface MPSNDArrayACoshGradient
- (MPSNDArrayACoshGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayACoshGradient

- (MPSNDArrayACoshGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayACoshGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 29;
  return result;
}

@end