@interface ANSTViSegHQUpdateFramePostProcessor
- (ANSTViSegHQUpdateFramePostProcessor)initWithInferenceDescriptor:(id)descriptor error:(id *)error;
- (ANSTViSegHQUpdateFramePostProcessor)initWithInferenceInputDescriptors:(id)descriptors inferenceOutputDescriptors:(id)outputDescriptors processedOutputDescriptors:(id)processedOutputDescriptors error:(id *)error;
- (BOOL)_processKeyTensorWithInput:(id)input output:(id)output error:(id *)error;
- (BOOL)_processValueTensorWithInput:(id)input output:(id)output error:(id *)error;
- (BOOL)processKeyTensorWithSrcBaseAddress:(const void *)address dstBaseAddress:(void *)baseAddress error:(id *)error;
- (BOOL)processValueTensorWithSrcBaseAddress:(const void *)address dstBaseAddress:(void *)baseAddress error:(id *)error;
- (BOOL)processWithError:(id *)error;
- (id)_inputTensorDataForDescriptor:(id)descriptor error:(id *)error;
- (id)_outputTensorDataForDescriptor:(id)descriptor error:(id *)error;
- (void)dealloc;
@end

@implementation ANSTViSegHQUpdateFramePostProcessor

- (ANSTViSegHQUpdateFramePostProcessor)initWithInferenceInputDescriptors:(id)descriptors inferenceOutputDescriptors:(id)outputDescriptors processedOutputDescriptors:(id)processedOutputDescriptors error:(id *)error
{
  descriptorsCopy = descriptors;
  outputDescriptorsCopy = outputDescriptors;
  processedOutputDescriptorsCopy = processedOutputDescriptors;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v13, a2);
  __break(1u);
  return result;
}

- (ANSTViSegHQUpdateFramePostProcessor)initWithInferenceDescriptor:(id)descriptor error:(id *)error
{
  v28[2] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_configuration(descriptor, a2, descriptor);
  v8 = objc_msgSend_makeKeyTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v7, v6, @"key");
  v10 = objc_msgSend_makeValueTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v9, v6, @"value");
  v28[0] = v8;
  v28[1] = v10;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v28, 2);
  v27[0] = v8;
  v27[1] = v10;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v27, 2);
  v26.receiver = self;
  v26.super_class = ANSTViSegHQUpdateFramePostProcessor;
  v15 = [(ANSTInferencePostprocessor *)&v26 initWithInferenceInputDescriptors:MEMORY[0x277CBEBF8] inferenceOutputDescriptors:v12 processedOutputDescriptors:v14 error:error];

  if (v15)
  {
    objc_storeStrong(&v15->_configuration, v6);
    objc_storeStrong(&v15->_keyTensorDescriptor, v8);
    objc_storeStrong(&v15->_valueTensorDescriptor, v10);
    v17 = vcvtd_n_f64_u64(objc_msgSend_lengthOfDimensionAt_(v15->_keyTensorDescriptor, v16, 1), 1uLL);
    v19 = objc_msgSend_strideOfDimensionAt_(v15->_keyTensorDescriptor, v18, 1) * v17;
    v15->_keyTensorSwapSpaceSize = v19;
    v15->_keyTensorSwapSpace = malloc_type_malloc(v19, 0x2CED412FuLL);
    v21 = vcvtd_n_f64_u64(objc_msgSend_lengthOfDimensionAt_(v15->_valueTensorDescriptor, v20, 3), 1uLL);
    v23 = objc_msgSend_strideOfDimensionAt_(v15->_valueTensorDescriptor, v22, 3) * v21;
    v15->_valueTensorSwapSpaceSize = v23;
    v15->_valueTensorSwapSpace = malloc_type_malloc(v23, 0x4741119FuLL);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)dealloc
{
  free(self->_keyTensorSwapSpace);
  self->_keyTensorSwapSpace = 0;
  free(self->_valueTensorSwapSpace);
  self->_valueTensorSwapSpace = 0;
  v3.receiver = self;
  v3.super_class = ANSTViSegHQUpdateFramePostProcessor;
  [(ANSTViSegHQUpdateFramePostProcessor *)&v3 dealloc];
}

- (BOOL)processKeyTensorWithSrcBaseAddress:(const void *)address dstBaseAddress:(void *)baseAddress error:(id *)error
{
  baseAddressCopy = baseAddress;
  v8 = objc_msgSend_lengthOfDimensionAt_(self->_keyTensorDescriptor, a2, 0, baseAddress, error);
  v10 = objc_msgSend_strideOfDimensionAt_(self->_keyTensorDescriptor, v9, 0);
  if (v8)
  {
    v11 = v10;
    do
    {
      keyTensorSwapSpaceSize = self->_keyTensorSwapSpaceSize;
      memcpy(self->_keyTensorSwapSpace, address + keyTensorSwapSpaceSize, keyTensorSwapSpaceSize);
      memcpy(&baseAddressCopy[keyTensorSwapSpaceSize], address, self->_keyTensorSwapSpaceSize);
      memcpy(baseAddressCopy, self->_keyTensorSwapSpace, self->_keyTensorSwapSpaceSize);
      baseAddressCopy += v11;
      address = address + v11;
      --v8;
    }

    while (v8);
  }

  return 1;
}

