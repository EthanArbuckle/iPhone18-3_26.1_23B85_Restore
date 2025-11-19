@interface CMActivityManagerInternal
- (CMActivityManagerInternal)init;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)simulateMotionStateYouthWithState:(int64_t)a3;
- (void)startActivityUpdatesWithHandlerPrivate:(id)a3;
- (void)stopActivityUpdatesPrivate;
@end

@implementation CMActivityManagerInternal

- (CMActivityManagerInternal)init
{
  v4.receiver = self;
  v4.super_class = CMActivityManagerInternal;
  v2 = [(CMActivityManagerInternal *)&v4 init];
  if (v2)
  {
    v2->fPrivateQueue = dispatch_queue_create("com.apple.CoreMotion.CMActivityManagerPrivateQueue", 0);
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend_disconnect(self, a2, v2);
  fActivityHandler = self->fActivityHandler;
  if (fActivityHandler)
  {

    self->fActivityHandler = 0;
  }

  dispatch_release(self->fPrivateQueue);
  self->fPrivateQueue = 0;
  fSidebandOverrideSemaphore = self->fSidebandOverrideSemaphore;
  if (fSidebandOverrideSemaphore)
  {
    dispatch_release(fSidebandOverrideSemaphore);
  }

  fSidebandOverrideQueue = self->fSidebandOverrideQueue;
  if (fSidebandOverrideQueue)
  {
    dispatch_release(fSidebandOverrideQueue);
  }

  v7.receiver = self;
  v7.super_class = CMActivityManagerInternal;
  [(CMActivityManagerInternal *)&v7 dealloc];
}

- (void)connect
{
  if (!self->fLocationdConnection)
  {
    operator new();
  }
}

- (void)disconnect
{
  fLocationdConnection = self->fLocationdConnection;
  if (fLocationdConnection)
  {
    v4 = MEMORY[0x19EAE71C0](fLocationdConnection, a2);
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
    self->fLocationdConnection = 0;
  }
}

- (void)startActivityUpdatesWithHandlerPrivate:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  fActivityHandler = self->fActivityHandler;
  if (fActivityHandler != a3)
  {

    self->fActivityHandler = objc_msgSend_copy(a3, v6, v7);
    objc_msgSend_connect(self, v8, v9);
    if (!self->fSubscribedToMotionState)
    {
      v12 = @"kCLConnectionMessageSubscribeKey";
      v13[0] = MEMORY[0x1E695E118];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v13, &v12, 1);
      sub_19B6C0E58();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)stopActivityUpdatesPrivate
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->fActivityHandler)
  {
    v4 = @"kCLConnectionMessageSubscribeKey";
    v5[0] = MEMORY[0x1E695E110];
    v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, &v4, 1);
    sub_19B6C0E58();
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)simulateMotionStateYouthWithState:(int64_t)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  objc_msgSend_connect(self, a2, a3);
  if (self->fLocationdConnection)
  {
    v8 = @"CMMotionStateSimState";
    v9[0] = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v5, a3);
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v9, &v8, 1);
    sub_19B5D12C8();
  }

  self->fMotionStateYouthSimResult = 3;
  v7 = *MEMORY[0x1E69E9840];
}

@end