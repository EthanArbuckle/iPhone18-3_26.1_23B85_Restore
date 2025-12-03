@interface INTransferMoneyIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INCurrencyAmount)transferFee;
- (INDateComponentsRange)transactionScheduledDate;
- (INPaymentAccount)fromAccount;
- (INPaymentAccount)toAccount;
- (INPaymentAmount)transactionAmount;
- (INTransferMoneyIntentResponse)initWithBackingStore:(id)store;
- (INTransferMoneyIntentResponse)initWithCode:(INTransferMoneyIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INTransferMoneyIntentResponse)initWithCoder:(id)coder;
- (INTransferMoneyIntentResponseCode)code;
- (NSString)transactionNote;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setFromAccount:(INPaymentAccount *)fromAccount;
- (void)setToAccount:(INPaymentAccount *)toAccount;
- (void)setTransactionAmount:(INPaymentAmount *)transactionAmount;
- (void)setTransactionNote:(NSString *)transactionNote;
- (void)setTransactionScheduledDate:(INDateComponentsRange *)transactionScheduledDate;
- (void)setTransferFee:(INCurrencyAmount *)transferFee;
@end

@implementation INTransferMoneyIntentResponse

- (id)_dictionaryRepresentation
{
  v27[7] = *MEMORY[0x1E69E9840];
  v26[0] = @"code";
  code = [(INTransferMoneyIntentResponse *)self code];
  v25 = code;
  if (code < 8)
  {
    null = off_1E727EA60[code];
    v24 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v24 = 0;
  }

  v23 = null;
  v27[0] = null;
  v26[1] = @"fromAccount";
  fromAccount = [(INTransferMoneyIntentResponse *)self fromAccount];
  v6 = fromAccount;
  if (!fromAccount)
  {
    fromAccount = [MEMORY[0x1E695DFB0] null];
  }

  v22 = fromAccount;
  v27[1] = fromAccount;
  v26[2] = @"toAccount";
  toAccount = [(INTransferMoneyIntentResponse *)self toAccount];
  v8 = toAccount;
  if (!toAccount)
  {
    toAccount = [MEMORY[0x1E695DFB0] null];
  }

  v21 = toAccount;
  v27[2] = toAccount;
  v26[3] = @"transactionAmount";
  transactionAmount = [(INTransferMoneyIntentResponse *)self transactionAmount];
  v10 = transactionAmount;
  if (!transactionAmount)
  {
    transactionAmount = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = transactionAmount;
  v26[4] = @"transactionScheduledDate";
  transactionScheduledDate = [(INTransferMoneyIntentResponse *)self transactionScheduledDate];
  null2 = transactionScheduledDate;
  if (!transactionScheduledDate)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = null2;
  v26[5] = @"transactionNote";
  transactionNote = [(INTransferMoneyIntentResponse *)self transactionNote];
  null3 = transactionNote;
  if (!transactionNote)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27[5] = null3;
  v26[6] = @"transferFee";
  transferFee = [(INTransferMoneyIntentResponse *)self transferFee];
  null4 = transferFee;
  if (!transferFee)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = null4;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:7];
  if (!transferFee)
  {
  }

  if (!transactionNote)
  {
  }

  if (!transactionScheduledDate)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (v25 >= 8)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)setTransferFee:(INCurrencyAmount *)transferFee
{
  v4 = transferFee;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToCurrencyAmountValue(v4);

  [_responseMessagePBRepresentation setTransferFee:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setTransactionNote:(NSString *)transactionNote
{
  v4 = transactionNote;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation setTransactionNote:v4];

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

- (void)setToAccount:(INPaymentAccount *)toAccount
{
  v4 = toAccount;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToFinancialAccountValue(v4);

  [_responseMessagePBRepresentation setToAccount:v6];
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

- (INCurrencyAmount)transferFee
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  transferFee = [_responseMessagePBRepresentation transferFee];
  v4 = INIntentSlotValueTransformFromCurrencyAmountValue(transferFee);

  return v4;
}

- (NSString)transactionNote
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  transactionNote = [_responseMessagePBRepresentation transactionNote];
  v4 = [transactionNote copy];

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

- (INPaymentAccount)toAccount
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  toAccount = [_responseMessagePBRepresentation toAccount];
  v4 = INIntentSlotValueTransformFromFinancialAccountValue(toAccount);

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
  [nameCopy isEqualToString:@"INTransferMoneyIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INTransferMoneyIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INTransferMoneyIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INTransferMoneyIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INTransferMoneyIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INTransferMoneyIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INTransferMoneyIntentResponseCodeFailureCredentialsUnverified"])
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INTransferMoneyIntentResponseCodeFailureInsufficientFunds"];

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
  code = [(INTransferMoneyIntentResponse *)self code];
  if ((code - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FA48[code - 1];
  }
}

- (INTransferMoneyIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INTransferMoneyIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INTransferMoneyIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INTransferMoneyIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INTransferMoneyIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INTransferMoneyIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INTransferMoneyIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INTransferMoneyIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INTransferMoneyIntentResponse)initWithCode:(INTransferMoneyIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INTransferMoneyIntentResponseCodeFailureInsufficientFunds)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727EA60[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INTransferMoneyIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INTransferMoneyIntentResponse;
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