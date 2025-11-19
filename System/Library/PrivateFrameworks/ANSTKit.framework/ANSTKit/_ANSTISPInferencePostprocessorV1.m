@interface _ANSTISPInferencePostprocessorV1
+ (id)_semanticCategories;
+ (id)_semanticSegmentationMaskDescriptorsForInferenceDescriptor:(id)a3 maskPixelFormatType:(unsigned int)a4;
- (BOOL)_destroyRTCVWithError:(id *)a3;
- (BOOL)_getInputImageAcOrientation:(int *)a3 withError:(id *)a4;
- (BOOL)_initializeRTCVWithError:(id *)a3;
- (BOOL)_populateAcANSTNetOutput:(int)a3 intoSegmanticSegmentationMask:(id)a4 withError:(id *)a5;
- (BOOL)processWithError:(id *)a3;
- (BOOL)resetWithError:(id *)a3;
- (_ANSTISPInferencePostprocessorV1)initWithInferenceDescriptor:(id)a3 error:(id *)a4;
- (_ANSTISPInferencePostprocessorV1)initWithInferenceInputDescriptors:(id)a3 inferenceOutputDescriptors:(id)a4 processedOutputDescriptors:(id)a5 error:(id *)a6;
- (float)smudgeConfidence;
- (id)semanticSegmentationMaskDescriptorOfCategory:(id)a3;
- (id)trackedObjectsOfCategory:(id)a3;
- (void)dealloc;
@end

@implementation _ANSTISPInferencePostprocessorV1

- (_ANSTISPInferencePostprocessorV1)initWithInferenceInputDescriptors:(id)a3 inferenceOutputDescriptors:(id)a4 processedOutputDescriptors:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v13, a2);
  __break(1u);
  return result;
}

- (_ANSTISPInferencePostprocessorV1)initWithInferenceDescriptor:(id)a3 error:(id *)a4
{
  v66[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_configuration(v6, v7, v8);
  if (objc_msgSend_useE5(v9, v10, v11))
  {
    v12 = 1278226536;
  }

  else
  {
    v12 = 1278226488;
  }

  v15 = objc_msgSend_inputImageDescriptor(v6, v13, v14);
  v66[0] = v15;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v66, 1);
  v20 = objc_msgSend_outputDescriptors(v6, v18, v19);
  v21 = objc_opt_class();
  v23 = objc_msgSend__semanticSegmentationMaskDescriptorsForInferenceDescriptor_maskPixelFormatType_(v21, v22, v6, v12);
  v65.receiver = self;
  v65.super_class = _ANSTISPInferencePostprocessorV1;
  v24 = [(ANSTISPInferencePostprocessor *)&v65 initWithInferenceInputDescriptors:v17 inferenceOutputDescriptors:v20 processedOutputDescriptors:v23 error:a4];

  if (!v24)
  {
    goto LABEL_7;
  }

  v27 = objc_msgSend_configuration(v6, v25, v26);
  v30 = objc_msgSend_copy(v27, v28, v29);
  configuration = v24->_configuration;
  v24->_configuration = v30;

  v34 = objc_msgSend_inputImageDescriptor(v6, v32, v33);
  v37 = objc_msgSend_name(v34, v35, v36);
  inferenceInputImageDescriptorName = v24->_inferenceInputImageDescriptorName;
  v24->_inferenceInputImageDescriptorName = v37;

  v41 = objc_msgSend_inputImageDescriptor(v6, v39, v40);
  v24->_inferenceInputImageWidth = objc_msgSend_width(v41, v42, v43);

  v46 = objc_msgSend_inputImageDescriptor(v6, v44, v45);
  v24->_inferenceInputImageHeight = objc_msgSend_height(v46, v47, v48);

  v51 = objc_msgSend_outputDescriptors(v6, v49, v50);
  v52 = NSStringFromSelector(sel_name);
  v54 = objc_msgSend_valueForKey_(v51, v53, v52);
  inferenceOutputTensorDescriptorNames = v24->_inferenceOutputTensorDescriptorNames;
  v24->_inferenceOutputTensorDescriptorNames = v54;

  if (!objc_msgSend__initializeRTCVWithError_(v24, v56, a4))
  {
    goto LABEL_8;
  }

  v59 = objc_msgSend_outputDescriptors(v6, v57, v58);
  v61 = objc_msgSend_prewarmBmBuffersForANSTOutputDescriptors_error_(v24, v60, v59, a4);

  if (v61)
  {
LABEL_7:
    v62 = v24;
  }

  else
  {
LABEL_8:
    v62 = 0;
  }

  v63 = *MEMORY[0x277D85DE8];
  return v62;
}

