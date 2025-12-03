@interface MPSNDArrayATanhGradient
- (MPSNDArrayATanhGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayATanhGradient

- (MPSNDArrayATanhGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayATanhGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 30;
  return result;
}

@end