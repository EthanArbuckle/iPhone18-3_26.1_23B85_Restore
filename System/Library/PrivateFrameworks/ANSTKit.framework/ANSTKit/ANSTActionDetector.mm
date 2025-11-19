@interface ANSTActionDetector
+ (float)normalizationThresholdForActionType:(id)a3 detectorVersion:(unint64_t)a4;
+ (id)new;
+ (id)supportedActionTypesOfDetectorVersion:(unint64_t)a3;
+ (id)supportedFrameRatesOfDetectorVersion:(unint64_t)a3;
- (ANSTActionDetector)init;
- (ANSTActionDetector)initWithConfiguration:(id)a3 error:(id *)a4;
- (BOOL)prepareWithError:(id *)a3;
- (CGRect)_postProcessedBoundingBox:(CGRect)a3 maxWidth:(double)a4 maxHeight:(double)a5 contentIsRotated90CCW:(BOOL)a6;
- (NSArray)supportedActionTypes;
- (id)_resultForFrameBuffer:(__CVBuffer *)a3 orientation:(int64_t)a4 signpostIDPointer:(const void *)a5 error:(id *)a6;
- (id)resultForFrameBuffer:(__CVBuffer *)a3 orientation:(int64_t)a4 error:(id *)a5;
- (void)_releaseResourceSafely;
- (void)dealloc;
- (void)reset;
@end

@implementation ANSTActionDetector

- (ANSTActionDetector)init
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

- (NSArray)supportedActionTypes
{
  v4 = objc_msgSend_version(self->_configuration, a2, v2);

  return objc_msgSend_supportedActionTypesOfDetectorVersion_(ANSTActionDetector, v3, v4);
}

- (ANSTActionDetector)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ANSTActionDetector;
  v7 = [(ANSTAlgorithm *)&v11 initWithConfiguration:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, a3);
    currentDetection = v8->_currentDetection;
    v8->_currentDetection = 0;

    v8->_frameCount = 0;
    v8->_actionRefreshFrameInterval = 3;
    v8->_prepared = 0;
  }

  return v8;
}

