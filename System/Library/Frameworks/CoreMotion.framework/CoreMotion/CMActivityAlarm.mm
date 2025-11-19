@interface CMActivityAlarm
+ (BOOL)activityAlarmAvailable;
+ (id)activityAlarmInfo;
- (BOOL)isValid;
- (void)dealloc;
- (void)fire;
- (void)invalidate;
@end

@implementation CMActivityAlarm

+ (BOOL)activityAlarmAvailable
{
  if ((sub_19B4215D8() & 1) != 0 || !objc_msgSend_sharedInstance(CMActivityAlarmProxy, v2, v3))
  {
    return 0;
  }

  v6 = objc_msgSend_sharedInstance(CMActivityAlarmProxy, v4, v5);

  return objc_msgSend_activityAlarmAvailable(v6, v7, v8);
}

+ (id)activityAlarmInfo
{
  v2 = sub_19B704E68();

  return v2;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CMActivityAlarm;
  [(CMActivityAlarm *)&v4 dealloc];
}

- (void)invalidate
{
  objc_sync_enter(self);
  if (self->fIsValid)
  {
    self->fIsValid = 0;
    _Block_release(self->fHandler);
    self->fHandler = 0;
    fQueue = self->fQueue;
    if (fQueue)
    {
      dispatch_release(fQueue);
      self->fQueue = 0;
    }

    self->fRunLoop = 0;
    objc_sync_exit(self);
    v6 = objc_msgSend_sharedInstance(CMActivityAlarmProxy, v4, v5);

    MEMORY[0x1EEE66B58](v6, sel_stopListeningForActivityAlarm_, self);
  }

  else
  {

    objc_sync_exit(self);
  }
}

- (BOOL)isValid
{
  objc_sync_enter(self);
  fIsValid = self->fIsValid;
  objc_sync_exit(self);
  return fIsValid;
}

- (void)fire
{
  objc_sync_enter(self);
  if (self->fIsValid)
  {
    self->fIsValid = 0;
    if (self->fRunLoop)
    {
      v3 = _Block_copy(self->fHandler);
      fRunLoop = self->fRunLoop;
      v5 = *MEMORY[0x1E695E8E0];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B75C884;
      block[3] = &unk_1E7532B90;
      block[4] = self;
      block[5] = v3;
      CFRunLoopPerformBlock(fRunLoop, v5, block);
      CFRunLoopWakeUp(self->fRunLoop);
      self->fRunLoop = 0;
    }

    if (self->fQueue)
    {
      v6 = _Block_copy(self->fHandler);
      fQueue = self->fQueue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_19B75C8D0;
      v8[3] = &unk_1E7532B90;
      v8[4] = self;
      v8[5] = v6;
      dispatch_async(fQueue, v8);
      dispatch_release(self->fQueue);
      self->fQueue = 0;
    }

    _Block_release(self->fHandler);
    self->fHandler = 0;
  }

  objc_sync_exit(self);
}

@end