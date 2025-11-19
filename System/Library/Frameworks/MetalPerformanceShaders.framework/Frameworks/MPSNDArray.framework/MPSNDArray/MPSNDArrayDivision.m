@interface MPSNDArrayDivision
- (MPSNDArrayDivision)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayDivision

- (MPSNDArrayDivision)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayDivision;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 4;
  return result;
}

@end