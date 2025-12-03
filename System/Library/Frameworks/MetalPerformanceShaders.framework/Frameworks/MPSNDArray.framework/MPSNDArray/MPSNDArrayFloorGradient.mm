@interface MPSNDArrayFloorGradient
- (MPSNDArrayFloorGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayFloorGradient

- (MPSNDArrayFloorGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayFloorGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 16;
  return result;
}

@end