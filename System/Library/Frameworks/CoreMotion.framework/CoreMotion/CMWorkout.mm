@interface CMWorkout
+ (BOOL)isAvailable;
+ (BOOL)workoutIsTypePedestrian:(int64_t)a3;
+ (id)workoutLocationName:(int64_t)a3;
+ (id)workoutModeName:(unint64_t)a3;
+ (id)workoutName:(int64_t)a3;
+ (int)CLMotionActivityTypeFromCMWorkoutType:(int64_t)a3;
+ (int64_t)CMSwimWorkoutLocationFromCMWorkoutLocationType:(int64_t)a3;
+ (int64_t)CMWorkoutLocationTypeFromCMSwimWorkoutLocation:(int64_t)a3;
+ (int64_t)CMWorkoutTypeFromCLMotionActivityType:(int)a3;
+ (int64_t)workoutLocationTypeFromCMWorkoutType:(int64_t)a3;
- (BOOL)isSameWorkout:(id)a3;
- (CMWorkout)initWithCoder:(id)a3;
- (CMWorkout)initWithSessionId:(id)a3 type:(int64_t)a4;
- (CMWorkout)initWithSessionId:(id)a3 type:(int64_t)a4 locationType:(int64_t)a5;
- (CMWorkout)initWithSessionId:(id)a3 type:(int64_t)a4 locationType:(int64_t)a5 mode:(unint64_t)a6;
- (CMWorkout)initWithSessionId:(id)a3 type:(int64_t)a4 locationType:(int64_t)a5 mode:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8;
- (id)_initWithSessionId:(id)a3 type:(int64_t)a4 locationType:(int64_t)a5 mode:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMWorkout

+ (int)CLMotionActivityTypeFromCMWorkoutType:(int64_t)a3
{
  if ((a3 - 1) > 0x5E)
  {
    return 0;
  }

  else
  {
    return dword_19B7B8FF0[a3 - 1];
  }
}

