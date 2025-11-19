@interface CMSwimTracker
+ (BOOL)isAvailable;
- (CMSwimTracker)init;
- (void)dealloc;
- (void)querySWOLFSummaryWithSessionID:(id)a3 handler:(id)a4;
- (void)querySwimUpdatesFromRecord:(id)a3 handler:(id)a4;
- (void)startUpdatesFromRecord:(id)a3 handler:(id)a4;
- (void)stopUpdates;
@end

@implementation CMSwimTracker

- (CMSwimTracker)init
{
  v4.receiver = self;
  v4.super_class = CMSwimTracker;
  v2 = [(CMSwimTracker *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMSwimTrackerInternal);
  }

  return v2;
}

- (void)dealloc
{
  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B779880;
  block[3] = &unk_1E7532988;
  block[4] = internal;
  dispatch_sync(fInternalQueue, block);

  v5.receiver = self;
  v5.super_class = CMSwimTracker;
  [(CMSwimTracker *)&v5 dealloc];
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
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMSwimTracker.mm", 401, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B779990;
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
  v2[2] = sub_19B779A44;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

- (void)querySwimUpdatesFromRecord:(id)a3 handler:(id)a4
{
  if (!a4)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMSwimTracker.mm", 418, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if (qword_1ED71D788 != -1)
  {
    dispatch_once(&qword_1ED71D788, &unk_1F0E2A520);
  }

  if (qword_1ED71D780 == 3)
  {
    v6 = objc_msgSend__internal(self, a2, a3);

    MEMORY[0x1EEE66B58](v6, sel__querySwimUpdatesFromRecord_handler_, a3);
  }
}

- (void)querySWOLFSummaryWithSessionID:(id)a3 handler:(id)a4
{
  if (!a4)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMSwimTracker.mm", 432, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if (qword_1ED71D798 != -1)
  {
    dispatch_once(&qword_1ED71D798, &unk_1F0E27C60);
  }

  if (qword_1ED71D790 == 3)
  {
    v6 = objc_msgSend__internal(self, a2, a3);

    MEMORY[0x1EEE66B58](v6, sel__querySWOLFSummaryWithSessionID_handler_, a3);
  }
}

@end