- (void)dealloc
{
  objc_msgSend__destroyRTCVWithError_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = _ANSTISPInferencePostprocessorV1;
  [(ANSTISPInferencePostprocessor *)&v3 dealloc];
}

- (BOOL)_initializeRTCVWithError:(id *)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = AcANSTCreate(&self->_det, &v21);
  if (v5)
  {
    goto LABEL_8;
  }

  v5 = AcANSTStart(self->_det, &self->_detState);
  if (v5 || (v5 = AcANSTGetParams(self->_det, self->_detState.data, &v17, &self->_detParams), v5) || (v5 = AcANSTUseLowThresholds(self->_det), v5) || (v5 = AcANSTSetRunSaliency(self->_det, 1), v5) || (v5 = AcANSTSetRunSaliencyObjectDetection(self->_det, 1), v5) || (det = self->_det, v8 = 1, v5 = AcANSTSetRunViSeg(det), v5))
  {
LABEL_8:
    if (a3)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277CCA068];
      v23[0] = @"Failed to set up AcANST for post-processing.";
      v22[0] = v10;
      v22[1] = @"AcReturn";
      v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v6, v5, v17, v18, v19, v20);
      v23[1] = v11;
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v23, v22, 2);
      *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v14, @"ANSTErrorDomain", 3, v13);
    }

    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
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

