@interface ANSTISPInferenceDescriptor
+ (id)_descriptorWithConfiguration:(id)a3 error:(id *)a4;
+ (id)e5DescriptorWithConfiguration:(id)a3 error:(id *)a4;
- (ANSTISPInferenceDescriptor)initWithCoder:(id)a3;
- (ANSTISPInferenceDescriptor)initWithName:(id)a3 version:(unint64_t)a4 assetURL:(id)a5 assetType:(int64_t)a6 e5FunctionName:(id)a7 inputDescriptors:(id)a8 outputDescriptors:(id)a9 configuration:(id)a10 error:(id *)a11;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)newPostprocessorWithError:(id *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANSTISPInferenceDescriptor

- (ANSTISPInferenceDescriptor)initWithName:(id)a3 version:(unint64_t)a4 assetURL:(id)a5 assetType:(int64_t)a6 e5FunctionName:(id)a7 inputDescriptors:(id)a8 outputDescriptors:(id)a9 configuration:(id)a10 error:(id *)a11
{
  v21 = a10;
  v22.receiver = self;
  v22.super_class = ANSTISPInferenceDescriptor;
  v18 = [(ANSTInferenceDescriptor *)&v22 initWithName:a3 version:a4 assetURL:a5 assetType:a6 e5FunctionName:a7 inputDescriptors:a8 outputDescriptors:a9 error:a11];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_configuration, a10);
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ANSTISPInferenceDescriptor;
  if (![(ANSTInferenceDescriptor *)&v14 isEqual:v4])
  {
    goto LABEL_6;
  }

  if (v4 == self)
  {
    isEqual = 1;
    goto LABEL_8;
  }

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = objc_msgSend_configuration(self, v5, v6);
    v10 = objc_msgSend_configuration(v4, v8, v9);
    isEqual = objc_msgSend_isEqual_(v7, v11, v10);
  }

  else
  {
LABEL_6:
    isEqual = 0;
  }

LABEL_8:

  return isEqual;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = ANSTISPInferenceDescriptor;
  v3 = [(ANSTInferenceDescriptor *)&v7 hash];
  return objc_msgSend_hash(self->_configuration, v4, v5) - v3 + 32 * v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = ANSTISPInferenceDescriptor;
  v4 = [(ANSTInferenceDescriptor *)&v11 debugDescription];
  v7 = objc_msgSend_debugDescription(self->_configuration, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@\n%@", v4, v7);

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = ANSTISPInferenceDescriptor;
  v6 = [(ANSTInferenceDescriptor *)&v10 copyWithZone:a3];
  if (v6)
  {
    v7 = objc_msgSend_copy(self->_configuration, v4, v5);
    v8 = v6[12];
    v6[12] = v7;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = ANSTISPInferenceDescriptor;
  v4 = a3;
  [(ANSTInferenceDescriptor *)&v10 encodeWithCoder:v4];
  v7 = objc_msgSend_configuration(self, v5, v6, v10.receiver, v10.super_class);
  v8 = NSStringFromSelector(sel_configuration);
  objc_msgSend_encodeObject_forKey_(v4, v9, v7, v8);
}

- (ANSTISPInferenceDescriptor)initWithCoder:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ANSTISPInferenceDescriptor;
  v5 = [(ANSTInferenceDescriptor *)&v21 initWithCoder:v4];
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
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA050];
    v22 = *MEMORY[0x277CCA068];
    v23[0] = @"ISP inference descriptor configuration was not encoded.";
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v23, &v22, 1);
    v17 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v16, v14, 4865, v15);
    objc_msgSend_failWithError_(v4, v18, v17);

    v12 = 0;
  }

  else
  {
LABEL_3:
    v12 = v5;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)newPostprocessorWithError:(id *)a3
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE660], @"A concrete implementation of +_version is required.", 0);
  objc_exception_throw(v3);
}

+ (id)e5DescriptorWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_copy(a3, a2, a3);
  objc_msgSend_setUseE5_(v6, v7, 1);
  v9 = objc_msgSend__descriptorWithConfiguration_error_(a1, v8, v6, a4);

  return v9;
}

+ (id)_descriptorWithConfiguration:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (objc_msgSend_resolution(v5, v6, v7) == 1)
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    v10 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA068];
    v25[0] = @"Resolution 1024x576 has been deprecated. Please stop using it.";
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v25, &v24, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"ANSTErrorDomain", 2, v11);
    goto LABEL_11;
  }

  v13 = objc_msgSend_version(v5, v8, v9);
  if (v13 == 196613)
  {
    v15 = ANSTISPInferenceDescriptorV3;
    goto LABEL_8;
  }

  if (v13 == 0x10000)
  {
    v15 = ANSTISPInferenceDescriptorV1;
LABEL_8:
    v16 = [v15 alloc];
    a4 = objc_msgSend_initWithConfiguration_error_(v16, v17, v5, a4);
    goto LABEL_12;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

  v18 = MEMORY[0x277CCA9B8];
  v22 = *MEMORY[0x277CCA068];
  v23 = @"Unrecognized version.";
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, &v23, &v22, 1);
  objc_msgSend_errorWithDomain_code_userInfo_(v18, v19, @"ANSTErrorDomain", 14, v11);
  *a4 = LABEL_11:;

  a4 = 0;
LABEL_12:

  v20 = *MEMORY[0x277D85DE8];

  return a4;
}

@end