@interface CKFetchShareParticipantKeyOperationInfo
- (CKFetchShareParticipantKeyOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKFetchShareParticipantKeyOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v18.receiver = self;
  v18.super_class = CKFetchShareParticipantKeyOperationInfo;
  [(CKDatabaseOperationInfo *)&v18 encodeWithCoder:v4];
  v8 = objc_msgSend_shareIDs(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"ShareIDs");

  v12 = objc_msgSend_baseTokensByShareID(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(v4, v13, v12, @"BaseTokensByShareID");

  v16 = objc_msgSend_childRecordIDsByShareID(self, v14, v15);
  objc_msgSend_encodeObject_forKey_(v4, v17, v16, @"ChildRecordIDsByShareID");

  objc_autoreleasePoolPop(v5);
}

- (CKFetchShareParticipantKeyOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = CKFetchShareParticipantKeyOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v33 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"ShareIDs");
    shareIDs = v5->_shareIDs;
    v5->_shareIDs = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v20 = objc_msgSend_setWithObjects_(v15, v19, v16, v17, v18, 0);
    v22 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v21, v20, @"BaseTokensByShareID");
    baseTokensByShareID = v5->_baseTokensByShareID;
    v5->_baseTokensByShareID = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v28 = objc_msgSend_setWithObjects_(v24, v27, v25, v26, 0);
    v30 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v29, v28, @"ChildRecordIDsByShareID");
    childRecordIDsByShareID = v5->_childRecordIDsByShareID;
    v5->_childRecordIDsByShareID = v30;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end