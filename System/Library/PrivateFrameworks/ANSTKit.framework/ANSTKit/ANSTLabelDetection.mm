@interface ANSTLabelDetection
+ (id)new;
- (ANSTLabelDetection)init;
- (ANSTLabelDetection)initWithConfiguration:(id)a3 error:(id *)a4;
- (BOOL)addSupportedLabels:(id)a3 error:(id *)a4;
- (BOOL)executeDecoderInferenceWithError:(id *)a3;
- (BOOL)executeEncoderInferenceWithError:(id *)a3;
- (BOOL)prepareWithError:(id *)a3;
- (BOOL)updateTextFeature:(float *)a3 error:(id *)a4;
- (BOOL)updateTextIds:(int *)a3 error:(id *)a4;
- (NSSet)supportedLabels;
- (id)listWithPixelBuffer:(__CVBuffer *)a3 labels:(id)a4 detectionThreshold:(float)a5 error:(id *)a6;
- (id)listWithPixelBuffer:(__CVBuffer *)a3 labels:(id)a4 error:(id *)a5;
- (id)trackWithPixelBuffer:(__CVBuffer *)a3 objects:(id)a4 error:(id *)a5;
- (void)createESOP:(e5rt_execution_stream_operation *)a3 modelURL:(id)a4 error:(id *)a5;
- (void)dealloc;
- (void)preprocessInputImage:(__CVBuffer *)a3;
@end

@implementation ANSTLabelDetection

- (ANSTLabelDetection)init
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

- (BOOL)prepareWithError:(id *)a3
{
  v339[1] = *MEMORY[0x277D85DE8];
  if (!self->_readyForInference)
  {
    v6 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3);
    if (objc_msgSend_fileExistsAtPath_(v6, v7, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/label_detection.mlmodelc/encoder.mil"))
    {
      v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9);
      v12 = objc_msgSend_fileExistsAtPath_(v10, v11, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/label_detection.mlmodelc/model.mil");

      if (v12)
      {
        if (!self->decoder_stream)
        {
          v31 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v13, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/label_detection.mlmodelc/model.mil");
          v33 = e5rt_execution_stream_create();
          if (v33)
          {
            last_error_message = e5rt_get_last_error_message();
            v36 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v35, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&decoder_stream)", v33, last_error_message);
            v37 = _ANSTLoggingGetOSLogForCategoryANSTKit();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_22E65B094();
            }

            if (a3)
            {
              v39 = MEMORY[0x277CCA9B8];
              v336 = *MEMORY[0x277CCA068];
              v337 = v36;
              v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, &v337, &v336, 1);
              *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v39, v41, @"ANSTErrorDomain", 5, v40);
            }

            goto LABEL_18;
          }

          objc_msgSend_createESOP_modelURL_error_(self, v32, &self->decoder_operation, v31, a3);
        }

        if (!self->encoder_stream)
        {
          v42 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v13, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/label_detection.mlmodelc/encoder.mil");
          v44 = e5rt_execution_stream_create();
          if (v44)
          {
            v45 = e5rt_get_last_error_message();
            v47 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v46, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&encoder_stream)", v44, v45);
            v48 = _ANSTLoggingGetOSLogForCategoryANSTKit();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              sub_22E65B094();
            }

            if (a3)
            {
              v50 = MEMORY[0x277CCA9B8];
              v334 = *MEMORY[0x277CCA068];
              v335 = v47;
              v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v335, &v334, 1);
              *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v50, v52, @"ANSTErrorDomain", 5, v51);
            }

            goto LABEL_18;
          }

          objc_msgSend_createESOP_modelURL_error_(self, v43, &self->encoder_operation, v42, a3);
        }

        v14 = e5rt_buffer_object_alloc();
        if (v14)
        {
          v15 = v14;
          v16 = e5rt_get_last_error_message();
          v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s returned error code %u (%s)", "e5rt_buffer_object_alloc(&_inputBufferObject_text, kDecoderTextNumber * kFeatureLength * sizeof(float), E5RT_BUFFER_OBJECT_TYPE_IOSURFACE)", v15, v16);
          v19 = _ANSTLoggingGetOSLogForCategoryANSTKit();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_22E65B094();
          }

          if (a3)
          {
            v21 = MEMORY[0x277CCA9B8];
            v332 = *MEMORY[0x277CCA068];
            v333 = v18;
            v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, &v333, &v332, 1);
            *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v21, v23, @"ANSTErrorDomain", 5, v22);
          }

LABEL_18:
          v3 = 0;
          goto LABEL_19;
        }

        _esopBindInputBufferObject(self->decoder_operation, @"text_feats", self->_inputBufferObject_text, a3);
        decoder_operation = self->decoder_operation;
        v54 = e5rt_execution_stream_operation_retain_input_port();
        if (v54)
        {
          v55 = e5rt_get_last_error_message();
          v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v56, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(decoder_operation, input_image, &input_port)", v54, v55);
          v58 = _ANSTLoggingGetOSLogForCategoryANSTKit();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            sub_22E65B094();
          }

          if (a3)
          {
            v60 = MEMORY[0x277CCA9B8];
            v330 = *MEMORY[0x277CCA068];
            v331 = v57;
            v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v59, &v331, &v330, 1);
            v63 = objc_msgSend_errorWithDomain_code_userInfo_(v60, v62, @"ANSTErrorDomain", 5, v61);
LABEL_59:
            v3 = 0;
            *a3 = v63;

