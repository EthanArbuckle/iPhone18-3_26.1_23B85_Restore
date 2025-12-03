@interface INSendPaymentIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INPaymentRecord)paymentRecord;
- (INSendPaymentIntentResponse)initWithBackingStore:(id)store;
- (INSendPaymentIntentResponse)initWithCode:(INSendPaymentIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INSendPaymentIntentResponse)initWithCoder:(id)coder;
- (INSendPaymentIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setPaymentRecord:(INPaymentRecord *)paymentRecord;
@end

@implementation INSendPaymentIntentResponse

- (id)_dictionaryRepresentation
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"code";
  code = [(INSendPaymentIntentResponse *)self code];
  v4 = code;
  if (code < (INSendPaymentIntentResponseCodeFailureNotEligible|INSendPaymentIntentResponseCodeInProgress))
  {
    null = off_1E72833D8[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v12[1] = @"paymentRecord";
  v13[0] = null;
  paymentRecord = [(INSendPaymentIntentResponse *)self paymentRecord];
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

  if (v4 >= 0xE)
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
  [nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeFailureCredentialsUnverified"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeFailurePaymentsAmountBelowMinimum"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeFailurePaymentsAmountAboveMaximum"])
  {
    v4 = 8;
  }

  if ([nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeFailurePaymentsCurrencyUnsupported"])
  {
    v4 = 9;
  }

  if ([nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeFailureInsufficientFunds"])
  {
    v4 = 10;
  }

  if ([nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeFailureNoBankAccount"])
  {
    v4 = 11;
  }

  if ([nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeFailureNotEligible"])
  {
    v5 = 12;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSendPaymentIntentResponseCodeFailureTermsAndConditionsAcceptanceRequired"];

  if (v6)
  {
    return 13;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INSendPaymentIntentResponse *)self code];
  if ((code - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FE28[code - 1];
  }
}

- (INSendPaymentIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSendPaymentIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSendPaymentIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INSendPaymentIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INSendPaymentIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSendPaymentIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSendPaymentIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSendPaymentIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INSendPaymentIntentResponse)initWithCode:(INSendPaymentIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INSendPaymentIntentResponseCodeFailureTermsAndConditionsAcceptanceRequired)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E72833D8[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INSendPaymentIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INSendPaymentIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 6) < 8)
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
  if ((code - 1) > 0xC)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FDF0[code - 1];
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

  if ((code - 1) >= 8)
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