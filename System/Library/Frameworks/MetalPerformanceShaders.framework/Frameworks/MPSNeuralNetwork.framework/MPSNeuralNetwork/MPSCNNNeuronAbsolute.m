@interface MPSCNNNeuronAbsolute
- (MPSCNNNeuronAbsolute)initWithDevice:(id)a3 neuronDescriptor:(id)a4;
- (MPSCNNNeuronAbsolute)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5;
- (MPSCNNNeuronAbsolute)initWithDevice:(id)device;
@end

@implementation MPSCNNNeuronAbsolute

- (MPSCNNNeuronAbsolute)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNNeuronAbsolute;
  return [(MPSCNNNeuron *)&v4 privateInitWithDevice:device a:6 b:0.0 c:0.0 type:0.0];
}

- (MPSCNNNeuronAbsolute)initWithDevice:(id)a3 neuronDescriptor:(id)a4
{
  objc_msgSend_init(self, a2, a3, a4, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronAbsolute)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5
{
  objc_msgSend_init(self, a2, a3, a4, a5, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end