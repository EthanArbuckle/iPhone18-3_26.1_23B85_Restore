@interface ANSTVMTrackerEspresso
+ (ANSTVMTrackerEspresso)new;
- (ANSTVMTrackerEspresso)init;
- (ANSTVMTrackerEspresso)initWithConfiguration:(id)a3;
- (BOOL)_setInitialMaskWithValue:(float)a3;
- (BOOL)initNetwork;
- (BOOL)runInferenceModel:(__CVBuffer *)a3;
- (BOOL)runInitializerModel:(__CVBuffer *)a3;
- (BOOL)runUpdateModel:(__CVBuffer *)a3;
- (id)_expectedMaskNetworkFileName;
- (id)_expectedMemoryNetworkFileName;
- (id)_expectedUpdateNetworkFileName;
- (void)dealloc;
@end

@implementation ANSTVMTrackerEspresso

+ (ANSTVMTrackerEspresso)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTVMTrackerEspresso)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTVMTrackerEspresso)initWithConfiguration:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ANSTVMTrackerEspresso;
  v6 = [(ANSTVMTrackerEspresso *)&v12 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_configuration, a3), v7->_firstFrame = 1, !objc_msgSend_initNetwork(v7, v8, v9)))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (BOOL)initNetwork
{
  v127 = *MEMORY[0x277D85DE8];
  v3 = [ANSTBaseNetworkEspresso alloc];
  v6 = objc_msgSend_networkEngineType(self->_configuration, v4, v5);
  v9 = objc_msgSend_qualityOfService(self->_configuration, v7, v8);
  v12 = objc_msgSend__memoryNetworkName(self, v10, v11);
  v15 = objc_msgSend__expectedMemoryNetworkFileName(self, v13, v14);
  v17 = objc_msgSend_initWithNetworkEngine_qualityOfService_networkName_networkFileName_(v3, v16, v6, v9, v12, v15);
  memoryNetwork = self->_memoryNetwork;
  self->_memoryNetwork = v17;

  BlobDimensionByName_andDestination = objc_msgSend_prepare(self->_memoryNetwork, v19, v20);
  if (BlobDimensionByName_andDestination)
  {
    v22 = [ANSTBaseNetworkEspresso alloc];
    v25 = objc_msgSend_networkEngineType(self->_configuration, v23, v24);
    v28 = objc_msgSend_qualityOfService(self->_configuration, v26, v27);
    v31 = objc_msgSend__maskNetworkName(self, v29, v30);
    v34 = objc_msgSend__expectedMaskNetworkFileName(self, v32, v33);
    v36 = objc_msgSend_initWithNetworkEngine_qualityOfService_networkName_networkFileName_(v22, v35, v25, v28, v31, v34);
    maskNetwork = self->_maskNetwork;
    self->_maskNetwork = v36;

    BlobDimensionByName_andDestination = objc_msgSend_prepare(self->_maskNetwork, v38, v39);
    if (BlobDimensionByName_andDestination)
    {
      memset(v126, 0, sizeof(v126));
      v42 = self->_maskNetwork;
      v43 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputHiddenTensorName, v40, v41, 0, 0, 0, 0);
      self->_hiddenStateTensor = objc_msgSend_getTensorByName_(v42, v44, v43);
      v45 = self->_maskNetwork;
      v48 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkInputHiddenStateTensorName, v46, v47);
      BlobDimensionByName_andDestination = objc_msgSend_getBlobDimensionByName_andDestination_(v45, v49, v48, v126);
      if (BlobDimensionByName_andDestination)
      {
        bzero(self->_hiddenStateTensor->var0, 4 * self->_hiddenStateTensor->var13);
        v50 = self->_maskNetwork;
        v53 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputTensorName, v51, v52);
        self->_probTensor = objc_msgSend_getTensorByName_(v50, v54, v53);
        v55 = self->_maskNetwork;
        v58 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputTensorName, v56, v57);
        BlobDimensionByName_andDestination = objc_msgSend_getBlobDimensionByName_andDestination_(v55, v59, v58, v126);
        if (BlobDimensionByName_andDestination)
        {
          bzero(self->_probTensor->var0, 4 * self->_probTensor->var13);
          v60 = self->_maskNetwork;
          v63 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputMattingTensorName, v61, v62);
          self->_outputMaskBuffer = objc_msgSend_getTensorByName_(v60, v64, v63);
          v65 = self->_maskNetwork;
          v68 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputMattingTensorName, v66, v67);
          BlobDimensionByName_andDestination = objc_msgSend_getBlobDimensionByName_andDestination_(v65, v69, v68, v126);
          if (BlobDimensionByName_andDestination)
          {
            bzero(self->_outputMaskBuffer->var0, 4 * self->_outputMaskBuffer->var13);
            v70 = [ANSTBaseNetworkEspresso alloc];
            v73 = objc_msgSend_networkEngineType(self->_configuration, v71, v72);
            v76 = objc_msgSend_qualityOfService(self->_configuration, v74, v75);
            v79 = objc_msgSend__updateNetworkName(self, v77, v78);
            v82 = objc_msgSend__expectedUpdateNetworkFileName(self, v80, v81);
            v84 = objc_msgSend_initWithNetworkEngine_qualityOfService_networkName_networkFileName_(v70, v83, v73, v76, v79, v82);
            updateNetwork = self->_updateNetwork;
            self->_updateNetwork = v84;

            BlobDimensionByName_andDestination = objc_msgSend_prepare(self->_updateNetwork, v86, v87);
            if (BlobDimensionByName_andDestination)
            {
              v90 = self->_updateNetwork;
              v91 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputKeyTensorName, v88, v89);
              self->_keyTensor = objc_msgSend_getTensorByName_(v90, v92, v91);
              v93 = self->_updateNetwork;
              v96 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputKeyTensorName, v94, v95);
              BlobDimensionByName_andDestination = objc_msgSend_getBlobDimensionByName_andDestination_(v93, v97, v96, v126);
              if (BlobDimensionByName_andDestination)
              {
                bzero(self->_keyTensor->var0, 4 * self->_keyTensor->var13);
                v98 = 4 * self->_keyTensor->var11 * (self->_keyTensor->var6 * 0.5);
                self->_keyTensorSwapSpaceSize = v98;
                self->_keyTensorSwapSpace = malloc_type_malloc(v98, 0xDD8C2685uLL);
                v99 = self->_updateNetwork;
                v102 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputValueTensorName, v100, v101);
                self->_valueTensor = objc_msgSend_getTensorByName_(v99, v103, v102);
                v104 = self->_updateNetwork;
                v107 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputValueTensorName, v105, v106);
                BlobDimensionByName_andDestination = objc_msgSend_getBlobDimensionByName_andDestination_(v104, v108, v107, v126);
                if (BlobDimensionByName_andDestination)
                {
                  bzero(self->_valueTensor->var0, 4 * self->_valueTensor->var13);
                  v109 = 4 * self->_valueTensor->var9 * (self->_valueTensor->var4 * 0.5);
                  self->_valueTensorSwapSpaceSize = v109;
                  self->_valueTensorSwapSpace = malloc_type_malloc(v109, 0x8F13C859uLL);
                  v110 = self->_memoryNetwork;
                  v113 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkInputMaskTensorName, v111, v112);
                  objc_msgSend_getResolutionByBlobName_(v110, v114, v113);
                  PixelBufferWithPixelFormat_width_height_handle = objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v117, 1278226534, v115, v116, &self->_initialMask);
                  if (PixelBufferWithPixelFormat_width_height_handle)
                  {
                    v122 = PixelBufferWithPixelFormat_width_height_handle;
                    v123 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
                    {
                      sub_22E659914(v122, v123);
                    }

                    LOBYTE(BlobDimensionByName_andDestination) = 0;
                  }

                  else
                  {
                    LODWORD(v121) = -1.0;
                    LOBYTE(BlobDimensionByName_andDestination) = objc_msgSend__setInitialMaskWithValue_(self, v119, v120, v121);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v124 = *MEMORY[0x277D85DE8];
  return BlobDimensionByName_andDestination;
}

