@interface INControlHomeIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INControlHomeIntentResponse)initWithBackingStore:(id)store;
- (INControlHomeIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INControlHomeIntentResponse)initWithCoder:(id)coder;
- (NSArray)entityResponses;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
- (void)setEntityResponses:(id)responses;
@end

@implementation INControlHomeIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INControlHomeIntentResponse *)self code];
  v4 = code;
  if (code < 0x13)
  {
    null = off_1E727EEE0[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"entityResponses";
  v13[0] = null;
  entityResponses = [(INControlHomeIntentResponse *)self entityResponses];
  null2 = entityResponses;
  if (!entityResponses)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!entityResponses)
  {
  }

  if (v4 >= 0x13)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setEntityResponses:(id)responses
{
  responsesCopy = responses;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToHomeEntityResponses(responsesCopy);

  [_responseMessagePBRepresentation setEntityResponses:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSArray)entityResponses
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  entityResponses = [_responseMessagePBRepresentation entityResponses];
  v4 = INIntentSlotValueTransformFromHomeEntityResponses(entityResponses);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INControlHomeIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INControlHomeIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeUserConfirmationRequired"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailure"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailurePartialSuccess"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailureNotFound"])
  {
    v4 = 8;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailureEmptyActionSet"])
  {
    v4 = 9;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailureNotReady"])
  {
    v4 = 10;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailureUnlockRequired"])
  {
    v4 = 11;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailureNotAllowed"])
  {
    v4 = 12;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailureAlreadyActive"])
  {
    v4 = 13;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailureNetworkFailure"])
  {
    v4 = 14;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailureIntentFailure"])
  {
    v4 = 15;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailureRemoteAccessNotSetUp"])
  {
    v4 = 16;
  }

  if ([nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailureSecuredAccessDenied"])
  {
    v5 = 17;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INControlHomeIntentResponseCodeFailureIncompleteSyncData"];

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
  code = [(INControlHomeIntentResponse *)self code];
  if ((code - 1) > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_18EE5E550[code - 1];
  }
}

- (INControlHomeIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INControlHomeIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INControlHomeIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INControlHomeIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INControlHomeIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INControlHomeIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INControlHomeIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INControlHomeIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 0x12)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727EEE0[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INControlHomeIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INControlHomeIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 7) < 0xC)
  {
    return code - 6;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 0x11)
  {
    return 3;
  }

  else
  {
    return dword_18EE5E508[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 2;
  v6 = 4;
  if (type != 7)
  {
    v6 = type == 5;
  }

  if (type != 2)
  {
    v5 = v6;
  }

  v7 = 3;
  v8 = 5;
  if (requested)
  {
    v8 = 6;
  }

  if ((code - 1) >= 0xC)
  {
    v9 = v8;
  }

  else
  {
    v9 = (code + 6);
  }

  if (type != 1)
  {
    v9 = 0;
  }

  if (type)
  {
    v7 = v9;
  }

  if (type <= 1)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

@end