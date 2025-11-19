@interface INEditMessageIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INEditMessageIntentResponse)initWithBackingStore:(id)a3;
- (INEditMessageIntentResponse)initWithCode:(INEditMessageIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INEditMessageIntentResponse)initWithCoder:(id)a3;
- (INEditMessageIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INEditMessageIntentResponse

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"code";
  v2 = INEditMessageIntentResponseCodeGetName([(INEditMessageIntentResponse *)self code]);
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
  [v3 isEqualToString:@"INEditMessageIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INEditMessageIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INEditMessageIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INEditMessageIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INEditMessageIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INEditMessageIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INEditMessageIntentResponseCodeFailureMessageNotFound"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INEditMessageIntentResponseCodeFailurePastEditTimeLimit"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INEditMessageIntentResponseCodeFailureMessageTypeUnsupported"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"INEditMessageIntentResponseCodeFailureUnsupportedOnService"])
  {
    v4 = 9;
  }

  if ([v3 isEqualToString:@"INEditMessageIntentResponseCodeFailureMessageServiceNotAvailable"])
  {
    v4 = 10;
  }

  if ([v3 isEqualToString:@"INEditMessageIntentResponseCodeFailureNotAMemberOfConversation"])
  {
    v4 = 1000;
  }

  if ([v3 isEqualToString:@"INEditMessageIntentResponseCodeFailureScreenTimeRestrictionEnabled"])
  {
    v4 = 1001;
  }

  if ([v3 isEqualToString:@"INEditMessageIntentResponseCodeFailureDownTimeRestrictionEnabled"])
  {
    v5 = 1002;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INEditMessageIntentResponseCodeFailureRequiringInAppAuthentication"];

  if (v6)
  {
    return 11;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INEditMessageIntentResponse *)self code];
  v3 = 5;
  if (v2 > INEditMessageIntentResponseCodeFailurePastEditTimeLimit)
  {
    v13 = 5;
    if (v2 != 1002)
    {
      v13 = 0;
    }

    if (v2 != 1001)
    {
      v3 = v13;
    }

    v14 = 5;
    v15 = 5;
    if (v2 != 1000)
    {
      v15 = 0;
    }

    if (v2 != INEditMessageIntentResponseCodeFailureRequiringInAppAuthentication)
    {
      v14 = v15;
    }

    if (v2 <= 1000)
    {
      v3 = v14;
    }

    v7 = 5;
    v16 = 5;
    v17 = 5;
    if (v2 != INEditMessageIntentResponseCodeFailureMessageServiceNotAvailable)
    {
      v17 = 0;
    }

    if (v2 != INEditMessageIntentResponseCodeFailureUnsupportedOnService)
    {
      v16 = v17;
    }

    if (v2 != INEditMessageIntentResponseCodeFailureMessageTypeUnsupported)
    {
      v7 = v16;
    }

    v12 = __OFSUB__(v2, 10);
    v10 = v2 == INEditMessageIntentResponseCodeFailureMessageServiceNotAvailable;
    v11 = v2 - 10 < 0;
  }

  else
  {
    v4 = 5;
    if (v2 != INEditMessageIntentResponseCodeFailurePastEditTimeLimit)
    {
      v4 = 0;
    }

    if (v2 != INEditMessageIntentResponseCodeFailureMessageNotFound)
    {
      v3 = v4;
    }

    v5 = 5;
    v6 = 6;
    if (v2 != INEditMessageIntentResponseCodeFailureRequiringAppLaunch)
    {
      v6 = 0;
    }

    if (v2 != INEditMessageIntentResponseCodeFailure)
    {
      v5 = v6;
    }

    if (v2 <= INEditMessageIntentResponseCodeFailureRequiringAppLaunch)
    {
      v3 = v5;
    }

    v7 = 1;
    v8 = 3;
    v9 = 4;
    if (v2 != INEditMessageIntentResponseCodeSuccess)
    {
      v9 = 0;
    }

    if (v2 != INEditMessageIntentResponseCodeInProgress)
    {
      v8 = v9;
    }

    if (v2 != INEditMessageIntentResponseCodeReady)
    {
      v7 = v8;
    }

    v12 = __OFSUB__(v2, 3);
    v10 = v2 == INEditMessageIntentResponseCodeSuccess;
    v11 = v2 - 3 < 0;
  }

  if (v11 ^ v12 | v10)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

- (INEditMessageIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INEditMessageIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INEditMessageIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INEditMessageIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INEditMessageIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INEditMessageIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INEditMessageIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INEditMessageIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INEditMessageIntentResponse)initWithCode:(INEditMessageIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = INEditMessageIntentResponseCodeGetName(code);
    *buf = 136315906;
    v15 = "[INEditMessageIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    v17 = code;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INEditMessageIntentResponse;
  v10 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:v6];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if (a3 == 1002)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 1001)
  {
    v4 = 7;
  }

  else
  {
    v4 = v3;
  }

  if (a3 == 1000)
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  if (a3 == 11)
  {
    v6 = 9;
  }

  else
  {
    v6 = 0x7FFFFFFF;
  }

  if (a3 == 10)
  {
    v7 = 5;
  }

  else
  {
    v7 = v6;
  }

  if (a3 <= 999)
  {
    v5 = v7;
  }

  if (a3 == 9)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

  if (a3 == 8)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  if (a3 == 7)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0x7FFFFFFF;
  }

  if (a3 == 6)
  {
    v10 = 1;
  }

  if (a3 > 7)
  {
    v10 = v9;
  }

  if (a3 <= 9)
  {
    return v10;
  }

  else
  {
    return v5;
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

  else if ((a3 - 4) < 8 || (a3 - 1000) < 3)
  {
    return 1;
  }

  return result;
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return 2;
    }

    else
    {
      return a3 == 5;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if ((a4 - 1) >= 9)
      {
        if (a5)
        {
          return 5;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return qword_18EE5FEC0[a4 - 1];
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 3;
  }
}

@end