@interface CMWorkoutMets
+ (BOOL)isAvailable;
- (CMWorkoutMets)init;
- (void)dealloc;
- (void)queryWorkoutMetsWithSessionId:(id)id handler:(id)handler;
@end

@implementation CMWorkoutMets

- (CMWorkoutMets)init
{
  if (!objc_msgSend_isAvailable(CMWorkoutMets, a2, v2))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CMWorkoutMets;
  v4 = [(CMWorkoutMets *)&v6 init];
  if (v4)
  {
    v4->_internal = objc_alloc_init(CMWorkoutMetsInternal);
  }

  return v4;
}

- (void)dealloc
{
  fInternalQueue = self->_internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B73C134;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);

  v4.receiver = self;
  v4.super_class = CMWorkoutMets;
  [(CMWorkoutMets *)&v4 dealloc];
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

  return objc_msgSend_featureAvailability_(CMMotionUtils, v3, "kCLConnectionMessageNatalimetryAvailable");
}

- (void)queryWorkoutMetsWithSessionId:(id)id handler:(id)handler
{
  if (!handler)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, id);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMWorkoutMets.mm", 165, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if (qword_1ED71D648 != -1)
  {
    dispatch_once(&qword_1ED71D648, &unk_1F0E28160);
  }

  if (qword_1ED71D640 == 3)
  {
    v6 = objc_msgSend__internal(self, a2, id);

    MEMORY[0x1EEE66B58](v6, sel__queryWorkoutMetsWithSessionId_handler_, id);
  }
}

@end