- (BOOL)_getInputImageAcOrientation:(int *)a3 withError:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_inputPixelBufferForDescriptorNamed_(self, a2, self->_inferenceInputImageDescriptorName);
  if (v8)
  {
    v9 = objc_opt_class();
    LOBYTE(a4) = objc_msgSend_getInputImageAcOrientation_fromPixelBuffer_withError_(v9, v10, a3, v8, a4);
  }

  else if (a4)
  {
    v11 = MEMORY[0x277CCA9B8];
    inferenceInputImageDescriptorName = self->_inferenceInputImageDescriptorName;
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"Missing input pixel buffer for descriptor named: %@", inferenceInputImageDescriptorName, *MEMORY[0x277CCA068]);
    v20[0] = v13;
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v20, &v19, 1);
    *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v16, @"ANSTErrorDomain", 15, v15);

    LOBYTE(a4) = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)_populateAcANSTNetOutput:(int)a3 intoSegmanticSegmentationMask:(id)a4 withError:(id *)a5
{
  v79[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v10 = objc_msgSend_objectAtIndex_(self->_inferenceOutputTensorDescriptorNames, v9, a3);
  v12 = objc_msgSend_inputTensorDataForDescriptorNamed_(self, v11, v10);
  v15 = v12;
  if (v12)
  {
    v16 = objc_msgSend_tensorDescriptor(v12, v13, v14);
    v19 = objc_msgSend_dataType(v16, v17, v18);
    if (objc_msgSend_useE5(self->_configuration, v20, v21))
    {
      v24 = 104;
    }

    else
    {
      v24 = 102;
    }

    v25 = objc_msgSend_numberOfDimensions(v16, v22, v23);
    if (v19 == v24)
    {
      v28 = v25;
      v29 = v25 - 2;
      if (v25 < 2)
      {
        goto LABEL_30;
      }

      if (v25 == 2)
      {
        goto LABEL_21;
      }

      v30 = 0;
      v31 = 1;
      do
      {
        while (!v31)
        {
          v31 = 0;
          if (++v30 == v29)
          {
            goto LABEL_30;
          }
        }

        v32 = objc_msgSend_lengthOfDimensionAt_(v16, v26, v30);
        v31 = v32 == 1;
        ++v30;
      }

      while (v30 != v29);
      if (v32 == 1)
      {
LABEL_21:
        v41 = objc_msgSend_lengthOfDimensionAt_(v16, v26, v29);
        v43 = objc_msgSend_lengthOfDimensionAt_(v16, v42, v28 - 1);
        if (objc_msgSend_useE5(self->_configuration, v44, v45))
        {
          v48 = 1278226536;
        }

        else
        {
          v48 = 1278226488;
        }

        v49 = objc_msgSend_pixelBuffer(v8, v46, v47);
        if (v41 == CVPixelBufferGetHeight(v49) && v43 == CVPixelBufferGetWidth(v49) && v48 == CVPixelBufferGetPixelFormatType(v49))
        {
          if (!CVPixelBufferLockBaseAddress(v49, 0))
          {
            v68[0] = MEMORY[0x277D85DD0];
            v68[1] = 3221225472;
            v68[2] = sub_22E624920;
            v68[3] = &unk_27884FD58;
            v68[4] = v16;
            v68[5] = v28;
            v69 = v48;
            v68[6] = v49;
            v68[7] = v41;
            v68[8] = v43;
            LOBYTE(a5) = objc_msgSend_performDataAccessWithOptions_usingBlock_error_(v15, v52, 0, v68, a5);
            CVPixelBufferUnlockBaseAddress(v49, 0);
            goto LABEL_36;
          }

          if (a5)
          {
            v53 = MEMORY[0x277CCA9B8];
            v70 = *MEMORY[0x277CCA068];
            v71 = @"Unable to lock pixel CVPixelBuffer for writing.";
            v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, &v71, &v70, 1);
            objc_msgSend_errorWithDomain_code_userInfo_(v53, v54, @"ANSTErrorDomain", 19, v35);
            goto LABEL_16;
          }

LABEL_36:

          goto LABEL_37;
        }

        if (!a5)
        {
          goto LABEL_36;
        }

        v55 = MEMORY[0x277CCA9B8];
        v72 = *MEMORY[0x277CCA068];
        v61 = MEMORY[0x277CCACA8];
        v57 = objc_msgSend_name(v16, v50, v51);
        v59 = objc_msgSend_stringWithFormat_(v61, v62, @"Invalid tensor shape for descriptor named: %@", v57);
        v73 = v59;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v63, &v73, &v72, 1);
      }

      else
      {
LABEL_30:
        if (!a5)
        {
          goto LABEL_36;
        }

        v55 = MEMORY[0x277CCA9B8];
        v74 = *MEMORY[0x277CCA068];
        v56 = MEMORY[0x277CCACA8];
        v57 = objc_msgSend_name(v16, v26, v27);
        v59 = objc_msgSend_stringWithFormat_(v56, v58, @"Invalid tensor shape for descriptor named: %@", v57);
        v75 = v59;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, &v75, &v74, 1);
      }
      v64 = ;
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v55, v65, @"ANSTErrorDomain", 11, v64);

      goto LABEL_35;
    }

    if (a5)
    {
      v37 = MEMORY[0x277CCA9B8];
      v76 = *MEMORY[0x277CCA068];
      v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"Invalid tensor data type for descriptor named: %@", v10);
      v77 = v35;
      v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, &v77, &v76, 1);
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v37, v40, @"ANSTErrorDomain", 11, v39);

      goto LABEL_19;
    }

    goto LABEL_36;
  }

  if (a5)
  {
    v33 = MEMORY[0x277CCA9B8];
    v78 = *MEMORY[0x277CCA068];
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"Missing input tensor data for descriptor named: %@", v10);
    v79[0] = v16;
    v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, v79, &v78, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v33, v36, @"ANSTErrorDomain", 15, v35);
    *a5 = LABEL_16:;
LABEL_19:

