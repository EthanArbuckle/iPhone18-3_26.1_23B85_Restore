@interface MPSNDArrayCos
- (MPSNDArrayCos)initWithDevice:(id)device;
@end

@implementation MPSNDArrayCos

- (MPSNDArrayCos)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayCos;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 20;
  return result;
}

@end