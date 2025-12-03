@interface ANSTExclaveAlgorithmV1
- (ANSTExclaveAlgorithmV1)initWithConfiguration:(id)configuration;
- (BOOL)_allocateAndBindOutputBuffers:(id *)buffers;
- (BOOL)_initializePostProcessor:(id *)processor;
- (BOOL)_loadE5ExecutionStreamOperation:(id *)operation;
- (BOOL)bindNetworkInputPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (id)_executeInferenceWithFocalLength:(float)length originalInputDimension:(CGSize)dimension error:(id *)error;
- (id)executeInferenceWithFocalLength:(float)length originalInputDimension:(CGSize)dimension error:(id *)error;
- (void)_destroyAcHandles;
- (void)_releaseOutputBuffers;
- (void)dealloc;
@end

@implementation ANSTExclaveAlgorithmV1

- (ANSTExclaveAlgorithmV1)initWithConfiguration:(id)configuration
{
  v30 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v27.receiver = self;
  v27.super_class = ANSTExclaveAlgorithmV1;
  v6 = [(ANSTExclaveAlgorithm *)&v27 initWithConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    if (objc_msgSend_networkResolution(v7->_configuration, v8, v9))
    {
      if (objc_msgSend_networkResolution(v7->_configuration, v10, v11) == 1)
      {
        v14 = 1024;
        v15 = 768;
      }

      else
      {
        if (objc_msgSend_networkResolution(v7->_configuration, v12, v13) != 2)
        {
          v24 = 0;
          goto LABEL_12;
        }

        v15 = 832;
        v14 = 832;
      }
    }

    else
    {
      v14 = 512;
      v15 = 384;
    }

    v16 = [ANSTPixelBufferDescriptor alloc];
    v18 = objc_msgSend_initWithName_width_height_pixelFormatType_pixelBufferAttributes_error_(v16, v17, @"input_image", v14, v15, 1278226488, 0, 0);
    networkInputImageDescriptor = v7->_networkInputImageDescriptor;
    v7->_networkInputImageDescriptor = v18;

    v7->_es = 0;
    v7->_esop = 0;
    *v7->_bo_outputs_array = 0u;
    *&v7->_bo_outputs_array[2] = 0u;
    *&v7->_bo_outputs_array[4] = 0u;
    *&v7->_bo_outputs_array[6] = 0u;
    *&v7->_bo_outputs_array[8] = 0u;
    *&v7->_bmBuffer_outputs[0].data = 0u;
    *&v7->_bmBuffer_outputs[0].rowBytes = 0u;
    *&v7->_bmBuffer_outputs[1].height = 0u;
    *&v7->_bmBuffer_outputs[2].data = 0u;
    *&v7->_bmBuffer_outputs[2].rowBytes = 0u;
    *&v7->_bmBuffer_outputs[3].height = 0u;
    *&v7->_bmBuffer_outputs[4].data = 0u;
    *&v7->_bmBuffer_outputs[4].rowBytes = 0u;
    *&v7->_bmBuffer_outputs[5].height = 0u;
    *&v7->_bmBuffer_outputs[6].data = 0u;
    *&v7->_bmBuffer_outputs[6].rowBytes = 0u;
    *&v7->_bmBuffer_outputs[7].height = 0u;
    *&v7->_bmBuffer_outputs[8].data = 0u;
    *&v7->_bmBuffer_outputs[8].rowBytes = 0u;
    *&v7->_bmBuffer_outputs[9].height = 0u;
    v7->_prepared = 0;
    v7->_inputPixelBufferIsBound = 0;
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_msgSend_description(v7->_configuration, v21, v22);
      *buf = 138543362;
      v29 = v23;
      _os_log_impl(&dword_22E5D5000, v20, OS_LOG_TYPE_DEFAULT, "ANSTExclaveAlgorithmV1 initialized with config %{public}@.", buf, 0xCu);
    }
  }

  v24 = v7;
LABEL_12:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)dealloc
{
  objc_msgSend__destroyAcHandles(self, a2, v2);
  objc_msgSend__releaseOutputBuffers(self, v4, v5);
  if (self->_esop)
  {
    v6 = e5rt_execution_stream_operation_release();
    if (v6)
    {
      v7 = v6;
      last_error_message = e5rt_get_last_error_message();
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&_esop)", v7, last_error_message);
      v11 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_22E657468();
      }
    }

    self->_esop = 0;
  }

  if (self->_es)
  {
    v12 = e5rt_execution_stream_release();
    if (v12)
    {
      v13 = v12;
      v14 = e5rt_get_last_error_message();
      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&_es)", v13, v14);
      v17 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_22E657468();
      }
    }

    self->_es = 0;
  }

  v18.receiver = self;
  v18.super_class = ANSTExclaveAlgorithmV1;
  [(ANSTExclaveAlgorithmV1 *)&v18 dealloc];
}

