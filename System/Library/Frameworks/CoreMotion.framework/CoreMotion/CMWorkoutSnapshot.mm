@interface CMWorkoutSnapshot
- (CMWorkoutSnapshot)initWithCoder:(id)a3;
- (CMWorkoutSnapshot)initWithState:(int64_t)a3 workout:(id)a4 entryDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMWorkoutSnapshot

- (CMWorkoutSnapshot)initWithState:(int64_t)a3 workout:(id)a4 entryDate:(id)a5
{
  v13.receiver = self;
  v13.super_class = CMWorkoutSnapshot;
  v8 = [(CMWorkoutSnapshot *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = a3;
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0;
    }

    v9->_workout = v10;
    if (a5)
    {
      v11 = a5;
    }

    else
    {
      v11 = 0;
    }

    v9->_entryDate = v11;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMWorkoutSnapshot;
  [(CMWorkoutSnapshot *)&v3 dealloc];
}

- (CMWorkoutSnapshot)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = CMWorkoutSnapshot;
  v5 = [(CMWorkoutSnapshot *)&v11 init];
  if (v5)
  {
    v5->_state = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMWorkoutSnapshotCodingKeyState");
    v6 = objc_opt_class();
    v5->_workout = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"kCMWorkoutSnapshotCodingKeyWorkout");
    v8 = objc_opt_class();
    v5->_entryDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v9, v8, @"kCMWorkoutSnapshotCodingKeyEntryDate");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_state(self, v8, v9);
  objc_msgSend_workout(self, v11, v12);
  objc_msgSend_entryDate(self, v13, v14);

  return MEMORY[0x1EEE66B58](v7, sel_initWithState_workout_entryDate_, v10);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->_state, @"kCMWorkoutSnapshotCodingKeyState");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->_workout, @"kCMWorkoutSnapshotCodingKeyWorkout");
  entryDate = self->_entryDate;

  objc_msgSend_encodeObject_forKey_(a3, v6, entryDate, @"kCMWorkoutSnapshotCodingKeyEntryDate");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@, <state %ld, workout %@, entryDate %@", v5, self->_state, self->_workout, self->_entryDate);
}

@end