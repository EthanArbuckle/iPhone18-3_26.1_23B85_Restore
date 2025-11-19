@interface MPSCNNNeuronPReLU
- (MPSCNNNeuronPReLU)initWithDevice:(id)a3 neuronDescriptor:(id)a4;
- (MPSCNNNeuronPReLU)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5;
- (MPSCNNNeuronPReLU)initWithDevice:(id)device a:(const float *)a count:(NSUInteger)count;
@end

@implementation MPSCNNNeuronPReLU

- (MPSCNNNeuronPReLU)initWithDevice:(id)device a:(const float *)a count:(NSUInteger)count
{
  v6.receiver = self;
  v6.super_class = MPSCNNNeuronPReLU;
  return [(MPSCNNNeuron *)&v6 privateInitWithDevice:device a:a count:count type:10];
}

- (MPSCNNNeuronPReLU)initWithDevice:(id)a3 neuronDescriptor:(id)a4
{
  objc_msgSend_init(self, a2, a3, a4, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronPReLU)initWithDevice:(id)a3 neuronDescriptor:(id)a4 aArray:(const float *)a5
{
  objc_msgSend_init(self, a2, a3, a4, a5, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end