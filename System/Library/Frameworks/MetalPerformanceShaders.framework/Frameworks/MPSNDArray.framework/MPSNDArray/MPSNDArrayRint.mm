@interface MPSNDArrayRint
- (MPSNDArrayRint)initWithDevice:(id)device;
@end

@implementation MPSNDArrayRint

- (MPSNDArrayRint)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayRint;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 18;
  return result;
}

@end