@interface ANSTFaceAttributeAlgorithm
- (ANSTFaceAttributeAlgorithm)initWithConfiguration:(id)configuration;
- (BOOL)_allocateAndBindInputBuffer:(id *)buffer;
- (BOOL)_allocateAndBindOutputBuffers:(id *)buffers;
- (BOOL)_initializePixelTransferSession:(id *)session;
- (BOOL)_initializePostProcessor:(id *)processor;
- (BOOL)_loadE5ExecutionStreamOperation:(id *)operation;
- (BOOL)_updateFaceAttributesOfAcResult:(id *)result inputImage:(__CVBuffer *)image error:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)updateFaceAttributesOfAcResult:(id *)result inputImage:(__CVBuffer *)image error:(id *)error;
- (void)_destroyAcHandles;
- (void)_releaseInputBuffer;
- (void)_releaseOutputBuffers;
- (void)_releasePixelTransferSession;
- (void)dealloc;
@end

@implementation ANSTFaceAttributeAlgorithm

- (ANSTFaceAttributeAlgorithm)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = ANSTFaceAttributeAlgorithm;
  v6 = [(ANSTAlgorithm *)&v9 initWithConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v7->_prepared = 0;
    v7->_es = 0;
    v7->_esop = 0;
  }

  return v7;
}

- (void)dealloc
{
  objc_msgSend__destroyAcHandles(self, a2, v2);
  objc_msgSend__releaseInputBuffer(self, v4, v5);
  objc_msgSend__releaseOutputBuffers(self, v6, v7);
  objc_msgSend__releasePixelTransferSession(self, v8, v9);
  if (self->_esop)
  {
    v10 = e5rt_execution_stream_operation_release();
    if (v10)
    {
      v11 = v10;
      last_error_message = e5rt_get_last_error_message();
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&_esop)", v11, last_error_message);
      v15 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22E65AA00();
      }
    }

    self->_esop = 0;
  }

  if (self->_es)
  {
    v16 = e5rt_execution_stream_release();
    if (v16)
    {
      v17 = v16;
      v18 = e5rt_get_last_error_message();
      v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&_es)", v17, v18);
      v21 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_22E65AA00();
      }
    }

    self->_es = 0;
  }

  v22.receiver = self;
  v22.super_class = ANSTFaceAttributeAlgorithm;
  [(ANSTFaceAttributeAlgorithm *)&v22 dealloc];
}

- (BOOL)prepareWithError:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (self->_prepared)
  {
    LOBYTE(E5ExecutionStreamOperation) = 1;
    goto LABEL_21;
  }

  E5ExecutionStreamOperation = objc_msgSend__initializePostProcessor_(self, a2, error);
  if (!E5ExecutionStreamOperation)
  {
    goto LABEL_21;
  }

  if (!self->_es)
  {
    v20 = e5rt_execution_stream_create();
    if (v20)
    {
      v21 = v20;
      last_error_message = e5rt_get_last_error_message();
      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&_es)", v21, last_error_message);
      v24 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_22E65AA74();
      }

      if (!error)
      {
        goto LABEL_20;
      }

      v19 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA068];
      v33[0] = v16;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v33, &v32, 1);
      v26 = LABEL_19:;
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v19, v27, @"ANSTErrorDomain", 5, v26);

