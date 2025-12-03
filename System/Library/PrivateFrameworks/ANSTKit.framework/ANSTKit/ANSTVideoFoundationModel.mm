@interface ANSTVideoFoundationModel
- (ANSTVideoFoundationModel)initWithConfiguration:(id)configuration;
- (BOOL)bindInputFrameBuffer:(__CVBuffer *)buffer error:(id *)error;
- (BOOL)executeInferenceWithError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (void)dealloc;
@end

@implementation ANSTVideoFoundationModel

- (ANSTVideoFoundationModel)initWithConfiguration:(id)configuration
{
  v23 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = ANSTVideoFoundationModel;
  v6 = [(ANSTAlgorithm *)&v21 initWithConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, configuration);
    if (objc_msgSend_version(v7->_config, v8, v9) == 0x10000)
    {
      v10 = 256;
    }

    else
    {
      v10 = 224;
    }

    v11 = [ANSTPixelBufferDescriptor alloc];
    v13 = objc_msgSend_initWithName_width_height_pixelFormatType_pixelBufferAttributes_error_(v11, v12, @"input_image", v10, v10, 1111970369, 0, 0);
    inputImageDescriptor = v7->_inputImageDescriptor;
    v7->_inputImageDescriptor = v13;

    v22 = xmmword_22E661A80;
    v15 = [ANSTTensorDescriptor alloc];
    v17 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v15, v16, @"image_feature", 102, 2, &v22, 64, 0);
    outputFeatureDescriptor = v7->_outputFeatureDescriptor;
    v7->_outputFeatureDescriptor = v17;

    v7->_prepared = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)prepareWithError:(id *)error
{
  v107[1] = *MEMORY[0x277D85DE8];
  if (!self->_prepared)
  {
    if (!self->_stream)
    {
      v11 = e5rt_execution_stream_create();
      if (v11)
      {
        v12 = v11;
        last_error_message = e5rt_get_last_error_message();
        v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&_stream)", v12, last_error_message);
        v16 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_22E657EDC();
        }

        if (!error)
        {
          goto LABEL_59;
        }

        v18 = MEMORY[0x277CCA9B8];
        v106 = *MEMORY[0x277CCA068];
        v107[0] = v15;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v107, &v106, 1);
        v75 = LABEL_58:;
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v18, v76, @"ANSTErrorDomain", 5, v75);

