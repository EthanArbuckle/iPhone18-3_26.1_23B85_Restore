@interface MPSCNNNeuronExponential
- (MPSCNNNeuronExponential)initWithDevice:(id)device a:(float)a b:(float)b c:(float)c;
- (MPSCNNNeuronExponential)initWithDevice:(id)device neuronDescriptor:(id)descriptor;
- (MPSCNNNeuronExponential)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array;
@end

@implementation MPSCNNNeuronExponential

- (MPSCNNNeuronExponential)initWithDevice:(id)device a:(float)a b:(float)b c:(float)c
{
  v7.receiver = self;
  v7.super_class = MPSCNNNeuronExponential;
  return [MPSCNNNeuron privateInitWithDevice:sel_privateInitWithDevice_a_b_c_type_ a:device b:13 c:? type:?];
}

- (MPSCNNNeuronExponential)initWithDevice:(id)device neuronDescriptor:(id)descriptor
{
  objc_msgSend_init(self, a2, device, descriptor, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronExponential)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array
{
  objc_msgSend_init(self, a2, device, descriptor, array, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end