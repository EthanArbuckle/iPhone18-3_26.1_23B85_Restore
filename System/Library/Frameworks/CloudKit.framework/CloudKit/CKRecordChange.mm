@interface CKRecordChange
- (BOOL)isEqual:(id)equal;
- (CKRecordChange)initWithChangeType:(int64_t)type recordID:(id)d record:(id)record;
- (CKRecordChange)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKRecordChange

- (CKRecordChange)initWithChangeType:(int64_t)type recordID:(id)d record:(id)record
{
  dCopy = d;
  recordCopy = record;
  v10 = recordCopy;
  if ((type - 1) > 1 || recordCopy)
  {
    v22.receiver = self;
    v22.super_class = CKRecordChange;
    v12 = [(CKRecordChange *)&v22 init];
    v15 = v12;
    if (v12)
    {
      v12->_changeType = type;
      v16 = objc_msgSend_copy(dCopy, v13, v14);
      recordID = v15->_recordID;
      v15->_recordID = v16;

      v19 = objc_msgSend_copyWithZone_userFields_(v10, v18, 0, 0);
      record = v15->_record;
      v15->_record = v19;
    }

    self = v15;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_recordID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_changeType(self, v8, v9);

  return v10 ^ v7;
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
      v8 = objc_msgSend_changeType(self, v6, v7);
      if (v8 == objc_msgSend_changeType(v5, v9, v10) && (objc_msgSend_recordID(self, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_recordID(v5, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend_isEqual_(v13, v17, v16), v16, v13, v18))
      {
        v21 = objc_msgSend_record(self, v19, v20);
        v26 = objc_msgSend_record(v5, v22, v23);
        if (v21 == v26)
        {
          isEqual = 1;
        }

        else
        {
          v27 = objc_msgSend_record(self, v24, v25);
          v30 = objc_msgSend_record(v5, v28, v29);
          isEqual = objc_msgSend_isEqual_(v27, v31, v30);
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

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v8 = objc_msgSend_changeType(self, v5, v6) - 1;
  if (v8 > 2)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v7, @"changeType", @"Unknown", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v7, @"changeType", off_1E70BFCB8[v8], 0);
  }

  v11 = objc_msgSend_recordID(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v12, @"recordID", v11, 0);

  v19 = objc_msgSend_record(self, v13, v14);
  v17 = objc_msgSend_etag(v19, v15, v16);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v18, @"recordETag", v17, 0);
}

- (CKRecordChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"CK.changeType");
  v7 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"CK.recordID");
  v10 = objc_opt_class();
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"CK.record");

  v14 = objc_msgSend_initWithChangeType_recordID_record_(self, v13, v6, v9, v12);
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_changeType(self, v5, v6);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v8, v7, @"CK.changeType");
  v11 = objc_msgSend_recordID(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"CK.recordID");

  v16 = objc_msgSend_record(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, v16, @"CK.record");
}

@end