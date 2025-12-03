@interface INEditMessageIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INEditMessageIntentResponse)initWithBackingStore:(id)store;
- (INEditMessageIntentResponse)initWithCode:(INEditMessageIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INEditMessageIntentResponse)initWithCoder:(id)coder;
- (INEditMessageIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INEditMessageIntentResponse

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"code";
  v2 = INEditMessageIntentResponseCodeGetName([(INEditMessageIntentResponse *)self code]);
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
  [nameCopy isEqualToString:@"INEditMessageIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INEditMessageIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INEditMessageIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INEditMessageIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INEditMessageIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INEditMessageIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INEditMessageIntentResponseCodeFailureMessageNotFound"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INEditMessageIntentResponseCodeFailurePastEditTimeLimit"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INEditMessageIntentResponseCodeFailureMessageTypeUnsupported"])
  {
    v4 = 8;
  }

  if ([nameCopy isEqualToString:@"INEditMessageIntentResponseCodeFailureUnsupportedOnService"])
  {
    v4 = 9;
  }

  if ([nameCopy isEqualToString:@"INEditMessageIntentResponseCodeFailureMessageServiceNotAvailable"])
  {
    v4 = 10;
  }

  if ([nameCopy isEqualToString:@"INEditMessageIntentResponseCodeFailureNotAMemberOfConversation"])
  {
    v4 = 1000;
  }

  if ([nameCopy isEqualToString:@"INEditMessageIntentResponseCodeFailureScreenTimeRestrictionEnabled"])
  {
    v4 = 1001;
  }

  if ([nameCopy isEqualToString:@"INEditMessageIntentResponseCodeFailureDownTimeRestrictionEnabled"])
  {
    v5 = 1002;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INEditMessageIntentResponseCodeFailureRequiringInAppAuthentication"];

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
  code = [(INEditMessageIntentResponse *)self code];
  v3 = 5;
  if (code > INEditMessageIntentResponseCodeFailurePastEditTimeLimit)
  {
    v13 = 5;
    if (code != 1002)
    {
      v13 = 0;
    }

    if (code != 1001)
    {
      v3 = v13;
    }

    v14 = 5;
    v15 = 5;
    if (code != 1000)
    {
      v15 = 0;
    }

    if (code != INEditMessageIntentResponseCodeFailureRequiringInAppAuthentication)
    {
      v14 = v15;
    }

    if (code <= 1000)
    {
      v3 = v14;
    }

    v7 = 5;
    v16 = 5;
    v17 = 5;
    if (code != INEditMessageIntentResponseCodeFailureMessageServiceNotAvailable)
    {
      v17 = 0;
    }

    if (code != INEditMessageIntentResponseCodeFailureUnsupportedOnService)
    {
      v16 = v17;
    }

    if (code != INEditMessageIntentResponseCodeFailureMessageTypeUnsupported)
    {
      v7 = v16;
    }

    v12 = __OFSUB__(code, 10);
    v10 = code == INEditMessageIntentResponseCodeFailureMessageServiceNotAvailable;
    v11 = code - 10 < 0;
  }

  else
  {
    v4 = 5;
    if (code != INEditMessageIntentResponseCodeFailurePastEditTimeLimit)
    {
      v4 = 0;
    }

    if (code != INEditMessageIntentResponseCodeFailureMessageNotFound)
    {
      v3 = v4;
    }

    v5 = 5;
    v6 = 6;
    if (code != INEditMessageIntentResponseCodeFailureRequiringAppLaunch)
    {
      v6 = 0;
    }

    if (code != INEditMessageIntentResponseCodeFailure)
    {
      v5 = v6;
    }

    if (code <= INEditMessageIntentResponseCodeFailureRequiringAppLaunch)
    {
      v3 = v5;
    }

    v7 = 1;
    v8 = 3;
    v9 = 4;
    if (code != INEditMessageIntentResponseCodeSuccess)
    {
      v9 = 0;
    }

    if (code != INEditMessageIntentResponseCodeInProgress)
    {
      v8 = v9;
    }

    if (code != INEditMessageIntentResponseCodeReady)
    {
      v7 = v8;
    }

    v12 = __OFSUB__(code, 3);
    v10 = code == INEditMessageIntentResponseCodeSuccess;
    v11 = code - 3 < 0;
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

- (INEditMessageIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INEditMessageIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INEditMessageIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INEditMessageIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INEditMessageIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INEditMessageIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INEditMessageIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INEditMessageIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
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

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 1002)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (code == 1001)
  {
    v4 = 7;
  }

  else
  {
    v4 = v3;
  }

  if (code == 1000)
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  if (code == 11)
  {
    v6 = 9;
  }

  else
  {
    v6 = 0x7FFFFFFF;
  }

  if (code == 10)
  {
    v7 = 5;
  }

  else
  {
    v7 = v6;
  }

  if (code <= 999)
  {
    v5 = v7;
  }

  if (code == 9)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

  if (code == 8)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  if (code == 7)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0x7FFFFFFF;
  }

  if (code == 6)
  {
    v10 = 1;
  }

  if (code > 7)
  {
    v10 = v9;
  }

  if (code <= 9)
  {
    return v10;
  }

  else
  {
    return v5;
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

  else if ((code - 4) < 8 || (code - 1000) < 3)
  {
    return 1;
  }

  return result;
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  if (type > 1)
  {
    if (type == 2)
    {
      return 2;
    }

    else
    {
      return type == 5;
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      if ((code - 1) >= 9)
      {
        if (requested)
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
        return qword_18EE5FEC0[code - 1];
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