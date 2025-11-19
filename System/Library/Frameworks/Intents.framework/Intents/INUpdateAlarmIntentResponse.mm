@interface INUpdateAlarmIntentResponse
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INAlarm)updatedAlarm;
- (INUpdateAlarmIntentResponse)initWithBackingStore:(id)a3;
- (INUpdateAlarmIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INUpdateAlarmIntentResponse)initWithCoder:(id)a3;
- (NSArray)conflictAlarms;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)a3;
- (void)setConflictAlarms:(id)a3;
- (void)setUpdatedAlarm:(id)a3;
@end

@implementation INUpdateAlarmIntentResponse

- (id)_dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"code";
  v3 = [(INUpdateAlarmIntentResponse *)self code];
  v4 = v3;
  if (v3 < 6)
  {
    v5 = off_1E7288268[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v15[0] = v5;
  v14[1] = @"updatedAlarm";
  v7 = [(INUpdateAlarmIntentResponse *)self updatedAlarm];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"conflictAlarms";
  v9 = [(INUpdateAlarmIntentResponse *)self conflictAlarms];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (v4 >= 6)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setConflictAlarms:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToAlarms(v4);

  [v5 setConflictAlarms:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setUpdatedAlarm:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToAlarm(v4);

  [v5 setUpdatedAlarm:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (NSArray)conflictAlarms
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 conflictAlarms];
  v4 = INIntentSlotValueTransformFromAlarms(v3);

  return v4;
}

- (INAlarm)updatedAlarm
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 updatedAlarm];
  v4 = INIntentSlotValueTransformFromAlarm(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INUpdateAlarmIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INUpdateAlarmIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INUpdateAlarmIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INUpdateAlarmIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INUpdateAlarmIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INUpdateAlarmIntentResponseCodeFailureRequiringAppLaunch"];

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
  v2 = [(INUpdateAlarmIntentResponse *)self code];
  if ((v2 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[v2 - 1];
  }
}

- (INUpdateAlarmIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INUpdateAlarmIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INUpdateAlarmIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INUpdateAlarmIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INUpdateAlarmIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INUpdateAlarmIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INUpdateAlarmIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INUpdateAlarmIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
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
      v9 = off_1E7288268[a3];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INUpdateAlarmIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INUpdateAlarmIntentResponse;
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