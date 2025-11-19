@interface INTransferMoneyIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INCurrencyAmount)transferFee;
- (INDateComponentsRange)transactionScheduledDate;
- (INPaymentAccount)fromAccount;
- (INPaymentAccount)toAccount;
- (INPaymentAmount)transactionAmount;
- (INTransferMoneyIntentResponse)initWithBackingStore:(id)a3;
- (INTransferMoneyIntentResponse)initWithCode:(INTransferMoneyIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INTransferMoneyIntentResponse)initWithCoder:(id)a3;
- (INTransferMoneyIntentResponseCode)code;
- (NSString)transactionNote;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(INTransferMoneyIntentResponse *)self code];
  v25 = v3;
  if (v3 < 8)
  {
    v4 = off_1E727EA60[v3];
    v24 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v24 = 0;
  }

  v23 = v4;
  v27[0] = v4;
  v26[1] = @"fromAccount";
  v5 = [(INTransferMoneyIntentResponse *)self fromAccount];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v5;
  v27[1] = v5;
  v26[2] = @"toAccount";
  v7 = [(INTransferMoneyIntentResponse *)self toAccount];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v7;
  v27[2] = v7;
  v26[3] = @"transactionAmount";
  v9 = [(INTransferMoneyIntentResponse *)self transactionAmount];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = v9;
  v26[4] = @"transactionScheduledDate";
  v11 = [(INTransferMoneyIntentResponse *)self transactionScheduledDate];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = v12;
  v26[5] = @"transactionNote";
  v13 = [(INTransferMoneyIntentResponse *)self transactionNote];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27[5] = v14;
  v26[6] = @"transferFee";
  v15 = [(INTransferMoneyIntentResponse *)self transferFee];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:7];
  if (!v15)
  {
  }

  if (!v13)
  {
  }

  if (!v11)
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
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToCurrencyAmountValue(v4);

  [v5 setTransferFee:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setTransactionNote:(NSString *)transactionNote
{
  v4 = transactionNote;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 setTransactionNote:v4];

  v7 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = [v7 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (void)setTransactionScheduledDate:(INDateComponentsRange *)transactionScheduledDate
{
  v4 = transactionScheduledDate;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v5 setTransactionScheduledDate:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setTransactionAmount:(INPaymentAmount *)transactionAmount
{
  v4 = transactionAmount;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToPaymentAmountValue(v4);

  [v5 setTransactionAmount:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setToAccount:(INPaymentAccount *)toAccount
{
  v4 = toAccount;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToFinancialAccountValue(v4);

  [v5 setToAccount:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setFromAccount:(INPaymentAccount *)fromAccount
{
  v4 = fromAccount;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToFinancialAccountValue(v4);

  [v5 setFromAccount:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (INCurrencyAmount)transferFee
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 transferFee];
  v4 = INIntentSlotValueTransformFromCurrencyAmountValue(v3);

  return v4;
}

- (NSString)transactionNote
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 transactionNote];
  v4 = [v3 copy];

  return v4;
}

- (INDateComponentsRange)transactionScheduledDate
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 transactionScheduledDate];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (INPaymentAmount)transactionAmount
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 transactionAmount];
  v4 = INIntentSlotValueTransformFromPaymentAmountValue(v3);

  return v4;
}

- (INPaymentAccount)toAccount
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 toAccount];
  v4 = INIntentSlotValueTransformFromFinancialAccountValue(v3);

  return v4;
}

- (INPaymentAccount)fromAccount
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 fromAccount];
  v4 = INIntentSlotValueTransformFromFinancialAccountValue(v3);

  return v4;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INTransferMoneyIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INTransferMoneyIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INTransferMoneyIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INTransferMoneyIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INTransferMoneyIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INTransferMoneyIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INTransferMoneyIntentResponseCodeFailureCredentialsUnverified"])
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INTransferMoneyIntentResponseCodeFailureInsufficientFunds"];

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
  v2 = [(INTransferMoneyIntentResponse *)self code];
  if ((v2 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FA48[v2 - 1];
  }
}

- (INTransferMoneyIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INTransferMoneyIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INTransferMoneyIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INTransferMoneyIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INTransferMoneyIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INTransferMoneyIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INTransferMoneyIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INTransferMoneyIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
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

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if (a3 == 7)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0x7FFFFFFF;
  }

  if (a3 == 6)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FA28[a3 - 1];
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
  v7 = 6;
  v8 = 4;
  if (a5)
  {
    v8 = 5;
  }

  if (a4 == 2)
  {
    v8 = 7;
  }

  if (a4 != 1)
  {
    v7 = v8;
  }

  if (a3 != 1)
  {
    v7 = 0;
  }

  if (a3)
  {
    v6 = v7;
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