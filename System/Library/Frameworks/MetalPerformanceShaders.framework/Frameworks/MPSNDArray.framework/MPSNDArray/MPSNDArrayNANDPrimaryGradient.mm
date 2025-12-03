@interface MPSNDArrayNANDPrimaryGradient
- (MPSNDArrayNANDPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNANDPrimaryGradient

- (MPSNDArrayNANDPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNANDPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 17;
  return result;
}

@end