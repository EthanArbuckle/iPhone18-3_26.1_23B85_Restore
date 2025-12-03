@interface INSetTimerAttributeIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INSetTimerAttributeIntentResponse)initWithBackingStore:(id)store;
- (INSetTimerAttributeIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INSetTimerAttributeIntentResponse)initWithCoder:(id)coder;
- (INTimer)updatedTimer;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
- (void)setUpdatedTimer:(id)timer;
@end

@implementation INSetTimerAttributeIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INSetTimerAttributeIntentResponse *)self code];
  v4 = code;
  if (code < 9)
  {
    null = *(&off_1E7285FA0 + code);
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"updatedTimer";
  v13[0] = null;
  updatedTimer = [(INSetTimerAttributeIntentResponse *)self updatedTimer];
  null2 = updatedTimer;
  if (!updatedTimer)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!updatedTimer)
  {
  }

  if (v4 >= 9)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setUpdatedTimer:(id)timer
{
  timerCopy = timer;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTimer(timerCopy);

  [_responseMessagePBRepresentation setUpdatedTimer:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (INTimer)updatedTimer
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  updatedTimer = [_responseMessagePBRepresentation updatedTimer];
  v4 = INIntentSlotValueTransformFromTimer(updatedTimer);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INSetTimerAttributeIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSetTimerAttributeIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSetTimerAttributeIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSetTimerAttributeIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSetTimerAttributeIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INSetTimerAttributeIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INSetTimerAttributeIntentResponseCodeFailureNotFound"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INSetTimerAttributeIntentResponseCodeFailureNoTimers"])
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSetTimerAttributeIntentResponseCodeFailureNotSupported"];

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
  code = [(INSetTimerAttributeIntentResponse *)self code];
  if ((code - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FAA0[code - 1];
  }
}

- (INSetTimerAttributeIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSetTimerAttributeIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSetTimerAttributeIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INSetTimerAttributeIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSetTimerAttributeIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSetTimerAttributeIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSetTimerAttributeIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INSetTimerAttributeIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 8)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E7285FA0 + code);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSetTimerAttributeIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSetTimerAttributeIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 6) > 2)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return dword_18EE5FB00[code - 6];
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 7)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FA80[code - 1];
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
  v8 = 8;
  v9 = 4;
  if (requested)
  {
    v9 = 5;
  }

  if (code == 1)
  {
    v9 = 7;
  }

  if (code != 3)
  {
    v8 = v9;
  }

  if (code)
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