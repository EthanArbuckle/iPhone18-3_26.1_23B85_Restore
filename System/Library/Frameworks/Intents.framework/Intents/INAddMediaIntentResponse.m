@interface INAddMediaIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INAddMediaIntentResponse)initWithBackingStore:(id)a3;
- (INAddMediaIntentResponse)initWithCode:(INAddMediaIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INAddMediaIntentResponse)initWithCoder:(id)a3;
- (INAddMediaIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INAddMediaIntentResponse

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"code";
  v2 = INAddMediaIntentResponseCodeGetName([(INAddMediaIntentResponse *)self code]);
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!v2)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INAddMediaIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INAddMediaIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INAddMediaIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INAddMediaIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INAddMediaIntentResponseCodeHandleInApp"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INAddMediaIntentResponseCodeFailure"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INAddMediaIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INAddMediaIntentResponseCodeFailureAlreadyInLibrary"];

  if (v6)
  {
    return 1000;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INAddMediaIntentResponse *)self code];
  v3 = 5;
  if (v2 != 1000)
  {
    v3 = 0;
  }

  if (v2 == INAddMediaIntentResponseCodeFailureRequiringAppLaunch)
  {
    v3 = 6;
  }

  v4 = 7;
  if (v2 == INAddMediaIntentResponseCodeFailure)
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  if (v2 != INAddMediaIntentResponseCodeHandleInApp)
  {
    v4 = v5;
  }

  if (v2 <= INAddMediaIntentResponseCodeFailure)
  {
    v3 = v4;
  }

  v6 = 3;
  v7 = 4;
  if (v2 != INAddMediaIntentResponseCodeSuccess)
  {
    v7 = 0;
  }

  if (v2 != INAddMediaIntentResponseCodeInProgress)
  {
    v6 = v7;
  }

  if (v2 == INAddMediaIntentResponseCodeReady)
  {
    v6 = 1;
  }

  if (v2 <= INAddMediaIntentResponseCodeSuccess)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

- (INAddMediaIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INAddMediaIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INAddMediaIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INAddMediaIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INAddMediaIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INAddMediaIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INAddMediaIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INAddMediaIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INAddMediaIntentResponse)initWithCode:(INAddMediaIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = INAddMediaIntentResponseCodeGetName(code);
    *buf = 136315906;
    v15 = "[INAddMediaIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    v17 = code;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INAddMediaIntentResponse;
  v10 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:v6];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if (a3 == 1000)
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  result = 3;
  if (a3 <= 3)
  {
    if (a3 == 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
    }

    if (a3 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4;
    }

    if (a3 == 1)
    {
      return 5;
    }

    else
    {
      return v5;
    }
  }

  else if ((a3 - 4) < 3 || a3 == 1000)
  {
    return 1;
  }

  return result;
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 2;
  if (a3 != 2)
  {
    v5 = a3 == 5;
  }

  v6 = 3;
  v7 = 5;
  if (a5)
  {
    v7 = 6;
  }

  if (a4 == 1)
  {
    v7 = 1000;
  }

  if (a3 != 1)
  {
    v7 = 0;
  }

  if (a3)
  {
    v6 = v7;
  }

  if (a3 <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end