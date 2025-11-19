@interface MPSCNNNeuronSoftPlus
- (MPSCNNNeuronSoftPlus)initWithDevice:(id)a3 neuronDescriptor:(id)a4;
- (MPSCNNNeuronSoftPlus)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5;
- (MPSCNNNeuronSoftPlus)initWithDevice:(id)device a:(float)a b:(float)b;
@end

@implementation MPSCNNNeuronSoftPlus

- (MPSCNNNeuronSoftPlus)initWithDevice:(id)device a:(float)a b:(float)b
{
  v6.receiver = self;
  v6.super_class = MPSCNNNeuronSoftPlus;
  return [MPSCNNNeuron privateInitWithDevice:sel_privateInitWithDevice_a_b_c_type_ a:device b:7 c:? type:?];
}

- (MPSCNNNeuronSoftPlus)initWithDevice:(id)a3 neuronDescriptor:(id)a4
{
  objc_msgSend_init(self, a2, a3, a4, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronSoftPlus)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5
{
  objc_msgSend_init(self, a2, a3, a4, a5, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end