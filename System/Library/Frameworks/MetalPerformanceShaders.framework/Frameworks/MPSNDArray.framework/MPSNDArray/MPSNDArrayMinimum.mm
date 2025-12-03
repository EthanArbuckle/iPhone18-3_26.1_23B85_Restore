@interface MPSNDArrayMinimum
- (MPSNDArrayMinimum)initWithDevice:(id)device;
@end

@implementation MPSNDArrayMinimum

- (MPSNDArrayMinimum)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayMinimum;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 7;
  return result;
}

@end