@interface MPSNDArrayNotEqual
- (MPSNDArrayNotEqual)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNotEqual

- (MPSNDArrayNotEqual)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNotEqual;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 10;
  return result;
}

@end