- (BOOL)prepareWithError:(id *)a3
{
  v220[1] = *MEMORY[0x277D85DE8];
  if (!self->_prepared)
  {
    v6 = [ANSTISPAlgorithmConfiguration alloc];
    v8 = objc_msgSend_initWithVersion_(v6, v7, 0x10000);
    objc_msgSend_setEnableObjectTracking_(v8, v9, 1);
    objc_msgSend_setEnableSegmentation_(v8, v10, 0);
    v11 = [ANSTISPAlgorithm alloc];
    v13 = objc_msgSend_initWithConfiguration_(v11, v12, v8);
    anstModel = self->_anstModel;
    self->_anstModel = v13;

    if ((objc_msgSend_prepareWithError_(self->_anstModel, v15, a3) & 1) == 0)
    {
LABEL_8:
      objc_msgSend__releaseResourceSafely(self, v16, v17);
      v3 = 0;
LABEL_9:

      goto LABEL_10;
    }

    if (VTPixelRotationSessionCreate(*MEMORY[0x277CBECE8], &self->_pixelRotationSession) || VTSessionSetProperty(self->_pixelRotationSession, *MEMORY[0x277CE2850], *MEMORY[0x277CE2A30]))
    {
      if (a3)
      {
        v18 = MEMORY[0x277CCA9B8];
        v219 = *MEMORY[0x277CCA068];
        v220[0] = @"Failed to prepare pixel rotation session";
        v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v220, &v219, 1);
        *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, @"ANSTErrorDomain", 3, v19);
      }

      goto LABEL_8;
    }

    if (VTPixelTransferSessionCreate(0, &self->_pixelTransferSession) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A78]) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28A8], *MEMORY[0x277CBED28]))
    {
      if (a3)
      {
        v25 = MEMORY[0x277CCA9B8];
        v217 = *MEMORY[0x277CCA068];
        v218 = @"Failed to prepare VTPixelTransferSession.";
        v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, &v218, &v217, 1);
        *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v27, @"ANSTErrorDomain", 3, v26);
      }

      objc_msgSend__releaseResourceSafely(self, v23, v24);
      v3 = 1;
      goto LABEL_9;
    }

    v28 = objc_msgSend_defaultConfigurationForVersion_withError_(ANSTISPInferenceConfiguration, v23, 0x10000, a3);
    v31 = v28;
    if (!v28)
    {
      objc_msgSend__releaseResourceSafely(self, v29, v30);
      v3 = 0;
LABEL_29:

      goto LABEL_9;
    }

    objc_msgSend_setObjectTrackingEnabled_(v28, v29, 1);
    objc_msgSend_setSegmentationEnabled_(v31, v32, 0);
    v34 = objc_msgSend_descriptorWithConfiguration_error_(ANSTISPInferenceDescriptor, v33, v31, a3);
    v37 = v34;
    if (!v34)
    {
      objc_msgSend__releaseResourceSafely(self, v35, v36);
      v3 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v38 = objc_msgSend_inputImageDescriptor(v34, v35, v36);
    anstInputBufferDescriptor = self->_anstInputBufferDescriptor;
    self->_anstInputBufferDescriptor = v38;

    v207 = v37;
    v42 = objc_msgSend_inputImageDescriptor(v37, v40, v41);
    v45 = objc_msgSend_pixelFormatType(v42, v43, v44);
    v48 = objc_msgSend_width(self->_anstInputBufferDescriptor, v46, v47);
    v51 = objc_msgSend_height(self->_anstInputBufferDescriptor, v49, v50);
    if (objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v52, v45, v48, v51, &self->_anstInputBuffer_landscape))
    {

LABEL_24:
      if (a3)
      {
        v70 = MEMORY[0x277CCA9B8];
        v215 = *MEMORY[0x277CCA068];
        v216 = @"Failed to allocate input buffer for ANST algorithm";
        v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v55, &v216, &v215, 1);
        *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v70, v72, @"ANSTErrorDomain", 3, v71);
      }

      objc_msgSend__releaseResourceSafely(self, v55, v56);
      v3 = 0;
      goto LABEL_27;
    }

    v57 = objc_msgSend_inputImageDescriptor(v207, v53, v54);
    v60 = objc_msgSend_pixelFormatType(v57, v58, v59);
    v206 = v31;
    v63 = objc_msgSend_height(self->_anstInputBufferDescriptor, v61, v62);
    v66 = objc_msgSend_width(self->_anstInputBufferDescriptor, v64, v65);
    v67 = v63;
    v31 = v206;
    PixelBufferWithPixelFormat_width_height_handle = objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v68, v60, v67, v66, &self->_anstInputBuffer_portrait);

    if (PixelBufferWithPixelFormat_width_height_handle)
    {
      goto LABEL_24;
    }

    if (objc_msgSend_version(self->_configuration, v55, v56) == 0x40000)
    {
      v73 = [ANSTActionHighlightModel alloc];
      v76 = objc_msgSend_version(self->_configuration, v74, v75);
      v78 = objc_msgSend_initForVersion_(v73, v77, v76);
      gruModel = self->_gruModel;
      self->_gruModel = v78;

      v204 = objc_msgSend_inputImageDescriptor(self->_gruModel, v80, v81);
      v84 = objc_msgSend_pixelFormatType(v204, v82, v83);
      v87 = objc_msgSend_inputImageDescriptor(self->_gruModel, v85, v86);
      v90 = objc_msgSend_width(v87, v88, v89);
      v93 = objc_msgSend_inputImageDescriptor(self->_gruModel, v91, v92);
      v96 = objc_msgSend_height(v93, v94, v95);
      LODWORD(v84) = objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v97, v84, v90, v96, &self->_gruModelInputBuffer);

      if (v84)
      {
        if (a3)
        {
          v100 = MEMORY[0x277CCA9B8];
          v213 = *MEMORY[0x277CCA068];
          v214 = @"Failed to allocate buffer for GRU action model";
          v101 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v98, &v214, &v213, 1);
          *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v100, v102, @"ANSTErrorDomain", 3, v101);
        }
      }

      else if (objc_msgSend_prepareWithError_(self->_gruModel, v98, a3) && (objc_msgSend_bindInputFrameBuffer_error_(self->_gruModel, v98, self->_gruModelInputBuffer, a3) & 1) != 0)
      {
        v110 = objc_msgSend_stateTensorDescriptor(self->_gruModel, v98, v99);
        v113 = objc_msgSend_sizeInBytes(v110, v111, v112);
        v114 = malloc_type_malloc(v113, 0xAD08D776uLL);

        v117 = objc_msgSend_stateTensorDescriptor(self->_gruModel, v115, v116);
        v120 = objc_msgSend_sizeInBytes(v117, v118, v119);
        bzero(v114, v120);

        v121 = [ANSTTensorData alloc];
        v124 = objc_msgSend_stateTensorDescriptor(self->_gruModel, v122, v123);
        v127 = objc_msgSend_stateTensorDescriptor(self->_gruModel, v125, v126);
        v130 = objc_msgSend_sizeInBytes(v127, v128, v129);
        v132 = objc_msgSend_initWithDescriptor_dataPointer_length_deallocator_error_(v121, v131, v124, v114, v130, &unk_28431E208, a3);
        gruModelStateTensorData = self->_gruModelStateTensorData;
        self->_gruModelStateTensorData = v132;

        v3 = 1;
        self->_prepared = 1;
LABEL_56:
        v31 = v206;
LABEL_27:
        v37 = v207;
        goto LABEL_28;
      }

      objc_msgSend__releaseResourceSafely(self, v98, v99);
      v3 = 0;
      goto LABEL_56;
    }

    v103 = [ANSTVideoFeatureExtractorConfiguration alloc];
    v205 = objc_msgSend_initWithVersion_(v103, v104, 0x10000);
    v107 = objc_msgSend_version(self->_configuration, v105, v106);
    v109 = v107;
    if (v107 != 0x10000)
    {
      if (v107 == 196608)
      {
        v109 = 196609;
      }

      else
      {
        if (v107 != 0x20000)
        {
          goto LABEL_54;
        }

        v109 = 131073;
      }
    }

    objc_msgSend_setFoundationModelVersion_(v205, v108, v109);
    v134 = [ANSTVideoFeatureExtractor alloc];
    v136 = objc_msgSend_initWithConfig_error_(v134, v135, v205, a3);
    featureExtractor = self->_featureExtractor;
    self->_featureExtractor = v136;

    v138 = self->_featureExtractor;
    if (v138)
    {
      v139 = objc_msgSend_inputImageDescriptor(v138, v108, v109);
      v203 = objc_msgSend_pixelFormatType(v139, v140, v141);
      v144 = objc_msgSend_inputImageDescriptor(self->_featureExtractor, v142, v143);
      v147 = objc_msgSend_width(v144, v145, v146);
      v150 = objc_msgSend_inputImageDescriptor(self->_featureExtractor, v148, v149);
      v153 = objc_msgSend_height(v150, v151, v152);
      LODWORD(v147) = objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v154, v203, v147, v153, &self->_featureExtractorInputBuffer);

      if (v147)
      {
        if (a3)
        {
          v155 = MEMORY[0x277CCA9B8];
          v211 = *MEMORY[0x277CCA068];
          v212 = @"Failed to allocate buffer for feature extraction";
          v156 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v108, &v212, &v211, 1);
          *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v155, v157, @"ANSTErrorDomain", 3, v156);
        }

        goto LABEL_54;
      }

      if (objc_msgSend_bindVideoInput_error_(self->_featureExtractor, v108, self->_featureExtractorInputBuffer, a3) && (objc_msgSend_commitInputBindingWithError_(self->_featureExtractor, v108, a3) & 1) != 0)
      {
        v158 = objc_msgSend_supportedActionTypes(self, v108, v109);
        self->_actionCount = objc_msgSend_count(v158, v159, v160);

        v163 = objc_msgSend_outputFeatureDescriptor(self->_featureExtractor, v161, v162);
        v166 = objc_msgSend_lengths(v163, v164, v165);
        v168 = objc_msgSend_objectAtIndexedSubscript_(v166, v167, 1);
        self->_featureLength = objc_msgSend_unsignedIntValue(v168, v169, v170);

        self->_rawScores = malloc_type_malloc(4 * self->_actionCount, 0x100004052888210uLL);
        self->_probabilities = malloc_type_malloc(4 * self->_actionCount, 0x100004052888210uLL);
        featureLength = self->_featureLength;
        v210[0] = self->_actionCount;
        v210[1] = featureLength;
        v172 = [ANSTTensorDescriptor alloc];
        v176 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v172, v173, @"decodingMatrix", 102, 2, v210, 1, a3);
        if (v176)
        {
          v177 = objc_msgSend_version(self->_configuration, v174, v175);
          switch(v177)
          {
            case 65536:
              objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v174, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/vfm.mlmodelc/action_decoding_matrix.bin");
              goto LABEL_59;
            case 196608:
              objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v174, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/vfm.mlmodelc/decoding_matrix_gestureV1.bin");
              goto LABEL_59;
            case 131072:
              objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v174, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/vfm.mlmodelc/decoding_matrix_fitnessV1.bin");
              v179 = LABEL_59:;
              v178 = 1;
              v181 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x277CBEA90], v180, v179, 1, a3);
              decodingMatrixData = self->_decodingMatrixData;
              self->_decodingMatrixData = v181;

              if (self->_decodingMatrixData)
              {
                v185 = [ANSTTensorData alloc];
                v188 = objc_msgSend_bytes(self->_decodingMatrixData, v186, v187);
                v191 = objc_msgSend_sizeInBytes(v176, v189, v190);
                v193 = objc_msgSend_initWithDescriptor_dataPointer_length_deallocator_error_(v185, v192, v176, v188, v191, 0, a3);
                decodingMatrix = self->_decodingMatrix;
                self->_decodingMatrix = v193;

                self->_prepared = 1;
LABEL_66:

                goto LABEL_55;
              }

              objc_msgSend__releaseResourceSafely(self, v183, v184);

