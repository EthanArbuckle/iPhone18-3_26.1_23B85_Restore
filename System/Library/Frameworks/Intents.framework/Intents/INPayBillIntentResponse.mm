@interface INPayBillIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INBillDetails)billDetails;
- (INDateComponentsRange)transactionScheduledDate;
- (INPayBillIntentResponse)initWithBackingStore:(id)store;
- (INPayBillIntentResponse)initWithCode:(INPayBillIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INPayBillIntentResponse)initWithCoder:(id)coder;
- (INPayBillIntentResponseCode)code;
- (INPaymentAccount)fromAccount;
- (INPaymentAmount)transactionAmount;
- (NSString)transactionNote;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setBillDetails:(INBillDetails *)billDetails;
- (void)setFromAccount:(INPaymentAccount *)fromAccount;
- (void)setTransactionAmount:(INPaymentAmount *)transactionAmount;
- (void)setTransactionNote:(NSString *)transactionNote;
- (void)setTransactionScheduledDate:(INDateComponentsRange *)transactionScheduledDate;
@end

@implementation INPayBillIntentResponse

- (id)_dictionaryRepresentation
{
  v23[6] = *MEMORY[0x1E69E9840];
  v22[0] = @"code";
  code = [(INPayBillIntentResponse *)self code];
  v21 = code;
  if (code < 8)
  {
    null = off_1E7281010[code];
    v20 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v20 = 0;
  }

  v19 = null;
  v23[0] = null;
  v22[1] = @"fromAccount";
  fromAccount = [(INPayBillIntentResponse *)self fromAccount];
  v6 = fromAccount;
  if (!fromAccount)
  {
    fromAccount = [MEMORY[0x1E695DFB0] null];
  }

  v18 = fromAccount;
  v23[1] = fromAccount;
  v22[2] = @"billDetails";
  billDetails = [(INPayBillIntentResponse *)self billDetails];
  null2 = billDetails;
  if (!billDetails)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null2;
  v22[3] = @"transactionAmount";
  transactionAmount = [(INPayBillIntentResponse *)self transactionAmount];
  null3 = transactionAmount;
  if (!transactionAmount)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null3;
  v22[4] = @"transactionScheduledDate";
  transactionScheduledDate = [(INPayBillIntentResponse *)self transactionScheduledDate];
  null4 = transactionScheduledDate;
  if (!transactionScheduledDate)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null4;
  v22[5] = @"transactionNote";
  transactionNote = [(INPayBillIntentResponse *)self transactionNote];
  null5 = transactionNote;
  if (!transactionNote)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null5;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:6];
  if (!transactionNote)
  {
  }

  if (!transactionScheduledDate)
  {
  }

  if (!transactionAmount)
  {
  }

  if (!billDetails)
  {
  }

  if (!v6)
  {
  }

  if (v21 >= 8)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setTransactionNote:(NSString *)transactionNote
{
  v4 = transactionNote;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToString(v4);

  [_responseMessagePBRepresentation setTransactionNote:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setTransactionScheduledDate:(INDateComponentsRange *)transactionScheduledDate
{
  v4 = transactionScheduledDate;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDateTimeRange(v4);

  [_responseMessagePBRepresentation setTransactionScheduledDate:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setTransactionAmount:(INPaymentAmount *)transactionAmount
{
  v4 = transactionAmount;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToPaymentAmountValue(v4);

  [_responseMessagePBRepresentation setTransactionAmount:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setBillDetails:(INBillDetails *)billDetails
{
  v4 = billDetails;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToBillDetailsValue(v4);

  [_responseMessagePBRepresentation setBillDetails:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setFromAccount:(INPaymentAccount *)fromAccount
{
  v4 = fromAccount;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToFinancialAccountValue(v4);

  [_responseMessagePBRepresentation setFromAccount:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSString)transactionNote
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  transactionNote = [_responseMessagePBRepresentation transactionNote];
  v4 = INIntentSlotValueTransformFromString(transactionNote);

  return v4;
}

- (INDateComponentsRange)transactionScheduledDate
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  transactionScheduledDate = [_responseMessagePBRepresentation transactionScheduledDate];
  v4 = INIntentSlotValueTransformFromDateTimeRange(transactionScheduledDate);

  return v4;
}

- (INPaymentAmount)transactionAmount
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  transactionAmount = [_responseMessagePBRepresentation transactionAmount];
  v4 = INIntentSlotValueTransformFromPaymentAmountValue(transactionAmount);

  return v4;
}

- (INBillDetails)billDetails
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  billDetails = [_responseMessagePBRepresentation billDetails];
  v4 = INIntentSlotValueTransformFromBillDetailsValue(billDetails);

  return v4;
}

- (INPaymentAccount)fromAccount
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  fromAccount = [_responseMessagePBRepresentation fromAccount];
  v4 = INIntentSlotValueTransformFromFinancialAccountValue(fromAccount);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INPayBillIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INPayBillIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INPayBillIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INPayBillIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INPayBillIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INPayBillIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INPayBillIntentResponseCodeFailureCredentialsUnverified"])
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INPayBillIntentResponseCodeFailureInsufficientFunds"];

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
  code = [(INPayBillIntentResponse *)self code];
  if ((code - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FA48[code - 1];
  }
}

- (INPayBillIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INPayBillIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INPayBillIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INPayBillIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INPayBillIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INPayBillIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INPayBillIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INPayBillIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INPayBillIntentResponse)initWithCode:(INPayBillIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INPayBillIntentResponseCodeFailureInsufficientFunds)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7281010[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INPayBillIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INPayBillIntentResponse;
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