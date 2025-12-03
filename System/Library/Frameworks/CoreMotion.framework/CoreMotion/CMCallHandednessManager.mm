@interface CMCallHandednessManager
+ (BOOL)isCallHandednessAvailable;
- (CMCallHandednessManager)init;
- (void)dealloc;
- (void)onCallHandednessStateUpdated:(const Sample *)updated;
- (void)startCallHandednessUpdates;
- (void)stopCallHandednessUpdates;
@end

@implementation CMCallHandednessManager

- (CMCallHandednessManager)init
{
  if ((objc_msgSend_isCallHandednessAvailable(CMCallHandednessManager, a2, v2) & 1) == 0)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CMCallHandednessManager.mm", 45, @"CMCallHandednessManager is not supported on this platform. Use isCallHandednessAvailable to avoid this error");
  }

  v11.receiver = self;
  v11.super_class = CMCallHandednessManager;
  v7 = [(CMCallHandednessManager *)&v11 init];
  if (v7)
  {
    v7->fPrivateQueue = dispatch_queue_create("com.apple.CoreMotion.CMCallHandednessPrivateQueue", 0);
  }

  return v7;
}

- (void)startCallHandednessUpdates
{
  Current = CFAbsoluteTimeGetCurrent();
  fPrivateQueue = self->fPrivateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B660C90;
  v5[3] = &unk_1E7533490;
  v5[4] = self;
  *&v5[5] = Current;
  dispatch_sync(fPrivateQueue, v5);
}

- (void)stopCallHandednessUpdates
{
  Current = CFAbsoluteTimeGetCurrent();
  if (objc_msgSend_isCallHandednessAvailable(CMCallHandednessManager, v4, v5))
  {
    fPrivateQueue = self->fPrivateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_19B661128;
    v7[3] = &unk_1E7533490;
    v7[4] = self;
    *&v7[5] = Current;
    dispatch_sync(fPrivateQueue, v7);
  }
}

- (void)dealloc
{
  if (objc_msgSend_isCallHandednessAvailable(CMCallHandednessManager, a2, v2) && self->fDispatcher)
  {
    if (qword_1EAFE3A30 != -1)
    {
      dispatch_once(&qword_1EAFE3A30, &unk_1F0E29D60);
    }

    sub_19B426A14(qword_1EAFE3A40, 0, self->fDispatcher);
  }

  fDispatcher = self->fDispatcher;
  if (fDispatcher)
  {
    (*(fDispatcher->var0 + 1))(fDispatcher);
  }

  self->fDispatcher = 0;
  dispatch_release(self->fPrivateQueue);
  v5.receiver = self;
  v5.super_class = CMCallHandednessManager;
  [(CMCallHandednessManager *)&v5 dealloc];
}

+ (BOOL)isCallHandednessAvailable
{
  sub_19B421798();

  return sub_19B43B6EC();
}

- (void)onCallHandednessStateUpdated:(const Sample *)updated
{
  timestamp_low = LOBYTE(updated->timestamp);
  v4 = timestamp_low == 1;
  v5 = timestamp_low == 2;
  fPrivateQueue = self->fPrivateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B661630;
  v7[3] = &unk_1E7533490;
  if (v5)
  {
    v4 = 2;
  }

  v7[4] = self;
  v7[5] = v4;
  dispatch_async(fPrivateQueue, v7);
}

@end