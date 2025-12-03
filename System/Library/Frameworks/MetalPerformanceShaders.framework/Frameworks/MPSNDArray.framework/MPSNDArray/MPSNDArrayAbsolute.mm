@interface MPSNDArrayAbsolute
- (MPSNDArrayAbsolute)initWithDevice:(id)device;
@end

@implementation MPSNDArrayAbsolute

- (MPSNDArrayAbsolute)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayAbsolute;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 11;
  return result;
}

@end