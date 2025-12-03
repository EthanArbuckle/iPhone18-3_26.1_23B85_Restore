@interface ANSTVideoFeatureExtractor
- (ANSTVideoFeatureExtractor)initWithConfig:(id)config error:(id *)error;
- (ANSTVideoFeatureExtractor)initWithConfiguration:(id)configuration;
- (ANSTVideoFeatureExtractorDelegate)delegate;
- (BOOL)bindAudioInput:(id)input error:(id *)error;
- (BOOL)bindVideoInput:(__CVBuffer *)input error:(id *)error;
- (BOOL)commitInputBindingWithError:(id *)error;
- (BOOL)digestFrame:(__CVBuffer *)frame error:(id *)error;
- (BOOL)executeInferenceWithError:(id *)error;
- (id)_initWithConfig:(id)config error:(id *)error;
- (id)getCurrentVideoFeatureWithOutError:(id *)error;
- (int64_t)windowSize;
- (void)dealloc;
- (void)releaseResourceSafely;
- (void)resetInferenceState;
- (void)resetInputBinding;
@end

@implementation ANSTVideoFeatureExtractor

- (int64_t)windowSize
{
  if (objc_msgSend_foundationModelVersion(self->_configuration, a2, v2) == 0x10000)
  {
    return 16;
  }

  else
  {
    return 8;
  }
}

- (ANSTVideoFeatureExtractor)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22E65CB98(v5);
  }

  v7 = objc_msgSend__initWithConfig_error_(self, v6, configurationCopy, 0);
  return v7;
}

- (ANSTVideoFeatureExtractor)initWithConfig:(id)config error:(id *)error
{
  v13 = 0;
  v5 = objc_msgSend__initWithConfig_error_(self, a2, config, &v13);
  v6 = v13;
  if (v5[105])
  {
    v7 = v5;
  }

  else
  {
    v8 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22E65CC1C(v6, v8);
    }

    objc_msgSend_releaseResourceSafely(v5, v9, v10);
    if (error)
    {
      v11 = v6;
      v7 = 0;
      *error = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_initWithConfig:(id)config error:(id *)error
{
  v78[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  v74.receiver = self;
  v74.super_class = ANSTVideoFeatureExtractor;
  v8 = [(ANSTVideoFeatureExtractor *)&v74 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_18;
  }

  objc_storeStrong(&v8->_configuration, config);
  v10 = [ANSTVideoFoundationModelConfiguration alloc];
  v13 = objc_msgSend_foundationModelVersion(configCopy, v11, v12);
  v15 = objc_msgSend_initWithVersion_(v10, v14, v13);
  v16 = [ANSTVideoFoundationModel alloc];
  v18 = objc_msgSend_initWithConfiguration_(v16, v17, v15);
  model = v9->_model;
  v9->_model = v18;

  if (!objc_msgSend_prepareWithError_(v9->_model, v20, error))
  {
    goto LABEL_13;
  }

  v23 = objc_msgSend_outputFeatureDescriptor(v9->_model, v21, v22);
  v26 = objc_msgSend_sizeInBytes(v23, v24, v25);

  v29 = objc_msgSend_windowSize(v9, v27, v28);
  v9->_windowBuffer = malloc_type_malloc(8 * v29, 0x80040B8603338uLL);
  if (objc_msgSend_windowSize(v9, v30, v31) >= 1)
  {
    v32 = 0;
    do
    {
      v9->_windowBuffer[v32++] = malloc_type_calloc(1uLL, v26, 0x23F63671uLL);
    }

    while (objc_msgSend_windowSize(v9, v33, v34) > v32);
  }

  v9->_currentIndex = 0;
  v9->_windowSum = malloc_type_calloc(1uLL, v26, 0x4D00173DuLL);
  v9->_normalizedMeanFeature = malloc_type_calloc(1uLL, v26, 0x6FB29CD2uLL);
  v35 = [ANSTTensorData alloc];
  v38 = objc_msgSend_outputFeatureDescriptor(v9->_model, v36, v37);
  v40 = objc_msgSend_initWithDescriptor_dataPointer_length_deallocator_error_(v35, v39, v38, v9->_normalizedMeanFeature, v26, 0, error);
  currentVideoFeatureData = v9->_currentVideoFeatureData;
  v9->_currentVideoFeatureData = v40;

  if (!v9->_currentVideoFeatureData)
  {
    goto LABEL_13;
  }

  v9->_inputBindingCommitted = 0;
  v44 = objc_msgSend_set(MEMORY[0x277CBEB58], v42, v43);
  modalityStatus = v9->_modalityStatus;
  v9->_modalityStatus = v44;

  if (!VTPixelTransferSessionCreate(0, &v9->_pixelTransferSession) && !VTSessionSetProperty(v9->_pixelTransferSession, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A78]) && !VTSessionSetProperty(v9->_pixelTransferSession, *MEMORY[0x277CE28A8], *MEMORY[0x277CBED28]))
  {
    v52 = objc_msgSend_inputImageDescriptor(v9->_model, v46, v47);
    v55 = objc_msgSend_pixelFormatType(v52, v53, v54);
    v58 = objc_msgSend_inputImageDescriptor(v9->_model, v56, v57);
    v61 = objc_msgSend_width(v58, v59, v60);
    v64 = objc_msgSend_inputImageDescriptor(v9->_model, v62, v63);
    v67 = objc_msgSend_height(v64, v65, v66);
    PixelBufferWithPixelFormat_width_height_handle = objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v68, v55, v61, v67, &v9->_preprocessedInputImage);

    if (PixelBufferWithPixelFormat_width_height_handle)
    {
      if (!error)
      {
        goto LABEL_13;
      }

      v48 = MEMORY[0x277CCA9B8];
      v75 = *MEMORY[0x277CCA068];
      v76 = @"Failed to allocate intermediate pixel buffer for preprocessing.";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v70, &v76, &v75, 1);
      goto LABEL_12;
    }

    v9->_rawInputImage = 0;
    *&v9->_needsPreprocessing = 257;

LABEL_18:
    v71 = v9;
    goto LABEL_19;
  }

  if (error)
  {
    v48 = MEMORY[0x277CCA9B8];
    v77 = *MEMORY[0x277CCA068];
    v78[0] = @"Failed to prepare VTPixelTransferSession.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, v78, &v77, 1);
    v49 = LABEL_12:;
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v48, v50, @"ANSTErrorDomain", 3, v49);
  }