- (id)_expectedMemoryNetworkFileName
{
  p_configuration = &self->_configuration;
  if (objc_msgSend_version(self->_configuration, a2, v2) == 0x20000)
  {
    v6 = objc_msgSend_networkResolution(*p_configuration, v4, v5);
    if (v6 < 4)
    {
      return off_27884FC40[v6];
    }
  }

  v8 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    sub_22E65998C(p_configuration, v8, v9);
  }

  return 0;
}

- (id)_expectedUpdateNetworkFileName
{
  p_configuration = &self->_configuration;
  if (objc_msgSend_version(self->_configuration, a2, v2) == 0x20000)
  {
    v6 = objc_msgSend_networkResolution(*p_configuration, v4, v5);
    if (v6 < 4)
    {
      return off_27884FC60[v6];
    }
  }

  v8 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    sub_22E659A2C(p_configuration, v8, v9);
  }

  return 0;
}

- (id)_expectedMaskNetworkFileName
{
  p_configuration = &self->_configuration;
  if (objc_msgSend_version(self->_configuration, a2, v2) == 0x20000)
  {
    v6 = objc_msgSend_networkResolution(*p_configuration, v4, v5);
    if (v6 < 4)
    {
      return off_27884FC80[v6];
    }
  }

  v8 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    sub_22E659ACC(p_configuration, v8, v9);
  }

  return 0;
}

