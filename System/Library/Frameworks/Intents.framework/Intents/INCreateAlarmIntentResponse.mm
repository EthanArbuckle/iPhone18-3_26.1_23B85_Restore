@interface INCreateAlarmIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INAlarm)createdAlarm;
- (INCreateAlarmIntentResponse)initWithBackingStore:(id)store;
- (INCreateAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INCreateAlarmIntentResponse)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (int64_t)successCode;
- (void)encodeWithCoder:(id)coder;
- (void)setCreatedAlarm:(id)alarm;
- (void)setSuccessCode:(int64_t)code;
@end

@implementation INCreateAlarmIntentResponse

- (id)_dictionaryRepresentation
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15[0] = @"code";
  code = [(INCreateAlarmIntentResponse *)self code];
  v4 = code;
  if (code < 6)
  {
    null = off_1E7288160[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v16[0] = null;
  v15[1] = @"createdAlarm";
  createdAlarm = [(INCreateAlarmIntentResponse *)self createdAlarm];
  null2 = createdAlarm;
  if (!createdAlarm)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"successCode";
  successCode = [(INCreateAlarmIntentResponse *)self successCode];
  if ((successCode - 1) > 2)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E7288298[successCode - 1];
  }

  v11 = v10;
  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  if (!createdAlarm)
  {
  }

  if (v4 >= 6)
  {
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)setSuccessCode:(int64_t)code
{
  v4 = code - 1;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = _responseMessagePBRepresentation;
  if (v4 > 2)
  {
    [_responseMessagePBRepresentation setHasSuccessCode:0];
  }

  else
  {
    [_responseMessagePBRepresentation setSuccessCode:v4];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setCreatedAlarm:(id)alarm
{
  alarmCopy = alarm;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToAlarm(alarmCopy);

  [_responseMessagePBRepresentation setCreatedAlarm:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (int64_t)successCode
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  hasSuccessCode = [_responseMessagePBRepresentation hasSuccessCode];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  successCode = [_responseMessagePBRepresentation2 successCode];
  if (((successCode < 3) & hasSuccessCode) != 0)
  {
    v7 = successCode + 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (INAlarm)createdAlarm
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  createdAlarm = [_responseMessagePBRepresentation createdAlarm];
  v4 = INIntentSlotValueTransformFromAlarm(createdAlarm);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INCreateAlarmIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INCreateAlarmIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INCreateAlarmIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INCreateAlarmIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INCreateAlarmIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INCreateAlarmIntentResponseCodeFailureRequiringAppLaunch"];

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
  code = [(INCreateAlarmIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INCreateAlarmIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INCreateAlarmIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INCreateAlarmIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INCreateAlarmIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INCreateAlarmIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INCreateAlarmIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INCreateAlarmIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INCreateAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7288160[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INCreateAlarmIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INCreateAlarmIntentResponse;
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