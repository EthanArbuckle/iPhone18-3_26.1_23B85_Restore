@interface ANSTActionHighlightModel
+ (ANSTActionHighlightModel)new;
- (ANSTActionHighlightModel)init;
- (BOOL)bindInputFrameBuffer:(__CVBuffer *)buffer error:(id *)error;
- (BOOL)executeAndUpdateStateTensorData:(id)data outputDictionary:(id)dictionary outError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (id)initForVersion:(unint64_t)version;
- (void)dealloc;
@end

@implementation ANSTActionHighlightModel

- (ANSTActionHighlightModel)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (ANSTActionHighlightModel)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (id)initForVersion:(unint64_t)version
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = ANSTActionHighlightModel;
  v4 = [(ANSTActionHighlightModel *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_version = version;
    v6 = [ANSTPixelBufferDescriptor alloc];
    v8 = objc_msgSend_initWithName_width_height_pixelFormatType_pixelBufferAttributes_error_(v6, v7, @"input_image", 224, 224, 1111970369, 0, 0);
    inputImageDescriptor = v5->_inputImageDescriptor;
    v5->_inputImageDescriptor = v8;

    v17[0] = xmmword_22E661CA8;
    v17[1] = unk_22E661CB8;
    v10 = [ANSTTensorDescriptor alloc];
    v12 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v10, v11, @"ht", 104, 4, v17, 1, 0);
    stateTensorDescriptor = v5->_stateTensorDescriptor;
    v5->_stateTensorDescriptor = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)prepareWithError:(id *)error
{
  v165[1] = *MEMORY[0x277D85DE8];
  if (self->_prepared)
  {
    result = 1;
    goto LABEL_75;
  }

  if (!self->_stream)
  {
    v14 = e5rt_execution_stream_create();
    if (v14)
    {
      v15 = v14;
      last_error_message = e5rt_get_last_error_message();
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&_stream)", v15, last_error_message);
      v18 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_22E659B6C();
      }

      if (!error)
      {
        goto LABEL_73;
      }

      v13 = MEMORY[0x277CCA9B8];
      v164 = *MEMORY[0x277CCA068];
      v165[0] = v10;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v165, &v164, 1);
      v99 = LABEL_72:;
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v100, @"ANSTErrorDomain", 5, v99);

