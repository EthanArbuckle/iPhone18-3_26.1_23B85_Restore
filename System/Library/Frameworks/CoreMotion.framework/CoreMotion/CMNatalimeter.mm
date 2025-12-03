@interface CMNatalimeter
+ (BOOL)isNatalimeterAvailable;
+ (BOOL)resetCalibrationDataWithError:(id *)error;
+ (BOOL)setUserInfo:(id)info error:(id *)error;
+ (BOOL)setUserProfile:(id)profile error:(id *)error;
+ (double)computeTimeToActiveCalories:(id)calories user:(id)user workoutType:(int64_t)type;
+ (id)computeRestingCaloriesAtRate:(unint64_t)rate user:(id)user duration:(double)duration;
+ (id)defaultUserProfile;
+ (id)userProfile;
- (CMNatalimeter)init;
- (void)dealloc;
- (void)queryAbsoluteNatalimetryDataSinceDataRecord:(id)record withHandler:(id)handler;
- (void)queryAbsoluteNatalimetryDataSinceRecord:(int64_t)record withHandler:(id)handler;
- (void)startAbsoluteNatalimetryDataUpdatesWithHandler:(id)handler;
- (void)stopAbsoluteNatalimetryDataUpdates;
@end

@implementation CMNatalimeter

- (CMNatalimeter)init
{
  v4.receiver = self;
  v4.super_class = CMNatalimeter;
  v2 = [(CMNatalimeter *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMNatalimeterInternal);
  }

  return v2;
}

- (void)dealloc
{
  fInternalQueue = self->_internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B684F60;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);

  v4.receiver = self;
  v4.super_class = CMNatalimeter;
  [(CMNatalimeter *)&v4 dealloc];
}

+ (id)userProfile
{
  v3 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  sub_19B686CD4();
}

+ (id)defaultUserProfile
{
  v5[6] = *MEMORY[0x1E69E9840];
  v4[0] = @"CMNatalimeterSetUserHeightMeter";
  v4[1] = @"CMNatalimeterSetUserWeightKG";
  v5[0] = &unk_1F0E6A708;
  v5[1] = &unk_1F0E6A718;
  v4[2] = @"CMNatalimeterSetUserAgeYr";
  v4[3] = @"CMNatalimeterSetUserBiologicalSex";
  v5[2] = &unk_1F0E6A728;
  v5[3] = &unk_1F0E6A618;
  v4[4] = @"CMNatalimeterSetUserCondition";
  v4[5] = @"CMNatalimeterSetUserBetaBlockerUse";
  v5[4] = &unk_1F0E6A618;
  v5[5] = MEMORY[0x1E695E110];
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, v4, 6);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)setUserProfile:(id)profile error:(id *)error
{
  v6 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  objc_sync_enter(self);
  sub_19B686E08();
}

+ (BOOL)setUserInfo:(id)info error:(id *)error
{
  v41[6] = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_gender(info, a2, info);
  if (v7 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v7 == 0);
  }

  v40[0] = @"CMNatalimeterSetUserHeightMeter";
  v11 = MEMORY[0x1E696AD98];
  objc_msgSend_height(info, v8, v9);
  v41[0] = objc_msgSend_numberWithDouble_(v11, v12, v13);
  v40[1] = @"CMNatalimeterSetUserWeightKG";
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_weight(info, v15, v16);
  v41[1] = objc_msgSend_numberWithDouble_(v14, v17, v18);
  v40[2] = @"CMNatalimeterSetUserAgeYr";
  v19 = MEMORY[0x1E696AD98];
  objc_msgSend_age(info, v20, v21);
  v41[2] = objc_msgSend_numberWithDouble_(v19, v22, v23);
  v40[3] = @"CMNatalimeterSetUserBiologicalSex";
  v41[3] = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v24, v10);
  v40[4] = @"CMNatalimeterSetUserCondition";
  v25 = MEMORY[0x1E696AD98];
  v28 = objc_msgSend_condition(info, v26, v27);
  v41[4] = objc_msgSend_numberWithInteger_(v25, v29, v28);
  v40[5] = @"CMNatalimeterSetUserBetaBlockerUse";
  v30 = MEMORY[0x1E696AD98];
  v33 = objc_msgSend_betaBlockerUse(info, v31, v32);
  v41[5] = objc_msgSend_numberWithBool_(v30, v34, v33);
  v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v35, v41, v40, 6);
  result = objc_msgSend_setUserProfile_error_(self, v37, v36, error);
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)resetCalibrationDataWithError:(id *)error
{
  v4 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  sub_19B65BD10();
}

