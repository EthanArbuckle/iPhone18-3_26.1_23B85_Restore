@interface ANSTDescriptor
+ (id)new;
- (ANSTDescriptor)init;
- (ANSTDescriptor)initWithCoder:(id)a3;
- (ANSTDescriptor)initWithName:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANSTDescriptor

- (ANSTDescriptor)init
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

- (ANSTDescriptor)initWithName:(id)a3 error:(id *)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19.receiver = self;
  v19.super_class = ANSTDescriptor;
  v9 = [(ANSTDescriptor *)&v19 init];
  if (!v9)
  {
    goto LABEL_4;
  }

  if (objc_msgSend_length(v6, v7, v8))
  {
    v12 = objc_msgSend_copy(v6, v10, v11);
    name = v9->_name;
    v9->_name = v12;

LABEL_4:
    a4 = v9;
    goto LABEL_5;
  }

  if (a4)
  {
    v16 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA068];
    v21[0] = @"Descriptor name should not be empty.";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v21, &v20, 1);
    *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v18, @"ANSTErrorDomain", 7, v17);

    a4 = 0;
  }

LABEL_5:

  v14 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    isEqualToString = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = objc_msgSend_name(self, v6, v7);
    v11 = objc_msgSend_name(v5, v9, v10);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v12, v11);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_name(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_name(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@ %p> %@", v5, self, v8);

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_name(self, v8, v9);
  v12 = objc_msgSend_initWithName_error_(v7, v11, v10, 0);

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_name(self, v5, v6);
  v7 = NSStringFromSelector(sel_name);
  objc_msgSend_encodeObject_forKey_(v4, v8, v9, v7);
}

- (ANSTDescriptor)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_name);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v5, v6);

  if (v8)
  {
    v24.receiver = self;
    v24.super_class = ANSTDescriptor;
    v12 = [(ANSTDescriptor *)&v24 init];
    if (v12)
    {
      v13 = objc_msgSend_copy(v8, v10, v11);
      name = v12->_name;
      v12->_name = v13;
    }

    self = v12;
    v15 = self;
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA050];
    v25 = *MEMORY[0x277CCA068];
    v26[0] = @"Descriptor name was not encoded.";
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v26, &v25, 1);
    v20 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v19, v17, 4865, v18);
    objc_msgSend_failWithError_(v4, v21, v20);

    v15 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

@end