LABEL_20:
      LOBYTE(E5ExecutionStreamOperation) = 0;
      goto LABEL_21;
    }
  }

  E5ExecutionStreamOperation = objc_msgSend__loadE5ExecutionStreamOperation_(self, v6, error);
  if (E5ExecutionStreamOperation)
  {
    E5ExecutionStreamOperation = objc_msgSend__allocateAndBindInputBuffer_(self, v7, error);
    if (E5ExecutionStreamOperation)
    {
      E5ExecutionStreamOperation = objc_msgSend__allocateAndBindOutputBuffers_(self, v8, error);
      if (E5ExecutionStreamOperation)
      {
        E5ExecutionStreamOperation = objc_msgSend__initializePixelTransferSession_(self, v9, error);
        if (E5ExecutionStreamOperation)
        {
          es = self->_es;
          esop = self->_esop;
          v12 = e5rt_execution_stream_encode_operation();
          if (!v12)
          {
            LOBYTE(E5ExecutionStreamOperation) = 1;
            self->_prepared = 1;
            goto LABEL_21;
          }

          v13 = v12;
          v14 = e5rt_get_last_error_message();
          v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%s returned error code %u (%s)", "e5rt_execution_stream_encode_operation(_es, _esop)", v13, v14);
          v17 = _ANSTLoggingGetOSLogForCategoryANSTKit();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_22E65AA74();
          }

          if (!error)
          {
            goto LABEL_20;
          }

          v19 = MEMORY[0x277CCA9B8];
          v30 = *MEMORY[0x277CCA068];
          v31 = v16;
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, &v31, &v30, 1);
          goto LABEL_19;
        }
      }
    }
  }

LABEL_21:
  v28 = *MEMORY[0x277D85DE8];
  return E5ExecutionStreamOperation;
}

- (BOOL)updateFaceAttributesOfAcResult:(id *)result inputImage:(__CVBuffer *)image error:(id *)error
{
  v9 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ANSTFaceAttributeAlgorithm", &unk_22E663F87, buf, 2u);
  }

  updated = objc_msgSend__updateFaceAttributesOfAcResult_inputImage_error_(self, v11, result, image, error);
  v13 = os_signpost_id_make_with_pointer(v9, self);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_END, v13, "ANSTFaceAttributeAlgorithm", &unk_22E663F87, v15, 2u);
  }

  return updated;
}

- (BOOL)_updateFaceAttributesOfAcResult:(id *)result inputImage:(__CVBuffer *)image error:(id *)error
{
  v82[1] = *MEMORY[0x277D85DE8];
  if (!self->_prepared)
  {
    v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Need to call [prepareWithError:] before binding input pixel buffer.", image);
    v30 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AAE8();
    }

    if (error)
    {
      v32 = MEMORY[0x277CCA9B8];
      v81 = *MEMORY[0x277CCA068];
      v82[0] = v29;
      v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v82, &v81, 1);
      v35 = objc_msgSend_errorWithDomain_code_userInfo_(v32, v34, @"ANSTErrorDomain", 3, v33);
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  CVPixelBufferLockBaseAddress(image, 1uLL);
  v9 = 0;
  input_face_buffers = self->_input_face_buffers;
  do
  {
    CVPixelBufferLockBaseAddress(input_face_buffers[v9++], 0);
  }

  while (v9 != 10);
  LODWORD(var2) = result->var2;
  errorCopy = error;
  resultCopy = result;
  if (!var2)
  {
    goto LABEL_10;
  }

  v12 = 0;
  v13 = *MEMORY[0x277CE28B8];
  p_var3 = &result->var3[0].var3.var3;
  do
  {
    v15 = *(p_var3 - 3);
    v16 = *(p_var3 - 2);
    v17 = *(p_var3 - 1);
    v18 = *p_var3;
    v83.origin.x = v15;
    v83.origin.y = v16;
    v83.size.width = v17;
    v83.size.height = v18;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v83);
    if (VTSessionSetProperty(self->_pixelTransferSession, v13, DictionaryRepresentation))
    {
      v36 = MEMORY[0x277CCACA8];
      v37 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"[X %f, Y %f, W %f, H %f]", *&v15, *&v16, *&v17, *&v18);
      v39 = objc_msgSend_stringWithFormat_(v36, v38, @"Failed to configure VTPixelTransferSession to crop face at index %d bbox %@", v12, v37);

      v40 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      error = errorCopy;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_22E65AAE8();
      }

      if (errorCopy)
      {
        v42 = MEMORY[0x277CCA9B8];
        v79 = *MEMORY[0x277CCA068];
        v80 = v39;
        v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, &v80, &v79, 1);
        objc_msgSend_errorWithDomain_code_userInfo_(v42, v44, @"ANSTErrorDomain", 4, v43);
        *errorCopy = error = errorCopy;
      }

      goto LABEL_28;
    }

    CFRelease(DictionaryRepresentation);
    if (VTPixelTransferSessionTransferImage(self->_pixelTransferSession, image, input_face_buffers[v12]))
    {
      v45 = MEMORY[0x277CCACA8];
      v46 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"[X %f, Y %f, W %f, H %f]", *&v15, *&v16, *&v17, *&v18);
      v48 = objc_msgSend_stringWithFormat_(v45, v47, @"Failed to pixel transfer face crop at index %d bbox %@", v12, v46);

      v49 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      error = errorCopy;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_22E65AAE8();
      }

      if (errorCopy)
      {
        v51 = MEMORY[0x277CCA9B8];
        v77 = *MEMORY[0x277CCA068];
        v78 = v48;
        v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v50, &v78, &v77, 1);
        objc_msgSend_errorWithDomain_code_userInfo_(v51, v53, @"ANSTErrorDomain", 4, v52);
        *errorCopy = error = errorCopy;
      }

