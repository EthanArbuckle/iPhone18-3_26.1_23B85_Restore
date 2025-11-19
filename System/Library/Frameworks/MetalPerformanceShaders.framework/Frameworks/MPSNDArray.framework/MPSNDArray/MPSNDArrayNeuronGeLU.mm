@interface MPSNDArrayNeuronGeLU
- (MPSNDArrayNeuronGeLU)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayNeuronGeLU

- (MPSNDArrayNeuronGeLU)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNeuronGeLU;
  result = [(MPSNDArrayNeuronKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encode = EncodeArrayNeuron;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 1;
  return result;
}

@end