LABEL_177:
            goto LABEL_19;
          }
        }

        else
        {
          v64 = e5rt_io_port_retain_tensor_desc();
          if (v64)
          {
            v65 = e5rt_get_last_error_message();
            v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v66, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(input_port, &tensor_desc_input_image)", v64, v65);
            v67 = _ANSTLoggingGetOSLogForCategoryANSTKit();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              sub_22E65B094();
            }

            if (a3)
            {
              v69 = MEMORY[0x277CCA9B8];
              v328 = *MEMORY[0x277CCA068];
              v329 = v57;
              v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v68, &v329, &v328, 1);
              v63 = objc_msgSend_errorWithDomain_code_userInfo_(v69, v70, @"ANSTErrorDomain", 5, v61);
              goto LABEL_59;
            }
          }

          else
          {
            v71 = e5rt_tensor_desc_alloc_buffer_object();
            if (v71)
            {
              v72 = e5rt_get_last_error_message();
              v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v73, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(tensor_desc_input_image, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &input_buffer_object)", v71, v72);
              v74 = _ANSTLoggingGetOSLogForCategoryANSTKit();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                sub_22E65B094();
              }

              if (a3)
              {
                v76 = MEMORY[0x277CCA9B8];
                v326 = *MEMORY[0x277CCA068];
                v327 = v57;
                v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v75, &v327, &v326, 1);
                v63 = objc_msgSend_errorWithDomain_code_userInfo_(v76, v77, @"ANSTErrorDomain", 5, v61);
                goto LABEL_59;
              }
            }

            else
            {
              v78 = e5rt_io_port_bind_buffer_object();
              if (v78)
              {
                v79 = e5rt_get_last_error_message();
                v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v80, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(input_port, input_buffer_object)", v78, v79);
                v81 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  sub_22E65B094();
                }

                if (a3)
                {
                  v83 = MEMORY[0x277CCA9B8];
                  v324 = *MEMORY[0x277CCA068];
                  v325 = v57;
                  v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v82, &v325, &v324, 1);
                  v63 = objc_msgSend_errorWithDomain_code_userInfo_(v83, v84, @"ANSTErrorDomain", 5, v61);
                  goto LABEL_59;
                }
              }

              else
              {
                iosurface = e5rt_buffer_object_get_iosurface();
                if (iosurface)
                {
                  v86 = e5rt_get_last_error_message();
                  v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v87, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(input_buffer_object, &_inputImageTensorSurface)", iosurface, v86);
                  v88 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                  {
                    sub_22E65B094();
                  }

                  if (a3)
                  {
                    v90 = MEMORY[0x277CCA9B8];
                    v322 = *MEMORY[0x277CCA068];
                    v323 = v57;
                    v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v89, &v323, &v322, 1);
                    v63 = objc_msgSend_errorWithDomain_code_userInfo_(v90, v91, @"ANSTErrorDomain", 5, v61);
                    goto LABEL_59;
                  }
                }

                else
                {
                  v92 = e5rt_tensor_desc_release();
                  if (v92)
                  {
                    v93 = e5rt_get_last_error_message();
                    v95 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v94, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&tensor_desc_input_image)", v92, v93);
                    v96 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                    {
                      sub_22E65B094();
                    }
                  }

                  v97 = e5rt_buffer_object_release();
                  if (v97)
                  {
                    v98 = e5rt_get_last_error_message();
                    v100 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v99, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&input_buffer_object)", v97, v98);
                    v101 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                    {
                      sub_22E65B094();
                    }
                  }

                  v102 = e5rt_io_port_release();
                  if (v102)
                  {
                    v103 = e5rt_get_last_error_message();
                    v105 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v104, @"%s returned error code %u (%s)", "e5rt_io_port_release(&input_port)", v102, v103);
                    v106 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                    {
                      sub_22E65B094();
                    }
                  }

                  if (self->_outputPort_score || (v115 = self->decoder_operation, v116 = e5rt_execution_stream_operation_retain_output_port(), !v116))
                  {
                    if (self->_outputTensorDesc_score || (v123 = self->_outputPort_score, v124 = e5rt_io_port_retain_tensor_desc(), !v124))
                    {
                      if (!self->_outputBufferObject_score)
                      {
                        outputTensorDesc_score = self->_outputTensorDesc_score;
                        v132 = e5rt_tensor_desc_alloc_buffer_object();
                        if (v132)
                        {
                          v133 = e5rt_get_last_error_message();
                          v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v134, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(_outputTensorDesc_score, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 64, &_outputBufferObject_score)", v132, v133);
                          v135 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                          {
                            sub_22E65B094();
                          }

                          if (a3)
                          {
                            v137 = MEMORY[0x277CCA9B8];
                            v316 = *MEMORY[0x277CCA068];
                            v317 = v57;
                            v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v136, &v317, &v316, 1);
                            v63 = objc_msgSend_errorWithDomain_code_userInfo_(v137, v138, @"ANSTErrorDomain", 5, v61);
                            goto LABEL_59;
                          }

                          goto LABEL_176;
                        }

                        outputBufferObject_score = self->_outputBufferObject_score;
                      }

                      outputPort_score = self->_outputPort_score;
                      v108 = e5rt_io_port_bind_buffer_object();
                      if (v108)
                      {
                        v109 = e5rt_get_last_error_message();
                        v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v110, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(_outputPort_score, _outputBufferObject_score)", v108, v109);
                        v111 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                        {
                          sub_22E65B094();
                        }

                        if (a3)
                        {
                          v113 = MEMORY[0x277CCA9B8];
                          v314 = *MEMORY[0x277CCA068];
                          v315 = v57;
                          v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v112, &v315, &v314, 1);
                          v63 = objc_msgSend_errorWithDomain_code_userInfo_(v113, v114, @"ANSTErrorDomain", 5, v61);
                          goto LABEL_59;
                        }
                      }

                      else
                      {
                        v139 = self->_outputBufferObject_score;
                        v140 = e5rt_buffer_object_get_iosurface();
                        if (v140)
                        {
                          v141 = e5rt_get_last_error_message();
                          v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v142, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_outputBufferObject_score, &_outputScoreSurface)", v140, v141);
                          v143 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                          if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                          {
                            sub_22E65B094();
                          }

                          if (a3)
                          {
                            v145 = MEMORY[0x277CCA9B8];
                            v312 = *MEMORY[0x277CCA068];
                            v313 = v57;
                            v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v144, &v313, &v312, 1);
                            v63 = objc_msgSend_errorWithDomain_code_userInfo_(v145, v146, @"ANSTErrorDomain", 5, v61);
                            goto LABEL_59;
                          }
                        }

                        else if (self->_outputPort_bbox || (v156 = self->decoder_operation, v157 = e5rt_execution_stream_operation_retain_output_port(), !v157))
                        {
                          if (self->_outputTensorDesc_bbox || (v164 = self->_outputPort_bbox, v165 = e5rt_io_port_retain_tensor_desc(), !v165))
                          {
                            if (!self->_outputBufferObject_bbox)
                            {
                              outputTensorDesc_bbox = self->_outputTensorDesc_bbox;
                              v173 = e5rt_tensor_desc_alloc_buffer_object();
                              if (v173)
                              {
                                v174 = e5rt_get_last_error_message();
                                v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v175, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(_outputTensorDesc_bbox, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 64, &_outputBufferObject_bbox)", v173, v174);
                                v176 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                                if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
                                {
                                  sub_22E65B094();
                                }

                                if (a3)
                                {
                                  v178 = MEMORY[0x277CCA9B8];
                                  v306 = *MEMORY[0x277CCA068];
                                  v307 = v57;
                                  v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v177, &v307, &v306, 1);
                                  v63 = objc_msgSend_errorWithDomain_code_userInfo_(v178, v179, @"ANSTErrorDomain", 5, v61);
                                  goto LABEL_59;
                                }

                                goto LABEL_176;
                              }

                              outputBufferObject_bbox = self->_outputBufferObject_bbox;
                            }

                            outputPort_bbox = self->_outputPort_bbox;
                            v149 = e5rt_io_port_bind_buffer_object();
                            if (v149)
                            {
                              v150 = e5rt_get_last_error_message();
                              v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v151, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(_outputPort_bbox, _outputBufferObject_bbox)", v149, v150);
                              v152 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                              if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
                              {
                                sub_22E65B094();
                              }

                              if (a3)
                              {
                                v154 = MEMORY[0x277CCA9B8];
                                v304 = *MEMORY[0x277CCA068];
                                v305 = v57;
                                v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v153, &v305, &v304, 1);
                                v63 = objc_msgSend_errorWithDomain_code_userInfo_(v154, v155, @"ANSTErrorDomain", 5, v61);
                                goto LABEL_59;
                              }
                            }

                            else
                            {
                              v180 = self->_outputBufferObject_bbox;
                              v181 = e5rt_buffer_object_get_iosurface();
                              if (v181)
                              {
                                v182 = e5rt_get_last_error_message();
                                v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v183, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_outputBufferObject_bbox, &_outputBBoxSurface)", v181, v182);
                                v184 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                                if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
                                {
                                  sub_22E65B094();
                                }

                                if (a3)
                                {
                                  v186 = MEMORY[0x277CCA9B8];
                                  v302 = *MEMORY[0x277CCA068];
                                  v303 = v57;
                                  v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v185, &v303, &v302, 1);
                                  v63 = objc_msgSend_errorWithDomain_code_userInfo_(v186, v187, @"ANSTErrorDomain", 5, v61);
                                  goto LABEL_59;
                                }
                              }

                              else
                              {
                                self->_textFeature = malloc_type_malloc(0x20000uLL, 0x100004052888210uLL);
                                self->_textIds = malloc_type_malloc(0x9A0uLL, 0x100004052888210uLL);
                                v189 = e5rt_buffer_object_alloc();
                                if (v189)
                                {
                                  v190 = e5rt_get_last_error_message();
                                  v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v191, @"%s returned error code %u (%s)", "e5rt_buffer_object_alloc(&_inputBufferObject_text_ids, kEncoderTextNumber * kMaxTextLength * sizeof(int32_t), E5RT_BUFFER_OBJECT_TYPE_IOSURFACE)", v189, v190);
                                  v192 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                                  if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
                                  {
                                    sub_22E65B094();
                                  }

                                  if (a3)
                                  {
                                    v194 = MEMORY[0x277CCA9B8];
                                    v300 = *MEMORY[0x277CCA068];
                                    v301 = v57;
                                    v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v193, &v301, &v300, 1);
                                    v63 = objc_msgSend_errorWithDomain_code_userInfo_(v194, v195, @"ANSTErrorDomain", 5, v61);
                                    goto LABEL_59;
                                  }
                                }

                                else
                                {
                                  _esopBindInputBufferObject(self->encoder_operation, @"text_ids", self->_inputBufferObject_text_ids, a3);
                                  if (self->_outputPort_text_feats || (v204 = self->encoder_operation, v205 = e5rt_execution_stream_operation_retain_output_port(), !v205))
                                  {
                                    if (self->_outputTensorDesc_text_feats || (v212 = self->_outputPort_text_feats, v213 = e5rt_io_port_retain_tensor_desc(), !v213))
                                    {
                                      if (!self->_outputBufferObject_text_feats)
                                      {
                                        outputTensorDesc_text_feats = self->_outputTensorDesc_text_feats;
                                        v221 = e5rt_tensor_desc_alloc_buffer_object();
                                        if (v221)
                                        {
                                          v222 = e5rt_get_last_error_message();
                                          v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v223, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(_outputTensorDesc_text_feats, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 64, &_outputBufferObject_text_feats)", v221, v222);
                                          v224 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                                          if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
                                          {
                                            sub_22E65B094();
                                          }

                                          if (a3)
                                          {
                                            v226 = MEMORY[0x277CCA9B8];
                                            v294 = *MEMORY[0x277CCA068];
                                            v295 = v57;
                                            v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v225, &v295, &v294, 1);
                                            v63 = objc_msgSend_errorWithDomain_code_userInfo_(v226, v227, @"ANSTErrorDomain", 5, v61);
                                            goto LABEL_59;
                                          }

                                          goto LABEL_176;
                                        }

                                        outputBufferObject_text_feats = self->_outputBufferObject_text_feats;
                                      }

                                      outputPort_text_feats = self->_outputPort_text_feats;
                                      v197 = e5rt_io_port_bind_buffer_object();
                                      if (v197)
                                      {
                                        v198 = e5rt_get_last_error_message();
                                        v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v199, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(_outputPort_text_feats, _outputBufferObject_text_feats)", v197, v198);
                                        v200 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                                        if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
                                        {
                                          sub_22E65B094();
                                        }

                                        if (a3)
                                        {
                                          v202 = MEMORY[0x277CCA9B8];
                                          v292 = *MEMORY[0x277CCA068];
                                          v293 = v57;
                                          v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v201, &v293, &v292, 1);
                                          v63 = objc_msgSend_errorWithDomain_code_userInfo_(v202, v203, @"ANSTErrorDomain", 5, v61);
                                          goto LABEL_59;
                                        }
                                      }

                                      else
                                      {
                                        v228 = self->_outputBufferObject_text_feats;
                                        v229 = e5rt_buffer_object_get_iosurface();
                                        if (v229)
                                        {
                                          v230 = e5rt_get_last_error_message();
                                          v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v231, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_outputBufferObject_text_feats, &_outputTextFeatsSurface)", v229, v230);
                                          v232 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                                          if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
                                          {
                                            sub_22E65B094();
                                          }

                                          if (a3)
                                          {
                                            v234 = MEMORY[0x277CCA9B8];
                                            v290 = *MEMORY[0x277CCA068];
                                            v291 = v57;
                                            v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v233, &v291, &v290, 1);
                                            v63 = objc_msgSend_errorWithDomain_code_userInfo_(v234, v235, @"ANSTErrorDomain", 5, v61);
                                            goto LABEL_59;
                                          }
                                        }

                                        else
                                        {
                                          encoder_stream = self->encoder_stream;
                                          encoder_operation = self->encoder_operation;
                                          v239 = e5rt_execution_stream_encode_operation();
                                          if (v239)
                                          {
                                            v240 = e5rt_get_last_error_message();
                                            v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v241, @"%s returned error code %u (%s)", "e5rt_execution_stream_encode_operation(encoder_stream, encoder_operation)", v239, v240);
                                            v242 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                                            if (os_log_type_enabled(v242, OS_LOG_TYPE_ERROR))
                                            {
                                              sub_22E65B094();
                                            }

                                            if (a3)
                                            {
                                              v244 = MEMORY[0x277CCA9B8];
                                              v288 = *MEMORY[0x277CCA068];
                                              v289 = v57;
                                              v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v243, &v289, &v288, 1);
                                              v63 = objc_msgSend_errorWithDomain_code_userInfo_(v244, v245, @"ANSTErrorDomain", 5, v61);
                                              goto LABEL_59;
                                            }
                                          }

                                          else
                                          {
                                            decoder_stream = self->decoder_stream;
                                            v247 = self->decoder_operation;
                                            v250 = e5rt_execution_stream_encode_operation();
                                            if (v250)
                                            {
                                              v251 = e5rt_get_last_error_message();
                                              v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v252, @"%s returned error code %u (%s)", "e5rt_execution_stream_encode_operation(decoder_stream, decoder_operation)", v250, v251);
                                              v253 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                                              if (os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
                                              {
                                                sub_22E65B094();
                                              }

                                              if (a3)
                                              {
                                                v255 = MEMORY[0x277CCA9B8];
                                                v286 = *MEMORY[0x277CCA068];
                                                v287 = v57;
                                                v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v254, &v287, &v286, 1);
                                                v63 = objc_msgSend_errorWithDomain_code_userInfo_(v255, v256, @"ANSTErrorDomain", 5, v61);
                                                goto LABEL_59;
                                              }
                                            }

                                            else
                                            {
                                              v257 = objc_msgSend_networkInputBufferWidth(self, v248, v249);
                                              v260 = objc_msgSend_networkInputBufferHeight(self, v258, v259);
                                              v263 = objc_msgSend_networkInputBufferPixelFormat(self, v261, v262);
                                              v264 = v257;
                                              v284[0] = *MEMORY[0x277CC4EC8];
                                              v267 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v265, v266, v257);
                                              v268 = v260;
                                              v285[0] = v267;
                                              v284[1] = *MEMORY[0x277CC4DD8];
                                              v271 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v269, v270, v260);
                                              v285[1] = v271;
                                              v284[2] = *MEMORY[0x277CC4E30];
                                              v273 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v272, v263);
                                              v284[3] = *MEMORY[0x277CC4DE8];
                                              v285[2] = v273;
                                              v285[3] = MEMORY[0x277CBEC10];
                                              v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v274, v285, v284, 4);

                                              CVPixelBufferCreate(0, v264, v268, v263, v57, &self->_transformedInputImage);
                                              v275 = MEMORY[0x277CBF2C0];
                                              v277 = *(MEMORY[0x277CBF2C0] + 16);
                                              v276 = *(MEMORY[0x277CBF2C0] + 32);
                                              *&self->_inputAffineTransform.a = *MEMORY[0x277CBF2C0];
                                              *&self->_inputAffineTransform.c = v277;
                                              *&self->_inputAffineTransform.tx = v276;
                                              v278 = *v275;
                                              v279 = v275[2];
                                              *&self->_outputAffineTransform.c = v275[1];
                                              *&self->_outputAffineTransform.tx = v279;
                                              *&self->_outputAffineTransform.a = v278;
                                              v282 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v280, v281);
                                              LOBYTE(v263) = objc_msgSend_fileExistsAtPath_(v282, v283, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/label_detection.mlmodelc/bpe_simple_vocab_s.txt");

                                              if (v263)
                                              {
                                                operator new();
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v214 = e5rt_get_last_error_message();
                                      v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v215, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(_outputPort_text_feats, &_outputTensorDesc_text_feats)", v213, v214);
                                      v216 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                                      if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
                                      {
                                        sub_22E65B094();
                                      }

                                      if (a3)
                                      {
                                        v218 = MEMORY[0x277CCA9B8];
                                        v296 = *MEMORY[0x277CCA068];
                                        v297 = v57;
                                        v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v217, &v297, &v296, 1);
                                        v63 = objc_msgSend_errorWithDomain_code_userInfo_(v218, v219, @"ANSTErrorDomain", 5, v61);
                                        goto LABEL_59;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v206 = e5rt_get_last_error_message();
                                    v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v207, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(encoder_operation, text_feats, &_outputPort_text_feats)", v205, v206);
                                    v208 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                                    if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
                                    {
                                      sub_22E65B094();
                                    }

                                    if (a3)
                                    {
                                      v210 = MEMORY[0x277CCA9B8];
                                      v298 = *MEMORY[0x277CCA068];
                                      v299 = v57;
                                      v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v209, &v299, &v298, 1);
                                      v63 = objc_msgSend_errorWithDomain_code_userInfo_(v210, v211, @"ANSTErrorDomain", 5, v61);
                                      goto LABEL_59;
                                    }
                                  }
                                }
                              }
                            }
                          }

                          else
                          {
                            v166 = e5rt_get_last_error_message();
                            v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v167, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(_outputPort_bbox, &_outputTensorDesc_bbox)", v165, v166);
                            v168 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                            if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                            {
                              sub_22E65B094();
                            }

                            if (a3)
                            {
                              v170 = MEMORY[0x277CCA9B8];
                              v308 = *MEMORY[0x277CCA068];
                              v309 = v57;
                              v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v169, &v309, &v308, 1);
                              v63 = objc_msgSend_errorWithDomain_code_userInfo_(v170, v171, @"ANSTErrorDomain", 5, v61);
                              goto LABEL_59;
                            }
                          }
                        }

                        else
                        {
                          v158 = e5rt_get_last_error_message();
                          v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v159, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(decoder_operation, bboxes, &_outputPort_bbox)", v157, v158);
                          v160 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                          if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
                          {
                            sub_22E65B094();
                          }

                          if (a3)
                          {
                            v162 = MEMORY[0x277CCA9B8];
                            v310 = *MEMORY[0x277CCA068];
                            v311 = v57;
                            v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v161, &v311, &v310, 1);
                            v63 = objc_msgSend_errorWithDomain_code_userInfo_(v162, v163, @"ANSTErrorDomain", 5, v61);
                            goto LABEL_59;
                          }
                        }
                      }
                    }

                    else
                    {
                      v125 = e5rt_get_last_error_message();
                      v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v126, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(_outputPort_score, &_outputTensorDesc_score)", v124, v125);
                      v127 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                      if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                      {
                        sub_22E65B094();
                      }

                      if (a3)
                      {
                        v129 = MEMORY[0x277CCA9B8];
                        v318 = *MEMORY[0x277CCA068];
                        v319 = v57;
                        v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v128, &v319, &v318, 1);
                        v63 = objc_msgSend_errorWithDomain_code_userInfo_(v129, v130, @"ANSTErrorDomain", 5, v61);
                        goto LABEL_59;
                      }
                    }
                  }

                  else
                  {
                    v117 = e5rt_get_last_error_message();
                    v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v118, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(decoder_operation, scores, &_outputPort_score)", v116, v117);
                    v119 = _ANSTLoggingGetOSLogForCategoryANSTKit();
                    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                    {
                      sub_22E65B094();
                    }

                    if (a3)
                    {
                      v121 = MEMORY[0x277CCA9B8];
                      v320 = *MEMORY[0x277CCA068];
                      v321 = v57;
                      v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v120, &v321, &v320, 1);
                      v63 = objc_msgSend_errorWithDomain_code_userInfo_(v121, v122, @"ANSTErrorDomain", 5, v61);
                      goto LABEL_59;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_176:
        v3 = 0;
        goto LABEL_177;
      }
    }

    else
    {
    }

    v24 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B014();
    }

    if (a3)
    {
      v26 = MEMORY[0x277CCA9B8];
      v338 = *MEMORY[0x277CCA450];
      v339[0] = @"Model files does not exist. Returning NO.";
      v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v339, &v338, 1);
      *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v26, v28, @"ANSTErrorDomain", 3, v27);
    }

    goto LABEL_18;
  }

  v3 = 1;
