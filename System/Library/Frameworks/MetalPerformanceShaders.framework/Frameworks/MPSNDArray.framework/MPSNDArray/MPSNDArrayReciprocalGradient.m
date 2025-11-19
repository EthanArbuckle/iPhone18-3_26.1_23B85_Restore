@interface MPSNDArrayReciprocalGradient
- (MPSNDArrayReciprocalGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayReciprocalGradient

- (MPSNDArrayReciprocalGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayReciprocalGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 10;
  return result;
}

@end