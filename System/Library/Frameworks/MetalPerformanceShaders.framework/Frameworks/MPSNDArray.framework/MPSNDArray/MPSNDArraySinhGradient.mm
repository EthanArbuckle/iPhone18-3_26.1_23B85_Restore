@interface MPSNDArraySinhGradient
- (MPSNDArraySinhGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArraySinhGradient

- (MPSNDArraySinhGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySinhGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 22;
  return result;
}

@end