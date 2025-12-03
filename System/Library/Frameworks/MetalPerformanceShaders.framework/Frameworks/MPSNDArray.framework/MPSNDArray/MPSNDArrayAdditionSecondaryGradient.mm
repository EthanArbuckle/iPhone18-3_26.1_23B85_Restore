@interface MPSNDArrayAdditionSecondaryGradient
- (MPSNDArrayAdditionSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayAdditionSecondaryGradient

- (MPSNDArrayAdditionSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayAdditionSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 1;
  return result;
}

@end