@interface ANSTVideoCaptionAlgorithm
- (ANSTVideoCaptionAlgorithm)initWithConfiguration:(id)configuration error:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)updateCaptionState:(id)state withPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (id)newEmptyCaptionState;
@end

@implementation ANSTVideoCaptionAlgorithm

- (ANSTVideoCaptionAlgorithm)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = ANSTVideoCaptionAlgorithm;
  v7 = [(ANSTAlgorithm *)&v13 initWithConfiguration:configurationCopy];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, configuration);
    v10 = objc_msgSend_descriptorWithName_width_height_pixelFormatType_(ANSTPixelBufferDescriptor, v9, @"input_image", 224, 224, 1111970369);
    inputPixelBufferDescriptor = v8->_inputPixelBufferDescriptor;
    v8->_inputPixelBufferDescriptor = v10;

    v8->_readyForInference = 0;
  }

  return v8;
}

- (id)newEmptyCaptionState
{
  v2 = [ANSTTensorDescriptor alloc];
  v4 = objc_msgSend_initWithName_dataType_lengths_strides_error_(v2, v3, @"ht", 104, &unk_28432B8C8, &unk_28432B8E0, 0);
  v5 = [ANSTVideoCaptionAlgorithmCaptionState alloc];
  v7 = objc_msgSend_initWithHiddenTensorDescriptor_(v5, v6, v4);

  return v7;
}

- (BOOL)prepareWithError:(id *)error
{
  if (!self->_readyForInference)
  {
    self->_readyForInference = 1;
  }

  return 1;
}

- (BOOL)updateCaptionState:(id)state withPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (!self->_readyForInference)
  {
    if (!error)
    {
      goto LABEL_13;
    }
    v12 = ;
    v13 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E659894();
    }

    v14 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA068];
    v28[0] = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v28, &v27, 1);
    v21 = LABEL_12:;
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v22, @"ANSTErrorDomain", 4, v21);

    LOBYTE(error) = 0;
    goto LABEL_13;
  }

  if ((objc_msgSend_validatePixelBuffer_(self->_inputPixelBufferDescriptor, v8, buffer) & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_13;
    }

    v16 = MEMORY[0x277CCACA8];
    v17 = objc_msgSend_description(self->_inputPixelBufferDescriptor, v10, v11);
    v12 = objc_msgSend_stringWithFormat_(v16, v18, @"Input pixel buffer does not match ANSTVideoCaptionAlgorithm.inputPixelBufferDescriptor (%@)", v17);

    v19 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22E659894();
    }

    v14 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA068];
    v26 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, &v26, &v25, 1);
    goto LABEL_12;
  }

  LOBYTE(error) = 1;
LABEL_13:

  v23 = *MEMORY[0x277D85DE8];
  return error;
}

@end