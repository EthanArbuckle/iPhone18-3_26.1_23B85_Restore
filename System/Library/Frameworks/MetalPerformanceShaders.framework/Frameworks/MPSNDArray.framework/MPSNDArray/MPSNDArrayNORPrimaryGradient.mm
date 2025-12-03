@interface MPSNDArrayNORPrimaryGradient
- (MPSNDArrayNORPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNORPrimaryGradient

- (MPSNDArrayNORPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNORPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 18;
  return result;
}

@end