@interface MPSNDArrayRound
- (MPSNDArrayRound)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayRound

- (MPSNDArrayRound)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayRound;
  result = [(MPSNDArrayMathUnaryKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encode = EncodeArrayMathUnary;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 17;
  return result;
}

@end