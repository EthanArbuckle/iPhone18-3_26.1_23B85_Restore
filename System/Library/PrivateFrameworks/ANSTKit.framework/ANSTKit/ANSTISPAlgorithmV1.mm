@interface ANSTISPAlgorithmV1
- (ANSTISPAlgorithmV1)initWithConfiguration:(id)configuration;
- (BOOL)_destroyPostProcessingWithError:(id *)error;
- (BOOL)_initializePostProcessingWithError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (__CVBuffer)_createCVPixelBuffer_Uint8_fromAcSaliencyHeatMap:(id *)map;
- (__CVBuffer)_createCVPixelBuffer_Uint8_fromEspressoBufferFloat32:(id *)float32;
- (id)_networkResultWithOriginalInputImage:(__CVBuffer *)image error:(id *)error;
- (id)resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error;
- (unint64_t)networkInputBufferHeight;
- (unint64_t)networkInputBufferWidth;
- (void)dealloc;
- (void)undoPrepareSideEffects;
@end

@implementation ANSTISPAlgorithmV1

- (ANSTISPAlgorithmV1)initWithConfiguration:(id)configuration
{
  v17 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = ANSTISPAlgorithmV1;
  v6 = [(ANSTISPAlgorithm *)&v14 initWithConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, configuration);
    v7->_readyForInference = 0;
    v8 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_msgSend_description(v7->_config, v9, v10);
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_22E5D5000, v8, OS_LOG_TYPE_DEFAULT, "ANSTISPAlgorithmV1 (ANST v2.4 model + v2.5 post-processing) initialized with config %{public}@.", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  if (self->_readyForInference)
  {
    objc_msgSend_undoPrepareSideEffects(self, a2, v2);
  }

  v4.receiver = self;
  v4.super_class = ANSTISPAlgorithmV1;
  [(ANSTISPAlgorithmV1 *)&v4 dealloc];
}

- (void)undoPrepareSideEffects
{
  objc_msgSend__destroyPostProcessingWithError_(self, a2, 0);
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    CFRelease(self->_pixelTransferSession);
    self->_pixelTransferSession = 0;
  }

  CVPixelBufferRelease(self->_resizedInputBuffer);
  self->_resizedInputBuffer = 0;
  CVPixelBufferPoolRelease(self->_outputSemanticBufferPool);
  self->_outputSemanticBufferPool = 0;
  CVPixelBufferPoolRelease(self->_outputSaliencyBufferPool);
  self->_outputSaliencyBufferPool = 0;
  network = self->_network;
  self->_network = 0;

  faceAttributeNetwork = self->_faceAttributeNetwork;
  self->_faceAttributeNetwork = 0;

  self->_readyForInference = 0;
}

