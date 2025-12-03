@interface MPSCNNConvolutionDescriptorNoNeuron
- (MPSCNNConvolutionDescriptorNoNeuron)initWithCoder:(id)coder;
- (MPSCNNConvolutionDescriptorNoNeuron)initWithConvDescriptor:(id)descriptor;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNConvolutionDescriptorNoNeuron

- (MPSCNNConvolutionDescriptorNoNeuron)initWithConvDescriptor:(id)descriptor
{
  v37.receiver = self;
  v37.super_class = MPSCNNConvolutionDescriptorNoNeuron;
  v4 = [(MPSCNNConvolutionDescriptor *)&v37 init];
  v5 = v4;
  if (v4)
  {
    v4->super._kernelWidth = *(descriptor + 1);
    v4->super._kernelHeight = *(descriptor + 2);
    v4->super._inputFeatureChannels = *(descriptor + 3);
    *&v4->super._outputFeatureChannels = *(descriptor + 2);
    v4->super._subPixelScaleFactor = *(descriptor + 11);
    v4->super._dilationRateX = *(descriptor + 12);
    v4->super._dilationRateY = *(descriptor + 13);
    v4->super._strideInPixelsX = *(descriptor + 6);
    v4->super._strideInPixelsY = *(descriptor + 7);
    v4->super._groups = *(descriptor + 8);
    v4->super._batchNormalizationData = *(descriptor + 9);
    objc_msgSend_setNeuronType_(v5->super._fusedNeuronDescriptor, v6, 0, v7, v8, v9, v10, v11);
    LODWORD(v12) = 1.0;
    objc_msgSend_setA_(v5->super._fusedNeuronDescriptor, v13, v14, v15, v16, v17, v18, v19, v12);
    LODWORD(v20) = 1.0;
    objc_msgSend_setB_(v5->super._fusedNeuronDescriptor, v21, v22, v23, v24, v25, v26, v27, v20);
    LODWORD(v28) = 1.0;
    objc_msgSend_setC_(v5->super._fusedNeuronDescriptor, v29, v30, v31, v32, v33, v34, v35, v28);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNConvolutionDescriptorNoNeuron;
  [(MPSCNNConvolutionDescriptor *)&v3 dealloc];
}

- (MPSCNNConvolutionDescriptorNoNeuron)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MPSCNNConvolutionDescriptorNoNeuron;
  result = [(MPSCNNConvolutionDescriptor *)&v4 initWithCoder:coder];
  if (result)
  {
    result->super._batchNormalizationData = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSCNNConvolutionDescriptorNoNeuron;
  [(MPSCNNConvolutionDescriptor *)&v3 encodeWithCoder:coder];
}

@end