LABEL_28:
      v28 = 0;
      goto LABEL_29;
    }

    ++v12;
    var2 = result->var2;
    p_var3 += 702;
  }

  while (v12 < var2);
  if (var2 > 9)
  {
    goto LABEL_13;
  }

LABEL_10:
  v22 = &self->_input_face_buffers[var2];
  v23 = var2 + 1;
  do
  {
    BaseAddress = CVPixelBufferGetBaseAddress(*v22);
    Height = CVPixelBufferGetHeight(*v22);
    BytesPerRow = CVPixelBufferGetBytesPerRow(*v22);
    bzero(BaseAddress, BytesPerRow * Height);
    ++v22;
  }

  while (v23++ != 10);
LABEL_13:
  v28 = 1;
  error = errorCopy;
LABEL_29:
  CVPixelBufferUnlockBaseAddress(image, 1uLL);
  for (i = 0; i != 10; ++i)
  {
    CVPixelBufferUnlockBaseAddress(input_face_buffers[i], 0);
  }

  if (!v28)
  {
    goto LABEL_44;
  }

  es = self->_es;
  v56 = e5rt_execution_stream_execute_sync();
  if (v56)
  {
    last_error_message = e5rt_get_last_error_message();
    v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v58, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(_es)", v56, last_error_message);
    v59 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AAE8();
    }

    if (error)
    {
      v61 = MEMORY[0x277CCA9B8];
      v75 = *MEMORY[0x277CCA068];
      v76 = v29;
      v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, &v76, &v75, 1);
      v35 = objc_msgSend_errorWithDomain_code_userInfo_(v61, v62, @"ANSTErrorDomain", 5, v33);
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  self->_detControl.originalImageWidth = CVPixelBufferGetWidth(image);
  self->_detControl.originalImageHeight = CVPixelBufferGetHeight(image);
  v63 = AcAttrPostProcessNetOutputs(self->_det, &self->_detControl, &self->_attrNetOutputBuffers, self->_detState.data, &resultCopy->var0.var0);
  if (v63)
  {
    v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v64, @"%s returned error code %u", "AcAttrPostProcessNetOutputs(_det, &_detControl, &_attrNetOutputBuffers, &_detState, acResult)", v63);
    v65 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AAE8();
    }

    if (error)
    {
      v67 = MEMORY[0x277CCA9B8];
      v73 = *MEMORY[0x277CCA068];
      v74 = v29;
      v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v66, &v74, &v73, 1);
      v35 = objc_msgSend_errorWithDomain_code_userInfo_(v67, v68, @"ANSTErrorDomain", 3, v33);
LABEL_42:
      *error = v35;
    }

LABEL_43:

LABEL_44:
    result = 0;
  }

  else
  {
    result = 1;
  }

  v70 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_initializePostProcessor:(id *)processor
{
  v40[1] = *MEMORY[0x277D85DE8];
  if (self->_det)
  {
    goto LABEL_2;
  }

  *&self->_detControl.originalImageWidth = 0u;
  *self->_detControl.imagePyramidInfo.heights = 0u;
  *&self->_detControl.imagePyramidInfo.rowBytes[0][0] = 0u;
  *&self->_detControl.imagePyramidInfo.rowBytes[2][0] = 0u;
  self->_detControl.imageOrientation = 0;
  *self->_detControl.imagePyramidInfo.widths = 0u;
  widths = self->_detControl.imagePyramidInfo.widths;
  *&self->_detControl.imagePyramidInfo.format = xmmword_22E661CD0;
  *self->_detControl.imagePyramidInfo.heights = 0x156000002ACLL;
  self->_detControl.imagePyramidInfo.widths[2] = 288;
  self->_detControl.imagePyramidInfo.heights[2] = 171;
  v7 = &self->_detControl.imagePyramidInfo.rowBytes[0][1];
  v8 = -1;
  do
  {
    v9 = *widths++;
    *(v7 - 1) = (v9 + 63) & 0xFFFFFFC0;
    *v7 = ((v9 >> 1) + 63) & 0xFFFFFFC0;
    ++v8;
    v7 += 2;
  }

  while (v8 < 2);
  self->_detControl.imageOrientation = 0;
  v34 = 0;
  v10 = AcAttrCreate(&self->_det, &v34, &self->_detState);
  if (v10)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s returned error code %u", "AcAttrCreate(&_det, &detConfig, &_detState)", v10);
    v13 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AB5C();
    }

    if (!processor)
    {
      goto LABEL_21;
    }

    v15 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA068];
    v40[0] = v12;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v40, &v39, 1);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"ANSTErrorDomain", 3, v16);
LABEL_20:
    *processor = v18;

LABEL_21:
    objc_msgSend__destroyAcHandles(self, v31, v32);
    result = 0;
    goto LABEL_22;
  }

  Params = AcAttrGetParams(self->_det, &self->_detState, &self->_detParams);
  if (Params)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%s returned error code %u", "AcAttrGetParams(_det, &_detState, &_detParams)", Params);
    v21 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AB5C();
    }

    if (!processor)
    {
      goto LABEL_21;
    }

    v23 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA068];
    v38 = v12;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, &v38, &v37, 1);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v23, v24, @"ANSTErrorDomain", 3, v16);
    goto LABEL_20;
  }

  v25 = AcAttrStart(self->_det);
  if (v25)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%s returned error code %u", "AcAttrStart(_det, &_detState)", v25);
    v27 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AB5C();
    }

    if (!processor)
    {
      goto LABEL_21;
    }

    v29 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA068];
    v36 = v12;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v36, &v35, 1);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v29, v30, @"ANSTErrorDomain", 3, v16);
    goto LABEL_20;
  }

LABEL_2:
  result = 1;
LABEL_22:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_destroyAcHandles
{
  p_detState = &self->_detState;
  v4 = AcAttrStop(self->_det);
  if (v4)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%s returned error code %u", "AcAttrStop(_det, &_detState)", v4);
    v7 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22E65ABD0();
    }
  }

  det = self->_det;
  if (det)
  {
    AcAttrDestroy(det);
    self->_det = 0;
  }

  bzero(&self->_detParams, 0x528uLL);
  *p_detState->data = 0;
  *&self->_detState.data[8] = 0;
  *&self->_detState.data[16] = 0;
  *&self->_detControl.originalImageWidth = 0u;
  *self->_detControl.imagePyramidInfo.widths = 0u;
  *self->_detControl.imagePyramidInfo.heights = 0u;
  *&self->_detControl.imagePyramidInfo.rowBytes[0][0] = 0u;
  *&self->_detControl.imagePyramidInfo.rowBytes[2][0] = 0u;
  self->_detControl.imageOrientation = 0;
}