+ (int64_t)CMWorkoutTypeFromCLMotionActivityType:(int)a3
{
  result = 0;
  if (a3 > 15229)
  {
    if (a3 > 15710)
    {
      if (a3 > 19089)
      {
        if (a3 > 90602)
        {
          v13 = 515651;
          v43 = 37;
          if (a3 != 519150)
          {
            v43 = 0;
          }

          if (a3 == 515652)
          {
            v15 = 53;
          }

          else
          {
            v15 = v43;
          }

          v16 = 90603;
          v17 = 21;
          v18 = a3 == 515621;
          v19 = 60;
        }

        else
        {
          v13 = 90120;
          v23 = 66;
          if (a3 != 90122)
          {
            v23 = 0;
          }

          if (a3 == 90121)
          {
            v15 = 67;
          }

          else
          {
            v15 = v23;
          }

          v16 = 19090;
          v17 = 36;
          v18 = a3 == 19150;
          v19 = 23;
        }

        goto LABEL_130;
      }

      v13 = 18049;
      v37 = 47;
      if (a3 != 19030)
      {
        v37 = 0;
      }

      if (a3 == 18240)
      {
        v38 = 19;
      }

      else
      {
        v38 = v37;
      }

      v39 = 38;
      if (a3 != 18100)
      {
        v39 = 0;
      }

      if (a3 == 18050)
      {
        v40 = 35;
      }

      else
      {
        v40 = v39;
      }

      if (a3 <= 18239)
      {
        v15 = v40;
      }

      else
      {
        v15 = v38;
      }

      v16 = 15711;
      v17 = 55;
      v28 = 15733;
      v29 = 58;
      v30 = a3 == 17150;
      v31 = 16;
    }

    else
    {
      if (a3 > 15559)
      {
        if (a3 > 15651)
        {
          v13 = 15669;
          v41 = 51;
          if (a3 != 15675)
          {
            v41 = 0;
          }

          if (a3 == 15670)
          {
            v15 = 31;
          }

          else
          {
            v15 = v41;
          }

          v16 = 15652;
          v17 = 56;
          v18 = a3 == 15660;
          v19 = 62;
        }

        else
        {
          v13 = 15609;
          v14 = 59;
          if (a3 != 15620)
          {
            v14 = 0;
          }

          if (a3 == 15610)
          {
            v15 = 39;
          }

          else
          {
            v15 = v14;
          }

          v16 = 15560;
          v17 = 44;
          v18 = a3 == 15592;
          v19 = 46;
        }

LABEL_130:
        if (!v18)
        {
          v19 = 0;
        }

LABEL_132:
        if (a3 == v16)
        {
          v21 = v17;
        }

        else
        {
          v21 = v19;
        }

LABEL_135:
        if (a3 <= v13)
        {
          return v21;
        }

        else
        {
          return v15;
        }
      }

      v13 = 15329;
      v24 = 45;
      if (a3 != 15460)
      {
        v24 = 0;
      }

      if (a3 == 15360)
      {
        v25 = 48;
      }

      else
      {
        v25 = v24;
      }

      v26 = 49;
      if (a3 != 15350)
      {
        v26 = 0;
      }

      if (a3 == 15330)
      {
        v27 = 57;
      }

      else
      {
        v27 = v26;
      }

      if (a3 <= 15359)
      {
        v15 = v27;
      }

      else
      {
        v15 = v25;
      }

      v16 = 15230;
      v17 = 42;
      v28 = 15250;
      v29 = 43;
      v30 = a3 == 15255;
      v31 = 27;
    }

    if (!v30)
    {
      v31 = 0;
    }

    if (a3 == v28)
    {
      v19 = v29;
    }

    else
    {
      v19 = v31;
    }

    goto LABEL_132;
  }

  if (a3 > 2060)
  {
    if (a3 <= 3014)
    {
      v4 = 32;
      v32 = 6;
      if (a3 != 2150)
      {
        v32 = 0;
      }

      if (a3 != 2105)
      {
        v4 = v32;
      }

      v33 = 12;
      v34 = 29;
      if (a3 != 2101)
      {
        v34 = 0;
      }

      if (a3 != 2071)
      {
        v33 = v34;
      }

      if (a3 <= 2104)
      {
        v4 = v33;
      }

      v8 = 8;
      v35 = 11;
      v36 = 63;
      if (a3 != 2068)
      {
        v36 = 0;
      }

      if (a3 != 2065)
      {
        v35 = v36;
      }

      if (a3 != 2061)
      {
        v8 = v35;
      }

      v12 = a3 <= 2070;
      goto LABEL_90;
    }

    if (a3 <= 15054)
    {
      v13 = 12149;
      v20 = 52;
      if (a3 != 15030)
      {
        v20 = 0;
      }

      if (a3 == 12150)
      {
        v15 = 18;
      }

      else
      {
        v15 = v20;
      }

      v21 = 7;
      v22 = 65;
      if (a3 != 3016)
      {
        v22 = 0;
      }

      if (a3 != 3015)
      {
        v21 = v22;
      }

      goto LABEL_135;
    }

    v13 = 15109;
    v42 = 61;
    if (a3 != 15150)
    {
      v42 = 0;
    }

    if (a3 == 15110)
    {
      v15 = 34;
    }

    else
    {
      v15 = v42;
    }

    v16 = 15055;
    v17 = 50;
    v18 = a3 == 15100;
    v19 = 64;
    goto LABEL_130;
  }

  if (a3 > 63)
  {
    v4 = 30;
    v5 = 9;
    if (a3 != 2048)
    {
      v5 = 0;
    }

    if (a3 != 2024)
    {
      v4 = v5;
    }

    v6 = 22;
    v7 = 28;
    if (a3 != 2022)
    {
      v7 = 0;
    }

    if (a3 != 2020)
    {
      v6 = v7;
    }

    if (a3 <= 2023)
    {
      v4 = v6;
    }

    v8 = 54;
    v9 = 5;
    if (a3 != 2010)
    {
      v9 = 0;
    }

    if (a3 != 66)
    {
      v8 = v9;
    }

    v10 = 40;
    v11 = 41;
    if (a3 != 65)
    {
      v11 = 0;
    }

    if (a3 != 64)
    {
      v10 = v11;
    }

    if (a3 <= 65)
    {
      v8 = v10;
    }

    v12 = a3 <= 2019;
LABEL_90:
    if (v12)
    {
      return v8;
    }

    else
    {
      return v4;
    }
  }

  if (a3 > 7)
  {
    if (a3 <= 61)
    {
      if (a3 == 8)
      {
        return 17;
      }

      if (a3 != 41)
      {
        return result;
      }

      return 15;
    }

    if (a3 != 62)
    {
      return 33;
    }

    return 14;
  }

  switch(a3)
  {
    case 4:
      return 15;
    case 6:
      return 4;
    case 7:
      return 14;
  }

  return result;
}

