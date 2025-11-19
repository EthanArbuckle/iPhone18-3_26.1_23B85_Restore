@interface MPSNDArrayNeuronGeLUGradient
- (MPSNDArrayNeuronGeLUGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayNeuronGeLUGradient

- (MPSNDArrayNeuronGeLUGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNeuronGeLUGradient;
  result = [(MPSNDArrayNeuronGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayNeuronGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 1;
  return result;
}

@end