LABEL_59:
        goto LABEL_60;
      }
    }

    if (self->_operation)
    {
LABEL_30:
      if (!self->_outputPort_imageFeature)
      {
        operation = self->_operation;
        v48 = e5rt_execution_stream_operation_retain_output_port();
        if (v48)
        {
          v49 = v48;
          v50 = e5rt_get_last_error_message();
          v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v51, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, image_feature, &_outputPort_imageFeature)", v49, v50);
          v52 = _ANSTLoggingGetOSLogForCategoryANSTKit();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_22E657EDC();
          }

          if (!error)
          {
            goto LABEL_59;
          }

          v18 = MEMORY[0x277CCA9B8];
          v100 = *MEMORY[0x277CCA068];
          v101 = v15;
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v53, &v101, &v100, 1);
          goto LABEL_58;
        }
      }

      if (!self->_outputTensorDesc_imageFeature)
      {
        outputPort_imageFeature = self->_outputPort_imageFeature;
        v55 = e5rt_io_port_retain_tensor_desc();
        if (v55)
        {
          v56 = v55;
          v57 = e5rt_get_last_error_message();
          v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v58, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(_outputPort_imageFeature, &_outputTensorDesc_imageFeature)", v56, v57);
          v59 = _ANSTLoggingGetOSLogForCategoryANSTKit();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            sub_22E657EDC();
          }

          if (!error)
          {
            goto LABEL_59;
          }

          v18 = MEMORY[0x277CCA9B8];
          v98 = *MEMORY[0x277CCA068];
          v99 = v15;
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, &v99, &v98, 1);
          goto LABEL_58;
        }
      }

      if (!self->_outputBufferObject_imageFeature)
      {
        outputTensorDesc_imageFeature = self->_outputTensorDesc_imageFeature;
        v62 = e5rt_tensor_desc_alloc_buffer_object();
        if (v62)
        {
          v63 = v62;
          v64 = e5rt_get_last_error_message();
          v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v65, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(_outputTensorDesc_imageFeature, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 64, &_outputBufferObject_imageFeature)", v63, v64);
          v66 = _ANSTLoggingGetOSLogForCategoryANSTKit();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            sub_22E657EDC();
          }

          if (!error)
          {
            goto LABEL_59;
          }

          v18 = MEMORY[0x277CCA9B8];
          v96 = *MEMORY[0x277CCA068];
          v97 = v15;
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v67, &v97, &v96, 1);
          goto LABEL_58;
        }

        outputBufferObject_imageFeature = self->_outputBufferObject_imageFeature;
      }

      v40 = self->_outputPort_imageFeature;
      v41 = e5rt_io_port_bind_buffer_object();
      if (v41)
      {
        v42 = v41;
        v43 = e5rt_get_last_error_message();
        v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v44, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(_outputPort_imageFeature, _outputBufferObject_imageFeature)", v42, v43);
        v45 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_22E657EDC();
        }

        if (!error)
        {
          goto LABEL_59;
        }

        v18 = MEMORY[0x277CCA9B8];
        v94 = *MEMORY[0x277CCA068];
        v95 = v15;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, &v95, &v94, 1);
      }

      else
      {
        v68 = self->_outputBufferObject_imageFeature;
        iosurface = e5rt_buffer_object_get_iosurface();
        if (!iosurface)
        {
          result = 1;
          self->_prepared = 1;
          goto LABEL_61;
        }

        v70 = iosurface;
        v71 = e5rt_get_last_error_message();
        v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v72, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_outputBufferObject_imageFeature, &_outputFeatureSurface)", v70, v71);
        v73 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          sub_22E657EDC();
        }

        if (!error)
        {
          goto LABEL_59;
        }

        v18 = MEMORY[0x277CCA9B8];
        v92 = *MEMORY[0x277CCA068];
        v93 = v15;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v74, &v93, &v92, 1);
      }

      goto LABEL_58;
    }

    v6 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], a2, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/vfm.mlmodelc");
    v9 = objc_msgSend_version(self->_config, v7, v8);
    switch(v9)
    {
      case 65536:
        objc_msgSend_URLByAppendingPathComponent_(v6, v10, @"model.mil");
        break;
      case 196609:
        objc_msgSend_URLByAppendingPathComponent_(v6, v10, @"gesture.mil");
        break;
      case 131073:
        objc_msgSend_URLByAppendingPathComponent_(v6, v10, @"fitness.mil");
        break;
      default:
        v78 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          sub_22E657FD0(&self->_config, v78, v79);
        }

        if (error)
        {
          v82 = MEMORY[0x277CCACA8];
          v83 = objc_msgSend_version(self->_config, v80, v81);
          v85 = objc_msgSend_stringWithFormat_(v82, v84, @"Unexpected model version %lu", v83);
          v86 = MEMORY[0x277CCA9B8];
          v104 = *MEMORY[0x277CCA068];
          v105 = v85;
          v88 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v87, &v105, &v104, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v86, v89, @"ANSTErrorDomain", 5, v88);
        }

        goto LABEL_60;
    }
    v19 = ;

    if (!e5rt_e5_compiler_create() && !e5rt_e5_compiler_options_create())
    {
      v22 = objc_msgSend_relativePath(v19, v20, v21);
      v23 = v22;
      objc_msgSend_UTF8String(v23, v24, v25);
      if (e5rt_e5_compiler_compile() || e5rt_program_library_retain_program_function() || e5rt_precompiled_compute_op_create_options_create_with_program_function())
      {
      }

      else
      {
        precompiled_compute_operation_with_options = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();

        if (!precompiled_compute_operation_with_options)
        {
LABEL_26:
          if (error && *error)
          {

LABEL_60:
            result = 0;
            goto LABEL_61;
          }

          goto LABEL_30;
        }
      }
    }

    v26 = e5rt_get_last_error_message();
    v27 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_22E657F50(v26, v27, v28, v29, v30, v31, v32, v33);
    }

    if (error)
    {
      v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"MIL compilation failed due to E5 error (%s)", v26);
      v36 = MEMORY[0x277CCA9B8];
      v102 = *MEMORY[0x277CCA068];
      v103 = v35;
      v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, &v103, &v102, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v36, v39, @"ANSTErrorDomain", 5, v38);
    }

    goto LABEL_26;
  }

  result = 1;
LABEL_61:
  v77 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v3 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_22E658074(self, v3);
  }

  if (self->_outputBufferObject_imageFeature)
  {
    v4 = e5rt_buffer_object_release();
    if (v4)
    {
      v5 = v4;
      last_error_message = e5rt_get_last_error_message();
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_outputBufferObject_imageFeature)", v5, last_error_message);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_22E6580EC();
      }
    }
  }

  if (self->_outputTensorDesc_imageFeature)
  {
    v9 = e5rt_tensor_desc_release();
    if (v9)
    {
      v10 = v9;
      v11 = e5rt_get_last_error_message();
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&_outputTensorDesc_imageFeature)", v10, v11);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_22E6580EC();
      }
    }
  }

  if (self->_outputPort_imageFeature)
  {
    v14 = e5rt_io_port_release();
    if (v14)
    {
      v15 = v14;
      v16 = e5rt_get_last_error_message();
      v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s returned error code %u (%s)", "e5rt_io_port_release(&_outputPort_imageFeature)", v15, v16);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_22E6580EC();
      }
    }
  }

  if (self->_operation)
  {
    v19 = e5rt_execution_stream_operation_release();
    if (v19)
    {
      v20 = v19;
      v21 = e5rt_get_last_error_message();
      v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&_operation)", v20, v21);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_22E6580EC();
      }
    }
  }

  if (self->_stream)
  {
    v24 = e5rt_execution_stream_release();
    if (v24)
    {
      v25 = v24;
      v26 = e5rt_get_last_error_message();
      v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&_stream)", v25, v26);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_22E6580EC();
      }
    }
  }

  v29.receiver = self;
  v29.super_class = ANSTVideoFoundationModel;
  [(ANSTVideoFoundationModel *)&v29 dealloc];
}

