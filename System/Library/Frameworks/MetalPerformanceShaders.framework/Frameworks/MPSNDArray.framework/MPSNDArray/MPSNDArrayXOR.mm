@interface MPSNDArrayXOR
- (MPSNDArrayXOR)initWithDevice:(id)device;
@end

@implementation MPSNDArrayXOR

- (MPSNDArrayXOR)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayXOR;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 19;
  return result;
}

@end