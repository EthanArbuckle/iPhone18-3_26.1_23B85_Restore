@interface _ANSTViSegHQUtility
+ (id)makeHiddenTensorDescriptorForConfiguration:(id)configuration name:(id)name;
+ (id)makeInputImagePixelBufferDescriptorForConfiguration:(id)configuration name:(id)name error:(id *)error;
+ (id)makeKeyTensorDescriptorForConfiguration:(id)configuration name:(id)name;
+ (id)makeMaskPixelBufferDescriptorForConfiguration:(id)configuration name:(id)name error:(id *)error;
+ (id)makeMattingTensorDescriptorForConfiguration:(id)configuration name:(id)name;
+ (id)makeProbTensorDescriptorForConfiguration:(id)configuration name:(id)name;
+ (id)makeValueTensorDescriptorForConfiguration:(id)configuration name:(id)name;
+ (unint64_t)_tensorDataTypeForConfiguration:(id)configuration;
@end

@implementation _ANSTViSegHQUtility

+ (unint64_t)_tensorDataTypeForConfiguration:(id)configuration
{
  if (objc_msgSend_version(configuration, a2, configuration) > 0x20000)
  {
    return 104;
  }

  else
  {
    return 102;
  }
}

+ (id)makeProbTensorDescriptorForConfiguration:(id)configuration name:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  nameCopy = name;
  v9 = objc_msgSend_resolution(configurationCopy, v7, v8, 0, 0, 0, 0);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      *&v22 = 1;
      v10 = xmmword_22E661980;
      goto LABEL_13;
    }

    if (v9 == 3)
    {
      *&v22 = 1;
      v10 = xmmword_22E661970;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v9)
    {
      *&v22 = 1;
      v10 = xmmword_22E6619A0;
      goto LABEL_13;
    }

    if (v9 == 1)
    {
      *&v22 = 1;
      v10 = xmmword_22E661990;
LABEL_13:
      *(&v22 + 1) = 1;
      v23 = v10;
      v14 = [ANSTTensorDescriptor alloc];
      v16 = objc_msgSend__tensorDataTypeForConfiguration_(_ANSTViSegHQUtility, v15, configurationCopy, v22, v23);
      v18 = objc_msgSend__alignmentForConfiguration_(_ANSTViSegHQUtility, v17, configurationCopy);
      v13 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v14, v19, nameCopy, v16, 4, &v22, v18, 0);
      goto LABEL_14;
    }
  }

  v11 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_22E657B40(configurationCopy, v11, v12);
  }

  v13 = 0;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)makeHiddenTensorDescriptorForConfiguration:(id)configuration name:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  nameCopy = name;
  v9 = objc_msgSend_resolution(configurationCopy, v7, v8, 0, 0, 0, 0);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      *&v22 = 1;
      v10 = xmmword_22E6619C0;
      goto LABEL_13;
    }

    if (v9 == 3)
    {
      *&v22 = 1;
      v10 = xmmword_22E6619B0;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v9)
    {
      *&v22 = 1;
      v10 = xmmword_22E6619E0;
      goto LABEL_13;
    }

    if (v9 == 1)
    {
      *&v22 = 1;
      v10 = xmmword_22E6619D0;
LABEL_13:
      *(&v22 + 1) = 64;
      v23 = v10;
      v14 = [ANSTTensorDescriptor alloc];
      v16 = objc_msgSend__tensorDataTypeForConfiguration_(_ANSTViSegHQUtility, v15, configurationCopy, v22, v23);
      v18 = objc_msgSend__alignmentForConfiguration_(_ANSTViSegHQUtility, v17, configurationCopy);
      v13 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v14, v19, nameCopy, v16, 4, &v22, v18, 0);
      goto LABEL_14;
    }
  }

  v11 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_22E657BC4(configurationCopy, v11, v12);
  }

  v13 = 0;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)makeKeyTensorDescriptorForConfiguration:(id)configuration name:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  nameCopy = name;
  v9 = objc_msgSend_resolution(configurationCopy, v7, v8, 0, 0, 0, 0);
  if (v9 >= 4)
  {
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_22E657C48(configurationCopy, v18, v19);
    }

    v17 = 0;
  }

  else
  {
    v10 = qword_22E661A10[v9];
    *&v22 = 1;
    *(&v22 + 1) = v10;
    v11 = [ANSTTensorDescriptor alloc];
    v13 = objc_msgSend__tensorDataTypeForConfiguration_(_ANSTViSegHQUtility, v12, configurationCopy, v22, xmmword_22E6619F0);
    v15 = objc_msgSend__alignmentForConfiguration_(_ANSTViSegHQUtility, v14, configurationCopy);
    v17 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v11, v16, nameCopy, v13, 4, &v22, v15, 0);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)makeValueTensorDescriptorForConfiguration:(id)configuration name:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  nameCopy = name;
  v9 = objc_msgSend_resolution(configurationCopy, v7, v8, 0, 0, 0, 0);
  if (v9 >= 4)
  {
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_22E657CCC(configurationCopy, v18, v19);
    }

    v17 = 0;
  }

  else
  {
    v10 = qword_22E661A10[v9];
    *&v23 = 1;
    *(&v23 + 1) = v10;
    v11 = [ANSTTensorDescriptor alloc];
    v13 = objc_msgSend__tensorDataTypeForConfiguration_(_ANSTViSegHQUtility, v12, configurationCopy, xmmword_22E661A00, v23);
    v15 = objc_msgSend__alignmentForConfiguration_(_ANSTViSegHQUtility, v14, configurationCopy);
    v17 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v11, v16, nameCopy, v13, 4, &v22, v15, 0);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)makeMattingTensorDescriptorForConfiguration:(id)configuration name:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  nameCopy = name;
  v9 = objc_msgSend_resolution(configurationCopy, v7, v8, 0, 0, 0, 0);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      *&v22 = 1;
      v10 = xmmword_22E661980;
      goto LABEL_13;
    }

    if (v9 == 3)
    {
      *&v22 = 1;
      v10 = xmmword_22E661970;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v9)
    {
      *&v22 = 1;
      v10 = xmmword_22E6619A0;
      goto LABEL_13;
    }

    if (v9 == 1)
    {
      *&v22 = 1;
      v10 = xmmword_22E661990;
LABEL_13:
      *(&v22 + 1) = 1;
      v23 = v10;
      v14 = [ANSTTensorDescriptor alloc];
      v16 = objc_msgSend__tensorDataTypeForConfiguration_(_ANSTViSegHQUtility, v15, configurationCopy, v22, v23);
      v18 = objc_msgSend__alignmentForConfiguration_(_ANSTViSegHQUtility, v17, configurationCopy);
      v13 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v14, v19, nameCopy, v16, 4, &v22, v18, 0);
      goto LABEL_14;
    }
  }

  v11 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_22E657D50(configurationCopy, v11, v12);
  }

  v13 = 0;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)makeInputImagePixelBufferDescriptorForConfiguration:(id)configuration name:(id)name error:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  nameCopy = name;
  v11 = objc_msgSend_resolution(configurationCopy, v9, v10);
  if (v11 < 4)
  {
    v13 = qword_22E661A30[v11];
    v14 = qword_22E661A50[v11];
    v32[0] = *MEMORY[0x277CC4EC8];
    v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, v14);
    v33[0] = v15;
    v32[1] = *MEMORY[0x277CC4DD8];
    v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v16, v13);
    v18 = *MEMORY[0x277CC4E30];
    v33[1] = v17;
    v33[2] = &unk_28432B958;
    v19 = *MEMORY[0x277CC4DE8];
    v32[2] = v18;
    v32[3] = v19;
    v33[3] = MEMORY[0x277CBEC10];
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v33, v32, 4);

    v22 = [ANSTPixelBufferDescriptor alloc];
    v24 = objc_msgSend_initWithName_pixelBufferAttributes_error_(v22, v23, nameCopy, v21, error);
