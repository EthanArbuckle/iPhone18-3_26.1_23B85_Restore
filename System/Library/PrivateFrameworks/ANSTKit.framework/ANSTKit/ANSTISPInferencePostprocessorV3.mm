@interface ANSTISPInferencePostprocessorV3
- (ANSTISPInferencePostprocessorV3)initWithInferenceDescriptor:(id)a3 error:(id *)a4;
- (ANSTISPInferencePostprocessorV3)initWithInferenceInputDescriptors:(id)a3 inferenceOutputDescriptors:(id)a4 processedOutputDescriptors:(id)a5 error:(id *)a6;
- (BOOL)_destroyRTCVWithError:(id *)a3;
- (BOOL)_initializeRTCVWithError:(id *)a3;
- (BOOL)_processWithError:(id *)a3;
- (BOOL)processWithError:(id *)a3;
- (BOOL)resetWithError:(id *)a3;
- (float)smudgeConfidence;
- (id)trackedObjectsOfCategory:(id)a3;
- (void)dealloc;
@end

@implementation ANSTISPInferencePostprocessorV3

- (ANSTISPInferencePostprocessorV3)initWithInferenceInputDescriptors:(id)a3 inferenceOutputDescriptors:(id)a4 processedOutputDescriptors:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v13, a2);
  __break(1u);
  return result;
}

- (ANSTISPInferencePostprocessorV3)initWithInferenceDescriptor:(id)a3 error:(id *)a4
{
  v65[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_inputImageDescriptor(v6, v7, v8);
  v65[0] = v9;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v65, 1);
  v14 = objc_msgSend_outputDescriptors(v6, v12, v13);
  v62.receiver = self;
  v62.super_class = ANSTISPInferencePostprocessorV3;
  v15 = [(ANSTISPInferencePostprocessor *)&v62 initWithInferenceInputDescriptors:v11 inferenceOutputDescriptors:v14 processedOutputDescriptors:MEMORY[0x277CBEBF8] error:a4];

  if (!v15)
  {
    goto LABEL_13;
  }

  v18 = objc_msgSend_configuration(v6, v16, v17);
  v21 = objc_msgSend_copy(v18, v19, v20);
  v22 = *(v15 + 4142);
  *(v15 + 4142) = v21;

  v25 = objc_msgSend_inputImageDescriptor(v6, v23, v24);
  v26 = *(v15 + 4143);
  *(v15 + 4143) = v25;

  *(v15 + 15339) = 0u;
  *(v15 + 15340) = 0u;
  *(v15 + 15341) = 0u;
  *(v15 + 15342) = 0u;
  v29 = objc_msgSend_inputImageDescriptor(v6, v27, v28);
  *(v15 + 61358) = objc_msgSend_width(v29, v30, v31);

  v34 = objc_msgSend_inputImageDescriptor(v6, v32, v33);
  *(v15 + 61359) = objc_msgSend_height(v34, v35, v36);

  *(v15 + 30678) = *(v15 + 30679);
  *(v15 + 61363) = objc_msgSend_frameRate(*(v15 + 4142), v37, v38) == 1;
  *(v15 + 61365) = 0;
  *(v15 + 61366) = 0;
  *(v15 + 245468) = vcvt_f32_u32(*(v15 + 245424));
  *(v15 + 61369) = 1;
  v61 = 0;
  v39 = AcANSTCreate((v15 + 33152), &v61);
  if (v39 || (v39 = AcANSTStart(*(v15 + 4144), (v15 + 36880)), v39) || (v39 = AcANSTGetParams(*(v15 + 4144), v15 + 9220, (v15 + 245424), (v15 + 33160)), v39) || (v39 = AcANSTUseLowThresholds(*(v15 + 4144)), v39) || (v39 = AcANSTSetRunSaliency(*(v15 + 4144), 1), v39) || (v39 = AcANSTSetRunSaliencyObjectDetection(*(v15 + 4144), 1), v39) || (v39 = AcANSTSetRunViSeg(*(v15 + 4144)), v39))
  {
    if (a4)
    {
      v41 = MEMORY[0x277CCA9B8];
      v63[0] = *MEMORY[0x277CCA068];
      v63[1] = @"AcReturn";
      v64[0] = @"Failed to set up AcANST for post-processing.";
      v42 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v40, v39);
      v64[1] = v42;
      v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, v64, v63, 2);
      *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v41, v45, @"ANSTErrorDomain", 3, v44);
    }

    goto LABEL_11;
  }

  v47 = objc_opt_new();
  objc_msgSend_addIndex_(v47, v48, 16);
  objc_msgSend_addIndex_(v47, v49, 17);
  objc_msgSend_addIndex_(v47, v50, 18);
  objc_msgSend_addIndex_(v47, v51, 19);
  objc_msgSend_addIndex_(v47, v52, 20);
  v53 = *(v15 + 30686);
  *(v15 + 30686) = v47;

  v56 = objc_msgSend_outputDescriptors(v6, v54, v55);
  v58 = objc_msgSend_prewarmBmBuffersForANSTOutputDescriptors_error_(v15, v57, v56, a4);

  if (v58)
  {
LABEL_13:
    v46 = v15;
    goto LABEL_14;
  }

LABEL_11:
  v46 = 0;
LABEL_14:

  v59 = *MEMORY[0x277D85DE8];
  return v46;
}

- (void)dealloc
{
  objc_msgSend__destroyRTCVWithError_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = ANSTISPInferencePostprocessorV3;
  [(ANSTISPInferencePostprocessor *)&v3 dealloc];
}