- (BOOL)_loadE5ExecutionStreamOperation:(id *)operation
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (self->_esop)
  {
    v3 = 1;
  }

  else
  {
    v5 = MEMORY[0x277CCA8D8];
    v6 = objc_opt_class();
    v8 = objc_msgSend_bundleForClass_(v5, v7, v6);
    v10 = objc_msgSend_URLForResource_withExtension_subdirectory_(v8, v9, @"anst_face_attribute", @"mlmodelc", @"Models");
    v12 = objc_msgSend_URLByAppendingPathComponent_(v10, v11, @"model.bundle");

    objc_msgSend_UTF8String(@"anst_face_attr_inference", v13, v14);
    v17 = objc_msgSend_relativePath(v12, v15, v16);
    v18 = v17;
    objc_msgSend_UTF8String(v18, v19, v20);
    objc_msgSend_UTF8String(@"main", v21, v22);
    precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

    v3 = precompiled_compute_operation == 0;
    if (precompiled_compute_operation)
    {
      last_error_message = e5rt_get_last_error_message();
      v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_create_precompiled_compute_operation(&_esop, opName.UTF8String, modelURL.relativePath.UTF8String, opFuncName.UTF8String, 1, true)", precompiled_compute_operation, last_error_message);
      v27 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_22E65AC44();
      }

      if (operation)
      {
        v29 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CCA068];
        v35[0] = v26;
        v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v35, &v34, 1);
        *operation = objc_msgSend_errorWithDomain_code_userInfo_(v29, v31, @"ANSTErrorDomain", 5, v30);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_allocateAndBindInputBuffer:(id *)buffer
{
  v50[1] = *MEMORY[0x277D85DE8];
  so_inputs_array = self->_so_inputs_array;
  if (self->_so_inputs_array[0])
  {
LABEL_2:
    result = 1;
  }

  else
  {
    input_face_buffers = self->_input_face_buffers;
    v8 = -10;
    v42 = *MEMORY[0x277CCA068];
    while (1)
    {
      PixelBufferWithPixelFormat_width_height_handle = objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, a2, 1111970369, 128, 128, input_face_buffers);
      if (PixelBufferWithPixelFormat_width_height_handle)
      {
        break;
      }

      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"face%d", v8 + 10);
      CVPixelBufferGetIOSurface(*input_face_buffers);
      v12 = e5rt_surface_object_create_from_iosurface();
      if (v12 || (esop = self->_esop, v14 = v11, objc_msgSend_UTF8String(v14, v15, v16), v12 = e5rt_execution_stream_operation_retain_input_port(), v12) || (v17 = *so_inputs_array, v12 = e5rt_io_port_bind_surface_object(), v12))
      {
        v18 = v12;
        last_error_message = e5rt_get_last_error_message();
        v20 = MEMORY[0x277CCACA8];
        v21 = v11;
        v24 = objc_msgSend_UTF8String(v21, v22, v23);
        v26 = objc_msgSend_stringWithFormat_(v20, v25, @"Failed to bind input port named '%s' (code %u: %s)", v24, v18, last_error_message);
        v27 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v46 = "[ANSTFaceAttributeAlgorithm _allocateAndBindInputBuffer:]";
          v47 = 2114;
          v48 = v26;
          _os_log_error_impl(&dword_22E5D5000, v27, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
        }

        if (buffer)
        {
          v29 = MEMORY[0x277CCA9B8];
          v43 = v42;
          v44 = v26;
          v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v44, &v43, 1);
          *buffer = objc_msgSend_errorWithDomain_code_userInfo_(v29, v31, @"ANSTErrorDomain", 5, v30);
        }

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      if (!v32)
      {
        goto LABEL_23;
      }

      ++so_inputs_array;
      ++input_face_buffers;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_2;
      }
    }

    v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"Failed to create CVPixelBuffer for face input at index %d (CVReturn %d)", v8 + 10, PixelBufferWithPixelFormat_width_height_handle);
    v36 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_22E65ACB8();
    }

    if (buffer)
    {
      v38 = MEMORY[0x277CCA9B8];
      v49 = v42;
      v50[0] = v35;
      v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v50, &v49, 1);
      *buffer = objc_msgSend_errorWithDomain_code_userInfo_(v38, v40, @"ANSTErrorDomain", 5, v39);
    }

