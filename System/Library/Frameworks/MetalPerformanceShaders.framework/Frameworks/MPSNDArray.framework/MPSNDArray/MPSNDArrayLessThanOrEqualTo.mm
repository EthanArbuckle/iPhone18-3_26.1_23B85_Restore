@interface MPSNDArrayLessThanOrEqualTo
- (MPSNDArrayLessThanOrEqualTo)initWithDevice:(id)device;
@end

@implementation MPSNDArrayLessThanOrEqualTo

- (MPSNDArrayLessThanOrEqualTo)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLessThanOrEqualTo;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 12;
  return result;
}

@end