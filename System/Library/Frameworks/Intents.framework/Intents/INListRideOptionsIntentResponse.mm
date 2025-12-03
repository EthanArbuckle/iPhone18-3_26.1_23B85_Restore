@interface INListRideOptionsIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INListRideOptionsIntentResponse)initWithBackingStore:(id)store;
- (INListRideOptionsIntentResponse)initWithCode:(INListRideOptionsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INListRideOptionsIntentResponse)initWithCoder:(id)coder;
- (INListRideOptionsIntentResponseCode)code;
- (NSArray)paymentMethods;
- (NSArray)rideOptions;
- (NSDate)expirationDate;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setExpirationDate:(NSDate *)expirationDate;
- (void)setPaymentMethods:(NSArray *)paymentMethods;
- (void)setRideOptions:(NSArray *)rideOptions;
@end

@implementation INListRideOptionsIntentResponse

- (id)_dictionaryRepresentation
{
  v17[4] = *MEMORY[0x1E69E9840];
  v16[0] = @"code";
  code = [(INListRideOptionsIntentResponse *)self code];
  v4 = code;
  if (code < (INListRideOptionsIntentResponseCodeFailurePreviousRideNeedsFeedback|INListRideOptionsIntentResponseCodeReady))
  {
    null = off_1E72801F0[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v17[0] = null;
  v16[1] = @"rideOptions";
  rideOptions = [(INListRideOptionsIntentResponse *)self rideOptions];
  null2 = rideOptions;
  if (!rideOptions)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"paymentMethods";
  paymentMethods = [(INListRideOptionsIntentResponse *)self paymentMethods];
  null3 = paymentMethods;
  if (!paymentMethods)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"expirationDate";
  expirationDate = [(INListRideOptionsIntentResponse *)self expirationDate];
  null4 = expirationDate;
  if (!expirationDate)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (!expirationDate)
  {
  }

  if (!paymentMethods)
  {
  }

  if (!rideOptions)
  {
  }

  if (v4 >= 0xB)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)setExpirationDate:(NSDate *)expirationDate
{
  v4 = expirationDate;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTimestamp(v4);

  [_responseMessagePBRepresentation setExpirationDate:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setPaymentMethods:(NSArray *)paymentMethods
{
  v4 = paymentMethods;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToPaymentMethodValues(v4);

  [_responseMessagePBRepresentation setPaymentMethods:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setRideOptions:(NSArray *)rideOptions
{
  v4 = rideOptions;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToRideOptions(v4);

  [_responseMessagePBRepresentation setRideOptions:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSDate)expirationDate
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  expirationDate = [_responseMessagePBRepresentation expirationDate];
  v4 = INIntentSlotValueTransformFromTimestamp(expirationDate);

  return v4;
}

- (NSArray)paymentMethods
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  paymentMethods = [_responseMessagePBRepresentation paymentMethods];
  v4 = INIntentSlotValueTransformFromPaymentMethodValues(paymentMethods);

  return v4;
}

- (NSArray)rideOptions
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  rideOptions = [_responseMessagePBRepresentation rideOptions];
  v4 = INIntentSlotValueTransformFromRideOptions(rideOptions);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INListRideOptionsIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INListRideOptionsIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INListRideOptionsIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INListRideOptionsIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INListRideOptionsIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INListRideOptionsIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INListRideOptionsIntentResponseCodeFailureRequiringAppLaunchMustVerifyCredentials"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INListRideOptionsIntentResponseCodeFailureRequiringAppLaunchNoServiceInArea"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INListRideOptionsIntentResponseCodeFailureRequiringAppLaunchServiceTemporarilyUnavailable"])
  {
    v4 = 8;
  }

  if ([nameCopy isEqualToString:@"INListRideOptionsIntentResponseCodeFailureRequiringAppLaunchPreviousRideNeedsCompletion"])
  {
    v5 = 9;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INListRideOptionsIntentResponseCodeFailurePreviousRideNeedsFeedback"];

  if (v6)
  {
    return 10;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INListRideOptionsIntentResponse *)self code];
  if ((code - 1) > 9)
  {
    return 0;
  }

  else
  {
    return qword_18EE5E900[code - 1];
  }
}

- (INListRideOptionsIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INListRideOptionsIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INListRideOptionsIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INListRideOptionsIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INListRideOptionsIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INListRideOptionsIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INListRideOptionsIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INListRideOptionsIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INListRideOptionsIntentResponse)initWithCode:(INListRideOptionsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INListRideOptionsIntentResponseCodeFailurePreviousRideNeedsFeedback)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E72801F0[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INListRideOptionsIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INListRideOptionsIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 6) < 5)
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
  if ((code - 1) > 9)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F720[code - 1];
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

  if ((code - 1) >= 5)
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