LABEL_65:
              v178 = 0;
              goto LABEL_66;
          }

          if (a3)
          {
            v195 = MEMORY[0x277CCACA8];
            v196 = objc_msgSend_version(self->_configuration, v174, v175);
            v198 = objc_msgSend_stringWithFormat_(v195, v197, @"Unexpected version %lu", v196);
            v199 = MEMORY[0x277CCA9B8];
            v208 = *MEMORY[0x277CCA068];
            v209 = v198;
            v201 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v200, &v209, &v208, 1);
            *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v199, v202, @"ANSTErrorDomain", 14, v201);
          }
        }

        objc_msgSend__releaseResourceSafely(self, v174, v175);
        goto LABEL_65;
      }
    }

LABEL_54:
    objc_msgSend__releaseResourceSafely(self, v108, v109);
    v178 = 0;
LABEL_55:

    v3 = v178;
    goto LABEL_56;
  }

  v3 = 1;
LABEL_10:
  v21 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_releaseResourceSafely
{
  pixelRotationSession = self->_pixelRotationSession;
  if (pixelRotationSession)
  {
    VTPixelRotationSessionInvalidate(self->_pixelRotationSession);
    CFRelease(pixelRotationSession);
  }

  self->_pixelRotationSession = 0;
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(self->_pixelTransferSession);
    CFRelease(pixelTransferSession);
  }

  self->_pixelTransferSession = 0;
  CVPixelBufferRelease(self->_anstInputBuffer_portrait);
  self->_anstInputBuffer_portrait = 0;
  CVPixelBufferRelease(self->_anstInputBuffer_landscape);
  self->_anstInputBuffer_landscape = 0;
  CVPixelBufferRelease(self->_gruModelInputBuffer);
  self->_gruModelInputBuffer = 0;
  CVPixelBufferRelease(self->_featureExtractorInputBuffer);
  self->_featureExtractorInputBuffer = 0;
  rawScores = self->_rawScores;
  if (rawScores)
  {
    free(rawScores);
  }

  self->_rawScores = 0;
  probabilities = self->_probabilities;
  if (probabilities)
  {
    free(probabilities);
  }

  self->_probabilities = 0;
}

