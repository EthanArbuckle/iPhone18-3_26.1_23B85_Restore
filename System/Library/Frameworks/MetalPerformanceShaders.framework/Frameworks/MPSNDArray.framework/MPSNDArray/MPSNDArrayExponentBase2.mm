@interface MPSNDArrayExponentBase2
- (MPSNDArrayExponentBase2)initWithDevice:(id)device;
@end

@implementation MPSNDArrayExponentBase2

- (MPSNDArrayExponentBase2)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayExponentBase2;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 2;
  return result;
}

@end