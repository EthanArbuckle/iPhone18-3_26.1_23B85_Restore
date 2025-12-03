@interface ANSTForegroundSegmentation_Internal
- (ANSTForegroundSegmentation_Internal)initWithConfiguration:(id)configuration;
- (BOOL)prepareWithError:(id *)error;
- (__CVBuffer)_createCVPixelBuffer_Float32_fromEspressoBufferFloat32:(id *)float32;
- (id)resultForPixelBuffer:(__CVBuffer *)resizedInputBuffer error:(id *)error;
- (unint64_t)networkInputBufferHeight;
- (unint64_t)networkInputBufferWidth;
- (void)dealloc;
- (void)undoPrepareSideEffects;
@end

@implementation ANSTForegroundSegmentation_Internal

- (ANSTForegroundSegmentation_Internal)initWithConfiguration:(id)configuration
{
  v17 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = ANSTForegroundSegmentation_Internal;
  v6 = [(ANSTForegroundSegmentation *)&v14 initWithConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, configuration);
    v7->_readyForInference = 0;
    v8 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_msgSend_description(configurationCopy, v9, v10);
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_22E5D5000, v8, OS_LOG_TYPE_DEFAULT, "ANSTForegroundSegmentation (ViSegHQ) initialized with config %{public}@.", buf, 0xCu);
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
  v4.super_class = ANSTForegroundSegmentation_Internal;
  [(ANSTForegroundSegmentation_Internal *)&v4 dealloc];
}

- (void)undoPrepareSideEffects
{
  CVPixelBufferRelease(self->_resizedInputBuffer);
  CVPixelBufferPoolRelease(self->_outputBufferPool);
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    CFRelease(self->_pixelTransferSession);
  }

  vmtrackerNetworkEspresso = self->_vmtrackerNetworkEspresso;
  self->_vmtrackerNetworkEspresso = 0;

  self->_readyForInference = 0;
}

- (BOOL)prepareWithError:(id *)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22E656774();
  }

  if (error)
  {
    v6 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA068];
    v12[0] = @"ANSTForegroundSegmentation has been deprecated, and associated model files have been completely removed on all platforms except macOS.";
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v12, &v11, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v6, v8, @"ANSTErrorDomain", 1, v7);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (unint64_t)networkInputBufferWidth
{
  v4 = objc_msgSend_networkResolution(self->_config, a2, v2);
  if (v4 < 4)
  {
    return qword_22E6618D8[v4];
  }

  v6 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_22E656808(&self->_config, v6, v7);
  }

  return 512;
}

- (unint64_t)networkInputBufferHeight
{
  v4 = objc_msgSend_networkResolution(self->_config, a2, v2);
  if (v4 < 4)
  {
    return qword_22E6618F8[v4];
  }

  v6 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_22E656890(&self->_config, v6, v7);
  }

  return 384;
}

- (id)resultForPixelBuffer:(__CVBuffer *)resizedInputBuffer error:(id *)error
{
  v62[1] = *MEMORY[0x277D85DE8];
  v7 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  v8 = os_signpost_id_make_with_pointer(v7, self);

  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v52 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ANSTForegroundSegmentation_resultForPixelBuffer", &unk_22E663F87, v52, 2u);
  }

  if (!self->_readyForInference)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22E656918();
    }

    if (error)
    {
      v25 = MEMORY[0x277CCA9B8];
      v61 = *MEMORY[0x277CCA450];
      v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v62, &v61, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v25, v27, @"ANSTErrorDomain", 4, v26);
    }

    v23 = os_signpost_id_make_with_pointer(v7, self);

    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v7))
    {
      goto LABEL_55;
    }

    *v52 = 0;
    goto LABEL_54;
  }

  if (!resizedInputBuffer)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22E656B18();
    }

    if (error)
    {
      v29 = MEMORY[0x277CCA9B8];
      v59 = *MEMORY[0x277CCA450];
      v60 = @"Nil input buffer.";
      v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v60, &v59, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v29, v31, @"ANSTErrorDomain", 2, v30);
    }

    v23 = os_signpost_id_make_with_pointer(v7, self);

    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v7))
    {
      goto LABEL_55;
    }

    *v52 = 0;
    goto LABEL_54;
  }

  Width = CVPixelBufferGetWidth(resizedInputBuffer);
  if (Width != objc_msgSend_networkInputBufferWidth(self, v10, v11) || (Height = CVPixelBufferGetHeight(resizedInputBuffer), Height != objc_msgSend_networkInputBufferHeight(self, v13, v14)) || (PixelFormatType = CVPixelBufferGetPixelFormatType(resizedInputBuffer), PixelFormatType != objc_msgSend_networkInputBufferPixelFormat(self, v16, v17)))
  {
    if (VTPixelTransferSessionTransferImage(self->_pixelTransferSession, resizedInputBuffer, self->_resizedInputBuffer))
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_22E656998();
      }

      if (error)
      {
        v20 = MEMORY[0x277CCA9B8];
        v57 = *MEMORY[0x277CCA450];
        v58 = @"Failed to transfer input pixel buffer.";
        v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v58, &v57, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"ANSTErrorDomain", 4, v21);
      }

      v23 = os_signpost_id_make_with_pointer(v7, self);

      if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v7))
      {
        goto LABEL_55;
      }

      *v52 = 0;