+ (BOOL)isNatalimeterAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  sub_19B421798();

  return objc_msgSend_featureAvailability_(CMMotionUtils, v3, "kCLConnectionMessageNatalimetryAvailable");
}

- (void)queryAbsoluteNatalimetryDataSinceRecord:(int64_t)record withHandler:(id)handler
{
  if (!handler)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, record);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMNatalimeter.mm", 417, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B685D68;
  v10[3] = &unk_1E7534030;
  v10[5] = handler;
  v10[6] = record;
  v10[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v10);
}

- (void)queryAbsoluteNatalimetryDataSinceDataRecord:(id)record withHandler:(id)handler
{
  if (!handler)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, record);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CMNatalimeter.mm", 425, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if (qword_1ED71D328 != -1)
  {
    dispatch_once(&qword_1ED71D328, &unk_1F0E27DE0);
  }

  if (qword_1ED71D320 == 3)
  {
    if (record)
    {
      v6 = objc_msgSend_sourceId(record, a2, record);
      v9 = objc_msgSend__internal(self, v7, v8);
      v12 = v9;
      if (v6)
      {

        MEMORY[0x1EEE66B58](v9, sel__queryAbsoluteNatalimetryDataSinceDataRecord_withHandler_, record);
        return;
      }

      v14 = objc_msgSend_recordId(record, v10, v11);
      v13 = v12;
    }

    else
    {
      v13 = objc_msgSend__internal(self, a2, record);
      v14 = 0;
    }

    MEMORY[0x1EEE66B58](v13, sel__queryAbsoluteNatalimetryDataSinceRecord_withHandler_, v14);
  }
}

- (void)startAbsoluteNatalimetryDataUpdatesWithHandler:(id)handler
{
  if (!handler)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CMNatalimeter.mm", 445, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B685FF0;
  v8[3] = &unk_1E7532B68;
  v8[4] = self;
  v8[5] = handler;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v8);
}

- (void)stopAbsoluteNatalimetryDataUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B6860A4;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

+ (id)computeRestingCaloriesAtRate:(unint64_t)rate user:(id)user duration:(double)duration
{
  if (!user)
  {
    v35 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, rate);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v36, a2, self, @"CMNatalimeter.mm", 465, @"Invalid parameter not satisfying: %@", @"userInfo");
  }

  v37 = xmmword_19B7BB380;
  v38 = unk_19B7BB390;
  *v39 = xmmword_19B7BB3A0;
  *&v39[12] = *(&xmmword_19B7BB3A0 + 12);
  if (!objc_msgSend_gender(user, a2, rate) || objc_msgSend_gender(user, v8, v9) == 1)
  {
    LODWORD(v37) = objc_msgSend_gender(user, v8, v9);
  }

  objc_msgSend_height(user, v8, v9);
  if (v12 > 0.0)
  {
    objc_msgSend_height(user, v10, v11);
    *&v13 = v13;
    v39[25] = 1;
    DWORD2(v37) = LODWORD(v13);
  }

  objc_msgSend_weight(user, v10, v11);
  if (v16 <= 0.0)
  {
    v18 = 68.0299988;
  }

  else
  {
    objc_msgSend_weight(user, v14, v15);
    *&v17 = v17;
    v39[26] = 1;
    HIDWORD(v37) = LODWORD(v17);
    v18 = *&v17;
  }

  objc_msgSend_age(user, v14, v15);
  if (v21 > 0.0)
  {
    objc_msgSend_age(user, v19, v20);
    *&v22 = v22;
    v39[24] = 1;
    DWORD1(v38) = LODWORD(v22);
  }

  if ((objc_msgSend_condition(user, v19, v20) & 0x8000000000000000) == 0 && objc_msgSend_condition(user, v23, v24) <= 6)
  {
    *&v39[8] = objc_msgSend_condition(user, v25, v26);
  }

  v27 = rate == 0;
  v28 = MEMORY[0x1E696AD98];
  v31 = v18 * sub_19B73FF78(&v37, v27) * duration * 1000.0 / 3600.0;

  return objc_msgSend_numberWithDouble_(v28, v29, v30, v31);
}