- (BOOL)prepareWithError:(id *)error
{
  v131[1] = *MEMORY[0x277D85DE8];
  v5 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  v6 = os_signpost_id_make_with_pointer(v5, self);

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ANSTISPAlgorithmV1_prepareWithError", &unk_22E663F87, buf, 2u);
  }

  if (self->_readyForInference)
  {
    v8 = os_signpost_id_make_with_pointer(v5, self);

    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v8, "ANSTISPAlgorithmV1_prepareWithError", &unk_22E663F87, buf, 2u);
    }

    v9 = 1;
    goto LABEL_25;
  }

  if ((objc_msgSend__initializePostProcessingWithError_(self, v7, error) & 1) == 0)
  {
    objc_msgSend_undoPrepareSideEffects(self, v10, v11);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithmV1_prepareWithError";
LABEL_23:
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v26, v27, &unk_22E663F87, buf, 2u);
LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  v12 = 25;
  v13 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v10, 25);
  networkOutputNames = self->_networkOutputNames;
  self->_networkOutputNames = v13;

  netOutputNames = self->_detParams.netOutputNames;
  do
  {
    v17 = self->_networkOutputNames;
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, netOutputNames);
    objc_msgSend_addObject_(v17, v19, v18);

    ++netOutputNames;
    --v12;
  }

  while (v12);
  if (objc_msgSend_networkEngineType(self->_config, v15, v20))
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E659D3C();
    }

    if (error)
    {
      v23 = MEMORY[0x277CCA9B8];
      v130 = *MEMORY[0x277CCA450];
      v131[0] = @"ANSTKit has deprecated non-ANE execution support. Please stop configuring ANSTISPAlgorithm for executing on non-ANE platforms.";
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v131, &v130, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"ANSTErrorDomain", 3, v24);
    }

    objc_msgSend_undoPrepareSideEffects(self, v21, v22);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithm_prepareWithError";
    goto LABEL_23;
  }

  v30 = [ANSTBaseNetworkEspresso alloc];
  v33 = objc_msgSend_networkEngineType(self->_config, v31, v32);
  v36 = objc_msgSend_qualityOfService(self->_config, v34, v35);
  if (objc_msgSend_networkResolution(self->_config, v37, v38) == 1)
  {
    v40 = objc_msgSend_initWithNetworkEngine_qualityOfService_networkName_networkResolution_(v30, v39, v33, v36, @"anst", @"resolution1024x576");
  }

  else
  {
    v40 = objc_msgSend_initWithNetworkEngine_qualityOfService_networkName_networkResolution_(v30, v39, v33, v36, @"anst", @"resolution512x384");
  }

  network = self->_network;
  self->_network = v40;

  if ((objc_msgSend_prepare(self->_network, v42, v43) & 1) == 0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E659DBC();
    }

    if (error)
    {
      v74 = MEMORY[0x277CCA9B8];
      v128 = *MEMORY[0x277CCA450];
      v129 = @"Failed to prepare espresso network.";
      v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v72, &v129, &v128, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v74, v76, @"ANSTErrorDomain", 3, v75);
    }

    objc_msgSend_undoPrepareSideEffects(self, v72, v73);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithmV1_prepareWithError";
    goto LABEL_23;
  }

  v46 = self->_network;
  v47 = objc_msgSend_UTF8String(kANSTNetworkInputName, v44, v45);
  objc_msgSend_getResolutionByBlobName_(v46, v48, v47);
  v50 = v49;
  v51 = self->_network;
  v54 = objc_msgSend_UTF8String(kANSTNetworkInputName, v52, v53);
  objc_msgSend_getResolutionByBlobName_(v51, v55, v54);
  v57 = v56;
  if (objc_msgSend_networkInputBufferWidth(self, v58, v59) != v50 || objc_msgSend_networkInputBufferHeight(self, v60, v61) != v57)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E659E3C();
    }

    if (error)
    {
      v79 = MEMORY[0x277CCA9B8];
      v126 = *MEMORY[0x277CCA450];
      v127 = @"Prepared espresso network returned unexpected input width or height.";
      v80 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v77, &v127, &v126, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v79, v81, @"ANSTErrorDomain", 3, v80);
    }

    objc_msgSend_undoPrepareSideEffects(self, v77, v78);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithmV1_prepareWithError";
    goto LABEL_23;
  }

  v64 = objc_msgSend_networkInputBufferPixelFormat(self, v62, v63);
  objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v65, v64, v50, v57, &self->_resizedInputBuffer);
  if (!self->_resizedInputBuffer)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A04C();
    }

    if (error)
    {
      v84 = MEMORY[0x277CCA9B8];
      v124 = *MEMORY[0x277CCA450];
      v125 = @"Failed to prepare resized input buffer.";
      v85 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v82, &v125, &v124, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v84, v86, @"ANSTErrorDomain", 3, v85);
    }

    objc_msgSend_undoPrepareSideEffects(self, v82, v83);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithmV1_prepareWithError";
    goto LABEL_23;
  }

  if (VTPixelTransferSessionCreate(0, &self->_pixelTransferSession) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A78]) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28A8], *MEMORY[0x277CBED28]))
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E659EC8();
    }

    if (error)
    {
      v69 = MEMORY[0x277CCA9B8];
      v122 = *MEMORY[0x277CCA450];
      v123 = @"Failed to prepare VTPixelTransferSession.";
      v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v67, &v123, &v122, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v69, v71, @"ANSTErrorDomain", 3, v70);
    }

    objc_msgSend_undoPrepareSideEffects(self, v67, v68);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithmV1_prepareWithError";
    goto LABEL_23;
  }

  objc_msgSend_createPixelBufferPoolWithCapacity_pixelFormat_width_height_handle_(ANSTUtility, v66, 5, 1278226488, v50 >> 1, v57 >> 1, &self->_outputSemanticBufferPool);
  objc_msgSend_createPixelBufferPoolWithCapacity_pixelFormat_width_height_handle_(ANSTUtility, v87, 1, 1278226488, 64, 48, &self->_outputSaliencyBufferPool);
  if (!self->_outputSemanticBufferPool || !self->_outputSaliencyBufferPool)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E659FCC();
    }

    if (error)
    {
      v105 = MEMORY[0x277CCA9B8];
      v120 = *MEMORY[0x277CCA450];
      v121 = @"Failed to prepare output pixel buffer pool.";
      v106 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v103, &v121, &v120, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v105, v107, @"ANSTErrorDomain", 3, v106);
    }

    objc_msgSend_undoPrepareSideEffects(self, v103, v104);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithmV1_prepareWithError";
    goto LABEL_23;
  }

  if (!objc_msgSend_enableFaceAttributes(self->_config, v88, v89))
  {
LABEL_69:
    v9 = 1;
    self->_readyForInference = 1;
    v102 = os_signpost_id_make_with_pointer(v5, self);

    if (v102 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v102, "ANSTISPAlgorithmV1_prepareWithError", &unk_22E663F87, buf, 2u);
    }

    goto LABEL_25;
  }

  v90 = [ANSTFaceAttributeAlgorithmConfiguration alloc];
  v92 = objc_msgSend_initWithVersion_(v90, v91, 0x10000);
  v93 = [ANSTFaceAttributeAlgorithm alloc];
  v94 = v92;
  v96 = objc_msgSend_initWithConfiguration_(v93, v95, v92);
  faceAttributeNetwork = self->_faceAttributeNetwork;
  self->_faceAttributeNetwork = v96;

  v98 = self->_faceAttributeNetwork;
  v116 = 0;
  LOBYTE(v92) = objc_msgSend_prepareWithError_(v98, v99, &v116);
  v100 = v116;
  if (v92)
  {

    goto LABEL_69;
  }

  v108 = v100;
  v109 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v101, @"Failed to prepare face attribute network - %@", v100);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22E659F48();
  }

  if (error)
  {
    v112 = MEMORY[0x277CCA9B8];
    v118 = *MEMORY[0x277CCA450];
    v119 = v109;
    v113 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v110, &v119, &v118, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v112, v114, @"ANSTErrorDomain", 3, v113);
  }

  objc_msgSend_undoPrepareSideEffects(self, v110, v111);
  v115 = os_signpost_id_make_with_pointer(v5, self);

  if (v115 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v115, "ANSTISPAlgorithmV1_prepareWithError", &unk_22E663F87, buf, 2u);
  }

  v9 = 0;
  v5 = v94;
