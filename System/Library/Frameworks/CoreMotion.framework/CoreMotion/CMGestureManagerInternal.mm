@interface CMGestureManagerInternal
- (CMGestureManagerInternal)initWithPriority:(int)priority;
- (void)dealloc;
- (void)startGestureUpdatesWithHandlerPrivate:(id)private;
- (void)stopGestureUpdatesPrivate;
@end

@implementation CMGestureManagerInternal

- (void)stopGestureUpdatesPrivate
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->fGestureHandler)
  {
    if (qword_1EAFE27B0 != -1)
    {
      dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
    }

    v3 = qword_1EAFE27E8;
    if (os_log_type_enabled(qword_1EAFE27E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping gesture updates", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27B0 != -1)
      {
        dispatch_once(&qword_1EAFE27B0, &unk_1F0E27F20);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMGestureManagerInternal stopGestureUpdatesPrivate]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    self->fGestureHandler = 0;
    if (self->fLocationdConnection)
    {
      v6 = MEMORY[0x19EAE71C0]();
      MEMORY[0x19EAE76F0](v6, 0xB0C40BC2CC919);
    }

    self->fLocationdConnection = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (CMGestureManagerInternal)initWithPriority:(int)priority
{
  v7.receiver = self;
  v7.super_class = CMGestureManagerInternal;
  v4 = [(CMGestureManagerInternal *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->fPriority = priority;
    v4->fPrivateQueue = dispatch_queue_create("com.apple.CoreMotionCMGestureManagerPrivateQueue", 0);
  }

  return v5;
}

- (void)dealloc
{
  dispatch_release(self->fPrivateQueue);
  self->fPrivateQueue = 0;
  v3.receiver = self;
  v3.super_class = CMGestureManagerInternal;
  [(CMGestureManagerInternal *)&v3 dealloc];
}

- (void)startGestureUpdatesWithHandlerPrivate:(id)private
{
  v9 = *MEMORY[0x1E69E9840];
  fGestureHandler = self->fGestureHandler;
  if (fGestureHandler != private)
  {

    self->fGestureHandler = objc_msgSend_copy(private, v6, v7);
    if (!self->fLocationdConnection)
    {
      operator new();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end