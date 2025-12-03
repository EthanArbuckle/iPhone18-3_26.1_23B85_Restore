@interface CMWorkout
+ (BOOL)isAvailable;
+ (BOOL)workoutIsTypePedestrian:(int64_t)pedestrian;
+ (id)workoutLocationName:(int64_t)name;
+ (id)workoutModeName:(unint64_t)name;
+ (id)workoutName:(int64_t)name;
+ (int)CLMotionActivityTypeFromCMWorkoutType:(int64_t)type;
+ (int64_t)CMSwimWorkoutLocationFromCMWorkoutLocationType:(int64_t)type;
+ (int64_t)CMWorkoutLocationTypeFromCMSwimWorkoutLocation:(int64_t)location;
+ (int64_t)CMWorkoutTypeFromCLMotionActivityType:(int)type;
+ (int64_t)workoutLocationTypeFromCMWorkoutType:(int64_t)type;
- (BOOL)isSameWorkout:(id)workout;
- (CMWorkout)initWithCoder:(id)coder;
- (CMWorkout)initWithSessionId:(id)id type:(int64_t)type;
- (CMWorkout)initWithSessionId:(id)id type:(int64_t)type locationType:(int64_t)locationType;
- (CMWorkout)initWithSessionId:(id)id type:(int64_t)type locationType:(int64_t)locationType mode:(unint64_t)mode;
- (CMWorkout)initWithSessionId:(id)id type:(int64_t)type locationType:(int64_t)locationType mode:(unint64_t)mode startDate:(id)date endDate:(id)endDate;
- (id)_initWithSessionId:(id)id type:(int64_t)type locationType:(int64_t)locationType mode:(unint64_t)mode startDate:(id)date endDate:(id)endDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMWorkout

+ (int)CLMotionActivityTypeFromCMWorkoutType:(int64_t)type
{
  if ((type - 1) > 0x5E)
  {
    return 0;
  }

  else
  {
    return dword_19B7B8FF0[type - 1];
  }
}

