@interface MPSCNNBinaryConvolution
- (MPSCNNBinaryConvolution)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNBinaryConvolution)initWithDevice:(id)device;
- (MPSCNNBinaryConvolution)initWithDevice:(id)device convolutionData:(id)convolutionData outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
- (MPSCNNBinaryConvolution)initWithDevice:(id)device convolutionData:(id)convolutionData scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
- (MPSCNNBinaryConvolution)initWithDeviceImpl:(id)a3 convolutionDescriptor:(id)a4 kernelWeights:(const unsigned int *)a5 biasTerms:(const float *)a6 scaleValue:(float)a7 type:(unint64_t)a8 flags:(unint64_t)a9;
- (MPSCNNBinaryConvolution)initWithDeviceImpl:(id)a3 convolutionDescriptor:(id)a4 kernelWeights:(const unsigned int *)a5 outputBiasTerms:(const float *)a6 outputScaleTerms:(const float *)a7 inputBiasTerms:(const float *)a8 inputScaleTerms:(const float *)a9 type:(unint64_t)a10 flags:(unint64_t)a11;
- (id)copyBuffer:(id)a3 device:(id)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6;
- (void)createBuffersFromkernelWeights:(const unsigned int *)a3 inputBiasTerms:(const float *)a4 inputScaleTerms:(const float *)a5 outputBiasTerms:(const float *)a6 outputScaleTerms:(const float *)a7 useHalfPrecision:(BOOL)a8;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSCNNBinaryConvolution

- (void)createBuffersFromkernelWeights:(const unsigned int *)a3 inputBiasTerms:(const float *)a4 inputScaleTerms:(const float *)a5 outputBiasTerms:(const float *)a6 outputScaleTerms:(const float *)a7 useHalfPrecision:(BOOL)a8
{
  v121 = a8;
  v12 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  v13 = v12[2];
  v14 = ((self->_inputFeatureChannels + 31) >> 5) * self->super._kernelWidth * self->super._kernelHeight;
  v15 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  self->_filterStride = v15;
  v16 = 4 * v15 * self->_outputFeatureChannels;
  v17 = (*(*v12 + 24))(v12, a2);
  v23 = objc_msgSend_newBufferWithLength_options_(v13, v18, v16, 16 * v17, v19, v20, v21, v22);
  self->_weights = v23;
  if (v23)
  {
    v118 = a6;
    v31 = a5;
    v32 = objc_msgSend_contents(v23, v24, v25, v26, v27, v28, v29, v30);
    if (self->_outputFeatureChannels)
    {
      v33 = v32;
      v34 = 0;
      v35 = 4 * v14;
      do
      {
        memcpy((v33 + 4 * self->_filterStride * v34++), a3, v35);
        outputFeatureChannels = self->_outputFeatureChannels;
        a3 = (a3 + v35);
      }

      while (v34 < outputFeatureChannels);
    }

    else
    {
      outputFeatureChannels = 0;
    }

    MPSDevice = MPSDevice::GetMPSDevice();
    v38 = 0;
    v39 = v31;
    if (v118 && MPSDevice)
    {
      v40 = 1;
      if (!v121)
      {
        v40 = 2;
      }

      v41 = ((outputFeatureChannels + 31) & 0xFFFFFFE0) << v40;
      v42 = (*(*MPSDevice + 24))(MPSDevice);
      v48 = objc_msgSend_newBufferWithLength_options_(v13, v43, v41, 16 * v42, v44, v45, v46, v47);
      v38 = v48;
      if (v48)
      {
        v56 = objc_msgSend_contents(v48, v49, v50, v51, v52, v53, v54, v55);
        if (v121)
        {
          MPSConvertFloatToHalf();
        }

        else
        {
          memcpy(v56, v118, 4 * outputFeatureChannels);
        }
      }
    }

    self->_outputbias = v38;
    v57 = self->_outputFeatureChannels;
    v58 = MPSDevice::GetMPSDevice();
    v59 = 0;
    if (a7)
    {
      v60 = a4;
      if (v58)
      {
        v61 = 1;
        if (!v121)
        {
          v61 = 2;
        }

        v62 = ((v57 + 31) & 0xFFFFFFE0) << v61;
        v63 = (*(*v58 + 24))(v58);
        v69 = objc_msgSend_newBufferWithLength_options_(v13, v64, v62, 16 * v63, v65, v66, v67, v68);
        v59 = v69;
        if (v69)
        {
          v77 = objc_msgSend_contents(v69, v70, v71, v72, v73, v74, v75, v76);
          if (v121)
          {
            MPSConvertFloatToHalf();
          }

          else
          {
            memcpy(v77, a7, 4 * v57);
          }
        }
      }
    }

    else
    {
      v60 = a4;
    }

    self->_outputScale = v59;
    inputFeatureChannels = self->_inputFeatureChannels;
    v79 = MPSDevice::GetMPSDevice();
    v80 = 0;
    if (v60 && v79)
    {
      v81 = 1;
      if (!v121)
      {
        v81 = 2;
      }

      v82 = ((inputFeatureChannels + 31) & 0xFFFFFFE0) << v81;
      v83 = (*(*v79 + 24))(v79);
      v89 = objc_msgSend_newBufferWithLength_options_(v13, v84, v82, 16 * v83, v85, v86, v87, v88);
      v80 = v89;
      if (v89)
      {
        v97 = objc_msgSend_contents(v89, v90, v91, v92, v93, v94, v95, v96);
        if (v121)
        {
          MPSConvertFloatToHalf();
        }

        else
        {
          memcpy(v97, v60, 4 * inputFeatureChannels);
        }
      }
    }

    self->_inputbias = v80;
    v98 = self->_inputFeatureChannels;
    v99 = MPSDevice::GetMPSDevice();
    v100 = 0;
    if (v39 && v99)
    {
      v101 = 1;
      if (!v121)
      {
        v101 = 2;
      }

      v102 = ((v98 + 31) & 0xFFFFFFE0) << v101;
      v103 = (*(*v99 + 24))(v99);
      v109 = objc_msgSend_newBufferWithLength_options_(v13, v104, v102, 16 * v103, v105, v106, v107, v108);
      v100 = v109;
      if (v109)
      {
        v117 = objc_msgSend_contents(v109, v110, v111, v112, v113, v114, v115, v116);
        if (v121)
        {
          MPSConvertFloatToHalf();
        }

        else
        {
          memcpy(v117, v39, 4 * v98);
        }
      }
    }

    self->_inputScale = v100;
  }
}

