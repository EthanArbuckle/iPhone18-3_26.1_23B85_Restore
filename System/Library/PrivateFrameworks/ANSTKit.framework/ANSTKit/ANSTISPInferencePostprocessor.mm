@interface ANSTISPInferencePostprocessor
+ (BOOL)getInputImageAcOrientation:(int *)orientation fromPixelBuffer:(id)buffer withError:(id *)error;
- (ANSTISPInferencePostprocessor)initWithInferenceInputDescriptors:(id)descriptors inferenceOutputDescriptors:(id)outputDescriptors processedOutputDescriptors:(id)processedOutputDescriptors error:(id *)error;
- (BOOL)prewarmBmBuffersForANSTOutputDescriptors:(id)descriptors error:(id *)error;
- (CGSize)originalImageSize;
- (id)semanticSegmentationMaskDescriptorOfCategory:(id)category;
- (id)trackedObjectsOfCategory:(id)category;
- (void)_recursiveBatchAccessOfANSTTensorOutputDataCurrentIndex:(unint64_t)index skipIndexSet:(id)set block:(id)block;
- (void)accessANSTOutputsAsBmBuffersWithSkipIndexSet:(id)set usingBlock:(id)block;
- (void)dealloc;
@end

@implementation ANSTISPInferencePostprocessor

- (ANSTISPInferencePostprocessor)initWithInferenceInputDescriptors:(id)descriptors inferenceOutputDescriptors:(id)outputDescriptors processedOutputDescriptors:(id)processedOutputDescriptors error:(id *)error
{
  v10.receiver = self;
  v10.super_class = ANSTISPInferencePostprocessor;
  v6 = [(ANSTInferencePostprocessor *)&v10 initWithInferenceInputDescriptors:descriptors inferenceOutputDescriptors:outputDescriptors processedOutputDescriptors:processedOutputDescriptors error:error];
  v7 = v6;
  if (v6)
  {
    anstOutputDescriptors = v6->_anstOutputDescriptors;
    v6->_anstOutputDescriptors = 0;

    v7->_anstOutputs = 0;
    v7->_originalImageSize = *MEMORY[0x277CBF3A8];
    bzero(&v7->_acResult, 0x8110uLL);
  }

  return v7;
}

- (id)trackedObjectsOfCategory:(id)category
{
  categoryCopy = category;
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v4, *MEMORY[0x277CBE660], @"A concrete implementation of -trackedObjectsOfCategory: is required.", 0);
  objc_exception_throw(v5);
}

- (id)semanticSegmentationMaskDescriptorOfCategory:(id)category
{
  categoryCopy = category;
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v4, *MEMORY[0x277CBE660], @"A concrete implementation of -semanticSegmentationMaskDescriptorOfCategory: is required.", 0);
  objc_exception_throw(v5);
}

