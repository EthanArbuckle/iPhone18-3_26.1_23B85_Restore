@interface INShowHomeIntent
- (INDateComponentsRange)time;
- (INShowHomeIntent)initWithFilters:(id)a3 time:(id)a4;
- (NSArray)filters;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setFilters:(id)a3;
- (void)setTime:(id)a3;
@end

@implementation INShowHomeIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INShowHomeIntent *)self _typedBackingStore];
  v11 = v6;
  v8 = [v7 copy];
  v9 = [v7 time];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v9, a3);

  [v8 setTime:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"filters";
  v3 = [(INShowHomeIntent *)self filters];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"time";
  v11[0] = v4;
  v5 = [(INShowHomeIntent *)self time];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setTime:(id)a3
{
  v4 = a3;
  v6 = [(INShowHomeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setTime:v5];
}

- (INDateComponentsRange)time
{
  v2 = [(INShowHomeIntent *)self _typedBackingStore];
  v3 = [v2 time];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (void)setFilters:(id)a3
{
  v4 = a3;
  v6 = [(INShowHomeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToHomeFilters(v4);

  [v6 setFilters:v5];
}

- (NSArray)filters
{
  v2 = [(INShowHomeIntent *)self _typedBackingStore];
  v3 = [v2 filters];
  v4 = INIntentSlotValueTransformFromHomeFilters(v3);

  return v4;
}

- (INShowHomeIntent)initWithFilters:(id)a3 time:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = INShowHomeIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INShowHomeIntent *)v8 setFilters:v6];
    [(INShowHomeIntent *)v9 setTime:v7];
  }

  return v9;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INShowHomeIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INShowHomeIntent *)self _typedBackingStore];
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