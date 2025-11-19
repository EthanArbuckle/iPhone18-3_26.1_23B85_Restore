@interface INSnoozeTasksIntentResponse
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INSnoozeTasksIntentResponse)initWithBackingStore:(id)a3;
- (INSnoozeTasksIntentResponse)initWithCode:(INSnoozeTasksIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSnoozeTasksIntentResponse)initWithCoder:(id)a3;
- (INSnoozeTasksIntentResponseCode)code;
- (NSArray)snoozedTasks;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
- (void)setSnoozedTasks:(NSArray *)snoozedTasks;
@end

@implementation INSnoozeTasksIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  v3 = [(INSnoozeTasksIntentResponse *)self code];
  v4 = v3;
  if (v3 < (INSnoozeTasksIntentResponseCodeFailure|INSnoozeTasksIntentResponseCodeInProgress))
  {
    v5 = off_1E72871F0[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"snoozedTasks";
  v13[0] = v5;
  v7 = [(INSnoozeTasksIntentResponse *)self snoozedTasks];
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

  if (v4 >= 6)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setSnoozedTasks:(NSArray *)snoozedTasks
{
  v4 = snoozedTasks;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTasks(v4);

  [v5 setSnoozedTasks:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (NSArray)snoozedTasks
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 snoozedTasks];
  v4 = INIntentSlotValueTransformFromTasks(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INSnoozeTasksIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INSnoozeTasksIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INSnoozeTasksIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INSnoozeTasksIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INSnoozeTasksIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INSnoozeTasksIntentResponseCodeFailureRequiringAppLaunch"];

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
  v2 = [(INSnoozeTasksIntentResponse *)self code];
  if ((v2 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[v2 - 1];
  }
}

- (INSnoozeTasksIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSnoozeTasksIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INSnoozeTasksIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INSnoozeTasksIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSnoozeTasksIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSnoozeTasksIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSnoozeTasksIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INSnoozeTasksIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INSnoozeTasksIntentResponse)initWithCode:(INSnoozeTasksIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INSnoozeTasksIntentResponseCodeFailureRequiringAppLaunch)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E72871F0[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSnoozeTasksIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSnoozeTasksIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

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