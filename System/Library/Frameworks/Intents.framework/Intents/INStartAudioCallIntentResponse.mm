@interface INStartAudioCallIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INStartAudioCallIntentResponse)initWithBackingStore:(id)store;
- (INStartAudioCallIntentResponse)initWithCode:(INStartAudioCallIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INStartAudioCallIntentResponse)initWithCoder:(id)coder;
- (INStartAudioCallIntentResponseCode)code;
- (double)timeToEstablishCall;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setTimeToEstablishCall:(double)call;
@end

@implementation INStartAudioCallIntentResponse

- (id)_dictionaryRepresentation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"code";
  code = [(INStartAudioCallIntentResponse *)self code];
  v3 = code;
  if (code < (INStartAudioCallIntentResponseCodeFailureNoValidNumber|INStartAudioCallIntentResponseCodeReady))
  {
    null = off_1E7280508[code];
    v5 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v5 = 0;
  }

  v10[0] = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  if (v3 >= 9)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setTimeToEstablishCall:(double)call
{
  v9 = objc_alloc_init(_INPBCallMetricsValue);
  [(_INPBCallMetricsValue *)v9 setTimeToEstablish:call];
  v5 = objc_alloc_init(_INPBCallMetrics);
  [(_INPBCallMetrics *)v5 setValue:v9];
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation setMetrics:v5];

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (double)timeToEstablishCall
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  metrics = [_responseMessagePBRepresentation metrics];

  value = [metrics value];
  [value timeToEstablish];
  v6 = v5;

  return v6;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INStartAudioCallIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INStartAudioCallIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INStartAudioCallIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INStartAudioCallIntentResponseCodeFailure"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INStartAudioCallIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INStartAudioCallIntentResponseCodeFailureAppConfigurationRequired"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INStartAudioCallIntentResponseCodeFailureCallingServiceNotAvailable"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INStartAudioCallIntentResponseCodeFailureContactNotSupportedByApp"])
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INStartAudioCallIntentResponseCodeFailureNoValidNumber"];

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
  code = [(INStartAudioCallIntentResponse *)self code];
  if ((code - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5ED90[code - 1];
  }
}

- (INStartAudioCallIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INStartAudioCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INStartAudioCallIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INStartAudioCallIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INStartAudioCallIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INStartAudioCallIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INStartAudioCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INStartAudioCallIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INStartAudioCallIntentResponse)initWithCode:(INStartAudioCallIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INStartAudioCallIntentResponseCodeFailureNoValidNumber)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7280508[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INStartAudioCallIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INStartAudioCallIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 5) < 4)
  {
    return code - 4;
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
    return dword_18EE5ED70[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 3;
  if (requested)
  {
    v5 = 4;
  }

  if ((code - 1) >= 4)
  {
    v6 = v5;
  }

  else
  {
    v6 = (code + 4);
  }

  v7 = 2;
  if (type != 4)
  {
    v7 = type == 5;
  }

  if (type == 1)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

@end