LABEL_25:

  v28 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_initializePostProcessingWithError:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_runningFrameRate(self->_config, a2, error);
  HIDWORD(v19) = sub_22E6054B8(v5);
  v6 = AcANSTCreate(&self->_det, &v22);
  if (v6)
  {
    goto LABEL_8;
  }

  v6 = AcANSTStart(self->_det, &self->_detState);
  if (v6 || (v6 = AcANSTGetParams(self->_det, self->_detState.data, &v18, &self->_detParams), v6) || (v6 = AcANSTUseLowThresholds(self->_det), v6) || (v6 = AcANSTSetRunSaliency(self->_det, 1), v6) || (v6 = AcANSTSetRunSaliencyObjectDetection(self->_det, 1), v6) || (det = self->_det, v9 = 1, v6 = AcANSTSetRunViSeg(det), v6))
  {
LABEL_8:
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"Failed to setup ANST network config (AcReturn code %d)", v6);
    v11 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A0CC();
    }

    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v24[0] = v10;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v24, &v23, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"ANSTErrorDomain", 3, v14);
    }

    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_destroyPostProcessingWithError:(id *)error
{
  det = self->_det;
  if (det)
  {
    if (AcANSTStop(det))
    {
      v5 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_22E65A1D8();
      }
    }

    if (AcANSTDestroy(self->_det))
    {
      v6 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_22E65A254();
      }
    }

    self->_det = 0;
  }

  return 1;
}

