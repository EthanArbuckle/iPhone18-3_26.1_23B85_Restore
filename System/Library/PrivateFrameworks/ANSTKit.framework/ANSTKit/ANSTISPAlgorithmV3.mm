@interface ANSTISPAlgorithmV3
+ (BOOL)_requiresPartialNetwork:(id)network;
+ (id)networkDescriptorForConfig:(id)config;
- (ANSTISPAlgorithmV3)initWithConfiguration:(id)configuration;
- (BOOL)_preparePostProcessorWithNetworkDescriptor:(id)descriptor error:(id *)error;
- (BOOL)_prepareWithError:(id *)error;
- (BOOL)_retainIOReferencesWithNetworkDescriptor:(id)descriptor error:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (id)_resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error;
- (id)resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error;
- (void)dealloc;
@end

@implementation ANSTISPAlgorithmV3

- (ANSTISPAlgorithmV3)initWithConfiguration:(id)configuration
{
  v57 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v54.receiver = self;
  v54.super_class = ANSTISPAlgorithmV3;
  v6 = [(ANSTISPAlgorithm *)&v54 initWithConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, configuration);
    v9 = objc_msgSend_networkDescriptorForConfig_(ANSTISPAlgorithmV3, v8, configurationCopy);
    v12 = objc_msgSend_inputImageDescriptor(v9, v10, v11);
    v7->_networkInputBufferWidth = objc_msgSend_width(v12, v13, v14);

    v17 = objc_msgSend_inputImageDescriptor(v9, v15, v16);
    v7->_networkInputBufferHeight = objc_msgSend_height(v17, v18, v19);

    v22 = objc_msgSend_inputImageDescriptor(v9, v20, v21);
    v7->_networkInputBufferPixelFormat = objc_msgSend_pixelFormatType(v22, v23, v24);

    v25 = [ANSTE5MLNetwork alloc];
    v53 = 0;
    v27 = objc_msgSend_initWithInferenceDescriptor_error_(v25, v26, v9, &v53);
    v28 = v53;
    network = v7->_network;
    v7->_network = v27;

    if (v7->_network)
    {
      if (!objc_msgSend__requiresPartialNetwork_(ANSTISPAlgorithmV3, v30, configurationCopy))
      {
        p_super = &v7->_partialNetwork->super;
        v7->_partialNetwork = 0;
        goto LABEL_10;
      }

      p_super = objc_msgSend_copy(v7->_config, v31, v32);
      objc_msgSend_setEnableSkinTone_(p_super, v34, 0);
      objc_msgSend_setEnableBodyKeypoints_(p_super, v35, 0);
      objc_msgSend_setEnableDepth_(p_super, v36, 0);
      v38 = objc_msgSend_networkDescriptorForConfig_(ANSTISPAlgorithmV3, v37, p_super);
      v39 = [ANSTE5MLNetwork alloc];
      v52 = v28;
      v41 = objc_msgSend_initWithInferenceDescriptor_error_(v39, v40, v38, &v52);
      v42 = v52;

      partialNetwork = v7->_partialNetwork;
      v7->_partialNetwork = v41;

      if (v7->_partialNetwork)
      {

        v28 = v42;
LABEL_10:

        v7->_readyForInference = 0;
        v44 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v47 = objc_msgSend_description(v7->_config, v45, v46);
          *buf = 138543362;
          v56 = v47;
          _os_log_impl(&dword_22E5D5000, v44, OS_LOG_TYPE_DEFAULT, "ANSTISPAlgorithm v3.5 initialized with config %{public}@.", buf, 0xCu);
        }

        goto LABEL_13;
      }

      v49 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        sub_22E65C540();
      }
    }

    else
    {
      p_super = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
      {
        sub_22E65C540();
      }

      v42 = v28;
    }

    v48 = 0;
    goto LABEL_18;
  }

LABEL_13:
  v48 = v7;
LABEL_18:

  v50 = *MEMORY[0x277D85DE8];
  return v48;
}

- (void)dealloc
{
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    CFRelease(self->_pixelTransferSession);
    self->_pixelTransferSession = 0;
  }

  v4.receiver = self;
  v4.super_class = ANSTISPAlgorithmV3;
  [(ANSTISPAlgorithmV3 *)&v4 dealloc];
}

