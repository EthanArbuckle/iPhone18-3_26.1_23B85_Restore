@interface ANSTInferencePostprocessor
+ (id)new;
- (ANSTInferencePostprocessor)init;
- (ANSTInferencePostprocessor)initWithInferenceInputDescriptors:(id)a3 inferenceOutputDescriptors:(id)a4 processedOutputDescriptors:(id)a5 error:(id *)a6;
- (BOOL)_validateDescriptor:(id)a3 usingAllowedDescriptors:(id)a4 withError:(id *)a5;
- (BOOL)_validatePixelBuffer:(id)a3 forDescriptor:(id)a4 usingAllowedDescriptors:(id)a5 withError:(id *)a6;
- (BOOL)_validateTensorData:(id)a3 forDescriptor:(id)a4 usingAllowedDescriptors:(id)a5 withError:(id *)a6;
- (BOOL)bindInputsToNetwork:(id)a3 error:(id *)a4;
- (BOOL)processWithError:(id *)a3;
- (BOOL)resetWithError:(id *)a3;
- (BOOL)setInputPixelBuffer:(id)a3 forInferenceInputDescriptor:(id)a4 withError:(id *)a5;
- (BOOL)setInputPixelBuffer:(id)a3 forInferenceOutputDescriptor:(id)a4 withError:(id *)a5;
- (BOOL)setInputTensorData:(id)a3 forInferenceInputDescriptor:(id)a4 withError:(id *)a5;
- (BOOL)setInputTensorData:(id)a3 forInferenceOutputDescriptor:(id)a4 withError:(id *)a5;
- (BOOL)setOutputPixelBuffer:(id)a3 forProcessedOutputDescriptor:(id)a4 withError:(id *)a5;
- (BOOL)setOutputTensorData:(id)a3 forProcessedOutputDescriptor:(id)a4 withError:(id *)a5;
- (NSArray)inferenceInputPixelBufferDescriptors;
- (NSArray)inferenceInputTensorDescriptors;
- (NSArray)inferenceOutputPixelBufferDescriptors;
- (NSArray)inferenceOutputTensorDescriptors;
- (NSArray)processedOutputPixelBufferDescriptors;
- (NSArray)processedOutputTensorDescriptors;
@end

@implementation ANSTInferencePostprocessor

- (ANSTInferencePostprocessor)init
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

- (ANSTInferencePostprocessor)initWithInferenceInputDescriptors:(id)a3 inferenceOutputDescriptors:(id)a4 processedOutputDescriptors:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v34.receiver = self;
  v34.super_class = ANSTInferencePostprocessor;
  v14 = [(ANSTInferencePostprocessor *)&v34 init];
  if (v14)
  {
    v15 = objc_msgSend_copy(v9, v12, v13);
    inferenceInputDescriptors = v14->_inferenceInputDescriptors;
    v14->_inferenceInputDescriptors = v15;

    v19 = objc_msgSend_copy(v10, v17, v18);
    inferenceOutputDescriptors = v14->_inferenceOutputDescriptors;
    v14->_inferenceOutputDescriptors = v19;

    v23 = objc_msgSend_copy(v11, v21, v22);
    processedOutputDescriptors = v14->_processedOutputDescriptors;
    v14->_processedOutputDescriptors = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inputTensorData = v14->_inputTensorData;
    v14->_inputTensorData = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inputPixelBuffers = v14->_inputPixelBuffers;
    v14->_inputPixelBuffers = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    outputTensorData = v14->_outputTensorData;
    v14->_outputTensorData = v29;

    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    outputPixelBuffers = v14->_outputPixelBuffers;
    v14->_outputPixelBuffers = v31;
  }

  return v14;
}

