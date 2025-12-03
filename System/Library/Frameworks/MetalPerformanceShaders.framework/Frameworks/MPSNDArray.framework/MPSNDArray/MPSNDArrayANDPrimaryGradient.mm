@interface MPSNDArrayANDPrimaryGradient
- (MPSNDArrayANDPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayANDPrimaryGradient

- (MPSNDArrayANDPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayANDPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 15;
  return result;
}

@end