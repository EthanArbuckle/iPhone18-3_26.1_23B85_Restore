@interface MPSNDArrayRint
- (MPSNDArrayRint)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayRint

- (MPSNDArrayRint)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayRint;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 18;
  return result;
}

@end