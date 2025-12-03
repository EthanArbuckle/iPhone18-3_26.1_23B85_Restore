@interface CKPackageReference
- (CKPackageReference)initWithCoder:(id)coder;
- (CKPackageReference)initWithRecordID:(id)d databaseScope:(int64_t)scope fieldName:(id)name;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKPackageReference

- (CKPackageReference)initWithRecordID:(id)d databaseScope:(int64_t)scope fieldName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = CKPackageReference;
  v11 = [(CKPackageReference *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_recordID, d);
    v12->_databaseScope = scope;
    objc_storeStrong(&v12->_fieldName, name);
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

- (CKPackageReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"recordID");
  v9 = objc_msgSend_decodeIntegerForKey_(coderCopy, v8, @"databaseScope");
  v10 = objc_opt_class();
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"fieldName");

  v14 = objc_msgSend_initWithRecordID_databaseScope_fieldName_(self, v13, v7, v9, v12);
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  recordID = self->_recordID;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, recordID, @"recordID");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v6, self->_databaseScope, @"databaseScope");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_fieldName, @"fieldName");
}

@end