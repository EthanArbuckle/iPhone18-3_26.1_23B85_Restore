@interface CMFitnessJuniorGoals
+ (BOOL)isAvailable;
+ (unint64_t)recommendedMoveMinutesForLevel:(int64_t)a3 userInfo:(id)a4 error:(id *)a5;
- (CMFitnessJuniorGoals)init;
- (void)dealloc;
@end

@implementation CMFitnessJuniorGoals

- (CMFitnessJuniorGoals)init
{
  v3.receiver = self;
  v3.super_class = CMFitnessJuniorGoals;
  return [(CMFitnessJuniorGoals *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMFitnessJuniorGoals;
  [(CMFitnessJuniorGoals *)&v2 dealloc];
}

+ (BOOL)isAvailable
{
  sub_19B421798();
  sub_19B421798();

  return sub_19B43B6EC();
}

+ (unint64_t)recommendedMoveMinutesForLevel:(int64_t)a3 userInfo:(id)a4 error:(id *)a5
{
  v42 = *MEMORY[0x1E69E9840];
  if (a3 >= 3)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, a1, @"CMFitnessJuniorGoals.mm", 40, @"CMFitnessJuniorGoalLevel must be low, medium, or high");
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_27:
    v34 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v34, v35, a2, a1, @"CMFitnessJuniorGoals.mm", 41, @"userInfo must not be empty.");
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_27;
  }

LABEL_3:
  objc_msgSend_age(a4, a2, a3);
  if (v12 < 5.0 || (objc_msgSend_age(a4, v10, v11), v13 >= 13.0))
  {
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E29AA0);
    }

    v14 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_ERROR))
    {
      objc_msgSend_age(a4, v15, v16);
      *buf = 134283521;
      v41 = v17;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "FitnessJuniorGoals, Unexpected age input: %{private}f yrs. Fitness junior move minute goals are designed for user age interval [5.0, 13.0) yrs.", buf, 0xCu);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E29AA0);
      }

      objc_msgSend_age(a4, v20, v21);
      v38 = 134283521;
      v39 = v22;
      v23 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMFitnessJuniorGoals recommendedMoveMinutesForLevel:userInfo:error:]", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    if (a5)
    {
      v24 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x1E696AAE8], v19, @"com.apple.coremotion");
      v36 = *MEMORY[0x1E696A578];
      v37 = objc_msgSend_localizedStringForKey_value_table_(v24, v25, @"Unexpected age input. Fitness junior move minute goals are designed for user age interval [5.0, 13.0 yrs."), &stru_1F0E3D7A0, 0);
      v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, &v37, &v36, 1);
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v28, @"CMErrorDomain", 107, v27);
    }
  }

  v29 = 90;
  if (a3 == 2)
  {
    v29 = 120;
  }

  if (a3)
  {
    result = v29;
  }

  else
  {
    result = 60;
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
}

@end