+ (int64_t)CMWorkoutLocationTypeFromCMSwimWorkoutLocation:(int64_t)a3
{
  if (a3 >= 2)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, a1, @"CMWorkout.mm", 463, @"Invalid parameter not satisfying: %@", @"cmSwimWorkoutLocation == kCMSwimWorkoutLocationPool || cmSwimWorkoutLocation == kCMSwimWorkoutLocationOpenWater");
  }

  if (a3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (int64_t)CMSwimWorkoutLocationFromCMWorkoutLocationType:(int64_t)a3
{
  if ((a3 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, a1, @"CMWorkout.mm", 470, @"Invalid parameter not satisfying: %@", @"cmWorkoutLocationType == kCMWorkoutLocationTypeIndoor || cmWorkoutLocationType == kCMWorkoutLocationTypeOutdoor");
  }

  return a3 != 1;
}

+ (BOOL)workoutIsTypePedestrian:(int64_t)a3
{
  if (objc_msgSend_workoutIsTypeWalking_(a1, a2, a3))
  {
    return 1;
  }

  result = objc_msgSend_workoutIsTypeRunning_(a1, v5, a3);
  if (a3 == 24)
  {
    return 1;
  }

  return result;
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

  return sub_19B4426E4();
}

- (CMWorkout)initWithSessionId:(id)a3 type:(int64_t)a4
{
  if (!a3)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CMWorkout.mm", 510, @"Invalid parameter not satisfying: %@", @"sessionId");
  }

  if (a4 >= 96)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMWorkout.mm", 511, @"Invalid parameter not satisfying: %@", @"type < kCMWorkoutTypeMax");
  }

  v16.receiver = self;
  v16.super_class = CMWorkout;
  v8 = [(CMWorkout *)&v16 init];
  if (v8)
  {
    v8->fSessionId = a3;
    v8->fType = a4;
    v10 = objc_msgSend_workoutLocationTypeFromCMWorkoutType_(CMWorkout, v9, a4);
    v8->fIsUserInitiated = 1;
    v8->fStartDate = 0;
    v8->fEndDate = 0;
    v8->fLocationType = v10;
    v8->fMode = 0;
    v8->fAppId = 0;
  }

  return v8;
}

- (CMWorkout)initWithSessionId:(id)a3 type:(int64_t)a4 locationType:(int64_t)a5
{
  if (a5 >= 4)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CMWorkout.mm", 529, @"Invalid parameter not satisfying: %@", @"locationType < kCMWorkoutLocationTypeMax");
  }

  result = objc_msgSend_initWithSessionId_type_(self, a2, a3, a4);
  if (result)
  {
    result->fLocationType = a5;
  }

  return result;
}

