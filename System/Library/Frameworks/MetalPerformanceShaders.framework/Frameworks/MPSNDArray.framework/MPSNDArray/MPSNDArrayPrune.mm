@interface MPSNDArrayPrune
- (MPSNDArrayPrune)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayPrune)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayPrune

- (MPSNDArrayPrune)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayPrune;
  result = [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:a3];
  result->super.super._encode = EncodeArrayPrune;
  result->super.super.super._encodeGradient = EncodeArrayPruneGradient;
  result->super.super.super._encodeData = result;
  return result;
}

- (MPSNDArrayPrune)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayPrune;
  result = [(MPSNDArrayUnaryKernel *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodeArrayPrune;
    result->super.super.super._encodeGradient = EncodeArrayPruneGradient;
    result->super.super.super._encodeData = result;
  }

  return result;
}

@end