LABEL_23:
    objc_msgSend__releaseInputBuffer(self, a2, v33);
    result = 0;
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_releaseInputBuffer
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = 10;
  do
  {
    CVPixelBufferRelease(self->_input_face_buffers[0]);
    self->_input_face_buffers[0] = 0;
    v4 = e5rt_surface_object_release();
    if (v4)
    {
      v5 = v4;
      last_error_message = e5rt_get_last_error_message();
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_surface_object_release(&(_so_inputs_array[i]))", v5, last_error_message);
      v9 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v12 = "[ANSTFaceAttributeAlgorithm _releaseInputBuffer]";
        v13 = 2114;
        v14 = v8;
        _os_log_error_impl(&dword_22E5D5000, v9, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
      }
    }

    self->_so_inputs_array[0] = 0;
    self = (self + 8);
    --v3;
  }

  while (v3);
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_allocateAndBindOutputBuffers:(id *)buffers
{
  v71 = *MEMORY[0x277D85DE8];
  if (self->_bo_outputs_array[0])
  {
LABEL_2:
    result = 1;
    goto LABEL_3;
  }

  bo_outputs_array = self->_bo_outputs_array;
  v7 = 0;
  netOutputNames = self->_detParams.netOutputNames;
  netOutputHeights = self->_detParams.netOutputHeights;
  netOutputWidths = self->_detParams.netOutputWidths;
  netOutputChannels = self->_detParams.netOutputChannels;
  v59 = *MEMORY[0x277CCA068];
  selfCopy = self;
  while (1)
  {
    esop = self->_esop;
    v11 = e5rt_execution_stream_operation_retain_output_port();
    if (!v11)
    {
      v11 = e5rt_io_port_retain_tensor_desc();
      if (!v11)
      {
        v12 = &bo_outputs_array[v7];
        v11 = e5rt_tensor_desc_alloc_buffer_object();
        if (!v11)
        {
          v13 = *v12;
          v11 = e5rt_io_port_bind_buffer_object();
          if (!v11)
          {
            break;
          }
        }
      }
    }

    v14 = v11;
    last_error_message = e5rt_get_last_error_message();
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"Failed to bind output port named '%s' (code %u: %s)", netOutputNames[v7], v14, last_error_message);
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "[ANSTFaceAttributeAlgorithm _allocateAndBindOutputBuffers:]";
      v69 = 2114;
      v70 = v17;
      _os_log_error_impl(&dword_22E5D5000, v18, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
    }

    if (buffers)
    {
      v20 = MEMORY[0x277CCA9B8];
      v66 = v59;
      v67 = v17;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v67, &v66, 1);
      *buffers = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"ANSTErrorDomain", 5, v21);
    }

    v25 = 0;
