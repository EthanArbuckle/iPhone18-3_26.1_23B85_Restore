@interface MPSNDArrayATan2PrimaryGradient
- (MPSNDArrayATan2PrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayATan2PrimaryGradient

- (MPSNDArrayATan2PrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayATan2PrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 21;
  return result;
}

@end