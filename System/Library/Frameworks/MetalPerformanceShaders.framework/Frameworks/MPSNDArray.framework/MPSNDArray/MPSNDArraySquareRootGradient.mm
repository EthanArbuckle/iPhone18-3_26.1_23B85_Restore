@interface MPSNDArraySquareRootGradient
- (MPSNDArraySquareRootGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArraySquareRootGradient

- (MPSNDArraySquareRootGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySquareRootGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 8;
  return result;
}

@end