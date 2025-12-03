@interface MPSNDArrayLessThan
- (MPSNDArrayLessThan)initWithDevice:(id)device;
@end

@implementation MPSNDArrayLessThan

- (MPSNDArrayLessThan)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLessThan;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 11;
  return result;
}

@end