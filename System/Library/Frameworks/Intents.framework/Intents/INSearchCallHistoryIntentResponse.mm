@interface INSearchCallHistoryIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INSearchCallHistoryIntentResponse)initWithBackingStore:(id)a3;
- (INSearchCallHistoryIntentResponse)initWithCode:(INSearchCallHistoryIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSearchCallHistoryIntentResponse)initWithCoder:(id)a3;
- (INSearchCallHistoryIntentResponseCode)code;
- (NSArray)callRecords;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
- (void)setCallRecords:(NSArray *)callRecords;
@end

@implementation INSearchCallHistoryIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  v3 = [(INSearchCallHistoryIntentResponse *)self code];
  v4 = v3;
  if (v3 < 8)
  {
    v5 = off_1E727F540[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"callRecords";
  v13[0] = v5;
  v7 = [(INSearchCallHistoryIntentResponse *)self callRecords];
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

  if (v4 >= 8)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setCallRecords:(NSArray *)callRecords
{
  v4 = callRecords;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToCallRecordValues(v4);

  [v5 setCallRecords:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (NSArray)callRecords
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 callRecords];
  v4 = INIntentSlotValueTransformFromCallRecordValues(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INSearchCallHistoryIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INSearchCallHistoryIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INSearchCallHistoryIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INSearchCallHistoryIntentResponseCodeInProgress"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INSearchCallHistoryIntentResponseCodeSuccess"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INSearchCallHistoryIntentResponseCodeFailure"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INSearchCallHistoryIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INSearchCallHistoryIntentResponseCodeFailureAppConfigurationRequired"];

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
  v2 = [(INSearchCallHistoryIntentResponse *)self code];
  if ((v2 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_18EE5E750[v2 - 1];
  }
}

- (INSearchCallHistoryIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSearchCallHistoryIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INSearchCallHistoryIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INSearchCallHistoryIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSearchCallHistoryIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSearchCallHistoryIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INSearchCallHistoryIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INSearchCallHistoryIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INSearchCallHistoryIntentResponse)initWithCode:(INSearchCallHistoryIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INSearchCallHistoryIntentResponseCodeSuccess)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727F540[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSearchCallHistoryIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSearchCallHistoryIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if (a3 == 5)
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 3;
  }

  else
  {
    return dword_18EE5E730[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 6;
  v6 = 2;
  if (a3 != 4)
  {
    v6 = a3 == 5;
  }

  if (a3 != 2)
  {
    v5 = v6;
  }

  v7 = 7;
  v8 = 3;
  if (a5)
  {
    v8 = 4;
  }

  if (a4 == 1)
  {
    v8 = 5;
  }

  if (a3 != 1)
  {
    v8 = 0;
  }

  if (a3)
  {
    v7 = v8;
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