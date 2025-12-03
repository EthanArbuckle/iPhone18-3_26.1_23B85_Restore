@interface CKEventOperationGroupInfo
- (CKEventOperationGroupInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKEventOperationGroupInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_operationGroupID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"operationGroupID");

  v11 = objc_msgSend_operationGroupName(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"operationGroupName");

  objc_autoreleasePoolPop(v4);
}

- (CKEventOperationGroupInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CKEventOperationGroupInfo;
  v5 = [(CKEventOperationGroupInfo *)&v16 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"operationGroupID");
    operationGroupID = v5->_operationGroupID;
    v5->_operationGroupID = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"operationGroupName");
    operationGroupName = v5->_operationGroupName;
    v5->_operationGroupName = v13;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end