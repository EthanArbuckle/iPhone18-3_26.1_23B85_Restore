@interface INHangUpCallIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INHangUpCallIntentResponse)initWithBackingStore:(id)store;
- (INHangUpCallIntentResponse)initWithCode:(INHangUpCallIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INHangUpCallIntentResponse)initWithCoder:(id)coder;
- (INHangUpCallIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)hungUpCallType;
- (void)encodeWithCoder:(id)coder;
- (void)setHungUpCallType:(int64_t)type;
@end

@implementation INHangUpCallIntentResponse

- (id)_dictionaryRepresentation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"code";
  code = [(INHangUpCallIntentResponse *)self code];
  v3 = code;
  if (code < (INHangUpCallIntentResponseCodeFailureNoCallToHangUp|INHangUpCallIntentResponseCodeReady))
  {
    null = off_1E7286F80[code];
    v5 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v5 = 0;
  }

  v10[0] = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  if (v3 >= 7)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setHungUpCallType:(int64_t)type
{
  v4 = 0x7FFFFFFFLL;
  if ((type - 1) <= 7)
  {
    v4 = dword_18EE5EA60[type - 1];
  }

  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = _responseMessagePBRepresentation;
  if (v4 == 0x7FFFFFFF)
  {
    [_responseMessagePBRepresentation setHasHungUpCallType:0];
  }

  else
  {
    [_responseMessagePBRepresentation setHungUpCallType:v4];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (int64_t)hungUpCallType
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  hasHungUpCallType = [_responseMessagePBRepresentation hasHungUpCallType];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  hungUpCallType = [_responseMessagePBRepresentation2 hungUpCallType];
  if (hasHungUpCallType && (hungUpCallType - 2) <= 8)
  {
    v7 = qword_18EE5EA80[hungUpCallType - 2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INHangUpCallIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INHangUpCallIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INHangUpCallIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INHangUpCallIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INHangUpCallIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INHangUpCallIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INHangUpCallIntentResponseCodeFailureNoCallToHangUp"];

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
  code = [(INHangUpCallIntentResponse *)self code];
  if ((code - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F580[code - 1];
  }
}

- (INHangUpCallIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INHangUpCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INHangUpCallIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INHangUpCallIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INHangUpCallIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INHangUpCallIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INHangUpCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INHangUpCallIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
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

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 6)
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
  if ((code - 1) > 5)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F568[code - 1];
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

  if (code == 1)
  {
    v7 = 6;
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