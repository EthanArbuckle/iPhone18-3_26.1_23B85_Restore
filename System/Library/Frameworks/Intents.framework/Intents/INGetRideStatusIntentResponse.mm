@interface INGetRideStatusIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INGetRideStatusIntentResponse)initWithBackingStore:(id)store;
- (INGetRideStatusIntentResponse)initWithCode:(INGetRideStatusIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INGetRideStatusIntentResponse)initWithCoder:(id)coder;
- (INGetRideStatusIntentResponseCode)code;
- (INRideStatus)rideStatus;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setRideStatus:(INRideStatus *)rideStatus;
@end

@implementation INGetRideStatusIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INGetRideStatusIntentResponse *)self code];
  v4 = code;
  if (code < 8)
  {
    null = off_1E7280248[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"rideStatus";
  v13[0] = null;
  rideStatus = [(INGetRideStatusIntentResponse *)self rideStatus];
  null2 = rideStatus;
  if (!rideStatus)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!rideStatus)
  {
  }

  if (v4 >= 8)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setRideStatus:(INRideStatus *)rideStatus
{
  v4 = rideStatus;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToRideStatus(v4);

  [_responseMessagePBRepresentation setRideStatus:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (INRideStatus)rideStatus
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  rideStatus = [_responseMessagePBRepresentation rideStatus];
  v4 = INIntentSlotValueTransformFromRideStatus(rideStatus);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INGetRideStatusIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INGetRideStatusIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INGetRideStatusIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INGetRideStatusIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INGetRideStatusIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INGetRideStatusIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INGetRideStatusIntentResponseCodeFailureRequiringAppLaunchMustVerifyCredentials"])
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INGetRideStatusIntentResponseCodeFailureRequiringAppLaunchServiceTemporarilyUnavailable"];

  if (v6)
  {
    return 7;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INGetRideStatusIntentResponse *)self code];
  if ((code - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_18EE5E950[code - 1];
  }
}

- (INGetRideStatusIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INGetRideStatusIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INGetRideStatusIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INGetRideStatusIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INGetRideStatusIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INGetRideStatusIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INGetRideStatusIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INGetRideStatusIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INGetRideStatusIntentResponse)initWithCode:(INGetRideStatusIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INGetRideStatusIntentResponseCodeFailureRequiringAppLaunchServiceTemporarilyUnavailable)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7280248[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INGetRideStatusIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INGetRideStatusIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 7)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (code == 6)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 6)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FA28[code - 1];
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
  v7 = 6;
  v8 = 4;
  if (requested)
  {
    v8 = 5;
  }

  if (code == 2)
  {
    v8 = 7;
  }

  if (code != 1)
  {
    v7 = v8;
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