- (BOOL)resetWithError:(id *)error
{
  if (self->_readyForInference)
  {
    network = self->_network;
    v6 = objc_msgSend_objectAtIndexedSubscript_(self->_networkOutputNames, a2, 17);
    v7 = v6;
    v10 = objc_msgSend_UTF8String(v7, v8, v9);
    TensorByName = objc_msgSend_getTensorByName_(network, v11, v10);

    bzero(*TensorByName, 4 * *(TensorByName + 152));
    v13 = self->_network;
    v16 = objc_msgSend_UTF8String(kANSTNetworkOutputExtraSalientMaskName, v14, v15);
    v18 = objc_msgSend_getTensorByName_(v13, v17, v16);
    bzero(*v18, 4 * *(v18 + 152));
    v20 = objc_msgSend__destroyPostProcessingWithError_(self, v19, error);
    if (v20)
    {

      LOBYTE(v20) = objc_msgSend__initializePostProcessingWithError_(self, v21, error);
    }
  }

  else
  {
    LOBYTE(v20) = 1;
  }

  return v20;
}

- (id)resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error
{
  v89[1] = *MEMORY[0x277D85DE8];
  v9 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v79 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ANSTISPAlgorithmV1_resultForPixelBuffer", &unk_22E663F87, v79, 2u);
  }

  if (!self->_readyForInference)
  {
    if (error)
    {
      v22 = MEMORY[0x277CCA9B8];
      v88 = *MEMORY[0x277CCA450];
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v89, &v88, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v22, v24, @"ANSTErrorDomain", 4, v23);
    }

    v21 = os_signpost_id_make_with_pointer(v9, self);

    if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_52;
    }

    *v79 = 0;
    goto LABEL_51;
  }

  if (!buffer)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A3D0();
    }

    if (error)
    {
      v26 = MEMORY[0x277CCA9B8];
      v86 = *MEMORY[0x277CCA450];
      v87 = @"Nil input buffer.";
      v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, &v87, &v86, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v26, v28, @"ANSTErrorDomain", 2, v27);
    }

    v21 = os_signpost_id_make_with_pointer(v9, self);

    if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_52;
    }

    *v79 = 0;
    goto LABEL_51;
  }

  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  if (Width < Height)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A350();
    }

    if (error)
    {
      v18 = MEMORY[0x277CCA9B8];
      v84 = *MEMORY[0x277CCA450];
      v85 = @"Input pixel buffer width < height. ANSTISPAlgorithmV1 only supports landscape input.";
      v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, &v85, &v84, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, @"ANSTErrorDomain", 2, v19);
    }

    v21 = os_signpost_id_make_with_pointer(v9, self);

    if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_52;
    }

    *v79 = 0;
