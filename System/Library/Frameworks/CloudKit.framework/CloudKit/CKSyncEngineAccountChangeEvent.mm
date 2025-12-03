@interface CKSyncEngineAccountChangeEvent
- (CKSyncEngineAccountChangeEvent)initWithPreviousUser:(id)user currentUser:(id)currentUser;
- (void)CKDescribePropertiesUsing:(id)using;
@end

@implementation CKSyncEngineAccountChangeEvent

- (CKSyncEngineAccountChangeEvent)initWithPreviousUser:(id)user currentUser:(id)currentUser
{
  userCopy = user;
  currentUserCopy = currentUser;
  v27.receiver = self;
  v27.super_class = CKSyncEngineAccountChangeEvent;
  initInternal = [(CKSyncEngineEvent *)&v27 initInternal];
  v10 = initInternal;
  if (!initInternal)
  {
    goto LABEL_9;
  }

  objc_storeStrong(initInternal + 2, user);
  objc_storeStrong(&v10->_currentUser, currentUser);
  if (currentUserCopy)
  {
    if (!userCopy)
    {
      v10->_changeType = 0;
      goto LABEL_9;
    }

    v13 = 2;
LABEL_7:
    v10->_changeType = v13;
LABEL_9:

    return v10;
  }

  if (userCopy)
  {
    v13 = 1;
    goto LABEL_7;
  }

  v15 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v11, v12);
  v16 = [CKSignificantIssue alloc];
  v17 = [CKSourceCodeLocation alloc];
  v19 = objc_msgSend_initWithFilePath_lineNumber_(v17, v18, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/Services/SyncEngine/CKSyncEngineEvent.m", 233);
  v21 = objc_msgSend_initWithSourceCodeLocation_format_(v16, v20, v19, @"BUG IN CLOUDKIT: Tried to create an account change event with no current user and no previous user");
  objc_msgSend_handleSignificantIssue_actions_(v15, v22, v21, 0);

  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"BUG IN CLOUDKIT: Tried to create an account change event with no current user and no previous user");
  objc_msgSend_UTF8String(v24, v25, v26);
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  v17.receiver = self;
  v17.super_class = CKSyncEngineAccountChangeEvent;
  usingCopy = using;
  [(CKSyncEngineEvent *)&v17 CKDescribePropertiesUsing:usingCopy];
  v7 = objc_msgSend_changeType(self, v5, v6, v17.receiver, v17.super_class);
  if (v7 > 2)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"changeType", @"Unknown", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"changeType", off_1E70C0308[v7], 0);
  }

  v11 = objc_msgSend_previousUser(self, v9, v10);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v12, @"previousUser", v11, 0);

  v15 = objc_msgSend_currentUser(self, v13, v14);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v16, @"currentUser", v15, 0);
}

@end