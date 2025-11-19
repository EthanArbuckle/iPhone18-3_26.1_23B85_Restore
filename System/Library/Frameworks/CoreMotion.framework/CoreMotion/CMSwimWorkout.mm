@interface CMSwimWorkout
+ (BOOL)isAvailable;
+ (id)swimLocationName:(int64_t)a3;
+ (id)swimWorkoutInstance:(id)a3;
- (CMSwimWorkout)initWithCoder:(id)a3;
- (CMSwimWorkout)initWithSessionId:(id)a3 location:(int64_t)a4 poolLength:(double)a5;
- (CMSwimWorkout)initWithSessionId:(id)a3 locationType:(int64_t)a4 poolLength:(double)a5;
- (CMSwimWorkout)initWithSessionId:(id)a3 locationType:(int64_t)a4 poolLength:(double)a5 startDate:(id)a6 endDate:(id)a7;
- (id)_initWithSessionId:(id)a3 locationType:(int64_t)a4 poolLength:(double)a5 startDate:(id)a6 endDate:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMSwimWorkout

+ (BOOL)isAvailable
{
  if ((sub_19B4215D8() & 1) == 0)
  {
    sub_19B421798();
  }

  return 0;
}

- (CMSwimWorkout)initWithSessionId:(id)a3 location:(int64_t)a4 poolLength:(double)a5
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4 >= 2)
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CMWorkout.mm", 994, @"Invalid parameter not satisfying: %@", @"location < kCMSwimWorkoutLocationMax");
  }

  else if (!a4 && a5 < 1.0)
  {
    if (qword_1EAFE2978 != -1)
    {
      dispatch_once(&qword_1EAFE2978, &unk_1F0E29000);
    }

    v9 = qword_1EAFE2980;
    if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v26 = a5;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Workout, pool length %f for workout is too small and may lead to undefined behavior.", buf, 0xCu);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E29000);
      }

      v23 = 134217984;
      v24 = a5;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSwimWorkout initWithSessionId:location:poolLength:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v22.receiver = self;
  v22.super_class = CMSwimWorkout;
  v12 = [(CMWorkout *)&v22 initWithSessionId:a3 type:19];
  v14 = v12;
  if (v12)
  {
    v12->fLocation = a4;
    v12->fPoolLength = a5;
    v15 = objc_msgSend_CMWorkoutLocationTypeFromCMSwimWorkoutLocation_(CMWorkout, v13, a4);
    objc_msgSend_setLocationType_(v14, v16, v15);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (CMSwimWorkout)initWithSessionId:(id)a3 locationType:(int64_t)a4 poolLength:(double)a5
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4 == 1 && a5 < 1.0)
  {
    if (qword_1EAFE2978 != -1)
    {
      dispatch_once(&qword_1EAFE2978, &unk_1F0E29000);
    }

    v9 = qword_1EAFE2980;
    if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v18 = a5;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Workout, pool length %f for workout is too small and may lead to undefined behavior.", buf, 0xCu);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E29000);
      }

      v15 = 134217984;
      v16 = a5;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSwimWorkout initWithSessionId:locationType:poolLength:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v14.receiver = self;
  v14.super_class = CMSwimWorkout;
  result = [(CMWorkout *)&v14 initWithSessionId:a3 type:19 locationType:a4];
  if (result)
  {
    result->fPoolLength = a5;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (CMSwimWorkout)initWithSessionId:(id)a3 locationType:(int64_t)a4 poolLength:(double)a5 startDate:(id)a6 endDate:(id)a7
{
  if (a6)
  {
    if (a7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CMWorkout.mm", 1023, @"Invalid parameter not satisfying: %@", @"startDate");
    if (a7)
    {
      goto LABEL_3;
    }
  }

  v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CMWorkout.mm", 1024, @"Invalid parameter not satisfying: %@", @"endDate");
LABEL_3:

  return objc_msgSend__initWithSessionId_locationType_poolLength_startDate_endDate_(self, a2, a3, a4, a6, a7, a5);
}

- (id)_initWithSessionId:(id)a3 locationType:(int64_t)a4 poolLength:(double)a5 startDate:(id)a6 endDate:(id)a7
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4 == 1 && a5 < 1.0)
  {
    if (qword_1EAFE2978 != -1)
    {
      dispatch_once(&qword_1EAFE2978, &unk_1F0E29000);
    }

    v13 = qword_1EAFE2980;
    if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v26 = a5;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Workout, pool length %f for workout is too small and may lead to undefined behavior.", buf, 0xCu);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E29000);
      }

      v23 = 134217984;
      v24 = a5;
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSwimWorkout _initWithSessionId:locationType:poolLength:startDate:endDate:]", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v22.receiver = self;
  v22.super_class = CMSwimWorkout;
  v16 = [(CMWorkout *)&v22 _initWithSessionId:a3 type:19 locationType:a4 mode:0 startDate:a6 endDate:a7];
  v18 = v16;
  if (v16)
  {
    *(v16 + 11) = a5;
    *(v16 + 10) = objc_msgSend_CMSwimWorkoutLocationFromCMWorkoutLocationType_(CMWorkout, v17, a4);
    objc_msgSend_setIsUserInitiated_(v18, v19, 0);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMSwimWorkout;
  [(CMWorkout *)&v2 dealloc];
}

