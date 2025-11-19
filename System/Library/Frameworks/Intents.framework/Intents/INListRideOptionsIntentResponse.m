@interface INListRideOptionsIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INListRideOptionsIntentResponse)initWithBackingStore:(id)a3;
- (INListRideOptionsIntentResponse)initWithCode:(INListRideOptionsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INListRideOptionsIntentResponse)initWithCoder:(id)a3;
- (INListRideOptionsIntentResponseCode)code;
- (NSArray)paymentMethods;
- (NSArray)rideOptions;
- (NSDate)expirationDate;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
- (void)setExpirationDate:(NSDate *)expirationDate;
- (void)setPaymentMethods:(NSArray *)paymentMethods;
- (void)setRideOptions:(NSArray *)rideOptions;
@end

@implementation INListRideOptionsIntentResponse

- (id)_dictionaryRepresentation
{
  v17[4] = *MEMORY[0x1E69E9840];
  v16[0] = @"code";
  v3 = [(INListRideOptionsIntentResponse *)self code];
  v4 = v3;
  if (v3 < (INListRideOptionsIntentResponseCodeFailurePreviousRideNeedsFeedback|INListRideOptionsIntentResponseCodeReady))
  {
    v5 = off_1E72801F0[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v17[0] = v5;
  v16[1] = @"rideOptions";
  v7 = [(INListRideOptionsIntentResponse *)self rideOptions];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = v8;
  v16[2] = @"paymentMethods";
  v9 = [(INListRideOptionsIntentResponse *)self paymentMethods];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v10;
  v16[3] = @"expirationDate";
  v11 = [(INListRideOptionsIntentResponse *)self expirationDate];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (!v11)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
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
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTimestamp(v4);

  [v5 setExpirationDate:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setPaymentMethods:(NSArray *)paymentMethods
{
  v4 = paymentMethods;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToPaymentMethodValues(v4);

  [v5 setPaymentMethods:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setRideOptions:(NSArray *)rideOptions
{
  v4 = rideOptions;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToRideOptions(v4);

  [v5 setRideOptions:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (NSDate)expirationDate
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 expirationDate];
  v4 = INIntentSlotValueTransformFromTimestamp(v3);

  return v4;
}

- (NSArray)paymentMethods
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 paymentMethods];
  v4 = INIntentSlotValueTransformFromPaymentMethodValues(v3);

  return v4;
}

- (NSArray)rideOptions
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 rideOptions];
  v4 = INIntentSlotValueTransformFromRideOptions(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INListRideOptionsIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INListRideOptionsIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INListRideOptionsIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INListRideOptionsIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INListRideOptionsIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INListRideOptionsIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INListRideOptionsIntentResponseCodeFailureRequiringAppLaunchMustVerifyCredentials"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INListRideOptionsIntentResponseCodeFailureRequiringAppLaunchNoServiceInArea"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INListRideOptionsIntentResponseCodeFailureRequiringAppLaunchServiceTemporarilyUnavailable"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"INListRideOptionsIntentResponseCodeFailureRequiringAppLaunchPreviousRideNeedsCompletion"])
  {
    v5 = 9;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INListRideOptionsIntentResponseCodeFailurePreviousRideNeedsFeedback"];

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
  v2 = [(INListRideOptionsIntentResponse *)self code];
  if ((v2 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return qword_18EE5E900[v2 - 1];
  }
}

- (INListRideOptionsIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INListRideOptionsIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INListRideOptionsIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INListRideOptionsIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INListRideOptionsIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INListRideOptionsIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INListRideOptionsIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INListRideOptionsIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
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

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if ((a3 - 6) < 5)
  {
    return a3 - 5;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 9)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F720[a3 - 1];
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

  if ((a4 - 1) >= 5)
  {
    v8 = v7;
  }

  else
  {
    v8 = (a4 + 5);
  }

  if (a3 != 1)
  {
    v8 = 0;
  }

  if (a3)
  {
    v6 = v8;
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