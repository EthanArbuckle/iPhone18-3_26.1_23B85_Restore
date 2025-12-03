@interface MPSNDArrayNOR
- (MPSNDArrayNOR)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNOR

- (MPSNDArrayNOR)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNOR;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 18;
  return result;
}

@end