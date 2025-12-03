@interface CKReference
+ (int)ckdpReferenceTypeForCKReferenceAction:(unint64_t)action;
+ (unint64_t)ckReferenceActionForCKDPRecordReferenceType:(int)type;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (CKReference)init;
- (CKReference)initWithCoder:(id)coder;
- (CKReference)initWithRecord:(CKRecord *)record action:(CKReferenceAction)action;
- (CKReference)initWithRecordID:(CKRecordID *)recordID action:(CKReferenceAction)action;
- (NSString)debugDescription;
- (id)ckShortDescription;
- (id)initInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setRecordID_modelMutation:(id)mutation;
@end

@implementation CKReference

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

+ (unint64_t)ckReferenceActionForCKDPRecordReferenceType:(int)type
{
  if ((type - 1) >= 3)
  {
    v4 = [CKException alloc];
    v6 = objc_msgSend_initWithCode_format_(v4, v5, 12, @"Unexpected reference type");
    objc_exception_throw(v6);
  }

  return qword_1886FE530[type - 1];
}

+ (int)ckdpReferenceTypeForCKReferenceAction:(unint64_t)action
{
  if (action == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  if (action == 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (CKReference)init
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [CKException alloc];
  v6 = objc_msgSend_initWithName_format_(v4, v5, *MEMORY[0x1E695D940], @"You must call [%@ initWithRecordID:] or [%@ initWithRecord:] or [%@ initWithAsset:]", v3, v3, v3);
  objc_exception_throw(v6);
}

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = CKReference;
  return [(CKReference *)&v3 init];
}

- (CKReference)initWithRecordID:(CKRecordID *)recordID action:(CKReferenceAction)action
{
  v6 = recordID;
  v28 = 0;
  v7 = _CKCheckArgument("recordID", v6, 0, 1, 0, &v28);
  v8 = v28;
  if ((v7 & 1) == 0)
  {
    v16 = v8;
    v17 = [CKException alloc];
    v20 = objc_msgSend_code(v16, v18, v19);
    v23 = objc_msgSend_localizedDescription(v16, v21, v22);
    v25 = objc_msgSend_initWithCode_format_(v17, v24, v20, @"%@", v23);
    v26 = v25;

    objc_exception_throw(v25);
  }

  v27.receiver = self;
  v27.super_class = CKReference;
  v9 = [(CKReference *)&v27 init];
  v12 = v9;
  if (v9)
  {
    v9->_referenceAction = action;
    v13 = objc_msgSend_copy(v6, v10, v11);
    v14 = v12->_recordID;
    v12->_recordID = v13;
  }

  return v12;
}

- (CKReference)initWithRecord:(CKRecord *)record action:(CKReferenceAction)action
{
  v6 = record;
  v26 = 0;
  v7 = _CKCheckArgument("record", v6, 0, 0, 0, &v26);
  v8 = v26;
  if ((v7 & 1) == 0)
  {
    v15 = v8;
    v16 = [CKException alloc];
    v19 = objc_msgSend_code(v15, v17, v18);
    v22 = objc_msgSend_localizedDescription(v15, v20, v21);
    v24 = objc_msgSend_initWithCode_format_(v16, v23, v19, @"%@", v22);
    v25 = v24;

    objc_exception_throw(v24);
  }

  v11 = objc_msgSend_recordID(v6, v9, v10);
  v13 = objc_msgSend_initWithRecordID_action_(self, v12, v11, action);

  return v13;
}

- (void)setRecordID_modelMutation:(id)mutation
{
  v4 = objc_msgSend_copy(mutation, a2, mutation);
  recordID = self->_recordID;
  self->_recordID = v4;

  MEMORY[0x1EEE66BB8](v4, recordID);
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
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_referenceAction(self, v6, v7);
      if (v8 == objc_msgSend_referenceAction(v5, v9, v10))
      {
        v13 = objc_msgSend_recordID(self, v11, v12);
        v18 = objc_msgSend_recordID(v5, v14, v15);
        if (v13 == v18)
        {
          isEqual = 1;
        }

        else
        {
          v19 = objc_msgSend_recordID(self, v16, v17);
          v22 = objc_msgSend_recordID(v5, v20, v21);
          isEqual = objc_msgSend_isEqual_(v19, v23, v22);
        }
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual & 1;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_recordID(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKReference;
  v4 = [(CKReference *)&v11 description];
  v7 = objc_msgSend_recordID(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"[%@ recordID=%@]", v4, v7);

  return v9;
}

- (id)ckShortDescription
{
  v3 = objc_msgSend_recordID(self, a2, v2);
  v6 = objc_msgSend_ckShortDescription(v3, v4, v5);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_recordID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"recordID");

  v11 = objc_msgSend_referenceAction(self, v9, v10);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v12, v11, @"referenceAction");
  objc_autoreleasePoolPop(v4);
}

- (CKReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_decodeInt64ForKey_(coderCopy, v5, @"referenceAction");
  v7 = objc_autoreleasePoolPush();
  v8 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"recordID");
  objc_autoreleasePoolPop(v7);
  v12 = objc_msgSend_initWithRecordID_action_(self, v11, v10, v6);

  return v12;
}

@end