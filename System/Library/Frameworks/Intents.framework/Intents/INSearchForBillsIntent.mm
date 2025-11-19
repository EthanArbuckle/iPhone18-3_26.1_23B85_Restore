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
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setBillPayee:(id)a3;
- (void)setBillType:(int64_t)a3;
- (void)setDueDateRange:(id)a3;
- (void)setPaymentDateRange:(id)a3;
- (void)setStatus:(int64_t)a3;
@end

@implementation INSearchForBillsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSearchForBillsIntent *)self _typedBackingStore];
  v15 = v6;
  v8 = [v7 copy];
  v9 = [v7 billPayee];
  v10 = INIntentSlotValueRedactedBillPayeeValueFromBillPayeeValue(v9, a3);
  [v8 setBillPayee:v10];

  v11 = [v7 paymentDateRange];
  v12 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v11, a3);
  [v8 setPaymentDateRange:v12];

  v13 = [v7 dueDateRange];
  v14 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v13, a3);

  [v8 setDueDateRange:v14];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v19[5] = *MEMORY[0x1E69E9840];
  v18[0] = @"billPayee";
  v3 = [(INSearchForBillsIntent *)self billPayee];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = v4;
  v18[1] = @"paymentDateRange";
  v5 = [(INSearchForBillsIntent *)self paymentDateRange];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v6;
  v18[2] = @"billType";
  v7 = [(INSearchForBillsIntent *)self billType];
  if ((v7 - 1) > 0x15)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7280DF0[v7 - 1];
  }

  v9 = v8;
  v19[2] = v9;
  v18[3] = @"status";
  v10 = [(INSearchForBillsIntent *)self status];
  if ((v10 - 1) > 4)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = *(&off_1E727E730 + v10 - 1);
  }

  v12 = v11;
  v19[3] = v12;
  v18[4] = @"dueDateRange";
  v13 = [(INSearchForBillsIntent *)self dueDateRange];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v19[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
  if (!v13)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)setDueDateRange:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForBillsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setDueDateRange:v5];
}

- (INDateComponentsRange)dueDateRange
{
  v2 = [(INSearchForBillsIntent *)self _typedBackingStore];
  v3 = [v2 dueDateRange];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (void)setStatus:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSearchForBillsIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 4)
  {
    [v4 setHasStatus:0];
  }

  else
  {
    [v4 setStatus:?];
  }
}

- (INPaymentStatus)status
{
  v3 = [(INSearchForBillsIntent *)self _typedBackingStore];
  v4 = [v3 hasStatus];
  v5 = [(INSearchForBillsIntent *)self _typedBackingStore];
  v6 = [v5 status];
  if (((v6 - 1 < 5) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = INPaymentStatusUnknown;
  }

  return v7;
}

- (void)setBillType:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INSearchForBillsIntent *)self _typedBackingStore];
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
  v3 = [(INSearchForBillsIntent *)self _typedBackingStore];
  v4 = [v3 hasBillType];
  v5 = [(INSearchForBillsIntent *)self _typedBackingStore];
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

- (void)setPaymentDateRange:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForBillsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setPaymentDateRange:v5];
}

- (INDateComponentsRange)paymentDateRange
{
  v2 = [(INSearchForBillsIntent *)self _typedBackingStore];
  v3 = [v2 paymentDateRange];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (void)setBillPayee:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForBillsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToBillPayeeValue(v4);

  [v6 setBillPayee:v5];
}

- (INBillPayee)billPayee
{
  v2 = [(INSearchForBillsIntent *)self _typedBackingStore];
  v3 = [v2 billPayee];
  v4 = INIntentSlotValueTransformFromBillPayeeValue(v3);

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

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSearchForBillsIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSearchForBillsIntent *)self _typedBackingStore];
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