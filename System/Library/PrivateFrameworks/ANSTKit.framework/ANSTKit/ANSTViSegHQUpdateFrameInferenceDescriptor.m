@interface ANSTViSegHQUpdateFrameInferenceDescriptor
+ (id)assetURLForConfiguration:(id)a3;
+ (id)descriptorWithConfiguration:(id)a3 error:(id *)a4;
+ (id)e5FunctionNameForConfiguration:(id)a3;
- (ANSTViSegHQUpdateFrameInferenceDescriptor)initWithCoder:(id)a3;
- (ANSTViSegHQUpdateFrameInferenceDescriptor)initWithName:(id)a3 configuration:(id)a4 error:(id *)p_isa;
- (ANSTViSegHQUpdateFrameInferenceDescriptor)initWithName:(id)a3 version:(unint64_t)a4 assetURL:(id)a5 assetType:(int64_t)a6 e5FunctionName:(id)a7 inputDescriptors:(id)a8 outputDescriptors:(id)a9 error:(id *)a10;
- (id)newPostprocessorWithError:(id *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANSTViSegHQUpdateFrameInferenceDescriptor

- (ANSTViSegHQUpdateFrameInferenceDescriptor)initWithName:(id)a3 version:(unint64_t)a4 assetURL:(id)a5 assetType:(int64_t)a6 e5FunctionName:(id)a7 inputDescriptors:(id)a8 outputDescriptors:(id)a9 error:(id *)a10
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v20, a2);
  __break(1u);
  return result;
}

- (ANSTViSegHQUpdateFrameInferenceDescriptor)initWithName:(id)a3 configuration:(id)a4 error:(id *)p_isa
{
  v76[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (objc_msgSend_version(v9, v10, v11) == 0x20000)
  {
    v14 = @"Unsupported model version. ViSegHQ currently only supports ANSTViSegHQInferenceVersion2E5ML config on this platform.";
  }

  else
  {
    if (objc_msgSend_version(v9, v12, v13) == 131073)
    {
      v16 = objc_msgSend_makeInputImagePixelBufferDescriptorForConfiguration_name_error_(_ANSTViSegHQUtility, v15, v9, @"input_image", p_isa);
      inputImageDescriptor = self->_inputImageDescriptor;
      self->_inputImageDescriptor = v16;

      if (!self->_inputImageDescriptor)
      {
        goto LABEL_15;
      }

      v19 = objc_msgSend_makeMaskPixelBufferDescriptorForConfiguration_name_error_(_ANSTViSegHQUtility, v18, v9, @"input_matting", p_isa);
      inputMattingDescriptor = self->_inputMattingDescriptor;
      self->_inputMattingDescriptor = v19;

      if (!self->_inputMattingDescriptor)
      {
        goto LABEL_15;
      }

      v22 = objc_msgSend_makeProbTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v21, v9, @"input_prob");
      inputProbTensorDescriptor = self->_inputProbTensorDescriptor;
      self->_inputProbTensorDescriptor = v22;

      v25 = objc_msgSend_makeHiddenTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v24, v9, @"input_hidden");
      inputHiddenTensorDescriptor = self->_inputHiddenTensorDescriptor;
      self->_inputHiddenTensorDescriptor = v25;

      v28 = objc_msgSend_makeKeyTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v27, v9, @"input_key");
      inputKeyTensorDescriptor = self->_inputKeyTensorDescriptor;
      self->_inputKeyTensorDescriptor = v28;

      v31 = objc_msgSend_makeValueTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v30, v9, @"input_value");
      inputValueTensorDescriptor = self->_inputValueTensorDescriptor;
      self->_inputValueTensorDescriptor = v31;

      v34 = objc_msgSend_makeMaskPixelBufferDescriptorForConfiguration_name_error_(_ANSTViSegHQUtility, v33, v9, @"output_matting", p_isa);
      outputMattingDescriptor = self->_outputMattingDescriptor;
      self->_outputMattingDescriptor = v34;

      if (!self->_outputMattingDescriptor)
      {
        goto LABEL_15;
      }

      v37 = objc_msgSend_makeHiddenTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v36, v9, @"output_hidden");
      outputHiddenTensorDescriptor = self->_outputHiddenTensorDescriptor;
      self->_outputHiddenTensorDescriptor = v37;

      v40 = objc_msgSend_makeKeyTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v39, v9, @"output_key");
      outputKeyTensorDescriptor = self->_outputKeyTensorDescriptor;
      self->_outputKeyTensorDescriptor = v40;

      v43 = objc_msgSend_makeValueTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v42, v9, @"output_value");
      outputValueTensorDescriptor = self->_outputValueTensorDescriptor;
      self->_outputValueTensorDescriptor = v43;

      v46 = objc_msgSend_makeProbTensorDescriptorForConfiguration_name_(_ANSTViSegHQUtility, v45, v9, @"output_prob");
      outputProbTensorDescriptor = self->_outputProbTensorDescriptor;
      self->_outputProbTensorDescriptor = v46;

      v71 = objc_msgSend_version(v9, v48, v49);
      v70 = objc_msgSend_assetURLForConfiguration_(ANSTViSegHQUpdateFrameInferenceDescriptor, v50, v9);
      v69 = objc_msgSend_e5FunctionNameForConfiguration_(ANSTViSegHQUpdateFrameInferenceDescriptor, v51, v9);
      v52 = self->_inputMattingDescriptor;
      v74[0] = self->_inputImageDescriptor;
      v74[1] = v52;
      v53 = self->_inputHiddenTensorDescriptor;
      v74[2] = self->_inputProbTensorDescriptor;
      v74[3] = v53;
      v54 = self->_inputValueTensorDescriptor;
      v74[4] = self->_inputKeyTensorDescriptor;
      v74[5] = v54;
      v56 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v55, v74, 6);
      v57 = self->_outputKeyTensorDescriptor;
      v73[0] = self->_outputHiddenTensorDescriptor;
      v73[1] = v57;
      v58 = self->_outputMattingDescriptor;
      v73[2] = self->_outputValueTensorDescriptor;
      v73[3] = v58;
      v73[4] = self->_outputProbTensorDescriptor;
      v60 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v59, v73, 5);
      v72.receiver = self;
      v72.super_class = ANSTViSegHQUpdateFrameInferenceDescriptor;
      v61 = [(ANSTInferenceDescriptor *)&v72 initWithName:v8 version:v71 assetURL:v70 assetType:0 e5FunctionName:v69 inputDescriptors:v56 outputDescriptors:v60 error:p_isa];

      if (v61)
      {
        objc_storeStrong(&v61->_configuration, a4);
      }

      self = v61;
      p_isa = &self->super.super.super.isa;
      goto LABEL_16;
    }

    v14 = @"Unsupported model version.";
  }

  v62 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    sub_22E65A8E8(v14, v62);
  }

  if (p_isa)
  {
    v64 = MEMORY[0x277CCA9B8];
    v75 = *MEMORY[0x277CCA068];
    v76[0] = v14;
    v65 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v63, v76, &v75, 1);
    *p_isa = objc_msgSend_errorWithDomain_code_userInfo_(v64, v66, @"ANSTErrorDomain", 1, v65);