- (BOOL)prepareWithError:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (self->_prepared)
  {
    LOBYTE(E5ExecutionStreamOperation) = 1;
  }

  else
  {
    E5ExecutionStreamOperation = objc_msgSend__initializePostProcessor_(self, a2, error);
    if (E5ExecutionStreamOperation)
    {
      if (self->_es || (v8 = e5rt_execution_stream_create(), !v8))
      {
        E5ExecutionStreamOperation = objc_msgSend__loadE5ExecutionStreamOperation_(self, v6, error);
        if (E5ExecutionStreamOperation)
        {
          E5ExecutionStreamOperation = objc_msgSend__allocateAndBindOutputBuffers_(self, v7, error);
          if (E5ExecutionStreamOperation)
          {
            LOBYTE(E5ExecutionStreamOperation) = 1;
            self->_prepared = 1;
          }
        }
      }

      else
      {
        v9 = v8;
        last_error_message = e5rt_get_last_error_message();
        v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&_es)", v9, last_error_message);
        v13 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_22E6574DC();
        }

        if (error)
        {
          v15 = MEMORY[0x277CCA9B8];
          v20 = *MEMORY[0x277CCA068];
          v21[0] = v12;
          v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v21, &v20, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"ANSTErrorDomain", 5, v16);
        }

        LOBYTE(E5ExecutionStreamOperation) = 0;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return E5ExecutionStreamOperation;
}

- (BOOL)bindNetworkInputPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v81[1] = *MEMORY[0x277D85DE8];
  if (!self->_prepared)
  {
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Need to call [prepareWithError:] before binding input pixel buffer.");
    v17 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v19 = MEMORY[0x277CCA9B8];
    v80 = *MEMORY[0x277CCA068];
    v81[0] = v13;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v81, &v80, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"ANSTErrorDomain", 3, v20);
    goto LABEL_45;
  }

  if ((objc_msgSend_validatePixelBuffer_(self->_networkInputImageDescriptor, a2, buffer) & 1) == 0)
  {
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"Input pixel buffer has unexpected width, height, or pixel format.");
    v22 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v24 = MEMORY[0x277CCA9B8];
    v78 = *MEMORY[0x277CCA068];
    v79 = v13;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, &v79, &v78, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v24, v25, @"ANSTErrorDomain", 13, v20);
    goto LABEL_45;
  }

  es = self->_es;
  v9 = e5rt_execution_stream_reset();
  if (v9)
  {
    v10 = v9;
    last_error_message = e5rt_get_last_error_message();
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s returned error code %u (%s)", "e5rt_execution_stream_reset(_es)", v10, last_error_message);
    v14 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v16 = MEMORY[0x277CCA9B8];
    v76 = *MEMORY[0x277CCA068];
    v77 = v13;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, &v77, &v76, 1);
    goto LABEL_44;
  }

  CVPixelBufferGetIOSurface(buffer);
  v26 = e5rt_surface_object_create_from_iosurface();
  if (v26)
  {
    v27 = v26;
    v28 = e5rt_get_last_error_message();
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v29, @"%s returned error code %u (%s)", "e5rt_surface_object_create_from_iosurface(&surface_object, surface)", v27, v28);
    v30 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v16 = MEMORY[0x277CCA9B8];
    v74 = *MEMORY[0x277CCA068];
    v75 = v13;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, &v75, &v74, 1);
    goto LABEL_44;
  }

  esop = self->_esop;
  v33 = e5rt_execution_stream_operation_retain_input_port();
  if (v33)
  {
    v34 = v33;
    v35 = e5rt_get_last_error_message();
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_esop, input_image, &input_port)", v34, v35, 0, 0);
    v37 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v16 = MEMORY[0x277CCA9B8];
    v72 = *MEMORY[0x277CCA068];
    v73 = v13;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, &v73, &v72, 1);
    goto LABEL_44;
  }

  v39 = e5rt_io_port_bind_surface_object();
  if (v39)
  {
    v40 = v39;
    v41 = e5rt_get_last_error_message();
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v42, @"%s returned error code %u (%s)", "e5rt_io_port_bind_surface_object(input_port, surface_object)", v40, v41, 0, 0);
    v43 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v16 = MEMORY[0x277CCA9B8];
    v70 = *MEMORY[0x277CCA068];
    v71 = v13;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v44, &v71, &v70, 1);
    goto LABEL_44;
  }

  v45 = e5rt_io_port_release();
  if (v45)
  {
    v46 = v45;
    v47 = e5rt_get_last_error_message();
    v49 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v48, @"%s returned error code %u (%s)", "e5rt_io_port_release(&input_port)", v46, v47, 0, 0);
    v50 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }
  }

  v51 = e5rt_surface_object_release();
  if (v51)
  {
    v52 = v51;
    v53 = e5rt_get_last_error_message();
    v55 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v54, @"%s returned error code %u (%s)", "e5rt_surface_object_release(&surface_object)", v52, v53);
    v56 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }
  }

  v57 = self->_es;
  v58 = self->_esop;
  v59 = e5rt_execution_stream_encode_operation();
  if (!v59)
  {
    result = 1;
    self->_inputPixelBufferIsBound = 1;
    goto LABEL_47;
  }

  v60 = v59;
  v61 = e5rt_get_last_error_message();
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v62, @"%s returned error code %u (%s)", "e5rt_execution_stream_encode_operation(_es, _esop)", v60, v61);
  v63 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    sub_22E657550();
  }

  if (error)
  {
    v16 = MEMORY[0x277CCA9B8];
    v68 = *MEMORY[0x277CCA068];
    v69 = v13;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v64, &v69, &v68, 1);
    v20 = LABEL_44:;
    objc_msgSend_errorWithDomain_code_userInfo_(v16, v65, @"ANSTErrorDomain", 5, v20);
    *error = LABEL_45:;
  }