- (BOOL)prewarmBmBuffersForANSTOutputDescriptors:(id)descriptors error:(id *)error
{
  v100[1] = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v9 = descriptorsCopy;
  if (self->_anstOutputs)
  {
    if (error)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = descriptorsCopy;
      v99 = *MEMORY[0x277CCA068];
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"BmBuffer array has already been prewarmed.");
      v100[0] = v12;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v100, &v99, 1);
      v9 = v11;
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v10, v15, @"ANSTErrorDomain", 3, v14);

      goto LABEL_4;
    }

    goto LABEL_5;
  }

  objc_storeStrong(&self->_anstOutputDescriptors, descriptors);
  v19 = objc_msgSend_count(v9, v17, v18);
  self->_anstOutputs = malloc_type_malloc(24 * v19, 0x1080040468F112EuLL);
  if (!objc_msgSend_count(v9, v20, v21))
  {
LABEL_42:
    v16 = 1;
    goto LABEL_43;
  }

  errorCopy = error;
  v90 = v9;
  v23 = 0;
  v24 = 0x27884F000uLL;
  selfCopy = self;
  while (1)
  {
    v25 = objc_msgSend_objectAtIndexedSubscript_(v9, v22, v23);
    v26 = &self->_anstOutputs[v23];
    v27 = *(v24 + 1280);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v25;
      v30 = objc_msgSend_dataType(v12, v28, v29);
      v33 = objc_msgSend_numberOfDimensions(v12, v31, v32);
      v36 = v33;
      v38 = v30 == 104 || v30 == 102;
      v92 = v33 - 1;
      v39 = v33 > 1 && v38;
      if (v38 && v33 >= 3)
      {
        v54 = v33 - 3;
        v41 = objc_msgSend_lengthOfDimensionAt_(v12, v34, v33 - 3);
        if (v36 != 3)
        {
          v55 = 0;
          do
          {
            v39 = v39 && objc_msgSend_lengthOfDimensionAt_(v12, v34, v55++) == 1;
          }

          while (v54 != v55);
        }

        v9 = v90;
        if (!v39)
        {
LABEL_44:
          if (errorCopy)
          {
            v62 = MEMORY[0x277CCA9B8];
            v97 = *MEMORY[0x277CCA068];
            v63 = MEMORY[0x277CCACA8];
            v64 = objc_msgSend_name(v12, v34, v35);
            v66 = objc_msgSend_stringWithFormat_(v63, v65, @"Invalid tensor for descriptor named: %@", v64);
            v98 = v66;
            v68 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v67, &v98, &v97, 1);
            *errorCopy = objc_msgSend_errorWithDomain_code_userInfo_(v62, v69, @"ANSTErrorDomain", 10, v68);
          }

          anstOutputs = selfCopy->_anstOutputs;
          if (anstOutputs)
          {
            free(anstOutputs);
            selfCopy->_anstOutputs = 0;
          }

LABEL_57:

          goto LABEL_4;
        }
      }

      else
      {
        v41 = 1;
        if (!v39)
        {
          goto LABEL_44;
        }
      }

      v26->var0 = 0;
      v26->var1 = objc_msgSend_lengthOfDimensionAt_(v12, v34, v36 - 2) * v41;
      v26->var2 = objc_msgSend_lengthOfDimensionAt_(v12, v56, v92);
      v26->var3 = objc_msgSend_strideOfDimensionAt_(v12, v57, v36 - 2);
      if (v30 == 104)
      {
        v53 = 7;
      }

      else
      {
        v53 = 6;
      }

      self = selfCopy;
      v24 = 0x27884F000;
      goto LABEL_41;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v12 = v25;
    v26->var0 = 0;
    v26->var1 = objc_msgSend_height(v12, v44, v45);
    v26->var2 = objc_msgSend_width(v12, v46, v47);
    v26->var3 = 0;
    v50 = objc_msgSend_pixelFormatType(v12, v48, v49);
    if (v50 == 1278226488)
    {
      v53 = 1;
    }

    else
    {
      if (v50 != 1278226742 && v50 != 1278226536)
      {
        if (errorCopy)
        {
          v80 = MEMORY[0x277CCA9B8];
          v95 = *MEMORY[0x277CCA068];
          v81 = MEMORY[0x277CCACA8];
          v82 = objc_msgSend_name(v12, v51, v52);
          v84 = objc_msgSend_stringWithFormat_(v81, v83, @"Invalid pixel format for descriptor named: %@", v82);
          v96 = v84;
          v86 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v85, &v96, &v95, 1);
          *errorCopy = objc_msgSend_errorWithDomain_code_userInfo_(v80, v87, @"ANSTErrorDomain", 10, v86);
        }

        v88 = self->_anstOutputs;
        if (v88)
        {
          free(v88);
          self->_anstOutputs = 0;
        }

        goto LABEL_57;
      }

      v53 = 7;
    }

LABEL_41:
    v26->var4 = v53;

    if (objc_msgSend_count(v9, v58, v59) <= ++v23)
    {
      goto LABEL_42;
    }
  }

  if (errorCopy)
  {
    v71 = MEMORY[0x277CCA9B8];
    v93 = *MEMORY[0x277CCA068];
    v72 = MEMORY[0x277CCACA8];
    v73 = objc_msgSend_name(v25, v42, v43);
    v75 = objc_msgSend_stringWithFormat_(v72, v74, @"Unexpected descriptor type for descriptor named: %@", v73);
    v94 = v75;
    v77 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v76, &v94, &v93, 1);
    *errorCopy = objc_msgSend_errorWithDomain_code_userInfo_(v71, v78, @"ANSTErrorDomain", 10, v77);
  }

  v79 = self->_anstOutputs;
  if (v79)
  {
    free(v79);
    self->_anstOutputs = 0;
  }

  v12 = v25;
