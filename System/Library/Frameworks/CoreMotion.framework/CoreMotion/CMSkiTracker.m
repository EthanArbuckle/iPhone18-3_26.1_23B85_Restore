@interface CMSkiTracker
+ (BOOL)isAvailable;
- (CMSkiTracker)init;
- (void)dealloc;
- (void)querySkiUpdatesFromRecord:(id)a3 handler:(id)a4;
- (void)startLiveUpdatesWithHandler:(id)a3;
- (void)startUpdatesFromRecord:(id)a3 handler:(id)a4;
- (void)stopLiveUpdates;
- (void)stopUpdates;
@end

@implementation CMSkiTracker

- (CMSkiTracker)init
{
  v4.receiver = self;
  v4.super_class = CMSkiTracker;
  v2 = [(CMSkiTracker *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMSkiTrackerInternal);
  }

  return v2;
}

- (void)dealloc
{
  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B734264;
  block[3] = &unk_1E7532988;
  block[4] = internal;
  dispatch_sync(fInternalQueue, block);

  v5.receiver = self;
  v5.super_class = CMSkiTracker;
  [(CMSkiTracker *)&v5 dealloc];
}

+ (BOOL)isAvailable
{
  if ((sub_19B4215D8() & 1) == 0)
  {
    sub_19B421798();
  }

  return 0;
}

- (void)startUpdatesFromRecord:(id)a3 handler:(id)a4
{
  if (!a4)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMSkiTracker.mm", 377, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B734368;
  v10[3] = &unk_1E7532C08;
  v10[4] = self;
  v10[5] = a3;
  v10[6] = a4;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v10);
}

- (void)stopUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B73441C;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

- (void)querySkiUpdatesFromRecord:(id)a3 handler:(id)a4
{
  if (!a4)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMSkiTracker.mm", 394, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if (qword_1ED71D628 != -1)
  {
    dispatch_once(&qword_1ED71D628, &unk_1F0E27CA0);
  }

  if (qword_1ED71D620 == 3)
  {
    v6 = objc_msgSend__internal(self, a2, a3);

    MEMORY[0x1EEE66B58](v6, sel__queryUpdatesFromRecord_handler_, a3);
  }
}

- (void)startLiveUpdatesWithHandler:(id)a3
{
  if (!a3)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CMSkiTracker.mm", 408, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B734630;
  v8[3] = &unk_1E7532B68;
  v8[4] = self;
  v8[5] = a3;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v8);
}

- (void)stopLiveUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B7346E4;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

@end