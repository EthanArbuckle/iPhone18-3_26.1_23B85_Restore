@interface MPSCNNNeuronTanH
- (MPSCNNNeuronTanH)initWithDevice:(id)a3 neuronDescriptor:(id)a4;
- (MPSCNNNeuronTanH)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5;
- (MPSCNNNeuronTanH)initWithDevice:(id)device a:(float)a b:(float)b;
@end

@implementation MPSCNNNeuronTanH

- (MPSCNNNeuronTanH)initWithDevice:(id)device a:(float)a b:(float)b
{
  v6.receiver = self;
  v6.super_class = MPSCNNNeuronTanH;
  return [MPSCNNNeuron privateInitWithDevice:sel_privateInitWithDevice_a_b_c_type_ a:device b:5 c:? type:?];
}

- (MPSCNNNeuronTanH)initWithDevice:(id)a3 neuronDescriptor:(id)a4
{
  objc_msgSend_init(self, a2, a3, a4, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronTanH)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5
{
  objc_msgSend_init(self, a2, a3, a4, a5, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end