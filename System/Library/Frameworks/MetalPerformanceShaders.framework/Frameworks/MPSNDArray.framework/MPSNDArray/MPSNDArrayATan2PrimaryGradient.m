@interface MPSNDArrayATan2PrimaryGradient
- (MPSNDArrayATan2PrimaryGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayATan2PrimaryGradient

- (MPSNDArrayATan2PrimaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayATan2PrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 21;
  return result;
}

@end