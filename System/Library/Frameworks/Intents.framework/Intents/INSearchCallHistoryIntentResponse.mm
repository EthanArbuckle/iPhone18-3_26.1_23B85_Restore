@interface INSearchCallHistoryIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INSearchCallHistoryIntentResponse)initWithBackingStore:(id)store;
- (INSearchCallHistoryIntentResponse)initWithCode:(INSearchCallHistoryIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSearchCallHistoryIntentResponse)initWithCoder:(id)coder;
- (INSearchCallHistoryIntentResponseCode)code;
- (NSArray)callRecords;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setCallRecords:(NSArray *)callRecords;
@end

@implementation INSearchCallHistoryIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INSearchCallHistoryIntentResponse *)self code];
  v4 = code;
  if (code < 8)
  {
    null = off_1E727F540[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"callRecords";
  v13[0] = null;
  callRecords = [(INSearchCallHistoryIntentResponse *)self callRecords];
  null2 = callRecords;
  if (!callRecords)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!callRecords)
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
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToCallRecordValues(v4);

  [_responseMessagePBRepresentation setCallRecords:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSArray)callRecords
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  callRecords = [_responseMessagePBRepresentation callRecords];
  v4 = INIntentSlotValueTransformFromCallRecordValues(callRecords);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INSearchCallHistoryIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSearchCallHistoryIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSearchCallHistoryIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSearchCallHistoryIntentResponseCodeInProgress"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INSearchCallHistoryIntentResponseCodeSuccess"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INSearchCallHistoryIntentResponseCodeFailure"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSearchCallHistoryIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSearchCallHistoryIntentResponseCodeFailureAppConfigurationRequired"];

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
  code = [(INSearchCallHistoryIntentResponse *)self code];
  if ((code - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_18EE5E750[code - 1];
  }
}

- (INSearchCallHistoryIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSearchCallHistoryIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSearchCallHistoryIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INSearchCallHistoryIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSearchCallHistoryIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSearchCallHistoryIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSearchCallHistoryIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSearchCallHistoryIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
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

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 5)
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 6)
  {
    return 3;
  }

  else
  {
    return dword_18EE5E730[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 6;
  v6 = 2;
  if (type != 4)
  {
    v6 = type == 5;
  }

  if (type != 2)
  {
    v5 = v6;
  }

  v7 = 7;
  v8 = 3;
  if (requested)
  {
    v8 = 4;
  }

  if (code == 1)
  {
    v8 = 5;
  }

  if (type != 1)
  {
    v8 = 0;
  }

  if (type)
  {
    v7 = v8;
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