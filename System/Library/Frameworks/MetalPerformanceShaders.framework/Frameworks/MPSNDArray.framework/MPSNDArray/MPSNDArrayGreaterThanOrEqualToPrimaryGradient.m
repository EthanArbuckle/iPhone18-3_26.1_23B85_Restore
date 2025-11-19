@interface MPSNDArrayGreaterThanOrEqualToPrimaryGradient
- (MPSNDArrayGreaterThanOrEqualToPrimaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayGreaterThanOrEqualToPrimaryGradient

- (MPSNDArrayGreaterThanOrEqualToPrimaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGreaterThanOrEqualToPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 14;
  return result;
}

@end