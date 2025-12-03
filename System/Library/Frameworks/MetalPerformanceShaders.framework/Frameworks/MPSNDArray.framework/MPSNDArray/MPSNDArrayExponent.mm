@interface MPSNDArrayExponent
- (MPSNDArrayExponent)initWithDevice:(id)device;
@end

@implementation MPSNDArrayExponent

- (MPSNDArrayExponent)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayExponent;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 1;
  return result;
}

@end