@interface CKModifySubscriptionsOperationInfo
- (CKModifySubscriptionsOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKModifySubscriptionsOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v14.receiver = self;
  v14.super_class = CKModifySubscriptionsOperationInfo;
  [(CKDatabaseOperationInfo *)&v14 encodeWithCoder:v4];
  v8 = objc_msgSend_subscriptionsToSave(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"subscriptions");

  v12 = objc_msgSend_subscriptionIDsToDelete(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(v4, v13, v12, @"subscriptionIDs");

  objc_autoreleasePoolPop(v5);
}

- (CKModifySubscriptionsOperationInfo)initWithCoder:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CKModifySubscriptionsOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v27, 2);
    v11 = objc_msgSend_setWithArray_(v7, v10, v9);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"subscriptions");
    subscriptionsToSave = v5->_subscriptionsToSave;
    v5->_subscriptionsToSave = v13;

    v15 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v26, 2);
    v19 = objc_msgSend_setWithArray_(v15, v18, v17);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v20, v19, @"subscriptionIDs");
    subscriptionIDsToDelete = v5->_subscriptionIDsToDelete;
    v5->_subscriptionIDsToDelete = v21;

    objc_autoreleasePoolPop(v6);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

@end