LABEL_14:
    if ((v25 & 1) == 0)
    {
      objc_msgSend__releaseOutputBuffers(self, v23, v24);
      goto LABEL_24;
    }

    ++v7;
    selfCopy = (selfCopy + 24);
    if (v7 == 7)
    {
      goto LABEL_2;
    }
  }

  *buf = 0;
  v26 = *v12;
  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    v36 = iosurface;
    v37 = e5rt_get_last_error_message();
    v39 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v38, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_bo_outputs_array[outBufInd], &surface)", v36, v37);
    v40 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AD2C();
    }

    if (!buffers)
    {
      goto LABEL_38;
    }

    v42 = MEMORY[0x277CCA9B8];
    v64 = v59;
    v65 = v39;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, &v65, &v64, 1);
    goto LABEL_37;
  }

  BaseAddress = IOSurfaceGetBaseAddress(*buf);
  shape = e5rt_tensor_desc_get_shape();
  if (shape)
  {
    v43 = shape;
    v44 = e5rt_get_last_error_message();
    v39 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v45, @"%s returned error code %u (%s)", "e5rt_tensor_desc_get_shape(desc, &rank, &shape)", v43, v44);
    v46 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AD2C();
    }

    if (!buffers)
    {
      goto LABEL_38;
    }

    v42 = MEMORY[0x277CCA9B8];
    v62 = v59;
    v63 = v39;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, &v63, &v62, 1);
    v53 = LABEL_37:;
    *buffers = objc_msgSend_errorWithDomain_code_userInfo_(v42, v54, @"ANSTErrorDomain", 5, v53);

    goto LABEL_38;
  }

  strides = e5rt_tensor_desc_get_strides();
  if (!strides)
  {
    v31 = netOutputWidths[v7];
    v32 = MEMORY[0x10];
    v33 = netOutputChannels[v7] * netOutputHeights[v7];
    v34 = -1680;
    do
    {
      v35 = &selfCopy->_attrNetOutputBuffers + v34;
      *(v35 + 240) = BaseAddress;
      *(v35 + 483) = v31;
      *(v35 + 482) = v33;
      *(v35 + 485) = 6;
      BaseAddress += (v33 * v32);
      *(v35 + 484) = v32;
      v34 += 168;
    }

    while (v34);
    v25 = 1;
    goto LABEL_14;
  }

  v48 = strides;
  v49 = e5rt_get_last_error_message();
  v39 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v50, @"%s returned error code %u (%s)", "e5rt_tensor_desc_get_strides(desc, &rank, &strides)", v48, v49);
  v51 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    sub_22E65AD2C();
  }

  if (buffers)
  {
    v42 = MEMORY[0x277CCA9B8];
    v60 = v59;
    v61 = v39;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, &v61, &v60, 1);
    goto LABEL_37;
  }

LABEL_38:

LABEL_24:
  result = 0;
LABEL_3:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_releaseOutputBuffers
{
  v16 = *MEMORY[0x277D85DE8];
  bo_outputs_array = self->_bo_outputs_array;
  v4 = 7;
  do
  {
    if (*bo_outputs_array)
    {
      v5 = e5rt_buffer_object_release();
      if (v5)
      {
        v6 = v5;
        last_error_message = e5rt_get_last_error_message();
        v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&(_bo_outputs_array[i]))", v6, last_error_message);
        v10 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v13 = "[ANSTFaceAttributeAlgorithm _releaseOutputBuffers]";
          v14 = 2114;
          v15 = v9;
          _os_log_error_impl(&dword_22E5D5000, v10, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
        }
      }

      *bo_outputs_array = 0;
    }

    ++bo_outputs_array;
    --v4;
  }

  while (v4);
  bzero(&self->_attrNetOutputBuffers, 0x780uLL);
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_initializePixelTransferSession:(id *)session
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (!self->_pixelTransferSession && (VTPixelTransferSessionCreate(0, &self->_pixelTransferSession) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A78]) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28A8], *MEMORY[0x277CBED28])))
  {
    v6 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22E65ADA0(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    if (session)
    {
      v16 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA068];
      v21[0] = @"Failed to prepare VTPixelTransferSession";
      v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v21, &v20, 1);
      *session = objc_msgSend_errorWithDomain_code_userInfo_(v16, v18, @"ANSTErrorDomain", 3, v17);
    }

    objc_msgSend__releasePixelTransferSession(self, v14, v15);
    result = 0;
  }

  else
  {
    result = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_releasePixelTransferSession
{
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(self->_pixelTransferSession);
    CFRelease(pixelTransferSession);
  }

  self->_pixelTransferSession = 0;
}

@end