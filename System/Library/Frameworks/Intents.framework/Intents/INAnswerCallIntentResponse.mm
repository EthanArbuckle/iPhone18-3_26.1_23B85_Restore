@interface INAnswerCallIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INAnswerCallIntentResponse)initWithBackingStore:(id)store;
- (INAnswerCallIntentResponse)initWithCode:(INAnswerCallIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INAnswerCallIntentResponse)initWithCoder:(id)coder;
- (INAnswerCallIntentResponseCode)code;
- (INConnectedCall)answeredCall;
- (NSArray)callRecords;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)statusCode;
- (void)encodeWithCoder:(id)coder;
- (void)setAnsweredCall:(id)call;
- (void)setCallRecords:(NSArray *)callRecords;
- (void)setStatusCode:(int64_t)code;
@end

@implementation INAnswerCallIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INAnswerCallIntentResponse *)self code];
  v4 = code;
  if (code < (INAnswerCallIntentResponseCodeFailureRequiringAppLaunch|INAnswerCallIntentResponseCodeReady))
  {
    null = off_1E7286E70[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"callRecords";
  v13[0] = null;
  callRecords = [(INAnswerCallIntentResponse *)self callRecords];
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

  if (v4 >= 7)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setAnsweredCall:(id)call
{
  callCopy = call;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToConnectedCall(callCopy);

  [_responseMessagePBRepresentation setAnsweredCall:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
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

- (INConnectedCall)answeredCall
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  answeredCall = [_responseMessagePBRepresentation answeredCall];
  v4 = INIntentSlotValueTransformFromConnectedCall(answeredCall);

  return v4;
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
  [nameCopy isEqualToString:@"INAnswerCallIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INAnswerCallIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INAnswerCallIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INAnswerCallIntentResponseCodeInProgress"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INAnswerCallIntentResponseCodeSuccess"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INAnswerCallIntentResponseCodeFailure"])
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INAnswerCallIntentResponseCodeFailureRequiringAppLaunch"];

  if (v6)
  {
    return 6;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  result = [(INAnswerCallIntentResponse *)self code];
  if ((result - 1) >= 6)
  {
    return 0;
  }

  return result;
}

- (INAnswerCallIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INAnswerCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INAnswerCallIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INAnswerCallIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INAnswerCallIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INAnswerCallIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INAnswerCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INAnswerCallIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INAnswerCallIntentResponse)initWithCode:(INAnswerCallIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INAnswerCallIntentResponseCodeFailureRequiringAppLaunch)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7286E70[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INAnswerCallIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INAnswerCallIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 5)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FD98[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 3;
  v6 = 2;
  if (type != 4)
  {
    v6 = type == 5;
  }

  if (type != 2)
  {
    v5 = v6;
  }

  v7 = 4;
  v8 = 5;
  if (requested)
  {
    v8 = 6;
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