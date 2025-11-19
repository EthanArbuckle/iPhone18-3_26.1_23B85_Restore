@interface ANSTVideoMaskRefinerHQ
+ (id)new;
- (ANSTVideoMaskRefinerHQ)init;
- (ANSTVideoMaskRefinerHQ)initWithConfiguration:(id)a3;
- (ANSTVideoMaskRefinerHQ)initWithConfiguration:(id)a3 error:(id *)a4;
- (BOOL)bindInputCoarseMaskBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (BOOL)bindInputImageBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (BOOL)bindOutputRefinedMaskBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (BOOL)commitIOBindingWithError:(id *)a3;
- (BOOL)executeInferenceWithError:(id *)a3;
- (BOOL)prepareWithError:(id *)a3;
- (void)dealloc;
@end

@implementation ANSTVideoMaskRefinerHQ

- (ANSTVideoMaskRefinerHQ)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTVideoMaskRefinerHQ)initWithConfiguration:(id)a3
{
  v5 = a3;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v6, a2);
  __break(1u);
  return result;
}

- (ANSTVideoMaskRefinerHQ)initWithConfiguration:(id)a3 error:(id *)a4
{
  v7 = a3;
  v24.receiver = self;
  v24.super_class = ANSTVideoMaskRefinerHQ;
  v8 = [(ANSTAlgorithm *)&v24 initWithConfiguration:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, a3);
    v9->_prepared = 0;
    v9->_ioCommitted = 0;
    v9->_mode = 0;
    v10 = [ANSTPixelBufferDescriptor alloc];
    v12 = objc_msgSend_initWithName_width_height_pixelFormatType_pixelBufferAttributes_error_(v10, v11, @"input_image", 448, 576, 1111970369, 0, a4);
    inputImageDescriptor = v9->_inputImageDescriptor;
    v9->_inputImageDescriptor = v12;

    if (!v9->_inputImageDescriptor)
    {
      goto LABEL_7;
    }

    v14 = [ANSTPixelBufferDescriptor alloc];
    v16 = objc_msgSend_initWithName_width_height_pixelFormatType_pixelBufferAttributes_error_(v14, v15, @"input_coarse_mask", 448, 576, 1278226536, 0, a4);
    inputCoarseMaskDescriptor = v9->_inputCoarseMaskDescriptor;
    v9->_inputCoarseMaskDescriptor = v16;

    if (!v9->_inputCoarseMaskDescriptor || (v18 = [ANSTPixelBufferDescriptor alloc], v20 = objc_msgSend_initWithName_width_height_pixelFormatType_pixelBufferAttributes_error_(v18, v19, @"matting", 448, 576, 1278226536, 0, a4), outputRefinedMaskDescriptor = v9->_outputRefinedMaskDescriptor, v9->_outputRefinedMaskDescriptor = v20, outputRefinedMaskDescriptor, !v9->_outputRefinedMaskDescriptor))
    {
LABEL_7:
      v22 = 0;
      goto LABEL_8;
    }

    v9->_expectedMaskSizeInBytes = 516096;
  }

  v22 = v9;
LABEL_8:

  return v22;
}

- (void)dealloc
{
  inputCoarseMaskBuffer = self->_inputCoarseMaskBuffer;
  if (inputCoarseMaskBuffer)
  {
    CVPixelBufferRelease(inputCoarseMaskBuffer);
    self->_inputCoarseMaskBuffer = 0;
  }

  outputRefinedMaskBuffer = self->_outputRefinedMaskBuffer;
  if (outputRefinedMaskBuffer)
  {
    CVPixelBufferRelease(outputRefinedMaskBuffer);
    self->_outputRefinedMaskBuffer = 0;
  }

  v5.receiver = self;
  v5.super_class = ANSTVideoMaskRefinerHQ;
  [(ANSTVideoMaskRefinerHQ *)&v5 dealloc];
}

