@interface INSendMessageIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INMessage)sentMessage;
- (INSendMessageIntentResponse)initWithBackingStore:(id)store;
- (INSendMessageIntentResponse)initWithCode:(INSendMessageIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSendMessageIntentResponse)initWithCoder:(id)coder;
- (INSendMessageIntentResponseCode)code;
- (NSArray)sentMessages;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setSentMessage:(INMessage *)sentMessage;
- (void)setSentMessages:(NSArray *)sentMessages;
@end

@implementation INSendMessageIntentResponse

- (NSArray)sentMessages
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  sentMessages = [_responseMessagePBRepresentation sentMessages];
  v4 = INIntentSlotValueTransformFromMessages(sentMessages);

  return v4;
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"code";
  v3 = INSendMessageIntentResponseCodeGetName([(INSendMessageIntentResponse *)self code]);
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"sentMessages";
  v11[0] = null;
  sentMessages = [(INSendMessageIntentResponse *)self sentMessages];
  null2 = sentMessages;
  if (!sentMessages)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!sentMessages)
  {
  }

  if (!v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setSentMessages:(NSArray *)sentMessages
{
  v4 = sentMessages;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToMessages(v4);

  [_responseMessagePBRepresentation setSentMessages:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INSendMessageIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSendMessageIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSendMessageIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSendMessageIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSendMessageIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INSendMessageIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INSendMessageIntentResponseCodeFailureMessageServiceNotAvailable"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INSendMessageIntentResponseCodeFailureMessageAttachmentError"])
  {
    v4 = 1000;
  }

  if ([nameCopy isEqualToString:@"INSendMessageIntentResponseCodeFailureMessageLocationNotAllowed"])
  {
    v4 = 1001;
  }

  if ([nameCopy isEqualToString:@"INSendMessageIntentResponseCodeFailureScreenTimeRestrictionEnabled"])
  {
    v4 = 1002;
  }

  if ([nameCopy isEqualToString:@"INSendMessageIntentResponseCodeFailureNotAMemberOfConversation"])
  {
    v4 = 1003;
  }

  if ([nameCopy isEqualToString:@"INSendMessageIntentResponseCodeFailureMessageLocationAuthorizationNotDetermined"])
  {
    v4 = 1004;
  }

  if ([nameCopy isEqualToString:@"INSendMessageIntentResponseCodeFailureMessagePreciseLocationNotAuthorized"])
  {
    v5 = 1005;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSendMessageIntentResponseCodeFailureRequiringInAppAuthentication"];

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
  code = [(INSendMessageIntentResponse *)self code];
  v3 = 5;
  if (code <= INSendMessageIntentResponseCodeFailureMessageServiceNotAvailable)
  {
    v13 = 6;
    v14 = 5;
    if (code != INSendMessageIntentResponseCodeFailureMessageServiceNotAvailable)
    {
      v14 = 0;
    }

    if (code != INSendMessageIntentResponseCodeFailureRequiringAppLaunch)
    {
      v13 = v14;
    }

    if (code != INSendMessageIntentResponseCodeFailure)
    {
      v3 = v13;
    }

    v7 = 1;
    v15 = 3;
    v16 = 4;
    if (code != INSendMessageIntentResponseCodeSuccess)
    {
      v16 = 0;
    }

    if (code != INSendMessageIntentResponseCodeInProgress)
    {
      v15 = v16;
    }

    if (code != INSendMessageIntentResponseCodeReady)
    {
      v7 = v15;
    }

    v12 = __OFSUB__(code, 3);
    v10 = code == INSendMessageIntentResponseCodeSuccess;
    v11 = code - 3 < 0;
  }

  else
  {
    v4 = 5;
    if (code != 1005)
    {
      v4 = 0;
    }

    if (code != 1004)
    {
      v3 = v4;
    }

    v5 = 5;
    v6 = 5;
    if (code != 1003)
    {
      v6 = 0;
    }

    if (code != 1002)
    {
      v5 = v6;
    }

    if (code <= 1003)
    {
      v3 = v5;
    }

    v7 = 5;
    v8 = 5;
    v9 = 5;
    if (code != 1001)
    {
      v9 = 0;
    }

    if (code != 1000)
    {
      v8 = v9;
    }

    if (code != INSendMessageIntentResponseCodeFailureRequiringInAppAuthentication)
    {
      v7 = v8;
    }

    v12 = __OFSUB__(code, 1001);
    v10 = code == 1001;
    v11 = code - 1001 < 0;
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

- (INSendMessageIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSendMessageIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSendMessageIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INSendMessageIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSendMessageIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSendMessageIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSendMessageIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSendMessageIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INSendMessageIntentResponse)initWithCode:(INSendMessageIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = INSendMessageIntentResponseCodeGetName(code);
    *buf = 136315906;
    v15 = "[INSendMessageIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    v17 = code;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INSendMessageIntentResponse;
  v10 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:v6];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 1005)
  {
    v3 = 7;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (code == 1004)
  {
    v4 = 6;
  }

  else
  {
    v4 = v3;
  }

  if (code == 1003)
  {
    v5 = 5;
  }

  else
  {
    v5 = 0x7FFFFFFF;
  }

  if (code == 1002)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  if (code <= 1003)
  {
    v4 = v6;
  }

  if (code == 1001)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

  if (code == 1000)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7;
  }

  if (code == 7)
  {
    v9 = 8;
  }

  else
  {
    v9 = 0x7FFFFFFF;
  }

  if (code == 6)
  {
    v9 = 1;
  }

  if (code > 999)
  {
    v9 = v8;
  }

  if (code <= 1001)
  {
    return v9;
  }

  else
  {
    return v4;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  result = 3;
  if (code > 999)
  {
    if ((code - 1000) >= 6)
    {
      return result;
    }

    return 1;
  }

  if (code > 3)
  {
    if ((code - 4) >= 4)
    {
      return result;
    }

    return 1;
  }

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
      if ((code - 1) >= 8)
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
        return qword_18EE5EF80[code - 1];
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

- (void)setSentMessage:(INMessage *)sentMessage
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = sentMessage;
  v4 = MEMORY[0x1E695DEC8];
  v5 = sentMessage;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(INSendMessageIntentResponse *)self setSentMessages:v6, v8, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (INMessage)sentMessage
{
  sentMessages = [(INSendMessageIntentResponse *)self sentMessages];
  v4 = [sentMessages count];

  if (v4)
  {
    sentMessages2 = [(INSendMessageIntentResponse *)self sentMessages];
    v6 = [sentMessages2 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end