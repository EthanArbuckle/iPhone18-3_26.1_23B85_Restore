@interface MPSCNNNeuronReLU
- (MPSCNNNeuronReLU)initWithDevice:(id)device a:(float)a;
- (MPSCNNNeuronReLU)initWithDevice:(id)device neuronDescriptor:(id)descriptor;
- (MPSCNNNeuronReLU)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array;
@end

@implementation MPSCNNNeuronReLU

- (MPSCNNNeuronReLU)initWithDevice:(id)device a:(float)a
{
  v5.receiver = self;
  v5.super_class = MPSCNNNeuronReLU;
  return [MPSCNNNeuron privateInitWithDevice:sel_privateInitWithDevice_a_b_c_type_ a:device b:1 c:? type:?];
}

- (MPSCNNNeuronReLU)initWithDevice:(id)device neuronDescriptor:(id)descriptor
{
  objc_msgSend_init(self, a2, device, descriptor, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronReLU)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array
{
  objc_msgSend_init(self, a2, device, descriptor, array, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end