LABEL_7:

    goto LABEL_8;
  }

  v25 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    sub_22E657DD4(configurationCopy, v25, v26);
  }

  if (error)
  {
    v28 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA068];
    v35[0] = @"Unexpected resolution";
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v35, &v34, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v28, v29, @"ANSTErrorDomain", 2, v21);
    *error = v24 = 0;
    goto LABEL_7;
  }

  v24 = 0;
LABEL_8:

  v30 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)makeMaskPixelBufferDescriptorForConfiguration:(id)configuration name:(id)name error:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  nameCopy = name;
  v11 = objc_msgSend_resolution(configurationCopy, v9, v10);
  if (v11 < 4)
  {
    v13 = qword_22E661A30[v11];
    v14 = qword_22E661A50[v11];
    v32[0] = *MEMORY[0x277CC4EC8];
    v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, v14);
    v33[0] = v15;
    v32[1] = *MEMORY[0x277CC4DD8];
    v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v16, v13);
    v33[1] = v17;
    v32[2] = *MEMORY[0x277CC4E30];
    v19 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, 1278226536);
    v32[3] = *MEMORY[0x277CC4DE8];
    v33[2] = v19;
    v33[3] = MEMORY[0x277CBEC10];
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v33, v32, 4);

    v22 = [ANSTPixelBufferDescriptor alloc];
    v24 = objc_msgSend_initWithName_pixelBufferAttributes_error_(v22, v23, nameCopy, v21, error);
LABEL_7:

    goto LABEL_8;
  }

  v25 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    sub_22E657E58(configurationCopy, v25, v26);
  }

  if (error)
  {
    v28 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA068];
    v35[0] = @"Unexpected resolution";
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v35, &v34, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v28, v29, @"ANSTErrorDomain", 2, v21);
    *error = v24 = 0;
    goto LABEL_7;
  }

  v24 = 0;
LABEL_8:

  v30 = *MEMORY[0x277D85DE8];

  return v24;
}

@end