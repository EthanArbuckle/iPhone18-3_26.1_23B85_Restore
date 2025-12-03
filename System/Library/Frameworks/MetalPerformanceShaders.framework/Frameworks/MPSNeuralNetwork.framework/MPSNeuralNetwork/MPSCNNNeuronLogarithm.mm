@interface MPSCNNNeuronLogarithm
- (MPSCNNNeuronLogarithm)initWithDevice:(id)device a:(float)a b:(float)b c:(float)c;
- (MPSCNNNeuronLogarithm)initWithDevice:(id)device neuronDescriptor:(id)descriptor;
- (MPSCNNNeuronLogarithm)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array;
@end

@implementation MPSCNNNeuronLogarithm

- (MPSCNNNeuronLogarithm)initWithDevice:(id)device a:(float)a b:(float)b c:(float)c
{
  v7.receiver = self;
  v7.super_class = MPSCNNNeuronLogarithm;
  return [MPSCNNNeuron privateInitWithDevice:sel_privateInitWithDevice_a_b_c_type_ a:device b:14 c:? type:?];
}

- (MPSCNNNeuronLogarithm)initWithDevice:(id)device neuronDescriptor:(id)descriptor
{
  objc_msgSend_init(self, a2, device, descriptor, v4, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNNeuronLogarithm)initWithDevice:(id)device neuronDescriptor:(id)descriptor aArray:(const float *)array
{
  objc_msgSend_init(self, a2, device, descriptor, array, v5, v6, v7);
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end