@interface INSetMessageAttributeIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INSetMessageAttributeIntentResponse)initWithBackingStore:(id)store;
- (INSetMessageAttributeIntentResponse)initWithCode:(INSetMessageAttributeIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSetMessageAttributeIntentResponse)initWithCoder:(id)coder;
- (INSetMessageAttributeIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSetMessageAttributeIntentResponse

- (id)_dictionaryRepresentation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"code";
  code = [(INSetMessageAttributeIntentResponse *)self code];
  v3 = code;
  if (code < 8)
  {
    null = off_1E727D9D8[code];
    v5 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v5 = 0;
  }

  v10[0] = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  if (v3 >= 8)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INSetMessageAttributeIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSetMessageAttributeIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSetMessageAttributeIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSetMessageAttributeIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSetMessageAttributeIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INSetMessageAttributeIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INSetMessageAttributeIntentResponseCodeFailureMessageNotFound"])
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSetMessageAttributeIntentResponseCodeFailureMessageAttributeNotSet"];

  if (v6)
  {
    return 7;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INSetMessageAttributeIntentResponse *)self code];
  if ((code - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FA48[code - 1];
  }
}

- (INSetMessageAttributeIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSetMessageAttributeIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSetMessageAttributeIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INSetMessageAttributeIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSetMessageAttributeIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSetMessageAttributeIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSetMessageAttributeIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSetMessageAttributeIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INSetMessageAttributeIntentResponse)initWithCode:(INSetMessageAttributeIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INSetMessageAttributeIntentResponseCodeFailureMessageAttributeNotSet)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727D9D8[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSetMessageAttributeIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSetMessageAttributeIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 7)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (code == 6)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 6)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FA28[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 2;
  if (type != 2)
  {
    v5 = type == 5;
  }

  v6 = 3;
  v7 = 6;
  v8 = 4;
  if (requested)
  {
    v8 = 5;
  }

  if (code == 2)
  {
    v8 = 7;
  }

  if (code != 1)
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