- (BOOL)runInitializerModel:(__CVBuffer *)a3
{
  v4 = objc_msgSend_setInput_fromCVPixelBuffer_(self->_memoryNetwork, a2, kANSTVMTrackerNetworkInputTensorName, a3);
  if (v4)
  {
    v4 = objc_msgSend_setInput_fromCVPixelBuffer_(self->_memoryNetwork, v5, kANSTVMTrackerNetworkInputMaskTensorName, self->_initialMask);
    if (v4)
    {
      v4 = objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(self->_memoryNetwork, v6, self->_hiddenStateTensor, kANSTVMTrackerNetworkInputHiddenStateTensorName);
      if (v4)
      {
        v4 = objc_msgSend_runNetwork(self->_memoryNetwork, v7, v8);
        if (v4)
        {
          memoryNetwork = self->_memoryNetwork;
          v12 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputKeyTensorName, v9, v10);
          TensorByName = objc_msgSend_getTensorByName_(memoryNetwork, v13, v12);
          memcpy(self->_keyTensor->var0, *TensorByName, 4 * self->_keyTensor->var13);
          v15 = self->_memoryNetwork;
          v18 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputValueTensorName, v16, v17);
          v20 = objc_msgSend_getTensorByName_(v15, v19, v18);
          memcpy(self->_valueTensor->var0, *v20, 4 * self->_valueTensor->var13);
          v21 = self->_memoryNetwork;
          v24 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputHiddenTensorName, v22, v23);
          v26 = objc_msgSend_getTensorByName_(v21, v25, v24);
          memcpy(self->_hiddenStateTensor->var0, *v26, 4 * self->_hiddenStateTensor->var13);
          self->_firstFrame = 0;
          LOBYTE(v4) = 1;
        }
      }
    }
  }

  return v4;
}

- (BOOL)runInferenceModel:(__CVBuffer *)a3
{
  if (!self->_firstFrame)
  {
    v6 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    v7 = os_signpost_id_make_with_pointer(v6, self);

    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22E5D5000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ANSTVMTrackerEspresso_runInferenceModel", &unk_22E663F87, buf, 2u);
    }

    if (objc_msgSend_setInput_fromCVPixelBuffer_(self->_maskNetwork, v8, kANSTVMTrackerNetworkInputTensorName, a3) && objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(self->_maskNetwork, v9, self->_outputMaskBuffer, kANSTVMTrackerNetworkInputMattingTensorName) && objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(self->_maskNetwork, v10, self->_probTensor, kANSTVMTrackerNetworkInputProbTensorName) && objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(self->_maskNetwork, v11, self->_keyTensor, kANSTVMTrackerNetworkInputKeyTensorName) && objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(self->_maskNetwork, v12, self->_valueTensor, kANSTVMTrackerNetworkInputValueTensorName) && (objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(self->_maskNetwork, v13, self->_hiddenStateTensor, kANSTVMTrackerNetworkInputHiddenStateTensorName) & 1) != 0)
    {
      if (objc_msgSend_runNetwork(self->_maskNetwork, v14, v15))
      {
        maskNetwork = self->_maskNetwork;
        v19 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputMattingTensorName, v16, v17);
        self->_outputMaskBuffer = objc_msgSend_getTensorByName_(maskNetwork, v20, v19);
        v21 = self->_maskNetwork;
        v24 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputTensorName, v22, v23);
        self->_probTensor = objc_msgSend_getTensorByName_(v21, v25, v24);
        v26 = self->_maskNetwork;
        v29 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputHiddenTensorName, v27, v28);
        self->_hiddenStateTensor = objc_msgSend_getTensorByName_(v26, v30, v29);
        self->_firstFrame = 0;
        v31 = os_signpost_id_make_with_pointer(v6, self);

        if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
        {
          *v35 = 0;
          _os_signpost_emit_with_name_impl(&dword_22E5D5000, v6, OS_SIGNPOST_INTERVAL_END, v31, "ANSTVMTrackerEspresso_runInferenceModel", &unk_22E663F87, v35, 2u);
        }

        v3 = 1;
        goto LABEL_22;
      }

      v32 = os_signpost_id_make_with_pointer(v6, self);

      if (v32 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v6))
      {
LABEL_21:
        v3 = 0;
LABEL_22:

        return v3;
      }

      v36 = 0;
      v33 = &v36;
    }

    else
    {
      v32 = os_signpost_id_make_with_pointer(v6, self);

      if (v32 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v6))
      {
        goto LABEL_21;
      }

      *v37 = 0;
      v33 = v37;
    }

    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v6, OS_SIGNPOST_INTERVAL_END, v32, "ANSTVMTrackerEspresso_runInferenceModel", &unk_22E663F87, v33, 2u);
    goto LABEL_21;
  }

  return 0;
}

