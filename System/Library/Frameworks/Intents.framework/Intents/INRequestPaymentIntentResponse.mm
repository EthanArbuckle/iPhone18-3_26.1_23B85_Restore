@interface INRequestPaymentIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INPaymentRecord)paymentRecord;
- (INRequestPaymentIntentResponse)initWithBackingStore:(id)a3;
- (INRequestPaymentIntentResponse)initWithCode:(INRequestPaymentIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INRequestPaymentIntentResponse)initWithCoder:(id)a3;
- (INRequestPaymentIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
- (void)setPaymentRecord:(INPaymentRecord *)paymentRecord;
@end

@implementation INRequestPaymentIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  v3 = [(INRequestPaymentIntentResponse *)self code];
  v4 = v3;
  if (v3 < (INRequestPaymentIntentResponseCodeFailureTermsAndConditionsAcceptanceRequired|INRequestPaymentIntentResponseCodeReady))
  {
    v5 = off_1E72836C0[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"paymentRecord";
  v13[0] = v5;
  v7 = [(INRequestPaymentIntentResponse *)self paymentRecord];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!v7)
  {
  }

  if (v4 >= 0xD)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setPaymentRecord:(INPaymentRecord *)paymentRecord
{
  v4 = paymentRecord;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToPaymentRecord(v4);

  [v5 setPaymentRecord:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (INPaymentRecord)paymentRecord
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 paymentRecord];
  v4 = INIntentSlotValueTransformFromPaymentRecord(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INRequestPaymentIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INRequestPaymentIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INRequestPaymentIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INRequestPaymentIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INRequestPaymentIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INRequestPaymentIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INRequestPaymentIntentResponseCodeFailureCredentialsUnverified"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INRequestPaymentIntentResponseCodeFailurePaymentsAmountBelowMinimum"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INRequestPaymentIntentResponseCodeFailurePaymentsAmountAboveMaximum"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"INRequestPaymentIntentResponseCodeFailurePaymentsCurrencyUnsupported"])
  {
    v4 = 9;
  }

  if ([v3 isEqualToString:@"INRequestPaymentIntentResponseCodeFailureNoBankAccount"])
  {
    v4 = 10;
  }

  if ([v3 isEqualToString:@"INRequestPaymentIntentResponseCodeFailureNotEligible"])
  {
    v5 = 11;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INRequestPaymentIntentResponseCodeFailureTermsAndConditionsAcceptanceRequired"];

  if (v6)
  {
    return 12;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  v2 = [(INRequestPaymentIntentResponse *)self code];
  if ((v2 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FBD8[v2 - 1];
  }
}

- (INRequestPaymentIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INRequestPaymentIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INRequestPaymentIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INRequestPaymentIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INRequestPaymentIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INRequestPaymentIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INRequestPaymentIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INRequestPaymentIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INRequestPaymentIntentResponse)initWithCode:(INRequestPaymentIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INRequestPaymentIntentResponseCodeFailureTermsAndConditionsAcceptanceRequired)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E72836C0[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INRequestPaymentIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INRequestPaymentIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if ((a3 - 6) > 6)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return dword_18EE5F080[a3 - 6];
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 0xB)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FBA8[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return 2;
    }

    else
    {
      return a3 == 5;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v5 = a4 - 1;
      if (a4 - 1) < 8 && ((0xBFu >> v5))
      {
        return qword_18EE5F040[v5];
      }

      else if (a5)
      {
        return 5;
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 3;
  }
}

@end