- (BOOL)bindInputFrameBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v71[1] = *MEMORY[0x277D85DE8];
  stream = self->_stream;
  v8 = e5rt_execution_stream_reset();
  if (v8)
  {
    v9 = v8;
    last_error_message = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s returned error code %u (%s)", "e5rt_execution_stream_reset(_stream)", v9, last_error_message);
    v13 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E658160();
    }

    if (!error)
    {
      goto LABEL_12;
    }

    v15 = MEMORY[0x277CCA9B8];
    v70 = *MEMORY[0x277CCA068];
    v71[0] = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v71, &v70, 1);
    goto LABEL_11;
  }

  CVPixelBufferGetIOSurface(buffer);
  v16 = e5rt_surface_object_create_from_iosurface();
  if (v16)
  {
    v17 = v16;
    v18 = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%s returned error code %u (%s)", "e5rt_surface_object_create_from_iosurface(&input_image_surface_object, input_surface)", v17, v18);
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E658160();
    }

    if (!error)
    {
      goto LABEL_12;
    }

    v15 = MEMORY[0x277CCA9B8];
    v68 = *MEMORY[0x277CCA068];
    v69 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, &v69, &v68, 1);
    v22 = LABEL_11:;
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v15, v23, @"ANSTErrorDomain", 5, v22);

    goto LABEL_12;
  }

  operation = self->_operation;
  v27 = e5rt_execution_stream_operation_retain_input_port();
  if (v27)
  {
    v28 = v27;
    v29 = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_operation, input_image, &input_port)", v28, v29, 0, 0);
    v31 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_22E658160();
    }

    if (!error)
    {
      goto LABEL_12;
    }

    v33 = MEMORY[0x277CCA9B8];
    v66 = *MEMORY[0x277CCA068];
    v67 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, &v67, &v66, 1);
    goto LABEL_37;
  }

  v34 = e5rt_io_port_bind_surface_object();
  if (v34)
  {
    v35 = v34;
    v36 = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"%s returned error code %u (%s)", "e5rt_io_port_bind_surface_object(input_port, input_image_surface_object)", v35, v36, 0, 0);
    v38 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_22E658160();
    }

    if (!error)
    {
      goto LABEL_12;
    }

    v33 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA068];
    v65 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, &v65, &v64, 1);
    goto LABEL_37;
  }

  v40 = e5rt_io_port_release();
  if (v40)
  {
    v41 = v40;
    v42 = e5rt_get_last_error_message();
    v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v43, @"%s returned error code %u (%s)", "e5rt_io_port_release(&input_port)", v41, v42, 0, 0);
    v45 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_22E658160();
    }
  }

  v46 = e5rt_surface_object_release();
  if (v46)
  {
    v47 = v46;
    v48 = e5rt_get_last_error_message();
    v50 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v49, @"%s returned error code %u (%s)", "e5rt_surface_object_release(&input_image_surface_object)", v47, v48);
    v51 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_22E658160();
    }
  }

  v52 = self->_stream;
  v53 = self->_operation;
  v54 = e5rt_execution_stream_encode_operation();
  if (!v54)
  {
    result = 1;
    goto LABEL_13;
  }

  v55 = v54;
  v56 = e5rt_get_last_error_message();
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v57, @"%s returned error code %u (%s)", "e5rt_execution_stream_encode_operation(_stream, _operation)", v55, v56);
  v58 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    sub_22E658160();
  }

  if (error)
  {
    v33 = MEMORY[0x277CCA9B8];
    v62 = *MEMORY[0x277CCA068];
    v63 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v59, &v63, &v62, 1);
    v60 = LABEL_37:;
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v33, v61, @"ANSTErrorDomain", 5, v60);
  }

LABEL_12:

  result = 0;
LABEL_13:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)executeInferenceWithError:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (self->_prepared)
  {
    stream = self->_stream;
    v5 = e5rt_execution_stream_execute_sync();
    if (!v5)
    {
      result = 1;
      goto LABEL_11;
    }

    v6 = v5;
    last_error_message = e5rt_get_last_error_message();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(_stream)", v6, last_error_message);
    v10 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22E6581D4();
    }

    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA068];
      v20 = v9;
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, &v20, &v19, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v12, v14, @"ANSTErrorDomain", 5, v13);
    }

    goto LABEL_9;
  }

  if (error)
  {
    v15 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA068];
    v22[0] = @"Model was not prepared.";
    v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v22, &v21, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v15, v16, @"ANSTErrorDomain", 3, v9);
LABEL_9:
  }

  result = 0;
LABEL_11:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

@end