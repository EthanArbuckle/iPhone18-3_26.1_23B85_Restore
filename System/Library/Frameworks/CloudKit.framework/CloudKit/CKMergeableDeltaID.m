@interface CKMergeableDeltaID
- (BOOL)isEqual:(id)a3;
- (CKMergeableDeltaID)init;
- (CKMergeableDeltaID)initWithCoder:(id)a3;
- (CKMergeableDeltaID)initWithDeltaIdentifier:(id)a3 valueID:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKMergeableDeltaID

- (CKMergeableDeltaID)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  objc_msgSend_raise_format_(v3, v6, v4, @"%@ is unavailable", v5);

  return 0;
}

- (CKMergeableDeltaID)initWithDeltaIdentifier:(id)a3 valueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34 = 0;
  v8 = _CKCheckArgument("deltaIdentifier", v6, 0, 0, 0, &v34);
  v9 = v34;
  if ((v8 & 1) == 0 || (v9, v33 = 0, v10 = _CKCheckArgument("valueID", v7, 0, 0, 0, &v33), v9 = v33, (v10 & 1) == 0))
  {
    v21 = v9;
    v22 = [CKException alloc];
    v25 = objc_msgSend_code(v21, v23, v24);
    v28 = objc_msgSend_localizedDescription(v21, v26, v27);
    v30 = objc_msgSend_initWithCode_format_(v22, v29, v25, @"%@", v28);
    v31 = v30;

    objc_exception_throw(v30);
  }

  v32.receiver = self;
  v32.super_class = CKMergeableDeltaID;
  v13 = [(CKMergeableDeltaID *)&v32 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v6, v11, v12);
    deltaIdentifier = v13->_deltaIdentifier;
    v13->_deltaIdentifier = v14;

    v18 = objc_msgSend_copy(v7, v16, v17);
    valueID = v13->_valueID;
    v13->_valueID = v18;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_deltaIdentifier(self, v5, v6), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_deltaIdentifier(v4, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend_isEqual_(v7, v11, v10), v10, v7, v12))
    {
      v15 = objc_msgSend_valueID(self, v13, v14);
      v18 = objc_msgSend_valueID(v4, v16, v17);
      isEqual = objc_msgSend_isEqual_(v15, v19, v18);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_deltaIdentifier(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_valueID(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (CKMergeableDeltaID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_deltaIdentifier);
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v6, v7);

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_valueID);
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v10, v11);

  objc_autoreleasePoolPop(v5);
  v15 = objc_msgSend_initWithDeltaIdentifier_valueID_(self, v14, v9, v13);

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_deltaIdentifier(self, v5, v6);
  v8 = NSStringFromSelector(sel_deltaIdentifier);
  objc_msgSend_encodeObject_forKey_(v15, v9, v7, v8);

  v12 = objc_msgSend_valueID(self, v10, v11);
  v13 = NSStringFromSelector(sel_valueID);
  objc_msgSend_encodeObject_forKey_(v15, v14, v12, v13);

  objc_autoreleasePoolPop(v4);
}

@end