LABEL_19:
  v29 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)createESOP:(e5rt_execution_stream_operation *)a3 modelURL:(id)a4 error:(id *)a5
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!e5rt_e5_compiler_create() && !e5rt_e5_compiler_options_create())
  {
    v9 = objc_msgSend_relativePath(v6, v7, v8);
    v10 = v9;
    objc_msgSend_UTF8String(v9, v11, v12);
    if (e5rt_e5_compiler_compile() || e5rt_program_library_retain_program_function() || e5rt_precompiled_compute_op_create_options_create_with_program_function())
    {
    }

    else
    {
      v28 = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options() == 0;

      if (v28)
      {
        goto LABEL_11;
      }
    }
  }

  last_error_message = e5rt_get_last_error_message();
  v14 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_22E65B1FC(last_error_message, v14, v15, v16, v17, v18, v19, v20);
  }

  if (a5)
  {
    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"MIL compilation failed due to E5 error (%s)", last_error_message);
    v23 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA068];
    v30[0] = v22;
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v30, &v29, 1);
    *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v23, v26, @"ANSTErrorDomain", 5, v25);
  }

LABEL_11:

  v27 = *MEMORY[0x277D85DE8];
}

- (ANSTLabelDetection)initWithConfiguration:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19.receiver = self;
  v19.super_class = ANSTLabelDetection;
  v7 = [(ANSTAlgorithm *)&v19 initWithConfiguration:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, a3);
    v8->_readyForInference = 0;
    v8->_bgraInputBuffer = 0;
    v8->_inputImageTensorSurface = 0;
    v22 = xmmword_22E662270;
    v23 = 64;
    v9 = [ANSTTensorDescriptor alloc];
    v11 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v9, v10, @"scores", 102, 3, &v22, 64, 0);
    outputScoreDescriptor = v8->_outputScoreDescriptor;
    v8->_outputScoreDescriptor = v11;

    v20 = xmmword_22E662288;
    v21 = 4;
    v13 = [ANSTTensorDescriptor alloc];
    v15 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v13, v14, @"bboxes", 102, 3, &v20, 64, 0);
    outputBBoxDescriptor = v8->_outputBBoxDescriptor;
    v8->_outputBBoxDescriptor = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)preprocessInputImage:(__CVBuffer *)a3
{
  CVPixelBufferLockBaseAddress(a3, 0);
  CVPixelBufferLockBaseAddress(self->_transformedInputImage, 0);
  IOSurfaceLock(self->_inputImageTensorSurface, 0, 0);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v7 = CVPixelBufferGetWidth(self->_transformedInputImage);
  v8 = CVPixelBufferGetHeight(self->_transformedInputImage);
  if (v7 / Width >= v8 / Height)
  {
    v9 = v8 / Height;
  }

  else
  {
    v9 = v7 / Width;
  }

  v10 = MEMORY[0x277CBF2C0];
  v11 = *MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 32);
  *&self->_inputAffineTransform.c = *(MEMORY[0x277CBF2C0] + 16);
  *&self->_inputAffineTransform.tx = v12;
  *&self->_inputAffineTransform.a = v11;
  v13 = v10[1];
  *&v36.a = *v10;
  *&v36.c = v13;
  *&v36.tx = v10[2];
  CGAffineTransformTranslate(&v37, &v36, vcvtd_n_f64_u64(v7, 1uLL), vcvtd_n_f64_u64(v8, 1uLL));
  v14 = *&v37.c;
  *&self->_inputAffineTransform.a = *&v37.a;
  *&self->_inputAffineTransform.c = v14;
  *&self->_inputAffineTransform.tx = *&v37.tx;
  v15 = *&self->_inputAffineTransform.c;
  *&v36.a = *&self->_inputAffineTransform.a;
  *&v36.c = v15;
  *&v36.tx = *&self->_inputAffineTransform.tx;
  CGAffineTransformScale(&v37, &v36, v9, v9);
  v16 = *&v37.c;
  *&self->_inputAffineTransform.a = *&v37.a;
  *&self->_inputAffineTransform.c = v16;
  *&self->_inputAffineTransform.tx = *&v37.tx;
  v17 = *&self->_inputAffineTransform.c;
  *&v36.a = *&self->_inputAffineTransform.a;
  *&v36.c = v17;
  *&v36.tx = *&self->_inputAffineTransform.tx;
  CGAffineTransformTranslate(&v37, &v36, Width * -0.5, Height * -0.5);
  v18 = *&v37.c;
  *&self->_inputAffineTransform.a = *&v37.a;
  *&self->_inputAffineTransform.c = v18;
  *&self->_inputAffineTransform.tx = *&v37.tx;
  v19 = *&self->_inputAffineTransform.c;
  *&v37.a = *&self->_inputAffineTransform.a;
  *&v37.c = v19;
  *&v37.tx = *&self->_inputAffineTransform.tx;
  v35[0] = CVPixelBufferGetBaseAddress(a3);
  v35[1] = CVPixelBufferGetHeight(a3);
  v35[2] = CVPixelBufferGetWidth(a3);
  v35[3] = CVPixelBufferGetBytesPerRow(a3);
  v34[0] = CVPixelBufferGetBaseAddress(self->_transformedInputImage);
  v34[1] = CVPixelBufferGetHeight(self->_transformedInputImage);
  v34[2] = CVPixelBufferGetWidth(self->_transformedInputImage);
  v34[3] = CVPixelBufferGetBytesPerRow(self->_transformedInputImage);
  v33 = -16777216;
  MEMORY[0x2318EAF80](v35, v34, 0, &v37, &v33, 4);
  memset(&v36, 0, sizeof(v36));
  v20 = *&self->_inputAffineTransform.c;
  *&v32.a = *&self->_inputAffineTransform.a;
  *&v32.c = v20;
  *&v32.tx = *&self->_inputAffineTransform.tx;
  CGAffineTransformInvert(&v36, &v32);
  v21 = *&v36.c;
  *&self->_outputAffineTransform.a = *&v36.a;
  *&self->_outputAffineTransform.c = v21;
  *&self->_outputAffineTransform.tx = *&v36.tx;
  BaseAddress = IOSurfaceGetBaseAddress(self->_inputImageTensorSurface);
  v23 = CVPixelBufferGetBaseAddress(self->_transformedInputImage);
  v24 = CVPixelBufferGetWidth(self->_transformedInputImage);
  v25 = CVPixelBufferGetHeight(self->_transformedInputImage);
  v27 = v25 * v24;
  if (v25 * v24)
  {
    v28 = 2 * v27;
    v29 = v23 + 2;
    do
    {
      LOBYTE(v26) = *(v29 - 2);
      v30 = *&v26 / 255.0;
      *&v30 = v30;
      BaseAddress[v28] = LODWORD(v30);
      LOBYTE(v30) = *(v29 - 1);
      v31 = *&v30 / 255.0;
      *&v31 = v31;
      BaseAddress[v24 * v25] = LODWORD(v31);
      LOBYTE(v31) = *v29;
      v26 = *&v31 / 255.0;
      *&v26 = v26;
      *BaseAddress++ = LODWORD(v26);
      v29 += 4;
      --v27;
    }

    while (v27);
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);
  CVPixelBufferUnlockBaseAddress(self->_transformedInputImage, 0);
  IOSurfaceUnlock(self->_inputImageTensorSurface, 0, 0);
}

