@interface MPSCNNNeuronReLU
- (MPSCNNNeuronReLU)initWithDevice:(id)a3 neuronDescriptor:(id)a4;
- (MPSCNNNeuronReLU)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5;
- (MPSCNNNeuronReLU)initWithDevice:(id)device a:(float)a;
@end

@implementation MPSCNNNeuronReLU

- (MPSCNNNeuronReLU)initWithDevice:(id)device a:(float)a
{
  v5.receiver = self;
  v5.super_class = MPSCNNNeuronReLU;
  return [MPSCNNNeuron privateInitWithDevice:sel_privateInitWithDevice_a_b_c_type_ a:device b:1 c:? type:?];
}

- (MPSCNNNeuronReLU)initWithDevice:(id)a3 neuronDescriptor:(id)a4
{
  objc_msgSend_init(self, a2, a3, a4, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronReLU)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5
{
  objc_msgSend_init(self, a2, a3, a4, a5, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end