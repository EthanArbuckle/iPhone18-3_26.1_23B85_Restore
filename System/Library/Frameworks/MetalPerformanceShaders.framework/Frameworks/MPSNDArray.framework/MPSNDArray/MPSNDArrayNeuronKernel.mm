@interface MPSNDArrayNeuronKernel
- (MPSNDArrayNeuronKernel)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayNeuronKernel)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayNeuronKernel

- (MPSNDArrayNeuronKernel)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNeuronKernel;
  result = [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:a3];
  result->super.super._encode = EncodeArrayNeuron;
  result->super.super.super._encodeData = result;
  result->_opType = 0;
  return result;
}

- (MPSNDArrayNeuronKernel)initWithCoder:(id)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayNeuronKernel;
  result = [(MPSNDArrayUnaryKernel *)&v8 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodeArrayNeuron;
    result->super.super.super._encodeData = result;
    v6 = result;
    v7 = [a3 decodeInt32ForKey:@"MPSNDArrayNeuron.opType"];
    result = v6;
    v6->_opType = v7;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayNeuronKernel;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [a3 encodeInt32:self->_opType forKey:@"MPSNDArrayNeuron.opType"];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayNeuronKernel;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    self->super.super._encode = EncodeArrayNeuron;
    self->super.super.super._encodeData = self;
    *(result + 166) = self->_opType;
  }

  return result;
}

@end