- (BOOL)executeDecoderInferenceWithError:(id *)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  decoder_stream = self->decoder_stream;
  v5 = e5rt_execution_stream_execute_sync();
  if (v5)
  {
    last_error_message = e5rt_get_last_error_message();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(decoder_stream)", v5, last_error_message);
    v9 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B27C();
    }

    if (a3)
    {
      v11 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA068];
      v17[0] = v8;
      v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v17, &v16, 1);
      *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"ANSTErrorDomain", 5, v12);
    }
  }

  result = v5 == 0;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)executeEncoderInferenceWithError:(id *)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  encoder_stream = self->encoder_stream;
  v5 = e5rt_execution_stream_execute_sync();
  if (v5)
  {
    last_error_message = e5rt_get_last_error_message();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(encoder_stream)", v5, last_error_message);
    v9 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B2F0();
    }

    if (a3)
    {
      v11 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA068];
      v17[0] = v8;
      v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v17, &v16, 1);
      *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"ANSTErrorDomain", 5, v12);
    }
  }

  result = v5 == 0;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)updateTextFeature:(float *)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  inputBufferObject_text = self->_inputBufferObject_text;
  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    last_error_message = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_inputBufferObject_text, &feature_in)", iosurface, last_error_message);
    v11 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B364();
    }

    if (a4)
    {
      v13 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA068];
      v20[0] = v10;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v20, &v19, 1);
      *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"ANSTErrorDomain", 5, v14);
    }
  }

  else
  {
    IOSurfaceLock(0, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(0);
    memcpy(BaseAddress, a3, 0x20000uLL);
    IOSurfaceUnlock(0, 0, 0);
  }

  result = iosurface == 0;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)updateTextIds:(int *)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  inputBufferObject_text_ids = self->_inputBufferObject_text_ids;
  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    last_error_message = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_inputBufferObject_text_ids, &feature_in)", iosurface, last_error_message);
    v11 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B3D8();
    }

    if (a4)
    {
      v13 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA068];
      v20[0] = v10;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v20, &v19, 1);
      *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"ANSTErrorDomain", 5, v14);
    }
  }

  else
  {
    IOSurfaceLock(0, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(0);
    memcpy(BaseAddress, a3, 0x4000uLL);
    IOSurfaceUnlock(0, 0, 0);
  }

  result = iosurface == 0;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)listWithPixelBuffer:(__CVBuffer *)a3 labels:(id)a4 error:(id *)a5
{
  LODWORD(v5) = 1036831949;
  v6 = objc_msgSend_listWithPixelBuffer_labels_detectionThreshold_error_(self, a2, a3, a4, a5, v5);

  return v6;
}

