@interface MPSNDArrayEqual
- (MPSNDArrayEqual)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayEqual

- (MPSNDArrayEqual)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayEqual;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 9;
  return result;
}

@end