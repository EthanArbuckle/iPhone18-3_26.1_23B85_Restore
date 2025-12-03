@interface MPSNDArrayAND
- (MPSNDArrayAND)initWithDevice:(id)device;
@end

@implementation MPSNDArrayAND

- (MPSNDArrayAND)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayAND;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 15;
  return result;
}

@end