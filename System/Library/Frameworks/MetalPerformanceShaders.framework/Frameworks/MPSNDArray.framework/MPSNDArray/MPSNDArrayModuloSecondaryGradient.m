@interface MPSNDArrayModuloSecondaryGradient
- (MPSNDArrayModuloSecondaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayModuloSecondaryGradient

- (MPSNDArrayModuloSecondaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayModuloSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 5;
  return result;
}

@end