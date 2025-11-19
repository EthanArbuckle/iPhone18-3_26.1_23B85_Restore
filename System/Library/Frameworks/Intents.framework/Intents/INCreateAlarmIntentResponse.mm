@interface INCreateAlarmIntentResponse
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INAlarm)createdAlarm;
- (INCreateAlarmIntentResponse)initWithBackingStore:(id)a3;
- (INCreateAlarmIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INCreateAlarmIntentResponse)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (int64_t)successCode;
- (void)encodeWithCoder:(id)a3;
- (void)setCreatedAlarm:(id)a3;
- (void)setSuccessCode:(int64_t)a3;
@end

@implementation INCreateAlarmIntentResponse

- (id)_dictionaryRepresentation
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15[0] = @"code";
  v3 = [(INCreateAlarmIntentResponse *)self code];
  v4 = v3;
  if (v3 < 6)
  {
    v5 = off_1E7288160[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v16[0] = v5;
  v15[1] = @"createdAlarm";
  v7 = [(INCreateAlarmIntentResponse *)self createdAlarm];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v8;
  v15[2] = @"successCode";
  v9 = [(INCreateAlarmIntentResponse *)self successCode];
  if ((v9 - 1) > 2)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E7288298[v9 - 1];
  }

  v11 = v10;
  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  if (!v7)
  {
  }

  if (v4 >= 6)
  {
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)setSuccessCode:(int64_t)a3
{
  v4 = a3 - 1;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = v5;
  if (v4 > 2)
  {
    [v5 setHasSuccessCode:0];
  }

  else
  {
    [v5 setSuccessCode:v4];
  }

  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setCreatedAlarm:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToAlarm(v4);

  [v5 setCreatedAlarm:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (int64_t)successCode
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 hasSuccessCode];
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 successCode];
  if (((v6 < 3) & v4) != 0)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (INAlarm)createdAlarm
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 createdAlarm];
  v4 = INIntentSlotValueTransformFromAlarm(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INCreateAlarmIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INCreateAlarmIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INCreateAlarmIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INCreateAlarmIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INCreateAlarmIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INCreateAlarmIntentResponseCodeFailureRequiringAppLaunch"];

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
  v2 = [(INCreateAlarmIntentResponse *)self code];
  if ((v2 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[v2 - 1];
  }
}

- (INCreateAlarmIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INCreateAlarmIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INCreateAlarmIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INCreateAlarmIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INCreateAlarmIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INCreateAlarmIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INCreateAlarmIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INCreateAlarmIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
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
      v9 = off_1E7288160[a3];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INCreateAlarmIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INCreateAlarmIntentResponse;
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