+ (int64_t)CMWorkoutTypeFromCLMotionActivityType:(int)type
{
  result = 0;
  if (type > 15229)
  {
    if (type > 15710)
    {
      if (type > 19089)
      {
        if (type > 90602)
        {
          v13 = 515651;
          v43 = 37;
          if (type != 519150)
          {
            v43 = 0;
          }

          if (type == 515652)
          {
            v15 = 53;
          }

          else
          {
            v15 = v43;
          }

          v16 = 90603;
          v17 = 21;
          v18 = type == 515621;
          v19 = 60;
        }

        else
        {
          v13 = 90120;
          v23 = 66;
          if (type != 90122)
          {
            v23 = 0;
          }

          if (type == 90121)
          {
            v15 = 67;
          }

          else
          {
            v15 = v23;
          }

          v16 = 19090;
          v17 = 36;
          v18 = type == 19150;
          v19 = 23;
        }

        goto LABEL_130;
      }

      v13 = 18049;
      v37 = 47;
      if (type != 19030)
      {
        v37 = 0;
      }

      if (type == 18240)
      {
        v38 = 19;
      }

      else
      {
        v38 = v37;
      }

      v39 = 38;
      if (type != 18100)
      {
        v39 = 0;
      }

      if (type == 18050)
      {
        v40 = 35;
      }

      else
      {
        v40 = v39;
      }

      if (type <= 18239)
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
      v30 = type == 17150;
      v31 = 16;
    }

    else
    {
      if (type > 15559)
      {
        if (type > 15651)
        {
          v13 = 15669;
          v41 = 51;
          if (type != 15675)
          {
            v41 = 0;
          }

          if (type == 15670)
          {
            v15 = 31;
          }

          else
          {
            v15 = v41;
          }

          v16 = 15652;
          v17 = 56;
          v18 = type == 15660;
          v19 = 62;
        }

        else
        {
          v13 = 15609;
          v14 = 59;
          if (type != 15620)
          {
            v14 = 0;
          }

          if (type == 15610)
          {
            v15 = 39;
          }

          else
          {
            v15 = v14;
          }

          v16 = 15560;
          v17 = 44;
          v18 = type == 15592;
          v19 = 46;
        }

LABEL_130:
        if (!v18)
        {
          v19 = 0;
        }

LABEL_132:
        if (type == v16)
        {
          v21 = v17;
        }

        else
        {
          v21 = v19;
        }

LABEL_135:
        if (type <= v13)
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
      if (type != 15460)
      {
        v24 = 0;
      }

      if (type == 15360)
      {
        v25 = 48;
      }

      else
      {
        v25 = v24;
      }

      v26 = 49;
      if (type != 15350)
      {
        v26 = 0;
      }

      if (type == 15330)
      {
        v27 = 57;
      }

      else
      {
        v27 = v26;
      }

      if (type <= 15359)
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
      v30 = type == 15255;
      v31 = 27;
    }

    if (!v30)
    {
      v31 = 0;
    }

    if (type == v28)
    {
      v19 = v29;
    }

    else
    {
      v19 = v31;
    }

    goto LABEL_132;
  }

  if (type > 2060)
  {
    if (type <= 3014)
    {
      v4 = 32;
      v32 = 6;
      if (type != 2150)
      {
        v32 = 0;
      }

      if (type != 2105)
      {
        v4 = v32;
      }

      v33 = 12;
      v34 = 29;
      if (type != 2101)
      {
        v34 = 0;
      }

      if (type != 2071)
      {
        v33 = v34;
      }

      if (type <= 2104)
      {
        v4 = v33;
      }

      v8 = 8;
      v35 = 11;
      v36 = 63;
      if (type != 2068)
      {
        v36 = 0;
      }

      if (type != 2065)
      {
        v35 = v36;
      }

      if (type != 2061)
      {
        v8 = v35;
      }

      v12 = type <= 2070;
      goto LABEL_90;
    }

    if (type <= 15054)
    {
      v13 = 12149;
      v20 = 52;
      if (type != 15030)
      {
        v20 = 0;
      }

      if (type == 12150)
      {
        v15 = 18;
      }

      else
      {
        v15 = v20;
      }

      v21 = 7;
      v22 = 65;
      if (type != 3016)
      {
        v22 = 0;
      }

      if (type != 3015)
      {
        v21 = v22;
      }

      goto LABEL_135;
    }

    v13 = 15109;
    v42 = 61;
    if (type != 15150)
    {
      v42 = 0;
    }

    if (type == 15110)
    {
      v15 = 34;
    }

    else
    {
      v15 = v42;
    }

    v16 = 15055;
    v17 = 50;
    v18 = type == 15100;
    v19 = 64;
    goto LABEL_130;
  }

  if (type > 63)
  {
    v4 = 30;
    v5 = 9;
    if (type != 2048)
    {
      v5 = 0;
    }

    if (type != 2024)
    {
      v4 = v5;
    }

    v6 = 22;
    v7 = 28;
    if (type != 2022)
    {
      v7 = 0;
    }

    if (type != 2020)
    {
      v6 = v7;
    }

    if (type <= 2023)
    {
      v4 = v6;
    }

    v8 = 54;
    v9 = 5;
    if (type != 2010)
    {
      v9 = 0;
    }

    if (type != 66)
    {
      v8 = v9;
    }

    v10 = 40;
    v11 = 41;
    if (type != 65)
    {
      v11 = 0;
    }

    if (type != 64)
    {
      v10 = v11;
    }

    if (type <= 65)
    {
      v8 = v10;
    }

    v12 = type <= 2019;
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

  if (type > 7)
  {
    if (type <= 61)
    {
      if (type == 8)
      {
        return 17;
      }

      if (type != 41)
      {
        return result;
      }

      return 15;
    }

    if (type != 62)
    {
      return 33;
    }

    return 14;
  }

  switch(type)
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

+ (int64_t)CMWorkoutLocationTypeFromCMSwimWorkoutLocation:(int64_t)location
{
  if (location >= 2)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, location);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CMWorkout.mm", 463, @"Invalid parameter not satisfying: %@", @"cmSwimWorkoutLocation == kCMSwimWorkoutLocationPool || cmSwimWorkoutLocation == kCMSwimWorkoutLocationOpenWater");
  }

  if (location)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (int64_t)CMSwimWorkoutLocationFromCMWorkoutLocationType:(int64_t)type
{
  if ((type - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, type);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CMWorkout.mm", 470, @"Invalid parameter not satisfying: %@", @"cmWorkoutLocationType == kCMWorkoutLocationTypeIndoor || cmWorkoutLocationType == kCMWorkoutLocationTypeOutdoor");
  }

  return type != 1;
}

+ (BOOL)workoutIsTypePedestrian:(int64_t)pedestrian
{
  if (objc_msgSend_workoutIsTypeWalking_(self, a2, pedestrian))
  {
    return 1;
  }

  result = objc_msgSend_workoutIsTypeRunning_(self, v5, pedestrian);
  if (pedestrian == 24)
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

- (CMWorkout)initWithSessionId:(id)id type:(int64_t)type
{
  if (!id)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CMWorkout.mm", 510, @"Invalid parameter not satisfying: %@", @"sessionId");
  }

  if (type >= 96)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, id);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMWorkout.mm", 511, @"Invalid parameter not satisfying: %@", @"type < kCMWorkoutTypeMax");
  }

  v16.receiver = self;
  v16.super_class = CMWorkout;
  v8 = [(CMWorkout *)&v16 init];
  if (v8)
  {
    v8->fSessionId = id;
    v8->fType = type;
    v10 = objc_msgSend_workoutLocationTypeFromCMWorkoutType_(CMWorkout, v9, type);
    v8->fIsUserInitiated = 1;
    v8->fStartDate = 0;
    v8->fEndDate = 0;
    v8->fLocationType = v10;
    v8->fMode = 0;
    v8->fAppId = 0;
  }

  return v8;
}

