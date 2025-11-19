@interface CMExerciseMinute
+ (BOOL)isExerciseMinuteAvailable;
- (CMExerciseMinute)init;
- (void)dealloc;
- (void)queryExerciseMinutesFromRecord:(id)a3 handler:(id)a4;
- (void)startUpdatesFromRecord:(id)a3 handler:(id)a4;
- (void)startUpdatesWithHandler:(id)a3;
- (void)stopUpdates;
@end

@implementation CMExerciseMinute

- (CMExerciseMinute)init
{
  v4.receiver = self;
  v4.super_class = CMExerciseMinute;
  v2 = [(CMExerciseMinute *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMExerciseMinuteInternal);
  }

  return v2;
}

- (void)dealloc
{
  fInternalQueue = self->_internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6731D0;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);

  v4.receiver = self;
  v4.super_class = CMExerciseMinute;
  [(CMExerciseMinute *)&v4 dealloc];
}

+ (BOOL)isExerciseMinuteAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  sub_19B421798();

  return objc_msgSend_featureAvailability_(CMMotionUtils, v3, "kCLConnectionMessageNatalimetryAvailable");
}

- (void)startUpdatesFromRecord:(id)a3 handler:(id)a4
{
  if (!a4)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMExerciseMinute.mm", 277, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B67330C;
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
  v2[2] = sub_19B6733C0;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

- (void)startUpdatesWithHandler:(id)a3
{
  if (!a3)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CMExerciseMinute.mm", 293, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6734BC;
  v8[3] = &unk_1E7532B68;
  v8[4] = self;
  v8[5] = a3;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v8);
}

- (void)queryExerciseMinutesFromRecord:(id)a3 handler:(id)a4
{
  if (!a4)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CMExerciseMinute.mm", 301, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if (qword_1ED71D290 != -1)
  {
    dispatch_once(&qword_1ED71D290, &unk_1F0E27E60);
  }

  if (qword_1ED71D288 == 3)
  {
    v7 = objc_msgSend__internal(self, a2, a3);

    objc_msgSend__queryExerciseMinutesFromRecord_handler_(v7, v8, a3, a4);
  }
}

@end