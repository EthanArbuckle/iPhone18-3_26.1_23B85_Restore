@interface INDeleteEventIntentResponse
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INDeleteEventIntentResponse)initWithBackingStore:(id)a3;
- (INDeleteEventIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INDeleteEventIntentResponse)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (int64_t)confirmationReason;
- (void)encodeWithCoder:(id)a3;
- (void)setConfirmationReason:(int64_t)a3;
@end

@implementation INDeleteEventIntentResponse

- (id)_dictionaryRepresentation
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"code";
  v3 = [(INDeleteEventIntentResponse *)self code];
  v4 = v3;
  if (v3 < 6)
  {
    v5 = off_1E7281FB8[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v13[1] = @"confirmationReason";
  v14[0] = v5;
  v7 = [(INDeleteEventIntentResponse *)self confirmationReason];
  v8 = @"unknown";
  if (v7 == 1)
  {
    v8 = @"deleteAllRecurrences";
  }

  v9 = v8;
  v14[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  if (v4 >= 6)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setConfirmationReason:(int64_t)a3
{
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = v5;
  if (a3 == 1)
  {
    [v5 setConfirmationReason:1];
  }

  else
  {
    [v5 setHasConfirmationReason:0];
  }

  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (int64_t)confirmationReason
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  LODWORD(v4) = [v3 hasConfirmationReason];
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([v5 confirmationReason] == 1)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INDeleteEventIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INDeleteEventIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INDeleteEventIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INDeleteEventIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INDeleteEventIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INDeleteEventIntentResponseCodeFailureRequiringAppLaunch"];

  if (v6)
  {
    return 5;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INDeleteEventIntentResponse *)self code];
  if ((v2 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[v2 - 1];
  }
}

- (INDeleteEventIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INDeleteEventIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INDeleteEventIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INDeleteEventIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INDeleteEventIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INDeleteEventIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INDeleteEventIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INDeleteEventIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7281FB8[a3];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INDeleteEventIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INDeleteEventIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FDB0[a3 - 1];
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
  v7 = 4;
  if (a5)
  {
    v7 = 5;
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