@interface MPSNDArrayGreaterThanSecondaryGradient
- (MPSNDArrayGreaterThanSecondaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayGreaterThanSecondaryGradient

- (MPSNDArrayGreaterThanSecondaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGreaterThanSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 13;
  return result;
}

@end