+ (double)computeTimeToActiveCalories:(id)calories user:(id)user workoutType:(int64_t)type
{
  v80 = *MEMORY[0x1E69E9840];
  if (!calories)
  {
    v57 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v57, v58, a2, self, @"CMNatalimeter.mm", 490, @"Invalid parameter not satisfying: %@", @"activeCalories");
    if (user)
    {
      goto LABEL_3;
    }

LABEL_74:
    v59 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, calories);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v59, v60, a2, self, @"CMNatalimeter.mm", 491, @"Invalid parameter not satisfying: %@", @"userInfo");
    goto LABEL_3;
  }

  if (!user)
  {
    goto LABEL_74;
  }

LABEL_3:
  v61 = xmmword_19B7BB380;
  v62 = unk_19B7BB390;
  *v63 = xmmword_19B7BB3A0;
  *&v63[12] = *(&xmmword_19B7BB3A0 + 12);
  if (!objc_msgSend_gender(user, a2, calories) || objc_msgSend_gender(user, v10, v11) == 1)
  {
    LODWORD(v61) = objc_msgSend_gender(user, v10, v11);
  }

  objc_msgSend_height(user, v10, v11);
  if (v14 <= 0.0)
  {
    v16 = 1.70000005;
  }

  else
  {
    objc_msgSend_height(user, v12, v13);
    *&v15 = v15;
    v63[25] = 1;
    DWORD2(v61) = LODWORD(v15);
    v16 = *&v15;
  }

  objc_msgSend_weight(user, v12, v13);
  if (v19 <= 0.0)
  {
    v21 = 188830.322;
    v22 = 68.0299988;
  }

  else
  {
    objc_msgSend_weight(user, v17, v18);
    *&v20 = v20;
    v63[26] = 1;
    HIDWORD(v61) = LODWORD(v20);
    v21 = (*&v20 * 2.7757) * 1000.0;
    v22 = *&v20;
  }

  objc_msgSend_age(user, v17, v18);
  v25 = 30.0;
  if (v26 > 0.0)
  {
    objc_msgSend_age(user, v23, v24);
    v25 = v27;
    v63[24] = 1;
    *(&v62 + 1) = v25;
  }

  if ((objc_msgSend_condition(user, v23, v24) & 0x8000000000000000) == 0 && objc_msgSend_condition(user, v28, v29) <= 6)
  {
    *&v63[8] = objc_msgSend_condition(user, v28, v30);
  }

  v31 = objc_msgSend_CLMotionActivityTypeFromCMWorkoutType_(CMWorkout, v28, type);
  objc_msgSend_doubleValue(calories, v32, v33);
  v35 = v34;
  v36 = 0.0;
  if (v31 > 17149)
  {
    if (v31 == 90603)
    {
      goto LABEL_32;
    }

    if (v31 != 17150)
    {
      goto LABEL_44;
    }
  }

  else if (v31 != 4)
  {
    if (v31 != 11805)
    {
      goto LABEL_44;
    }

LABEL_32:
    v36 = v21;
    goto LABEL_44;
  }

  v37 = dbl_19B7BB370[v25 <= 13.0];
  v38 = fmin(v16 * 0.5 + 0.225, 1.0);
  if (v37 < v38)
  {
    v37 = v38;
  }

  v39 = fmax(fmin(v25 * -0.01 + 1.6, 1.0), 0.7);
  v40 = fmax(fmin(v22 / (v16 * v16) * -0.0125 + 1.425, 1.0), 0.9);
  if (v39 >= v37)
  {
    v41 = v37;
  }

  else
  {
    v41 = v39;
  }

  if (v40 < v41)
  {
    v41 = v40;
  }

  if (v41 == 1.0)
  {
    v42 = 3.2973;
  }

  else
  {
    v43 = fmax(v39 * v37 * v40, 0.9);
    if (v43 >= v41)
    {
      v43 = v41;
    }

    v42 = v43 * 3.2973001;
    v44 = 0.0;
    if (v42 < 1.0)
    {
      goto LABEL_39;
    }
  }

  v45 = ((v42 * -0.793) + ((v42 * 0.3564) * v42)) + 3.142;
  if (v45 > 8.0)
  {
    v45 = 8.0;
  }

  v44 = v45;