LABEL_73:
LABEL_74:
      result = 0;
      goto LABEL_75;
    }
  }

  if (!self->_operation)
  {
    if (error)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = ANSTActionDetectorVersionToNSString(self->_version);
      v23 = objc_msgSend_stringWithFormat_(v20, v22, @"Unexpected model version (%@)", v21);

      v24 = MEMORY[0x277CCA9B8];
      v162 = *MEMORY[0x277CCA068];
      v163 = v23;
      v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, &v163, &v162, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v24, v27, @"ANSTErrorDomain", 5, v26);
    }

    goto LABEL_74;
  }

  v6 = e5rt_execution_stream_operation_retain_input_port();
  if (v6)
  {
    v7 = v6;
    v8 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_operation, ht_in, &input_port_ht)", v7, v8);
    v11 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v160 = *MEMORY[0x277CCA068];
    v161 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v161, &v160, 1);
    goto LABEL_72;
  }

  v28 = e5rt_io_port_retain_tensor_desc();
  if (v28)
  {
    v29 = v28;
    v30 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(input_port_ht, &tensor_desc_ht_in)", v29, v30);
    v32 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v158 = *MEMORY[0x277CCA068];
    v159 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, &v159, &v158, 1);
    goto LABEL_72;
  }

  v34 = e5rt_tensor_desc_alloc_buffer_object();
  if (v34)
  {
    v35 = v34;
    v36 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(tensor_desc_ht_in, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &_inputBufferObject_ht)", v35, v36);
    v38 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v156 = *MEMORY[0x277CCA068];
    v157 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, &v157, &v156, 1);
    goto LABEL_72;
  }

  operation = self->_operation;
  v41 = e5rt_execution_stream_operation_retain_output_port();
  if (v41)
  {
    v42 = v41;
    v43 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v44, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, ht_out, &output_port_ht)", v42, v43);
    v45 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v154 = *MEMORY[0x277CCA068];
    v155 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, &v155, &v154, 1);
    goto LABEL_72;
  }

  v47 = e5rt_io_port_retain_tensor_desc();
  if (v47)
  {
    v48 = v47;
    v49 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v50, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(output_port_ht, &tensor_desc_ht_out)", v48, v49);
    v51 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v152 = *MEMORY[0x277CCA068];
    v153 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, &v153, &v152, 1);
    goto LABEL_72;
  }

  v53 = e5rt_tensor_desc_alloc_buffer_object();
  if (v53)
  {
    v54 = v53;
    v55 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v56, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(tensor_desc_ht_out, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &_outputBufferObject_ht)", v54, v55);
    v57 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v150 = *MEMORY[0x277CCA068];
    v151 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v58, &v151, &v150, 1);
    goto LABEL_72;
  }

  v59 = self->_operation;
  v60 = e5rt_execution_stream_operation_retain_output_port();
  if (v60)
  {
    v61 = v60;
    v62 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v63, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, action, &output_port_action)", v61, v62);
    v64 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v148 = *MEMORY[0x277CCA068];
    v149 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v65, &v149, &v148, 1);
    goto LABEL_72;
  }

  v66 = e5rt_io_port_retain_tensor_desc();
  if (v66)
  {
    v67 = v66;
    v68 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v69, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(output_port_action, &tensor_desc_action)", v67, v68, 0, 0, 0, 0, 0, 0);
    v70 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v146 = *MEMORY[0x277CCA068];
    v147 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v71, &v147, &v146, 1);
    goto LABEL_72;
  }

  v72 = e5rt_tensor_desc_alloc_buffer_object();
  if (v72)
  {
    v73 = v72;
    v74 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v75, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(tensor_desc_action, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &_outputBufferObject_action)", v73, v74, 0, 0, 0, 0, 0, 0);
    v76 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v144 = *MEMORY[0x277CCA068];
    v145 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v77, &v145, &v144, 1);
    goto LABEL_72;
  }

  inputBufferObject_ht = self->_inputBufferObject_ht;
  v79 = e5rt_io_port_bind_buffer_object();
  if (v79)
  {
    v80 = v79;
    v81 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v82, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(input_port_ht, _inputBufferObject_ht)", v80, v81, 0, 0, 0, 0, 0, 0);
    v83 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v142 = *MEMORY[0x277CCA068];
    v143 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v84, &v143, &v142, 1);
    goto LABEL_72;
  }

  outputBufferObject_ht = self->_outputBufferObject_ht;
  v86 = e5rt_io_port_bind_buffer_object();
  if (v86)
  {
    v87 = v86;
    v88 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v89, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(output_port_ht, _outputBufferObject_ht)", v87, v88, 0, 0, 0, 0, 0, 0);
    v90 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v140 = *MEMORY[0x277CCA068];
    v141 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v91, &v141, &v140, 1);
    goto LABEL_72;
  }

  outputBufferObject_action = self->_outputBufferObject_action;
  v93 = e5rt_io_port_bind_buffer_object();
  if (v93)
  {
    v94 = v93;
    v95 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v96, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(output_port_action, _outputBufferObject_action)", v94, v95, 0, 0, 0, 0, 0, 0);
    v97 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v138 = *MEMORY[0x277CCA068];
    v139 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v98, &v139, &v138, 1);
    goto LABEL_72;
  }

  v102 = e5rt_io_port_release();
  if (v102)
  {
    v103 = v102;
    v104 = e5rt_get_last_error_message();
    v106 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v105, @"%s returned error code %u (%s)", "e5rt_io_port_release(&input_port_ht)", v103, v104, 0, 0, 0, 0, 0, 0);
    v107 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }
  }

  v108 = e5rt_io_port_release();
  if (v108)
  {
    v109 = v108;
    v110 = e5rt_get_last_error_message();
    v112 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v111, @"%s returned error code %u (%s)", "e5rt_io_port_release(&output_port_ht)", v109, v110);
    v113 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }
  }

  v114 = e5rt_io_port_release();
  if (v114)
  {
    v115 = v114;
    v116 = e5rt_get_last_error_message();
    v118 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v117, @"%s returned error code %u (%s)", "e5rt_io_port_release(&output_port_action)", v115, v116);
    v119 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }
  }

  v120 = e5rt_tensor_desc_release();
  if (v120)
  {
    v121 = v120;
    v122 = e5rt_get_last_error_message();
    v124 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v123, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&tensor_desc_ht_in)", v121, v122);
    v125 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }
  }

  v126 = e5rt_tensor_desc_release();
  if (v126)
  {
    v127 = v126;
    v128 = e5rt_get_last_error_message();
    v130 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v129, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&tensor_desc_ht_out)", v127, v128);
    v131 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }
  }

  v132 = e5rt_tensor_desc_release();
  if (v132)
  {
    v133 = v132;
    v134 = e5rt_get_last_error_message();
    v136 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v135, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&tensor_desc_action)", v133, v134);
    v137 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }
  }

  result = 1;
  self->_prepared = 1;
