@interface INControlHomeIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INControlHomeIntentResponse)initWithBackingStore:(id)a3;
- (INControlHomeIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INControlHomeIntentResponse)initWithCoder:(id)a3;
- (NSArray)entityResponses;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)a3;
- (void)setEntityResponses:(id)a3;
@end

@implementation INControlHomeIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  v3 = [(INControlHomeIntentResponse *)self code];
  v4 = v3;
  if (v3 < 0x13)
  {
    v5 = off_1E727EEE0[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"entityResponses";
  v13[0] = v5;
  v7 = [(INControlHomeIntentResponse *)self entityResponses];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!v7)
  {
  }

  if (v4 >= 0x13)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setEntityResponses:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToHomeEntityResponses(v4);

  [v5 setEntityResponses:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (NSArray)entityResponses
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 entityResponses];
  v4 = INIntentSlotValueTransformFromHomeEntityResponses(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INControlHomeIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INControlHomeIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeUserConfirmationRequired"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeFailure"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeFailurePartialSuccess"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeFailureNotFound"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeFailureEmptyActionSet"])
  {
    v4 = 9;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeFailureNotReady"])
  {
    v4 = 10;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeFailureUnlockRequired"])
  {
    v4 = 11;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeFailureNotAllowed"])
  {
    v4 = 12;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeFailureAlreadyActive"])
  {
    v4 = 13;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeFailureNetworkFailure"])
  {
    v4 = 14;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeFailureIntentFailure"])
  {
    v4 = 15;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeFailureRemoteAccessNotSetUp"])
  {
    v4 = 16;
  }

  if ([v3 isEqualToString:@"INControlHomeIntentResponseCodeFailureSecuredAccessDenied"])
  {
    v5 = 17;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INControlHomeIntentResponseCodeFailureIncompleteSyncData"];

  if (v6)
  {
    return 18;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INControlHomeIntentResponse *)self code];
  if ((v2 - 1) > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_18EE5E550[v2 - 1];
  }
}

- (INControlHomeIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INControlHomeIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INControlHomeIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INControlHomeIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INControlHomeIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INControlHomeIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INControlHomeIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INControlHomeIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 0x12)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727EEE0[a3];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INControlHomeIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INControlHomeIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if ((a3 - 7) < 0xC)
  {
    return a3 - 6;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 0x11)
  {
    return 3;
  }

  else
  {
    return dword_18EE5E508[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 2;
  v6 = 4;
  if (a3 != 7)
  {
    v6 = a3 == 5;
  }

  if (a3 != 2)
  {
    v5 = v6;
  }

  v7 = 3;
  v8 = 5;
  if (a5)
  {
    v8 = 6;
  }

  if ((a4 - 1) >= 0xC)
  {
    v9 = v8;
  }

  else
  {
    v9 = (a4 + 6);
  }

  if (a3 != 1)
  {
    v9 = 0;
  }

  if (a3)
  {
    v7 = v9;
  }

  if (a3 <= 1)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

@end