@interface MPSCNNConvolutionTransposeGradient
- (MPSCNNConvolutionTransposeGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNConvolutionTransposeGradient)initWithDevice:(id)device;
- (MPSCNNConvolutionTransposeGradient)initWithDevice:(id)device weights:(id)weights;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNConvolutionTransposeGradient

- (MPSCNNConvolutionTransposeGradient)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNConvolutionTransposeGradient)initWithDevice:(id)device weights:(id)weights
{
  v43.receiver = self;
  v43.super_class = MPSCNNConvolutionTransposeGradient;
  v13 = [(MPSCNNGradientKernel *)&v43 initWithDevice:?];
  if (v13)
  {
    v14 = objc_msgSend_descriptor(weights, v6, v7, v8, v9, v10, v11, v12);
    v22 = objc_msgSend_dataType(weights, v15, v16, v17, v18, v19, v20, v21);
    if (!device)
    {
      v36 = v22;
      v37 = MTLReportFailureTypeEnabled();
      v22 = v36;
      if (v37)
      {
        v38 = objc_opt_class();
        v42 = NSStringFromClass(v38);
        MTLReportFailure();
        v22 = v36;
      }
    }

    if (!v14)
    {
      v39 = v22;
      v40 = MTLReportFailureTypeEnabled();
      v22 = v39;
      if (v40)
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        MTLReportFailure();
        v22 = v39;
      }
    }

    if (v22 != 268435472 && v22 != 268435488 && MTLReportFailureTypeEnabled())
    {
      v29 = objc_opt_class();
      v42 = NSStringFromClass(v29);
      MTLReportFailure();
    }

    if (!*(v14 + 8) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!*(v14 + 16) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!*(v14 + 24) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!*(v14 + 32) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!*(v14 + 48) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!*(v14 + 56) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!*(v14 + 96) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!*(v14 + 104) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!*(v14 + 64) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v14 + 88) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v14 + 112) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v13->super.super._primaryKernelWidth = *(v14 + 8);
    v13->super.super._primaryKernelHeight = *(v14 + 16);
    v13->super.super._secondaryKernelWidth = v13->super.super._primaryKernelWidth;
    v13->super.super._secondaryKernelHeight = v13->super.super._primaryKernelHeight;
    v13->_inputFeatureChannels = *(v14 + 32);
    v13->_outputFeatureChannels = *(v14 + 24);
    v13->super.super._primaryStrideInPixelsX = *(v14 + 48);
    v13->super.super._primaryStrideInPixelsY = *(v14 + 56);
    v13->super.super._secondaryStrideInPixelsX = v13->super.super._primaryStrideInPixelsX;
    v13->super.super._secondaryStrideInPixelsY = v13->super.super._primaryStrideInPixelsY;
    v13->_groups = *(v14 + 64);
    v13->super.super._primaryDilationRateX = *(v14 + 96);
    v13->super.super._primaryDilationRateY = *(v14 + 104);
    v13->super.super._secondaryDilationRateX = v13->super.super._primaryDilationRateX;
    v13->super.super._secondaryDilationRateY = v13->super.super._primaryDilationRateY;
    v13->super.super._checkFlags |= 2u;
    v13->super.super._encodeData = v13;
    v13->super.super._encode = sub_239D697DC;
    v13->super.super._batchEncode = sub_239D69D38;
    v13->super.super._pluginOptions = 2;
    objc_msgSend_setPlugin_(v13, v23, 0, v24, v25, v26, v27, v28, v42);
    v13->_gradientOption = 3;
    v30 = [MPSCNNConvolutionGradient alloc];
    v13->_convolutionGradient = objc_msgSend_initWithDevice_weights_convolutionTranspose_(v30, v31, device, weights, 1, v32, v33, v34);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v21.receiver = self;
  v21.super_class = MPSCNNConvolutionTransposeGradient;
  v5 = [(MPSCNNGradientKernel *)&v21 copyWithZone:zone device:device];
  v5[54] = self->_inputFeatureChannels;
  v5[55] = self->_outputFeatureChannels;
  v5[56] = self->_groups;
  v5[57] = self->_gradientOption;
  *(v5 + 92) = self->super.super._checkFlags | 2;
  v5[47] = sub_239D697DC;
  v5[48] = sub_239D69D38;
  v5[51] = self->super.super._pluginOptions;
  v13 = objc_msgSend_plugin(self, v6, v7, v8, v9, v10, v11, v12);
  objc_msgSend_setPlugin_(v5, v14, v13, v15, v16, v17, v18, v19);
  v5[58] = self->_convolutionGradient;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v47.receiver = self;
  v47.super_class = MPSCNNConvolutionTransposeGradient;
  [(MPSCNNGradientKernel *)&v47 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_inputFeatureChannels, @"MPSCNNConvolutionTransposeGradientInputFeatureChannels", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_outputFeatureChannels, @"MPSCNNConvolutionTransposeGradientOutputFeatureChannels", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coder, v15, self->_groups, @"MPSCNNConvolutionTransposeGradientGroups", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(coder, v20, self->_gradientOption, @"MPSCNNConvolutionTransposeGradientOption", v21, v22, v23, v24);
  convolutionGradient = self->_convolutionGradient;
  v26 = objc_autoreleasePoolPush();
  v27 = objc_opt_class();
  if (v27)
  {
    v28 = NSStringFromClass(v27);
    v35 = objc_msgSend_cStringUsingEncoding_(v28, v29, 1, v30, v31, v32, v33, v34);
    if (v35)
    {
      v36 = v35;
      v37 = strlen(v35);
      if (v37)
      {
        objc_msgSend_encodeBytes_length_forKey_(coder, v38, v36, v37 + 1, @"MPSCNNConvolutionTransposeGradientConvolutionGradientClass", v39, v40, v41);
        objc_msgSend_encodeObject_forKey_(coder, v42, convolutionGradient, @"MPSCNNConvolutionTransposeGradientConvolutionGradient", v43, v44, v45, v46);
      }
    }
  }

  objc_autoreleasePoolPop(v26);
}

- (MPSCNNConvolutionTransposeGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v62.receiver = self;
  v62.super_class = MPSCNNConvolutionTransposeGradient;
  v5 = [(MPSCNNGradientKernel *)&v62 initWithCoder:aDecoder device:device];
  v12 = v5;
  if (v5)
  {
    if (*(&v5->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v5->_inputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSCNNConvolutionTransposeGradientInputFeatureChannels", v7, v8, v9, v10, v11);
      v12->_outputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSCNNConvolutionTransposeGradientOutputFeatureChannels", v14, v15, v16, v17, v18);
      v12->_groups = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSCNNConvolutionTransposeGradientGroups", v20, v21, v22, v23, v24);
      v12->_gradientOption = objc_msgSend_decodeInt64ForKey_(aDecoder, v25, @"MPSCNNConvolutionTransposeGradientOption", v26, v27, v28, v29, v30);
      v12->super.super._checkFlags |= 2u;
      v12->super.super._encode = sub_239D697DC;
      v12->super.super._batchEncode = sub_239D69D38;
      v12->super.super._encodeData = v12;
      v31 = objc_opt_class();
      v63 = 0;
      v37 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v32, @"MPSCNNConvolutionTransposeGradientConvolutionGradientClass", &v63, v33, v34, v35, v36);
      v38 = 0;
      if (!v63 || !v37)
      {
        goto LABEL_15;
      }

      v39 = objc_alloc(MEMORY[0x277CCACA8]);
      v44 = objc_msgSend_initWithBytes_length_encoding_(v39, v40, v37, v63 - 1, 1, v41, v42, v43);
      v45 = v44;
      if (v44)
      {
        v46 = NSClassFromString(v44);
        if (v46)
        {
          v47 = v46;
          v48 = NSStringFromClass(v31);
          if (objc_msgSend_isEqual_(v48, v49, v44, v50, v51, v52, v53, v54))
          {
            v38 = objc_msgSend_decodeObjectOfClass_forKey_(aDecoder, v55, v47, @"MPSCNNConvolutionTransposeGradientConvolutionGradient", v56, v57, v58, v59);
LABEL_15:
            v12->_convolutionGradient = v38;
            return v12;
          }
        }

        else if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      v38 = 0;
      goto LABEL_15;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v60 = objc_opt_class();
      NSStringFromClass(v60);
      MTLReportFailure();
    }

    return 0;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNConvolutionTransposeGradient;
  [(MPSCNNBinaryKernel *)&v3 dealloc];
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset
{
  v17.receiver = self;
  v17.super_class = MPSCNNConvolutionTransposeGradient;
  v9 = [(MPSCNNBinaryKernel *)&v17 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method primaryOffset:offset secondaryOffset:secondaryOffset kernelOffset:kernelOffset];
  objc_msgSend_setFeatureChannels_(v9, v10, self->_outputFeatureChannels, v11, v12, v13, v14, v15);
  return v9;
}

@end