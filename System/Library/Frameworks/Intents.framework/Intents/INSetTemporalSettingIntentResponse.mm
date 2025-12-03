@interface INSetTemporalSettingIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INDateComponentsRange)oldValue;
- (INDateComponentsRange)updatedValue;
- (INSetTemporalSettingIntentResponse)initWithBackingStore:(id)store;
- (INSetTemporalSettingIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INSetTemporalSettingIntentResponse)initWithCoder:(id)coder;
- (NSString)errorDetail;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
- (void)setErrorDetail:(id)detail;
- (void)setOldValue:(id)value;
- (void)setUpdatedValue:(id)value;
@end

@implementation INSetTemporalSettingIntentResponse

- (id)_dictionaryRepresentation
{
  v17[4] = *MEMORY[0x1E69E9840];
  v16[0] = @"code";
  code = [(INSetTemporalSettingIntentResponse *)self code];
  v4 = code;
  if (code < 9)
  {
    null = *(&off_1E7287B98 + code);
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v17[0] = null;
  v16[1] = @"oldValue";
  oldValue = [(INSetTemporalSettingIntentResponse *)self oldValue];
  null2 = oldValue;
  if (!oldValue)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"updatedValue";
  updatedValue = [(INSetTemporalSettingIntentResponse *)self updatedValue];
  null3 = updatedValue;
  if (!updatedValue)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"errorDetail";
  errorDetail = [(INSetTemporalSettingIntentResponse *)self errorDetail];
  null4 = errorDetail;
  if (!errorDetail)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (!errorDetail)
  {
  }

  if (!updatedValue)
  {
  }

  if (!oldValue)
  {
  }

  if (v4 >= 9)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
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

- (void)setUpdatedValue:(id)value
{
  valueCopy = value;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDateTimeRange(valueCopy);

  [_responseMessagePBRepresentation setUpdatedValue:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setOldValue:(id)value
{
  valueCopy = value;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDateTimeRange(valueCopy);

  [_responseMessagePBRepresentation setOldValue:v6];
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

- (INDateComponentsRange)updatedValue
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  updatedValue = [_responseMessagePBRepresentation updatedValue];
  v4 = INIntentSlotValueTransformFromDateTimeRange(updatedValue);

  return v4;
}

- (INDateComponentsRange)oldValue
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  oldValue = [_responseMessagePBRepresentation oldValue];
  v4 = INIntentSlotValueTransformFromDateTimeRange(oldValue);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INSetTemporalSettingIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSetTemporalSettingIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSetTemporalSettingIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSetTemporalSettingIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSetTemporalSettingIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INSetTemporalSettingIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INSetTemporalSettingIntentResponseCodeFailureInvalidValue"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INSetTemporalSettingIntentResponseCodeFailureUnsupported"])
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSetTemporalSettingIntentResponseCodeFailureOtherWithReason"];

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
  code = [(INSetTemporalSettingIntentResponse *)self code];
  if ((code - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FAA0[code - 1];
  }
}

- (INSetTemporalSettingIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSetTemporalSettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSetTemporalSettingIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INSetTemporalSettingIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSetTemporalSettingIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSetTemporalSettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSetTemporalSettingIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INSetTemporalSettingIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
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
      v9 = *(&off_1E7287B98 + code);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSetTemporalSettingIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSetTemporalSettingIntentResponse;
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