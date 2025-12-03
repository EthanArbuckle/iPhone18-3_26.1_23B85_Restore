@interface MPSCNNNeuronSigmoid
- (MPSCNNNeuronSigmoid)initWithDevice:(id)device;
- (MPSCNNNeuronSigmoid)initWithDevice:(id)device neuronDescriptor:(id)descriptor;
- (MPSCNNNeuronSigmoid)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array;
@end

@implementation MPSCNNNeuronSigmoid

- (MPSCNNNeuronSigmoid)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNNeuronSigmoid;
  return [(MPSCNNNeuron *)&v4 privateInitWithDevice:device a:3 b:0.0 c:0.0 type:0.0];
}

- (MPSCNNNeuronSigmoid)initWithDevice:(id)device neuronDescriptor:(id)descriptor
{
  objc_msgSend_init(self, a2, device, descriptor, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronSigmoid)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array
{
  objc_msgSend_init(self, a2, device, descriptor, array, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end