- (CMSwimWorkout)initWithCoder:(id)a3
{
  v19.receiver = self;
  v19.super_class = CMSwimWorkout;
  v5 = [(CMWorkout *)&v19 initWithCoder:?];
  if (v5)
  {
    if (objc_msgSend_containsValueForKey_(a3, v4, @"kCMWorkoutDataCodingKeySwimLocation"))
    {
      v5->fLocation = objc_msgSend_decodeIntegerForKey_(a3, v6, @"kCMWorkoutDataCodingKeySwimLocation");
      v9 = objc_msgSend_location(v5, v7, v8);
      v11 = objc_msgSend_CMWorkoutLocationTypeFromCMSwimWorkoutLocation_(CMWorkout, v10, v9);
      objc_msgSend_setLocationType_(v5, v12, v11);
    }

    if (objc_msgSend_containsValueForKey_(a3, v6, @"kCMWorkoutDataCodingKeyLocationType"))
    {
      v15 = objc_msgSend_locationType(v5, v13, v14);
      v5->fLocation = objc_msgSend_CMSwimWorkoutLocationFromCMWorkoutLocationType_(CMWorkout, v16, v15);
    }

    objc_msgSend_decodeDoubleForKey_(a3, v13, @"kCMWorkoutDataCodingKeyPoolLength");
    v5->fPoolLength = v17;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_sessionId(self, v8, v9);
  v13 = objc_msgSend_locationType(self, v11, v12);
  objc_msgSend_poolLength(self, v14, v15);
  v17 = v16;
  started = objc_msgSend_startDate(self, v18, v19);
  v23 = objc_msgSend_endDate(self, v21, v22);
  v25 = objc_msgSend__initWithSessionId_locationType_poolLength_startDate_endDate_(v7, v24, v10, v13, started, v23, v17);
  v28 = objc_msgSend_appId(self, v26, v27);
  objc_msgSend_setAppId_(v25, v29, v28);
  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CMSwimWorkout;
  [(CMWorkout *)&v7 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->fLocation, @"kCMWorkoutDataCodingKeySwimLocation");
  objc_msgSend_encodeDouble_forKey_(a3, v6, @"kCMWorkoutDataCodingKeyPoolLength", self->fPoolLength);
}

+ (id)swimLocationName:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7533238[a3];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_sessionId(self, v6, v7);
  v11 = objc_msgSend_location(self, v9, v10);
  v13 = objc_msgSend_swimLocationName_(CMSwimWorkout, v12, v11);
  objc_msgSend_poolLength(self, v14, v15);
  return objc_msgSend_stringWithFormat_(v3, v16, @"%@, <sessionId %@, type, kCMWorkoutTypeSwimming, location, %@, poolLength, %f>", v5, v8, v13, v17);
}

+ (id)swimWorkoutInstance:(id)a3
{
  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(a3, v5, v4))
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

@end