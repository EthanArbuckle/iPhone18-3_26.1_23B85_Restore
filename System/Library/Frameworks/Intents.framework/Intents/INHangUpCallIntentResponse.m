@interface INHangUpCallIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INHangUpCallIntentResponse)initWithBackingStore:(id)a3;
- (INHangUpCallIntentResponse)initWithCode:(INHangUpCallIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INHangUpCallIntentResponse)initWithCoder:(id)a3;
- (INHangUpCallIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)hungUpCallType;
- (void)encodeWithCoder:(id)a3;
- (void)setHungUpCallType:(int64_t)a3;
@end

@implementation INHangUpCallIntentResponse

- (id)_dictionaryRepresentation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"code";
  v2 = [(INHangUpCallIntentResponse *)self code];
  v3 = v2;
  if (v2 < (INHangUpCallIntentResponseCodeFailureNoCallToHangUp|INHangUpCallIntentResponseCodeReady))
  {
    v4 = off_1E7286F80[v2];
    v5 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = 0;
  }

  v10[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  if (v3 >= 7)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setHungUpCallType:(int64_t)a3
{
  v4 = 0x7FFFFFFFLL;
  if ((a3 - 1) <= 7)
  {
    v4 = dword_18EE5EA60[a3 - 1];
  }

  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = v5;
  if (v4 == 0x7FFFFFFF)
  {
    [v5 setHasHungUpCallType:0];
  }

  else
  {
    [v5 setHungUpCallType:v4];
  }

  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (int64_t)hungUpCallType
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 hasHungUpCallType];
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v5 hungUpCallType];
  if (v4 && (v6 - 2) <= 8)
  {
    v7 = qword_18EE5EA80[v6 - 2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INHangUpCallIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INHangUpCallIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INHangUpCallIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INHangUpCallIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INHangUpCallIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INHangUpCallIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INHangUpCallIntentResponseCodeFailureNoCallToHangUp"];

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
  v2 = [(INHangUpCallIntentResponse *)self code];
  if ((v2 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F580[v2 - 1];
  }
}

- (INHangUpCallIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INHangUpCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INHangUpCallIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INHangUpCallIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INHangUpCallIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INHangUpCallIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INHangUpCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INHangUpCallIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INHangUpCallIntentResponse)initWithCode:(INHangUpCallIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INHangUpCallIntentResponseCodeFailureNoCallToHangUp)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7286F80[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INHangUpCallIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INHangUpCallIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if (a3 == 6)
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
  if ((a3 - 1) > 5)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F568[a3 - 1];
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

  if (a4 == 1)
  {
    v7 = 6;
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