LABEL_13:
  v51 = v9;

LABEL_19:
  v72 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)releaseResourceSafely
{
  objc_msgSend_resetInputBinding(self, a2, v2);
  if (self->_windowBuffer)
  {
    if (objc_msgSend_windowSize(self, v4, v5) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = self->_windowBuffer[v8];
        if (v9)
        {
          free(v9);
        }

        ++v8;
      }

      while (objc_msgSend_windowSize(self, v6, v7) > v8);
    }

    free(self->_windowBuffer);
    self->_windowBuffer = 0;
  }

  windowSum = self->_windowSum;
  if (windowSum)
  {
    free(windowSum);
    self->_windowSum = 0;
  }

  normalizedMeanFeature = self->_normalizedMeanFeature;
  if (normalizedMeanFeature)
  {
    free(normalizedMeanFeature);
    self->_normalizedMeanFeature = 0;
  }

  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(self->_pixelTransferSession);
    CFRelease(pixelTransferSession);
  }

  self->_pixelTransferSession = 0;
  CVPixelBufferRelease(self->_rawInputImage);
  self->_rawInputImage = 0;
  CVPixelBufferRelease(self->_preprocessedInputImage);
  self->_preprocessedInputImage = 0;
}

- (void)dealloc
{
  objc_msgSend_releaseResourceSafely(self, a2, v2);
  v4.receiver = self;
  v4.super_class = ANSTVideoFeatureExtractor;
  [(ANSTVideoFeatureExtractor *)&v4 dealloc];
}

- (BOOL)digestFrame:(__CVBuffer *)frame error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (!self->_initSucceeded)
  {
    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA068];
      v17[0] = @"Initialization was not successful. Please check error log.";
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v17, &v16, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v12, v14, @"ANSTErrorDomain", 3, v13);
    }

    goto LABEL_9;
  }

  objc_msgSend_resetInputBinding(self, a2, frame);
  if (!objc_msgSend_bindVideoInput_error_(self, v7, frame, error) || !objc_msgSend_commitInputBindingWithError_(self, v8, error))
  {
LABEL_9:
    v15 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return objc_msgSend_executeInferenceWithError_(self, v9, error);
}

