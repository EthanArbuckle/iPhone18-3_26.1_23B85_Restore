@interface MPSNDArrayXNOR
- (MPSNDArrayXNOR)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayXNOR

- (MPSNDArrayXNOR)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayXNOR;
  result = [(MPSNDArrayMathBinaryKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encode = EncodeArrayMathBinary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 20;
  return result;
}

@end