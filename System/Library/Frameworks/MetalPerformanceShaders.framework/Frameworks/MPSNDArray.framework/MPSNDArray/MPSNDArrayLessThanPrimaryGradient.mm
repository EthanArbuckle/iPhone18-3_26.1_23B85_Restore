@interface MPSNDArrayLessThanPrimaryGradient
- (MPSNDArrayLessThanPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayLessThanPrimaryGradient

- (MPSNDArrayLessThanPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLessThanPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 11;
  return result;
}

@end