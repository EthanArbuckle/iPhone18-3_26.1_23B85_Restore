@interface MPSNDArrayACos
- (MPSNDArrayACos)initWithDevice:(id)device;
@end

@implementation MPSNDArrayACos

- (MPSNDArrayACos)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayACos;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 26;
  return result;
}

@end