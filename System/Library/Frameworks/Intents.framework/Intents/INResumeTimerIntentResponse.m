@interface INResumeTimerIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INResumeTimerIntentResponse)initWithBackingStore:(id)a3;
- (INResumeTimerIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INResumeTimerIntentResponse)initWithCoder:(id)a3;
- (NSArray)resumedTimers;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)a3;
- (void)setResumedTimers:(id)a3;
@end

@implementation INResumeTimerIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  v3 = [(INResumeTimerIntentResponse *)self code];
  v4 = v3;
  if (v3 < 0xB)
  {
    v5 = *(&off_1E7285FE8 + v3);
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"resumedTimers";
  v13[0] = v5;
  v7 = [(INResumeTimerIntentResponse *)self resumedTimers];
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

  if (v4 >= 0xB)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setResumedTimers:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTimers(v4);

  [v5 setResumedTimers:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (NSArray)resumedTimers
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 resumedTimers];
  v4 = INIntentSlotValueTransformFromTimers(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INResumeTimerIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INResumeTimerIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INResumeTimerIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INResumeTimerIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INResumeTimerIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INResumeTimerIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INResumeTimerIntentResponseCodeFailureNotFound"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INResumeTimerIntentResponseCodeFailureNoTimers"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INResumeTimerIntentResponseCodeFailureTimerAlreadyRunning"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"INResumeTimerIntentResponseCodeFailureAllTimersAlreadyRunning"])
  {
    v5 = 9;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INResumeTimerIntentResponseCodeFailureTimerTypeNotSupported"];

  if (v6)
  {
    return 10;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INResumeTimerIntentResponse *)self code];
  if ((v2 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F748[v2 - 1];
  }
}

- (INResumeTimerIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INResumeTimerIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INResumeTimerIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INResumeTimerIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INResumeTimerIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INResumeTimerIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INResumeTimerIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INResumeTimerIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 0xA)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E7285FE8 + a3);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INResumeTimerIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INResumeTimerIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if ((a3 - 6) >= 5)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return a3 - 6;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 9)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F720[a3 - 1];
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
  v7 = (a4 + 6);
  v8 = 4;
  if (a5)
  {
    v8 = 5;
  }

  if (a4 >= 5)
  {
    v7 = v8;
  }

  if (a3 != 1)
  {
    v7 = 0;
  }

  if (a3)
  {
    v6 = v7;
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