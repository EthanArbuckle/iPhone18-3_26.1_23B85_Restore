@interface INRequestPaymentIntent
- (INCurrencyAmount)currencyAmount;
- (INPerson)payer;
- (INRequestPaymentIntent)initWithPayer:(INPerson *)payer currencyAmount:(INCurrencyAmount *)currencyAmount note:(NSString *)note;
- (NSString)note;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setCurrencyAmount:(id)a3;
- (void)setNote:(id)a3;
- (void)setPayer:(id)a3;
@end

@implementation INRequestPaymentIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INRequestPaymentIntent *)self _typedBackingStore];
  v15 = v6;
  v8 = [v7 copy];
  v9 = [v7 payer];
  v10 = INIntentSlotValueRedactedContactFromContact(v9, a3, v15);
  [v8 setPayer:v10];

  v11 = [v7 currencyAmount];
  v12 = INIntentSlotValueRedactedCurrencyAmountFromCurrencyAmount(v11, a3, v15);
  [v8 setCurrencyAmount:v12];

  v13 = [v7 note];
  v14 = INIntentSlotValueRedactedStringFromString(v13, a3, v15);

  [v8 setNote:v14];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"payer";
  v3 = [(INRequestPaymentIntent *)self payer];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"currencyAmount";
  v5 = [(INRequestPaymentIntent *)self currencyAmount];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"note";
  v7 = [(INRequestPaymentIntent *)self note];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setNote:(id)a3
{
  v4 = a3;
  v6 = [(INRequestPaymentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(v4);

  [v6 setNote:v5];
}

- (NSString)note
{
  v2 = [(INRequestPaymentIntent *)self _typedBackingStore];
  v3 = [v2 note];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (void)setCurrencyAmount:(id)a3
{
  v4 = a3;
  v6 = [(INRequestPaymentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToCurrencyAmount(v4);

  [v6 setCurrencyAmount:v5];
}

- (INCurrencyAmount)currencyAmount
{
  v2 = [(INRequestPaymentIntent *)self _typedBackingStore];
  v3 = [v2 currencyAmount];
  v4 = INIntentSlotValueTransformFromCurrencyAmount(v3);

  return v4;
}

- (void)setPayer:(id)a3
{
  v4 = a3;
  v6 = [(INRequestPaymentIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContact(v4);

  [v6 setPayer:v5];
}

- (INPerson)payer
{
  v2 = [(INRequestPaymentIntent *)self _typedBackingStore];
  v3 = [v2 payer];
  v4 = INIntentSlotValueTransformFromContact(v3);

  return v4;
}

- (INRequestPaymentIntent)initWithPayer:(INPerson *)payer currencyAmount:(INCurrencyAmount *)currencyAmount note:(NSString *)note
{
  v8 = payer;
  v9 = currencyAmount;
  v10 = note;
  v14.receiver = self;
  v14.super_class = INRequestPaymentIntent;
  v11 = [(INIntent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(INRequestPaymentIntent *)v11 setPayer:v8];
    [(INRequestPaymentIntent *)v12 setCurrencyAmount:v9];
    [(INRequestPaymentIntent *)v12 setNote:v10];
  }

  return v12;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INRequestPaymentIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INRequestPaymentIntent *)self _typedBackingStore];
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