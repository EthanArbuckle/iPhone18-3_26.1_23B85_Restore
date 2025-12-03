@interface MPSNDArrayDivision
- (MPSNDArrayDivision)initWithDevice:(id)device;
@end

@implementation MPSNDArrayDivision

- (MPSNDArrayDivision)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayDivision;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 4;
  return result;
}

@end