- (BOOL)processWithError:(id *)a3
{
  v5 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  v6 = os_signpost_id_make_with_pointer(v5, self);

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ANSTISPInferencePostprocessorV3", &unk_22E663F87, buf, 2u);
  }

  v8 = objc_msgSend__processWithError_(self, v7, a3);
  v9 = os_signpost_id_make_with_pointer(v5, self);

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v9, "ANSTISPInferencePostprocessorV3", &unk_22E663F87, v11, 2u);
  }

  return v8;
}

- (BOOL)resetWithError:(id *)a3
{
  v5 = objc_msgSend__destroyRTCVWithError_(self, a2, a3);
  if (v5)
  {

    LOBYTE(v5) = objc_msgSend__initializeRTCVWithError_(self, v6, a3);
  }

  return v5;
}

- (BOOL)_initializeRTCVWithError:(id *)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  p_detControl = &self->_detControl;
  *&self->_detControl.originalImageWidth = 0u;
  *&self->_detControl.imageOrientation = 0u;
  *&self->_detControl.initWithDetResults = 0u;
  *&self->_detControl.besCropInfo.height = 0u;
  self->_detControl.networkInputWidth = objc_msgSend_width(self->_inputImageDescriptor, a2, a3);
  v8 = objc_msgSend_height(self->_inputImageDescriptor, v6, v7);
  p_detControl->networkInputHeight = v8;
  p_detControl->originalImageWidth = p_detControl->networkInputWidth;
  p_detControl->originalImageHeight = v8;
  p_detControl->runningFrameRate = objc_msgSend_frameRate(self->_configuration, v9, v10) == 1;
  p_detControl->besCropInfo.x = 0.0;
  p_detControl->besCropInfo.y = 0.0;
  *&p_detControl->besCropInfo.width = vcvt_f32_u32(*&p_detControl->originalImageWidth);
  p_detControl->version = 1;
  v22 = 0;
  v11 = AcANSTCreate(&self->_det, &v22);
  if (v11)
  {
    goto LABEL_8;
  }

  v11 = AcANSTStart(self->_det, &self->_detState);
  if (v11 || (v11 = AcANSTGetParams(self->_det, self->_detState.data, p_detControl, &self->_detParams), v11) || (v11 = AcANSTUseLowThresholds(self->_det), v11) || (v11 = AcANSTSetRunSaliency(self->_det, 1), v11) || (v11 = AcANSTSetRunSaliencyObjectDetection(self->_det, 1), v11) || (det = self->_det, v14 = 1, v11 = AcANSTSetRunViSeg(det), v11))
  {
LABEL_8:
    if (a3)
    {
      v15 = MEMORY[0x277CCA9B8];
      v23[0] = *MEMORY[0x277CCA068];
      v23[1] = @"AcReturn";
      v24[0] = @"Failed to set up AcANST for post-processing.";
      v16 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, v11);
      v24[1] = v16;
      v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v24, v23, 2);
      *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v19, @"ANSTErrorDomain", 3, v18);
    }

    v14 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_destroyRTCVWithError:(id *)a3
{
  det = self->_det;
  if (det)
  {
    AcANSTStop(det);
    AcANSTDestroy(self->_det);
  }

  return 1;
}

- (BOOL)_processWithError:(id *)a3
{
  if (!objc_msgSend_isObjectTrackingEnabled(self->_configuration, a2, a3))
  {
    return 1;
  }

  objc_msgSend_originalImageSize(self, v5, v6);
  if (v10 == *MEMORY[0x277CBF3A8] && v9 == *(MEMORY[0x277CBF3A8] + 8))
  {
    networkInputHeight = self->_detControl.networkInputHeight;
    self->_detControl.originalImageWidth = self->_detControl.networkInputWidth;
  }

  else
  {
    objc_msgSend_originalImageSize(self, v7, v8);
    self->_detControl.originalImageWidth = v12;
    objc_msgSend_originalImageSize(self, v13, v14);
    networkInputHeight = v15;
  }

  self->_detControl.originalImageHeight = networkInputHeight;
  v18 = objc_msgSend_acResult(self, v7, v8);
  bzero(v18, 0x8110uLL);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_22E5DFC84;
  v29 = sub_22E5DFC94;
  v30 = 0;
  skipIndexSet = self->_skipIndexSet;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22E5DFC9C;
  v24[3] = &unk_27884F7D8;
  v24[4] = self;
  v24[5] = &v25;
  objc_msgSend_accessANSTOutputsAsBmBuffersWithSkipIndexSet_usingBlock_(self, v20, skipIndexSet, v24);
  v21 = v26[5];
  v17 = v21 == 0;
  if (v21)
  {
    v22 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22E657794(v21, v22);
    }

    if (a3)
    {
      *a3 = v26[5];
    }
  }

  _Block_object_dispose(&v25, 8);

  return v17;
}

- (float)smudgeConfidence
{
  if (!objc_msgSend_isObjectTrackingEnabled(self->_configuration, a2, v2))
  {
    return NAN;
  }

  v6 = objc_msgSend_acResult(self, v4, v5);
  v7 = *(v6 + 29908) & ~(*(v6 + 29908) >> 31);
  if (v7 >= 1000)
  {
    v7 = 1000;
  }

  return v7 / 1000.0;
}

- (id)trackedObjectsOfCategory:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isObjectTrackingEnabled(self->_configuration, v5, v6))
  {
    v9 = objc_msgSend_acResult(self, v7, v8);
    v11 = objc_msgSend_detectedObjectsForCategory_fromAcResult_(ANSTISPAlgorithmResult, v10, v4, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end