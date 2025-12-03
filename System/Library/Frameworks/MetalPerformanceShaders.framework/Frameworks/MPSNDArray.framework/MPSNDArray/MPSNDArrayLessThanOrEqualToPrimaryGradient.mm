@interface MPSNDArrayLessThanOrEqualToPrimaryGradient
- (MPSNDArrayLessThanOrEqualToPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayLessThanOrEqualToPrimaryGradient

- (MPSNDArrayLessThanOrEqualToPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLessThanOrEqualToPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 12;
  return result;
}

@end