- (BOOL)_validateDescriptor:(id)a3 usingAllowedDescriptors:(id)a4 withError:(id *)a5
{
  v24[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_name(v7, v9, v10);
  v14 = v11;
  if (!v11 || !objc_msgSend_length(v11, v12, v13))
  {
    if (!a5)
    {
      goto LABEL_10;
    }

    v16 = MEMORY[0x277CCA9B8];
    v23[0] = *MEMORY[0x277CCA068];
    v23[1] = @"ANSTDescriptor";
    v24[0] = @"Descriptor name should not be empty.";
    v24[1] = v7;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v24, v23, 2);
    v17 = LABEL_9:;
    *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v18, @"ANSTErrorDomain", 10, v17);

    LOBYTE(a5) = 0;
    goto LABEL_10;
  }

  if ((objc_msgSend_containsObject_(v8, v12, v7) & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_10;
    }

    v16 = MEMORY[0x277CCA9B8];
    v21[0] = *MEMORY[0x277CCA068];
    v21[1] = @"ANSTDescriptor";
    v22[0] = @"Unrecognized descriptor is not allowed.";
    v22[1] = v7;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v22, v21, 2);
    goto LABEL_9;
  }

  LOBYTE(a5) = 1;
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
  return a5;
}

- (BOOL)_validateTensorData:(id)a3 forDescriptor:(id)a4 usingAllowedDescriptors:(id)a5 withError:(id *)a6
{
  v25[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (!objc_msgSend__validateDescriptor_usingAllowedDescriptors_withError_(self, v12, v11, a5, a6))
  {
    goto LABEL_7;
  }

  if (v10)
  {
    v15 = objc_msgSend_tensorDescriptor(v10, v13, v14);
    isEqual = objc_msgSend_isEqual_(v15, v16, v11);

    if ((isEqual & 1) == 0)
    {
      if (!a6)
      {
        goto LABEL_8;
      }

      v19 = MEMORY[0x277CCA9B8];
      v24[0] = *MEMORY[0x277CCA068];
      v24[1] = @"ANSTDescriptor";
      v25[0] = @"Tensor does not match its designated descriptor.";
      v25[1] = v11;
      v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v25, v24, 2);
      *a6 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"ANSTErrorDomain", 11, v20);

LABEL_7:
      LOBYTE(a6) = 0;
      goto LABEL_8;
    }
  }

  LOBYTE(a6) = 1;
LABEL_8:

  v22 = *MEMORY[0x277D85DE8];
  return a6;
}

- (BOOL)_validatePixelBuffer:(id)a3 forDescriptor:(id)a4 usingAllowedDescriptors:(id)a5 withError:(id *)a6
{
  v25[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (!objc_msgSend__validateDescriptor_usingAllowedDescriptors_withError_(self, v12, v11, a5, a6))
  {
    goto LABEL_7;
  }

  if (v10)
  {
    v15 = objc_msgSend_pixelBufferDescriptor(v10, v13, v14);
    isEqual = objc_msgSend_isEqual_(v15, v16, v11);

    if ((isEqual & 1) == 0)
    {
      if (!a6)
      {
        goto LABEL_8;
      }

      v19 = MEMORY[0x277CCA9B8];
      v24[0] = *MEMORY[0x277CCA068];
      v24[1] = @"ANSTDescriptor";
      v25[0] = @"Pixel buffer does not match its designated descriptor.";
      v25[1] = v11;
      v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v25, v24, 2);
      *a6 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"ANSTErrorDomain", 13, v20);

LABEL_7:
      LOBYTE(a6) = 0;
      goto LABEL_8;
    }
  }

  LOBYTE(a6) = 1;
LABEL_8:

  v22 = *MEMORY[0x277D85DE8];
  return a6;
}

- (BOOL)setInputTensorData:(id)a3 forInferenceInputDescriptor:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_inferenceInputTensorDescriptors(self, v10, v11);
  v14 = objc_msgSend__validateTensorData_forDescriptor_usingAllowedDescriptors_withError_(self, v13, v8, v9, v12, a5);

  if (v14)
  {
    inputTensorData = self->_inputTensorData;
    v18 = objc_msgSend_name(v9, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(inputTensorData, v19, v8, v18);
  }

  return v14;
}

- (BOOL)setInputPixelBuffer:(id)a3 forInferenceInputDescriptor:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_inferenceInputPixelBufferDescriptors(self, v10, v11);
  v14 = objc_msgSend__validatePixelBuffer_forDescriptor_usingAllowedDescriptors_withError_(self, v13, v8, v9, v12, a5);

  if (v14)
  {
    inputPixelBuffers = self->_inputPixelBuffers;
    v18 = objc_msgSend_name(v9, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(inputPixelBuffers, v19, v8, v18);
  }

  return v14;
}

