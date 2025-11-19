@interface INSearchForMessagesIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INSearchForMessagesIntentResponse)initWithBackingStore:(id)a3;
- (INSearchForMessagesIntentResponse)initWithCode:(INSearchForMessagesIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSearchForMessagesIntentResponse)initWithCoder:(id)a3;
- (INSearchForMessagesIntentResponseCode)code;
- (NSArray)messages;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (id)_redactedDictionaryRepresentation;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
- (void)setMessages:(NSArray *)messages;
@end

@implementation INSearchForMessagesIntentResponse

- (INSearchForMessagesIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSearchForMessagesIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (NSArray)messages
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 messages];
  v4 = INIntentSlotValueTransformFromMessages(v3);

  return v4;
}

- (int64_t)_intentResponseCode
{
  v2 = [(INSearchForMessagesIntentResponse *)self code];
  v3 = 5;
  v4 = 5;
  v5 = 5;
  if (v2 != 1000)
  {
    v5 = 0;
  }

  if (v2 != INSearchForMessagesIntentResponseCodeFailureRequiringInAppAuthentication)
  {
    v4 = v5;
  }

  if (v2 != INSearchForMessagesIntentResponseCodeFailureMessageTooManyResults)
  {
    v3 = v4;
  }

  v6 = 6;
  v7 = 5;
  if (v2 != INSearchForMessagesIntentResponseCodeFailureMessageServiceNotAvailable)
  {
    v7 = 0;
  }

  if (v2 != INSearchForMessagesIntentResponseCodeFailureRequiringAppLaunch)
  {
    v6 = v7;
  }

  if (v2 <= INSearchForMessagesIntentResponseCodeFailureMessageServiceNotAvailable)
  {
    v3 = v6;
  }

  v8 = 4;
  v9 = 5;
  if (v2 != INSearchForMessagesIntentResponseCodeFailure)
  {
    v9 = 0;
  }

  if (v2 != INSearchForMessagesIntentResponseCodeSuccess)
  {
    v8 = v9;
  }

  v10 = 1;
  v11 = 3;
  if (v2 != INSearchForMessagesIntentResponseCodeInProgress)
  {
    v11 = 0;
  }

  if (v2 != INSearchForMessagesIntentResponseCodeReady)
  {
    v10 = v11;
  }

  if (v2 <= INSearchForMessagesIntentResponseCodeInProgress)
  {
    v8 = v10;
  }

  if (v2 <= INSearchForMessagesIntentResponseCodeFailure)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"code";
  v3 = INSearchForMessagesIntentResponseCodeGetName([(INSearchForMessagesIntentResponse *)self code]);
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"messages";
  v11[0] = v4;
  v5 = [(INSearchForMessagesIntentResponse *)self messages];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_redactedDictionaryRepresentation
{
  v2 = [(INSearchForMessagesIntentResponse *)self _dictionaryRepresentation];
  v3 = [v2 mutableCopy];

  [v3 setObject:@"<redacted>" forKey:@"messages"];

  return v3;
}

- (void)setMessages:(NSArray *)messages
{
  v4 = messages;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToMessages(v4);

  [v5 setMessages:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INSearchForMessagesIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INSearchForMessagesIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INSearchForMessagesIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INSearchForMessagesIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INSearchForMessagesIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INSearchForMessagesIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INSearchForMessagesIntentResponseCodeFailureMessageServiceNotAvailable"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INSearchForMessagesIntentResponseCodeFailureMessageTooManyResults"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INSearchForMessagesIntentResponseCodeFailureScreenTimeRestrictionEnabled"])
  {
    v5 = 1000;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INSearchForMessagesIntentResponseCodeFailureRequiringInAppAuthentication"];

  if (v6)
  {
    return 8;
  }

  else
  {
    return v5;
  }
}

- (INSearchForMessagesIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSearchForMessagesIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INSearchForMessagesIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INSearchForMessagesIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSearchForMessagesIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INSearchForMessagesIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INSearchForMessagesIntentResponse)initWithCode:(INSearchForMessagesIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = INSearchForMessagesIntentResponseCodeGetName(code);
    *buf = 136315906;
    v15 = "[INSearchForMessagesIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    v17 = code;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INSearchForMessagesIntentResponse;
  v10 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:v6];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if (a3 == 1000)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 8)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  if (a3 == 7)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0x7FFFFFFF;
  }

  if (a3 == 6)
  {
    v5 = 1;
  }

  if (a3 <= 7)
  {
    return v5;
  }

  else
  {
    return v4;
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

  else if ((a3 - 4) < 5 || a3 == 1000)
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
      if ((a4 - 1) >= 4)
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
        return qword_18EE5EA40[a4 - 1];
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