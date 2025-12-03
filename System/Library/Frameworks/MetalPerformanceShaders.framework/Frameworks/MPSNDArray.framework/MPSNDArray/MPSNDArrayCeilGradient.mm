@interface MPSNDArrayCeilGradient
- (MPSNDArrayCeilGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayCeilGradient

- (MPSNDArrayCeilGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayCeilGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 15;
  return result;
}

@end