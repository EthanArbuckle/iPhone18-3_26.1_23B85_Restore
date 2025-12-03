@interface CMGenericWorkout
+ (BOOL)isAvailable;
+ (id)genericWorkoutInstance:(id)instance;
- (CMGenericWorkout)initWithCoder:(id)coder;
- (CMGenericWorkout)initWithSessionId:(id)id workoutLabel:(unint64_t)label;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMGenericWorkout

+ (BOOL)isAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return objc_msgSend_isAvailable(CMWorkout, v2, v3);
}

- (CMGenericWorkout)initWithSessionId:(id)id workoutLabel:(unint64_t)label
{
  v6.receiver = self;
  v6.super_class = CMGenericWorkout;
  result = [(CMWorkout *)&v6 initWithSessionId:id type:14];
  if (result)
  {
    result->fWorkoutLabel = label;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMGenericWorkout;
  [(CMWorkout *)&v2 dealloc];
}

- (CMGenericWorkout)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CMGenericWorkout;
  v5 = [(CMWorkout *)&v8 initWithCoder:?];
  if (v5 && objc_msgSend_containsValueForKey_(coder, v4, @"kCMWorkoutDataCodingKeyWorkoutLabel"))
  {
    v5->fWorkoutLabel = objc_msgSend_decodeIntegerForKey_(coder, v6, @"kCMWorkoutDataCodingKeyWorkoutLabel");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_sessionId(self, v8, v9);
  v13 = objc_msgSend_workoutLabel(self, v11, v12);
  v15 = objc_msgSend_initWithSessionId_workoutLabel_(v7, v14, v10, v13);
  v18 = objc_msgSend_appId(self, v16, v17);
  objc_msgSend_setAppId_(v15, v19, v18);
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CMGenericWorkout;
  [(CMWorkout *)&v6 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->fWorkoutLabel, @"kCMWorkoutDataCodingKeyWorkoutLabel");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_sessionId(self, v6, v7);
  v11 = objc_msgSend_workoutLabel(self, v9, v10);
  return objc_msgSend_stringWithFormat_(v3, v12, @"%@, <sessionId %@, label, %lu>", v5, v8, v11);
}

+ (id)genericWorkoutInstance:(id)instance
{
  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(instance, v5, v4))
  {
    return instance;
  }

  else
  {
    return 0;
  }
}

@end