LABEL_75:
  v101 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  if (self->_inputBufferObject_ht)
  {
    v3 = e5rt_buffer_object_release();
    if (v3)
    {
      v4 = v3;
      last_error_message = e5rt_get_last_error_message();
      v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_inputBufferObject_ht)", v4, last_error_message);
      v8 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22E659BE0();
      }
    }
  }

  if (self->_outputBufferObject_ht)
  {
    v9 = e5rt_buffer_object_release();
    if (v9)
    {
      v10 = v9;
      v11 = e5rt_get_last_error_message();
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_outputBufferObject_ht)", v10, v11);
      v14 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_22E659BE0();
      }
    }
  }

  if (self->_outputBufferObject_action)
  {
    v15 = e5rt_buffer_object_release();
    if (v15)
    {
      v16 = v15;
      v17 = e5rt_get_last_error_message();
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_outputBufferObject_action)", v16, v17);
      v20 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_22E659BE0();
      }
    }
  }

  if (self->_operation)
  {
    v21 = e5rt_execution_stream_operation_release();
    if (v21)
    {
      v22 = v21;
      v23 = e5rt_get_last_error_message();
      v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&_operation)", v22, v23);
      v26 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_22E659BE0();
      }
    }
  }

  if (self->_stream)
  {
    v27 = e5rt_execution_stream_release();
    if (v27)
    {
      v28 = v27;
      v29 = e5rt_get_last_error_message();
      v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&_stream)", v28, v29);
      v32 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_22E659BE0();
      }
    }
  }

  v33.receiver = self;
  v33.super_class = ANSTActionHighlightModel;
  [(ANSTActionHighlightModel *)&v33 dealloc];
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
      sub_22E659C54();
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
      sub_22E659C54();
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
      sub_22E659C54();
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
      sub_22E659C54();
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
      sub_22E659C54();
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
      sub_22E659C54();
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
    sub_22E659C54();
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