- (id)resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error
{
  v9 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ANSTISPAlgorithmV3_resultForPixelBuffer", &unk_22E663F87, buf, 2u);
  }

  v12 = objc_msgSend__resultForPixelBuffer_orientation_error_(self, v11, buffer, orientation, error);
  v13 = os_signpost_id_make_with_pointer(v9, self);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_END, v13, "ANSTISPAlgorithmV3_resultForPixelBuffer", &unk_22E663F87, v15, 2u);
  }

  return v12;
}

- (BOOL)prepareWithError:(id *)error
{
  v5 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  v6 = os_signpost_id_make_with_pointer(v5, self);

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ANSTISPAlgorithmV3_prepareWithError", &unk_22E663F87, buf, 2u);
  }

  v8 = objc_msgSend__prepareWithError_(self, v7, error);
  v9 = os_signpost_id_make_with_pointer(v5, self);

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v9, "ANSTISPAlgorithmV3_prepareWithError", &unk_22E663F87, v11, 2u);
  }

  return v8;
}

- (BOOL)resetWithError:(id *)error
{
  if (!self->_readyForInference)
  {
    return 1;
  }

  v5 = objc_msgSend_networkDescriptorForConfig_(ANSTISPAlgorithmV3, a2, self->_config);
  network = self->_network;
  v9 = objc_msgSend_inputMemoryDescriptor(v5, v7, v8);
  v12 = objc_msgSend_name(v9, v10, v11);
  v14 = objc_msgSend_tensorSurfaceForNetworkInputNamed_error_(network, v13, v12, error);

  if (v14)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22E627FA0;
    v19[3] = &unk_27884FFE0;
    v20 = v5;
    objc_msgSend_performMutableDataAccessWithOptions_usingBlock_error_(v14, v15, 0, v19, error);
    v17 = objc_msgSend_resetWithError_(self->_postprocessor, v16, error);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)networkDescriptorForConfig:(id)config
{
  configCopy = config;
  v4 = [ANSTISPInferenceConfiguration alloc];
  v6 = objc_msgSend_initWithISPAlgorithmConfiguration_(v4, v5, configCopy);

  v14 = 0;
  v8 = objc_msgSend_descriptorWithConfiguration_error_(ANSTISPInferenceDescriptor, v7, v6, &v14);
  v10 = v14;
  if (!v8)
  {
    v11 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_22E65C5B4();
    }
  }

  if ((objc_msgSend_conformsToProtocol_(v8, v9, &unk_28432ED88) & 1) == 0)
  {
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_22E65C628(v12);
    }
  }

  return v8;
}

+ (BOOL)_requiresPartialNetwork:(id)network
{
  networkCopy = network;
  if (objc_msgSend_enableSkinTone(networkCopy, v4, v5) & 1) != 0 || (objc_msgSend_enableBodyKeypoints(networkCopy, v6, v7))
  {
    v10 = 1;
  }

  else
  {
    v10 = objc_msgSend_enableDepth(networkCopy, v8, v9);
  }

  return v10;
}

