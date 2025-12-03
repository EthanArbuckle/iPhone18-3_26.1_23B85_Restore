@interface MPSNDArrayPower
- (MPSNDArrayPower)initWithDevice:(id)device;
@end

@implementation MPSNDArrayPower

- (MPSNDArrayPower)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayPower;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 6;
  return result;
}

@end