- (CMWorkout)initWithSessionId:(id)id type:(int64_t)type locationType:(int64_t)locationType
{
  if (locationType >= 4)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, id);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CMWorkout.mm", 529, @"Invalid parameter not satisfying: %@", @"locationType < kCMWorkoutLocationTypeMax");
  }

  result = objc_msgSend_initWithSessionId_type_(self, a2, id, type);
  if (result)
  {
    result->fLocationType = locationType;
  }

  return result;
}

- (CMWorkout)initWithSessionId:(id)id type:(int64_t)type locationType:(int64_t)locationType mode:(unint64_t)mode
{
  if (mode == 1 && (objc_msgSend_workoutIsSupportedForLowPower_(CMWorkout, a2, type) & 1) == 0)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, id);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CMWorkout.mm", 542, @"Invalid parameter not satisfying: %@", @"mode != CMWorkoutModeExtended || [CMWorkout workoutIsSupportedForLowPower:type]");
  }

  if (locationType >= 4)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, id);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CMWorkout.mm", 544, @"Invalid parameter not satisfying: %@", @"locationType < kCMWorkoutLocationTypeMax");
  }

  result = objc_msgSend_initWithSessionId_type_locationType_(self, a2, id, type, locationType);
  if (result)
  {
    result->fMode = mode;
  }

  return result;
}

- (id)_initWithSessionId:(id)id type:(int64_t)type locationType:(int64_t)locationType mode:(unint64_t)mode startDate:(id)date endDate:(id)endDate
{
  v10 = objc_msgSend_initWithSessionId_type_locationType_mode_(self, a2, id, type, locationType, mode);
  if (v10)
  {
    *(v10 + 32) = date;
    *(v10 + 40) = endDate;
    *(v10 + 48) = 0;
  }

  return v10;
}

- (CMWorkout)initWithSessionId:(id)id type:(int64_t)type locationType:(int64_t)locationType mode:(unint64_t)mode startDate:(id)date endDate:(id)endDate
{
  if (date)
  {
    if (endDate)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, id);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CMWorkout.mm", 573, @"Invalid parameter not satisfying: %@", @"startDate");
    if (endDate)
    {
      goto LABEL_3;
    }
  }

  v19 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, id);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CMWorkout.mm", 574, @"Invalid parameter not satisfying: %@", @"endDate");
LABEL_3:

  return objc_msgSend__initWithSessionId_type_locationType_mode_startDate_endDate_(self, a2, id, type, locationType, mode, date, endDate);
}