- (BOOL)_prepareWithError:(id *)error
{
  v65[1] = *MEMORY[0x277D85DE8];
  if (!self->_readyForInference)
  {
    v6 = objc_msgSend_networkDescriptorForConfig_(ANSTISPAlgorithmV3, a2, self->_config);
    if (objc_msgSend_loadNetworkWithError_(self->_network, v7, error) && objc_msgSend_allocateAndBindNetworkIOExceptInputsNamed_outputsNamed_error_(self->_network, v8, 0, 0, error))
    {
      network = self->_network;
      v12 = objc_msgSend_outputPriorMaskMapDescriptor(v6, v9, v10);
      v15 = objc_msgSend_name(v12, v13, v14);
      v60 = v6;
      v18 = objc_msgSend_inputMemoryDescriptor(v6, v16, v17);
      v21 = objc_msgSend_name(v18, v19, v20);
      if (!objc_msgSend_registerNetworkOutputNamed_asDataSourceForNetworkInputNamed_error_(network, v22, v15, v21, error))
      {

LABEL_27:
        goto LABEL_28;
      }

      v24 = objc_msgSend_commitNetworkIOBindingsWithError_(self->_network, v23, error);

      if (!v24)
      {
LABEL_28:
        v3 = 0;
        v6 = v60;
        goto LABEL_24;
      }

      v6 = v60;
      if (objc_msgSend__retainIOReferencesWithNetworkDescriptor_error_(self, v25, v60, error) && objc_msgSend__preparePostProcessorWithNetworkDescriptor_error_(self, v26, v60, error) && (!objc_msgSend__requiresPartialNetwork_(ANSTISPAlgorithmV3, v27, self->_config) || objc_msgSend_loadNetworkWithError_(self->_partialNetwork, v28, error) && objc_msgSend_bindNetworkIOToExistingNetwork_error_(self->_partialNetwork, v29, self->_network, error) && objc_msgSend_commitNetworkIOBindingsWithError_(self->_partialNetwork, v30, error)))
      {
        if (VTPixelTransferSessionCreate(0, &self->_pixelTransferSession) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A78]) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28A8], *MEMORY[0x277CBED28]))
        {
          v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"Failed to prepare VTPixelTransferSession");
          v34 = _ANSTLoggingGetOSLogForCategoryANSTKit();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_22E65C6AC();
          }

          if (error)
          {
            v36 = MEMORY[0x277CCA9B8];
            v64 = *MEMORY[0x277CCA068];
            v65[0] = v33;
            v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v65, &v64, 1);
            v6 = v60;
            *error = objc_msgSend_errorWithDomain_code_userInfo_(v36, v38, @"ANSTErrorDomain", 3, v37);
          }

          pixelTransferSession = self->_pixelTransferSession;
          if (pixelTransferSession)
          {
            CFRelease(pixelTransferSession);
            self->_pixelTransferSession = 0;
          }

          goto LABEL_23;
        }

        if (!objc_msgSend_enableFaceAttributes(self->_config, v31, v32))
        {
LABEL_32:
          v3 = 1;
          self->_readyForInference = 1;
          goto LABEL_24;
        }

        v42 = [ANSTFaceAttributeAlgorithmConfiguration alloc];
        v12 = objc_msgSend_initWithVersion_(v42, v43, 0x10000);
        v44 = [ANSTFaceAttributeAlgorithm alloc];
        v46 = objc_msgSend_initWithConfiguration_(v44, v45, v12);
        faceAttributeNetwork = self->_faceAttributeNetwork;
        self->_faceAttributeNetwork = v46;

        v48 = self->_faceAttributeNetwork;
        v61 = 0;
        v50 = objc_msgSend_prepareWithError_(v48, v49, &v61);
        v51 = v61;
        if (v50)
        {

          goto LABEL_32;
        }

        v53 = v51;
        v54 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v52, @"Failed to prepare face attribute network - %@", v51);
        v55 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          sub_22E65C6AC();
        }

        if (error)
        {
          v57 = MEMORY[0x277CCA9B8];
          v62 = *MEMORY[0x277CCA068];
          v63 = v54;
          v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v56, &v63, &v62, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v57, v59, @"ANSTErrorDomain", 3, v58);
        }

        goto LABEL_27;
      }
    }

LABEL_23:
    v3 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v3 = 1;
