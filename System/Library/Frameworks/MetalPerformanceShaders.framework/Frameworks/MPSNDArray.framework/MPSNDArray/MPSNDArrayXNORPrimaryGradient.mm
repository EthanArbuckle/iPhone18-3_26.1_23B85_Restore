@interface MPSNDArrayXNORPrimaryGradient
- (MPSNDArrayXNORPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayXNORPrimaryGradient

- (MPSNDArrayXNORPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayXNORPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 20;
  return result;
}

@end