- (BOOL)executeAndUpdateStateTensorData:(id)data outputDictionary:(id)dictionary outError:(id *)error
{
  v89[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dictionaryCopy = dictionary;
  if (self->_prepared)
  {
    buffer = 0;
    inputBufferObject_ht = self->_inputBufferObject_ht;
    iosurface = e5rt_buffer_object_get_iosurface();
    if (iosurface)
    {
      v13 = iosurface;
      last_error_message = e5rt_get_last_error_message();
      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_inputBufferObject_ht, &ht_in)", v13, last_error_message);
      v17 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_22E659CC8();
      }

      if (error)
      {
        v19 = MEMORY[0x277CCA9B8];
        v86 = *MEMORY[0x277CCA068];
        v87 = v16;
        v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, &v87, &v86, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"ANSTErrorDomain", 5, v20);
      }

      v22 = 0;
    }

    else
    {
      IOSurfaceLock(buffer, 0, 0);
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = sub_22E604268;
      v76[3] = &unk_27884FCC0;
      v78 = buffer;
      v26 = dataCopy;
      v77 = v26;
      objc_msgSend_performDataAccessWithOptions_usingBlock_error_(v26, v27, 0, v76, error);
      IOSurfaceUnlock(buffer, 0, 0);
      stream = self->_stream;
      v29 = e5rt_execution_stream_execute_sync();
      if (v29)
      {
        v30 = v29;
        v31 = e5rt_get_last_error_message();
        v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v32, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(_stream)", v30, v31);
        v34 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_22E659CC8();
        }

        if (error)
        {
          v36 = MEMORY[0x277CCA9B8];
          v84 = *MEMORY[0x277CCA068];
          v85 = v33;
          v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, &v85, &v84, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v36, v38, @"ANSTErrorDomain", 5, v37);
        }

        v22 = 0;
      }

      else
      {
        v75 = 0;
        outputBufferObject_ht = self->_outputBufferObject_ht;
        v40 = e5rt_buffer_object_get_iosurface();
        if (v40)
        {
          v41 = v40;
          v42 = e5rt_get_last_error_message();
          v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v43, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_outputBufferObject_ht, &ht_out)", v41, v42);
          v45 = _ANSTLoggingGetOSLogForCategoryANSTKit();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_22E659CC8();
          }

          if (error)
          {
            v47 = MEMORY[0x277CCA9B8];
            v82 = *MEMORY[0x277CCA068];
            v83 = v44;
            v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, &v83, &v82, 1);
            *error = objc_msgSend_errorWithDomain_code_userInfo_(v47, v49, @"ANSTErrorDomain", 5, v48);
          }

          v22 = 0;
        }

        else
        {
          IOSurfaceLock(v75, 1u, 0);
          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = sub_22E6042E0;
          v72[3] = &unk_27884FB70;
          v74 = v75;
          v73 = v26;
          objc_msgSend_performMutableDataAccessWithOptions_usingBlock_error_(v73, v50, 0, v72, error);
          IOSurfaceUnlock(v75, 1u, 0);
          v52 = objc_msgSend_supportedActionTypesOfDetectorVersion_(ANSTActionDetector, v51, self->_version);
          v71 = 0;
          outputBufferObject_action = self->_outputBufferObject_action;
          v54 = e5rt_buffer_object_get_iosurface();
          v22 = v54 == 0;
          if (v54)
          {
            v55 = v54;
            v56 = e5rt_get_last_error_message();
            v58 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v57, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_outputBufferObject_action, &action)", v55, v56);
            v59 = _ANSTLoggingGetOSLogForCategoryANSTKit();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              sub_22E659CC8();
            }

            if (error)
            {
              v61 = MEMORY[0x277CCA9B8];
              v80 = *MEMORY[0x277CCA068];
              v81 = v58;
              v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, &v81, &v80, 1);
              *error = objc_msgSend_errorWithDomain_code_userInfo_(v61, v63, @"ANSTErrorDomain", 5, v62);
            }
          }

          else
          {
            IOSurfaceLock(v71, 1u, 0);
            BaseAddress = IOSurfaceGetBaseAddress(v71);
            v68[0] = MEMORY[0x277D85DD0];
            v68[1] = 3221225472;
            v68[2] = sub_22E604358;
            v68[3] = &unk_27884FCE8;
            v70 = BaseAddress;
            v68[4] = self;
            v69 = dictionaryCopy;
            objc_msgSend_enumerateObjectsUsingBlock_(v52, v65, v68);
            IOSurfaceUnlock(v71, 1u, 0);
          }

          v44 = v73;
        }
      }

      v16 = v77;
    }
  }

  else
  {
    if (error)
    {
      v23 = MEMORY[0x277CCA9B8];
      v88 = *MEMORY[0x277CCA068];
      v89[0] = @"Model was not prepared.";
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v89, &v88, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"ANSTErrorDomain", 3, v24);
    }

    v22 = 0;
  }

  v66 = *MEMORY[0x277D85DE8];
  return v22;
}

@end