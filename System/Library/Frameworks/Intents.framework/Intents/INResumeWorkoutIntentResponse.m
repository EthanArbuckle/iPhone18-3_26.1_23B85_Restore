@interface INResumeWorkoutIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INResumeWorkoutIntentResponse)initWithBackingStore:(id)a3;
- (INResumeWorkoutIntentResponse)initWithCode:(INResumeWorkoutIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INResumeWorkoutIntentResponse)initWithCoder:(id)a3;
- (INResumeWorkoutIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INResumeWorkoutIntentResponse

- (id)_dictionaryRepresentation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"code";
  v2 = [(INResumeWorkoutIntentResponse *)self code];
  v3 = v2;
  if (v2 < 8)
  {
    v4 = off_1E727F040[v2];
    v5 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = 0;
  }

  v10[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  if (v3 >= 8)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INResumeWorkoutIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INResumeWorkoutIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INResumeWorkoutIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INResumeWorkoutIntentResponseCodeSuccess"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INResumeWorkoutIntentResponseCodeHandleInApp"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INResumeWorkoutIntentResponseCodeFailure"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INResumeWorkoutIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INResumeWorkoutIntentResponseCodeFailureNoMatchingWorkout"];

  if (v6)
  {
    return 5;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INResumeWorkoutIntentResponse *)self code];
  if ((v2 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F0B8[v2 - 1];
  }
}

- (INResumeWorkoutIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INResumeWorkoutIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INResumeWorkoutIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INResumeWorkoutIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INResumeWorkoutIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INResumeWorkoutIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INResumeWorkoutIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INResumeWorkoutIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INResumeWorkoutIntentResponse)initWithCode:(INResumeWorkoutIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INResumeWorkoutIntentResponseCodeSuccess)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727F040[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INResumeWorkoutIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INResumeWorkoutIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if (a3 == 5)
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F09C[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 2;
  if (a3 != 4)
  {
    v5 = a3 == 5;
  }

  v6 = 7;
  v7 = 3;
  if (a5)
  {
    v7 = 4;
  }

  if (!a4)
  {
    v7 = 5;
  }

  if (a3 != 1)
  {
    v7 = 0;
  }

  if (a3)
  {
    v6 = v7;
  }

  if (a3 <= 3)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end