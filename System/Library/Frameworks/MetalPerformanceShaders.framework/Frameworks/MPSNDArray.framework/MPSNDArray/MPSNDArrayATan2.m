@interface MPSNDArrayATan2
- (MPSNDArrayATan2)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayATan2

- (MPSNDArrayATan2)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayATan2;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 21;
  return result;
}

@end