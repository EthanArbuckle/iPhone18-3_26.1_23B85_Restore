@interface MPSCNNBinaryFullyConnected
- (MPSCNNBinaryFullyConnected)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNBinaryFullyConnected)initWithDevice:(id)device;
- (MPSCNNBinaryFullyConnected)initWithDevice:(id)device convolutionData:(id)convolutionData outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
- (MPSCNNBinaryFullyConnected)initWithDevice:(id)device convolutionData:(id)convolutionData scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
- (MPSCNNBinaryFullyConnected)initWithDeviceImpl:(id)a3 convolutionDescriptor:(id)a4 kernelWeights:(const unsigned int *)a5 outputBiasTerms:(const float *)a6 outputScaleTerms:(const float *)a7 inputBiasTerms:(const float *)a8 inputScaleTerms:(const float *)a9 type:(unint64_t)a10 flags:(unint64_t)a11;
- (MPSCNNBinaryFullyConnected)initWithDeviceImpl:(id)a3 convolutionDescriptor:(id)a4 kernelWeights:(const unsigned int *)a5 scaleValue:(float)a6 type:(unint64_t)a7 flags:(unint64_t)a8;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSCNNBinaryFullyConnected

- (MPSCNNBinaryFullyConnected)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNBinaryFullyConnected)initWithDeviceImpl:(id)a3 convolutionDescriptor:(id)a4 kernelWeights:(const unsigned int *)a5 scaleValue:(float)a6 type:(unint64_t)a7 flags:(unint64_t)a8
{
  result = objc_msgSend_initWithDeviceImpl_convolutionDescriptor_kernelWeights_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_(self, a2, a3, a4, a5, 0, 0, 0, 0, a7, a8);
  if (result)
  {
    result->super._outputScaleValue = a6;
  }

  return result;
}

- (MPSCNNBinaryFullyConnected)initWithDevice:(id)device convolutionData:(id)convolutionData scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
{
  if (!objc_msgSend_load(convolutionData, a2, device, convolutionData, type, flags, v7, v8))
  {
    return 0;
  }

  v21 = objc_msgSend_descriptor(convolutionData, v14, v15, v16, v17, v18, v19, v20);
  v29 = objc_msgSend_weights(convolutionData, v22, v23, v24, v25, v26, v27, v28);
  v37 = objc_msgSend_biasTerms(convolutionData, v30, v31, v32, v33, v34, v35, v36);
  v39 = objc_msgSend_initWithDeviceImpl_convolutionDescriptor_kernelWeights_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_(self, v38, device, v21, v29, v37, 0, 0, 0, type, flags);
  objc_msgSend_purge(convolutionData, v40, v41, v42, v43, v44, v45, v46);
  return v39;
}

- (MPSCNNBinaryFullyConnected)initWithDeviceImpl:(id)a3 convolutionDescriptor:(id)a4 kernelWeights:(const unsigned int *)a5 outputBiasTerms:(const float *)a6 outputScaleTerms:(const float *)a7 inputBiasTerms:(const float *)a8 inputScaleTerms:(const float *)a9 type:(unint64_t)a10 flags:(unint64_t)a11
{
  if (*(a4 + 8) != 1)
  {
    v12 = self;
    v13 = a4;
    v14 = MTLReportFailureTypeEnabled();
    a4 = v13;
    v15 = v14;
    self = v12;
    if (v15)
    {
      MTLReportFailure();
      self = v12;
      a4 = v13;
    }
  }

  if (*(a4 + 6) != 1)
  {
    v16 = self;
    v17 = a4;
    v18 = MTLReportFailureTypeEnabled();
    a4 = v17;
    v19 = v18;
    self = v16;
    if (v19)
    {
      MTLReportFailure();
      self = v16;
      a4 = v17;
    }
  }

  if (*(a4 + 7) != 1)
  {
    v20 = self;
    v21 = MTLReportFailureTypeEnabled();
    self = v20;
    if (v21)
    {
      MTLReportFailure();
      self = v20;
    }
  }

  v22.receiver = self;
  v22.super_class = MPSCNNBinaryFullyConnected;
  result = [MPSCNNBinaryConvolution initWithDeviceImpl:sel_initWithDeviceImpl_convolutionDescriptor_kernelWeights_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_ convolutionDescriptor:a9 kernelWeights:a10 outputBiasTerms:a11 outputScaleTerms:? inputBiasTerms:? inputScaleTerms:? type:? flags:?];
  if (result)
  {
    result->super.super._encode = sub_239D70B04;
    result->super.super._encodeData = result;
  }

  return result;
}

- (MPSCNNBinaryFullyConnected)initWithDevice:(id)device convolutionData:(id)convolutionData outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
{
  v13 = outputBiasTerms;
  if (!objc_msgSend_load(convolutionData, a2, device, convolutionData, outputBiasTerms, outputScaleTerms, inputBiasTerms, inputScaleTerms))
  {
    return 0;
  }

  v24 = objc_msgSend_descriptor(convolutionData, v17, v18, v19, v20, v21, v22, v23);
  v39 = objc_msgSend_weights(convolutionData, v25, v26, v27, v28, v29, v30, v31);
  if (!v13)
  {
    v13 = objc_msgSend_biasTerms(convolutionData, v32, v33, v34, v35, v36, v37, v38);
  }

  v40 = objc_msgSend_initWithDeviceImpl_convolutionDescriptor_kernelWeights_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_(self, v32, device, v24, v39, v13, outputScaleTerms, inputBiasTerms, inputScaleTerms, type, flags);
  objc_msgSend_purge(convolutionData, v41, v42, v43, v44, v45, v46, v47);
  return v40;
}

- (MPSCNNBinaryFullyConnected)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSCNNBinaryFullyConnected;
  result = [(MPSCNNBinaryConvolution *)&v7 initWithCoder:aDecoder device:device];
  if (result)
  {
    if (*(&result->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      result->super.super._encode = sub_239D70B04;
      result->super.super._encodeData = result;
    }

    else
    {
      v5 = result;
      if (MTLReportFailureTypeEnabled())
      {
        v6 = objc_opt_class();
        NSStringFromClass(v6);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSCNNBinaryFullyConnected;
  [(MPSCNNBinaryConvolution *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSCNNBinaryFullyConnected;
  result = [(MPSCNNBinaryConvolution *)&v5 copyWithZone:a3 device:a4];
  *(result + 36) = sub_239D70B04;
  *(result + 38) = result;
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSCNNBinaryFullyConnected;
  [(MPSCNNBinaryConvolution *)&v2 dealloc];
}

@end