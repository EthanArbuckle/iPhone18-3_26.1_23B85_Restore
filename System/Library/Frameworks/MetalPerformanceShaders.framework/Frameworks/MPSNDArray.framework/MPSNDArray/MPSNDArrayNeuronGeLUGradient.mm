@interface MPSNDArrayNeuronGeLUGradient
- (MPSNDArrayNeuronGeLUGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNeuronGeLUGradient

- (MPSNDArrayNeuronGeLUGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNeuronGeLUGradient;
  result = [(MPSNDArrayNeuronGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayNeuronGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 1;
  return result;
}

@end