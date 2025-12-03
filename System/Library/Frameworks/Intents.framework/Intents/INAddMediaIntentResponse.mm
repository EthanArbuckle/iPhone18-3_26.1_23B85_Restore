@interface INAddMediaIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INAddMediaIntentResponse)initWithBackingStore:(id)store;
- (INAddMediaIntentResponse)initWithCode:(INAddMediaIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INAddMediaIntentResponse)initWithCoder:(id)coder;
- (INAddMediaIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INAddMediaIntentResponse

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"code";
  v2 = INAddMediaIntentResponseCodeGetName([(INAddMediaIntentResponse *)self code]);
  null = v2;
  if (!v2)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!v2)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INAddMediaIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INAddMediaIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INAddMediaIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INAddMediaIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INAddMediaIntentResponseCodeHandleInApp"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INAddMediaIntentResponseCodeFailure"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INAddMediaIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INAddMediaIntentResponseCodeFailureAlreadyInLibrary"];

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
  code = [(INAddMediaIntentResponse *)self code];
  v3 = 5;
  if (code != 1000)
  {
    v3 = 0;
  }

  if (code == INAddMediaIntentResponseCodeFailureRequiringAppLaunch)
  {
    v3 = 6;
  }

  v4 = 7;
  if (code == INAddMediaIntentResponseCodeFailure)
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  if (code != INAddMediaIntentResponseCodeHandleInApp)
  {
    v4 = v5;
  }

  if (code <= INAddMediaIntentResponseCodeFailure)
  {
    v3 = v4;
  }

  v6 = 3;
  v7 = 4;
  if (code != INAddMediaIntentResponseCodeSuccess)
  {
    v7 = 0;
  }

  if (code != INAddMediaIntentResponseCodeInProgress)
  {
    v6 = v7;
  }

  if (code == INAddMediaIntentResponseCodeReady)
  {
    v6 = 1;
  }

  if (code <= INAddMediaIntentResponseCodeSuccess)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

- (INAddMediaIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INAddMediaIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INAddMediaIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INAddMediaIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INAddMediaIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INAddMediaIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INAddMediaIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INAddMediaIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
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

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 1000)
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  result = 3;
  if (code <= 3)
  {
    if (code == 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
    }

    if (code == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4;
    }

    if (code == 1)
    {
      return 5;
    }

    else
    {
      return v5;
    }
  }

  else if ((code - 4) < 3 || code == 1000)
  {
    return 1;
  }

  return result;
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 2;
  if (type != 2)
  {
    v5 = type == 5;
  }

  v6 = 3;
  v7 = 5;
  if (requested)
  {
    v7 = 6;
  }

  if (code == 1)
  {
    v7 = 1000;
  }

  if (type != 1)
  {
    v7 = 0;
  }

  if (type)
  {
    v6 = v7;
  }

  if (type <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end