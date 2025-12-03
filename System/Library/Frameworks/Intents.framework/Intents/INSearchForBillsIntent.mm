@interface INSearchForBillsIntent
- (INBillPayee)billPayee;
- (INBillType)billType;
- (INDateComponentsRange)dueDateRange;
- (INDateComponentsRange)paymentDateRange;
- (INPaymentStatus)status;
- (INSearchForBillsIntent)initWithBillPayee:(INBillPayee *)billPayee paymentDateRange:(INDateComponentsRange *)paymentDateRange billType:(INBillType)billType status:(INPaymentStatus)status dueDateRange:(INDateComponentsRange *)dueDateRange;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setBillPayee:(id)payee;
- (void)setBillType:(int64_t)type;
- (void)setDueDateRange:(id)range;
- (void)setPaymentDateRange:(id)range;
- (void)setStatus:(int64_t)status;
@end

@implementation INSearchForBillsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INSearchForBillsIntent *)self _typedBackingStore];
  v15 = idCopy;
  v8 = [_typedBackingStore copy];
  billPayee = [_typedBackingStore billPayee];
  v10 = INIntentSlotValueRedactedBillPayeeValueFromBillPayeeValue(billPayee, options);
  [v8 setBillPayee:v10];

  paymentDateRange = [_typedBackingStore paymentDateRange];
  v12 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(paymentDateRange, options);
  [v8 setPaymentDateRange:v12];

  dueDateRange = [_typedBackingStore dueDateRange];
  v14 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(dueDateRange, options);

  [v8 setDueDateRange:v14];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v19[5] = *MEMORY[0x1E69E9840];
  v18[0] = @"billPayee";
  billPayee = [(INSearchForBillsIntent *)self billPayee];
  null = billPayee;
  if (!billPayee)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = null;
  v18[1] = @"paymentDateRange";
  paymentDateRange = [(INSearchForBillsIntent *)self paymentDateRange];
  null2 = paymentDateRange;
  if (!paymentDateRange)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null2;
  v18[2] = @"billType";
  billType = [(INSearchForBillsIntent *)self billType];
  if ((billType - 1) > 0x15)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7280DF0[billType - 1];
  }

  v9 = v8;
  v19[2] = v9;
  v18[3] = @"status";
  status = [(INSearchForBillsIntent *)self status];
  if ((status - 1) > 4)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = *(&off_1E727E730 + status - 1);
  }

  v12 = v11;
  v19[3] = v12;
  v18[4] = @"dueDateRange";
  dueDateRange = [(INSearchForBillsIntent *)self dueDateRange];
  null3 = dueDateRange;
  if (!dueDateRange)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[4] = null3;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
  if (!dueDateRange)
  {
  }

  if (!paymentDateRange)
  {
  }

  if (!billPayee)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setDueDateRange:(id)range
{
  rangeCopy = range;
  _typedBackingStore = [(INSearchForBillsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(rangeCopy);

  [_typedBackingStore setDueDateRange:v5];
}

- (INDateComponentsRange)dueDateRange
{
  _typedBackingStore = [(INSearchForBillsIntent *)self _typedBackingStore];
  dueDateRange = [_typedBackingStore dueDateRange];
  v4 = INIntentSlotValueTransformFromDateTimeRange(dueDateRange);

  return v4;
}

- (void)setStatus:(int64_t)status
{
  v3 = status - 1;
  _typedBackingStore = [(INSearchForBillsIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 4)
  {
    [_typedBackingStore setHasStatus:0];
  }

  else
  {
    [_typedBackingStore setStatus:?];
  }
}

- (INPaymentStatus)status
{
  _typedBackingStore = [(INSearchForBillsIntent *)self _typedBackingStore];
  hasStatus = [_typedBackingStore hasStatus];
  _typedBackingStore2 = [(INSearchForBillsIntent *)self _typedBackingStore];
  status = [_typedBackingStore2 status];
  if (((status - 1 < 5) & hasStatus) != 0)
  {
    v7 = status;
  }

  else
  {
    v7 = INPaymentStatusUnknown;
  }

  return v7;
}

- (void)setBillType:(int64_t)type
{
  v3 = type - 1;
  _typedBackingStore = [(INSearchForBillsIntent *)self _typedBackingStore];
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
  _typedBackingStore = [(INSearchForBillsIntent *)self _typedBackingStore];
  hasBillType = [_typedBackingStore hasBillType];
  _typedBackingStore2 = [(INSearchForBillsIntent *)self _typedBackingStore];
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

- (void)setPaymentDateRange:(id)range
{
  rangeCopy = range;
  _typedBackingStore = [(INSearchForBillsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(rangeCopy);

  [_typedBackingStore setPaymentDateRange:v5];
}

- (INDateComponentsRange)paymentDateRange
{
  _typedBackingStore = [(INSearchForBillsIntent *)self _typedBackingStore];
  paymentDateRange = [_typedBackingStore paymentDateRange];
  v4 = INIntentSlotValueTransformFromDateTimeRange(paymentDateRange);

  return v4;
}

- (void)setBillPayee:(id)payee
{
  payeeCopy = payee;
  _typedBackingStore = [(INSearchForBillsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToBillPayeeValue(payeeCopy);

  [_typedBackingStore setBillPayee:v5];
}

- (INBillPayee)billPayee
{
  _typedBackingStore = [(INSearchForBillsIntent *)self _typedBackingStore];
  billPayee = [_typedBackingStore billPayee];
  v4 = INIntentSlotValueTransformFromBillPayeeValue(billPayee);

  return v4;
}

- (INSearchForBillsIntent)initWithBillPayee:(INBillPayee *)billPayee paymentDateRange:(INDateComponentsRange *)paymentDateRange billType:(INBillType)billType status:(INPaymentStatus)status dueDateRange:(INDateComponentsRange *)dueDateRange
{
  v12 = billPayee;
  v13 = paymentDateRange;
  v14 = dueDateRange;
  v18.receiver = self;
  v18.super_class = INSearchForBillsIntent;
  v15 = [(INIntent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(INSearchForBillsIntent *)v15 setBillPayee:v12];
    [(INSearchForBillsIntent *)v16 setPaymentDateRange:v13];
    [(INSearchForBillsIntent *)v16 setBillType:billType];
    [(INSearchForBillsIntent *)v16 setStatus:status];
    [(INSearchForBillsIntent *)v16 setDueDateRange:v14];
  }

  return v16;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INSearchForBillsIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INSearchForBillsIntent *)self _typedBackingStore];
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