@interface CMWorkoutOverview
- (CMWorkoutOverview)initWithCoder:(id)a3;
- (CMWorkoutOverview)initWithOverviewId:(id)a3 workouts:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMWorkoutOverview

- (CMWorkoutOverview)initWithOverviewId:(id)a3 workouts:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CMWorkoutOverview.mm", 24, @"Invalid parameter not satisfying: %@", @"overviewId");
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_18:
    v25 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CMWorkoutOverview.mm", 25, @"Invalid parameter not satisfying: %@", @"workouts");
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (objc_msgSend_count(a4, a2, a3) >= 2)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, v8, &v28, v32, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(a4);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          if (objc_msgSend_mode(v15, v10, v11) == 1)
          {
            v16 = objc_msgSend_type(v15, v10, v11);
            if ((objc_msgSend_workoutIsSupportedForLowPower_(CMWorkout, v17, v16) & 1) == 0)
            {
              v18 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CMWorkoutOverview.mm", 29, @"Invalid parameter not satisfying: %@", @"wrk.mode != CMWorkoutModeExtended || [CMWorkout workoutIsSupportedForLowPower:wrk.type]");
            }
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, v10, &v28, v32, 16);
      }

      while (v12);
    }
  }

  v27.receiver = self;
  v27.super_class = CMWorkoutOverview;
  v20 = [(CMWorkoutOverview *)&v27 init];
  if (v20)
  {
    v20->_overviewId = a3;
    v20->_workouts = a4;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMWorkoutOverview;
  [(CMWorkoutOverview *)&v3 dealloc];
}

- (CMWorkoutOverview)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = CMWorkoutOverview;
  v4 = [(CMWorkoutOverview *)&v14 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_overviewId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMWorkoutOverviewCodingKeyOverviewId");
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v4->_workouts = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v12, v11, @"kCMWorkoutOverviewCodingKeyWorkouts");
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_overviewId(self, v8, v9);
  v14 = objc_msgSend_workouts(self, v11, v12);

  return objc_msgSend_initWithOverviewId_workouts_(v7, v13, v10, v14);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->_overviewId, @"kCMWorkoutOverviewCodingKeyOverviewId");
  workouts = self->_workouts;

  objc_msgSend_encodeObject_forKey_(a3, v5, workouts, @"kCMWorkoutOverviewCodingKeyWorkouts");
}

- (id)description
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  workouts = self->_workouts;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(workouts, v5, &v17, v21, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(workouts);
        }

        objc_msgSend_appendFormat_(v3, v7, @"%@, ", *(*(&v17 + 1) + 8 * i));
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(workouts, v7, &v17, v21, 16);
    }

    while (v8);
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  result = objc_msgSend_stringWithFormat_(v11, v14, @"%@, <overviewId %@, workouts [ %@]>", v13, self->_overviewId, v3);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

@end