LABEL_25:
  v40 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_retainIOReferencesWithNetworkDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  network = self->_network;
  v10 = objc_msgSend_inputImageDescriptor(descriptorCopy, v8, v9);
  v13 = objc_msgSend_name(v10, v11, v12);
  v15 = objc_msgSend_pixelBufferForNetworkInputNamed_error_(network, v14, v13, error);
  inputImagePixelBuffer = self->_inputImagePixelBuffer;
  self->_inputImagePixelBuffer = v15;

  if (!self->_inputImagePixelBuffer)
  {
    goto LABEL_9;
  }

  if (!objc_msgSend_enableSegmentation(self->_config, v17, v18))
  {
    goto LABEL_8;
  }

  v21 = self->_network;
  v22 = objc_msgSend_outputPersonMapDescriptor(descriptorCopy, v19, v20);
  v25 = objc_msgSend_name(v22, v23, v24);
  v27 = objc_msgSend_pixelBufferForNetworkOutputNamed_error_(v21, v26, v25, error);
  outputPersonMaskPixelBuffer = self->_outputPersonMaskPixelBuffer;
  self->_outputPersonMaskPixelBuffer = v27;

  v29 = self->_network;
  v32 = objc_msgSend_outputSalientPersonMapDescriptor(descriptorCopy, v30, v31);
  v35 = objc_msgSend_name(v32, v33, v34);
  v37 = objc_msgSend_pixelBufferForNetworkOutputNamed_error_(v29, v36, v35, error);
  outputSalientPersonMaskPixelBuffer = self->_outputSalientPersonMaskPixelBuffer;
  self->_outputSalientPersonMaskPixelBuffer = v37;

  v39 = self->_network;
  v42 = objc_msgSend_outputSkinMapDescriptor(descriptorCopy, v40, v41);
  v45 = objc_msgSend_name(v42, v43, v44);
  v47 = objc_msgSend_pixelBufferForNetworkOutputNamed_error_(v39, v46, v45, error);
  outputSkinMaskPixelBuffer = self->_outputSkinMaskPixelBuffer;
  self->_outputSkinMaskPixelBuffer = v47;

  v49 = self->_network;
  v52 = objc_msgSend_outputHairMapDescriptor(descriptorCopy, v50, v51);
  v55 = objc_msgSend_name(v52, v53, v54);
  v57 = objc_msgSend_pixelBufferForNetworkOutputNamed_error_(v49, v56, v55, error);
  outputHairMaskPixelBuffer = self->_outputHairMaskPixelBuffer;
  self->_outputHairMaskPixelBuffer = v57;

  v59 = self->_network;
  v62 = objc_msgSend_outputSkyMapDescriptor(descriptorCopy, v60, v61);
  v65 = objc_msgSend_name(v62, v63, v64);
  v67 = objc_msgSend_pixelBufferForNetworkOutputNamed_error_(v59, v66, v65, error);
  outputSkyMaskPixelBuffer = self->_outputSkyMaskPixelBuffer;
  self->_outputSkyMaskPixelBuffer = v67;

  if (!self->_outputPersonMaskPixelBuffer)
  {
    goto LABEL_9;
  }

  if (self->_outputSalientPersonMaskPixelBuffer && self->_outputSkinMaskPixelBuffer && self->_outputHairMaskPixelBuffer && self->_outputSkyMaskPixelBuffer)
  {
LABEL_8:
    v69 = 1;
  }

  else
  {
LABEL_9:
    v69 = 0;
  }

  return v69;
}

- (BOOL)_preparePostProcessorWithNetworkDescriptor:(id)descriptor error:(id *)error
{
  if (self->_postprocessor)
  {
    return 1;
  }

  v7 = objc_msgSend_newPostprocessorWithError_(descriptor, a2, error);
  postprocessor = self->_postprocessor;
  self->_postprocessor = v7;

  v10 = self->_postprocessor;
  if (v10)
  {
    if (objc_msgSend_bindInputsToNetwork_error_(v10, v9, self->_network, error))
    {
      return 1;
    }

    v11 = self->_postprocessor;
  }

  else
  {
    v11 = 0;
  }

  self->_postprocessor = 0;

  return 0;
}

- (id)_resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error
{
  v99[1] = *MEMORY[0x277D85DE8];
  if (!self->_readyForInference)
  {
    if (!error)
    {
      goto LABEL_17;
    }

    v17 = MEMORY[0x277CCA9B8];
    v98 = *MEMORY[0x277CCA450];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v99, &v98, 1);
    v18 = LABEL_10:;
    objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"ANSTErrorDomain", 4, v18);
    *error = LABEL_16:;

    goto LABEL_17;
  }

  if (!buffer)
  {
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E65C8A4();
    }

    if (!error)
    {
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v96 = *MEMORY[0x277CCA450];
    v97 = @"Nil input buffer.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, &v97, &v96, 1);
    v18 = LABEL_15:;
    objc_msgSend_errorWithDomain_code_userInfo_(v16, v22, @"ANSTErrorDomain", 2, v18);
    goto LABEL_16;
  }

  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  if (Width < Height)
  {
    v14 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22E65C824();
    }

    if (!error)
    {
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v94 = *MEMORY[0x277CCA450];
    v95 = @"Input pixel buffer width < height. ANSTISPAlgorithmV3Dot5 only supports landscape input.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, &v95, &v94, 1);
    goto LABEL_15;
  }

  v26 = PixelFormatType;
  if (Width == objc_msgSend_networkInputBufferWidth(self, v12, v13) && Height == objc_msgSend_networkInputBufferHeight(self, v27, v28) && v26 == objc_msgSend_networkInputBufferPixelFormat(self, v27, v28))
  {
    v29 = objc_msgSend_pixelBuffer(self->_inputImagePixelBuffer, v27, v28);
    if (BytesPerRow == CVPixelBufferGetBytesPerRow(v29))
    {
      CVPixelBufferLockBaseAddress(buffer, 1uLL);
      v32 = objc_msgSend_pixelBuffer(self->_inputImagePixelBuffer, v30, v31);
      CVPixelBufferLockBaseAddress(v32, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      v36 = objc_msgSend_pixelBuffer(self->_inputImagePixelBuffer, v34, v35);
      v37 = CVPixelBufferGetBaseAddress(v36);
      memcpy(v37, BaseAddress, BytesPerRow * Height);
      v40 = objc_msgSend_pixelBuffer(self->_inputImagePixelBuffer, v38, v39);
      CVPixelBufferUnlockBaseAddress(v40, 0);
      CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
      goto LABEL_31;
    }
  }

  pixelTransferSession = self->_pixelTransferSession;
  v44 = objc_msgSend_pixelBuffer(self->_inputImagePixelBuffer, v27, v28);
  if (VTPixelTransferSessionTransferImage(pixelTransferSession, buffer, v44))
  {
    v45 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_22E65C728();
    }

    if (!error)
    {
      goto LABEL_17;
    }

    v17 = MEMORY[0x277CCA9B8];
    v92 = *MEMORY[0x277CCA450];
    v93 = @"Failed to transfer input pixel buffer.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, &v93, &v92, 1);
    goto LABEL_10;
  }

