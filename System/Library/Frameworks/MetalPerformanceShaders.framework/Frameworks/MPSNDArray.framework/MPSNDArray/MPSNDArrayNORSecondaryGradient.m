@interface MPSNDArrayNORSecondaryGradient
- (MPSNDArrayNORSecondaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayNORSecondaryGradient

- (MPSNDArrayNORSecondaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNORSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 18;
  return result;
}

@end