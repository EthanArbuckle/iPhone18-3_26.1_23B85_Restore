@interface CKEventOperationInfo
- (CKEventOperationInfo)initWithCoder:(id)coder;
- (CKEventOperationInfo)initWithOperation:(id)operation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKEventOperationInfo

- (CKEventOperationInfo)initWithOperation:(id)operation
{
  operationCopy = operation;
  v30.receiver = self;
  v30.super_class = CKEventOperationInfo;
  v7 = [(CKEventOperationInfo *)&v30 init];
  if (v7)
  {
    v8 = objc_msgSend_operationID(operationCopy, v5, v6);
    v11 = objc_msgSend_copy(v8, v9, v10);
    operationID = v7->_operationID;
    v7->_operationID = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v17 = objc_msgSend_copy(v14, v15, v16);
    operationType = v7->_operationType;
    v7->_operationType = v17;

    v21 = objc_msgSend_group(operationCopy, v19, v20);
    v24 = objc_msgSend_operationGroupID(v21, v22, v23);
    v27 = objc_msgSend_copy(v24, v25, v26);
    operationGroupID = v7->_operationGroupID;
    v7->_operationGroupID = v27;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_operationID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"operationID");

  v11 = objc_msgSend_operationType(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"operationType");

  v15 = objc_msgSend_operationGroupID(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"groupID");

  objc_autoreleasePoolPop(v4);
}

- (CKEventOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CKEventOperationInfo;
  v5 = [(CKEventOperationInfo *)&v20 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"operationID");
    operationID = v5->_operationID;
    v5->_operationID = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"operationType");
    operationType = v5->_operationType;
    v5->_operationType = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"groupID");
    operationGroupID = v5->_operationGroupID;
    v5->_operationGroupID = v17;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end