LABEL_39:
  v46 = 2.19999981;
  if (v44 >= 2.19999981)
  {
    v46 = v44;
  }

  if (v46 > 4.40208912)
  {
    v46 = 4.40208912;
  }

  v36 = v46 * v22 * 1000.0;
LABEL_44:
  v47 = v36 + v22 * sub_19B73FF78(&v61, (v31 < 0xC) & (0xC07u >> v31)) * 3600.0 * -1000.0 / 3600.0;
  if (v47 <= 0.0)
  {
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    v49 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218243;
      v73 = 0.0;
      v74 = 2113;
      v75 = *&user;
      _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_ERROR, "TimeToActiveCalories is negative: timeToActiveCalories, %f, %{private}@", buf, 0x16u);
    }

    v50 = sub_19B420058();
    if ((*(v50 + 160) & 0x80000000) == 0 || (*(v50 + 164) & 0x80000000) == 0 || (*(v50 + 168) & 0x80000000) == 0 || (v48 = 0.0, *(v50 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
      }

      v64 = 134218243;
      v65 = 0.0;
      v66 = 2113;
      v67 = *&user;
      v51 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMNatalimeter computeTimeToActiveCalories:user:workoutType:]", "CoreLocation: %s\n", v51);
      if (v51 != buf)
      {
        free(v51);
      }

      v48 = 0.0;
    }
  }

  else
  {
    v48 = v35 * 3600.0 / v47;
  }

  if (qword_1EAFE2808 != -1)
  {
    dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
  }

  v52 = qword_1EAFE2830;
  if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_INFO))
  {
    *buf = 134218755;
    v73 = v48;
    v74 = 2048;
    v75 = v35;
    v76 = 2048;
    typeCopy = type;
    v78 = 2113;
    userCopy = user;
    _os_log_impl(&dword_19B41C000, v52, OS_LOG_TYPE_INFO, "TimeToActiveCalories, %f, target, %f, workoutType, %ld, %{private}@", buf, 0x2Au);
  }

  v53 = sub_19B420058();
  if (*(v53 + 160) > 1 || *(v53 + 164) > 1 || *(v53 + 168) > 1 || *(v53 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3AAE8);
    }

    v64 = 134218755;
    v65 = v48;
    v66 = 2048;
    v67 = v35;
    v68 = 2048;
    typeCopy2 = type;
    v70 = 2113;
    userCopy2 = user;
    v54 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMNatalimeter computeTimeToActiveCalories:user:workoutType:]", "CoreLocation: %s\n", v54);
    if (v54 != buf)
    {
      free(v54);
    }
  }

  v55 = *MEMORY[0x1E69E9840];
  return v48;
}

@end