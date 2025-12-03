@interface MPSCNNNeuronAbsolute
- (MPSCNNNeuronAbsolute)initWithDevice:(id)device;
- (MPSCNNNeuronAbsolute)initWithDevice:(id)device neuronDescriptor:(id)descriptor;
- (MPSCNNNeuronAbsolute)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array;
@end

@implementation MPSCNNNeuronAbsolute

- (MPSCNNNeuronAbsolute)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNNeuronAbsolute;
  return [(MPSCNNNeuron *)&v4 privateInitWithDevice:device a:6 b:0.0 c:0.0 type:0.0];
}

- (MPSCNNNeuronAbsolute)initWithDevice:(id)device neuronDescriptor:(id)descriptor
{
  objc_msgSend_init(self, a2, device, descriptor, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronAbsolute)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array
{
  objc_msgSend_init(self, a2, device, descriptor, array, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end