LABEL_4:

LABEL_5:
  v16 = 0;
LABEL_43:

  v60 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)accessANSTOutputsAsBmBuffersWithSkipIndexSet:(id)set usingBlock:(id)block
{
  v20[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v8 = blockCopy;
  if (self->_anstOutputs)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22E5F47F0;
    v17[3] = &unk_27884FB08;
    v17[4] = self;
    v18 = blockCopy;
    objc_msgSend__recursiveBatchAccessOfANSTTensorOutputDataCurrentIndex_skipIndexSet_block_(self, v9, 0, set, v17);
    v10 = v18;
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA068];
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"BmBuffer array has not been prewarmed. Please run [prewarmBmBuffersForANSTOutputDescriptors:error:] first.");
    v20[0] = v12;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v20, &v19, 1);
    v10 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v15, @"ANSTErrorDomain", 3, v14);

    (v8)[2](v8, 0, 0, v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_recursiveBatchAccessOfANSTTensorOutputDataCurrentIndex:(unint64_t)index skipIndexSet:(id)set block:(id)block
{
  v84[1] = *MEMORY[0x277D85DE8];
  setCopy = set;
  blockCopy = block;
  if (objc_msgSend_count(self->_anstOutputDescriptors, v10, v11) <= index)
  {
    blockCopy[2](blockCopy, 0);
  }

  else if (objc_msgSend_containsIndex_(setCopy, v12, index))
  {
    self->_anstOutputs[index].var0 = 0;
    objc_msgSend__recursiveBatchAccessOfANSTTensorOutputDataCurrentIndex_skipIndexSet_block_(self, v13, index + 1, setCopy, blockCopy);
  }

  else
  {
    v14 = objc_msgSend_objectAtIndexedSubscript_(self->_anstOutputDescriptors, v13, index);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = objc_msgSend_name(v14, v15, v16);
      v19 = objc_msgSend_inputTensorDataForDescriptorNamed_(self, v18, v17);

      if (v19)
      {
        v75 = 0;
        v76 = &v75;
        v77 = 0x2020000000;
        v78 = 0;
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = sub_22E5F4E34;
        v70[3] = &unk_27884FB30;
        v70[4] = self;
        indexCopy = index;
        v71 = setCopy;
        v22 = blockCopy;
        v72 = v22;
        v73 = &v75;
        v69 = 0;
        objc_msgSend_performDataAccessWithOptions_usingBlock_error_(v19, v23, 0, v70, &v69);
        v24 = v69;
        self->_anstOutputs[index].var0 = 0;
        if (v24)
        {
          if (*(v76 + 24) == 1)
          {
            v25 = _ANSTLoggingGetOSLogForCategoryANSTKit();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              sub_22E659498(v24, v25);
            }
          }

          else
          {
            (v22)[2](v22, v24);
          }
        }

        _Block_object_dispose(&v75, 8);
      }

      else
      {
        v52 = MEMORY[0x277CCA9B8];
        v83 = *MEMORY[0x277CCA068];
        v53 = MEMORY[0x277CCACA8];
        v54 = objc_msgSend_name(v14, v20, v21);
        v56 = objc_msgSend_stringWithFormat_(v53, v55, @"Tensor data not bound for descriptor named: %@", v54);
        v84[0] = v56;
        v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, v84, &v83, 1);
        v24 = objc_msgSend_errorWithDomain_code_userInfo_(v52, v59, @"ANSTErrorDomain", 11, v58);

        (blockCopy)[2](blockCopy, v24);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = objc_msgSend_name(v14, v26, v27);
        v30 = objc_msgSend_inputPixelBufferForDescriptorNamed_(self, v29, v28);

        if (v30)
        {
          v33 = objc_msgSend_pixelBuffer(v30, v31, v32);
          CVPixelBufferLockBaseAddress(v33, 1uLL);
          v36 = objc_msgSend_pixelBuffer(v30, v34, v35);
          self->_anstOutputs[index].var0 = CVPixelBufferGetBaseAddress(v36);
          objc_msgSend__recursiveBatchAccessOfANSTTensorOutputDataCurrentIndex_skipIndexSet_block_(self, v37, index + 1, setCopy, blockCopy);
          self->_anstOutputs[index].var0 = 0;
          v40 = objc_msgSend_pixelBuffer(v30, v38, v39);
          CVPixelBufferUnlockBaseAddress(v40, 1uLL);
          v24 = 0;
        }

        else
        {
          v60 = MEMORY[0x277CCA9B8];
          v81 = *MEMORY[0x277CCA068];
          v61 = MEMORY[0x277CCACA8];
          v62 = objc_msgSend_name(v14, v31, v32);
          v64 = objc_msgSend_stringWithFormat_(v61, v63, @"Pixel buffer data not bound for descriptor named: %@", v62);
          v82 = v64;
          v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v65, &v82, &v81, 1);
          v24 = objc_msgSend_errorWithDomain_code_userInfo_(v60, v67, @"ANSTErrorDomain", 13, v66);

          (blockCopy)[2](blockCopy, v24);
        }
      }

      else
      {
        v41 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_22E659420(v14, v41);
        }

        v42 = MEMORY[0x277CCA9B8];
        v79 = *MEMORY[0x277CCA068];
        v43 = MEMORY[0x277CCACA8];
        v46 = objc_msgSend_name(v14, v44, v45);
        v48 = objc_msgSend_stringWithFormat_(v43, v47, @"Unexpected type (neither tensor nor pixel buffer) for descriptor named: %@", v46);
        v80 = v48;
        v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v80, &v79, 1);
        v24 = objc_msgSend_errorWithDomain_code_userInfo_(v42, v51, @"ANSTErrorDomain", 10, v50);

        (blockCopy)[2](blockCopy, v24);
      }
    }
  }

  v68 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  anstOutputs = self->_anstOutputs;
  if (anstOutputs)
  {
    free(anstOutputs);
    self->_anstOutputs = 0;
  }

  v4.receiver = self;
  v4.super_class = ANSTISPInferencePostprocessor;
  [(ANSTISPInferencePostprocessor *)&v4 dealloc];
}