- (BOOL)prepareWithError:(id *)a3
{
  v44[1] = *MEMORY[0x277D85DE8];
  if (!self->_prepared)
  {
    v6 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], a2, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/vmrefinerHQ.mlmodelc");
    v8 = objc_msgSend_URLByAppendingPathComponent_(v6, v7, @"model.mil");

    v9 = [ANSTE5MLNetwork alloc];
    v11 = objc_msgSend_initWithMILPath_e5FunctionName_(v9, v10, v8, @"main");
    network = self->_network;
    self->_network = v11;

    if (objc_msgSend_loadNetworkWithError_(self->_network, v13, a3))
    {
      if (objc_msgSend_allocateAndBindNetworkIOExceptInputsNamed_outputsNamed_error_(self->_network, v14, &unk_28432B880, &unk_28432B898, a3))
      {
        v16 = objc_msgSend_pixelBufferForNetworkInputNamed_error_(self->_network, v15, @"input_hard_mask", a3);
        inputHardMask = self->_inputHardMask;
        self->_inputHardMask = v16;

        if (self->_inputHardMask)
        {
          v19 = objc_msgSend_pixelBufferForNetworkInputNamed_error_(self->_network, v18, @"input_last_alpha", a3);
          inputLastAlpha = self->_inputLastAlpha;
          self->_inputLastAlpha = v19;

          if (self->_inputLastAlpha)
          {
            v22 = objc_msgSend_pixelBufferForNetworkInputNamed_error_(self->_network, v21, @"input_last_alpha2", a3);
            inputLastAlpha2 = self->_inputLastAlpha2;
            self->_inputLastAlpha2 = v22;

            if (self->_inputLastAlpha2)
            {
              v26 = objc_msgSend_pixelBuffer(self->_inputHardMask, v24, v25);
              BytesPerRow = CVPixelBufferGetBytesPerRow(v26);
              if (CVPixelBufferGetHeight(v26) * BytesPerRow == self->_expectedMaskSizeInBytes)
              {
                v30 = objc_msgSend_pixelBuffer(self->_inputLastAlpha, v28, v29);
                v31 = CVPixelBufferGetBytesPerRow(v30);
                if (CVPixelBufferGetHeight(v30) * v31 == self->_expectedMaskSizeInBytes)
                {
                  v33 = objc_msgSend_pixelBuffer(self->_inputLastAlpha2, v28, v32);
                  v34 = CVPixelBufferGetBytesPerRow(v33);
                  if (CVPixelBufferGetHeight(v33) * v34 == self->_expectedMaskSizeInBytes)
                  {
                    v3 = 1;
                    self->_prepared = 1;
LABEL_18:

                    goto LABEL_19;
                  }
                }
              }

              v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"Unexpected mask buffer size in bytes");
              v36 = _ANSTLoggingGetOSLogForCategoryANSTKit();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                sub_22E6571B0();
              }

              if (a3)
              {
                v38 = MEMORY[0x277CCA9B8];
                v43 = *MEMORY[0x277CCA068];
                v44[0] = v35;
                v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v44, &v43, 1);
                *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v38, v40, @"ANSTErrorDomain", 3, v39);
              }
            }
          }
        }
      }
    }

    v3 = 0;
    goto LABEL_18;
  }

  v3 = 1;
LABEL_19:
  v41 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)bindInputImageBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = [ANSTPixelBuffer alloc];
  v10 = objc_msgSend_initWithDescriptor_pixelBuffer_orientation_error_(v7, v8, self->_inputImageDescriptor, a3, 1, a4);
  if (!v10)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"Failed to create ANSTPixelBuffer from given input pixel buffer.");
    v13 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E657224();
    }

    if (a4)
    {
      v15 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA068];
      v21[0] = v12;
      v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v21, &v20, 1);
      *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"ANSTErrorDomain", 13, v16);
    }

    goto LABEL_9;
  }

  if (!objc_msgSend_bindNetworkInputNamed_toPixelBuffer_error_(self->_network, v9, @"input_image", v10, a4))
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v11 = 1;
  self->_inputImageBound = 1;
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)bindInputCoarseMaskBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Input pixel buffer is NULL.");
    v13 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E657298();
    }

    if (!a4)
    {
      goto LABEL_20;
    }

    v15 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA068];
    v28[0] = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v28, &v27, 1);
    goto LABEL_19;
  }

  if ((objc_msgSend_validatePixelBuffer_(self->_inputCoarseMaskDescriptor, a2, a3) & 1) == 0)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"Input pixel buffer does not match requirement of inputCoarseMaskDescriptor.");
    v16 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22E657298();
    }

    if (!a4)
    {
      goto LABEL_20;
    }

    v15 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA068];
    v26 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, &v26, &v25, 1);
    goto LABEL_19;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  if (CVPixelBufferGetHeight(a3) * BytesPerRow != self->_expectedMaskSizeInBytes)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"Unexpected mask buffer size in bytes. Please ensure rowBytes is tight.");
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22E657298();
    }

    if (!a4)
    {
      goto LABEL_20;
    }

    v15 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA068];
    v24 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v24, &v23, 1);
    v20 = LABEL_19:;
    *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v21, @"ANSTErrorDomain", 13, v20);