- (CMWorkout)initWithSessionId:(id)a3 type:(int64_t)a4 locationType:(int64_t)a5 mode:(unint64_t)a6
{
  if (a6 == 1 && (objc_msgSend_workoutIsSupportedForLowPower_(CMWorkout, a2, a4) & 1) == 0)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CMWorkout.mm", 542, @"Invalid parameter not satisfying: %@", @"mode != CMWorkoutModeExtended || [CMWorkout workoutIsSupportedForLowPower:type]");
  }

  if (a5 >= 4)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CMWorkout.mm", 544, @"Invalid parameter not satisfying: %@", @"locationType < kCMWorkoutLocationTypeMax");
  }

  result = objc_msgSend_initWithSessionId_type_locationType_(self, a2, a3, a4, a5);
  if (result)
  {
    result->fMode = a6;
  }

  return result;
}

- (id)_initWithSessionId:(id)a3 type:(int64_t)a4 locationType:(int64_t)a5 mode:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8
{
  v10 = objc_msgSend_initWithSessionId_type_locationType_mode_(self, a2, a3, a4, a5, a6);
  if (v10)
  {
    *(v10 + 32) = a7;
    *(v10 + 40) = a8;
    *(v10 + 48) = 0;
  }

  return v10;
}

- (CMWorkout)initWithSessionId:(id)a3 type:(int64_t)a4 locationType:(int64_t)a5 mode:(unint64_t)a6 startDate:(id)a7 endDate:(id)a8
{
  if (a7)
  {
    if (a8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CMWorkout.mm", 573, @"Invalid parameter not satisfying: %@", @"startDate");
    if (a8)
    {
      goto LABEL_3;
    }
  }

  v19 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CMWorkout.mm", 574, @"Invalid parameter not satisfying: %@", @"endDate");
LABEL_3:

  return objc_msgSend__initWithSessionId_type_locationType_mode_startDate_endDate_(self, a2, a3, a4, a5, a6, a7, a8);
}

- (BOOL)isSameWorkout:(id)a3
{
  if (!a3)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CMWorkout.mm", 600, @"Invalid parameter not satisfying: %@", @"workout");
  }

  v5 = objc_msgSend_sessionId(self, a2, a3);
  v8 = objc_msgSend_sessionId(a3, v6, v7);
  isEqual = objc_msgSend_isEqual_(v5, v9, v8);
  if (isEqual)
  {
    v13 = objc_msgSend_type(self, v11, v12);
    LOBYTE(isEqual) = v13 == objc_msgSend_type(a3, v14, v15);
  }

  return isEqual;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMWorkout;
  [(CMWorkout *)&v3 dealloc];
}

