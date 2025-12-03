@interface INSetBinarySettingIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INSetBinarySettingIntentResponse)initWithBackingStore:(id)store;
- (INSetBinarySettingIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INSetBinarySettingIntentResponse)initWithCoder:(id)coder;
- (NSString)errorDetail;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (int64_t)oldValue;
- (int64_t)updatedValue;
- (void)encodeWithCoder:(id)coder;
- (void)setErrorDetail:(id)detail;
- (void)setOldValue:(int64_t)value;
- (void)setUpdatedValue:(int64_t)value;
@end

@implementation INSetBinarySettingIntentResponse

- (id)_dictionaryRepresentation
{
  v19[4] = *MEMORY[0x1E69E9840];
  v18[0] = @"code";
  code = [(INSetBinarySettingIntentResponse *)self code];
  v4 = code;
  if (code < 9)
  {
    null = *(&off_1E7287D10 + code);
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v19[0] = null;
  v18[1] = @"oldValue";
  oldValue = [(INSetBinarySettingIntentResponse *)self oldValue];
  if ((oldValue - 1) > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = *(&off_1E7287C40 + oldValue - 1);
  }

  v9 = v8;
  v19[1] = v9;
  v18[2] = @"updatedValue";
  updatedValue = [(INSetBinarySettingIntentResponse *)self updatedValue];
  if ((updatedValue - 1) > 2)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = *(&off_1E7287C40 + updatedValue - 1);
  }

  v12 = v11;
  v19[2] = v12;
  v18[3] = @"errorDetail";
  errorDetail = [(INSetBinarySettingIntentResponse *)self errorDetail];
  null2 = errorDetail;
  if (!errorDetail)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = null2;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  if (!errorDetail)
  {
  }

  if (v4 >= 9)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setErrorDetail:(id)detail
{
  detailCopy = detail;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation setErrorDetail:detailCopy];

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setUpdatedValue:(int64_t)value
{
  v4 = value - 1;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = _responseMessagePBRepresentation;
  if (v4 > 2)
  {
    [_responseMessagePBRepresentation setHasUpdatedValue:0];
  }

  else
  {
    [_responseMessagePBRepresentation setUpdatedValue:?];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setOldValue:(int64_t)value
{
  v4 = value - 1;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = _responseMessagePBRepresentation;
  if (v4 > 2)
  {
    [_responseMessagePBRepresentation setHasOldValue:0];
  }

  else
  {
    [_responseMessagePBRepresentation setOldValue:?];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSString)errorDetail
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  errorDetail = [_responseMessagePBRepresentation errorDetail];
  v4 = [errorDetail copy];

  return v4;
}

- (int64_t)updatedValue
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  hasUpdatedValue = [_responseMessagePBRepresentation hasUpdatedValue];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  updatedValue = [_responseMessagePBRepresentation2 updatedValue];
  if (((updatedValue - 1 < 3) & hasUpdatedValue) != 0)
  {
    v7 = updatedValue;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)oldValue
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  hasOldValue = [_responseMessagePBRepresentation hasOldValue];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  oldValue = [_responseMessagePBRepresentation2 oldValue];
  if (((oldValue - 1 < 3) & hasOldValue) != 0)
  {
    v7 = oldValue;
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
  [nameCopy isEqualToString:@"INSetBinarySettingIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSetBinarySettingIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSetBinarySettingIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSetBinarySettingIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSetBinarySettingIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INSetBinarySettingIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INSetBinarySettingIntentResponseCodeFailureInvalidTrigger"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INSetBinarySettingIntentResponseCodeFailureUnsupported"])
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSetBinarySettingIntentResponseCodeFailureOtherWithReason"];

  if (v6)
  {
    return 8;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INSetBinarySettingIntentResponse *)self code];
  if ((code - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FAA0[code - 1];
  }
}

- (INSetBinarySettingIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSetBinarySettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSetBinarySettingIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INSetBinarySettingIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSetBinarySettingIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSetBinarySettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSetBinarySettingIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INSetBinarySettingIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 8)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E7287D10 + code);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSetBinarySettingIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSetBinarySettingIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 6) < 3)
  {
    return code - 5;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 7)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FA80[code - 1];
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

  if ((code - 1) >= 3)
  {
    v8 = v7;
  }

  else
  {
    v8 = (code + 5);
  }

  if (type != 1)
  {
    v8 = 0;
  }

  if (type)
  {
    v6 = v8;
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