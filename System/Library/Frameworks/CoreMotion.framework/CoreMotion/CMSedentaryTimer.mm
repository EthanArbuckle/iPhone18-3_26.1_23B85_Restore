@interface CMSedentaryTimer
+ (BOOL)isAvailable;
- (BOOL)isActive;
- (CMSedentaryTimer)init;
- (void)dealloc;
- (void)queryAlarmDataSince:(id)since withHandler:(id)handler;
- (void)registerForAlarmsWithHandler:(id)handler;
- (void)startTimerWithStartTime:(id)time periodInterval:(double)interval reminderInterval:(double)reminderInterval autoReschedule:(BOOL)reschedule handler:(id)handler;
- (void)stopTimerWithHandler:(id)handler;
@end

@implementation CMSedentaryTimer

- (CMSedentaryTimer)init
{
  v4.receiver = self;
  v4.super_class = CMSedentaryTimer;
  v2 = [(CMSedentaryTimer *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMSedentaryTimer_Internal);
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend__teardown(self->_internal, a2, v2);

  v4.receiver = self;
  v4.super_class = CMSedentaryTimer;
  [(CMSedentaryTimer *)&v4 dealloc];
}

+ (BOOL)isAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  sub_19B421798();

  return objc_msgSend_featureAvailability_(CMMotionUtils, v3, "kCLConnectionMessageSedentaryTimerIsAvailable");
}

- (BOOL)isActive
{
  v3 = objc_msgSend__internal(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel__isActive, v4);
}

- (void)startTimerWithStartTime:(id)time periodInterval:(double)interval reminderInterval:(double)reminderInterval autoReschedule:(BOOL)reschedule handler:(id)handler
{
  if (!handler)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, time);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CMSedentaryTimer.mm", 229, @"Invalid parameter not satisfying: %@", @"handler");
    if (time)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, time);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CMSedentaryTimer.mm", 230, @"Invalid parameter not satisfying: %@", @"startTime");
    goto LABEL_3;
  }

  if (!time)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = *(objc_msgSend__internal(self, a2, time) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5D080C;
  block[3] = &unk_1E7532BE0;
  *&block[7] = interval;
  *&block[8] = reminderInterval;
  rescheduleCopy = reschedule;
  block[4] = time;
  block[5] = self;
  block[6] = handler;
  dispatch_async(v14, block);
}

- (void)stopTimerWithHandler:(id)handler
{
  if (!handler)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CMSedentaryTimer.mm", 245, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v5 = *(objc_msgSend__internal(self, a2, handler) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5D0B40;
  block[3] = &unk_1E7532B68;
  block[4] = self;
  block[5] = handler;
  dispatch_async(v5, block);
}

- (void)queryAlarmDataSince:(id)since withHandler:(id)handler
{
  if (!handler)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, since);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CMSedentaryTimer.mm", 256, @"Invalid parameter not satisfying: %@", @"queryHandler");
  }

  v7 = *(objc_msgSend__internal(self, a2, since) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5D0D94;
  block[3] = &unk_1E7532C08;
  block[4] = since;
  block[5] = self;
  block[6] = handler;
  dispatch_async(v7, block);
}

- (void)registerForAlarmsWithHandler:(id)handler
{
  if (!handler)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CMSedentaryTimer.mm", 269, @"Invalid parameter not satisfying: %@", @"updateHandler");
  }

  v5 = *(objc_msgSend__internal(self, a2, handler) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5D1060;
  block[3] = &unk_1E7532B68;
  block[4] = self;
  block[5] = handler;
  dispatch_async(v5, block);
}

@end