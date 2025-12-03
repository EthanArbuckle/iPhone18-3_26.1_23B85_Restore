@interface MPSNDArrayMaximum
- (MPSNDArrayMaximum)initWithDevice:(id)device;
@end

@implementation MPSNDArrayMaximum

- (MPSNDArrayMaximum)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayMaximum;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 8;
  return result;
}

@end