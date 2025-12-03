@interface CKRoughlyEquivalentProperties
- (BOOL)isEqual:(id)equal;
- (CKRoughlyEquivalentProperties)initWithCoder:(id)coder;
- (CKRoughlyEquivalentProperties)initWithDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKRoughlyEquivalentProperties

- (CKRoughlyEquivalentProperties)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = CKRoughlyEquivalentProperties;
  v6 = [(CKRoughlyEquivalentProperties *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9 = objc_msgSend_dictionary(self, v5, v6);
  v7 = NSStringFromSelector(sel_dictionary);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v9, v7);
}

- (CKRoughlyEquivalentProperties)initWithCoder:(id)coder
{
  v17[8] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CKRoughlyEquivalentProperties;
  v5 = [(CKRoughlyEquivalentProperties *)&v16 init];
  if (v5)
  {
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v17[4] = objc_opt_class();
    v17[5] = objc_opt_class();
    v17[6] = objc_opt_class();
    v17[7] = objc_opt_class();
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v17, 8);
    v9 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v8, v7);
    v10 = NSStringFromSelector(sel_dictionary);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v11, v9, v10);
    dictionary = v5->_dictionary;
    v5->_dictionary = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_dictionary(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqual = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
    {
      v7 = equalCopy;
      v10 = objc_msgSend_dictionary(self, v8, v9);
      v13 = objc_msgSend_dictionary(v7, v11, v12);

      isEqual = objc_msgSend_isEqual_(v10, v14, v13);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

@end