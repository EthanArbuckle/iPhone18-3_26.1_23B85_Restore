@interface MPSNDArrayACosh
- (MPSNDArrayACosh)initWithDevice:(id)device;
@end

@implementation MPSNDArrayACosh

- (MPSNDArrayACosh)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayACosh;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 29;
  return result;
}

@end