- (BOOL)runUpdateModel:(__CVBuffer *)a3
{
  if (!self->_firstFrame)
  {
    v6 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    v7 = os_signpost_id_make_with_pointer(v6, self);

    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22E5D5000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ANSTVMTrackerEspresso_runUpdateModel", &unk_22E663F87, buf, 2u);
    }

    if (objc_msgSend_setInput_fromCVPixelBuffer_(self->_updateNetwork, v8, kANSTVMTrackerNetworkInputTensorName, a3) && objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(self->_updateNetwork, v9, self->_outputMaskBuffer, kANSTVMTrackerNetworkInputMattingTensorName) && objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(self->_updateNetwork, v10, self->_probTensor, kANSTVMTrackerNetworkInputProbTensorName) && objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(self->_updateNetwork, v11, self->_keyTensor, kANSTVMTrackerNetworkInputKeyTensorName) && objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(self->_updateNetwork, v12, self->_valueTensor, kANSTVMTrackerNetworkInputValueTensorName) && (objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(self->_updateNetwork, v13, self->_hiddenStateTensor, kANSTVMTrackerNetworkInputHiddenStateTensorName) & 1) != 0)
    {
      if (objc_msgSend_runNetwork(self->_updateNetwork, v14, v15))
      {
        updateNetwork = self->_updateNetwork;
        v19 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputHiddenTensorName, v16, v17);
        TensorByName = objc_msgSend_getTensorByName_(updateNetwork, v20, v19);
        memcpy(self->_hiddenStateTensor->var0, *TensorByName, 4 * self->_hiddenStateTensor->var13);
        v22 = self->_updateNetwork;
        v25 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputMattingTensorName, v23, v24);
        v27 = objc_msgSend_getTensorByName_(v22, v26, v25);
        memcpy(self->_outputMaskBuffer->var0, *v27, 4 * self->_outputMaskBuffer->var13);
        v28 = self->_updateNetwork;
        v31 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputTensorName, v29, v30);
        v33 = objc_msgSend_getTensorByName_(v28, v32, v31);
        memcpy(self->_probTensor->var0, *v33, 4 * self->_probTensor->var13);
        v34 = self->_updateNetwork;
        v37 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputKeyTensorName, v35, v36);
        self->_keyTensor = objc_msgSend_getTensorByName_(v34, v38, v37);
        v39 = self->_updateNetwork;
        v42 = objc_msgSend_UTF8String(kANSTVMTrackerNetworkOutputValueTensorName, v40, v41);
        valueTensor = objc_msgSend_getTensorByName_(v39, v43, v42);
        self->_valueTensor = valueTensor;
        keyTensor = self->_keyTensor;
        if (keyTensor->var8)
        {
          v46 = 0;
          do
          {
            if (keyTensor->var7)
            {
              v47 = 0;
              do
              {
                v48 = keyTensor->var0 + 4 * keyTensor->var13 * v46 + 4 * keyTensor->var12 * v47;
                keyTensorSwapSpaceSize = self->_keyTensorSwapSpaceSize;
                memcpy(self->_keyTensorSwapSpace, &v48[keyTensorSwapSpaceSize], keyTensorSwapSpaceSize);
                memcpy(&v48[keyTensorSwapSpaceSize], v48, self->_keyTensorSwapSpaceSize);
                memcpy(v48, self->_keyTensorSwapSpace, self->_keyTensorSwapSpaceSize);
                ++v47;
                keyTensor = self->_keyTensor;
              }

              while (v47 < keyTensor->var7);
            }

            ++v46;
          }

          while (v46 < keyTensor->var8);
          valueTensor = self->_valueTensor;
        }

        if (valueTensor->var8)
        {
          v50 = 0;
          do
          {
            if (valueTensor->var7)
            {
              v51 = 0;
              do
              {
                if (valueTensor->var6)
                {
                  v52 = 0;
                  do
                  {
                    if (valueTensor->var5)
                    {
                      v53 = 0;
                      do
                      {
                        v54 = valueTensor->var0 + 4 * valueTensor->var13 * v50 + 4 * valueTensor->var12 * v51 + 4 * valueTensor->var11 * v52 + 4 * valueTensor->var10 * v53;
                        valueTensorSwapSpaceSize = self->_valueTensorSwapSpaceSize;
                        memcpy(self->_valueTensorSwapSpace, &v54[valueTensorSwapSpaceSize], valueTensorSwapSpaceSize);
                        memcpy(&v54[valueTensorSwapSpaceSize], v54, self->_valueTensorSwapSpaceSize);
                        memcpy(v54, self->_valueTensorSwapSpace, self->_valueTensorSwapSpaceSize);
                        ++v53;
                        valueTensor = self->_valueTensor;
                      }

                      while (v53 < valueTensor->var5);
                    }

                    ++v52;
                  }

                  while (v52 < valueTensor->var6);
                }

                ++v51;
              }

              while (v51 < valueTensor->var7);
            }

            ++v50;
          }

          while (v50 < valueTensor->var8);
        }

        self->_firstFrame = 0;
        v56 = os_signpost_id_make_with_pointer(v6, self);

        if (v56 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v6))
        {
          *v61 = 0;
          _os_signpost_emit_with_name_impl(&dword_22E5D5000, v6, OS_SIGNPOST_INTERVAL_END, v56, "ANSTVMTrackerEspresso_runUpdateModel", &unk_22E663F87, v61, 2u);
        }

        v3 = 1;
        goto LABEL_41;
      }

      v57 = os_signpost_id_make_with_pointer(v6, self);

      if (v57 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v6))
      {
LABEL_40:
        v3 = 0;
LABEL_41:

        return v3;
      }

      v62 = 0;
      v58 = "ANSTVMTrackerEspresso_runUpdateModel";
      v59 = &v62;
    }

    else
    {
      v57 = os_signpost_id_make_with_pointer(v6, self);

      if (v57 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v6))
      {
        goto LABEL_40;
      }

      *v63 = 0;
      v58 = "ANSTVMTrackerEspresso_runInferenceModel";
      v59 = v63;
    }

    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v6, OS_SIGNPOST_INTERVAL_END, v57, v58, &unk_22E663F87, v59, 2u);
    goto LABEL_40;
  }

  return 0;
}