LABEL_51:
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_END, v21, "ANSTISPAlgorithmV1_resultForPixelBuffer", &unk_22E663F87, v79, 2u);
LABEL_52:
    v72 = 0;
    goto LABEL_53;
  }

  v29 = PixelFormatType;
  if (Width != objc_msgSend_networkInputBufferWidth(self, v15, v16) || Height != objc_msgSend_networkInputBufferHeight(self, v30, v31) || (resizedInputBuffer = buffer, v29 != objc_msgSend_networkInputBufferPixelFormat(self, v32, v33)))
  {
    if (VTPixelTransferSessionTransferImage(self->_pixelTransferSession, buffer, self->_resizedInputBuffer))
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22E65A2D0();
      }

      if (error)
      {
        v38 = MEMORY[0x277CCA9B8];
        v82 = *MEMORY[0x277CCA450];
        v83 = @"Failed to transfer input pixel buffer.";
        v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, &v83, &v82, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v38, v40, @"ANSTErrorDomain", 4, v39);
      }

      v21 = os_signpost_id_make_with_pointer(v9, self);

      if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
      {
        goto LABEL_52;
      }

      *v79 = 0;
      goto LABEL_51;
    }

    resizedInputBuffer = self->_resizedInputBuffer;
  }

  self->_detControl.originalImageWidth = Width;
  self->_detControl.originalImageHeight = Height;
  network = self->_network;
  v42 = objc_msgSend_UTF8String(kANSTNetworkInputName, v34, v35);
  objc_msgSend_getResolutionByBlobName_(network, v43, v42);
  self->_detControl.networkInputWidth = v44;
  v45 = self->_network;
  v48 = objc_msgSend_UTF8String(kANSTNetworkInputName, v46, v47);
  objc_msgSend_getResolutionByBlobName_(v45, v49, v48);
  self->_detControl.networkInputHeight = v50;
  self->_detControl.imageOrientation = AcImageOrientationFromANSTImageOrientation(orientation);
  if (!objc_msgSend_setInput_fromCVPixelBuffer_(self->_network, v51, kANSTNetworkInputName, resizedInputBuffer))
  {
    goto LABEL_46;
  }

  v53 = self->_network;
  v54 = objc_msgSend_objectAtIndexedSubscript_(self->_networkOutputNames, v52, 17);
  v55 = v54;
  v58 = objc_msgSend_UTF8String(v55, v56, v57);
  TensorByName = objc_msgSend_getTensorByName_(v53, v59, v58);
  if (!objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(v53, v61, TensorByName, kANSTNetworkInputLastMaskName) || (v64 = self->_network, v65 = objc_msgSend_UTF8String(kANSTNetworkOutputExtraSalientMaskName, v62, v63), v67 = objc_msgSend_getTensorByName_(v64, v66, v65), (objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(v64, v68, v67, kANSTNetworkInputSalientMaskName) & 1) == 0))
  {

    goto LABEL_46;
  }

  v71 = objc_msgSend_runNetwork(self->_network, v69, v70);

  if ((v71 & 1) == 0)
  {
LABEL_46:
    if (error)
    {
      v74 = MEMORY[0x277CCA9B8];
      v80 = *MEMORY[0x277CCA450];
      v81 = @"Failed to execute espresso inference.";
      v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, &v81, &v80, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v74, v76, @"ANSTErrorDomain", 4, v75);
    }

    v21 = os_signpost_id_make_with_pointer(v9, self);

    if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_52;
    }

    *v79 = 0;
    goto LABEL_51;
  }

  v72 = objc_msgSend__networkResultWithOriginalInputImage_error_(self, v52, buffer, error);
  v73 = os_signpost_id_make_with_pointer(v9, self);

  if (v73 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v79 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_END, v73, "ANSTISPAlgorithmV1_resultForPixelBuffer", &unk_22E663F87, v79, 2u);
  }

LABEL_53:

  v77 = *MEMORY[0x277D85DE8];

  return v72;
}

