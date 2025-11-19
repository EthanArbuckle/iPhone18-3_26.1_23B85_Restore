@interface CKUserNotificationUtilities
+ (void)showUserNotification:(__CFUserNotification *)a3 withCompletionBlock:(id)a4;
@end

@implementation CKUserNotificationUtilities

+ (void)showUserNotification:(__CFUserNotification *)a3 withCompletionBlock:(id)a4
{
  v7 = a4;
  v10 = v7;
  if (a3)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, a1, @"CKUserNotificationUtilities.m", 52, @"Must have a notification");

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, a1, @"CKUserNotificationUtilities.m", 53, @"Must have a block here");

LABEL_3:
  v11 = sub_1886C81E0(a3, v8, v9);

  if (v11)
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, a1, @"CKUserNotificationUtilities.m", 54, @"Already waiting on this notification %p", a3);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1886C8234;
  aBlock[3] = &unk_1E70C2018;
  v29 = a3;
  v14 = v10;
  v28 = v14;
  v15 = _Block_copy(aBlock);
  if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v16, v17))
  {
    v15[2](v15);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1886C8568;
    block[3] = &unk_1E70C2018;
    v26 = a3;
    v25 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end