- (MPSCNNBinaryConvolution)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v4 = objc_opt_class();
    NSStringFromClass(v4);
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNBinaryConvolution)initWithDeviceImpl:(id)a3 convolutionDescriptor:(id)a4 kernelWeights:(const unsigned int *)a5 biasTerms:(const float *)a6 scaleValue:(float)a7 type:(unint64_t)a8 flags:(unint64_t)a9
{
  result = objc_msgSend_initWithDeviceImpl_convolutionDescriptor_kernelWeights_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_(self, a2, a3, a4, a5, 0, 0, 0, 0, a8, a9);
  if (result)
  {
    result->_outputScaleValue = a7;
  }

  return result;
}

- (MPSCNNBinaryConvolution)initWithDevice:(id)device convolutionData:(id)convolutionData scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
{
  if (!objc_msgSend_load(convolutionData, a2, device, convolutionData, type, flags, v7, v8))
  {
    return 0;
  }

  v22 = objc_msgSend_descriptor(convolutionData, v15, v16, v17, v18, v19, v20, v21);
  v30 = objc_msgSend_weights(convolutionData, v23, v24, v25, v26, v27, v28, v29);
  v32 = objc_msgSend_initWithDeviceImpl_convolutionDescriptor_kernelWeights_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_(self, v31, device, v22, v30, 0, 0, 0, 0, type, flags);
  objc_msgSend_purge(convolutionData, v33, v34, v35, v36, v37, v38, v39);
  result = v32;
  if (v32)
  {
    v32->_outputScaleValue = scaleValue;
  }

  return result;
}