LABEL_20:
    result = 0;
    goto LABEL_21;
  }

  inputCoarseMaskBuffer = self->_inputCoarseMaskBuffer;
  if (inputCoarseMaskBuffer)
  {
    CVPixelBufferRelease(inputCoarseMaskBuffer);
  }

  self->_inputCoarseMaskBuffer = a3;
  CVPixelBufferRetain(a3);
  result = 1;
  self->_inputCoarseMaskBound = 1;
LABEL_21:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)bindOutputRefinedMaskBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v49[1] = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(a3);
  if (Width != objc_msgSend_width(self->_outputRefinedMaskDescriptor, v8, v9) || (Height = CVPixelBufferGetHeight(a3), Height != objc_msgSend_height(self->_outputRefinedMaskDescriptor, v12, v13)))
  {
    v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"Unexpected pixel buffer width or height.");
    v32 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_22E65730C();
    }

    if (!a4)
    {
      goto LABEL_16;
    }

    v34 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA068];
    v49[0] = v31;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v49, &v48, 1);
    goto LABEL_15;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  if (CVPixelBufferGetHeight(a3) * BytesPerRow != self->_expectedMaskSizeInBytes)
  {
    v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"Unexpected pixel buffer size in bytes.");
    v39 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_22E65730C();
    }

    if (!a4)
    {
      goto LABEL_16;
    }

    v34 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA068];
    v47 = v31;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, &v47, &v46, 1);
    goto LABEL_15;
  }

  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (!IOSurface)
  {
    v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"OutputRefinedMaskBuffer must be backed by IOSurface.");
    v41 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_22E65730C();
    }

    if (!a4)
    {
      goto LABEL_16;
    }

    v34 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA068];
    v45 = v31;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, &v45, &v44, 1);
    v35 = LABEL_15:;
    *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v34, v36, @"ANSTErrorDomain", 13, v35);

LABEL_16:
    v30 = 0;
    goto LABEL_17;
  }

  v19 = IOSurface;
  v43[0] = objc_msgSend_height(self->_outputRefinedMaskDescriptor, v17, v18);
  v43[1] = objc_msgSend_width(self->_outputRefinedMaskDescriptor, v20, v21);
  v22 = [ANSTTensorDescriptor alloc];
  v24 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v22, v23, @"matting", 104, 2, v43, 1, a4);
  if (v24)
  {
    v25 = [ANSTTensorSurface alloc];
    v28 = objc_msgSend_initWithDescriptor_ioSurface_error_(v25, v26, v24, v19, a4);
    if (v28 && objc_msgSend_bindNetworkOutputNamed_toTensor_error_(self->_network, v27, @"matting", v28, a4))
    {
      outputRefinedMaskBuffer = self->_outputRefinedMaskBuffer;
      if (outputRefinedMaskBuffer)
      {
        CVPixelBufferRelease(outputRefinedMaskBuffer);
      }

      self->_outputRefinedMaskBuffer = a3;
      CVPixelBufferRetain(a3);
      v30 = 1;
      self->_outputRefinedMaskBound = 1;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_17:
  v37 = *MEMORY[0x277D85DE8];
  return v30;
}

- (BOOL)commitIOBindingWithError:(id *)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (!self->_prepared)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Algorithm not prepared. Please call prepareWithError first.");
    v7 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22E657380();
    }

    if (!a3)
    {
      goto LABEL_24;
    }

    v9 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA068];
    v27[0] = v6;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v27, &v26, 1);
    goto LABEL_23;
  }

  if (!self->_inputImageBound)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Input image not bound.");
    v10 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22E657380();
    }

    if (!a3)
    {
      goto LABEL_24;
    }

    v9 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA068];
    v25 = v6;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, &v25, &v24, 1);
    goto LABEL_23;
  }

  if (!self->_inputCoarseMaskBound)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Input coarse mask not bound.");
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22E657380();
    }

    if (!a3)
    {
      goto LABEL_24;
    }

    v9 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA068];
    v23 = v6;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, &v23, &v22, 1);
    goto LABEL_23;
  }

  if (!self->_outputRefinedMaskBound)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Output refined mask not bound.");
    v14 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22E657380();
    }

    if (!a3)
    {
      goto LABEL_24;
    }

    v9 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA068];
    v21 = v6;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, &v21, &v20, 1);
    v16 = LABEL_23:;
    *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v17, @"ANSTErrorDomain", 3, v16);

