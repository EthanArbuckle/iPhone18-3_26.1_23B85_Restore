@interface MPSNDArrayGreaterThanOrEqualToSecondaryGradient
- (MPSNDArrayGreaterThanOrEqualToSecondaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayGreaterThanOrEqualToSecondaryGradient

- (MPSNDArrayGreaterThanOrEqualToSecondaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGreaterThanOrEqualToSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 14;
  return result;
}

@end