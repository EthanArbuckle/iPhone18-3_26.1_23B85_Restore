@interface MPSCNNNeuronPower
- (MPSCNNNeuronPower)initWithDevice:(id)a3 neuronDescriptor:(id)a4;
- (MPSCNNNeuronPower)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5;
- (MPSCNNNeuronPower)initWithDevice:(id)device a:(float)a b:(float)b c:(float)c;
@end

@implementation MPSCNNNeuronPower

- (MPSCNNNeuronPower)initWithDevice:(id)device a:(float)a b:(float)b c:(float)c
{
  v7.receiver = self;
  v7.super_class = MPSCNNNeuronPower;
  return [MPSCNNNeuron privateInitWithDevice:sel_privateInitWithDevice_a_b_c_type_ a:device b:12 c:? type:?];
}

- (MPSCNNNeuronPower)initWithDevice:(id)a3 neuronDescriptor:(id)a4
{
  objc_msgSend_init(self, a2, a3, a4, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronPower)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5
{
  objc_msgSend_init(self, a2, a3, a4, a5, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end