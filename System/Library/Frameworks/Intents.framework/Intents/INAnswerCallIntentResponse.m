@interface INAnswerCallIntentResponse
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INAnswerCallIntentResponse)initWithBackingStore:(id)a3;
- (INAnswerCallIntentResponse)initWithCode:(INAnswerCallIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INAnswerCallIntentResponse)initWithCoder:(id)a3;
- (INAnswerCallIntentResponseCode)code;
- (INConnectedCall)answeredCall;
- (NSArray)callRecords;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)statusCode;
- (void)encodeWithCoder:(id)a3;
- (void)setAnsweredCall:(id)a3;
- (void)setCallRecords:(NSArray *)callRecords;
- (void)setStatusCode:(int64_t)a3;
@end

@implementation INAnswerCallIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  v3 = [(INAnswerCallIntentResponse *)self code];
  v4 = v3;
  if (v3 < (INAnswerCallIntentResponseCodeFailureRequiringAppLaunch|INAnswerCallIntentResponseCodeReady))
  {
    v5 = off_1E7286E70[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"callRecords";
  v13[0] = v5;
  v7 = [(INAnswerCallIntentResponse *)self callRecords];
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

  if (v4 >= 7)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setAnsweredCall:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToConnectedCall(v4);

  [v5 setAnsweredCall:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
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

- (void)setStatusCode:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  if (a3 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = v6;
  if (v5 == 0x7FFFFFFF)
  {
    [v6 setHasStatusCode:0];
  }

  else
  {
    [v6 setStatusCode:v5];
  }

  v9 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v8 = [v9 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v8];
}

- (INConnectedCall)answeredCall
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 answeredCall];
  v4 = INIntentSlotValueTransformFromConnectedCall(v3);

  return v4;
}

- (NSArray)callRecords
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 callRecords];
  v4 = INIntentSlotValueTransformFromCallRecordValues(v3);

  return v4;
}

- (int64_t)statusCode
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 hasStatusCode];
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 statusCode];
  v7 = 2 * (v6 == 2);
  if (v6 == 1)
  {
    v7 = 1;
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INAnswerCallIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INAnswerCallIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INAnswerCallIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INAnswerCallIntentResponseCodeInProgress"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INAnswerCallIntentResponseCodeSuccess"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INAnswerCallIntentResponseCodeFailure"])
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INAnswerCallIntentResponseCodeFailureRequiringAppLaunch"];

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

- (INAnswerCallIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INAnswerCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INAnswerCallIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INAnswerCallIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INAnswerCallIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INAnswerCallIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INAnswerCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INAnswerCallIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
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

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FD98[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 3;
  v6 = 2;
  if (a3 != 4)
  {
    v6 = a3 == 5;
  }

  if (a3 != 2)
  {
    v5 = v6;
  }

  v7 = 4;
  v8 = 5;
  if (a5)
  {
    v8 = 6;
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