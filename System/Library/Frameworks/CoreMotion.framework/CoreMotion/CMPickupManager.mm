@interface CMPickupManager
- (CMPickupManager)init;
- (void)dealloc;
- (void)onPickupStateUpdated:(const Sample *)a3;
- (void)startPickupUpdates;
- (void)stopPickupUpdates;
@end

@implementation CMPickupManager

- (CMPickupManager)init
{
  if ((objc_msgSend_isPickupAvailable(CMPickupManager, a2, v2) & 1) == 0)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CMPickupManager.mm", 42, @"Pickup Detection is not supported on this platform. Use isPickupAvailable to avoid this error.");
  }

  v11.receiver = self;
  v11.super_class = CMPickupManager;
  v7 = [(CMPickupManager *)&v11 init];
  if (v7)
  {
    v7->fPrivateQueue = dispatch_queue_create("com.apple.CoreMotion.CMPickupDetectorPrivateQueue", 0);
  }

  return v7;
}

- (void)dealloc
{
  if (self->fDispatcher)
  {
    if (qword_1EAFE3AD8 != -1)
    {
      dispatch_once(&qword_1EAFE3AD8, &unk_1F0E293E0);
    }

    sub_19B426A14(qword_1EAFE3AD0, 0, self->fDispatcher);
    fDispatcher = self->fDispatcher;
    if (fDispatcher)
    {
      (*(fDispatcher->var0 + 1))(fDispatcher);
    }
  }

  self->fDispatcher = 0;
  dispatch_release(self->fPrivateQueue);
  v4.receiver = self;
  v4.super_class = CMPickupManager;
  [(CMPickupManager *)&v4 dealloc];
}

- (void)startPickupUpdates
{
  fPrivateQueue = self->fPrivateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7131AC;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fPrivateQueue, block);
}

- (void)stopPickupUpdates
{
  fPrivateQueue = self->fPrivateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7135FC;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fPrivateQueue, block);
}

- (void)onPickupStateUpdated:(const Sample *)a3
{
  timestamp_low = LOBYTE(a3->timestamp);
  v4 = timestamp_low == 1;
  v5 = timestamp_low == 2;
  fPrivateQueue = self->fPrivateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B713A04;
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