- (id)listWithPixelBuffer:(__CVBuffer *)a3 labels:(id)a4 detectionThreshold:(float)a5 error:(id *)a6
{
  v207[1] = *MEMORY[0x277D85DE8];
  obj = a4;
  if (!self->_readyForInference)
  {
    if (a6)
    {
      v21 = MEMORY[0x277CCA9B8];
      v206 = *MEMORY[0x277CCA450];
      v174 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v207, &v206, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v21, v22, @"ANSTErrorDomain", 4);
      *a6 = v23 = 0;

      goto LABEL_88;
    }

    goto LABEL_22;
  }

  v172 = a6;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType == objc_msgSend_networkInputBufferPixelFormat(self, v11, v12))
  {
LABEL_24:
    v175 = objc_msgSend_set(MEMORY[0x277CBEB58], v13, v14);
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    obj = obj;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v195, v201, 16);
    if (v39)
    {
      v40 = *v196;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v196 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = objc_msgSend_lowercaseString(*(*(&v195 + 1) + 8 * i), v37, v38);
          objc_msgSend_addObject_(v175, v43, v42);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v195, v201, 16);
      }

      while (v39);
    }

    v46 = objc_msgSend_supportedLabels(self, v44, v45);
    isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v175, v47, v46);

    if (isSubsetOfSet)
    {
      objc_msgSend_preprocessInputImage_(self, v49, a3);
      if (obj && objc_msgSend_count(obj, v50, v51))
      {
        v52 = obj;
      }

      else
      {
        v55 = objc_msgSend_supportedLabels(self, v50, v51);
        v58 = objc_msgSend_allObjects(v55, v56, v57);

        v52 = v58;
      }

      obj = v52;
      v59 = objc_msgSend_count(v52, v50, v51);
      v177 = objc_msgSend_array(MEMORY[0x277CBEB18], v60, v61);
      v170 = vcvtpd_u64_f64(vcvtd_n_f64_u64(v59, 6uLL));
      if (v170)
      {
        v64 = 0;
        while (1)
        {
          textFeature = self->_textFeature;
          v66 = v64 << 6;
          v171 = v64 + 1;
          if (v64 << 6 < ((v64 + 1) << 6))
          {
            v67 = 64;
            v68 = v64 << 6;
            do
            {
              v71 = @"none";
              if (v68 < objc_msgSend_count(obj, v62, v63))
              {
                v71 = objc_msgSend_objectAtIndexedSubscript_(obj, v69, v68);
              }

              currentFeatureMap = self->_currentFeatureMap;
              v73 = objc_msgSend_lowercaseString(v71, v69, v70);
              v75 = objc_msgSend_objectForKeyedSubscript_(currentFeatureMap, v74, v73);

              objc_msgSend_getBytes_length_(v75, v76, textFeature, 2048);
              textFeature += 512;
              ++v68;
              --v67;
            }

            while (v67);
            textFeature = self->_textFeature;
          }

          if ((objc_msgSend_updateTextFeature_error_(self, v62, textFeature, v172) & 1) == 0 || !objc_msgSend_executeDecoderInferenceWithError_(self, v77, v172))
          {
            break;
          }

          outputScoreSurface = self->_outputScoreSurface;
          IOSurfaceLock(outputScoreSurface, 1u, 0);
          BaseAddress = IOSurfaceGetBaseAddress(outputScoreSurface);
          IOSurfaceUnlock(outputScoreSurface, 1u, 0);
          outputBBoxSurface = self->_outputBBoxSurface;
          IOSurfaceLock(outputBBoxSurface, 1u, 0);
          v81 = IOSurfaceGetBaseAddress(outputBBoxSurface);
          IOSurfaceUnlock(outputBBoxSurface, 1u, 0);
          v84 = objc_msgSend_lengths(self->_outputScoreDescriptor, v82, v83);
          v86 = objc_msgSend_objectAtIndexedSubscript_(v84, v85, 1);
          v173 = objc_msgSend_unsignedIntegerValue(v86, v87, v88);

          if (v64 == v170 - 1)
          {
            v91 = objc_msgSend_count(obj, v89, v90) - v66;
          }

          else
          {
            v91 = 64;
          }

          memset(v193, 0, sizeof(v193));
          v194 = 1065353216;
          memset(v191, 0, sizeof(v191));
          v192 = 1065353216;
          memset(v189, 0, sizeof(v189));
          v190 = 1065353216;
          v186 = 0u;
          v187 = 0u;
          v188 = 1065353216;
          v185 = 0;
          if (v173 > 0)
          {
            do
            {
              v184 = 0;
              if (v91 >= 1)
              {
                v92 = 0;
                v93 = 0;
                do
                {
                  v94 = BaseAddress[v92];
                  v95 = objc_msgSend_objectAtIndexedSubscript_(obj, v89, v93 + v66);
                  v97 = objc_msgSend_objectForKeyedSubscript_(self->_classwiseThreshold, v96, v95);
                  objc_msgSend_doubleValue(v97, v98, v99);
                  v101 = v100;

                  v102 = 0.1;
                  if (v101 >= 0.000001)
                  {
                    v102 = v101;
                  }

                  if (v102 <= 0.32)
                  {
                    v103 = v102;
                  }

                  else
                  {
                    v103 = 0.32;
                  }

                  if (v102 >= 0.12)
                  {
                    v104 = v103;
                  }

                  else
                  {
                    v104 = 0.12;
                  }

                  v105 = -1.60943791 / log(v104);
                  v106 = powf(v94, v105);
                  if (v106 > a5)
                  {
                    *&v180.a = &v184;
                    v107 = sub_22E621730(v193, &v184);
                    sub_22E60BF14(v107 + 3, &v185);
                    *&v180.a = &v184;
                    v108 = sub_22E621730(v191, &v184);
                    sub_22E60BF14(v108 + 3, &v184);
                    *&v180.a = &v184;
                    v109 = sub_22E6219E8(v189, &v184);
                    v110 = v109;
                    v112 = v109[4];
                    v111 = v109[5];
                    if (v112 >= v111)
                    {
                      v114 = v109[3];
                      v115 = v112 - v114;
                      v116 = (v112 - v114) >> 2;
                      v117 = v116 + 1;
                      if ((v116 + 1) >> 62)
                      {
                        sub_22E61047C();
                      }

                      v118 = v111 - v114;
                      if (v118 >> 1 > v117)
                      {
                        v117 = v118 >> 1;
                      }

                      v119 = v118 >= 0x7FFFFFFFFFFFFFFCLL;
                      v120 = 0x3FFFFFFFFFFFFFFFLL;
                      if (!v119)
                      {
                        v120 = v117;
                      }

                      if (v120)
                      {
                        sub_22E610C54((v109 + 3), v120);
                      }

                      v121 = (v112 - v114) >> 2;
                      v122 = (4 * v116);
                      v123 = (4 * v116 - 4 * v121);
                      *v122 = v106;
                      v113 = v122 + 1;
                      memcpy(v123, v114, v115);
                      v124 = v110[3];
                      v110[3] = v123;
                      v110[4] = v113;
                      v110[5] = 0;
                      if (v124)
                      {
                        operator delete(v124);
                      }
                    }

                    else
                    {
                      *v112 = v106;
                      v113 = v112 + 1;
                    }

                    v110[4] = v113;
                    memset(&v180, 0, 32);
                    *&v180.a = *v81;
                    *&v180.d = v106;
                    LODWORD(v180.c) = v184 + v66;
                    __p = &v184;
                    v125 = sub_22E621C3C(&v186, &v184);
                    sub_22E618194((v125 + 3), &v180);
                  }

                  v92 = ++v184;
                  v93 = v92;
                }

                while (v91 > v92);
              }

              v126 = objc_msgSend_lengths(self->_outputScoreDescriptor, v89, v90);
              v129 = objc_msgSend_lastObject(v126, v127, v128);
              v132 = objc_msgSend_unsignedIntegerValue(v129, v130, v131);

              v135 = objc_msgSend_lengths(self->_outputBBoxDescriptor, v133, v134);
              v138 = objc_msgSend_lastObject(v135, v136, v137);
              v141 = objc_msgSend_unsignedIntegerValue(v138, v139, v140);

              BaseAddress += v132;
              v81 = (v81 + 4 * v141);
              v143 = ++v185;
            }

            while (v173 > v143);
            for (j = v187; j; j = *j)
            {
              __p = 0;
              v182 = 0;
              v183 = 0;
              v142.n128_u32[0] = 0.5;
              performNMS(j + 3, &__p, v142);
              v145 = j[3];
              for (k = j[4]; v145 != k; v145 += 32)
              {
                v147 = *v145;
                v148 = *(v145 + 4);
                v149 = *(v145 + 8);
                v150 = *(v145 + 12);
                v151 = *(v145 + 16);
                v152 = *(v145 + 24);
                ++self->_detectedObjectId;
                v209.origin.x = v147;
                v209.origin.y = v148;
                v209.size.width = (v149 - v147);
                v209.size.height = (v150 - v148);
                v153 = *&self->_outputAffineTransform.c;
                *&v180.a = *&self->_outputAffineTransform.a;
                *&v180.c = v153;
                *&v180.tx = *&self->_outputAffineTransform.tx;
                v210 = CGRectApplyAffineTransform(v209, &v180);
                x = v210.origin.x;
                y = v210.origin.y;
                width = v210.size.width;
                height = v210.size.height;
                v158 = [ANSTLabelObject alloc];
                detectedObjectId = self->_detectedObjectId;
                v161 = objc_msgSend_objectAtIndexedSubscript_(obj, v160, v151);
                LODWORD(v162) = v152;
                v164 = objc_msgSend_initWithObjectID_category_boundingBox_confidence_(v158, v163, detectedObjectId, v161, x, y, width, height, v162);

                objc_msgSend_addObject_(v177, v165, v164);
              }

              if (__p)
              {
                v182 = __p;
                operator delete(__p);
              }
            }
          }

          sub_22E6216A8(&v186);
          sub_22E6216A8(v189);
          sub_22E6216A8(v191);
          sub_22E6216A8(v193);
          v64 = v171;
          if (v171 == v170)
          {
            goto LABEL_84;
          }
        }

        v23 = 0;
      }

      else
      {
LABEL_84:
        v166 = [ANSTLabelDetectionResult alloc];
        v23 = objc_msgSend_initWithLabels_(v166, v167, v177);
      }
    }

    else if (v172)
    {
      v53 = MEMORY[0x277CCA9B8];
      v199 = *MEMORY[0x277CCA450];
      v176 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v200, &v199, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v53, v54, @"ANSTErrorDomain", 2);
      *v172 = v23 = 0;
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_87;
  }

  v15 = CVPixelBufferGetWidth(a3);
  v18 = CVPixelBufferGetHeight(a3);
  bgraInputBuffer = self->_bgraInputBuffer;
  if (bgraInputBuffer)
  {
    if (CVPixelBufferGetWidth(bgraInputBuffer) == v15 && CVPixelBufferGetHeight(self->_bgraInputBuffer) == v18)
    {
      v20 = self->_bgraInputBuffer;
      goto LABEL_12;
    }

    v24 = self->_bgraInputBuffer;
    if (v24)
    {
      CVPixelBufferRelease(v24);
      self->_bgraInputBuffer = 0;
    }
  }

  v25 = objc_msgSend_networkInputBufferPixelFormat(self, v16, v17);
  objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v26, v25, v15, v18, &self->_bgraInputBuffer);
  v20 = self->_bgraInputBuffer;
  if (!v20)
  {
    v32 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B4CC();
    }

    if (a6)
    {
      v34 = MEMORY[0x277CCA9B8];
      v204 = *MEMORY[0x277CCA450];
      v205 = @"Failed to prepare resized input buffer.";
      v175 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, &v205, &v204, 1);
      v31 = objc_msgSend_errorWithDomain_code_userInfo_(v34, v35, @"ANSTErrorDomain", 3);
      goto LABEL_21;
    }

