@interface MPSCNNNeuronHardSigmoid
- (MPSCNNNeuronHardSigmoid)initWithDevice:(id)device a:(float)a b:(float)b;
- (MPSCNNNeuronHardSigmoid)initWithDevice:(id)device neuronDescriptor:(id)descriptor;
- (MPSCNNNeuronHardSigmoid)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array;
@end

@implementation MPSCNNNeuronHardSigmoid

- (MPSCNNNeuronHardSigmoid)initWithDevice:(id)device a:(float)a b:(float)b
{
  v6.receiver = self;
  v6.super_class = MPSCNNNeuronHardSigmoid;
  return [MPSCNNNeuron privateInitWithDevice:sel_privateInitWithDevice_a_b_c_type_ a:device b:4 c:? type:?];
}

- (MPSCNNNeuronHardSigmoid)initWithDevice:(id)device neuronDescriptor:(id)descriptor
{
  objc_msgSend_init(self, a2, device, descriptor, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronHardSigmoid)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array
{
  objc_msgSend_init(self, a2, device, descriptor, array, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end