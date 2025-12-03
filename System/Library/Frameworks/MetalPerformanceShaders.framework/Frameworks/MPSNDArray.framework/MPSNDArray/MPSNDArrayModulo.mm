@interface MPSNDArrayModulo
- (MPSNDArrayModulo)initWithDevice:(id)device;
@end

@implementation MPSNDArrayModulo

- (MPSNDArrayModulo)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayModulo;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 5;
  return result;
}

@end