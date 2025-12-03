@interface MPSNDArrayATanGradient
- (MPSNDArrayATanGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayATanGradient

- (MPSNDArrayATanGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayATanGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 27;
  return result;
}

@end