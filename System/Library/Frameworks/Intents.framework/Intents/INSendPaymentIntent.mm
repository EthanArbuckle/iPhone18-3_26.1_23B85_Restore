@interface INSendPaymentIntent
- (INCurrencyAmount)currencyAmount;
- (INPerson)payee;
- (INSendPaymentIntent)initWithPayee:(INPerson *)payee currencyAmount:(INCurrencyAmount *)currencyAmount note:(NSString *)note;
- (NSString)note;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_redactedDictionaryRepresentation;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setCurrencyAmount:(id)amount;
- (void)setNote:(id)note;
- (void)setPayee:(id)payee;
@end

@implementation INSendPaymentIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  v15 = idCopy;
  v8 = [_typedBackingStore copy];
  payee = [_typedBackingStore payee];
  v10 = INIntentSlotValueRedactedContactFromContact(payee, options, v15);
  [v8 setPayee:v10];

  currencyAmount = [_typedBackingStore currencyAmount];
  v12 = INIntentSlotValueRedactedCurrencyAmountFromCurrencyAmount(currencyAmount, options, v15);
  [v8 setCurrencyAmount:v12];

  note = [_typedBackingStore note];
  v14 = INIntentSlotValueRedactedStringFromString(note, options, v15);

  [v8 setNote:v14];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"payee";
  payee = [(INSendPaymentIntent *)self payee];
  null = payee;
  if (!payee)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"currencyAmount";
  currencyAmount = [(INSendPaymentIntent *)self currencyAmount];
  null2 = currencyAmount;
  if (!currencyAmount)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"note";
  note = [(INSendPaymentIntent *)self note];
  null3 = note;
  if (!note)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!note)
  {
  }

  if (!currencyAmount)
  {
  }

  if (!payee)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_redactedDictionaryRepresentation
{
  _dictionaryRepresentation = [(INSendPaymentIntent *)self _dictionaryRepresentation];
  v3 = [_dictionaryRepresentation mutableCopy];

  [v3 setObject:@"<redacted>" forKey:@"note"];

  return v3;
}

- (void)setNote:(id)note
{
  noteCopy = note;
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(noteCopy);

  [_typedBackingStore setNote:v5];
}

- (NSString)note
{
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  note = [_typedBackingStore note];
  v4 = INIntentSlotValueTransformFromString(note);

  return v4;
}

- (void)setCurrencyAmount:(id)amount
{
  amountCopy = amount;
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToCurrencyAmount(amountCopy);

  [_typedBackingStore setCurrencyAmount:v5];
}

- (INCurrencyAmount)currencyAmount
{
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  currencyAmount = [_typedBackingStore currencyAmount];
  v4 = INIntentSlotValueTransformFromCurrencyAmount(currencyAmount);

  return v4;
}

- (void)setPayee:(id)payee
{
  payeeCopy = payee;
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContact(payeeCopy);

  [_typedBackingStore setPayee:v5];
}

- (INPerson)payee
{
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  payee = [_typedBackingStore payee];
  v4 = INIntentSlotValueTransformFromContact(payee);

  return v4;
}

- (INSendPaymentIntent)initWithPayee:(INPerson *)payee currencyAmount:(INCurrencyAmount *)currencyAmount note:(NSString *)note
{
  v8 = payee;
  v9 = currencyAmount;
  v10 = note;
  v14.receiver = self;
  v14.super_class = INSendPaymentIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INSendPaymentIntent *)v11 setPayee:v8];
    [(INSendPaymentIntent *)v12 setCurrencyAmount:v9];
    [(INSendPaymentIntent *)v12 setNote:v10];
  }

  return v12;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSendPaymentIntent *)self _typedBackingStore];
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