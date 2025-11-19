@interface MPSCNNDepthWiseConvolutionDescriptor
- (MPSCNNDepthWiseConvolutionDescriptor)init;
- (MPSCNNDepthWiseConvolutionDescriptor)initWithKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 inputFeatureChannels:(unint64_t)a5 outputFeatureChannels:(unint64_t)a6;
- (id)debugDescription;
@end

@implementation MPSCNNDepthWiseConvolutionDescriptor

- (MPSCNNDepthWiseConvolutionDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSCNNDepthWiseConvolutionDescriptor;
  result = [(MPSCNNConvolutionDescriptor *)&v3 init];
  if (result)
  {
    result->super._depthWiseConvolution = 1;
  }

  return result;
}

- (MPSCNNDepthWiseConvolutionDescriptor)initWithKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 inputFeatureChannels:(unint64_t)a5 outputFeatureChannels:(unint64_t)a6
{
  v9.receiver = self;
  v9.super_class = MPSCNNDepthWiseConvolutionDescriptor;
  result = [(MPSCNNConvolutionDescriptor *)&v9 initWithKernelWidth:a3 kernelHeight:a4 inputFeatureChannels:a5 outputFeatureChannels:a6];
  if (result)
  {
    if (result->super._outputFeatureChannels % result->super._inputFeatureChannels)
    {
      v7 = result;
      v8 = MTLReportFailureTypeEnabled();
      result = v7;
      if (v8)
      {
        MTLReportFailure();
        result = v7;
      }
    }

    result->super._depthWiseConvolution = 1;
  }

  return result;
}

- (id)debugDescription
{
  v20.receiver = self;
  v20.super_class = MPSCNNDepthWiseConvolutionDescriptor;
  v3 = [(MPSCNNConvolutionDescriptor *)&v20 debugDescription];
  v4 = MEMORY[0x277CCACA8];
  v12 = objc_msgSend_channelMultiplier(self, v5, v6, v7, v8, v9, v10, v11);
  return objc_msgSend_stringWithFormat_(v4, v13, @"%@\n\tchannelMultiplier:    %lu\n", v14, v15, v16, v17, v18, v3, v12);
}

@end