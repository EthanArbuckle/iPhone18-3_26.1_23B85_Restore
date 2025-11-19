@interface CKPCSKeysToRemove
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (CKPCSKeysToRemove)initWithCoder:(id)a3;
- (CKPCSKeysToRemove)initWithEtag:(id)a3 keys:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKPCSKeysToRemove

- (id)initInternal
{
  v8.receiver = self;
  v8.super_class = CKPCSKeysToRemove;
  v2 = [(CKPCSKeysToRemove *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    etag = v2->_etag;
    v2->_etag = v3;

    v5 = objc_opt_new();
    keys = v2->_keys;
    v2->_keys = v5;
  }

  return v2;
}

- (CKPCSKeysToRemove)initWithEtag:(id)a3 keys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = CKPCSKeysToRemove;
  v10 = [(CKPCSKeysToRemove *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    etag = v10->_etag;
    v10->_etag = v11;

    v15 = objc_msgSend_CKDeepCopy(v7, v13, v14);
    keys = v10->_keys;
    v10->_keys = v15;
  }

  return v10;
}

- (BOOL)isEmpty
{
  v3 = objc_msgSend_keys(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5) == 0;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v38[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    v9 = objc_msgSend_etag(self, v7, v8);
    v12 = objc_msgSend_etag(v4, v10, v11);
    LODWORD(v14) = objc_msgSend_isEqualToString_(v9, v13, v12);

    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEB0]);
      v17 = objc_msgSend_initWithKey_ascending_comparator_(v15, v16, @"pcsKeyID", 1, &unk_1EFA2ECA8);
      v18 = objc_alloc(MEMORY[0x1E696AEB0]);
      v20 = objc_msgSend_initWithKey_ascending_(v18, v19, @"keyType", 1);
      v23 = objc_msgSend_keys(self, v21, v22);
      v38[0] = v17;
      v38[1] = v20;
      v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, v38, 2);
      v27 = objc_msgSend_sortedArrayUsingDescriptors_(v23, v26, v25);

      v14 = objc_msgSend_keys(v4, v28, v29);
      v37[0] = v17;
      v37[1] = v20;
      v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v30, v37, 2);
      v33 = objc_msgSend_sortedArrayUsingDescriptors_(v14, v32, v31);

      LOBYTE(v14) = objc_msgSend_isEqual_(v27, v34, v33);
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v14;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_etag(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_keys(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (id)description
{
  v19.receiver = self;
  v19.super_class = CKPCSKeysToRemove;
  v3 = [(CKPCSKeysToRemove *)&v19 description];
  v6 = objc_msgSend_etag(self, v4, v5);
  v9 = objc_msgSend_description(v6, v7, v8);
  v12 = objc_msgSend_keys(self, v10, v11);
  v15 = objc_msgSend_description(v12, v13, v14);
  v17 = objc_msgSend_stringByAppendingFormat_(v3, v16, @": etag:%@ keys:%@", v9, v15);

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_etag(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  objc_msgSend_setEtag_(v4, v11, v10);

  v14 = objc_msgSend_keys(self, v12, v13);
  v17 = objc_msgSend_CKDeepCopy(v14, v15, v16);
  objc_msgSend_setKeys_(v4, v18, v17);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_etag(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v4, v8, v7, @"Etag");

  v12 = objc_msgSend_keys(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v11, v12, @"Keys");
}

- (CKPCSKeysToRemove)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CKPCSKeysToRemove;
  v5 = [(CKPCSKeysToRemove *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"Etag");
    etag = v5->_etag;
    v5->_etag = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v15 = objc_msgSend_setWithObjects_(v10, v14, v11, v12, v13, 0);
    v17 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v16, v15, @"Keys");
    keys = v5->_keys;
    v5->_keys = v17;
  }

  return v5;
}

@end