- (BOOL)isSameWorkout:(id)workout
{
  if (!workout)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CMWorkout.mm", 600, @"Invalid parameter not satisfying: %@", @"workout");
  }

  v5 = objc_msgSend_sessionId(self, a2, workout);
  v8 = objc_msgSend_sessionId(workout, v6, v7);
  isEqual = objc_msgSend_isEqual_(v5, v9, v8);
  if (isEqual)
  {
    v13 = objc_msgSend_type(self, v11, v12);
    LOBYTE(isEqual) = v13 == objc_msgSend_type(workout, v14, v15);
  }

  return isEqual;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMWorkout;
  [(CMWorkout *)&v3 dealloc];
}

- (CMWorkout)initWithCoder:(id)coder
{
  v25.receiver = self;
  v25.super_class = CMWorkout;
  v4 = [(CMWorkout *)&v25 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->fSessionId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCMWorkoutDataCodingKeySessionId");
    v4->fType = objc_msgSend_decodeIntegerForKey_(coder, v7, @"kCMWorkoutDataCodingKeyType");
    if (objc_msgSend_containsValueForKey_(coder, v8, @"kCMWorkoutDataCodingKeyLocationType"))
    {
      v10 = objc_msgSend_decodeIntegerForKey_(coder, v9, @"kCMWorkoutDataCodingKeyLocationType");
    }

    else
    {
      v10 = 0;
    }

    v4->fLocationType = v10;
    if (objc_msgSend_containsValueForKey_(coder, v9, @"kCMWorkoutDataCodingKeyMode"))
    {
      v12 = objc_msgSend_decodeIntegerForKey_(coder, v11, @"kCMWorkoutDataCodingKeyMode");
    }

    else
    {
      v12 = 0;
    }

    v4->fMode = v12;
    if (objc_msgSend_containsValueForKey_(coder, v11, @"kCMWorkoutDataCodingKeyStartDate"))
    {
      v14 = objc_opt_class();
      v16 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v15, v14, @"kCMWorkoutDataCodingKeyStartDate");
    }

    else
    {
      v16 = 0;
    }

    v4->fStartDate = v16;
    if (objc_msgSend_containsValueForKey_(coder, v13, @"kCMWorkoutDataCodingKeyEndDate"))
    {
      v18 = objc_opt_class();
      v20 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v19, v18, @"kCMWorkoutDataCodingKeyEndDate");
    }

    else
    {
      v20 = 0;
    }

    v4->fEndDate = v20;
    if (objc_msgSend_containsValueForKey_(coder, v17, @"kCMWorkoutDataCodingKeyAppId"))
    {
      v21 = objc_opt_class();
      v23 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v22, v21, @"kCMWorkoutDataCodingKeyAppId");
    }

    else
    {
      v23 = 0;
    }

    v4->fAppId = v23;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
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

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->fSessionId, @"kCMWorkoutDataCodingKeySessionId");
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->fType, @"kCMWorkoutDataCodingKeyType");
  objc_msgSend_encodeInteger_forKey_(coder, v6, self->fLocationType, @"kCMWorkoutDataCodingKeyLocationType");
  objc_msgSend_encodeInteger_forKey_(coder, v7, self->fMode, @"kCMWorkoutDataCodingKeyMode");
  objc_msgSend_encodeObject_forKey_(coder, v8, self->fStartDate, @"kCMWorkoutDataCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(coder, v9, self->fEndDate, @"kCMWorkoutDataCodingKeyEndDate");
  fAppId = self->fAppId;

  objc_msgSend_encodeObject_forKey_(coder, v10, fAppId, @"kCMWorkoutDataCodingKeyAppId");
}

+ (id)workoutName:(int64_t)name
{
  if (name > 0x60)
  {
    return 0;
  }

  else
  {
    return off_1E7532F10[name];
  }
}

+ (id)workoutLocationName:(int64_t)name
{
  if (name > 3)
  {
    return @"Unhandled workout location type";
  }

  else
  {
    return off_1E7533218[name];
  }
}

+ (id)workoutModeName:(unint64_t)name
{
  v3 = @"Unhandled workout mode";
  if (name == 1)
  {
    v3 = @"Extended";
  }

  if (name)
  {
    return v3;
  }

  else
  {
    return @"Normal";
  }
}

+ (int64_t)workoutLocationTypeFromCMWorkoutType:(int64_t)type
{
  if ((type - 4) > 0x3F)
  {
    return 0;
  }

  else
  {
    return qword_19B7B9170[type - 4];
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