- (BOOL)setInputTensorData:(id)a3 forInferenceOutputDescriptor:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_inferenceOutputTensorDescriptors(self, v10, v11);
  v14 = objc_msgSend__validateTensorData_forDescriptor_usingAllowedDescriptors_withError_(self, v13, v8, v9, v12, a5);

  if (v14)
  {
    inputTensorData = self->_inputTensorData;
    v18 = objc_msgSend_name(v9, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(inputTensorData, v19, v8, v18);
  }

  return v14;
}

- (BOOL)setInputPixelBuffer:(id)a3 forInferenceOutputDescriptor:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_inferenceOutputPixelBufferDescriptors(self, v10, v11);
  v14 = objc_msgSend__validatePixelBuffer_forDescriptor_usingAllowedDescriptors_withError_(self, v13, v8, v9, v12, a5);

  if (v14)
  {
    inputPixelBuffers = self->_inputPixelBuffers;
    v18 = objc_msgSend_name(v9, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(inputPixelBuffers, v19, v8, v18);
  }

  return v14;
}

- (BOOL)setOutputTensorData:(id)a3 forProcessedOutputDescriptor:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_processedOutputTensorDescriptors(self, v10, v11);
  v14 = objc_msgSend__validateTensorData_forDescriptor_usingAllowedDescriptors_withError_(self, v13, v8, v9, v12, a5);

  if (v14)
  {
    outputTensorData = self->_outputTensorData;
    v18 = objc_msgSend_name(v9, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(outputTensorData, v19, v8, v18);
  }

  return v14;
}

- (BOOL)setOutputPixelBuffer:(id)a3 forProcessedOutputDescriptor:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_processedOutputPixelBufferDescriptors(self, v10, v11);
  v14 = objc_msgSend__validatePixelBuffer_forDescriptor_usingAllowedDescriptors_withError_(self, v13, v8, v9, v12, a5);

  if (v14)
  {
    outputPixelBuffers = self->_outputPixelBuffers;
    v18 = objc_msgSend_name(v9, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(outputPixelBuffers, v19, v8, v18);
  }

  return v14;
}

- (BOOL)processWithError:(id *)a3
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE660], @"A concrete implementation of -processWithError: is required.", 0);
  objc_exception_throw(v3);
}

- (BOOL)resetWithError:(id *)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA068];
    v10[0] = @"This specific post processor has not implemented a reset yet. If you need a reset, please file a radar to 'ANST | Implementation'. ";
    v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v10, &v9, 1);
    *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v4, v6, @"ANSTErrorDomain", 0, v5);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (NSArray)inferenceInputTensorDescriptors
{
  v3 = objc_msgSend_inferenceInputDescriptors(self, a2, v2);
  v5 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v4, &unk_28431E228);
  v7 = objc_msgSend_filteredArrayUsingPredicate_(v3, v6, v5);

  return v7;
}

- (NSArray)inferenceInputPixelBufferDescriptors
{
  v3 = objc_msgSend_inferenceInputDescriptors(self, a2, v2);
  v5 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v4, &unk_28431E248);
  v7 = objc_msgSend_filteredArrayUsingPredicate_(v3, v6, v5);

  return v7;
}

- (NSArray)inferenceOutputTensorDescriptors
{
  v3 = objc_msgSend_inferenceOutputDescriptors(self, a2, v2);
  v5 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v4, &unk_28431E1C8);
  v7 = objc_msgSend_filteredArrayUsingPredicate_(v3, v6, v5);

  return v7;
}

- (NSArray)inferenceOutputPixelBufferDescriptors
{
  v3 = objc_msgSend_inferenceOutputDescriptors(self, a2, v2);
  v5 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v4, &unk_28431E1A8);
  v7 = objc_msgSend_filteredArrayUsingPredicate_(v3, v6, v5);

  return v7;
}

- (NSArray)processedOutputTensorDescriptors
{
  v3 = objc_msgSend_processedOutputDescriptors(self, a2, v2);
  v5 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v4, &unk_28431E268);
  v7 = objc_msgSend_filteredArrayUsingPredicate_(v3, v6, v5);

  return v7;
}

- (NSArray)processedOutputPixelBufferDescriptors
{
  v3 = objc_msgSend_processedOutputDescriptors(self, a2, v2);
  v5 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v4, &unk_28431E288);
  v7 = objc_msgSend_filteredArrayUsingPredicate_(v3, v6, v5);

  return v7;
}

