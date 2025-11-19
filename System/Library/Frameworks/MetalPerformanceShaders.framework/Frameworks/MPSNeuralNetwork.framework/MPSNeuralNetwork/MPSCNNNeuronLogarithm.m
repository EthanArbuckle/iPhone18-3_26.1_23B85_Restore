@interface MPSCNNNeuronLogarithm
- (MPSCNNNeuronLogarithm)initWithDevice:(id)a3 neuronDescriptor:(id)a4;
- (MPSCNNNeuronLogarithm)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5;
- (MPSCNNNeuronLogarithm)initWithDevice:(id)device a:(float)a b:(float)b c:(float)c;
@end

@implementation MPSCNNNeuronLogarithm

- (MPSCNNNeuronLogarithm)initWithDevice:(id)device a:(float)a b:(float)b c:(float)c
{
  v7.receiver = self;
  v7.super_class = MPSCNNNeuronLogarithm;
  return [MPSCNNNeuron privateInitWithDevice:sel_privateInitWithDevice_a_b_c_type_ a:device b:14 c:? type:?];
}

- (MPSCNNNeuronLogarithm)initWithDevice:(id)a3 neuronDescriptor:(id)a4
{
  objc_msgSend_init(self, a2, a3, a4, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronLogarithm)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5
{
  objc_msgSend_init(self, a2, a3, a4, a5, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end