LABEL_22:
    v23 = 0;
    goto LABEL_88;
  }

LABEL_12:
  if (!VTPixelTransferSessionTransferImage(self->_pixelTransferSession, a3, v20))
  {
    a3 = self->_bgraInputBuffer;
    goto LABEL_24;
  }

  v27 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_22E65B44C();
  }

  if (!a6)
  {
    goto LABEL_22;
  }

  v29 = MEMORY[0x277CCA9B8];
  v202 = *MEMORY[0x277CCA450];
  v203 = @"Failed to transfer input pixel buffer.";
  v175 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v203, &v202, 1);
  v31 = objc_msgSend_errorWithDomain_code_userInfo_(v29, v30, @"ANSTErrorDomain", 4);
LABEL_21:
  v23 = 0;
  *a6 = v31;
LABEL_87:

LABEL_88:
  v168 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)trackWithPixelBuffer:(__CVBuffer *)a3 objects:(id)a4 error:(id *)a5
{
  v182[1] = *MEMORY[0x277D85DE8];
  v140 = a4;
  if (objc_msgSend_runningFrameRate(self->_configuration, v7, v8) != 2)
  {
    v174[1] = 0;
    v174[0] = 0;
    v173 = v174;
    memset(v172, 0, sizeof(v172));
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v14 = v140;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v168, v180, 16);
    if (v16)
    {
      v17 = 0;
      v18 = *v169;
      for (i = *v169; ; i = *v169)
      {
        if (i != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v168 + 1) + 8 * v17);
        v21 = acAcObjectMaskNull(&v157);
        objc_msgSend_boundingBox(v20, v22, v23, v21);
        *&v24 = v24;
        HIDWORD(v157) = LODWORD(v24);
        objc_msgSend_boundingBox(v20, v25, v26);
        v28 = v27;
        *&v158 = v28;
        objc_msgSend_boundingBox(v20, v29, v30);
        v32 = v31;
        *(&v158 + 1) = v32;
        objc_msgSend_boundingBox(v20, v33, v34);
        v36 = v35;
        *(&v158 + 2) = v36;
        HIDWORD(v158) = objc_msgSend_confidence(v20, v37, v38);
        v41 = objc_msgSend_label(v20, v39, v40);
        v42 = v41;
        v45 = objc_msgSend_UTF8String(v41, v43, v44);
        sub_22E6206FC(&__p, v45);

        LODWORD(v157) = objc_msgSend_objectID(v20, v46, v47);
        sub_22E60AE14(v172, &v157);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (++v17 >= v16)
        {
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v48, &v168, v180, 16);
          if (!v16)
          {
            break;
          }

          v17 = 0;
        }
      }
    }

    ANSTKCFTrackingNode::process_new_object(self->_trackingNode, v172);
    v51 = objc_msgSend_set(MEMORY[0x277CBEB58], v49, v50);
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v52 = v14;
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v153, v179, 16);
    if (v56)
    {
      v57 = *v154;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v154 != v57)
          {
            objc_enumerationMutation(v52);
          }

          v59 = objc_msgSend_label(*(*(&v153 + 1) + 8 * j), v54, v55);
          objc_msgSend_addObject_(v51, v60, v59);
        }

        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v54, &v153, v179, 16);
      }

      while (v56);
    }

    v63 = objc_msgSend_allObjects(v51, v61, v62);
    LODWORD(v64) = 1036831949;
    v139 = objc_msgSend_listWithPixelBuffer_labels_detectionThreshold_error_(self, v65, a3, v63, a5, v64);

    objc_msgSend_labels(v139, v66, v67);
    memset(v152, 0, sizeof(v152));
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    obj = v151 = 0u;
    v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, &v148, v178, 16);
    if (v69)
    {
      v70 = 0;
      v71 = *v149;
      for (k = *v149; ; k = *v149)
      {
        if (k != v71)
        {
          objc_enumerationMutation(obj);
        }

        v73 = *(*(&v148 + 1) + 8 * v70);
        v74 = acAcObjectMaskNull(&v157);
        objc_msgSend_boundingBox(v73, v75, v76, v74);
        *&v77 = v77;
        HIDWORD(v157) = LODWORD(v77);
        objc_msgSend_boundingBox(v73, v78, v79);
        v81 = v80;
        *&v158 = v81;
        objc_msgSend_boundingBox(v73, v82, v83);
        v85 = v84;
        *(&v158 + 1) = v85;
        objc_msgSend_boundingBox(v73, v86, v87);
        v89 = v88;
        *(&v158 + 2) = v89;
        HIDWORD(v158) = objc_msgSend_confidence(v73, v90, v91);
        v94 = objc_msgSend_label(v73, v92, v93);
        v95 = v94;
        v98 = objc_msgSend_UTF8String(v94, v96, v97);
        sub_22E6206FC(&__p, v98);

        LODWORD(v157) = objc_msgSend_objectID(v73, v99, v100);
        sub_22E60AE14(v152, &v157);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (++v70 >= v69)
        {
          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v101, &v148, v178, 16);
          if (!v69)
          {
            break;
          }

          v70 = 0;
        }
      }
    }

    if (ANSTKCFTrackingNode::process(self->_trackingNode, v152, &v173))
    {
      v105 = objc_msgSend_array(MEMORY[0x277CBEB18], v102, v103);
      v106 = v173;
      if (v173 != v174)
      {
        do
        {
          v107 = *(v106 + 21);
          v164 = *(v106 + 19);
          v165 = v107;
          *v166 = *(v106 + 23);
          *&v166[13] = *(v106 + 197);
          v108 = *(v106 + 13);
          v160 = *(v106 + 11);
          v161 = v108;
          v109 = *(v106 + 17);
          v162 = *(v106 + 15);
          v163 = v109;
          v110 = *(v106 + 7);
          v157 = *(v106 + 5);
          v158 = v110;
          v159 = *(v106 + 9);
          if (*(v106 + 231) < 0)
          {
            sub_22E5DAE38(&__p, v106[26], v106[27]);
          }

          else
          {
            __p = *(v106 + 26);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v104, &__p, 4, v139);
          }

          else
          {
            objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v104, __p.__r_.__value_.__l.__data_, 4, v139);
          }
          v111 = ;
          v112 = *(&v157 + 3);
          v113 = v158;
          v114 = *(&v158 + 2);
          v115 = [ANSTLabelObject alloc];
          LODWORD(v116) = HIDWORD(v158);
          v117 = v116 / 1000.0;
          *&v117 = v117;
          v119 = objc_msgSend_initWithObjectID_category_boundingBox_confidence_(v115, v118, v157, v111, v112, *&v113, *(&v113 + 1), v114, v117);
          v142 = v111;
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v120 = v52;
          v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v121, &v144, v175, 16);
          if (v124)
          {
            v125 = *v145;
            do
            {
              for (m = 0; m != v124; ++m)
              {
                if (*v145 != v125)
                {
                  objc_enumerationMutation(v120);
                }

                v127 = v157;
                if (objc_msgSend_objectID(*(*(&v144 + 1) + 8 * m), v122, v123) == v127)
                {
                  objc_msgSend_addObject_(v105, v122, v119);
                }
              }

              v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v122, &v144, v175, 16);
            }

            while (v124);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v128 = v106[1];
          if (v128)
          {
            do
            {
              v129 = v128;
              v128 = *v128;
            }

            while (v128);
          }

          else
          {
            do
            {
              v129 = v106[2];
              v130 = *v129 == v106;
              v106 = v129;
            }

            while (!v130);
          }

          v106 = v129;
        }

        while (v129 != v174);
      }

      v131 = [ANSTLabelDetectionResult alloc];
      v13 = objc_msgSend_initWithLabels_(v131, v132, v105);
    }

    else
    {
      v133 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B54C();
      }

      if (!a5)
      {
        v13 = 0;
        goto LABEL_63;
      }

      v135 = MEMORY[0x277CCA9B8];
      v176 = *MEMORY[0x277CCA450];
      v177 = @"Failed to post-process. Returning nil.";
      v105 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v134, &v177, &v176, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v135, v136, @"ANSTErrorDomain", 3, v105);
      *a5 = v13 = 0;
    }