- (void)dealloc
{
  objc_msgSend__releaseResourceSafely(self, a2, v2);
  v4.receiver = self;
  v4.super_class = ANSTActionDetector;
  [(ANSTActionDetector *)&v4 dealloc];
}

- (id)resultForFrameBuffer:(__CVBuffer *)a3 orientation:(int64_t)a4 error:(id *)a5
{
  v9 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ANSTActionDetector_resultForFrameBuffer", &unk_22E663F87, buf, 2u);
  }

  v12 = objc_msgSend__resultForFrameBuffer_orientation_signpostIDPointer_error_(self, v11, a3, a4, self, a5);
  v13 = os_signpost_id_make_with_pointer(v9, self);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_END, v13, "ANSTActionDetector_resultForFrameBuffer", &unk_22E663F87, v15, 2u);
  }

  return v12;
}

- (id)_resultForFrameBuffer:(__CVBuffer *)a3 orientation:(int64_t)a4 signpostIDPointer:(const void *)a5 error:(id *)a6
{
  v6 = a6;
  v370[1] = *MEMORY[0x277D85DE8];
  if (!self->_prepared)
  {
    if (!a6)
    {
      goto LABEL_71;
    }

    v23 = a6;
    v24 = objc_alloc(MEMORY[0x277CCA9B8]);
    v369 = *MEMORY[0x277CCA450];
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v370, &v369, 1);
    v28 = objc_msgSend_initWithDomain_code_userInfo_(v24, v27, @"ANSTErrorDomain", 3, v26);
LABEL_14:
    v6 = 0;
    *v23 = v28;
    goto LABEL_70;
  }

  if (!a3)
  {
    v23 = a6;
    v29 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_22E658248(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    if (!v6)
    {
      v6 = 0;
      goto LABEL_71;
    }

    v38 = MEMORY[0x277CCA9B8];
    v367 = *MEMORY[0x277CCA450];
    v368 = @"Nil input buffer.";
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, &v368, &v367, 1);
    v28 = objc_msgSend_errorWithDomain_code_userInfo_(v38, v39, @"ANSTErrorDomain", 2, v26);
    goto LABEL_14;
  }

  CVPixelBufferLockBaseAddress(a3, 1uLL);
  p_anstInputBuffer_landscape = &self->_anstInputBuffer_landscape;
  CVPixelBufferLockBaseAddress(self->_anstInputBuffer_landscape, 0);
  p_anstInputBuffer_portrait = &self->_anstInputBuffer_portrait;
  CVPixelBufferLockBaseAddress(self->_anstInputBuffer_portrait, 0);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v335 = Width;
  if (Width != objc_msgSend_width(self->_anstInputBufferDescriptor, v12, v13) || Height != objc_msgSend_height(self->_anstInputBufferDescriptor, v14, v15) || (v18 = objc_msgSend_pixelFormatType(self->_anstInputBufferDescriptor, v16, v17), v20 = a3, PixelFormatType != v18))
  {
    pixelTransferSession = self->_pixelTransferSession;
    if (Width >= Height)
    {
      v22 = &self->_anstInputBuffer_landscape;
      VTPixelTransferSessionTransferImage(pixelTransferSession, a3, *p_anstInputBuffer_landscape);
    }

    else
    {
      VTPixelTransferSessionTransferImage(pixelTransferSession, a3, *p_anstInputBuffer_portrait);
      v22 = &self->_anstInputBuffer_landscape;
      VTPixelRotationSessionRotateImage(self->_pixelRotationSession, *p_anstInputBuffer_portrait, *p_anstInputBuffer_landscape);
    }

    v20 = *v22;
  }

  v325 = v6;
  v334 = Height;
  v332 = self;
  v328 = objc_msgSend_resultForPixelBuffer_orientation_error_(self->_anstModel, v19, v20, 1, v6);
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  CVPixelBufferUnlockBaseAddress(*p_anstInputBuffer_landscape, 0);
  CVPixelBufferUnlockBaseAddress(*p_anstInputBuffer_portrait, 0);
  v26 = v328;
  if (v328)
  {
    v327 = objc_msgSend_detectedObjectsForCategory_(v328, v40, @"FullBody");
    v41 = MEMORY[0x277CBEB38];
    v44 = objc_msgSend_count(v327, v42, v43);
    v333 = objc_msgSend_dictionaryWithCapacity_(v41, v45, v44);
    if (objc_msgSend_version(self->_configuration, v46, v47) == 196608)
    {
      v50 = MEMORY[0x277CBEB38];
      v51 = objc_msgSend_count(v327, v48, v49);
      v53 = objc_msgSend_dictionaryWithCapacity_(v50, v52, v51);
      v362 = 0u;
      v363 = 0u;
      v360 = 0u;
      v361 = 0u;
      v55 = objc_msgSend_detectedObjectsForCategory_(v328, v54, @"Body");
      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v360, v366, 16);
      if (v59)
      {
        v60 = *v361;
        do
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v361 != v60)
            {
              objc_enumerationMutation(v55);
            }

            v62 = *(*(&v360 + 1) + 8 * i);
            v63 = MEMORY[0x277CCABB0];
            v64 = objc_msgSend_groupID(v62, v57, v58);
            v66 = objc_msgSend_numberWithUnsignedInteger_(v63, v65, v64);
            objc_msgSend_setObject_forKeyedSubscript_(v53, v67, v62, v66);
          }

          v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v57, &v360, v366, 16);
        }

        while (v59);
      }

      v358 = 0u;
      v359 = 0u;
      v356 = 0u;
      v357 = 0u;
      obj = v327;
      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, &v356, v365, 16);
      if (v69)
      {
        v70 = *v357;
        do
        {
          for (j = 0; j != v69; ++j)
          {
            if (*v357 != v70)
            {
              objc_enumerationMutation(obj);
            }

            v72 = *(*(&v356 + 1) + 8 * j);
            v73 = MEMORY[0x277CCABB0];
            v76 = objc_msgSend_groupID(v72, v74, v75);
            v78 = objc_msgSend_numberWithUnsignedInteger_(v73, v77, v76);
            v80 = objc_msgSend_objectForKeyedSubscript_(v53, v79, v78);

            if (v80)
            {
              objc_msgSend_boundingBox(v72, v81, v82);
              v84 = v83;
              objc_msgSend_boundingBox(v72, v85, v86);
              v90 = v89;
              if (v335 >= v334)
              {
                objc_msgSend_boundingBox(v72, v87, v88);
                v92 = v96;
                objc_msgSend_boundingBox(v80, v97, v98);
              }

              else
              {
                objc_msgSend_boundingBox(v80, v87, v88);
                v92 = v91;
                objc_msgSend_boundingBox(v72, v93, v94);
              }

              objc_msgSend__postProcessedBoundingBox_maxWidth_maxHeight_contentIsRotated90CCW_(v332, v95, v335 < v334, v84, v90, v92);
              v100 = v99;
              v102 = v101;
              v104 = v103;
              v106 = v105;
              v107 = [ANSTObject alloc];
              v110 = objc_msgSend_objectID(v72, v108, v109);
              v113 = objc_msgSend_groupID(v72, v111, v112);
              v116 = objc_msgSend_confidence(v72, v114, v115);
              objc_msgSend_distance(v72, v117, v118);
              LODWORD(v120) = v119;
              v122 = objc_msgSend_initWithObjectID_groupID_category_boundingBox_confidence_distance_(v107, v121, v110, v113, @"FullBody", v116, v100, v102, v104, v106, v120);

              v72 = v122;
            }

            v123 = MEMORY[0x277CCABB0];
            v124 = objc_msgSend_objectID(v72, v81, v82);
            v126 = objc_msgSend_numberWithUnsignedInteger_(v123, v125, v124);
            objc_msgSend_setObject_forKeyedSubscript_(v333, v127, v72, v126);
          }

          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v128, &v356, v365, 16);
        }

        while (v69);
      }
    }

    else
    {
      v354 = 0u;
      v355 = 0u;
      v352 = 0u;
      v353 = 0u;
      v53 = v327;
      v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v129, &v352, v364, 16);
      if (v132)
      {
        v133 = *v353;
        do
        {
          for (k = 0; k != v132; ++k)
          {
            if (*v353 != v133)
            {
              objc_enumerationMutation(v53);
            }

            v135 = *(*(&v352 + 1) + 8 * k);
            objc_msgSend_boundingBox(v135, v130, v131);
            objc_msgSend__postProcessedBoundingBox_maxWidth_maxHeight_contentIsRotated90CCW_(v332, v136, v335 < v334);
            v138 = v137;
            v140 = v139;
            v142 = v141;
            v144 = v143;
            v145 = [ANSTObject alloc];
            v148 = objc_msgSend_objectID(v135, v146, v147);
            v151 = objc_msgSend_groupID(v135, v149, v150);
            v154 = objc_msgSend_confidence(v135, v152, v153);
            objc_msgSend_distance(v135, v155, v156);
            LODWORD(v158) = v157;
            v160 = objc_msgSend_initWithObjectID_groupID_category_boundingBox_confidence_distance_(v145, v159, v148, v151, @"FullBody", v154, v138, v140, v142, v144, v158);
            v161 = MEMORY[0x277CCABB0];
            v164 = objc_msgSend_objectID(v135, v162, v163);
            v166 = objc_msgSend_numberWithUnsignedInteger_(v161, v165, v164);
            objc_msgSend_setObject_forKeyedSubscript_(v333, v167, v160, v166);
          }

          v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v130, &v352, v364, 16);
        }

        while (v132);
      }
    }

    v170 = objc_msgSend_actions(v332->_currentDetection, v168, v169);
    v173 = objc_msgSend_firstObject(v170, v171, v172);

    if (v173)
    {
      v176 = objc_msgSend_objectID(v173, v174, v175);
      v332->_trackingObjectID = v176;
      objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v177, v176);
    }

    else
    {
      objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v174, v332->_trackingObjectID);
    }
    v178 = ;
    v180 = objc_msgSend_objectForKeyedSubscript_(v333, v179, v178);
    v181 = v180 == 0;

    if (v181)
    {
      if (objc_msgSend_count(v333, v182, v183))
      {
        *buf = 0;
        v347 = buf;
        v348 = 0x3032000000;
        v349 = sub_22E5E8E3C;
        v350 = sub_22E5E8E4C;
        v351 = 0;
        v345[0] = 0;
        v345[1] = v345;
        v345[2] = 0x2020000000;
        v345[3] = 0;
        v344[0] = MEMORY[0x277D85DD0];
        v344[1] = 3221225472;
        v344[2] = sub_22E5E8E54;
        v344[3] = &unk_27884FA30;
        v344[4] = v345;
        v344[5] = buf;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v333, v204, v344);
        v332->_trackingObjectID = objc_msgSend_objectID(*(v347 + 5), v206, v207);
        objc_msgSend_boundingBox(*(v347 + 5), v208, v209);
        v190 = v210;
        v192 = v211;
        v194 = v212;
        v196 = v213;
        v199 = objc_msgSend_confidence(*(v347 + 5), v214, v215);
        objc_msgSend_distance(*(v347 + 5), v216, v217);
        v203 = v218;
        _Block_object_dispose(v345, 8);
        _Block_object_dispose(buf, 8);

        v219 = v332;
      }

      else
      {
        v199 = 0;
        v190 = *MEMORY[0x277CBF398];
        v192 = *(MEMORY[0x277CBF398] + 8);
        v194 = *(MEMORY[0x277CBF398] + 16);
        v196 = *(MEMORY[0x277CBF398] + 24);
        v219 = v332;
        v332->_trackingObjectID = 0;
        v203 = 0;
      }

      objc_msgSend_resetInferenceState(v219->_featureExtractor, v204, v205);
      currentDetection = v332->_currentDetection;
      v332->_currentDetection = 0;

      v186 = v173;
      v173 = 0;
    }

    else
    {
      v184 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v182, v332->_trackingObjectID);
      v186 = objc_msgSend_objectForKeyedSubscript_(v333, v185, v184);

      objc_msgSend_boundingBox(v186, v187, v188);
      v190 = v189;
      v192 = v191;
      v194 = v193;
      v196 = v195;
      v199 = objc_msgSend_confidence(v186, v197, v198);
      objc_msgSend_distance(v186, v200, v201);
      v203 = v202;
    }

    v372.origin.x = v190;
    v372.origin.y = v192;
    v372.size.width = v194;
    v372.size.height = v196;
    if (!CGRectIsNull(v372))
    {
      if (v335 >= v334)
      {
        v235 = objc_msgSend_width(v332->_anstInputBufferDescriptor, v221, v222);
        v229 = objc_msgSend_height(v332->_anstInputBufferDescriptor, v236, v237);
        v231 = v335 / v235;
        v232 = v196;
        v233 = v194;
        v234 = v192;
        v230 = v190;
      }

      else
      {
        v223 = objc_msgSend_height(v332->_anstInputBufferDescriptor, v221, v222);
        v226 = objc_msgSend_height(v332->_anstInputBufferDescriptor, v224, v225);
        v229 = objc_msgSend_width(v332->_anstInputBufferDescriptor, v227, v228);
        v230 = v223 - (v196 + v192);
        v231 = v335 / v226;
        v232 = v194;
        v233 = v196;
        v234 = v190;
      }

      v238 = v334 / v229;
      v239 = v230 * v231;
      v240 = v234 * v238;
      v241 = v332;
      frameCount = v332->_frameCount;
      v243 = v232 * v238;
      v244 = frameCount % v332->_actionRefreshFrameInterval;
      if (frameCount == -2)
      {
        v245 = 0;
      }

      else
      {
        v245 = frameCount + 1;
      }

      v332->_frameCount = v245;
      v246 = p_anstInputBuffer_landscape;
      if (v244)
      {
        if (v173)
        {
          v247 = v233 * v231;
          v248 = [ANSTActionDistribution alloc];
          trackingObjectID = v332->_trackingObjectID;
          v252 = objc_msgSend_distribution(v173, v250, v251);
          LODWORD(v253) = v203;
          v255 = objc_msgSend_initWithObjectID_boundingBox_confidence_distance_distribution_(v248, v254, trackingObjectID, v199, v252, v239, v240, v247, v243, v253);

          v257 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v256, v255);
          v258 = [ANSTActionDetectorResult alloc];
          v260 = objc_msgSend_initWithActions_(v258, v259, v257);
          v261 = v332->_currentDetection;
          v332->_currentDetection = v260;

          v241 = v332;
        }

        v6 = v241->_currentDetection;
        goto LABEL_69;
      }

      v331 = v233 * v231;
      if (v335 < v334)
      {
        v190 = v239 / v231;
        v192 = v240 / v238;
        v194 = v233 * v231 / v231;
        v246 = p_anstInputBuffer_portrait;
        v196 = v243 / v238;
      }

      v264 = *v246;
      v373.origin.x = v190;
      v373.origin.y = v192;
      v373.size.width = v194;
      v373.size.height = v196;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v373);
      v266 = *MEMORY[0x277CE28B8];
      v267 = VTSessionSetProperty(v332->_pixelTransferSession, *MEMORY[0x277CE28B8], DictionaryRepresentation) == 0;
      CFRelease(DictionaryRepresentation);
      if (v267)
      {
        v270 = objc_msgSend_version(v332->_configuration, v268, v269);
        v271 = &OBJC_IVAR___ANSTActionDetector__featureExtractorInputBuffer;
        if (v270 == 0x40000)
        {
          v271 = &OBJC_IVAR___ANSTActionDetector__gruModelInputBuffer;
        }

        v272 = *(&v332->super.super.isa + *v271);
        CVPixelBufferLockBaseAddress(v264, 1uLL);
        CVPixelBufferLockBaseAddress(v272, 0);
        if (!VTPixelTransferSessionTransferImage(v332->_pixelTransferSession, v264, v272))
        {
          CVPixelBufferUnlockBaseAddress(v264, 1uLL);
          CVPixelBufferUnlockBaseAddress(v272, 0);
          if (!VTSessionSetProperty(v332->_pixelTransferSession, v266, 0))
          {
            if (objc_msgSend_version(v332->_configuration, v273, v274) == 0x40000)
            {
              v276 = _ANSTLoggingGetOSLogForCategoryANSTKit();
              v277 = os_signpost_id_make_with_pointer(v276, a5);

              if (v277 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v276))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_22E5D5000, v276, OS_SIGNPOST_INTERVAL_BEGIN, v277, "ANSTActionDetector_HomeBusy", &unk_22E663F87, buf, 2u);
              }

              v278 = objc_opt_new();
              if (objc_msgSend_executeAndUpdateStateTensorData_outputDictionary_outError_(v332->_gruModel, v279, v332->_gruModelStateTensorData, v278, v325))
              {
                v280 = [ANSTActionDistribution alloc];
                LODWORD(v281) = v203;
                v283 = objc_msgSend_initWithObjectID_boundingBox_confidence_distance_distribution_(v280, v282, v332->_trackingObjectID, v199, v278, v239, v240, v331, v243, v281);
                v284 = [ANSTActionDetectorResult alloc];
                v286 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v285, v283);
                v288 = objc_msgSend_initWithActions_(v284, v287, v286);
                v289 = v332->_currentDetection;
                v332->_currentDetection = v288;

                v290 = os_signpost_id_make_with_pointer(v276, a5);
                if (v290 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v276))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22E5D5000, v276, OS_SIGNPOST_INTERVAL_END, v290, "ANSTActionDetector_HomeBusy", &unk_22E663F87, buf, 2u);
                }

                v6 = v332->_currentDetection;
                v276 = v283;
              }

              else
              {
                v318 = os_signpost_id_make_with_pointer(v276, a5);

                if (v318 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v276))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22E5D5000, v276, OS_SIGNPOST_INTERVAL_END, v318, "ANSTActionDetector_HomeBusy", &unk_22E663F87, buf, 2u);
                }

                v6 = 0;
              }
            }

            else
            {
              objc_msgSend_executeInferenceWithError_(v332->_featureExtractor, v275, v325);
              featureExtractor = v332->_featureExtractor;
              v343 = 0;
              v293 = objc_msgSend_getCurrentVideoFeatureWithOutError_(featureExtractor, v292, &v343);
              v294 = v343;
              v336 = v294;
              if (v293)
              {
                v297 = objc_msgSend_supportedActionTypes(v332, v295, v296);
                v298 = MEMORY[0x277CBEB38];
                v301 = objc_msgSend_count(v297, v299, v300);
                v303 = objc_msgSend_dictionaryWithCapacity_(v298, v302, v301);
                decodingMatrix = v332->_decodingMatrix;
                v337[0] = MEMORY[0x277D85DD0];
                v337[1] = 3221225472;
                v337[2] = sub_22E5E8EE4;
                v337[3] = &unk_27884FAA8;
                v338 = v293;
                v339 = v332;
                v340 = v297;
                v341 = v303;
                v342 = v325;
                v305 = v303;
                v306 = v297;
                objc_msgSend_performDataAccessWithOptions_usingBlock_error_(decodingMatrix, v307, 0, v337, v325);
                v308 = [ANSTActionDistribution alloc];
                LODWORD(v309) = v203;
                v311 = objc_msgSend_initWithObjectID_boundingBox_confidence_distance_distribution_(v308, v310, v332->_trackingObjectID, v199, v305, v239, v240, v331, v243, v309);
                v312 = [ANSTActionDetectorResult alloc];
                v314 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v313, v311);
                v316 = objc_msgSend_initWithActions_(v312, v315, v314);
                v317 = v332->_currentDetection;
                v332->_currentDetection = v316;

                v6 = v332->_currentDetection;
              }

              else if (v294)
              {
                if (v325)
                {
                  v319 = v294;
                  v6 = 0;
                  *v325 = v336;
                }

                else
                {
                  v6 = 0;
                }
              }

              else
              {
                v320 = [ANSTActionDetectorResult alloc];
                v322 = objc_msgSend_initWithActions_(v320, v321, MEMORY[0x277CBEBF8]);
                v323 = v332->_currentDetection;
                v332->_currentDetection = v322;

                v6 = v332->_currentDetection;
              }
            }

            goto LABEL_69;
          }
        }
      }
    }

    v6 = 0;
