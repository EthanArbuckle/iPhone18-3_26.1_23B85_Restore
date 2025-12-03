@interface MPSNDArrayIsInfinite
- (MPSNDArrayIsInfinite)initWithDevice:(id)device;
@end

@implementation MPSNDArrayIsInfinite

- (MPSNDArrayIsInfinite)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayIsInfinite;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 32;
  return result;
}

@end