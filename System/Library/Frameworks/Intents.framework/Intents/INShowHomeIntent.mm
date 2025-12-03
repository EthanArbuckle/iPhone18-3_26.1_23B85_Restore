@interface INShowHomeIntent
- (INDateComponentsRange)time;
- (INShowHomeIntent)initWithFilters:(id)filters time:(id)time;
- (NSArray)filters;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setFilters:(id)filters;
- (void)setTime:(id)time;
@end

@implementation INShowHomeIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INShowHomeIntent *)self _typedBackingStore];
  v11 = idCopy;
  v8 = [_typedBackingStore copy];
  time = [_typedBackingStore time];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(time, options);

  [v8 setTime:v10];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"filters";
  filters = [(INShowHomeIntent *)self filters];
  null = filters;
  if (!filters)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"time";
  v11[0] = null;
  time = [(INShowHomeIntent *)self time];
  null2 = time;
  if (!time)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!time)
  {
  }

  if (!filters)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)setTime:(id)time
{
  timeCopy = time;
  _typedBackingStore = [(INShowHomeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(timeCopy);

  [_typedBackingStore setTime:v5];
}

- (INDateComponentsRange)time
{
  _typedBackingStore = [(INShowHomeIntent *)self _typedBackingStore];
  time = [_typedBackingStore time];
  v4 = INIntentSlotValueTransformFromDateTimeRange(time);

  return v4;
}

- (void)setFilters:(id)filters
{
  filtersCopy = filters;
  _typedBackingStore = [(INShowHomeIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToHomeFilters(filtersCopy);

  [_typedBackingStore setFilters:v5];
}

- (NSArray)filters
{
  _typedBackingStore = [(INShowHomeIntent *)self _typedBackingStore];
  filters = [_typedBackingStore filters];
  v4 = INIntentSlotValueTransformFromHomeFilters(filters);

  return v4;
}

- (INShowHomeIntent)initWithFilters:(id)filters time:(id)time
{
  filtersCopy = filters;
  timeCopy = time;
  v11.receiver = self;
  v11.super_class = INShowHomeIntent;
  v8 = [(INIntent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(INShowHomeIntent *)v8 setFilters:filtersCopy];
    [(INShowHomeIntent *)v9 setTime:timeCopy];
  }

  return v9;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INShowHomeIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INShowHomeIntent *)self _typedBackingStore];
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