@interface MPSCNNNeuronLinear
- (MPSCNNNeuronLinear)initWithDevice:(id)a3 neuronDescriptor:(id)a4;
- (MPSCNNNeuronLinear)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5;
- (MPSCNNNeuronLinear)initWithDevice:(id)device a:(float)a b:(float)b;
@end

@implementation MPSCNNNeuronLinear

- (MPSCNNNeuronLinear)initWithDevice:(id)device a:(float)a b:(float)b
{
  v6.receiver = self;
  v6.super_class = MPSCNNNeuronLinear;
  return [MPSCNNNeuron privateInitWithDevice:sel_privateInitWithDevice_a_b_c_type_ a:device b:2 c:? type:?];
}

- (MPSCNNNeuronLinear)initWithDevice:(id)a3 neuronDescriptor:(id)a4
{
  objc_msgSend_init(self, a2, a3, a4, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronLinear)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5
{
  objc_msgSend_init(self, a2, a3, a4, a5, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end