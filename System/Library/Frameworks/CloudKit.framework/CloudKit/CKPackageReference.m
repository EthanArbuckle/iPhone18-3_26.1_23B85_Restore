@interface CKPackageReference
- (CKPackageReference)initWithCoder:(id)a3;
- (CKPackageReference)initWithRecordID:(id)a3 databaseScope:(int64_t)a4 fieldName:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKPackageReference

- (CKPackageReference)initWithRecordID:(id)a3 databaseScope:(int64_t)a4 fieldName:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CKPackageReference;
  v11 = [(CKPackageReference *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_recordID, a3);
    v12->_databaseScope = a4;
    objc_storeStrong(&v12->_fieldName, a5);
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  recordID = self->_recordID;
  v5 = CKDatabaseScopeString(self->_databaseScope);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"CKPackageReference<recordID: %@, databaseScope: %@, recordKey: %@>", recordID, v5, self->_fieldName);

  return v7;
}

- (CKPackageReference)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"recordID");
  v9 = objc_msgSend_decodeIntegerForKey_(v4, v8, @"databaseScope");
  v10 = objc_opt_class();
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"fieldName");

  v14 = objc_msgSend_initWithRecordID_databaseScope_fieldName_(self, v13, v7, v9, v12);
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  recordID = self->_recordID;
  v8 = a3;
  objc_msgSend_encodeObject_forKey_(v8, v5, recordID, @"recordID");
  objc_msgSend_encodeInteger_forKey_(v8, v6, self->_databaseScope, @"databaseScope");
  objc_msgSend_encodeObject_forKey_(v8, v7, self->_fieldName, @"fieldName");
}

@end