LABEL_46:

  result = 0;
LABEL_47:
  v67 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)executeInferenceWithFocalLength:(float)length originalInputDimension:(CGSize)dimension error:(id *)error
{
  height = dimension.height;
  width = dimension.width;
  v10 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  v11 = os_signpost_id_make_with_pointer(v10, self);

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ANSTExclaveAlgorithmV1_inference", &unk_22E663F87, buf, 2u);
  }

  *&v12 = length;
  v14 = objc_msgSend__executeInferenceWithFocalLength_originalInputDimension_error_(self, v13, error, v12, width, height);
  v15 = os_signpost_id_make_with_pointer(v10, self);

  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v10, OS_SIGNPOST_INTERVAL_END, v15, "ANSTExclaveAlgorithmV1_inference", &unk_22E663F87, v17, 2u);
  }

  return v14;
}

- (id)_executeInferenceWithFocalLength:(float)length originalInputDimension:(CGSize)dimension error:(id *)error
{
  v54[1] = *MEMORY[0x277D85DE8];
  if (!self->_inputPixelBufferIsBound)
  {
    if (self->_prepared)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Input pixel buffer not bound. Please call [bindNetworkInputPixelBuffer:error:] before inference.");
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Algorihm not ready for inference. Please do [prepareWithError:] and then [bindNetworkInputPixelBuffer:error:] before inference.");
    }
    v15 = ;
    v21 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_22E6575C4();
    }

    if (!error)
    {
      goto LABEL_21;
    }

    v23 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA068];
    v54[0] = v15;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v54, &v53, 1);
    v19 = LABEL_15:;
    objc_msgSend_errorWithDomain_code_userInfo_(v23, v24, @"ANSTErrorDomain", 3, v19);
    goto LABEL_20;
  }

  if (length <= 0.0)
  {
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Focal length must be a positive number.");
    v25 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_22E6575C4();
    }

    if (!error)
    {
      goto LABEL_21;
    }

    v27 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277CCA068];
    v52 = v15;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, &v52, &v51, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v27, v28, @"ANSTErrorDomain", 2, v19);
    goto LABEL_20;
  }

  height = dimension.height;
  width = dimension.width;
  es = self->_es;
  v11 = e5rt_execution_stream_execute_sync();
  if (v11)
  {
    v12 = v11;
    last_error_message = e5rt_get_last_error_message();
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(_es)", v12, last_error_message);
    v16 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22E6575C4();
    }

    if (!error)
    {
      goto LABEL_21;
    }

    v18 = MEMORY[0x277CCA9B8];
    v49 = *MEMORY[0x277CCA068];
    v50 = v15;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, &v50, &v49, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, @"ANSTErrorDomain", 5, v19);
    *error = LABEL_20:;

