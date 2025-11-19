@interface ANSTViSegHQInferenceConfiguration
+ (ANSTViSegHQInferenceConfiguration)new;
+ (id)availableInferenceResolutionForVersion:(unint64_t)a3;
- (ANSTViSegHQInferenceConfiguration)init;
- (ANSTViSegHQInferenceConfiguration)initWithCoder:(id)a3;
- (ANSTViSegHQInferenceConfiguration)initWithVersion:(unint64_t)a3 resolution:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANSTViSegHQInferenceConfiguration

+ (id)availableInferenceResolutionForVersion:(unint64_t)a3
{
  if (a3 == 131073)
  {
    return &unk_28432B8B0;
  }

  v5 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_22E6596F8(a3, v5);
  }

  return MEMORY[0x277CBEBF8];
}

- (ANSTViSegHQInferenceConfiguration)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (ANSTViSegHQInferenceConfiguration)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTViSegHQInferenceConfiguration)initWithVersion:(unint64_t)a3 resolution:(int64_t)a4
{
  v7 = objc_msgSend_availableInferenceResolutionForVersion_(ANSTViSegHQInferenceConfiguration, a2, a3);
  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v8, a4);
  v11 = objc_msgSend_containsObject_(v7, v10, v9);

  if (v11)
  {
    v16.receiver = self;
    v16.super_class = ANSTViSegHQInferenceConfiguration;
    v12 = [(ANSTViSegHQInferenceConfiguration *)&v16 init];
    if (v12)
    {
      v12->_version = a3;
      v12->_resolution = a4;
    }

    self = v12;
    v13 = self;
  }

  else
  {
    v14 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22E659784(v14);
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v17 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v9 = objc_msgSend_version(self, v7, v8);
    if (v9 == objc_msgSend_version(v6, v10, v11))
    {
      v14 = objc_msgSend_resolution(self, v12, v13);
      v17 = v14 == objc_msgSend_resolution(v6, v15, v16);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v4 = MEMORY[0x277CCABB0];
  v5 = objc_msgSend_version(self, a2, v2);
  v7 = objc_msgSend_numberWithUnsignedInteger_(v4, v6, v5);
  v10 = objc_msgSend_hash(v7, v8, v9);

  v11 = MEMORY[0x277CCABB0];
  v14 = objc_msgSend_resolution(self, v12, v13);
  v16 = objc_msgSend_numberWithInteger_(v11, v15, v14);
  v19 = objc_msgSend_hash(v16, v17, v18);

  return v19 ^ v10;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_appendFormat_(v3, v6, @"<%@ %p> {\n", v5, self);

  v9 = objc_msgSend_version(self, v7, v8);
  v11 = ANSTViSegHQInferenceVersionToNSString(v9, v10);
  objc_msgSend_appendFormat_(v3, v12, @"  version %@\n", v11);

  v15 = objc_msgSend_resolution(self, v13, v14);
  v17 = ANSTViSegHQInferenceResolutionToNSString(v15, v16);
  objc_msgSend_appendFormat_(v3, v18, @"  resolution %@\n", v17);

  objc_msgSend_appendString_(v3, v19, @"}");
  v22 = objc_msgSend_copy(v3, v20, v21);

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ANSTViSegHQInferenceConfiguration alloc];
  version = self->_version;
  resolution = self->_resolution;

  return MEMORY[0x2821F9670](v4, sel_initWithVersion_resolution_, version);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v8 = objc_msgSend_version(self, v6, v7);
  v10 = objc_msgSend_numberWithUnsignedInteger_(v4, v9, v8);
  v11 = NSStringFromSelector(sel_version);
  objc_msgSend_encodeObject_forKey_(v5, v12, v10, v11);

  v13 = MEMORY[0x277CCABB0];
  v16 = objc_msgSend_resolution(self, v14, v15);
  v20 = objc_msgSend_numberWithInteger_(v13, v17, v16);
  v18 = NSStringFromSelector(sel_resolution);
  objc_msgSend_encodeObject_forKey_(v5, v19, v20, v18);
}

- (ANSTViSegHQInferenceConfiguration)initWithCoder:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_version);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v5, v6);

  if (!v8)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA050];
    v33 = *MEMORY[0x277CCA068];
    v34[0] = @"ViSegHQ inference configuration version was not encoded.";
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v34, &v33, 1);
    v21 = objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, v19, 4865, v14);
    objc_msgSend_failWithError_(v4, v22, v21);

LABEL_6:
    v17 = 0;
    goto LABEL_7;
  }

  self->_version = objc_msgSend_integerValue(v8, v9, v10);
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_resolution);
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v13, v11, v12);

  if (!v14)
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA050];
    v31 = *MEMORY[0x277CCA068];
    v32 = @"-resolution was not encoded.";
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, &v32, &v31, 1);
    v27 = objc_msgSend_errorWithDomain_code_userInfo_(v23, v26, v24, 4865, v25);
    objc_msgSend_failWithError_(v4, v28, v27);

    goto LABEL_6;
  }

  self->_resolution = objc_msgSend_integerValue(v14, v15, v16);
  v17 = self;
LABEL_7:

  v29 = *MEMORY[0x277D85DE8];
  return v17;
}

@end