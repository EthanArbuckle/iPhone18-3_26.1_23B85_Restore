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
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setBillPayee:(id)payee;
- (void)setBillType:(int64_t)type;
- (void)setDueDate:(id)date;
- (void)setFromAccount:(id)account;
- (void)setTransactionAmount:(id)amount;
- (void)setTransactionNote:(id)note;
- (void)setTransactionScheduledDate:(id)date;
@end

@implementation INPayBillIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  v20 = idCopy;
  v8 = [_typedBackingStore copy];
  billPayee = [_typedBackingStore billPayee];
  v10 = INIntentSlotValueRedactedBillPayeeValueFromBillPayeeValue(billPayee, options);
  [v8 setBillPayee:v10];

  fromAccount = [_typedBackingStore fromAccount];
  v12 = INIntentSlotValueRedactedFinancialAccountValueFromFinancialAccountValue(fromAccount, options, v20);
  [v8 setFromAccount:v12];

  transactionAmount = [_typedBackingStore transactionAmount];
  [v8 setTransactionAmount:transactionAmount];

  transactionScheduledDate = [_typedBackingStore transactionScheduledDate];
  v15 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(transactionScheduledDate, options);
  [v8 setTransactionScheduledDate:v15];

  transactionNote = [_typedBackingStore transactionNote];
  v17 = INIntentSlotValueRedactedStringFromString(transactionNote, options, v20);
  [v8 setTransactionNote:v17];

  dueDate = [_typedBackingStore dueDate];
  v19 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(dueDate, options);

  [v8 setDueDate:v19];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v26[7] = *MEMORY[0x1E69E9840];
  v25[0] = @"billPayee";
  billPayee = [(INPayBillIntent *)self billPayee];
  v4 = billPayee;
  if (!billPayee)
  {
    billPayee = [MEMORY[0x1E695DFB0] null];
  }

  v24 = billPayee;
  v26[0] = billPayee;
  v25[1] = @"fromAccount";
  fromAccount = [(INPayBillIntent *)self fromAccount];
  v6 = fromAccount;
  if (!fromAccount)
  {
    fromAccount = [MEMORY[0x1E695DFB0] null];
  }

  v23 = fromAccount;
  v26[1] = fromAccount;
  v25[2] = @"transactionAmount";
  transactionAmount = [(INPayBillIntent *)self transactionAmount];
  v8 = transactionAmount;
  if (!transactionAmount)
  {
    transactionAmount = [MEMORY[0x1E695DFB0] null];
  }

  v22 = transactionAmount;
  v26[2] = transactionAmount;
  v25[3] = @"transactionScheduledDate";
  transactionScheduledDate = [(INPayBillIntent *)self transactionScheduledDate];
  v10 = transactionScheduledDate;
  if (!transactionScheduledDate)
  {
    transactionScheduledDate = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = transactionScheduledDate;
  v25[4] = @"transactionNote";
  transactionNote = [(INPayBillIntent *)self transactionNote];
  null = transactionNote;
  if (!transactionNote)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null;
  v25[5] = @"billType";
  billType = [(INPayBillIntent *)self billType];
  if ((billType - 1) > 0x15)
  {
    v14 = @"unknown";
  }

  else
  {
    v14 = off_1E7280DF0[billType - 1];
  }

  v15 = v14;
  v26[5] = v15;
  v25[6] = @"dueDate";
  dueDate = [(INPayBillIntent *)self dueDate];
  null2 = dueDate;
  if (!dueDate)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null2;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (!dueDate)
  {
  }

  if (!transactionNote)
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

- (void)setDueDate:(id)date
{
  dateCopy = date;
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(dateCopy);

  [_typedBackingStore setDueDate:v5];
}

- (INDateComponentsRange)dueDate
{
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  dueDate = [_typedBackingStore dueDate];
  v4 = INIntentSlotValueTransformFromDateTimeRange(dueDate);

  return v4;
}

- (void)setBillType:(int64_t)type
{
  v3 = type - 1;
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 0x15)
  {
    [_typedBackingStore setHasBillType:0];
  }

  else
  {
    [_typedBackingStore setBillType:?];
  }
}

- (INBillType)billType
{
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  hasBillType = [_typedBackingStore hasBillType];
  _typedBackingStore2 = [(INPayBillIntent *)self _typedBackingStore];
  billType = [_typedBackingStore2 billType];
  if (((billType - 1 < 0x16) & hasBillType) != 0)
  {
    v7 = billType;
  }

  else
  {
    v7 = INBillTypeUnknown;
  }

  return v7;
}

- (void)setTransactionNote:(id)note
{
  noteCopy = note;
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(noteCopy);

  [_typedBackingStore setTransactionNote:v5];
}

- (NSString)transactionNote
{
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  transactionNote = [_typedBackingStore transactionNote];
  v4 = INIntentSlotValueTransformFromString(transactionNote);

  return v4;
}

- (void)setTransactionScheduledDate:(id)date
{
  dateCopy = date;
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(dateCopy);

  [_typedBackingStore setTransactionScheduledDate:v5];
}

- (INDateComponentsRange)transactionScheduledDate
{
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  transactionScheduledDate = [_typedBackingStore transactionScheduledDate];
  v4 = INIntentSlotValueTransformFromDateTimeRange(transactionScheduledDate);

  return v4;
}

- (void)setTransactionAmount:(id)amount
{
  amountCopy = amount;
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToPaymentAmountValue(amountCopy);

  [_typedBackingStore setTransactionAmount:v5];
}

- (INPaymentAmount)transactionAmount
{
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  transactionAmount = [_typedBackingStore transactionAmount];
  v4 = INIntentSlotValueTransformFromPaymentAmountValue(transactionAmount);

  return v4;
}

- (void)setFromAccount:(id)account
{
  accountCopy = account;
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToFinancialAccountValue(accountCopy);

  [_typedBackingStore setFromAccount:v5];
}

- (INPaymentAccount)fromAccount
{
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  fromAccount = [_typedBackingStore fromAccount];
  v4 = INIntentSlotValueTransformFromFinancialAccountValue(fromAccount);

  return v4;
}

- (void)setBillPayee:(id)payee
{
  payeeCopy = payee;
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToBillPayeeValue(payeeCopy);

  [_typedBackingStore setBillPayee:v5];
}

- (INBillPayee)billPayee
{
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  billPayee = [_typedBackingStore billPayee];
  v4 = INIntentSlotValueTransformFromBillPayeeValue(billPayee);

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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INPayBillIntent *)self _typedBackingStore];
  intentMetadata = [_typedBackingStore intentMetadata];

  return intentMetadata;
}

- (id)_typedBackingStore
{
  backingStore = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = backingStore;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end