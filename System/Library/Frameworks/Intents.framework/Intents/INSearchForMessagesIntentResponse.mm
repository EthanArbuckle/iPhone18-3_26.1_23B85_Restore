@interface INSearchForMessagesIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INSearchForMessagesIntentResponse)initWithBackingStore:(id)store;
- (INSearchForMessagesIntentResponse)initWithCode:(INSearchForMessagesIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSearchForMessagesIntentResponse)initWithCoder:(id)coder;
- (INSearchForMessagesIntentResponseCode)code;
- (NSArray)messages;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (id)_redactedDictionaryRepresentation;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
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
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  messages = [_responseMessagePBRepresentation messages];
  v4 = INIntentSlotValueTransformFromMessages(messages);

  return v4;
}

- (int64_t)_intentResponseCode
{
  code = [(INSearchForMessagesIntentResponse *)self code];
  v3 = 5;
  v4 = 5;
  v5 = 5;
  if (code != 1000)
  {
    v5 = 0;
  }

  if (code != INSearchForMessagesIntentResponseCodeFailureRequiringInAppAuthentication)
  {
    v4 = v5;
  }

  if (code != INSearchForMessagesIntentResponseCodeFailureMessageTooManyResults)
  {
    v3 = v4;
  }

  v6 = 6;
  v7 = 5;
  if (code != INSearchForMessagesIntentResponseCodeFailureMessageServiceNotAvailable)
  {
    v7 = 0;
  }

  if (code != INSearchForMessagesIntentResponseCodeFailureRequiringAppLaunch)
  {
    v6 = v7;
  }

  if (code <= INSearchForMessagesIntentResponseCodeFailureMessageServiceNotAvailable)
  {
    v3 = v6;
  }

  v8 = 4;
  v9 = 5;
  if (code != INSearchForMessagesIntentResponseCodeFailure)
  {
    v9 = 0;
  }

  if (code != INSearchForMessagesIntentResponseCodeSuccess)
  {
    v8 = v9;
  }

  v10 = 1;
  v11 = 3;
  if (code != INSearchForMessagesIntentResponseCodeInProgress)
  {
    v11 = 0;
  }

  if (code != INSearchForMessagesIntentResponseCodeReady)
  {
    v10 = v11;
  }

  if (code <= INSearchForMessagesIntentResponseCodeInProgress)
  {
    v8 = v10;
  }

  if (code <= INSearchForMessagesIntentResponseCodeFailure)
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
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"messages";
  v11[0] = null;
  messages = [(INSearchForMessagesIntentResponse *)self messages];
  null2 = messages;
  if (!messages)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!messages)
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
  _dictionaryRepresentation = [(INSearchForMessagesIntentResponse *)self _dictionaryRepresentation];
  v3 = [_dictionaryRepresentation mutableCopy];

  [v3 setObject:@"<redacted>" forKey:@"messages"];

  return v3;
}

- (void)setMessages:(NSArray *)messages
{
  v4 = messages;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToMessages(v4);

  [_responseMessagePBRepresentation setMessages:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INSearchForMessagesIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSearchForMessagesIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSearchForMessagesIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSearchForMessagesIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSearchForMessagesIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INSearchForMessagesIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INSearchForMessagesIntentResponseCodeFailureMessageServiceNotAvailable"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INSearchForMessagesIntentResponseCodeFailureMessageTooManyResults"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INSearchForMessagesIntentResponseCodeFailureScreenTimeRestrictionEnabled"])
  {
    v5 = 1000;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSearchForMessagesIntentResponseCodeFailureRequiringInAppAuthentication"];

  if (v6)
  {
    return 8;
  }

  else
  {
    return v5;
  }
}

- (INSearchForMessagesIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSearchForMessagesIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSearchForMessagesIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INSearchForMessagesIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSearchForMessagesIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSearchForMessagesIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
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

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 1000)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (code == 8)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  if (code == 7)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0x7FFFFFFF;
  }

  if (code == 6)
  {
    v5 = 1;
  }

  if (code <= 7)
  {
    return v5;
  }

  else
  {
    return v4;
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

  else if ((code - 4) < 5 || code == 1000)
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
      if ((code - 1) >= 4)
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
        return qword_18EE5EA40[code - 1];
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