- (BOOL)_setInitialMaskWithValue:(float)a3
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(self->_initialMask);
  if (PixelFormatType == 1278226534)
  {
    CVPixelBufferLockBaseAddress(self->_initialMask, 0);
    Width = CVPixelBufferGetWidth(self->_initialMask);
    Height = CVPixelBufferGetHeight(self->_initialMask);
    BytesPerRow = CVPixelBufferGetBytesPerRow(self->_initialMask);
    BaseAddress = CVPixelBufferGetBaseAddress(self->_initialMask);
    if (Height)
    {
      v10 = 0;
      v11 = vdupq_n_s64(Width - 1);
      v12 = (BaseAddress + 8);
      do
      {
        if (Width)
        {
          v13 = 0;
          v14 = v12;
          do
          {
            v15 = vdupq_n_s64(v13);
            v16 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v15, xmmword_22E661C90)));
            if (vuzp1_s16(v16, *v11.i8).u8[0])
            {
              *(v14 - 2) = a3;
            }

            if (vuzp1_s16(v16, *&v11).i8[2])
            {
              *(v14 - 1) = a3;
            }

            if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v15, xmmword_22E661C80)))).i32[1])
            {
              *v14 = a3;
              v14[1] = a3;
            }

            v13 += 4;
            v14 += 4;
          }

          while (((Width + 3) & 0xFFFFFFFFFFFFFFFCLL) != v13);
        }

        ++v10;
        v12 = (v12 + BytesPerRow);
      }

      while (v10 != Height);
    }

    CVPixelBufferUnlockBaseAddress(self->_initialMask, 0);
  }

  return PixelFormatType == 1278226534;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_initialMask);
  self->_initialMask = 0;
  free(self->_keyTensorSwapSpace);
  self->_keyTensorSwapSpace = 0;
  free(self->_valueTensorSwapSpace);
  self->_valueTensorSwapSpace = 0;
  v3.receiver = self;
  v3.super_class = ANSTVMTrackerEspresso;
  [(ANSTVMTrackerEspresso *)&v3 dealloc];
}

@end