LABEL_31:
  if (self->_partialNetwork)
  {
    if (*(objc_msgSend_acResult(self->_postprocessor, v41, v42) + 33036))
    {
      if (*(objc_msgSend_acResult(self->_postprocessor, v47, v48) + 33036) != 1)
      {
        v81 = MEMORY[0x277CCACA8];
        v82 = objc_msgSend_acResult(self->_postprocessor, v49, v50);
        v84 = objc_msgSend_stringWithFormat_(v81, v83, @"Unexpected sCIspAcANSTNetworkPerformanceType %d", *(v82 + 33036));
        v85 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          sub_22E65C7A8();
        }

        if (error)
        {
          v87 = MEMORY[0x277CCA9B8];
          v90 = *MEMORY[0x277CCA068];
          v91 = v84;
          v88 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v86, &v91, &v90, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v87, v89, @"ANSTErrorDomain", 3, v88);
        }

        goto LABEL_17;
      }

      if (objc_msgSend_executeInferenceWithError_(self->_network, v49, error))
      {
        goto LABEL_39;
      }

LABEL_17:
      v23 = 0;
      goto LABEL_18;
    }

    if ((objc_msgSend_executeInferenceWithError_(self->_partialNetwork, v47, error) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (!objc_msgSend_executeInferenceWithError_(self->_network, v41, error))
  {
    goto LABEL_17;
  }

LABEL_39:
  objc_msgSend_setOriginalImageSize_(self->_postprocessor, v51, v52, Width, Height);
  if (!objc_msgSend_processWithError_(self->_postprocessor, v53, error))
  {
    goto LABEL_17;
  }

  if (objc_msgSend_enableFaceAttributes(self->_config, v54, v55))
  {
    faceAttributeNetwork = self->_faceAttributeNetwork;
    v59 = objc_msgSend_acResult(self->_postprocessor, v56, v57);
    objc_msgSend_updateFaceAttributesOfAcResult_inputImage_error_(faceAttributeNetwork, v60, v59, buffer, error);
  }

  v61 = [ANSTISPAlgorithmResult alloc];
  v64 = objc_msgSend_acResult(self->_postprocessor, v62, v63);
  v67 = objc_msgSend_pixelBuffer(self->_outputPersonMaskPixelBuffer, v65, v66);
  v70 = objc_msgSend_pixelBuffer(self->_outputSalientPersonMaskPixelBuffer, v68, v69);
  v73 = objc_msgSend_pixelBuffer(self->_outputSkinMaskPixelBuffer, v71, v72);
  v76 = objc_msgSend_pixelBuffer(self->_outputHairMaskPixelBuffer, v74, v75);
  v79 = objc_msgSend_pixelBuffer(self->_outputSkyMaskPixelBuffer, v77, v78);
  v23 = objc_msgSend_initWithAcResult_personMask_salientPersonMask_skinMask_hairMask_skyMask_saliencyMask_(v61, v80, v64, v67, v70, v73, v76, v79, 0);
LABEL_18:
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end