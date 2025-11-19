@interface INOpenSettingIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INOpenSettingIntentResponse)initWithBackingStore:(id)a3;
- (INOpenSettingIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INOpenSettingIntentResponse)initWithCoder:(id)a3;
- (NSString)errorDetail;
- (NSString)punchoutUrl;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)a3;
- (void)setErrorDetail:(id)a3;
- (void)setPunchoutUrl:(id)a3;
@end

@implementation INOpenSettingIntentResponse

- (id)_dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"code";
  v3 = [(INOpenSettingIntentResponse *)self code];
  v4 = v3;
  if (v3 < 9)
  {
    v5 = off_1E7287F20[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v15[0] = v5;
  v14[1] = @"punchoutUrl";
  v7 = [(INOpenSettingIntentResponse *)self punchoutUrl];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"errorDetail";
  v9 = [(INOpenSettingIntentResponse *)self errorDetail];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (v4 >= 9)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setErrorDetail:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setErrorDetail:v4];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setPunchoutUrl:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setPunchoutUrl:v4];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (NSString)errorDetail
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 errorDetail];
  v4 = [v3 copy];

  return v4;
}

- (NSString)punchoutUrl
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 punchoutUrl];
  v4 = [v3 copy];

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INOpenSettingIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INOpenSettingIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INOpenSettingIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INOpenSettingIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INOpenSettingIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INOpenSettingIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INOpenSettingIntentResponseCodeFailureSettingUnsupported"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INOpenSettingIntentResponseCodeFailureSettingNotFound"])
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INOpenSettingIntentResponseCodeFailureOtherWithReason"];

  if (v6)
  {
    return 8;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INOpenSettingIntentResponse *)self code];
  if ((v2 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FAA0[v2 - 1];
  }
}

- (INOpenSettingIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INOpenSettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INOpenSettingIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INOpenSettingIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INOpenSettingIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INOpenSettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INOpenSettingIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INOpenSettingIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 8)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7287F20[a3];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INOpenSettingIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INOpenSettingIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if ((a3 - 6) < 3)
  {
    return a3 - 5;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FA80[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 2;
  if (a3 != 2)
  {
    v5 = a3 == 5;
  }

  v6 = 3;
  v7 = 4;
  if (a5)
  {
    v7 = 5;
  }

  if ((a4 - 1) >= 3)
  {
    v8 = v7;
  }

  else
  {
    v8 = (a4 + 5);
  }

  if (a3 != 1)
  {
    v8 = 0;
  }

  if (a3)
  {
    v6 = v8;
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