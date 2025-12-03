@interface CKSyncEnginePendingRecordZoneChange
- (BOOL)isEqual:(id)equal;
- (CKSyncEnginePendingRecordZoneChange)initWithCoder:(id)coder;
- (CKSyncEnginePendingRecordZoneChange)initWithRecordID:(CKRecordID *)recordID type:(CKSyncEnginePendingRecordZoneChangeType)type;
- (id)CKDescriptionClassName;
- (id)oppositeTypeChange;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKSyncEnginePendingRecordZoneChange

- (unint64_t)hash
{
  v4 = objc_msgSend_recordID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_type(self, v8, v9);

  return v10 ^ v7;
}

- (CKSyncEnginePendingRecordZoneChange)initWithRecordID:(CKRecordID *)recordID type:(CKSyncEnginePendingRecordZoneChangeType)type
{
  v6 = recordID;
  v13.receiver = self;
  v13.super_class = CKSyncEnginePendingRecordZoneChange;
  v9 = [(CKSyncEnginePendingRecordZoneChange *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(v6, v7, v8);
    v11 = v9->_recordID;
    v9->_recordID = v10;

    v9->_type = type;
  }

  return v9;
}

- (id)CKDescriptionClassName
{
  if (objc_msgSend_type(self, a2, v2))
  {
    return @"PendingRecordDelete";
  }

  else
  {
    return @"PendingRecordSave";
  }
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v8 = objc_msgSend_recordID(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v7, @"recordID", v8, 0);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_recordID(self, v6, v7);
      v11 = objc_msgSend_recordID(v5, v9, v10);
      if (objc_msgSend_isEqual_(v8, v12, v11))
      {
        v15 = objc_msgSend_type(self, v13, v14);
        v18 = v15 == objc_msgSend_type(v5, v16, v17);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (id)oppositeTypeChange
{
  v3 = [CKSyncEnginePendingRecordZoneChange alloc];
  v6 = objc_msgSend_recordID(self, v4, v5);
  v9 = objc_msgSend_type(self, v7, v8) == 0;
  v11 = objc_msgSend_initWithRecordID_type_(v3, v10, v6, v9);

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_recordID(self, v4, v5);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"recordID");

  v10 = objc_msgSend_type(self, v8, v9);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v11, v10, @"type");
}

- (CKSyncEnginePendingRecordZoneChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"recordID");
  recordID = self->_recordID;
  self->_recordID = v7;

  v10 = objc_msgSend_decodeIntegerForKey_(coderCopy, v9, @"type");
  self->_type = v10;
  v12 = self->_recordID;

  return objc_msgSend_initWithRecordID_type_(self, v11, v12, v10);
}

@end