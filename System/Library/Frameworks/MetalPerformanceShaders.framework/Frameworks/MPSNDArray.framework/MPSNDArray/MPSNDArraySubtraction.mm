@interface MPSNDArraySubtraction
- (MPSNDArraySubtraction)initWithDevice:(id)device;
@end

@implementation MPSNDArraySubtraction

- (MPSNDArraySubtraction)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySubtraction;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 2;
  return result;
}

@end