@interface MPSNDArrayPrune
- (MPSNDArrayPrune)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayPrune)initWithDevice:(id)device;
@end

@implementation MPSNDArrayPrune

- (MPSNDArrayPrune)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayPrune;
  result = [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:device];
  result->super.super._encode = EncodeArrayPrune;
  result->super.super.super._encodeGradient = EncodeArrayPruneGradient;
  result->super.super.super._encodeData = result;
  return result;
}

- (MPSNDArrayPrune)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayPrune;
  result = [(MPSNDArrayUnaryKernel *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeArrayPrune;
    result->super.super.super._encodeGradient = EncodeArrayPruneGradient;
    result->super.super.super._encodeData = result;
  }

  return result;
}

@end