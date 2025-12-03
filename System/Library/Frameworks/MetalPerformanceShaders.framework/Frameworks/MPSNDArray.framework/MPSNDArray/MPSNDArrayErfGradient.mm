@interface MPSNDArrayErfGradient
- (MPSNDArrayErfGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayErfGradient

- (MPSNDArrayErfGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayErfGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 35;
  return result;
}

@end