@interface INStartVideoCallIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INStartVideoCallIntentResponse)initWithBackingStore:(id)a3;
- (INStartVideoCallIntentResponse)initWithCode:(INStartVideoCallIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INStartVideoCallIntentResponse)initWithCoder:(id)a3;
- (INStartVideoCallIntentResponseCode)code;
- (double)timeToEstablishCall;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
- (void)setTimeToEstablishCall:(double)a3;
@end

@implementation INStartVideoCallIntentResponse

- (id)_dictionaryRepresentation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"code";
  v2 = [(INStartVideoCallIntentResponse *)self code];
  v3 = v2;
  if (v2 < (INStartVideoCallIntentResponseCodeFailureInvalidNumber|INStartVideoCallIntentResponseCodeReady))
  {
    v4 = off_1E7281130[v2];
    v5 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = 0;
  }

  v10[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  if (v3 >= 9)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setTimeToEstablishCall:(double)a3
{
  v9 = objc_alloc_init(_INPBCallMetricsValue);
  [(_INPBCallMetricsValue *)v9 setTimeToEstablish:a3];
  v5 = objc_alloc_init(_INPBCallMetrics);
  [(_INPBCallMetrics *)v5 setValue:v9];
  v6 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v6 setMetrics:v5];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v8 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v8];
}

- (double)timeToEstablishCall
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 metrics];

  v4 = [v3 value];
  [v4 timeToEstablish];
  v6 = v5;

  return v6;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INStartVideoCallIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INStartVideoCallIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INStartVideoCallIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INStartVideoCallIntentResponseCodeFailure"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INStartVideoCallIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INStartVideoCallIntentResponseCodeFailureAppConfigurationRequired"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INStartVideoCallIntentResponseCodeFailureCallingServiceNotAvailable"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INStartVideoCallIntentResponseCodeFailureContactNotSupportedByApp"])
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INStartVideoCallIntentResponseCodeFailureInvalidNumber"];

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
  v2 = [(INStartVideoCallIntentResponse *)self code];
  if ((v2 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5ED90[v2 - 1];
  }
}

- (INStartVideoCallIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INStartVideoCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INStartVideoCallIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INStartVideoCallIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INStartVideoCallIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INStartVideoCallIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INStartVideoCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INStartVideoCallIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INStartVideoCallIntentResponse)initWithCode:(INStartVideoCallIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INStartVideoCallIntentResponseCodeFailureInvalidNumber)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7281130[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INStartVideoCallIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INStartVideoCallIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if ((a3 - 5) < 4)
  {
    return a3 - 4;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return 3;
  }

  else
  {
    return dword_18EE5ED70[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 3;
  if (a5)
  {
    v5 = 4;
  }

  if ((a4 - 1) >= 4)
  {
    v6 = v5;
  }

  else
  {
    v6 = (a4 + 4);
  }

  v7 = 2;
  if (a3 != 4)
  {
    v7 = a3 == 5;
  }

  if (a3 == 1)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

@end