LABEL_21:
    v29 = 0;
    goto LABEL_22;
  }

  self->_detControl.focalLength = length;
  self->_detControl.originalImageWidth = width;
  self->_detControl.originalImageHeight = height;
  self->_detControl.besCropInfo.x = 0.0;
  self->_detControl.besCropInfo.y = 0.0;
  self->_detControl.besCropInfo.width = width;
  self->_detControl.besCropInfo.height = height;
  bzero(v48, 0x8110uLL);
  v40 = AcANSTPostProcessNetOutputs(self->_det, &self->_detControl, &self->_detParams, &self->_bmBuffer_outputs[0].data, 10, self->_detState.data, v48, v32, v33, v34, v35, v36, v37, v38, v39);
  if (v40)
  {
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v41, @"%s returned error code %u", "AcANSTPostProcessNetOutputs(_det, &_detControl, &_detParams, _bmBuffer_outputs, kAcANSTNetOutputEKv1Max, &_detState, &acResult)", v40);
    v42 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_22E6575C4();
    }

    if (!error)
    {
      goto LABEL_21;
    }

    v23 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA068];
    v47 = v15;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, &v47, &v46, 1);
    goto LABEL_15;
  }

  v44 = [ANSTExclaveAlgorithmResult alloc];
  v29 = objc_msgSend_initWithAcResult_(v44, v45, v48);
LABEL_22:
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (BOOL)_initializePostProcessor:(id *)processor
{
  v63[1] = *MEMORY[0x277D85DE8];
  if (self->_det)
  {
    goto LABEL_2;
  }

  p_detControl = &self->_detControl;
  *&self->_detControl.originalImageWidth = 0u;
  *&self->_detControl.imageOrientation = 0u;
  *&self->_detControl.initWithDetResults = 0u;
  *&self->_detControl.besCropInfo.height = 0u;
  self->_detControl.networkInputWidth = objc_msgSend_width(self->_networkInputImageDescriptor, a2, processor);
  v9 = objc_msgSend_height(self->_networkInputImageDescriptor, v7, v8);
  p_detControl->networkInputHeight = v9;
  networkInputWidth = p_detControl->networkInputWidth;
  p_detControl->originalImageWidth = networkInputWidth;
  p_detControl->originalImageHeight = v9;
  p_detControl->besCropInfo.x = 0.0;
  p_detControl->besCropInfo.y = 0.0;
  p_detControl->besCropInfo.width = networkInputWidth;
  p_detControl->besCropInfo.height = v9;
  if (objc_msgSend_networkResolution(self->_configuration, v11, v12))
  {
    if (objc_msgSend_networkResolution(self->_configuration, v13, v14) != 2)
    {
      goto LABEL_8;
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  p_detControl->networkInputResolution = v15;
LABEL_8:
  if (objc_msgSend_version(self->_configuration, v13, v14) == 65717)
  {
    v18 = 2;
  }

  else if (objc_msgSend_version(self->_configuration, v16, v17) == 66436)
  {
    v18 = 3;
  }

  else if (objc_msgSend_version(self->_configuration, v19, v20) == 66446)
  {
    v18 = 4;
  }

  else if (objc_msgSend_version(self->_configuration, v21, v22) == 66447)
  {
    v18 = 5;
  }

  else
  {
    if (objc_msgSend_version(self->_configuration, v23, v24) != 66456)
    {
      goto LABEL_19;
    }

    v18 = 6;
  }

  p_detControl->version = v18;
LABEL_19:
  v55 = 0;
  v25 = AcANSTCreate(&self->_det, &v55);
  if (v25)
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%s returned error code %u", "AcANSTCreate(&_det, &detConfig, &_detControl, &_detState)", v25);
    v28 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_22E657638();
    }

    if (!processor)
    {
      goto LABEL_40;
    }

    v30 = MEMORY[0x277CCA9B8];
    v62 = *MEMORY[0x277CCA068];
    v63[0] = v27;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v63, &v62, 1);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v30, v32, @"ANSTErrorDomain", 3, v31);
LABEL_39:
    *processor = v33;

