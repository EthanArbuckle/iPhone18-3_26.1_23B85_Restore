@interface CKMultiValueMergeableDeltaRegisterState
+ (id)newSalt;
- (BOOL)isEqual:(id)equal;
- (CKMultiValueMergeableDeltaRegisterState)init;
- (CKMultiValueMergeableDeltaRegisterState)initWithCoder:(id)coder;
- (CKMultiValueMergeableDeltaRegisterState)initWithIdentifier:(id)identifier vector:(id)vector salt:(id)salt;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKMultiValueMergeableDeltaRegisterState

+ (id)newSalt
{
  v6 = *MEMORY[0x1E69E9840];
  arc4random_buf(__buf, 0x20uLL);
  result = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v2, __buf, 32);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (CKMultiValueMergeableDeltaRegisterState)init
{
  v4 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2);
  v5 = objc_opt_new();
  v6 = objc_opt_class();
  v9 = objc_msgSend_newSalt(v6, v7, v8);
  v11 = objc_msgSend_initWithIdentifier_vector_salt_(self, v10, v4, v5, v9);

  return v11;
}

- (CKMultiValueMergeableDeltaRegisterState)initWithIdentifier:(id)identifier vector:(id)vector salt:(id)salt
{
  identifierCopy = identifier;
  vectorCopy = vector;
  saltCopy = salt;
  v25.receiver = self;
  v25.super_class = CKMultiValueMergeableDeltaRegisterState;
  v13 = [(CKMultiValueMergeableDeltaRegisterState *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(identifierCopy, v11, v12);
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v18 = objc_msgSend_mutableCopy(vectorCopy, v16, v17);
    vector = v13->_vector;
    v13->_vector = v18;

    v22 = objc_msgSend_copy(saltCopy, v20, v21);
    salt = v13->_salt;
    v13->_salt = v22;
  }

  return v13;
}

- (CKMultiValueMergeableDeltaRegisterState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = CKMultiValueMergeableDeltaRegisterState;
  v5 = [(CKMultiValueMergeableDeltaRegisterState *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_identifier);
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v6, v7);
    identifier = v5->_identifier;
    v5->_identifier = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_vector);
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v11, v12);
    vector = v5->_vector;
    v5->_vector = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_salt);
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v18, v16, v17);
    salt = v5->_salt;
    v5->_salt = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_identifier);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, identifier, v6);

  vector = self->_vector;
  v9 = NSStringFromSelector(sel_vector);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, vector, v9);

  salt = self->_salt;
  v13 = NSStringFromSelector(sel_salt);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, salt, v13);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_identifier(self, v5, v6);
  v10 = objc_msgSend_vector(self, v8, v9);
  v13 = objc_msgSend_salt(self, v11, v12);
  v15 = objc_msgSend_initWithIdentifier_vector_salt_(v4, v14, v7, v10, v13);

  return v15;
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
    v7 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(equalCopy, v8, v7))
    {
      v9 = equalCopy;
      v12 = objc_msgSend_identifier(self, v10, v11);
      v17 = objc_msgSend_identifier(v9, v13, v14);
      if (v12 != v17)
      {
        v3 = objc_msgSend_identifier(self, v15, v16);
        v4 = objc_msgSend_identifier(v9, v18, v19);
        if (!objc_msgSend_isEqual_(v3, v20, v4))
        {
          isEqual = 0;
          goto LABEL_19;
        }
      }

      v22 = objc_msgSend_vector(self, v15, v16);
      v25 = objc_msgSend_vector(v9, v23, v24);
      v28 = v25;
      if (v22 == v25)
      {
        v53 = v25;
      }

      else
      {
        v29 = objc_msgSend_vector(self, v26, v27);
        v52 = objc_msgSend_vector(v9, v30, v31);
        if (!objc_msgSend_isEqual_(v29, v32, v52))
        {
          isEqual = 0;
          goto LABEL_17;
        }

        v51 = v29;
        v53 = v28;
      }

      v33 = objc_msgSend_salt(self, v26, v27);
      v36 = objc_msgSend_salt(v9, v34, v35);
      v39 = v36;
      if (v33 == v36)
      {

        isEqual = 1;
      }

      else
      {
        objc_msgSend_salt(self, v37, v38);
        v40 = v50 = v3;
        objc_msgSend_salt(v9, v41, v42);
        v49 = v22;
        v43 = v4;
        v44 = v17;
        v46 = v45 = v12;
        isEqual = objc_msgSend_isEqual_(v40, v47, v46);

        v12 = v45;
        v17 = v44;
        v4 = v43;
        v22 = v49;

        v3 = v50;
      }

      v28 = v53;
      v29 = v51;
      if (v22 == v53)
      {
LABEL_18:

        if (v12 == v17)
        {
LABEL_20:

          goto LABEL_21;
        }

LABEL_19:

        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }

    isEqual = 0;
  }

LABEL_21:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_identifier(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_vector(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_salt(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);

  return v13 ^ v19;
}

@end