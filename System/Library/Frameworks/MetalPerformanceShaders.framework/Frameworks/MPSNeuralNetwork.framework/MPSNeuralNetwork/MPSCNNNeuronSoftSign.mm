@interface MPSCNNNeuronSoftSign
- (MPSCNNNeuronSoftSign)initWithDevice:(id)device;
- (MPSCNNNeuronSoftSign)initWithDevice:(id)device neuronDescriptor:(id)descriptor;
- (MPSCNNNeuronSoftSign)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array;
@end

@implementation MPSCNNNeuronSoftSign

- (MPSCNNNeuronSoftSign)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNNeuronSoftSign;
  return [(MPSCNNNeuron *)&v4 privateInitWithDevice:device a:8 b:0.0 c:0.0 type:0.0];
}

- (MPSCNNNeuronSoftSign)initWithDevice:(id)device neuronDescriptor:(id)descriptor
{
  objc_msgSend_init(self, a2, device, descriptor, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronSoftSign)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array
{
  objc_msgSend_init(self, a2, device, descriptor, array, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end