LABEL_40:
    objc_msgSend__destroyAcHandles(self, v52, v53);
    result = 0;
    goto LABEL_41;
  }

  v34 = AcANSTStart(self->_det, &self->_detState);
  if (v34)
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v35, @"%s returned error code %u", "AcANSTStart(_det, &_detState)", v34);
    v36 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_22E657638();
    }

    if (!processor)
    {
      goto LABEL_40;
    }

    v38 = MEMORY[0x277CCA9B8];
    v60 = *MEMORY[0x277CCA068];
    v61 = v27;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, &v61, &v60, 1);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v38, v39, @"ANSTErrorDomain", 3, v31);
    goto LABEL_39;
  }

  v40 = AcANSTGetParams(self->_det, self->_detState.data, p_detControl, &self->_detParams);
  if (v40)
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v41, @"%s returned error code %u", "AcANSTGetParams(_det, &_detState, &_detControl, &_detParams)", v40);
    v42 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_22E657638();
    }

    if (!processor)
    {
      goto LABEL_40;
    }

    v44 = MEMORY[0x277CCA9B8];
    v58 = *MEMORY[0x277CCA068];
    v59 = v27;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, &v59, &v58, 1);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v44, v45, @"ANSTErrorDomain", 3, v31);
    goto LABEL_39;
  }

  v46 = AcANSTUseLowThresholds(self->_det);
  if (v46)
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v47, @"%s returned error code %u", "AcANSTUseLowThresholds(_det, true)", v46);
    v48 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_22E657638();
    }

    if (!processor)
    {
      goto LABEL_40;
    }

    v50 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA068];
    v57 = v27;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v57, &v56, 1);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v50, v51, @"ANSTErrorDomain", 3, v31);
    goto LABEL_39;
  }

LABEL_2:
  result = 1;
LABEL_41:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_loadE5ExecutionStreamOperation:(id *)operation
{
  v47[1] = *MEMORY[0x277D85DE8];
  if (!self->_esop)
  {
    v6 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], a2, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/anst4ek.mlmodelc");
    if (objc_msgSend_version(self->_configuration, v7, v8) == 65717 && objc_msgSend_networkResolution(self->_configuration, v9, v10) == 2)
    {
      objc_msgSend_URLByAppendingPathComponent_(v6, v9, @"anst4ek_v1dot8dot1_2x.bundle");
    }

    else if (objc_msgSend_version(self->_configuration, v9, v10) == 66436 && objc_msgSend_networkResolution(self->_configuration, v11, v12) == 2)
    {
      objc_msgSend_URLByAppendingPathComponent_(v6, v11, @"anst4ek_v1dot9_2x.bundle");
    }

    else if ((objc_msgSend_version(self->_configuration, v11, v12) == 66446 || objc_msgSend_version(self->_configuration, v13, v14) == 66447) && objc_msgSend_networkResolution(self->_configuration, v13, v14) == 2)
    {
      objc_msgSend_URLByAppendingPathComponent_(v6, v13, @"anst4ek_v1dot9dot1_2x.bundle");
    }

    else
    {
      if (objc_msgSend_version(self->_configuration, v13, v14) != 66456 || objc_msgSend_networkResolution(self->_configuration, v15, v16) != 2)
      {

        goto LABEL_23;
      }

      objc_msgSend_URLByAppendingPathComponent_(v6, v17, @"anst4ek_v1dot9dot2_2x.bundle");
    }
    v18 = ;

    if (v18)
    {
      objc_msgSend_UTF8String(@"anst4ek", v19, v20);
      v23 = objc_msgSend_relativePath(v18, v21, v22);
      v24 = v23;
      objc_msgSend_UTF8String(v24, v25, v26);
      objc_msgSend_UTF8String(@"main", v27, v28);
      precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

      v3 = precompiled_compute_operation == 0;
      if (!precompiled_compute_operation)
      {
LABEL_29:

        goto LABEL_30;
      }

      last_error_message = e5rt_get_last_error_message();
      v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_create_precompiled_compute_operation(&_esop, opName.UTF8String, modelURL.relativePath.UTF8String, opFuncName.UTF8String, 1, true)", precompiled_compute_operation, last_error_message);
      v33 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_22E6576AC();
      }

      if (operation)
      {
        v35 = MEMORY[0x277CCA9B8];
        v44 = *MEMORY[0x277CCA068];
        v45 = v32;
        v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, &v45, &v44, 1);
        *operation = objc_msgSend_errorWithDomain_code_userInfo_(v35, v37, @"ANSTErrorDomain", 5, v36);
      }

      goto LABEL_27;
    }

