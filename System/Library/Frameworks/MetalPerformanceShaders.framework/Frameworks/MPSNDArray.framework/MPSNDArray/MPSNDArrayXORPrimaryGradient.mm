@interface MPSNDArrayXORPrimaryGradient
- (MPSNDArrayXORPrimaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayXORPrimaryGradient

- (MPSNDArrayXORPrimaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayXORPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 19;
  return result;
}

@end