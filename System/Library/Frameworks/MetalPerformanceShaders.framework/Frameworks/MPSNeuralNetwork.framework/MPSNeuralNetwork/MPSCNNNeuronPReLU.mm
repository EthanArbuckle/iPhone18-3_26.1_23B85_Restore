@interface MPSCNNNeuronPReLU
- (MPSCNNNeuronPReLU)initWithDevice:(id)device a:(const float *)a count:(NSUInteger)count;
- (MPSCNNNeuronPReLU)initWithDevice:(id)device neuronDescriptor:(id)descriptor;
- (MPSCNNNeuronPReLU)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array;
@end

@implementation MPSCNNNeuronPReLU

- (MPSCNNNeuronPReLU)initWithDevice:(id)device a:(const float *)a count:(NSUInteger)count
{
  v6.receiver = self;
  v6.super_class = MPSCNNNeuronPReLU;
  return [(MPSCNNNeuron *)&v6 privateInitWithDevice:device a:a count:count type:10];
}

- (MPSCNNNeuronPReLU)initWithDevice:(id)device neuronDescriptor:(id)descriptor
{
  objc_msgSend_init(self, a2, device, descriptor, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronPReLU)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array
{
  objc_msgSend_init(self, a2, device, descriptor, array, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end