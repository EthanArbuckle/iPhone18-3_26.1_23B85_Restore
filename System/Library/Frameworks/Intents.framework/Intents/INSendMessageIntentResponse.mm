@interface INSendMessageIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INMessage)sentMessage;
- (INSendMessageIntentResponse)initWithBackingStore:(id)a3;
- (INSendMessageIntentResponse)initWithCode:(INSendMessageIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSendMessageIntentResponse)initWithCoder:(id)a3;
- (INSendMessageIntentResponseCode)code;
- (NSArray)sentMessages;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
- (void)setSentMessage:(INMessage *)sentMessage;
- (void)setSentMessages:(NSArray *)sentMessages;
@end

@implementation INSendMessageIntentResponse

- (NSArray)sentMessages
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 sentMessages];
  v4 = INIntentSlotValueTransformFromMessages(v3);

  return v4;
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"code";
  v3 = INSendMessageIntentResponseCodeGetName([(INSendMessageIntentResponse *)self code]);
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"sentMessages";
  v11[0] = v4;
  v5 = [(INSendMessageIntentResponse *)self sentMessages];
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

- (void)setSentMessages:(NSArray *)sentMessages
{
  v4 = sentMessages;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToMessages(v4);

  [v5 setSentMessages:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INSendMessageIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INSendMessageIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INSendMessageIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INSendMessageIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INSendMessageIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INSendMessageIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INSendMessageIntentResponseCodeFailureMessageServiceNotAvailable"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INSendMessageIntentResponseCodeFailureMessageAttachmentError"])
  {
    v4 = 1000;
  }

  if ([v3 isEqualToString:@"INSendMessageIntentResponseCodeFailureMessageLocationNotAllowed"])
  {
    v4 = 1001;
  }

  if ([v3 isEqualToString:@"INSendMessageIntentResponseCodeFailureScreenTimeRestrictionEnabled"])
  {
    v4 = 1002;
  }

  if ([v3 isEqualToString:@"INSendMessageIntentResponseCodeFailureNotAMemberOfConversation"])
  {
    v4 = 1003;
  }

  if ([v3 isEqualToString:@"INSendMessageIntentResponseCodeFailureMessageLocationAuthorizationNotDetermined"])
  {
    v4 = 1004;
  }

  if ([v3 isEqualToString:@"INSendMessageIntentResponseCodeFailureMessagePreciseLocationNotAuthorized"])
  {
    v5 = 1005;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INSendMessageIntentResponseCodeFailureRequiringInAppAuthentication"];

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
  v2 = [(INSendMessageIntentResponse *)self code];
  v3 = 5;
  if (v2 <= INSendMessageIntentResponseCodeFailureMessageServiceNotAvailable)
  {
    v13 = 6;
    v14 = 5;
    if (v2 != INSendMessageIntentResponseCodeFailureMessageServiceNotAvailable)
    {
      v14 = 0;
    }

    if (v2 != INSendMessageIntentResponseCodeFailureRequiringAppLaunch)
    {
      v13 = v14;
    }

    if (v2 != INSendMessageIntentResponseCodeFailure)
    {
      v3 = v13;
    }

    v7 = 1;
    v15 = 3;
    v16 = 4;
    if (v2 != INSendMessageIntentResponseCodeSuccess)
    {
      v16 = 0;
    }

    if (v2 != INSendMessageIntentResponseCodeInProgress)
    {
      v15 = v16;
    }

    if (v2 != INSendMessageIntentResponseCodeReady)
    {
      v7 = v15;
    }

    v12 = __OFSUB__(v2, 3);
    v10 = v2 == INSendMessageIntentResponseCodeSuccess;
    v11 = v2 - 3 < 0;
  }

  else
  {
    v4 = 5;
    if (v2 != 1005)
    {
      v4 = 0;
    }

    if (v2 != 1004)
    {
      v3 = v4;
    }

    v5 = 5;
    v6 = 5;
    if (v2 != 1003)
    {
      v6 = 0;
    }

    if (v2 != 1002)
    {
      v5 = v6;
    }

    if (v2 <= 1003)
    {
      v3 = v5;
    }

    v7 = 5;
    v8 = 5;
    v9 = 5;
    if (v2 != 1001)
    {
      v9 = 0;
    }

    if (v2 != 1000)
    {
      v8 = v9;
    }

    if (v2 != INSendMessageIntentResponseCodeFailureRequiringInAppAuthentication)
    {
      v7 = v8;
    }

    v12 = __OFSUB__(v2, 1001);
    v10 = v2 == 1001;
    v11 = v2 - 1001 < 0;
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

- (INSendMessageIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSendMessageIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INSendMessageIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INSendMessageIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSendMessageIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSendMessageIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSendMessageIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INSendMessageIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
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

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if (a3 == 1005)
  {
    v3 = 7;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 1004)
  {
    v4 = 6;
  }

  else
  {
    v4 = v3;
  }

  if (a3 == 1003)
  {
    v5 = 5;
  }

  else
  {
    v5 = 0x7FFFFFFF;
  }

  if (a3 == 1002)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  if (a3 <= 1003)
  {
    v4 = v6;
  }

  if (a3 == 1001)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

  if (a3 == 1000)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7;
  }

  if (a3 == 7)
  {
    v9 = 8;
  }

  else
  {
    v9 = 0x7FFFFFFF;
  }

  if (a3 == 6)
  {
    v9 = 1;
  }

  if (a3 > 999)
  {
    v9 = v8;
  }

  if (a3 <= 1001)
  {
    return v9;
  }

  else
  {
    return v4;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  result = 3;
  if (a3 > 999)
  {
    if ((a3 - 1000) >= 6)
    {
      return result;
    }

    return 1;
  }

  if (a3 > 3)
  {
    if ((a3 - 4) >= 4)
    {
      return result;
    }

    return 1;
  }

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
      if ((a4 - 1) >= 8)
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
        return qword_18EE5EF80[a4 - 1];
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
  v3 = [(INSendMessageIntentResponse *)self sentMessages];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(INSendMessageIntentResponse *)self sentMessages];
    v6 = [v5 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end