LABEL_35:
    LOBYTE(a5) = 0;
    goto LABEL_36;
  }

LABEL_37:

  v66 = *MEMORY[0x277D85DE8];
  return a5;
}

- (BOOL)processWithError:(id *)a3
{
  v82[3] = *MEMORY[0x277D85DE8];
  v76 = 0u;
  memset(v77, 0, sizeof(v77));
  objc_msgSend_originalImageSize(self, a2, a3);
  if (v8 == *MEMORY[0x277CBF3A8] && v7 == *(MEMORY[0x277CBF3A8] + 8))
  {
    inferenceInputImageWidth = self->_inferenceInputImageWidth;
    LODWORD(v76) = inferenceInputImageWidth;
    inferenceInputImageHeight = self->_inferenceInputImageHeight;
    v14 = inferenceInputImageHeight;
  }

  else
  {
    objc_msgSend_originalImageSize(self, v5, v6);
    LODWORD(v76) = v10;
    objc_msgSend_originalImageSize(self, v11, v12);
    v14 = v13;
    inferenceInputImageWidth = self->_inferenceInputImageWidth;
    inferenceInputImageHeight = self->_inferenceInputImageHeight;
  }

  *(&v76 + 4) = __PAIR64__(inferenceInputImageWidth, v14);
  HIDWORD(v76) = inferenceInputImageHeight;
  InputImageAcOrientation_withError = objc_msgSend__getInputImageAcOrientation_withError_(self, v5, v77, a3);
  if (!InputImageAcOrientation_withError)
  {
    goto LABEL_31;
  }

  HIDWORD(v77[0]) = objc_msgSend_frameRate(self->_configuration, v18, v19) == 1;
  *(&v77[1] + 4) = 0;
  *(&v77[1] + 12) = vcvt_f32_u32(*&v76);
  v22 = objc_msgSend_acResult(self, v20, v21);
  bzero(v22, 0x8110uLL);
  if (objc_msgSend_isObjectTrackingEnabled(self->_configuration, v23, v24))
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v75 = -1;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = sub_22E624F6C;
    v70 = sub_22E624F7C;
    v71 = 0;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = sub_22E624F84;
    v61[3] = &unk_27884FD80;
    v61[5] = &v66;
    v61[6] = &v72;
    v61[4] = self;
    v65 = v77[2];
    v64 = v77[1];
    v63 = v77[0];
    v62 = v76;
    objc_msgSend_accessANSTOutputsAsBmBuffersWithSkipIndexSet_usingBlock_(self, v25, 0, v61);
    v28 = *(v73 + 6);
    if (v28 || v67[5])
    {
      if (a3)
      {
        v29 = MEMORY[0x277CCA9B8];
        v30 = *MEMORY[0x277CCA068];
        v82[0] = @"Failed to perform AcANST post-processing.";
        v81[0] = v30;
        v81[1] = @"AcReturn";
        v31 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v27, v28);
        v81[2] = @"Error";
        v32 = v67[5];
        v82[1] = v31;
        v82[2] = v32;
        v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v82, v81, 3);
        *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v29, v35, @"ANSTErrorDomain", 18, v34);
      }

      _Block_object_dispose(&v66, 8);

      _Block_object_dispose(&v72, 8);
