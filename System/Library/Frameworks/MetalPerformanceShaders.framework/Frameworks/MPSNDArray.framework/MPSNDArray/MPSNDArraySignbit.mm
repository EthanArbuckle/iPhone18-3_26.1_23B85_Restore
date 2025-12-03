@interface MPSNDArraySignbit
- (MPSNDArraySignbit)initWithDevice:(id)device;
@end

@implementation MPSNDArraySignbit

- (MPSNDArraySignbit)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySignbit;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 14;
  return result;
}

@end