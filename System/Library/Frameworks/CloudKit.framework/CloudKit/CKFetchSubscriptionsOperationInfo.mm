@interface CKFetchSubscriptionsOperationInfo
- (CKFetchSubscriptionsOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKFetchSubscriptionsOperationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = CKFetchSubscriptionsOperationInfo;
  [(CKDatabaseOperationInfo *)&v14 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_subscriptionIDs(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"subscriptionIDs");

  AllSubscriptionsOperation = objc_msgSend_isFetchAllSubscriptionsOperation(self, v10, v11);
  objc_msgSend_encodeBool_forKey_(coderCopy, v13, AllSubscriptionsOperation, @"isFetchAllSubscriptionsOperation");
  objc_autoreleasePoolPop(v5);
}

- (CKFetchSubscriptionsOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CKFetchSubscriptionsOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v11, @"subscriptionIDs");
    subscriptionIDs = v5->_subscriptionIDs;
    v5->_subscriptionIDs = v13;

    v5->_isFetchAllSubscriptionsOperation = objc_msgSend_decodeBoolForKey_(coderCopy, v15, @"isFetchAllSubscriptionsOperation");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end