@interface INIdentifyIncomingCallerIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INIdentifyIncomingCallerIntentResponse)initWithBackingStore:(id)store;
- (INIdentifyIncomingCallerIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INIdentifyIncomingCallerIntentResponse)initWithCoder:(id)coder;
- (NSArray)callRecords;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (int64_t)statusCode;
- (void)encodeWithCoder:(id)coder;
- (void)setCallRecords:(id)records;
- (void)setStatusCode:(int64_t)code;
@end

@implementation INIdentifyIncomingCallerIntentResponse

- (id)_dictionaryRepresentation
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15[0] = @"code";
  code = [(INIdentifyIncomingCallerIntentResponse *)self code];
  v4 = code;
  if (code < 7)
  {
    null = off_1E7286E38[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v16[0] = null;
  v15[1] = @"statusCode";
  statusCode = [(INIdentifyIncomingCallerIntentResponse *)self statusCode];
  v8 = @"unknown";
  if (statusCode == 2)
  {
    v8 = @"incomingCall";
  }

  if (statusCode == 1)
  {
    v8 = @"noIncomingCall";
  }

  v9 = v8;
  v16[1] = v9;
  v15[2] = @"callRecords";
  callRecords = [(INIdentifyIncomingCallerIntentResponse *)self callRecords];
  null2 = callRecords;
  if (!callRecords)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null2;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (!callRecords)
  {
  }

  if (v4 >= 7)
  {
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)setCallRecords:(id)records
{
  recordsCopy = records;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToCallRecordValues(recordsCopy);

  [_responseMessagePBRepresentation setCallRecords:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setStatusCode:(int64_t)code
{
  if (code == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  if (code == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = _responseMessagePBRepresentation;
  if (v5 == 0x7FFFFFFF)
  {
    [_responseMessagePBRepresentation setHasStatusCode:0];
  }

  else
  {
    [_responseMessagePBRepresentation setStatusCode:v5];
  }

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

- (int64_t)statusCode
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  hasStatusCode = [_responseMessagePBRepresentation hasStatusCode];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  statusCode = [_responseMessagePBRepresentation2 statusCode];
  v7 = 2 * (statusCode == 2);
  if (statusCode == 1)
  {
    v7 = 1;
  }

  if (hasStatusCode)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INIdentifyIncomingCallerIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INIdentifyIncomingCallerIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INIdentifyIncomingCallerIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INIdentifyIncomingCallerIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INIdentifyIncomingCallerIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INIdentifyIncomingCallerIntentResponseCodeFailureRequiringAppLaunch"];

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
  code = [(INIdentifyIncomingCallerIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INIdentifyIncomingCallerIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INIdentifyIncomingCallerIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INIdentifyIncomingCallerIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INIdentifyIncomingCallerIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INIdentifyIncomingCallerIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INIdentifyIncomingCallerIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INIdentifyIncomingCallerIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INIdentifyIncomingCallerIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 6)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7286E38[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INIdentifyIncomingCallerIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INIdentifyIncomingCallerIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 4)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FDB0[code - 1];
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
  v7 = 4;
  if (requested)
  {
    v7 = 5;
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