LABEL_63:
    *&v157 = v152;
    sub_22E610A88(&v157);

    *&v157 = v172;
    sub_22E610A88(&v157);
    sub_22E621E90(&v173, v174[0]);
    goto LABEL_64;
  }

  if (a5)
  {
    v10 = MEMORY[0x277CCA9B8];
    v181 = *MEMORY[0x277CCA450];
    v182[0] = @"Do not support ANSTLabelDetectionFrameRateOneTime in tracking, please use ANSTLabelDetectionFrameRateStandard or ANSTLabelDetectionFrameRateLow.";
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v182, &v181, 1);
    *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"ANSTErrorDomain", 3, v11);
  }

  v13 = 0;
LABEL_64:

  v137 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)dealloc
{
  transformedInputImage = self->_transformedInputImage;
  if (transformedInputImage)
  {
    CVPixelBufferRelease(transformedInputImage);
  }

  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    CFRelease(self->_pixelTransferSession);
    self->_pixelTransferSession = 0;
  }

  CVPixelBufferRelease(self->_bgraInputBuffer);
  self->_bgraInputBuffer = 0;
  trackingNode = self->_trackingNode;
  if (trackingNode)
  {
    ANSTKCFTrackingNode::~ANSTKCFTrackingNode(trackingNode);
    MEMORY[0x2318EA430]();
  }

  if (self->_inputBufferObject_text)
  {
    v6 = e5rt_buffer_object_release();
    if (v6)
    {
      last_error_message = e5rt_get_last_error_message();
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_inputBufferObject_text)", v6, last_error_message);
      v10 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_inputBufferObject_text_ids)
  {
    v11 = e5rt_buffer_object_release();
    if (v11)
    {
      v12 = e5rt_get_last_error_message();
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_inputBufferObject_text_ids)", v11, v12);
      v15 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputBufferObject_score)
  {
    v16 = e5rt_buffer_object_release();
    if (v16)
    {
      v17 = e5rt_get_last_error_message();
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_outputBufferObject_score)", v16, v17);
      v20 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputTensorDesc_score)
  {
    v21 = e5rt_tensor_desc_release();
    if (v21)
    {
      v22 = e5rt_get_last_error_message();
      v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&_outputTensorDesc_score)", v21, v22);
      v25 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputPort_score)
  {
    v26 = e5rt_io_port_release();
    if (v26)
    {
      v27 = e5rt_get_last_error_message();
      v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"%s returned error code %u (%s)", "e5rt_io_port_release(&_outputPort_score)", v26, v27);
      v30 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputBufferObject_bbox)
  {
    v31 = e5rt_buffer_object_release();
    if (v31)
    {
      v32 = e5rt_get_last_error_message();
      v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_outputBufferObject_bbox)", v31, v32);
      v35 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputTensorDesc_bbox)
  {
    v36 = e5rt_tensor_desc_release();
    if (v36)
    {
      v37 = e5rt_get_last_error_message();
      v39 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v38, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&_outputTensorDesc_bbox)", v36, v37);
      v40 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputPort_bbox)
  {
    v41 = e5rt_io_port_release();
    if (v41)
    {
      v42 = e5rt_get_last_error_message();
      v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v43, @"%s returned error code %u (%s)", "e5rt_io_port_release(&_outputPort_bbox)", v41, v42);
      v45 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputPort_text_feats)
  {
    v46 = e5rt_io_port_release();
    if (v46)
    {
      v47 = e5rt_get_last_error_message();
      v49 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v48, @"%s returned error code %u (%s)", "e5rt_io_port_release(&_outputPort_text_feats)", v46, v47);
      v50 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputTensorDesc_text_feats)
  {
    v51 = e5rt_tensor_desc_release();
    if (v51)
    {
      v52 = e5rt_get_last_error_message();
      v54 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v53, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&_outputTensorDesc_text_feats)", v51, v52);
      v55 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->_outputBufferObject_text_feats)
  {
    v56 = e5rt_buffer_object_release();
    if (v56)
    {
      v57 = e5rt_get_last_error_message();
      v59 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v58, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_outputBufferObject_text_feats)", v56, v57);
      v60 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->decoder_operation)
  {
    v61 = e5rt_execution_stream_operation_release();
    if (v61)
    {
      v62 = e5rt_get_last_error_message();
      v64 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v63, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&decoder_operation)", v61, v62);
      v65 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->decoder_stream)
  {
    v66 = e5rt_execution_stream_release();
    if (v66)
    {
      v67 = e5rt_get_last_error_message();
      v69 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v68, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&decoder_stream)", v66, v67);
      v70 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->encoder_operation)
  {
    v71 = e5rt_execution_stream_operation_release();
    if (v71)
    {
      v72 = e5rt_get_last_error_message();
      v74 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v73, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&encoder_operation)", v71, v72);
      v75 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  if (self->encoder_stream)
  {
    v76 = e5rt_execution_stream_release();
    if (v76)
    {
      v77 = e5rt_get_last_error_message();
      v79 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v78, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&encoder_stream)", v76, v77);
      v80 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B5CC();
      }
    }
  }

  textFeature = self->_textFeature;
  if (textFeature)
  {
    free(textFeature);
  }

  self->_textFeature = 0;
  textIds = self->_textIds;
  if (textIds)
  {
    free(textIds);
  }

  self->_textIds = 0;
  v83.receiver = self;
  v83.super_class = ANSTLabelDetection;
  [(ANSTLabelDetection *)&v83 dealloc];
}