+ (BOOL)getInputImageAcOrientation:(int *)orientation fromPixelBuffer:(id)buffer withError:(id *)error
{
  LODWORD(v7) = objc_msgSend_orientation(buffer, a2, orientation);
  if (v7 <= 3)
  {
    if (v7 == 1)
    {
      *orientation = 0;
      return v7;
    }

    if (v7 != 2)
    {
      if (v7 == 3)
      {
        v9 = 2;
        goto LABEL_10;
      }

LABEL_18:
      if (error)
      {
        objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, @"ANSTErrorDomain", 16, 0);
        goto LABEL_16;
      }

      goto LABEL_20;
    }

LABEL_14:
    if (error)
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, @"ANSTErrorDomain", 17, 0);
      v10 = LABEL_16:;
      v7 = v10;
      LOBYTE(v7) = 0;
      *error = v10;
      return v7;
    }

LABEL_20:
    LOBYTE(v7) = 0;
    return v7;
  }

  if (v7 > 6)
  {
    if (v7 != 7)
    {
      if (v7 == 8)
      {
        LOBYTE(v7) = 1;
        *orientation = 1;
        return v7;
      }

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if ((v7 - 4) < 2)
  {
    goto LABEL_14;
  }

  if (v7 != 6)
  {
    goto LABEL_18;
  }

  v9 = 3;
LABEL_10:
  *orientation = v9;
  LOBYTE(v7) = 1;
  return v7;
}

- (CGSize)originalImageSize
{
  width = self->_originalImageSize.width;
  height = self->_originalImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end