- (CMWorkout)initWithCoder:(id)a3
{
  v25.receiver = self;
  v25.super_class = CMWorkout;
  v4 = [(CMWorkout *)&v25 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->fSessionId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMWorkoutDataCodingKeySessionId");
    v4->fType = objc_msgSend_decodeIntegerForKey_(a3, v7, @"kCMWorkoutDataCodingKeyType");
    if (objc_msgSend_containsValueForKey_(a3, v8, @"kCMWorkoutDataCodingKeyLocationType"))
    {
      v10 = objc_msgSend_decodeIntegerForKey_(a3, v9, @"kCMWorkoutDataCodingKeyLocationType");
    }

    else
    {
      v10 = 0;
    }

    v4->fLocationType = v10;
    if (objc_msgSend_containsValueForKey_(a3, v9, @"kCMWorkoutDataCodingKeyMode"))
    {
      v12 = objc_msgSend_decodeIntegerForKey_(a3, v11, @"kCMWorkoutDataCodingKeyMode");
    }

    else
    {
      v12 = 0;
    }

    v4->fMode = v12;
    if (objc_msgSend_containsValueForKey_(a3, v11, @"kCMWorkoutDataCodingKeyStartDate"))
    {
      v14 = objc_opt_class();
      v16 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v15, v14, @"kCMWorkoutDataCodingKeyStartDate");
    }

    else
    {
      v16 = 0;
    }

    v4->fStartDate = v16;
    if (objc_msgSend_containsValueForKey_(a3, v13, @"kCMWorkoutDataCodingKeyEndDate"))
    {
      v18 = objc_opt_class();
      v20 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v19, v18, @"kCMWorkoutDataCodingKeyEndDate");
    }

    else
    {
      v20 = 0;
    }

    v4->fEndDate = v20;
    if (objc_msgSend_containsValueForKey_(a3, v17, @"kCMWorkoutDataCodingKeyAppId"))
    {
      v21 = objc_opt_class();
      v23 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v22, v21, @"kCMWorkoutDataCodingKeyAppId");
    }

    else
    {
      v23 = 0;
    }

    v4->fAppId = v23;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_sessionId(self, v8, v9);
  v13 = objc_msgSend_type(self, v11, v12);
  v16 = objc_msgSend_locationType(self, v14, v15);
  v19 = objc_msgSend_mode(self, v17, v18);
  started = objc_msgSend_startDate(self, v20, v21);
  v25 = objc_msgSend_endDate(self, v23, v24);
  v27 = objc_msgSend__initWithSessionId_type_locationType_mode_startDate_endDate_(v7, v26, v10, v13, v16, v19, started, v25);
  v30 = objc_msgSend_appId(self, v28, v29);
  objc_msgSend_setAppId_(v27, v31, v30);
  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->fSessionId, @"kCMWorkoutDataCodingKeySessionId");
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->fType, @"kCMWorkoutDataCodingKeyType");
  objc_msgSend_encodeInteger_forKey_(a3, v6, self->fLocationType, @"kCMWorkoutDataCodingKeyLocationType");
  objc_msgSend_encodeInteger_forKey_(a3, v7, self->fMode, @"kCMWorkoutDataCodingKeyMode");
  objc_msgSend_encodeObject_forKey_(a3, v8, self->fStartDate, @"kCMWorkoutDataCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v9, self->fEndDate, @"kCMWorkoutDataCodingKeyEndDate");
  fAppId = self->fAppId;

  objc_msgSend_encodeObject_forKey_(a3, v10, fAppId, @"kCMWorkoutDataCodingKeyAppId");
}

+ (id)workoutName:(int64_t)a3
{
  if (a3 > 0x60)
  {
    return 0;
  }

  else
  {
    return off_1E7532F10[a3];
  }
}

+ (id)workoutLocationName:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unhandled workout location type";
  }

  else
  {
    return off_1E7533218[a3];
  }
}

+ (id)workoutModeName:(unint64_t)a3
{
  v3 = @"Unhandled workout mode";
  if (a3 == 1)
  {
    v3 = @"Extended";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Normal";
  }
}

+ (int64_t)workoutLocationTypeFromCMWorkoutType:(int64_t)a3
{
  if ((a3 - 4) > 0x3F)
  {
    return 0;
  }

  else
  {
    return qword_19B7B9170[a3 - 4];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_sessionId(self, v6, v7);
  v11 = objc_msgSend_type(self, v9, v10);
  v13 = objc_msgSend_workoutName_(CMWorkout, v12, v11);
  v16 = objc_msgSend_locationType(self, v14, v15);
  v18 = objc_msgSend_workoutLocationName_(CMWorkout, v17, v16);
  v21 = objc_msgSend_mode(self, v19, v20);
  v23 = objc_msgSend_workoutModeName_(CMWorkout, v22, v21);
  started = objc_msgSend_startDate(self, v24, v25);
  v29 = objc_msgSend_endDate(self, v27, v28);
  v32 = objc_msgSend_appId(self, v30, v31);
  return objc_msgSend_stringWithFormat_(v3, v33, @"%@, <sessionId %@, type, %@, locationType, %@, mode, %@, startDate, %@, endDate, %@, id, %@>", v5, v8, v13, v18, v23, started, v29, v32);
}

@end