@interface MPSNDArrayModuloSecondaryGradient
- (MPSNDArrayModuloSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayModuloSecondaryGradient

- (MPSNDArrayModuloSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayModuloSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 5;
  return result;
}

@end