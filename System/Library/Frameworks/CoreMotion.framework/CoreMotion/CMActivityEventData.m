@interface CMActivityEventData
+ (id)actionName:(int64_t)a3;
+ (id)eventTypeName:(int64_t)a3;
+ (id)reasonName:(int64_t)a3;
- (CMActivityEventData)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMActivityEventData)initWithCoder:(id)a3;
- (CMActivityEventData)initWithStartDate:(id)a3 eventType:(int64_t)a4 action:(int64_t)a5 reason:(int64_t)a6 workoutType:(int64_t)a7;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMActivityEventData

- (CMActivityEventData)initWithStartDate:(id)a3 eventType:(int64_t)a4 action:(int64_t)a5 reason:(int64_t)a6 workoutType:(int64_t)a7
{
  v19.receiver = self;
  v19.super_class = CMActivityEventData;
  v12 = [(CMActivityEventData *)&v19 init];
  if (v12)
  {
    v12->_startDate = a3;
    v12->_eventType = a4;
    v12->_action = a5;
    v12->_reason = a6;
    v12->_workoutType = a7;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v12->_heartRateRecoveryStartTime = _Q0;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMActivityEventData;
  [(CMActivityEventData *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  result = objc_msgSend_initWithStartDate_eventType_action_reason_workoutType_(v7, v8, self->_startDate, self->_eventType, self->_action, self->_reason, self->_workoutType);
  if (result)
  {
    *(result + 6) = *&self->_heartRateRecoveryStartTime;
    *(result + 7) = *&self->_heartRateRecoveryEndTime;
  }

  return result;
}

- (CMActivityEventData)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = CMActivityEventData;
  v4 = [(CMActivityEventData *)&v16 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_startDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCCMActivityEventDataCodingKeyStartDate");
    v4->_eventType = objc_msgSend_decodeIntegerForKey_(a3, v7, @"kCMActivityEventDataCodingKeyEventType");
    v4->_action = objc_msgSend_decodeIntegerForKey_(a3, v8, @"kCMActivityEventDataCodingKeyAction");
    v4->_reason = objc_msgSend_decodeIntegerForKey_(a3, v9, @"kCMActivityEventDataCodingKeyReason");
    v4->_workoutType = objc_msgSend_decodeIntegerForKey_(a3, v10, @"kCMActivityEventDataCodingKeyWorkoutType");
    objc_msgSend_decodeDoubleForKey_(a3, v11, @"kCMActivityEventDataCodingKeyRecoveryStart");
    v4->_heartRateRecoveryStartTime = v12;
    objc_msgSend_decodeDoubleForKey_(a3, v13, @"kCMActivityEventDataCodingKeyRecoveryEnd");
    v4->_heartRateRecoveryEndTime = v14;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->_startDate, @"kCCMActivityEventDataCodingKeyStartDate");
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->_eventType, @"kCMActivityEventDataCodingKeyEventType");
  objc_msgSend_encodeInteger_forKey_(a3, v6, self->_action, @"kCMActivityEventDataCodingKeyAction");
  objc_msgSend_encodeInteger_forKey_(a3, v7, self->_reason, @"kCMActivityEventDataCodingKeyReason");
  objc_msgSend_encodeInteger_forKey_(a3, v8, self->_workoutType, @"kCMActivityEventDataCodingKeyWorkoutType");
  objc_msgSend_encodeDouble_forKey_(a3, v9, @"kCMActivityEventDataCodingKeyRecoveryStart", self->_heartRateRecoveryStartTime);
  heartRateRecoveryEndTime = self->_heartRateRecoveryEndTime;

  objc_msgSend_encodeDouble_forKey_(a3, v10, @"kCMActivityEventDataCodingKeyRecoveryEnd", heartRateRecoveryEndTime);
}

+ (id)eventTypeName:(int64_t)a3
{
  v3 = @"WorkoutPrediction";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"BackgroundEscalation";
  }
}

+ (id)actionName:(int64_t)a3
{
  v3 = @"Stop";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Start";
  }
}

+ (id)reasonName:(int64_t)a3
{
  if (a3 > 0x16)
  {
    return 0;
  }

  else
  {
    return off_1E7535E08[a3];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  startDate = self->_startDate;
  v8 = objc_msgSend_eventTypeName_(CMActivityEventData, v7, self->_eventType);
  v10 = objc_msgSend_actionName_(CMActivityEventData, v9, self->_action);
  v12 = objc_msgSend_reasonName_(CMActivityEventData, v11, self->_reason);
  v14 = objc_msgSend_workoutName_(CMWorkout, v13, self->_workoutType);
  return objc_msgSend_stringWithFormat_(v3, v15, @"%@, startDate %@, eventType %@, action %@, reason %@, workoutType %@, recoveryStart %f, recoveryEnd %f>", v5, startDate, v8, v10, v12, v14, *&self->_heartRateRecoveryStartTime, *&self->_heartRateRecoveryEndTime);
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMActivityEventData)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v14.receiver = self;
    v14.super_class = CMActivityEventData;
    v7 = [(CMActivityEventData *)&v14 init];
    if (v7)
    {
      v8 = MEMORY[0x1E696ACD0];
      v9 = objc_opt_class();
      v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v8, v10, v9, a3, 0);
      if (v11)
      {
        v12 = v11;

        return v12;
      }
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

- (id)sr_dictionaryRepresentation
{
  v44[7] = *MEMORY[0x1E69E9840];
  v43[0] = @"startTime";
  v4 = MEMORY[0x1E696AD98];
  started = objc_msgSend_startDate(self, a2, v2);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v6, v7);
  v44[0] = objc_msgSend_numberWithDouble_(v4, v8, v9);
  v43[1] = @"eventType";
  v10 = MEMORY[0x1E696AD98];
  v13 = objc_msgSend_eventType(self, v11, v12);
  v44[1] = objc_msgSend_numberWithInteger_(v10, v14, v13);
  v43[2] = @"action";
  v15 = MEMORY[0x1E696AD98];
  v18 = objc_msgSend_action(self, v16, v17);
  v44[2] = objc_msgSend_numberWithInteger_(v15, v19, v18);
  v43[3] = @"reason";
  v20 = MEMORY[0x1E696AD98];
  v23 = objc_msgSend_reason(self, v21, v22);
  v44[3] = objc_msgSend_numberWithInteger_(v20, v24, v23);
  v43[4] = @"workoutType";
  v25 = MEMORY[0x1E696AD98];
  v28 = objc_msgSend_workoutType(self, v26, v27);
  v44[4] = objc_msgSend_numberWithInteger_(v25, v29, v28);
  v43[5] = @"recoveryStart";
  v30 = MEMORY[0x1E696AD98];
  objc_msgSend_heartRateRecoveryStartTime(self, v31, v32);
  v44[5] = objc_msgSend_numberWithDouble_(v30, v33, v34);
  v43[6] = @"recoveryEnd";
  v35 = MEMORY[0x1E696AD98];
  objc_msgSend_heartRateRecoveryEndTime(self, v36, v37);
  v44[6] = objc_msgSend_numberWithDouble_(v35, v38, v39);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v40, v44, v43, 7);
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

@end