LABEL_69:

    v26 = v328;
    goto LABEL_70;
  }

  v6 = 0;
LABEL_70:

LABEL_71:
  v262 = *MEMORY[0x277D85DE8];

  return v6;
}

- (CGRect)_postProcessedBoundingBox:(CGRect)a3 maxWidth:(double)a4 maxHeight:(double)a5 contentIsRotated90CCW:(BOOL)a6
{
  v6 = a3.origin.x + a3.size.width * 0.5;
  v7 = a3.origin.y + a3.size.height * 0.5;
  if (a3.size.width <= a3.size.height)
  {
    a3.size.width = a3.size.height;
  }

  v8 = a3.size.width * 1.1 * 0.5;
  v9 = a3.size.width * 0.5;
  v10 = -(v9 - v8 * 2.0);
  if (a6)
  {
    v11 = -(v9 - v8 * 2.0);
  }

  else
  {
    v11 = v8;
  }

  if (a6)
  {
    v10 = v8;
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (a6)
  {
    v9 = v8;
  }

  v13 = (v6 - v11) & ~((v6 - v11) >> 31);
  v14 = (v7 - v10) & ~((v7 - v10) >> 31);
  v15 = (v6 + v12);
  if (v15 >= a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = v15;
  }

  v17 = (v7 + v9);
  if (v17 >= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = v17;
  }

  v19 = v14;
  v20 = v13;
  v21 = v16 - v13;
  v22 = v18 - v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v19;
  result.origin.x = v20;
  return result;
}

- (void)reset
{
  currentDetection = self->_currentDetection;
  self->_currentDetection = 0;

  featureExtractor = self->_featureExtractor;

  objc_msgSend_resetInferenceState(featureExtractor, v4, v5);
}

+ (id)supportedActionTypesOfDetectorVersion:(unint64_t)a3
{
  v35 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 0x40000uLL:
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v10, 5, @"NoAction", @"TextOnPhone", @"ReadBook", @"TalkOnPhone", @"UseLaptop", v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
      goto LABEL_8;
    case 0x30000uLL:
      v11 = @"HeartOneHand";
      v12 = @"HeartTwoHands";
      v13 = @"ThumbsDown";
      v14 = @"ThumbsUp";
      v15 = @"Victory";
      v16 = @"Clap";
      v17 = @"Rock";
      v18 = @"Shaka";
      v19 = @"Shrug";
      v20 = @"Thanks";
      v21 = @"NoGesture";
      v22 = @"Unknown";
      v4 = MEMORY[0x277CBEA60];
      v5 = &v11;
      goto LABEL_6;
    case 0x20000uLL:
      v23 = @"Squat";
      v24 = @"HighKnee";
      v25 = @"JumpingJack";
      v26 = @"Lunge";
      v27 = @"PushUp";
      v28 = @"SitUp";
      v29 = @"Standing";
      v30 = @"Walking";
      v31 = @"Sitting";
      v32 = @"Jogging";
      v33 = @"Running";
      v34 = @"Jumping";
      v4 = MEMORY[0x277CBEA60];
      v5 = &v23;
LABEL_6:
      objc_msgSend_arrayWithObjects_count_(v4, a2, v5, 12, v10[0], v10[1], v10[2], v10[3], v10[4], v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
      v6 = LABEL_8:;
      goto LABEL_12;
  }

  v7 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_22E6583B0(a3, v7);
  }

  v6 = MEMORY[0x277CBEBF8];
LABEL_12:
  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (float)normalizationThresholdForActionType:(id)a3 detectorVersion:(unint64_t)a4
{
  v5 = a3;
  v7 = v5;
  if (a4 != 0x40000)
  {
LABEL_13:
    v13 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_22E65843C(v7, a4, v13);
    }

    v8 = 0.0;
    goto LABEL_16;
  }

  v8 = 0.5;
  if (@"NoAction" != v5 && (objc_msgSend_isEqualToString_(v5, v6, @"NoAction") & 1) == 0)
  {
    if (@"TextOnPhone" == v7 || (objc_msgSend_isEqualToString_(v7, v9, @"TextOnPhone") & 1) != 0 || @"ReadBook" == v7 || (objc_msgSend_isEqualToString_(v7, v10, @"ReadBook") & 1) != 0)
    {
      goto LABEL_8;
    }

    v8 = 0.45;
    if (@"TalkOnPhone" != v7 && (objc_msgSend_isEqualToString_(v7, v11, @"TalkOnPhone") & 1) == 0)
    {
      if (@"UseLaptop" == v7)
      {
LABEL_8:
        v8 = 0.3;
        goto LABEL_16;
      }

      v8 = 0.3;
      if (objc_msgSend_isEqualToString_(v7, v12, @"UseLaptop"))
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

LABEL_16:

  return v8;
}

+ (id)supportedFrameRatesOfDetectorVersion:(unint64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, 1);
  v8[0] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v8, 1);

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end