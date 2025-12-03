@interface INTransferMoneyIntent
- (INDateComponentsRange)transactionScheduledDate;
- (INPaymentAccount)fromAccount;
- (INPaymentAccount)toAccount;
- (INPaymentAmount)transactionAmount;
- (INTransferMoneyIntent)initWithFromAccount:(INPaymentAccount *)fromAccount toAccount:(INPaymentAccount *)toAccount transactionAmount:(INPaymentAmount *)transactionAmount transactionScheduledDate:(INDateComponentsRange *)transactionScheduledDate transactionNote:(NSString *)transactionNote;
- (NSString)transactionNote;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setFromAccount:(id)account;
- (void)setToAccount:(id)account;
- (void)setTransactionAmount:(id)amount;
- (void)setTransactionNote:(id)note;
- (void)setTransactionScheduledDate:(id)date;
@end

@implementation INTransferMoneyIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INTransferMoneyIntent *)self _typedBackingStore];
  v16 = idCopy;
  v8 = [_typedBackingStore copy];
  fromAccount = [_typedBackingStore fromAccount];
  v10 = INIntentSlotValueRedactedFinancialAccountValueFromFinancialAccountValue(fromAccount, options, v16);
  [v8 setFromAccount:v10];

  toAccount = [_typedBackingStore toAccount];
  v12 = INIntentSlotValueRedactedFinancialAccountValueFromFinancialAccountValue(toAccount, options, v16);
  [v8 setToAccount:v12];

  transactionAmount = [_typedBackingStore transactionAmount];
  [v8 setTransactionAmount:transactionAmount];

  transactionScheduledDate = [_typedBackingStore transactionScheduledDate];
  v15 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(transactionScheduledDate, options);

  [v8 setTransactionScheduledDate:v15];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"fromAccount";
  fromAccount = [(INTransferMoneyIntent *)self fromAccount];
  v4 = fromAccount;
  if (!fromAccount)
  {
    fromAccount = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = fromAccount;
  v17[1] = @"toAccount";
  toAccount = [(INTransferMoneyIntent *)self toAccount];
  null = toAccount;
  if (!toAccount)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null;
  v17[2] = @"transactionAmount";
  transactionAmount = [(INTransferMoneyIntent *)self transactionAmount];
  null2 = transactionAmount;
  if (!transactionAmount)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null2;
  v17[3] = @"transactionScheduledDate";
  transactionScheduledDate = [(INTransferMoneyIntent *)self transactionScheduledDate];
  null3 = transactionScheduledDate;
  if (!transactionScheduledDate)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = null3;
  v17[4] = @"transactionNote";
  transactionNote = [(INTransferMoneyIntent *)self transactionNote];
  null4 = transactionNote;
  if (!transactionNote)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[4] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  if (!transactionNote)
  {
  }

  if (!transactionScheduledDate)
  {
  }

  if (!transactionAmount)
  {
  }

  if (!toAccount)
  {
  }

  if (!v4)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)setTransactionNote:(id)note
{
  noteCopy = note;
  _typedBackingStore = [(INTransferMoneyIntent *)self _typedBackingStore];
  [_typedBackingStore setTransactionNote:noteCopy];
}

- (NSString)transactionNote
{
  _typedBackingStore = [(INTransferMoneyIntent *)self _typedBackingStore];
  transactionNote = [_typedBackingStore transactionNote];
  v4 = [transactionNote copy];

  return v4;
}

- (void)setTransactionScheduledDate:(id)date
{
  dateCopy = date;
  _typedBackingStore = [(INTransferMoneyIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(dateCopy);

  [_typedBackingStore setTransactionScheduledDate:v5];
}

- (INDateComponentsRange)transactionScheduledDate
{
  _typedBackingStore = [(INTransferMoneyIntent *)self _typedBackingStore];
  transactionScheduledDate = [_typedBackingStore transactionScheduledDate];
  v4 = INIntentSlotValueTransformFromDateTimeRange(transactionScheduledDate);

  return v4;
}

- (void)setTransactionAmount:(id)amount
{
  amountCopy = amount;
  _typedBackingStore = [(INTransferMoneyIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToPaymentAmountValue(amountCopy);

  [_typedBackingStore setTransactionAmount:v5];
}

- (INPaymentAmount)transactionAmount
{
  _typedBackingStore = [(INTransferMoneyIntent *)self _typedBackingStore];
  transactionAmount = [_typedBackingStore transactionAmount];
  v4 = INIntentSlotValueTransformFromPaymentAmountValue(transactionAmount);

  return v4;
}

- (void)setToAccount:(id)account
{
  accountCopy = account;
  _typedBackingStore = [(INTransferMoneyIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToFinancialAccountValue(accountCopy);

  [_typedBackingStore setToAccount:v5];
}

- (INPaymentAccount)toAccount
{
  _typedBackingStore = [(INTransferMoneyIntent *)self _typedBackingStore];
  toAccount = [_typedBackingStore toAccount];
  v4 = INIntentSlotValueTransformFromFinancialAccountValue(toAccount);

  return v4;
}

- (void)setFromAccount:(id)account
{
  accountCopy = account;
  _typedBackingStore = [(INTransferMoneyIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToFinancialAccountValue(accountCopy);

  [_typedBackingStore setFromAccount:v5];
}

- (INPaymentAccount)fromAccount
{
  _typedBackingStore = [(INTransferMoneyIntent *)self _typedBackingStore];
  fromAccount = [_typedBackingStore fromAccount];
  v4 = INIntentSlotValueTransformFromFinancialAccountValue(fromAccount);

  return v4;
}

- (INTransferMoneyIntent)initWithFromAccount:(INPaymentAccount *)fromAccount toAccount:(INPaymentAccount *)toAccount transactionAmount:(INPaymentAmount *)transactionAmount transactionScheduledDate:(INDateComponentsRange *)transactionScheduledDate transactionNote:(NSString *)transactionNote
{
  v12 = fromAccount;
  v13 = toAccount;
  v14 = transactionAmount;
  v15 = transactionScheduledDate;
  v16 = transactionNote;
  v20.receiver = self;
  v20.super_class = INTransferMoneyIntent;
  v17 = [(INIntent *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(INTransferMoneyIntent *)v17 setFromAccount:v12];
    [(INTransferMoneyIntent *)v18 setToAccount:v13];
    [(INTransferMoneyIntent *)v18 setTransactionAmount:v14];
    [(INTransferMoneyIntent *)v18 setTransactionScheduledDate:v15];
    [(INTransferMoneyIntent *)v18 setTransactionNote:v16];
  }

  return v18;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INTransferMoneyIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INTransferMoneyIntent *)self _typedBackingStore];
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