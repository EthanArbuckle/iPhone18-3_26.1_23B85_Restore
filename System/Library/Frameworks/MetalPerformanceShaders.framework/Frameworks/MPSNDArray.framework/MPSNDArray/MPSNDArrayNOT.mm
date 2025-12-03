@interface MPSNDArrayNOT
- (MPSNDArrayNOT)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNOT

- (MPSNDArrayNOT)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNOT;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 31;
  return result;
}

@end