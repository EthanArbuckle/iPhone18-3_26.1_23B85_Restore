@interface MPSNDArrayNeuronGeLU
- (MPSNDArrayNeuronGeLU)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNeuronGeLU

- (MPSNDArrayNeuronGeLU)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNeuronGeLU;
  result = [(MPSNDArrayNeuronKernel *)&v4 initWithDevice:device];
  result->super.super.super._encode = EncodeArrayNeuron;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 1;
  return result;
}

@end