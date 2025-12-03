@interface MPSNDArrayDivisionPrimaryGradient
- (MPSNDArrayDivisionPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayDivisionPrimaryGradient

- (MPSNDArrayDivisionPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayDivisionPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 4;
  return result;
}

@end