@interface INPayBillIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (INBillDetails)billDetails;
- (INDateComponentsRange)transactionScheduledDate;
- (INPayBillIntentResponse)initWithBackingStore:(id)a3;
- (INPayBillIntentResponse)initWithCode:(INPayBillIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INPayBillIntentResponse)initWithCoder:(id)a3;
- (INPayBillIntentResponseCode)code;
- (INPaymentAccount)fromAccount;
- (INPaymentAmount)transactionAmount;
- (NSString)transactionNote;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(INPayBillIntentResponse *)self code];
  v21 = v3;
  if (v3 < 8)
  {
    v4 = off_1E7281010[v3];
    v20 = v4;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v20 = 0;
  }

  v19 = v4;
  v23[0] = v4;
  v22[1] = @"fromAccount";
  v5 = [(INPayBillIntentResponse *)self fromAccount];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v5;
  v23[1] = v5;
  v22[2] = @"billDetails";
  v7 = [(INPayBillIntentResponse *)self billDetails];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v8;
  v22[3] = @"transactionAmount";
  v9 = [(INPayBillIntentResponse *)self transactionAmount];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v10;
  v22[4] = @"transactionScheduledDate";
  v11 = [(INPayBillIntentResponse *)self transactionScheduledDate];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v22[5] = @"transactionNote";
  v13 = [(INPayBillIntentResponse *)self transactionNote];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:6];
  if (!v13)
  {
  }

  if (!v11)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
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
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToString(v4);

  [v5 setTransactionNote:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
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

- (void)setBillDetails:(INBillDetails *)billDetails
{
  v4 = billDetails;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToBillDetailsValue(v4);

  [v5 setBillDetails:v6];
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

- (NSString)transactionNote
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 transactionNote];
  v4 = INIntentSlotValueTransformFromString(v3);

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

- (INBillDetails)billDetails
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 billDetails];
  v4 = INIntentSlotValueTransformFromBillDetailsValue(v3);

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
  [v3 isEqualToString:@"INPayBillIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INPayBillIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INPayBillIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INPayBillIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INPayBillIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INPayBillIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INPayBillIntentResponseCodeFailureCredentialsUnverified"])
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INPayBillIntentResponseCodeFailureInsufficientFunds"];

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
  v2 = [(INPayBillIntentResponse *)self code];
  if ((v2 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FA48[v2 - 1];
  }
}

- (INPayBillIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INPayBillIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INPayBillIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (INPayBillIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INPayBillIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INPayBillIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INPayBillIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INPayBillIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
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