@interface CMWorkoutManager
+ (BOOL)isAvailable;
+ (unint64_t)supportedMetricsForWorkoutType:(int64_t)type;
- (CMWorkoutManager)init;
- (void)beginWorkoutSession:(id)session withWorkout:(id)workout enableWorkoutChangeDetection:(BOOL)detection;
- (void)dealloc;
- (void)endWorkoutSession:(id)session;
- (void)getPromptsNeededForWorkoutType:(int64_t)type handler:(id)handler;
- (void)muteAutoPauseForWorkoutType:(int64_t)type mute:(BOOL)mute;
- (void)muteReminderType:(int64_t)type mute:(BOOL)mute;
- (void)pauseWorkout:(id)workout;
- (void)resumeWorkout:(id)workout;
- (void)setCurrentWorkoutType:(id)type isManualTransition:(BOOL)transition;
- (void)setDelegate:(id)delegate;
- (void)setSuggestedStopTimeout:(double)timeout;
- (void)snapshotWithCompletion:(id)completion;
- (void)startWorkout:(id)workout;
- (void)stopWorkout:(id)workout;
- (void)triggerWorkoutLocationUpdateForTesting:(int64_t)testing;
- (void)userDismissedWorkoutAlert;
@end

@implementation CMWorkoutManager

- (CMWorkoutManager)init
{
  v4.receiver = self;
  v4.super_class = CMWorkoutManager;
  v2 = [(CMWorkoutManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMWorkoutManagerInternal);
  }

  return v2;
}

- (void)dealloc
{
  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A27BC;
  block[3] = &unk_1E7532988;
  block[4] = internal;
  dispatch_sync(fInternalQueue, block);

  v5.receiver = self;
  v5.super_class = CMWorkoutManager;
  [(CMWorkoutManager *)&v5 dealloc];
}

- (void)setDelegate:(id)delegate
{
  internal = self->_internal;
  internal->fDelegate = delegate;
  internal->fSender = self;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A283C;
  block[3] = &unk_1E7532988;
  block[4] = internal;
  dispatch_async(fInternalQueue, block);
}

+ (BOOL)isAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  sub_19B421798();
  sub_19B421798();
  if (sub_19B43B6EC())
  {
    return 1;
  }

  sub_19B421798();
  if (sub_19B4426E4())
  {
    return 1;
  }

  return objc_msgSend_featureAvailability_(CMMotionUtils, v3, "kCLConnectionMessageNatalimetryAvailable");
}

- (void)startWorkout:(id)workout
{
  if (!workout)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMWorkoutManager.mm", 817, @"Invalid parameter not satisfying: %@", @"workout");
  }

  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A298C;
  block[3] = &unk_1E7532A00;
  block[4] = internal;
  block[5] = workout;
  dispatch_async(fInternalQueue, block);
}

- (void)stopWorkout:(id)workout
{
  if (!workout)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMWorkoutManager.mm", 826, @"Invalid parameter not satisfying: %@", @"workout");
  }

  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A2A68;
  block[3] = &unk_1E7532A00;
  block[4] = internal;
  block[5] = workout;
  dispatch_async(fInternalQueue, block);
}

+ (unint64_t)supportedMetricsForWorkoutType:(int64_t)type
{
  v4 = 0;
  switch(type)
  {
    case 1:
    case 2:
    case 15:
    case 16:
    case 17:
    case 18:
    case 24:
    case 27:
    case 39:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 49:
    case 66:
    case 67:
      if (objc_msgSend_isPaceAvailable(CMPedometer, a2, type))
      {
        v4 = 7;
      }

      else
      {
        v4 = 3;
      }

      break;
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 22:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 40:
    case 47:
    case 48:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
      v4 = 1;
      break;
    case 4:
    case 20:
    case 21:
    case 23:
    case 35:
    case 36:
    case 37:
    case 38:
      v4 = 7;
      break;
    case 19:
      v4 = 15;
      break;
    default:
      break;
  }

  if (sub_19B6C44E8(type) != 96)
  {
    sub_19B421798();
    sub_19B43CC3C();
  }

  return v4;
}

- (void)getPromptsNeededForWorkoutType:(int64_t)type handler:(id)handler
{
  if (!handler)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, type);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CMWorkoutManager.mm", 966, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if ((type - 96) <= 0xFFFFFFFFFFFFFFA0)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, type);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CMWorkoutManager.mm", 967, @"Invalid parameter not satisfying: %@", @"workoutType > kCMWorkoutTypeNoWorkout && workoutType < kCMWorkoutTypeMax");
  }

  fInternalQueue = self->_internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A2C34;
  block[3] = &unk_1E7534030;
  block[5] = handler;
  block[6] = type;
  block[4] = self;
  dispatch_async(fInternalQueue, block);
}

