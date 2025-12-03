@interface MPSNDArrayGreaterThanOrEqualToPrimaryGradient
- (MPSNDArrayGreaterThanOrEqualToPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayGreaterThanOrEqualToPrimaryGradient

- (MPSNDArrayGreaterThanOrEqualToPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGreaterThanOrEqualToPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 14;
  return result;
}

@end