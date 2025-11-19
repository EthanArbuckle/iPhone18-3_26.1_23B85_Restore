@interface INJoinCallIntentResponse
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INJoinCallIntentResponse)initWithBackingStore:(id)a3;
- (INJoinCallIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INJoinCallIntentResponse)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INJoinCallIntentResponse

- (id)_dictionaryRepresentation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"code";
  v2 = [(INJoinCallIntentResponse *)self code];
  v3 = v2;
  if (v2 < 7)
  {
    v4 = off_1E7288850[v2];
    v5 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = 0;
  }

  v10[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  if (v3 >= 7)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INJoinCallIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INJoinCallIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INJoinCallIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INJoinCallIntentResponseCodeInProgress"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INJoinCallIntentResponseCodeSuccess"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INJoinCallIntentResponseCodeFailure"])
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INJoinCallIntentResponseCodeFailureRequiringAppLaunch"];

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
  result = [(INJoinCallIntentResponse *)self code];
  if ((result - 1) >= 6)
  {
    return 0;
  }

  return result;
}

- (INJoinCallIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INJoinCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INJoinCallIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INJoinCallIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INJoinCallIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INJoinCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INJoinCallIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INJoinCallIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 6)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7288850[a3];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INJoinCallIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INJoinCallIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FD98[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 3;
  v6 = 2;
  if (a3 != 4)
  {
    v6 = a3 == 5;
  }

  if (a3 != 2)
  {
    v5 = v6;
  }

  v7 = 4;
  v8 = 5;
  if (a5)
  {
    v8 = 6;
  }

  if (a3 != 1)
  {
    v8 = 0;
  }

  if (a3)
  {
    v7 = v8;
  }

  if (a3 <= 1)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

@end