LABEL_54:
      _os_signpost_emit_with_name_impl(&dword_22E5D5000, v7, OS_SIGNPOST_INTERVAL_END, v23, "ANSTForegroundSegmentation_resultForPixelBuffer", &unk_22E663F87, v52, 2u);
LABEL_55:
      v44 = 0;
      goto LABEL_56;
    }

    resizedInputBuffer = self->_resizedInputBuffer;
  }

  frameCount = self->_frameCount;
  self->_frameCount = frameCount + 1;
  if (!frameCount)
  {
    if ((objc_msgSend_runInitializerModel_(self->_vmtrackerNetworkEspresso, v18, resizedInputBuffer) & 1) == 0)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_22E656A18();
      }

      if (error)
      {
        v47 = MEMORY[0x277CCA9B8];
        v55 = *MEMORY[0x277CCA450];
        v56 = @"Failed to run initializer network.";
        v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, &v56, &v55, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v47, v49, @"ANSTErrorDomain", 4, v48);
      }

      v23 = os_signpost_id_make_with_pointer(v7, self);

      if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v7))
      {
        goto LABEL_55;
      }

      *v52 = 0;
      goto LABEL_54;
    }

LABEL_43:
    if ((objc_msgSend_runInferenceModel_(self->_vmtrackerNetworkEspresso, v18, resizedInputBuffer) & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_44;
  }

  if (0xCCCCCCCCCCCCCCCDLL * (frameCount + 1) > 0x3333333333333333)
  {
    goto LABEL_43;
  }

  if ((objc_msgSend_runUpdateModel_(self->_vmtrackerNetworkEspresso, v18, resizedInputBuffer) & 1) == 0)
  {
LABEL_35:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22E656A98();
    }

    if (error)
    {
      v36 = MEMORY[0x277CCA9B8];
      v53 = *MEMORY[0x277CCA450];
      v54 = @"Failed to run vmtracker network.";
      v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, &v54, &v53, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v36, v38, @"ANSTErrorDomain", 4, v37);
    }

    v23 = os_signpost_id_make_with_pointer(v7, self);

    if (v23 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v7))
    {
      goto LABEL_55;
    }

    *v52 = 0;
    goto LABEL_54;
  }

LABEL_44:
  OutputMaskBuffer = objc_msgSend_getOutputMaskBuffer(self->_vmtrackerNetworkEspresso, v33, v34);
  CVPixelBuffer_Float32_fromEspressoBufferFloat32 = objc_msgSend__createCVPixelBuffer_Float32_fromEspressoBufferFloat32_(self, v40, OutputMaskBuffer);
  v42 = [ANSTForegroundSegmentationResult alloc];
  v44 = objc_msgSend_initWithMask_(v42, v43, CVPixelBuffer_Float32_fromEspressoBufferFloat32);
  CVPixelBufferRelease(CVPixelBuffer_Float32_fromEspressoBufferFloat32);
  v45 = os_signpost_id_make_with_pointer(v7, self);

  if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v52 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v7, OS_SIGNPOST_INTERVAL_END, v45, "ANSTForegroundSegmentation_resultForPixelBuffer", &unk_22E663F87, v52, 2u);
  }

LABEL_56:

  v50 = *MEMORY[0x277D85DE8];

  return v44;
}

- (__CVBuffer)_createCVPixelBuffer_Float32_fromEspressoBufferFloat32:(id *)float32
{
  if (float32->var6 != 1)
  {
    v4 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22E656B98();
    }

    goto LABEL_10;
  }

  if (float32->var14 != 65568)
  {
    v4 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22E656C18();
    }

    goto LABEL_10;
  }

  pixelBufferOut = 0;
  if (CVPixelBufferPoolCreatePixelBuffer(0, self->_outputBufferPool, &pixelBufferOut))
  {
    v4 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22E656C94();
    }

LABEL_10:

    return 0;
  }

  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  var5 = float32->var5;
  v7 = 4 * float32->var4;
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  var0 = float32->var0;
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  v11 = BaseAddress;
  if (v7 == BytesPerRow)
  {
    memcpy(BaseAddress, var0, var5 * v7);
  }

  else if (var5)
  {
    if (v7 >= BytesPerRow)
    {
      v12 = BytesPerRow;
    }

    else
    {
      v12 = v7;
    }

    do
    {
      memcpy(v11, var0, v12);
      v11 += BytesPerRow;
      var0 += v7;
      --var5;
    }

    while (var5);
  }

  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  return pixelBufferOut;
}

@end