- (BOOL)bindInputsToNetwork:(id)a3 error:(id *)a4
{
  v87 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v9 = objc_msgSend_inferenceInputTensorDescriptors(self, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v79, v86, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v80;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v80 != v15)
      {
        objc_enumerationMutation(v9);
      }

      v17 = *(*(&v79 + 1) + 8 * v16);
      v18 = objc_msgSend_name(v17, v12, v13);
      v20 = objc_msgSend_tensorSurfaceForNetworkInputNamed_error_(v6, v19, v18, a4);

      if (!v20)
      {
        break;
      }

      v22 = objc_msgSend_setInputTensorData_forInferenceInputDescriptor_withError_(self, v21, v20, v17, a4);

      if (!v22)
      {
        goto LABEL_39;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v79, v86, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v9 = objc_msgSend_inferenceOutputTensorDescriptors(self, v23, v24);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v25, &v75, v85, 16);
    if (v26)
    {
      v29 = v26;
      v30 = *v76;
LABEL_12:
      v31 = 0;
      while (1)
      {
        if (*v76 != v30)
        {
          objc_enumerationMutation(v9);
        }

        v32 = *(*(&v75 + 1) + 8 * v31);
        v33 = objc_msgSend_name(v32, v27, v28);
        v35 = objc_msgSend_tensorSurfaceForNetworkOutputNamed_error_(v6, v34, v33, a4);

        if (!v35)
        {
          break;
        }

        v22 = objc_msgSend_setInputTensorData_forInferenceOutputDescriptor_withError_(self, v36, v35, v32, a4);

        if (!v22)
        {
          goto LABEL_39;
        }

        if (v29 == ++v31)
        {
          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v27, &v75, v85, 16);
          if (v29)
          {
            goto LABEL_12;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v9 = objc_msgSend_inferenceInputPixelBufferDescriptors(self, v37, v38);
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v39, &v71, v84, 16);
      if (v40)
      {
        v43 = v40;
        v44 = *v72;
LABEL_21:
        v45 = 0;
        while (1)
        {
          if (*v72 != v44)
          {
            objc_enumerationMutation(v9);
          }

          v46 = *(*(&v71 + 1) + 8 * v45);
          v47 = objc_msgSend_name(v46, v41, v42);
          v49 = objc_msgSend_pixelBufferForNetworkInputNamed_error_(v6, v48, v47, a4);

          if (!v49)
          {
            break;
          }

          v22 = objc_msgSend_setInputPixelBuffer_forInferenceInputDescriptor_withError_(self, v50, v49, v46, a4);

          if (!v22)
          {
            goto LABEL_39;
          }

          if (v43 == ++v45)
          {
            v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v41, &v71, v84, 16);
            if (v43)
            {
              goto LABEL_21;
            }

            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v9 = objc_msgSend_inferenceOutputPixelBufferDescriptors(self, v51, v52, 0);
        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v53, &v67, v83, 16);
        if (!v54)
        {
          LOBYTE(v22) = 1;
          goto LABEL_39;
        }

        v57 = v54;
        v58 = *v68;
LABEL_30:
        v59 = 0;
        while (1)
        {
          if (*v68 != v58)
          {
            objc_enumerationMutation(v9);
          }

          v60 = *(*(&v67 + 1) + 8 * v59);
          v61 = objc_msgSend_name(v60, v55, v56);
          v63 = objc_msgSend_pixelBufferForNetworkOutputNamed_error_(v6, v62, v61, a4);

          if (!v63)
          {
            break;
          }

          v22 = objc_msgSend_setInputPixelBuffer_forInferenceOutputDescriptor_withError_(self, v64, v63, v60, a4);

          if (!v22)
          {
            goto LABEL_39;
          }

          if (v57 == ++v59)
          {
            v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v55, &v67, v83, 16);
            LOBYTE(v22) = 1;
            if (v57)
            {
              goto LABEL_30;
            }

            goto LABEL_39;
          }
        }
      }
    }
  }

  LOBYTE(v22) = 0;
LABEL_39:

  v65 = *MEMORY[0x277D85DE8];
  return v22;
}

@end