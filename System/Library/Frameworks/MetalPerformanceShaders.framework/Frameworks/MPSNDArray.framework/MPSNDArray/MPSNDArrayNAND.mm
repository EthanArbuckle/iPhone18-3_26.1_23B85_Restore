@interface MPSNDArrayNAND
- (MPSNDArrayNAND)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNAND

- (MPSNDArrayNAND)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNAND;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 17;
  return result;
}

@end