@interface MPSNDArrayIsFinite
- (MPSNDArrayIsFinite)initWithDevice:(id)device;
@end

@implementation MPSNDArrayIsFinite

- (MPSNDArrayIsFinite)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayIsFinite;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 33;
  return result;
}

@end