@interface MPSNDArraySin
- (MPSNDArraySin)initWithDevice:(id)device;
@end

@implementation MPSNDArraySin

- (MPSNDArraySin)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySin;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 19;
  return result;
}

@end