LABEL_24:
    LOBYTE(v5) = 0;
    goto LABEL_25;
  }

  v5 = objc_msgSend_commitNetworkIOBindingsWithError_(self->_network, a2, a3);
  if (v5)
  {
    LOBYTE(v5) = 1;
    self->_ioCommitted = 1;
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)executeInferenceWithError:(id *)a3
{
  v92[1] = *MEMORY[0x277D85DE8];
  if (!self->_ioCommitted)
  {
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Algorithm IO not yet committed.");
    v27 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_22E6573F4();
    }

    if (a3)
    {
      v29 = MEMORY[0x277CCA9B8];
      v91 = *MEMORY[0x277CCA068];
      v92[0] = v26;
      v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v92, &v91, 1);
      *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v29, v31, @"ANSTErrorDomain", 3, v30);
    }

    goto LABEL_26;
  }

  mode = self->_mode;
  v6 = 0x27DA69000uLL;
  if (mode == 1)
  {
    p_outputRefinedMaskBuffer = &self->_outputRefinedMaskBuffer;
    CVPixelBufferLockBaseAddress(self->_outputRefinedMaskBuffer, 1uLL);
    p_inputLastAlpha = &self->_inputLastAlpha;
    v34 = objc_msgSend_pixelBuffer(self->_inputLastAlpha, v32, v33);
    CVPixelBufferLockBaseAddress(v34, 0);
    p_inputLastAlpha2 = &self->_inputLastAlpha2;
    v37 = objc_msgSend_pixelBuffer(self->_inputLastAlpha2, v35, v36);
    CVPixelBufferLockBaseAddress(v37, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*p_outputRefinedMaskBuffer);
    v40 = objc_msgSend_pixelBuffer(self->_inputLastAlpha, v38, v39);
    v41 = CVPixelBufferGetBaseAddress(v40);
    v44 = objc_msgSend_pixelBuffer(self->_inputLastAlpha2, v42, v43);
    v24 = CVPixelBufferGetBaseAddress(v44);
    memcpy(v41, BaseAddress, self->_expectedMaskSizeInBytes);
    expectedMaskSizeInBytes = self->_expectedMaskSizeInBytes;
    v6 = 0x27DA69000;
    goto LABEL_11;
  }

  if (!mode)
  {
    p_outputRefinedMaskBuffer = &self->_inputCoarseMaskBuffer;
    CVPixelBufferLockBaseAddress(self->_inputCoarseMaskBuffer, 1uLL);
    p_inputLastAlpha = &self->_inputLastAlpha;
    v11 = objc_msgSend_pixelBuffer(self->_inputLastAlpha, v9, v10);
    CVPixelBufferLockBaseAddress(v11, 0);
    p_inputLastAlpha2 = &self->_inputLastAlpha2;
    v15 = objc_msgSend_pixelBuffer(self->_inputLastAlpha2, v13, v14);
    CVPixelBufferLockBaseAddress(v15, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*p_outputRefinedMaskBuffer);
    v19 = objc_msgSend_pixelBuffer(self->_inputLastAlpha, v17, v18);
    v20 = CVPixelBufferGetBaseAddress(v19);
    v23 = objc_msgSend_pixelBuffer(self->_inputLastAlpha2, v21, v22);
    v24 = CVPixelBufferGetBaseAddress(v23);
    memcpy(v20, BaseAddress, self->_expectedMaskSizeInBytes);
    expectedMaskSizeInBytes = self->_expectedMaskSizeInBytes;
    v6 = 0x27DA69000uLL;
LABEL_11:
    v45 = v24;
    goto LABEL_13;
  }

  p_outputRefinedMaskBuffer = &self->_outputRefinedMaskBuffer;
  CVPixelBufferLockBaseAddress(self->_outputRefinedMaskBuffer, 1uLL);
  p_inputLastAlpha = &self->_inputLastAlpha;
  v48 = objc_msgSend_pixelBuffer(self->_inputLastAlpha, v46, v47);
  CVPixelBufferLockBaseAddress(v48, 0);
  p_inputLastAlpha2 = &self->_inputLastAlpha2;
  v51 = objc_msgSend_pixelBuffer(self->_inputLastAlpha2, v49, v50);
  CVPixelBufferLockBaseAddress(v51, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(*p_outputRefinedMaskBuffer);
  v54 = objc_msgSend_pixelBuffer(self->_inputLastAlpha, v52, v53);
  v55 = CVPixelBufferGetBaseAddress(v54);
  v58 = objc_msgSend_pixelBuffer(self->_inputLastAlpha2, v56, v57);
  v59 = CVPixelBufferGetBaseAddress(v58);
  memcpy(v59, v55, self->_expectedMaskSizeInBytes);
  expectedMaskSizeInBytes = self->_expectedMaskSizeInBytes;
  v45 = v55;
LABEL_13:
  memcpy(v45, BaseAddress, expectedMaskSizeInBytes);
  CVPixelBufferUnlockBaseAddress(*p_outputRefinedMaskBuffer, 1uLL);
  v62 = objc_msgSend_pixelBuffer(*p_inputLastAlpha, v60, v61);
  CVPixelBufferUnlockBaseAddress(v62, 0);
  v65 = objc_msgSend_pixelBuffer(*p_inputLastAlpha2, v63, v64);
  CVPixelBufferUnlockBaseAddress(v65, 0);
  v66 = *(v6 + 3320);
  CVPixelBufferLockBaseAddress(*(&self->super.super.isa + v66), 1uLL);
  v69 = objc_msgSend_pixelBuffer(self->_inputHardMask, v67, v68);
  CVPixelBufferLockBaseAddress(v69, 0);
  Width = CVPixelBufferGetWidth(*(&self->super.super.isa + v66));
  Height = CVPixelBufferGetHeight(*(&self->super.super.isa + v66));
  BytesPerRow = CVPixelBufferGetBytesPerRow(*(&self->super.super.isa + v66));
  v73 = CVPixelBufferGetBaseAddress(*(&self->super.super.isa + v66));
  v76 = objc_msgSend_pixelBuffer(self->_inputHardMask, v74, v75);
  v77 = CVPixelBufferGetBaseAddress(v76);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      if (Width)
      {
        v79 = &v77[i * BytesPerRow];
        v80 = &v73[i * BytesPerRow];
        v81 = Width;
        do
        {
          v82 = *v80++;
          if (v82 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(0.5)))
          {
            v83 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v83) = COERCE_UNSIGNED_INT(1.0);
          }

          *v79++ = v83;
          --v81;
        }

        while (v81);
      }
    }
  }

  CVPixelBufferUnlockBaseAddress(*(&self->super.super.isa + v66), 1uLL);
  v86 = objc_msgSend_pixelBuffer(self->_inputHardMask, v84, v85);
  CVPixelBufferUnlockBaseAddress(v86, 0);
  if ((objc_msgSend_executeInferenceWithError_(self->_network, v87, a3) & 1) == 0)
  {
LABEL_26:
    result = 0;
    goto LABEL_27;
  }

  v88 = self->_mode;
  if (v88 <= 1)
  {
    self->_mode = v88 + 1;
  }

  result = 1;
LABEL_27:
  v90 = *MEMORY[0x277D85DE8];
  return result;
}

@end