LABEL_23:
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"Unsupported configuration combo. ANSTKit currently only ships [v1.8.1/v1.9/v1.9.1/v1.9.1.1 832x832] ANST4EK models.");
    v38 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_22E6576AC();
    }

    if (!operation)
    {
      goto LABEL_28;
    }

    v40 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA068];
    v47[0] = v18;
    v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, v47, &v46, 1);
    *operation = objc_msgSend_errorWithDomain_code_userInfo_(v40, v41, @"ANSTErrorDomain", 3, v32);
LABEL_27:

LABEL_28:
    v3 = 0;
    goto LABEL_29;
  }

  v3 = 1;
LABEL_30:
  v42 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_allocateAndBindOutputBuffers:(id *)buffers
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_bo_outputs_array[0])
  {
    result = 1;
  }

  else
  {
    v25 = *MEMORY[0x277CCA068];
    esop = self->_esop;
    v8 = e5rt_execution_stream_operation_retain_output_port();
    if (v8 || (v8 = e5rt_io_port_retain_tensor_desc(), v8) || (v8 = e5rt_tensor_desc_alloc_buffer_object(), v8) || (v9 = self->_bo_outputs_array[0], v8 = e5rt_io_port_bind_buffer_object(), v8))
    {
      v10 = v8;
      last_error_message = e5rt_get_last_error_message();
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"Failed to bind output port named '%s' (code %u: %s)", self->_detParams.netOutputNames, v10, last_error_message);
      v14 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v31 = "[ANSTExclaveAlgorithmV1 _allocateAndBindOutputBuffers:]";
        v32 = 2114;
        v33 = v13;
        _os_log_error_impl(&dword_22E5D5000, v14, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
      }

      if (buffers)
      {
        v16 = MEMORY[0x277CCA9B8];
        v26 = v25;
        v27 = v13;
        v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, &v27, &v26, 1);
        *buffers = objc_msgSend_errorWithDomain_code_userInfo_(v16, v18, @"ANSTErrorDomain", 5, v17);
      }
    }

    else
    {
      v21 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v31 = "BOOL setBmBufferByE5TensorDescriptor(BmBuffer * _Nonnull, e5rt_tensor_desc_t _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)";
        v32 = 2114;
        v33 = @"Null input";
        _os_log_error_impl(&dword_22E5D5000, v21, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
      }

      if (buffers)
      {
        v22 = MEMORY[0x277CCA9B8];
        v28 = v25;
        v29 = @"Null input";
        v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v29, &v28, 1);
        *buffers = objc_msgSend_errorWithDomain_code_userInfo_(v22, v24, @"ANSTErrorDomain", 2, v23);
      }
    }

    objc_msgSend__releaseOutputBuffers(self, v19, v20);
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_releaseOutputBuffers
{
  v16 = *MEMORY[0x277D85DE8];
  bo_outputs_array = self->_bo_outputs_array;
  v4 = 10;
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
          v13 = "[ANSTExclaveAlgorithmV1 _releaseOutputBuffers]";
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
  *&self->_bmBuffer_outputs[0].data = 0u;
  *&self->_bmBuffer_outputs[0].rowBytes = 0u;
  *&self->_bmBuffer_outputs[1].height = 0u;
  *&self->_bmBuffer_outputs[2].data = 0u;
  *&self->_bmBuffer_outputs[2].rowBytes = 0u;
  *&self->_bmBuffer_outputs[3].height = 0u;
  *&self->_bmBuffer_outputs[4].data = 0u;
  *&self->_bmBuffer_outputs[4].rowBytes = 0u;
  *&self->_bmBuffer_outputs[5].height = 0u;
  *&self->_bmBuffer_outputs[6].data = 0u;
  *&self->_bmBuffer_outputs[6].rowBytes = 0u;
  *&self->_bmBuffer_outputs[7].height = 0u;
  *&self->_bmBuffer_outputs[8].data = 0u;
  *&self->_bmBuffer_outputs[8].rowBytes = 0u;
  *&self->_bmBuffer_outputs[9].height = 0u;
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_destroyAcHandles
{
  v3 = AcANSTStop(self->_det);
  if (v3)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"%s returned error code %u", "AcANSTStop(_det, &_detState)", v3);
    v6 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22E657720();
    }
  }

  det = self->_det;
  if (det)
  {
    AcANSTDestroy(det);
    self->_det = 0;
  }

  bzero(&self->_detParams, 0xE88uLL);
  bzero(&self->_detState, 0x32EA0uLL);
  *&self->_detControl.originalImageWidth = 0u;
  *&self->_detControl.imageOrientation = 0u;
  *&self->_detControl.initWithDetResults = 0u;
  *&self->_detControl.besCropInfo.height = 0u;
}

@end