- (MPSCNNBinaryConvolution)initWithDeviceImpl:(id)a3 convolutionDescriptor:(id)a4 kernelWeights:(const unsigned int *)a5 outputBiasTerms:(const float *)a6 outputScaleTerms:(const float *)a7 inputBiasTerms:(const float *)a8 inputScaleTerms:(const float *)a9 type:(unint64_t)a10 flags:(unint64_t)a11
{
  v40.receiver = self;
  v40.super_class = MPSCNNBinaryConvolution;
  result = [(MPSCNNKernel *)&v40 initWithDevice:a3];
  if (!result)
  {
    return result;
  }

  v24 = result;
  if (!a5)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v25 = *(a4 + 1);
  if (!v25)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v26 = *(a4 + 2);
  if (!v26)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (!*(a4 + 3))
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (!*(a4 + 4))
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (!*(a4 + 6))
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (!*(a4 + 7))
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v27 = *(a4 + 8);
  if (v27 != 1)
  {
    if (v27)
    {
      if (MTLReportFailureTypeEnabled())
      {
LABEL_35:
        MTLReportFailure();
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_35;
    }

LABEL_36:

    return 0;
  }

  result->super._kernelWidth = v25;
  result->super._kernelHeight = v26;
  result->_inputFeatureChannels = *(a4 + 3);
  result->_outputFeatureChannels = *(a4 + 4);
  result->super._strideInPixelsX = *(a4 + 6);
  result->super._strideInPixelsY = *(a4 + 7);
  result->super._checkFlags |= 2u;
  result->_flags = a11;
  objc_msgSend_neuronInfo(a4, v17, v18, v19, v20, v21, v22, v23);
  *&v24->_neuronInfo.type = v38;
  v24->_neuronInfo.aData = v39;
  v24->super._encode = sub_239D6E498;
  v24->super._encodeData = v24;
  v24->_convType = a10;
  if (v24->_flags)
  {
    v29 = [MPSCNNPoolingAverage alloc];
    result = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_(v29, v30, (*(&v24->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v24->super._kernelWidth, v24->super._kernelHeight, v24->super._strideInPixelsX, v24->super._strideInPixelsY, v31);
    v24->_poolingFilter = result;
    if (!result)
    {
      return result;
    }

    objc_msgSend_setEdgeMode_(result, v32, 0, v33, v34, v35, v36, v37);
  }

  v24->_outputScaleValue = 1.0;
  objc_msgSend_createBuffersFromkernelWeights_inputBiasTerms_inputScaleTerms_outputBiasTerms_outputScaleTerms_useHalfPrecision_(v24, v28, a5, a8, a9, a6, a7, 0);
  if (v24->_weights)
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

- (MPSCNNBinaryConvolution)initWithDevice:(id)device convolutionData:(id)convolutionData outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
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

- (void)dealloc
{
  objc_msgSend_dealloc(self->_poolingFilter, a2, v2, v3, v4, v5, v6, v7);

  v9.receiver = self;
  v9.super_class = MPSCNNBinaryConvolution;
  [(MPSCNNKernel *)&v9 dealloc];
}

- (MPSCNNBinaryConvolution)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v118.receiver = self;
  v118.super_class = MPSCNNBinaryConvolution;
  v6 = [MPSCNNKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (v6)
  {
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
    {
      if (MTLReportFailureTypeEnabled())
      {
        v82 = objc_opt_class();
        NSStringFromClass(v82);
LABEL_11:
        MTLReportFailure();
      }

LABEL_12:

      return 0;
    }

    v6->super._checkFlags |= 2u;
    v6->super._encode = sub_239D6E498;
    v6->super._encodeData = v6;
    v6->_fullyConnected = objc_msgSend_decodeBoolForKey_(aDecoder, v7, @"kMPSCNNBinaryConvolution._fullyConnected", v8, v9, v10, v11, v12);
    v13->super._kernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v14, @"kMPSCNNBinaryConvolution._kernelWidth", v15, v16, v17, v18, v19);
    v13->super._kernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v20, @"kMPSCNNBinaryConvolution._kernelHeight", v21, v22, v23, v24, v25);
    v13->_inputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v26, @"kMPSCNNBinaryConvolution._inputFeatureChannels", v27, v28, v29, v30, v31);
    v13->_outputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v32, @"kMPSCNNBinaryConvolution._outputFeatureChannels", v33, v34, v35, v36, v37);
    v13->super._strideInPixelsX = objc_msgSend_decodeInt64ForKey_(aDecoder, v38, @"kMPSCNNBinaryConvolution._strideInPixelsX", v39, v40, v41, v42, v43);
    v13->super._strideInPixelsY = objc_msgSend_decodeInt64ForKey_(aDecoder, v44, @"kMPSCNNBinaryConvolution._strideInPixelsY", v45, v46, v47, v48, v49);
    v13->_flags = objc_msgSend_decodeInt64ForKey_(aDecoder, v50, @"kMPSCNNBinaryConvolution._flags", v51, v52, v53, v54, v55);
    v13->_convType = objc_msgSend_decodeInt64ForKey_(aDecoder, v56, @"kMPSCNNBinaryConvolution._convType", v57, v58, v59, v60, v61);
    objc_msgSend_decodeFloatForKey_(aDecoder, v62, @"kMPSCNNBinaryConvolution._outputScaleValue", v63, v64, v65, v66, v67);
    v13->_outputScaleValue = v68;
    v13->_inputbias = 0;
    v13->_inputScale = 0;
    v13->_outputbias = 0;
    v13->_outputScale = 0;
    kernelWidth = v13->super._kernelWidth;
    kernelHeight = v13->super._kernelHeight;
    outputFeatureChannels = v13->_outputFeatureChannels;
    v72 = v13->_inputFeatureChannels + 31;
    v117 = 1;
    v79 = sub_239D6FC44(aDecoder, device, @"kMPSCNNBinaryConvolution._weights", kernelHeight * kernelWidth * outputFeatureChannels * (v72 >> 5), &v117);
    v80 = v117;
    if (v117 == 1)
    {
      v13->_inputbias = sub_239D6FC44(aDecoder, device, @"kMPSCNNBinaryConvolution._inputbias", v72 & 0xFFFFFFE0, &v117);
      v80 = v117;
      v81 = outputFeatureChannels + 31;
      if ((v117 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v81 = outputFeatureChannels + 31;
      if ((v117 & 1) == 0)
      {
LABEL_5:
        if (v80)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }

    v13->_inputScale = sub_239D6FC44(aDecoder, device, @"kMPSCNNBinaryConvolution._inputScale", v72 & 0xFFFFFFE0, &v117);
    v80 = v117;
    if (v117)
    {
LABEL_6:
      v13->_outputbias = sub_239D6FC44(aDecoder, device, @"kMPSCNNBinaryConvolution._outputbias", v81 & 0xFFFFFFE0, &v117);
      v80 = v117;
      if ((v117 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

LABEL_15:
    if ((v80 & 1) == 0)
    {
LABEL_7:
      if ((v80 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_17:
      if (v79)
      {
        v13->_weights = v79;
        if ((v13->_flags & 1) == 0)
        {
LABEL_21:
          v13->_neuronInfo.type = objc_msgSend_decodeInt64ForKey_(aDecoder, v73, @"kMPSCNNBinaryConvolution._neuronType", v74, v75, v76, v77, v78);
          objc_msgSend_decodeFloatForKey_(aDecoder, v93, @"kMPSCNNBinaryConvolution._neuronParamA", v94, v95, v96, v97, v98);
          v13->_neuronInfo.a = v99;
          objc_msgSend_decodeFloatForKey_(aDecoder, v100, @"kMPSCNNBinaryConvolution._neuronParamB", v101, v102, v103, v104, v105);
          v13->_neuronInfo.b = v106;
          objc_msgSend_decodeFloatForKey_(aDecoder, v107, @"kMPSCNNBinaryConvolution._neuronParamC", v108, v109, v110, v111, v112);
          v13->_neuronInfo.c = v113;
          return v13;
        }

        v83 = [MPSCNNPoolingAverage alloc];
        v86 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_(v83, v84, device, v13->super._kernelWidth, v13->super._kernelHeight, v13->super._strideInPixelsX, v13->super._strideInPixelsY, v85);
        v13->_poolingFilter = v86;
        if (v86)
        {
          objc_msgSend_setEdgeMode_(v86, v87, 0, v88, v89, v90, v91, v92);
          goto LABEL_21;
        }

        if (MTLReportFailureTypeEnabled())
        {
          v115 = objc_opt_class();
          NSStringFromClass(v115);
          goto LABEL_11;
        }

        goto LABEL_12;
      }

LABEL_22:

      if (!v80 && MTLReportFailureTypeEnabled())
      {
        v116 = objc_opt_class();
        NSStringFromClass(v116);
        MTLReportFailure();
      }

      return 0;
    }

LABEL_16:
    v13->_outputScale = sub_239D6FC44(aDecoder, device, @"kMPSCNNBinaryConvolution._outputScale", v81 & 0xFFFFFFE0, &v117);
    v80 = v117;
    if ((v117 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v106.receiver = self;
  v106.super_class = MPSCNNBinaryConvolution;
  [(MPSCNNKernel *)&v106 encodeWithCoder:?];
  objc_msgSend_encodeBool_forKey_(a3, v5, v4->_fullyConnected, @"kMPSCNNBinaryConvolution._fullyConnected", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, v4->super._kernelWidth, @"kMPSCNNBinaryConvolution._kernelWidth", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(a3, v15, v4->super._kernelHeight, @"kMPSCNNBinaryConvolution._kernelHeight", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v20, v4->_inputFeatureChannels, @"kMPSCNNBinaryConvolution._inputFeatureChannels", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(a3, v25, v4->_outputFeatureChannels, @"kMPSCNNBinaryConvolution._outputFeatureChannels", v26, v27, v28, v29);
  objc_msgSend_encodeInt64_forKey_(a3, v30, v4->super._strideInPixelsX, @"kMPSCNNBinaryConvolution._strideInPixelsX", v31, v32, v33, v34);
  objc_msgSend_encodeInt64_forKey_(a3, v35, v4->super._strideInPixelsY, @"kMPSCNNBinaryConvolution._strideInPixelsY", v36, v37, v38, v39);
  objc_msgSend_encodeInt64_forKey_(a3, v40, v4->_flags, @"kMPSCNNBinaryConvolution._flags", v41, v42, v43, v44);
  objc_msgSend_encodeInt64_forKey_(a3, v45, v4->_convType, @"kMPSCNNBinaryConvolution._convType", v46, v47, v48, v49);
  *&v50 = v4->_outputScaleValue;
  objc_msgSend_encodeFloat_forKey_(a3, v51, @"kMPSCNNBinaryConvolution._outputScaleValue", v52, v53, v54, v55, v56, v50);
  outputFeatureChannels = v4->_outputFeatureChannels;
  v58 = v4->_inputFeatureChannels + 31;
  v59 = outputFeatureChannels + 31;
  sub_239D700A4(a3, v4->_weights, @"kMPSCNNBinaryConvolution._weights", v4->super._kernelHeight * v4->super._kernelWidth * outputFeatureChannels * (v58 >> 5), v60, v61, v62, v63);
  sub_239D700A4(a3, v4->_inputbias, @"kMPSCNNBinaryConvolution._inputbias", v58 & 0xFFFFFFE0, v64, v65, v66, v67);
  sub_239D700A4(a3, v4->_inputScale, @"kMPSCNNBinaryConvolution._inputScale", v58 & 0xFFFFFFE0, v68, v69, v70, v71);
  sub_239D700A4(a3, v4->_outputbias, @"kMPSCNNBinaryConvolution._outputbias", v59 & 0xFFFFFFE0, v72, v73, v74, v75);
  sub_239D700A4(a3, v4->_outputScale, @"kMPSCNNBinaryConvolution._outputScale", v59 & 0xFFFFFFE0, v76, v77, v78, v79);
  v4 = (v4 + 344);
  objc_msgSend_encodeInt64_forKey_(a3, v80, SLODWORD(v4->super.super.super.isa), @"kMPSCNNBinaryConvolution._neuronType", v81, v82, v83, v84);
  LODWORD(v85) = HIDWORD(v4->super.super.super.isa);
  objc_msgSend_encodeFloat_forKey_(a3, v86, @"kMPSCNNBinaryConvolution._neuronParamA", v87, v88, v89, v90, v91, v85);
  LODWORD(v92) = v4->super.super._options;
  objc_msgSend_encodeFloat_forKey_(a3, v93, @"kMPSCNNBinaryConvolution._neuronParamB", v94, v95, v96, v97, v98, v92);
  LODWORD(v99) = HIDWORD(v4->super.super._options);
  objc_msgSend_encodeFloat_forKey_(a3, v100, @"kMPSCNNBinaryConvolution._neuronParamC", v101, v102, v103, v104, v105, v99);
}

- (id)copyBuffer:(id)a3 device:(id)a4
{
  v8 = *MEMORY[0x277CD7350];
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = (*(&self->super.super.super.isa + v8))[2];
  }

  if (!a3)
  {
    return 0;
  }

  if ((*(&self->super.super.super.isa + v8))[2] == v9)
  {

    return MEMORY[0x2821F9888]();
  }

  else
  {
    v11 = objc_msgSend_length(a3, a2, a3, a4, v4, v5, v6, v7);
    v12 = (*(**(&self->super.super.super.isa + v8) + 24))(*(&self->super.super.super.isa + v8));
    v13 = (*(**(&self->super.super.super.isa + v8) + 40))(*(&self->super.super.super.isa + v8));
    v19 = objc_msgSend_newBufferWithLength_options_(v9, v14, v11, v13 | (16 * v12), v15, v16, v17, v18);
    v27 = objc_msgSend_contents(v19, v20, v21, v22, v23, v24, v25, v26);
    v35 = objc_msgSend_contents(a3, v28, v29, v30, v31, v32, v33, v34);
    v43 = objc_msgSend_length(a3, v36, v37, v38, v39, v40, v41, v42);
    memcpy(v27, v35, v43);
    return v19;
  }
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v41.receiver = self;
  v41.super_class = MPSCNNBinaryConvolution;
  result = [MPSCNNKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (result)
  {
    *(result + 25) = self->super._kernelWidth;
    *(result + 26) = self->super._kernelHeight;
    *(result + 41) = self->_inputFeatureChannels;
    *(result + 42) = self->_outputFeatureChannels;
    *(result + 27) = self->super._strideInPixelsX;
    *(result + 28) = self->super._strideInPixelsY;
    *(result + 70) = self->super._checkFlags | 2;
    *(result + 52) = self->_flags;
    aData = self->_neuronInfo.aData;
    *(result + 344) = *&self->_neuronInfo.type;
    *(result + 45) = aData;
    *(result + 53) = self->_convType;
    *(result + 36) = sub_239D6E498;
    *(result + 38) = result;
    *(result + 440) = self->_fullyConnected;
    v14 = result;
    *(result + 47) = objc_msgSend_copyBuffer_device_(self, v8, self->_weights, a4, v9, v10, v11, v12);
    v14[50] = objc_msgSend_copyBuffer_device_(self, v15, self->_inputbias, a4, v16, v17, v18, v19);
    v14[51] = objc_msgSend_copyBuffer_device_(self, v20, self->_inputScale, a4, v21, v22, v23, v24);
    v14[48] = objc_msgSend_copyBuffer_device_(self, v25, self->_outputbias, a4, v26, v27, v28, v29);
    v14[49] = objc_msgSend_copyBuffer_device_(self, v30, self->_outputScale, a4, v31, v32, v33, v34);
    *(v14 + 111) = LODWORD(self->_outputScaleValue);
    v40 = objc_msgSend_copyWithZone_device_(self->_poolingFilter, v35, a3, a4, v36, v37, v38, v39);
    result = v14;
    v14[54] = v40;
  }

  return result;
}

- (id)debugDescription
{
  v58 = MEMORY[0x277CCACA8];
  v59.receiver = self;
  v59.super_class = MPSCNNBinaryConvolution;
  v57 = [(MPSCNNKernel *)&v59 debugDescription];
  v56 = objc_msgSend_kernelWidth(self, v3, v4, v5, v6, v7, v8, v9);
  v55 = objc_msgSend_kernelHeight(self, v10, v11, v12, v13, v14, v15, v16);
  v54 = objc_msgSend_strideInPixelsX(self, v17, v18, v19, v20, v21, v22, v23);
  v31 = objc_msgSend_strideInPixelsY(self, v24, v25, v26, v27, v28, v29, v30);
  inputFeatureChannels = self->_inputFeatureChannels;
  outputFeatureChannels = self->_outputFeatureChannels;
  v34 = self->_outputbias != 0;
  v35 = self->_outputScale != 0;
  v36 = self->_inputbias != 0;
  v37 = self->_inputScale != 0;
  type = self->_neuronInfo.type;
  v46 = objc_msgSend_debugDescription(self->_poolingFilter, v39, v40, v41, v42, v43, v44, v45);
  return objc_msgSend_stringWithFormat_(v58, v47, @"%@\n\tkernelWidth: %lu\n\tkernelHeight: %lu\n\tstride X: %lu\n\tstride Y: %lu\ninputFeatureChannels: %lu\toutputFeatureChannels: %lu\nNeuronType: %d\noutputBias: %d\toutputScale: %d\tinputBias: %d\tinputScale: %d\nPoolingFilter: %@\nconvType: %lu\tflags: %lu\n", v48, v49, v50, v51, v52, v57, v56, v55, v54, v31, inputFeatureChannels, outputFeatureChannels, type, v34, v35, v36, v37, v46, self->_convType, self->_flags);
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6
{
  v15.receiver = self;
  v15.super_class = MPSCNNBinaryConvolution;
  v7 = [(MPSCNNKernel *)&v15 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 paddingMethod:a5 sourceOffset:a6];
  objc_msgSend_setFeatureChannels_(v7, v8, self->_outputFeatureChannels, v9, v10, v11, v12, v13);
  return v7;
}

@end