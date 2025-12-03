@interface MPSNDArrayReciprocalGradient
- (MPSNDArrayReciprocalGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayReciprocalGradient

- (MPSNDArrayReciprocalGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayReciprocalGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 10;
  return result;
}

@end