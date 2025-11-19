@interface INPayBillIntent
- (INBillPayee)billPayee;
- (INBillType)billType;
- (INDateComponentsRange)dueDate;
- (INDateComponentsRange)transactionScheduledDate;
- (INPayBillIntent)initWithBillPayee:(INBillPayee *)billPayee fromAccount:(INPaymentAccount *)fromAccount transactionAmount:(INPaymentAmount *)transactionAmount transactionScheduledDate:(INDateComponentsRange *)transactionScheduledDate transactionNote:(NSString *)transactionNote billType:(INBillType)billType dueDate:(INDateComponentsRange *)dueDate;
- (INPaymentAccount)fromAccount;
- (INPaymentAmount)transactionAmount;
- (NSString)transactionNote;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setBillPayee:(id)a3;
- (void)setBillType:(int64_t)a3;
- (void)setDueDate:(id)a3;
- (void)setFromAccount:(id)a3;
- (void)setTransactionAmount:(id)a3;
- (void)setTransactionNote:(id)a3;
- (void)setTransactionScheduledDate:(id)a3;
@end

@implementation INPayBillIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INPayBillIntent *)self _typedBackingStore];
  v20 = v6;
  v8 = [v7 copy];
  v9 = [v7 billPayee];
  v10 = INIntentSlotValueRedactedBillPayeeValueFromBillPayeeValue(v9, a3);
  [v8 setBillPayee:v10];

  v11 = [v7 fromAccount];
  v12 = INIntentSlotValueRedactedFinancialAccountValueFromFinancialAccountValue(v11, a3, v20);
  [v8 setFromAccount:v12];

  v13 = [v7 transactionAmount];
  [v8 setTransactionAmount:v13];

  v14 = [v7 transactionScheduledDate];
  v15 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v14, a3);
  [v8 setTransactionScheduledDate:v15];

  v16 = [v7 transactionNote];
  v17 = INIntentSlotValueRedactedStringFromString(v16, a3, v20);
  [v8 setTransactionNote:v17];

  v18 = [v7 dueDate];
  v19 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v18, a3);

  [v8 setDueDate:v19];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v26[7] = *MEMORY[0x1E69E9840];
  v25[0] = @"billPayee";
  v3 = [(INPayBillIntent *)self billPayee];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v26[0] = v3;
  v25[1] = @"fromAccount";
  v5 = [(INPayBillIntent *)self fromAccount];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v5;
  v26[1] = v5;
  v25[2] = @"transactionAmount";
  v7 = [(INPayBillIntent *)self transactionAmount];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v7;
  v26[2] = v7;
  v25[3] = @"transactionScheduledDate";
  v9 = [(INPayBillIntent *)self transactionScheduledDate];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v9;
  v25[4] = @"transactionNote";
  v11 = [(INPayBillIntent *)self transactionNote];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v12;
  v25[5] = @"billType";
  v13 = [(INPayBillIntent *)self billType];
  if ((v13 - 1) > 0x15)
  {
    v14 = @"unknown";
  }

  else
  {
    v14 = off_1E7280DF0[v13 - 1];
  }

  v15 = v14;
  v26[5] = v15;
  v25[6] = @"dueDate";
  v16 = [(INPayBillIntent *)self dueDate];
  v17 = v16;
  if (!v16)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (!v16)
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

  if (!v4)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)setDueDate:(id)a3
{
  v4 = a3;
  v6 = [(INPayBillIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setDueDate:v5];
}

- (INDateComponentsRange)dueDate
{
  v2 = [(INPayBillIntent *)self _typedBackingStore];
  v3 = [v2 dueDate];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (void)setBillType:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INPayBillIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 0x15)
  {
    [v4 setHasBillType:0];
  }

  else
  {
    [v4 setBillType:?];
  }
}

- (INBillType)billType
{
  v3 = [(INPayBillIntent *)self _typedBackingStore];
  v4 = [v3 hasBillType];
  v5 = [(INPayBillIntent *)self _typedBackingStore];
  v6 = [v5 billType];
  if (((v6 - 1 < 0x16) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = INBillTypeUnknown;
  }

  return v7;
}

- (void)setTransactionNote:(id)a3
{
  v4 = a3;
  v6 = [(INPayBillIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(v4);

  [v6 setTransactionNote:v5];
}

- (NSString)transactionNote
{
  v2 = [(INPayBillIntent *)self _typedBackingStore];
  v3 = [v2 transactionNote];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (void)setTransactionScheduledDate:(id)a3
{
  v4 = a3;
  v6 = [(INPayBillIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setTransactionScheduledDate:v5];
}

- (INDateComponentsRange)transactionScheduledDate
{
  v2 = [(INPayBillIntent *)self _typedBackingStore];
  v3 = [v2 transactionScheduledDate];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (void)setTransactionAmount:(id)a3
{
  v4 = a3;
  v6 = [(INPayBillIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToPaymentAmountValue(v4);

  [v6 setTransactionAmount:v5];
}

- (INPaymentAmount)transactionAmount
{
  v2 = [(INPayBillIntent *)self _typedBackingStore];
  v3 = [v2 transactionAmount];
  v4 = INIntentSlotValueTransformFromPaymentAmountValue(v3);

  return v4;
}

- (void)setFromAccount:(id)a3
{
  v4 = a3;
  v6 = [(INPayBillIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToFinancialAccountValue(v4);

  [v6 setFromAccount:v5];
}

- (INPaymentAccount)fromAccount
{
  v2 = [(INPayBillIntent *)self _typedBackingStore];
  v3 = [v2 fromAccount];
  v4 = INIntentSlotValueTransformFromFinancialAccountValue(v3);

  return v4;
}

- (void)setBillPayee:(id)a3
{
  v4 = a3;
  v6 = [(INPayBillIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToBillPayeeValue(v4);

  [v6 setBillPayee:v5];
}

- (INBillPayee)billPayee
{
  v2 = [(INPayBillIntent *)self _typedBackingStore];
  v3 = [v2 billPayee];
  v4 = INIntentSlotValueTransformFromBillPayeeValue(v3);

  return v4;
}

- (INPayBillIntent)initWithBillPayee:(INBillPayee *)billPayee fromAccount:(INPaymentAccount *)fromAccount transactionAmount:(INPaymentAmount *)transactionAmount transactionScheduledDate:(INDateComponentsRange *)transactionScheduledDate transactionNote:(NSString *)transactionNote billType:(INBillType)billType dueDate:(INDateComponentsRange *)dueDate
{
  v15 = billPayee;
  v16 = fromAccount;
  v17 = transactionAmount;
  v18 = transactionScheduledDate;
  v19 = transactionNote;
  v20 = dueDate;
  v24.receiver = self;
  v24.super_class = INPayBillIntent;
  v21 = [(INIntent *)&v24 init];
  v22 = v21;
  if (v21)
  {
    [(INPayBillIntent *)v21 setBillPayee:v15];
    [(INPayBillIntent *)v22 setFromAccount:v16];
    [(INPayBillIntent *)v22 setTransactionAmount:v17];
    [(INPayBillIntent *)v22 setTransactionScheduledDate:v18];
    [(INPayBillIntent *)v22 setTransactionNote:v19];
    [(INPayBillIntent *)v22 setBillType:billType];
    [(INPayBillIntent *)v22 setDueDate:v20];
  }

  return v22;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INPayBillIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INPayBillIntent *)self _typedBackingStore];
  v3 = [v2 intentMetadata];

  return v3;
}

- (id)_typedBackingStore
{
  v2 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end