- (void)setSuggestedStopTimeout:(double)timeout
{
  if (timeout <= 0.0)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CMWorkoutManager.mm", 976, @"Invalid parameter not satisfying: %@", @"seconds > 0");
  }

  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A2D48;
  block[3] = &unk_1E7533490;
  block[4] = internal;
  *&block[5] = timeout;
  dispatch_async(fInternalQueue, block);
}

- (void)userDismissedWorkoutAlert
{
  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A2DCC;
  block[3] = &unk_1E7532988;
  block[4] = internal;
  dispatch_async(fInternalQueue, block);
}

- (void)triggerWorkoutLocationUpdateForTesting:(int64_t)testing
{
  if (testing >= 3)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, testing);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMWorkoutManager.mm", 993, @"Invalid parameter not satisfying: %@", @"workoutLocation >= kCMWorkoutLocationTypeUnknown && workoutLocation < kCMWorkoutLocationTypeTbd");
  }

  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A2EA8;
  block[3] = &unk_1E7533490;
  block[4] = internal;
  block[5] = testing;
  dispatch_async(fInternalQueue, block);
}

- (void)muteReminderType:(int64_t)type mute:(BOOL)mute
{
  fInternalQueue = self->_internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A2F30;
  block[3] = &unk_1E75343A8;
  block[4] = self;
  block[5] = type;
  muteCopy = mute;
  dispatch_async(fInternalQueue, block);
}

- (void)muteAutoPauseForWorkoutType:(int64_t)type mute:(BOOL)mute
{
  fInternalQueue = self->_internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A2FC0;
  block[3] = &unk_1E75343A8;
  block[4] = self;
  block[5] = type;
  muteCopy = mute;
  dispatch_async(fInternalQueue, block);
}

- (void)beginWorkoutSession:(id)session withWorkout:(id)workout enableWorkoutChangeDetection:(BOOL)detection
{
  if (!session)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CMWorkoutManager.mm", 1021, @"Invalid parameter not satisfying: %@", @"overview");
    if (workout)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, session);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMWorkoutManager.mm", 1022, @"Invalid parameter not satisfying: %@", @"workout");
    goto LABEL_3;
  }

  if (!workout)
  {
    goto LABEL_5;
  }

LABEL_3:
  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A3104;
  block[3] = &unk_1E75360C0;
  block[4] = internal;
  block[5] = session;
  block[6] = workout;
  detectionCopy = detection;
  dispatch_async(fInternalQueue, block);
}

- (void)setCurrentWorkoutType:(id)type isManualTransition:(BOOL)transition
{
  if (!type)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CMWorkoutManager.mm", 1031, @"Invalid parameter not satisfying: %@", @"workout");
  }

  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A31F0;
  block[3] = &unk_1E7534FF0;
  block[4] = internal;
  block[5] = type;
  transitionCopy = transition;
  dispatch_async(fInternalQueue, block);
}

- (void)endWorkoutSession:(id)session
{
  if (!session)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMWorkoutManager.mm", 1040, @"Invalid parameter not satisfying: %@", @"workout");
  }

  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A32D0;
  block[3] = &unk_1E7532A00;
  block[4] = internal;
  block[5] = session;
  dispatch_async(fInternalQueue, block);
}

- (void)pauseWorkout:(id)workout
{
  if (!workout)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMWorkoutManager.mm", 1049, @"Invalid parameter not satisfying: %@", @"workout");
  }

  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A33AC;
  block[3] = &unk_1E7532A00;
  block[4] = internal;
  block[5] = workout;
  dispatch_async(fInternalQueue, block);
}

- (void)resumeWorkout:(id)workout
{
  if (!workout)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMWorkoutManager.mm", 1058, @"Invalid parameter not satisfying: %@", @"workout");
  }

  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7A3488;
  block[3] = &unk_1E7532A00;
  block[4] = internal;
  block[5] = workout;
  dispatch_async(fInternalQueue, block);
}

- (void)snapshotWithCompletion:(id)completion
{
  fInternalQueue = self->_internal->fInternalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B7A350C;
  v4[3] = &unk_1E7532B68;
  v4[4] = self;
  v4[5] = completion;
  dispatch_async(fInternalQueue, v4);
}

@end