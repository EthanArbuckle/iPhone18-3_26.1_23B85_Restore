@interface INRequestPaymentIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INPaymentRecord)paymentRecord;
- (INRequestPaymentIntentResponse)initWithBackingStore:(id)store;
- (INRequestPaymentIntentResponse)initWithCode:(INRequestPaymentIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INRequestPaymentIntentResponse)initWithCoder:(id)coder;
- (INRequestPaymentIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setPaymentRecord:(INPaymentRecord *)paymentRecord;
@end

@implementation INRequestPaymentIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INRequestPaymentIntentResponse *)self code];
  v4 = code;
  if (code < (INRequestPaymentIntentResponseCodeFailureTermsAndConditionsAcceptanceRequired|INRequestPaymentIntentResponseCodeReady))
  {
    null = off_1E72836C0[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"paymentRecord";
  v13[0] = null;
  paymentRecord = [(INRequestPaymentIntentResponse *)self paymentRecord];
  null2 = paymentRecord;
  if (!paymentRecord)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (!paymentRecord)
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
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToPaymentRecord(v4);

  [_responseMessagePBRepresentation setPaymentRecord:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (INPaymentRecord)paymentRecord
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  paymentRecord = [_responseMessagePBRepresentation paymentRecord];
  v4 = INIntentSlotValueTransformFromPaymentRecord(paymentRecord);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INRequestPaymentIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INRequestPaymentIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INRequestPaymentIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INRequestPaymentIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INRequestPaymentIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INRequestPaymentIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INRequestPaymentIntentResponseCodeFailureCredentialsUnverified"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INRequestPaymentIntentResponseCodeFailurePaymentsAmountBelowMinimum"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INRequestPaymentIntentResponseCodeFailurePaymentsAmountAboveMaximum"])
  {
    v4 = 8;
  }

  if ([nameCopy isEqualToString:@"INRequestPaymentIntentResponseCodeFailurePaymentsCurrencyUnsupported"])
  {
    v4 = 9;
  }

  if ([nameCopy isEqualToString:@"INRequestPaymentIntentResponseCodeFailureNoBankAccount"])
  {
    v4 = 10;
  }

  if ([nameCopy isEqualToString:@"INRequestPaymentIntentResponseCodeFailureNotEligible"])
  {
    v5 = 11;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INRequestPaymentIntentResponseCodeFailureTermsAndConditionsAcceptanceRequired"];

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
  code = [(INRequestPaymentIntentResponse *)self code];
  if ((code - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FBD8[code - 1];
  }
}

- (INRequestPaymentIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INRequestPaymentIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INRequestPaymentIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INRequestPaymentIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INRequestPaymentIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INRequestPaymentIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INRequestPaymentIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INRequestPaymentIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
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

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 6) > 6)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return dword_18EE5F080[code - 6];
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 0xB)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FBA8[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  if (type > 1)
  {
    if (type == 2)
    {
      return 2;
    }

    else
    {
      return type == 5;
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      v5 = code - 1;
      if (code - 1) < 8 && ((0xBFu >> v5))
      {
        return qword_18EE5F040[v5];
      }

      else if (requested)
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