- (id)_networkResultWithOriginalInputImage:(__CVBuffer *)image error:(id *)error
{
  v4 = MEMORY[0x28223BE20](self, a2, image, error);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v119 = *MEMORY[0x277D85DE8];
  v10 = (v4 + 212328);
  *(v4 + 212364) = 0;
  *(v4 + 212368) = 0;
  *(v4 + 212372) = vcvt_f32_u32(*(v4 + 212328));
  v12 = objc_msgSend_runningFrameRate(*(v4 + 32), v11, v7);
  v10[3].i32[1] = sub_22E6054B8(v12);
  bzero(v118, 0x8110uLL);
  if (!objc_msgSend_enableObjectTracking(*(v9 + 32), v13, v14))
  {
    goto LABEL_30;
  }

  v112 = v6;
  v17 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  v18 = os_signpost_id_make_with_pointer(v17, v9);

  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "ANSTISPAlgorithmV1_RTCVPostProcess", &unk_22E663F87, buf, 2u);
  }

  v20 = 0;
  v21 = &v117;
  do
  {
    v22 = *(v9 + 40);
    v23 = objc_msgSend_objectAtIndexedSubscript_(*(v9 + 48), v19, v20);
    v24 = v23;
    v27 = objc_msgSend_UTF8String(v24, v25, v26);
    TensorByName = objc_msgSend_getTensorByName_(v22, v28, v27);

    v38 = *(TensorByName + 96) * *(TensorByName + 88);
    v39 = *(TensorByName + 80);
    *(v21 - 3) = *TensorByName;
    *(v21 - 1) = v38;
    *v21 = v39;
    v21[1] = 4 * v39;
    v21[2] = 6;
    ++v20;
    v21 += 6;
  }

  while (v20 != 25);
  v40 = AcANSTPostProcessNetOutputs(*(v9 + 56), v10, v9 + 64, buf, 25, (v9 + 3784), v118, v30, v31, v32, v33, v34, v35, v36, v37);
  v41 = os_signpost_id_make_with_pointer(v17, v9);

  if (v41 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v17))
  {
    *v113 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v17, OS_SIGNPOST_INTERVAL_END, v41, "ANSTISPAlgorithmV1_RTCVPostProcess", &unk_22E663F87, v113, 2u);
  }

  v6 = v112;
  if (v40)
  {
    v42 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"Failed to create AcResult (AcReturn %d)", v40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A450();
    }

    if (v112)
    {
      v44 = MEMORY[0x277CCA9B8];
      v114 = *MEMORY[0x277CCA450];
      v115 = v42;
      v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, &v115, &v114, 1);
      *v112 = objc_msgSend_errorWithDomain_code_userInfo_(v44, v46, @"ANSTErrorDomain", 18, v45);
    }

    v47 = 0;
  }

  else
  {
LABEL_30:
    if (objc_msgSend_enableFaceAttributes(*(v9 + 32), v15, v16))
    {
      objc_msgSend_updateFaceAttributesOfAcResult_inputImage_error_(*(v9 + 212432), v48, v118, v8, v6);
    }

    if (objc_msgSend_enableSegmentation(*(v9 + 32), v48, v49))
    {
      v51 = *(v9 + 40);
      v52 = objc_msgSend_objectAtIndexedSubscript_(*(v9 + 48), v50, 18);
      v53 = v52;
      v56 = objc_msgSend_UTF8String(v53, v54, v55);
      v58 = objc_msgSend_getTensorByName_(v51, v57, v56);

      CVPixelBuffer_Uint8_fromEspressoBufferFloat32 = objc_msgSend__createCVPixelBuffer_Uint8_fromEspressoBufferFloat32_(v9, v59, v58);
      v61 = *(v9 + 40);
      v63 = objc_msgSend_objectAtIndexedSubscript_(*(v9 + 48), v62, 19);
      v64 = v63;
      v67 = objc_msgSend_UTF8String(v64, v65, v66);
      v69 = objc_msgSend_getTensorByName_(v61, v68, v67);

      v71 = objc_msgSend__createCVPixelBuffer_Uint8_fromEspressoBufferFloat32_(v9, v70, v69);
      v72 = *(v9 + 40);
      v74 = objc_msgSend_objectAtIndexedSubscript_(*(v9 + 48), v73, 20);
      v75 = v74;
      v78 = objc_msgSend_UTF8String(v75, v76, v77);
      v80 = objc_msgSend_getTensorByName_(v72, v79, v78);

      v82 = objc_msgSend__createCVPixelBuffer_Uint8_fromEspressoBufferFloat32_(v9, v81, v80);
      v83 = *(v9 + 40);
      v85 = objc_msgSend_objectAtIndexedSubscript_(*(v9 + 48), v84, 21);
      v86 = v85;
      v89 = objc_msgSend_UTF8String(v86, v87, v88);
      v91 = objc_msgSend_getTensorByName_(v83, v90, v89);

      v93 = objc_msgSend__createCVPixelBuffer_Uint8_fromEspressoBufferFloat32_(v9, v92, v91);
      v94 = *(v9 + 40);
      v96 = objc_msgSend_objectAtIndexedSubscript_(*(v9 + 48), v95, 22);
      v97 = v96;
      v100 = objc_msgSend_UTF8String(v97, v98, v99);
      v102 = objc_msgSend_getTensorByName_(v94, v101, v100);

      v104 = objc_msgSend__createCVPixelBuffer_Uint8_fromEspressoBufferFloat32_(v9, v103, v102);
    }

    else
    {
      CVPixelBuffer_Uint8_fromEspressoBufferFloat32 = 0;
      v71 = 0;
      v82 = 0;
      v93 = 0;
      v104 = 0;
    }

    v105 = [ANSTISPAlgorithmResult alloc];
    if (objc_msgSend_enableObjectTracking(*(v9 + 32), v106, v107))
    {
      v109 = objc_msgSend_initWithAcResult_personMask_salientPersonMask_skinMask_hairMask_skyMask_saliencyMask_(v105, v108, v118, CVPixelBuffer_Uint8_fromEspressoBufferFloat32, v71, v82, v93, v104, 0);
    }

    else
    {
      v109 = objc_msgSend_initWithAcResult_personMask_salientPersonMask_skinMask_hairMask_skyMask_saliencyMask_(v105, v108, 0, CVPixelBuffer_Uint8_fromEspressoBufferFloat32, v71, v82, v93, v104, 0);
    }

    v47 = v109;
    CVPixelBufferRelease(CVPixelBuffer_Uint8_fromEspressoBufferFloat32);
    CVPixelBufferRelease(v71);
    CVPixelBufferRelease(v82);
    CVPixelBufferRelease(v93);
    CVPixelBufferRelease(v104);
    CVPixelBufferRelease(0);
  }

  v110 = *MEMORY[0x277D85DE8];

  return v47;
}

