@interface MPSNDArrayCosh
- (MPSNDArrayCosh)initWithDevice:(id)device;
@end

@implementation MPSNDArrayCosh

- (MPSNDArrayCosh)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayCosh;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 23;
  return result;
}

@end