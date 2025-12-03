@interface INStartWorkoutIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INStartWorkoutIntentResponse)initWithBackingStore:(id)store;
- (INStartWorkoutIntentResponse)initWithCode:(INStartWorkoutIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INStartWorkoutIntentResponse)initWithCoder:(id)coder;
- (INStartWorkoutIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INStartWorkoutIntentResponse

- (id)_dictionaryRepresentation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"code";
  code = [(INStartWorkoutIntentResponse *)self code];
  v3 = code;
  if (code < (INStartWorkoutIntentResponseCodeSuccess|INStartWorkoutIntentResponseCodeReady))
  {
    null = off_1E727E0F0[code];
    v5 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v5 = 0;
  }

  v10[0] = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  if (v3 >= 9)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INStartWorkoutIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INStartWorkoutIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INStartWorkoutIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INStartWorkoutIntentResponseCodeSuccess"])
  {
    v4 = 8;
  }

  if ([nameCopy isEqualToString:@"INStartWorkoutIntentResponseCodeHandleInApp"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INStartWorkoutIntentResponseCodeFailure"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INStartWorkoutIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INStartWorkoutIntentResponseCodeFailureOngoingWorkout"])
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INStartWorkoutIntentResponseCodeFailureNoMatchingWorkout"];

  if (v6)
  {
    return 6;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INStartWorkoutIntentResponse *)self code];
  if ((code - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5E3B0[code - 1];
  }
}

- (INStartWorkoutIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INStartWorkoutIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INStartWorkoutIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INStartWorkoutIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INStartWorkoutIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INStartWorkoutIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INStartWorkoutIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INStartWorkoutIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INStartWorkoutIntentResponse)initWithCode:(INStartWorkoutIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INStartWorkoutIntentResponseCodeSuccess)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727E0F0[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INStartWorkoutIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INStartWorkoutIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 6)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (code == 5)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 7)
  {
    return 3;
  }

  else
  {
    return dword_18EE5E390[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 2;
  if (type != 4)
  {
    v5 = type == 5;
  }

  v6 = 8;
  v7 = 5;
  v8 = 3;
  if (requested)
  {
    v8 = 4;
  }

  if (code == 1)
  {
    v8 = 6;
  }

  if (code)
  {
    v7 = v8;
  }

  if (type != 1)
  {
    v7 = 0;
  }

  if (type)
  {
    v6 = v7;
  }

  if (type <= 3)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end