- (unint64_t)networkInputBufferWidth
{
  v4 = objc_msgSend_networkResolution(self->_config, a2, v2);
  if (v4)
  {
    if (v4 == 1)
    {
      return 1024;
    }

    v6 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_22E65A4D4(&self->_config, v6, v7);
    }
  }

  return 512;
}

- (unint64_t)networkInputBufferHeight
{
  v4 = objc_msgSend_networkResolution(self->_config, a2, v2);
  if (!v4)
  {
    return 384;
  }

  if (v4 == 1)
  {
    return 576;
  }

  v6 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_22E65A564(&self->_config, v6, v7);
  }

  return 512;
}

- (__CVBuffer)_createCVPixelBuffer_Uint8_fromEspressoBufferFloat32:(id *)float32
{
  if (float32->var6 != 1)
  {
    v4 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A5F4();
    }

    goto LABEL_21;
  }

  if (float32->var14 != 65568)
  {
    v4 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A674();
    }

    goto LABEL_21;
  }

  pixelBufferOut = 0;
  if (CVPixelBufferPoolCreatePixelBuffer(0, self->_outputSemanticBufferPool, &pixelBufferOut))
  {
    v4 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A6F0();
    }

LABEL_21:

    return 0;
  }

  var4 = float32->var4;
  var5 = float32->var5;
  if (var4 != CVPixelBufferGetWidth(pixelBufferOut) || var5 != CVPixelBufferGetHeight(pixelBufferOut))
  {
    v4 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A76C();
    }

    goto LABEL_21;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  var0 = float32->var0;
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  if (var5)
  {
    for (i = 0; i != var5; ++i)
    {
      if (var4)
      {
        v11 = &BaseAddress[i * BytesPerRow];
        v12 = &var0[4 * i * var4];
        v13 = var4;
        do
        {
          v14 = *v12++;
          *v11++ = v14;
          --v13;
        }

        while (v13);
      }
    }
  }

  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  return pixelBufferOut;
}

- (__CVBuffer)_createCVPixelBuffer_Uint8_fromAcSaliencyHeatMap:(id *)map
{
  if (!map->var4)
  {
    v4 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A868();
    }

    goto LABEL_7;
  }

  mapCopy = map;
  pixelBufferOut = 0;
  if (CVPixelBufferPoolCreatePixelBuffer(0, self->_outputSaliencyBufferPool, &pixelBufferOut))
  {
    v4 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A7EC();
    }

LABEL_7:

    return 0;
  }

  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  Width = CVPixelBufferGetWidth(pixelBufferOut);
  Height = CVPixelBufferGetHeight(pixelBufferOut);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  if (Height)
  {
    v10 = BaseAddress;
    do
    {
      memcpy(v10, mapCopy, Width);
      v10 += BytesPerRow;
      mapCopy = (mapCopy + Width);
      --Height;
    }

    while (Height);
  }

  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  return pixelBufferOut;
}

@end