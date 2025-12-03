@interface MPSNDArrayErf
- (MPSNDArrayErf)initWithDevice:(id)device;
@end

@implementation MPSNDArrayErf

- (MPSNDArrayErf)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayErf;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 35;
  return result;
}

@end