@interface MPSNDArrayOR
- (MPSNDArrayOR)initWithDevice:(id)device;
@end

@implementation MPSNDArrayOR

- (MPSNDArrayOR)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayOR;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 16;
  return result;
}

@end