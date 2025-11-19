@interface APDeviceLockedTask
- (APDeviceLockedTask)initWithHandler:(id)a3;
- (void)_registerForLockStateNotification;
@end

@implementation APDeviceLockedTask

- (APDeviceLockedTask)initWithHandler:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = APDeviceLockedTask;
  v5 = [(APDeviceLockedTask *)&v12 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    taskHandler = v5->_taskHandler;
    v5->_taskHandler = v6;

    objc_msgSend__registerForLockStateNotification(v5, v8, v9, v10);
  }

  return v5;
}

- (void)_registerForLockStateNotification
{
  v18 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1BAF19758;
  aBlock[3] = &unk_1E7F1D148;
  aBlock[4] = self;
  objc_copyWeak(&v14, &location);
  v3 = _Block_copy(aBlock);
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v5 = dispatch_queue_create("com.apple.ap.unlocknotification", v4);

  if (notify_register_dispatch(*MEMORY[0x1E69D4568], &dword_1EDBA1F18, v5, v3))
  {
    v6 = APLogForCategory(0x12uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      *buf = 138477827;
      v17 = v7;
      v8 = v7;
      _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_ERROR, "[%{private}@]: Failed to register for springboard lock state events", buf, 0xCu);
    }

    dword_1EDBA1F18 = -1;
  }

  else
  {
    v9 = APLogForCategory(0x12uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138477827;
      v17 = v10;
      v11 = v10;
      _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Registered for springboard lock state events.", buf, 0xCu);
    }
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  v12 = *MEMORY[0x1E69E9840];
}

@end