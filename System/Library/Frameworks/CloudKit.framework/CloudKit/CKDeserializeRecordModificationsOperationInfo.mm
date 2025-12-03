@interface CKDeserializeRecordModificationsOperationInfo
- (CKDeserializeRecordModificationsOperationInfo)init;
- (CKDeserializeRecordModificationsOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKDeserializeRecordModificationsOperationInfo

- (CKDeserializeRecordModificationsOperationInfo)init
{
  v6.receiver = self;
  v6.super_class = CKDeserializeRecordModificationsOperationInfo;
  v2 = [(CKOperationInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    serializedModifications = v2->_serializedModifications;
    v2->_serializedModifications = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = CKDeserializeRecordModificationsOperationInfo;
  [(CKDatabaseOperationInfo *)&v14 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_serializedModifications(self, v6, v7);

  if (v8)
  {
    v11 = objc_msgSend_serializedModifications(self, v9, v10);
    v12 = NSStringFromSelector(sel_serializedModifications);
    objc_msgSend_encodeObject_forKey_(coderCopy, v13, v11, v12);
  }

  objc_autoreleasePoolPop(v5);
}

- (CKDeserializeRecordModificationsOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CKDeserializeRecordModificationsOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_serializedModifications);
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v7, v8);
    serializedModifications = v5->_serializedModifications;
    v5->_serializedModifications = v10;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end