- (BOOL)bindVideoInput:(__CVBuffer *)input error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (!self->_initSucceeded)
  {
    if (error)
    {
      v6 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA068];
      v26[0] = @"Initialization was not successful. Please check error log.";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v26, &v25, 1);
      goto LABEL_7;
    }

LABEL_8:
    LOBYTE(v9) = 0;
    goto LABEL_9;
  }

  if (self->_inputBindingCommitted)
  {
    if (error)
    {
      v6 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v24 = @"Input binding ready comitted. In order to binding new input, please run [ANSTVideoFeatureExtractor resetInputBinding] first.";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, &v24, &v23, 1);
      v7 = LABEL_7:;
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v6, v8, @"ANSTErrorDomain", 3, v7);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  p_rawInputImage = &self->_rawInputImage;
  rawInputImage = self->_rawInputImage;
  if (rawInputImage != input)
  {
    CVPixelBufferRelease(rawInputImage);
    *p_rawInputImage = input;
    CVPixelBufferRetain(input);
    rawInputImage = *p_rawInputImage;
  }

  Width = CVPixelBufferGetWidth(rawInputImage);
  p_preprocessedInputImage = &self->_preprocessedInputImage;
  if (Width == CVPixelBufferGetWidth(self->_preprocessedInputImage) && (Height = CVPixelBufferGetHeight(*p_rawInputImage), Height == CVPixelBufferGetHeight(*p_preprocessedInputImage)) && (PixelFormatType = CVPixelBufferGetPixelFormatType(*p_rawInputImage), PixelFormatType == CVPixelBufferGetPixelFormatType(*p_preprocessedInputImage)))
  {
    v19 = 0;
    p_preprocessedInputImage = &self->_rawInputImage;
  }

  else
  {
    v19 = 1;
  }

  v20 = *p_preprocessedInputImage;
  self->_needsPreprocessing = v19;
  v9 = objc_msgSend_bindInputFrameBuffer_error_(self->_model, v16, v20, error);
  if (v9)
  {
    objc_msgSend_addObject_(self->_modalityStatus, v21, @"Video");
    LOBYTE(v9) = 1;
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)bindAudioInput:(id)input error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (self->_initSucceeded)
  {
    if (error)
    {
      v8 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA450];
      v14 = @"Audio input is not supported yet.";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, &v14, &v13, 1);
      v9 = LABEL_6:;
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v8, v10, @"ANSTErrorDomain", 3, v9);
    }
  }

  else if (error)
  {
    v8 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA068];
    v16[0] = @"Initialization was not successful. Please check error log.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v16, &v15, 1);
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)executeInferenceWithError:(id *)error
{
  normalizedMeanFeature = error;
  v51[1] = *MEMORY[0x277D85DE8];
  if (!self->_initSucceeded)
  {
    if (!error)
    {
      goto LABEL_16;
    }

    v10 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277CCA068];
    v51[0] = @"Initialization was not successful. Please check error log.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v51, &v50, 1);
    v8 = LABEL_13:;
    objc_msgSend_errorWithDomain_code_userInfo_(v10, v11, @"ANSTErrorDomain", 3, v8);
    goto LABEL_14;
  }

  if (!self->_inputBindingCommitted)
  {
    if (!error)
    {
      goto LABEL_16;
    }

    v10 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA450];
    v49 = @"Input binding not committed yet. Please run [ANSTVideoFeatureExtractor commitInputBinding] first.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, &v49, &v48, 1);
    goto LABEL_13;
  }

  if (!self->_needsPreprocessing || !VTPixelTransferSessionTransferImage(self->_pixelTransferSession, self->_rawInputImage, self->_preprocessedInputImage))
  {
    if (objc_msgSend_executeInferenceWithError_(self->_model, a2, normalizedMeanFeature))
    {
      v16 = objc_msgSend_outputFeatureSurfaceRef(self->_model, v14, v15);
      IOSurfaceLock(v16, 1u, 0);
      BaseAddress = IOSurfaceGetBaseAddress(v16);
      v18 = self->_windowBuffer[self->_currentIndex];
      windowSum = self->_windowSum;
      cblas_saxpy_NEWLAPACK();
      if (self->_windowFilled)
      {
        v22 = self->_windowSum;
        cblas_saxpy_NEWLAPACK();
      }

      v23 = objc_msgSend_outputFeatureDescriptor(self->_model, v20, v21);
      v26 = objc_msgSend_sizeInBytes(v23, v24, v25);
      memcpy(v18, BaseAddress, v26);

      IOSurfaceUnlock(v16, 1u, 0);
      currentIndex = self->_currentIndex;
      self->_currentIndex = currentIndex + 1;
      if (objc_msgSend_windowSize(self, v28, v29) <= currentIndex + 1)
      {
        self->_currentIndex = 0;
        self->_windowFilled = 1;
      }

      else if (!self->_windowFilled)
      {
        LOBYTE(normalizedMeanFeature) = 1;
        goto LABEL_16;
      }

      v32 = self->_windowSum;
      normalizedMeanFeature = self->_normalizedMeanFeature;
      v33 = objc_msgSend_outputFeatureDescriptor(self->_model, v30, v31);
      v36 = objc_msgSend_sizeInBytes(v33, v34, v35);
      memcpy(normalizedMeanFeature, v32, v36);

      objc_msgSend_windowSize(self, v37, v38);
      v39 = self->_normalizedMeanFeature;
      LOBYTE(normalizedMeanFeature) = 1;
      cblas_sscal_NEWLAPACK();
      v40 = self->_normalizedMeanFeature;
      cblas_snrm2_NEWLAPACK();
      v41 = self->_normalizedMeanFeature;
      cblas_sscal_NEWLAPACK();
      v44 = objc_msgSend_delegate(self, v42, v43);
      objc_msgSend_videoFeatureExtractor_didUpdateVideoFeature_(v44, v45, self, self->_currentVideoFeatureData);

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v5 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22E65CCA8(v5);
  }

  if (normalizedMeanFeature)
  {
    v7 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA450];
    v47 = @"Failed to preprocess input pixel buffer.";
    v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, &v47, &v46, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v7, v9, @"ANSTErrorDomain", 4, v8);
    *normalizedMeanFeature = LABEL_14:;