- (BOOL)processValueTensorWithSrcBaseAddress:(const void *)address dstBaseAddress:(void *)baseAddress error:(id *)error
{
  baseAddressCopy = baseAddress;
  v6 = objc_msgSend_lengthOfDimensionAt_(self->_valueTensorDescriptor, a2, 0, baseAddress, error);
  v22 = objc_msgSend_strideOfDimensionAt_(self->_valueTensorDescriptor, v7, 0);
  v28 = objc_msgSend_lengthOfDimensionAt_(self->_valueTensorDescriptor, v8, 1);
  v27 = objc_msgSend_strideOfDimensionAt_(self->_valueTensorDescriptor, v9, 1);
  v29 = objc_msgSend_lengthOfDimensionAt_(self->_valueTensorDescriptor, v10, 2);
  v12 = objc_msgSend_strideOfDimensionAt_(self->_valueTensorDescriptor, v11, 2);
  v23 = v6;
  if (v6)
  {
    v13 = v12;
    v14 = 0;
    do
    {
      v24 = v14;
      if (v28)
      {
        v15 = 0;
        v16 = baseAddressCopy;
        addressCopy = address;
        do
        {
          if (v29)
          {
            v17 = v29;
            v18 = addressCopy;
            v19 = v16;
            do
            {
              valueTensorSwapSpaceSize = self->_valueTensorSwapSpaceSize;
              memcpy(self->_valueTensorSwapSpace, &v18[valueTensorSwapSpaceSize], valueTensorSwapSpaceSize);
              memcpy(&v19[valueTensorSwapSpaceSize], v18, self->_valueTensorSwapSpaceSize);
              memcpy(v19, self->_valueTensorSwapSpace, self->_valueTensorSwapSpaceSize);
              v19 += v13;
              v18 += v13;
              --v17;
            }

            while (v17);
          }

          ++v15;
          v16 += v27;
          addressCopy += v27;
        }

        while (v15 != v28);
      }

      v14 = v24 + 1;
      baseAddressCopy += v22;
      address = address + v22;
    }

    while (v24 + 1 != v23);
  }

  return 1;
}

- (BOOL)processWithError:(id *)error
{
  v6 = objc_msgSend__inputTensorDataForDescriptor_error_(self, a2, self->_keyTensorDescriptor, error);
  if (v6)
  {
    v8 = objc_msgSend__outputTensorDataForDescriptor_error_(self, v5, self->_keyTensorDescriptor, error);
    if (v8)
    {
      v10 = objc_msgSend__inputTensorDataForDescriptor_error_(self, v7, self->_valueTensorDescriptor, error);
      if (v10)
      {
        v12 = objc_msgSend__outputTensorDataForDescriptor_error_(self, v9, self->_valueTensorDescriptor, error);
        if (v12 && objc_msgSend__processKeyTensorWithInput_output_error_(self, v11, v6, v8, error))
        {
          v14 = objc_msgSend__processValueTensorWithInput_output_error_(self, v13, v10, v12, error);
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_inputTensorDataForDescriptor:(id)descriptor error:(id *)error
{
  v20[2] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v9 = objc_msgSend_name(descriptorCopy, v7, v8);
  v11 = objc_msgSend_inputTensorDataForDescriptorNamed_(self, v10, v9);

  if (v11)
  {
    v13 = v11;
  }

  else if (error)
  {
    v14 = MEMORY[0x277CCA9B8];
    v19[0] = *MEMORY[0x277CCA068];
    v19[1] = @"ANSTDescriptor";
    v20[0] = @"Input tensor data not found.";
    v20[1] = descriptorCopy;
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v20, v19, 2);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"ANSTErrorDomain", 11, v15);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_outputTensorDataForDescriptor:(id)descriptor error:(id *)error
{
  v20[2] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v9 = objc_msgSend_name(descriptorCopy, v7, v8);
  v11 = objc_msgSend_outputTensorDataForDescriptorNamed_(self, v10, v9);

  if (v11)
  {
    v13 = v11;
  }

  else if (error)
  {
    v14 = MEMORY[0x277CCA9B8];
    v19[0] = *MEMORY[0x277CCA068];
    v19[1] = @"ANSTDescriptor";
    v20[0] = @"Output tensor data not found.";
    v20[1] = descriptorCopy;
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v20, v19, 2);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"ANSTErrorDomain", 11, v15);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_processKeyTensorWithInput:(id)input output:(id)output error:(id *)error
{
  outputCopy = output;
  v17 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22E5F5D08;
  v12[3] = &unk_27884FB98;
  v13 = outputCopy;
  selfCopy = self;
  v15 = &v17;
  errorCopy = error;
  v9 = outputCopy;
  LOBYTE(error) = objc_msgSend_performDataAccessWithOptions_usingBlock_error_(input, v10, 0, v12, error);
  LOBYTE(input) = v17;

  return error & input;
}

- (BOOL)_processValueTensorWithInput:(id)input output:(id)output error:(id *)error
{
  outputCopy = output;
  v17 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22E5F5E70;
  v12[3] = &unk_27884FB98;
  v13 = outputCopy;
  selfCopy = self;
  v15 = &v17;
  errorCopy = error;
  v9 = outputCopy;
  LOBYTE(error) = objc_msgSend_performDataAccessWithOptions_usingBlock_error_(input, v10, 0, v12, error);
  LOBYTE(input) = v17;

  return error & input;
}

@end