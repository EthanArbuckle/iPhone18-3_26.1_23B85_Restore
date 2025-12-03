@interface INSetNumericSettingIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INNumericSettingValue)maxValue;
- (INNumericSettingValue)minValue;
- (INNumericSettingValue)oldValue;
- (INNumericSettingValue)updatedValue;
- (INSetNumericSettingIntentResponse)initWithBackingStore:(id)store;
- (INSetNumericSettingIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INSetNumericSettingIntentResponse)initWithCoder:(id)coder;
- (NSString)errorDetail;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
- (void)setErrorDetail:(id)detail;
- (void)setMaxValue:(id)value;
- (void)setMinValue:(id)value;
- (void)setOldValue:(id)value;
- (void)setUpdatedValue:(id)value;
@end

@implementation INSetNumericSettingIntentResponse

- (id)_dictionaryRepresentation
{
  v23[6] = *MEMORY[0x1E69E9840];
  v22[0] = @"code";
  code = [(INSetNumericSettingIntentResponse *)self code];
  v21 = code;
  if (code < 0xA)
  {
    null = *(&off_1E7287B08 + code);
    v20 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v20 = 0;
  }

  v19 = null;
  v23[0] = null;
  v22[1] = @"oldValue";
  oldValue = [(INSetNumericSettingIntentResponse *)self oldValue];
  v6 = oldValue;
  if (!oldValue)
  {
    oldValue = [MEMORY[0x1E695DFB0] null];
  }

  v18 = oldValue;
  v23[1] = oldValue;
  v22[2] = @"updatedValue";
  updatedValue = [(INSetNumericSettingIntentResponse *)self updatedValue];
  null2 = updatedValue;
  if (!updatedValue)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null2;
  v22[3] = @"minValue";
  minValue = [(INSetNumericSettingIntentResponse *)self minValue];
  null3 = minValue;
  if (!minValue)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null3;
  v22[4] = @"maxValue";
  maxValue = [(INSetNumericSettingIntentResponse *)self maxValue];
  null4 = maxValue;
  if (!maxValue)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null4;
  v22[5] = @"errorDetail";
  errorDetail = [(INSetNumericSettingIntentResponse *)self errorDetail];
  null5 = errorDetail;
  if (!errorDetail)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null5;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:6];
  if (!errorDetail)
  {
  }

  if (!maxValue)
  {
  }

  if (!minValue)
  {
  }

  if (!updatedValue)
  {
  }

  if (!v6)
  {
  }

  if (v21 >= 0xA)
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

- (void)setMaxValue:(id)value
{
  valueCopy = value;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToNumericSettingValue(valueCopy);

  [_responseMessagePBRepresentation setMaxValue:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setMinValue:(id)value
{
  valueCopy = value;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToNumericSettingValue(valueCopy);

  [_responseMessagePBRepresentation setMinValue:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setUpdatedValue:(id)value
{
  valueCopy = value;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToNumericSettingValue(valueCopy);

  [_responseMessagePBRepresentation setUpdatedValue:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setOldValue:(id)value
{
  valueCopy = value;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToNumericSettingValue(valueCopy);

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

- (INNumericSettingValue)maxValue
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  maxValue = [_responseMessagePBRepresentation maxValue];
  v4 = INIntentSlotValueTransformFromNumericSettingValue(maxValue);

  return v4;
}

- (INNumericSettingValue)minValue
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  minValue = [_responseMessagePBRepresentation minValue];
  v4 = INIntentSlotValueTransformFromNumericSettingValue(minValue);

  return v4;
}

- (INNumericSettingValue)updatedValue
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  updatedValue = [_responseMessagePBRepresentation updatedValue];
  v4 = INIntentSlotValueTransformFromNumericSettingValue(updatedValue);

  return v4;
}

- (INNumericSettingValue)oldValue
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  oldValue = [_responseMessagePBRepresentation oldValue];
  v4 = INIntentSlotValueTransformFromNumericSettingValue(oldValue);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INSetNumericSettingIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSetNumericSettingIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSetNumericSettingIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSetNumericSettingIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSetNumericSettingIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INSetNumericSettingIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INSetNumericSettingIntentResponseCodeFailureInvalidValue"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INSetNumericSettingIntentResponseCodeFailureInvalidTrigger"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INSetNumericSettingIntentResponseCodeFailureUnsupported"])
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSetNumericSettingIntentResponseCodeFailureOtherWithReason"];

  if (v6)
  {
    return 9;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INSetNumericSettingIntentResponse *)self code];
  if ((code - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F9E0[code - 1];
  }
}

- (INSetNumericSettingIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSetNumericSettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSetNumericSettingIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INSetNumericSettingIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSetNumericSettingIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSetNumericSettingIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSetNumericSettingIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INSetNumericSettingIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 9)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E7287B08 + code);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSetNumericSettingIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSetNumericSettingIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 6) < 4)
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
  if ((code - 1) > 8)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F9B8[code - 1];
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

  if ((code - 1) >= 4)
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