- (BOOL)addSupportedLabels:(id)a3 error:(id *)a4
{
  v87[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = v6;
  if (self->_readyForInference)
  {
    v76 = v6;
    v10 = objc_msgSend_count(v6, v7, v8);
    v74 = a4;
    v13 = objc_msgSend_count(v9, v11, v12);
    v72 = vcvtpd_u64_f64(vcvtd_n_f64_u64(v10, 3uLL));
    if (!v72)
    {
LABEL_34:
      objc_msgSend_addObjectsFromArray_(self->_currentLabels, v14, v76);
      v60 = objc_msgSend_count(self->_currentFeatureMap, v58, v59);
      if (v60 >= 0x65)
      {
        v63 = v60 - 100;
        do
        {
          v64 = objc_msgSend_firstObject(self->_currentLabels, v61, v62);
          objc_msgSend_removeObjectForKey_(self->_currentFeatureMap, v65, v64);
          objc_msgSend_removeObject_(self->_currentLabels, v66, v64);

          --v63;
        }

        while (v63);
      }

      v67 = 1;
      goto LABEL_41;
    }

    v16 = v13;
    v75 = 0;
    v73 = 0;
    while (1)
    {
      v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v15);
      v19 = 8;
      v20 = v75;
      do
      {
        if (v20 >= v16)
        {
          objc_msgSend_addObject_(v18, v17, @"none");
        }

        else
        {
          v21 = objc_msgSend_objectAtIndexedSubscript_(v76, v17, v20);
          objc_msgSend_addObject_(v18, v22, v21);
        }

        ++v20;
        --v19;
      }

      while (v19);
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v23 = v18;
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v81, v85, 16);
      if (v25)
      {
        v26 = *v82;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v82 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v81 + 1) + 8 * i);
            v31 = objc_msgSend_UTF8String(v28, v29, v30);
            sub_22E5D8EB4(__p, v31);
            sub_22E617BB0(self->_bpeApplyer.__ptr_, __p, &v77);
            v33 = v77;
            v34 = (v78 - v77) >> 2;
            textIds = self->_textIds;
            v36 = (v78 - 4);
            v37 = -77;
            v38 = v77;
            do
            {
              if (v37 + 77 >= v34)
              {
                v39 = v36;
              }

              else
              {
                v39 = v38;
              }

              *textIds++ = *v39;
              ++v38;
            }

            while (!__CFADD__(v37++, 1));
            self->_textIds = textIds;
            if (v33)
            {
              v78 = v33;
              operator delete(v33);
            }

            if (v80 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v32, &v81, v85, 16);
        }

        while (v25);
      }

      v41 = self->_textIds - 616;
      self->_textIds = v41;
      if ((objc_msgSend_updateTextIds_error_(self, v42, v41, v74) & 1) == 0 || !objc_msgSend_executeEncoderInferenceWithError_(self, v43, v74))
      {
        break;
      }

      outputTextFeatsSurface = self->_outputTextFeatsSurface;
      IOSurfaceLock(outputTextFeatsSurface, 1u, 0);
      BaseAddress = IOSurfaceGetBaseAddress(outputTextFeatsSurface);
      IOSurfaceUnlock(outputTextFeatsSurface, 1u, 0);
      for (j = 0; j < objc_msgSend_count(v23, v46, v47); ++j)
      {
        v50 = objc_msgSend_objectAtIndexedSubscript_(v23, v49, j);
        v53 = objc_msgSend_lowercaseString(v50, v51, v52);

        if ((objc_msgSend_isEqualToString_(v53, v54, @"none") & 1) == 0)
        {
          v56 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v55, BaseAddress, 2048);
          objc_msgSend_setObject_forKeyedSubscript_(self->_currentFeatureMap, v57, v56, v53);
        }

        BaseAddress += 2048;
      }

      v75 += 8;
      if (++v73 == v72)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    if (!a4)
    {
      v67 = 0;
      goto LABEL_42;
    }

    v68 = MEMORY[0x277CCA9B8];
    v86 = *MEMORY[0x277CCA450];
    v76 = v6;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v87, &v86, 1);
    *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v68, v69, @"ANSTErrorDomain", 4, v23);
  }

  v67 = 0;
LABEL_41:
  v9 = v76;
LABEL_42:

  v70 = *MEMORY[0x277D85DE8];
  return v67;
}

- (NSSet)supportedLabels
{
  v3 = MEMORY[0x277CBEB58];
  v4 = objc_msgSend_allKeys(self->_currentFeatureMap, a2, v2);
  v6 = objc_msgSend_setWithArray_(v3, v5, v4);

  objc_msgSend_removeObject_(v6, v7, @"none");

  return v6;
}

@end