LABEL_30:
      LOBYTE(InputImageAcOrientation_withError) = 0;
      goto LABEL_31;
    }

    _Block_object_dispose(&v66, 8);

    _Block_object_dispose(&v72, 8);
  }

  if (objc_msgSend_isSegmentationEnabled(self->_configuration, v25, v26))
  {
    v79[0] = @"Person";
    v79[1] = @"SalientPerson";
    v80[0] = &unk_28432BA30;
    v80[1] = &unk_28432BA48;
    v79[2] = @"Skin";
    v79[3] = @"Hair";
    v80[2] = &unk_28432BA60;
    v80[3] = &unk_28432BA78;
    v79[4] = @"Sky";
    v80[4] = &unk_28432BA90;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, v80, v79, 5);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v37 = v58 = 0u;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v57, v78, 16);
    if (v39)
    {
      v40 = *v58;
      while (2)
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v58 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v57 + 1) + 8 * i);
          v43 = objc_opt_class();
          v46 = objc_msgSend__semanticSegmentationMaskDescriptorNameOfCategory_(v43, v44, v42, v57);
          if (v46)
          {
            v48 = objc_msgSend_outputPixelBufferForDescriptorNamed_(self, v45, v46);
            if (v48)
            {
              v49 = objc_msgSend_objectForKeyedSubscript_(v37, v47, v42);
              v52 = objc_msgSend_intValue(v49, v50, v51);
              v54 = objc_msgSend__populateAcANSTNetOutput_intoSegmanticSegmentationMask_withError_(self, v53, v52, v48, a3);

              if (!v54)
              {

                goto LABEL_30;
              }
            }
          }
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v45, &v57, v78, 16);
        if (v39)
        {
          continue;
        }

        break;
      }
    }
  }

  LOBYTE(InputImageAcOrientation_withError) = 1;
LABEL_31:
  v55 = *MEMORY[0x277D85DE8];
  return InputImageAcOrientation_withError;
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

- (id)semanticSegmentationMaskDescriptorOfCategory:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend__semanticSegmentationMaskDescriptorNameOfCategory_(v5, v6, v4);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = objc_msgSend_processedOutputPixelBufferDescriptors(self, v8, v9, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v23, v27, 16);
  if (v14)
  {
    v15 = *v24;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = objc_msgSend_name(v17, v12, v13);
        isEqualToString = objc_msgSend_isEqualToString_(v18, v19, v7);

        if (isEqualToString)
        {
          v14 = v17;
          goto LABEL_11;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v23, v27, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_semanticSegmentationMaskDescriptorsForInferenceDescriptor:(id)a3 maskPixelFormatType:(unsigned int)a4
{
  v61[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = objc_msgSend_configuration(v5, v6, v7);
  isSegmentationEnabled = objc_msgSend_isSegmentationEnabled(v8, v9, v10);

  if (isSegmentationEnabled)
  {
    v14 = objc_msgSend_inputImageDescriptor(v5, v12, v13);
    v17 = objc_msgSend_width(v14, v15, v16);

    v52 = v5;
    v20 = objc_msgSend_inputImageDescriptor(v5, v18, v19);
    v23 = objc_msgSend_height(v20, v21, v22);

    v60 = *MEMORY[0x277CC4DE8];
    v61[0] = MEMORY[0x277CBEC10];
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v61, &v60, 1);
    v26 = objc_alloc(MEMORY[0x277CBEB18]);
    v29 = objc_msgSend__semanticCategories(a1, v27, v28);
    v32 = objc_msgSend_count(v29, v30, v31);
    v34 = objc_msgSend_initWithCapacity_(v26, v33, v32);

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = objc_msgSend__semanticCategories(a1, v35, v36);
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v55, v59, 16);
    if (v38)
    {
      v40 = v38;
      v41 = v17 >> 1;
      v42 = v23 >> 1;
      v43 = *v56;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v56 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v45 = objc_msgSend__semanticSegmentationMaskDescriptorNameOfCategory_(a1, v39, *(*(&v55 + 1) + 8 * i));
          v46 = [ANSTPixelBufferDescriptor alloc];
          v48 = objc_msgSend_initWithName_width_height_pixelFormatType_pixelBufferAttributes_error_(v46, v47, v45, v41, v42, a4, v25, 0);
          objc_msgSend_addObject_(v34, v49, v48);
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v55, v59, 16);
      }

      while (v40);
    }

    v5 = v52;
  }

  else
  {
    v34 = MEMORY[0x277CBEBF8];
  }

  v50 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (id)_semanticCategories
{
  v5[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"Person";
  v5[1] = @"SalientPerson";
  v5[2] = @"Skin";
  v5[3] = @"Hair";
  v5[4] = @"Sky";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 5);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end