LABEL_15:
    LOBYTE(normalizedMeanFeature) = 0;
  }

LABEL_16:
  v12 = *MEMORY[0x277D85DE8];
  return normalizedMeanFeature;
}

- (BOOL)commitInputBindingWithError:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (!self->_initSucceeded)
  {
    if (error)
    {
      v7 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA068];
      v14[0] = @"Initialization was not successful. Please check error log.";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v14, &v13, 1);
      v8 = LABEL_8:;
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v7, v9, @"ANSTErrorDomain", 3, v8);
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (!objc_msgSend_count(self->_modalityStatus, a2, error))
  {
    if (error)
    {
      v7 = MEMORY[0x277CCA9B8];
      v11 = *MEMORY[0x277CCA450];
      v12 = @"Commit failure since no input is binded yet. Please run [ANSTVideoFeatureExtractor bindVideoInput:error:] or [ANSTVideoFeatureExtractor bindAudioInput:error:] first.";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, &v12, &v11, 1);
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  result = 1;
  self->_inputBindingCommitted = 1;
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resetInputBinding
{
  if (self->_initSucceeded)
  {
    objc_msgSend_removeAllObjects(self->_modalityStatus, a2, v2);
    self->_inputBindingCommitted = 0;
    CVPixelBufferRelease(self->_rawInputImage);
    self->_rawInputImage = 0;
    self->_needsPreprocessing = 1;
  }
}

- (void)resetInferenceState
{
  if (self->_initSucceeded)
  {
    windowSum = self->_windowSum;
    v5 = objc_msgSend_outputFeatureDescriptor(self->_model, a2, v2);
    v8 = objc_msgSend_sizeInBytes(v5, v6, v7);
    bzero(windowSum, v8);

    self->_windowFilled = 0;
    self->_currentIndex = 0;
  }
}

- (id)getCurrentVideoFeatureWithOutError:(id *)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (self->_initSucceeded)
  {
    if (self->_windowFilled)
    {
      v3 = self->_currentVideoFeatureData;
      goto LABEL_7;
    }
  }

  else if (error)
  {
    v5 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA068];
    v11[0] = @"Initialization was not successful. Please check error log.";
    v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v11, &v10, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v5, v7, @"ANSTErrorDomain", 3, v6);
  }

  v3 = 0;
LABEL_7:
  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (ANSTVideoFeatureExtractorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end