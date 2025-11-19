@interface MPSCNNNeuronSigmoid
- (MPSCNNNeuronSigmoid)initWithDevice:(id)a3 neuronDescriptor:(id)a4;
- (MPSCNNNeuronSigmoid)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5;
- (MPSCNNNeuronSigmoid)initWithDevice:(id)device;
@end

@implementation MPSCNNNeuronSigmoid

- (MPSCNNNeuronSigmoid)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNNeuronSigmoid;
  return [(MPSCNNNeuron *)&v4 privateInitWithDevice:device a:3 b:0.0 c:0.0 type:0.0];
}

- (MPSCNNNeuronSigmoid)initWithDevice:(id)a3 neuronDescriptor:(id)a4
{
  objc_msgSend_init(self, a2, a3, a4, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronSigmoid)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5
{
  objc_msgSend_init(self, a2, a3, a4, a5, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end