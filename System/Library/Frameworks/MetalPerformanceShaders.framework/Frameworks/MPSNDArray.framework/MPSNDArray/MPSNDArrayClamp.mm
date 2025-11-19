@interface MPSNDArrayClamp
- (MPSNDArrayClamp)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayClamp

- (MPSNDArrayClamp)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayClamp;
  result = [(MPSNDArrayMathTernaryKernel *)&v4 initWithDevice:a3];
  result->super.super._encode = EncodeArrayMathTernary;
  result->super.super.super._encodeData = result;
  result->super._opType = 2;
  return result;
}

@end