LABEL_15:
    p_isa = 0;
  }

LABEL_16:

  v67 = *MEMORY[0x277D85DE8];
  return p_isa;
}

+ (id)assetURLForConfiguration:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_version(a3, a2, a3) == 131073)
  {
    v5 = objc_msgSend_bundleForClass_(MEMORY[0x277CCA8D8], v4, a1);
    v7 = objc_msgSend_URLForResource_withExtension_subdirectory_(v5, v6, @"visegHQ_e5", @"mlmodelc", @"Models");

    v9 = objc_msgSend_URLByAppendingPathComponent_(v7, v8, @"model.bundle");
  }

  else
  {
    v9 = 0;
  }

  v10 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446466;
    v14 = "+[ANSTViSegHQUpdateFrameInferenceDescriptor assetURLForConfiguration:]";
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_22E5D5000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: returning %{public}@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)e5FunctionNameForConfiguration:(id)a3
{
  v3 = a3;
  if (objc_msgSend_version(v3, v4, v5) == 131073 && (v8 = objc_msgSend_resolution(v3, v6, v7), v8 <= 3))
  {
    v9 = off_27884FD08[v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = ANSTViSegHQUpdateFrameInferenceDescriptor;
  v4 = a3;
  [(ANSTInferenceDescriptor *)&v10 encodeWithCoder:v4];
  v7 = objc_msgSend_configuration(self, v5, v6, v10.receiver, v10.super_class);
  v8 = NSStringFromSelector(sel_configuration);
  objc_msgSend_encodeObject_forKey_(v4, v9, v7, v8);
}

- (ANSTViSegHQUpdateFrameInferenceDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ANSTViSegHQUpdateFrameInferenceDescriptor;
  v5 = [(ANSTInferenceDescriptor *)&v13 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_configuration);
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v6, v7);
  configuration = v5->_configuration;
  v5->_configuration = v9;

  if (!v5->_configuration)
  {
    v11 = 0;
  }

  else
  {
LABEL_3:
    v11 = v5;
  }

  return v11;
}

- (id)newPostprocessorWithError:(id *)a3
{
  v5 = [ANSTViSegHQUpdateFramePostProcessor alloc];

  return objc_msgSend_initWithInferenceDescriptor_error_(v5, v6, self, a3);
}

+ (id)descriptorWithConfiguration:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    v8 = [a1 alloc];
    a4 = objc_msgSend_initWithName_configuration_error_(v8, v9, @"ViSegHQUpdateFrameInferenceDescriptor", v7, a4);
  }

  else if (a4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"Configuration cannot be nil.";
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v16, &v15, 1);
    *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"ANSTErrorDomain", 2, v11);

    a4 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return a4;
}

@end