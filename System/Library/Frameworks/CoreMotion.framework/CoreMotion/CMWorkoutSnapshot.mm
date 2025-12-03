@interface CMWorkoutSnapshot
- (CMWorkoutSnapshot)initWithCoder:(id)coder;
- (CMWorkoutSnapshot)initWithState:(int64_t)state workout:(id)workout entryDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMWorkoutSnapshot

- (CMWorkoutSnapshot)initWithState:(int64_t)state workout:(id)workout entryDate:(id)date
{
  v13.receiver = self;
  v13.super_class = CMWorkoutSnapshot;
  v8 = [(CMWorkoutSnapshot *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = state;
    if (workout)
    {
      workoutCopy = workout;
    }

    else
    {
      workoutCopy = 0;
    }

    v9->_workout = workoutCopy;
    if (date)
    {
      dateCopy = date;
    }

    else
    {
      dateCopy = 0;
    }

    v9->_entryDate = dateCopy;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMWorkoutSnapshot;
  [(CMWorkoutSnapshot *)&v3 dealloc];
}

- (CMWorkoutSnapshot)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = CMWorkoutSnapshot;
  v5 = [(CMWorkoutSnapshot *)&v11 init];
  if (v5)
  {
    v5->_state = objc_msgSend_decodeIntegerForKey_(coder, v4, @"kCMWorkoutSnapshotCodingKeyState");
    v6 = objc_opt_class();
    v5->_workout = objc_msgSend_decodeObjectOfClass_forKey_(coder, v7, v6, @"kCMWorkoutSnapshotCodingKeyWorkout");
    v8 = objc_opt_class();
    v5->_entryDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCMWorkoutSnapshotCodingKeyEntryDate");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_state(self, v8, v9);
  objc_msgSend_workout(self, v11, v12);
  objc_msgSend_entryDate(self, v13, v14);

  return MEMORY[0x1EEE66B58](v7, sel_initWithState_workout_entryDate_, v10);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_state, @"kCMWorkoutSnapshotCodingKeyState");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_workout, @"kCMWorkoutSnapshotCodingKeyWorkout");
  entryDate = self->_entryDate;

  objc_msgSend_encodeObject_forKey_(coder, v6, entryDate, @"kCMWorkoutSnapshotCodingKeyEntryDate");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@, <state %ld, workout %@, entryDate %@", v5, self->_state, self->_workout, self->_entryDate);
}

@end