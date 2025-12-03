@interface MPSNDArrayAddition
- (MPSNDArrayAddition)initWithDevice:(id)device;
@end

@implementation MPSNDArrayAddition

- (MPSNDArrayAddition)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayAddition;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 1;
  return result;
}

@end