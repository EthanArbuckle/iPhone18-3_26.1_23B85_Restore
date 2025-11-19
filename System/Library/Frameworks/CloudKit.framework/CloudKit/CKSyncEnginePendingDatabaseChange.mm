@interface CKSyncEnginePendingDatabaseChange
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (CKSyncEnginePendingDatabaseChange)initWithCoder:(id)a3;
- (CKSyncEnginePendingDatabaseChange)initWithZoneID:(id)a3 type:(int64_t)a4;
- (id)oppositeTypeChange;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKSyncEnginePendingDatabaseChange

+ (void)initialize
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v7, 2);
  sub_1886CEE50(a1, v3, v5, 0, 1);

  v6 = *MEMORY[0x1E69E9840];
}

- (CKSyncEnginePendingDatabaseChange)initWithZoneID:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CKSyncEnginePendingDatabaseChange;
  v9 = [(CKSyncEnginePendingDatabaseChange *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(v6, v7, v8);
    zoneID = v9->_zoneID;
    v9->_zoneID = v10;

    v9->_type = a4;
  }

  return v9;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v7 = a3;
  if (objc_msgSend_type(self, v4, v5))
  {
    objc_msgSend_addProperty_value_shouldRedact_(v7, v6, @"type", @"Delete", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(v7, v6, @"type", @"Save", 0);
  }
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
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_type(self, v6, v7);
      if (v8 == objc_msgSend_type(v5, v9, v10))
      {
        v13 = objc_msgSend_zoneID(self, v11, v12);
        v16 = objc_msgSend_zoneID(v5, v14, v15);
        isEqual = objc_msgSend_isEqual_(v13, v17, v16);
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

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_type(self, a2, v2);
  v7 = objc_msgSend_zoneID(self, v5, v6);
  v10 = objc_msgSend_hash(v7, v8, v9);

  return v10 ^ v4;
}

- (id)oppositeTypeChange
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKSyncEngineState.m", 1813, @"Subclass must implement %s", "[CKSyncEnginePendingDatabaseChange oppositeTypeChange]");

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  v6 = NSStringFromSelector(sel_type);
  objc_msgSend_encodeInteger_forKey_(v5, v7, type, v6);

  zoneID = self->_zoneID;
  v10 = NSStringFromSelector(sel_zoneID);
  objc_msgSend_encodeObject_forKey_(v5, v9, zoneID, v10);
}

- (CKSyncEnginePendingDatabaseChange)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CKSyncEnginePendingDatabaseChange;
  v5 = [(CKSyncEnginePendingDatabaseChange *)&v14 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_type);
    v5->_type = objc_msgSend_decodeIntegerForKey_(v4, v7, v6);

    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_zoneID);
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v10, v8, v9);
    zoneID = v5->_zoneID;
    v5->_zoneID = v11;
  }

  return v5;
}

@end