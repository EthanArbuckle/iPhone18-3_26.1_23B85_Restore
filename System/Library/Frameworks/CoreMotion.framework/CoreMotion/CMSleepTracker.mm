@interface CMSleepTracker
+ (BOOL)isAvailable;
- (BOOL)isTracking;
- (CMSleepTracker)init;
- (void)dealloc;
- (void)querySleepDataFromRecord:(id)record handler:(id)handler;
- (void)startWithHandler:(id)handler;
- (void)stopWithHandler:(id)handler;
@end

@implementation CMSleepTracker

- (CMSleepTracker)init
{
  v4.receiver = self;
  v4.super_class = CMSleepTracker;
  v2 = [(CMSleepTracker *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMSpringTrackerInternal);
  }

  return v2;
}

- (void)dealloc
{
  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B658D68;
  block[3] = &unk_1E7532988;
  block[4] = internal;
  dispatch_sync(fInternalQueue, block);

  v5.receiver = self;
  v5.super_class = CMSleepTracker;
  [(CMSleepTracker *)&v5 dealloc];
}

+ (BOOL)isAvailable
{
  if ((sub_19B4215D8() & 1) == 0)
  {
    sub_19B421798();
  }

  return 0;
}

- (BOOL)isTracking
{
  v3 = objc_msgSend__internal(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel__isTracking, v4);
}

- (void)startWithHandler:(id)handler
{
  if (!handler)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CMSleepTracker.mm", 261, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B658E8C;
  v8[3] = &unk_1E7532B68;
  v8[4] = self;
  v8[5] = handler;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v8);
}

- (void)stopWithHandler:(id)handler
{
  if (!handler)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CMSleepTracker.mm", 270, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B658F98;
  v8[3] = &unk_1E7532B68;
  v8[4] = self;
  v8[5] = handler;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v8);
}

- (void)querySleepDataFromRecord:(id)record handler:(id)handler
{
  if (!handler)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, record);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMSleepTracker.mm", 279, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B6590AC;
  v10[3] = &unk_1E7532C08;
  v10[4] = self;
  v10[5] = record;
  v10[6] = handler;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v10);
}

@end