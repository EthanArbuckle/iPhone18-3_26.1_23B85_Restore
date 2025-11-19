@interface INFindEventsIntent
- (CLPlacemark)location;
- (INDateComponentsRange)dateTimeRange;
- (INFindEventsIntent)initWithSearchQuery:(id)a3 dateTimeRange:(id)a4 participants:(id)a5 location:(id)a6 requestedEventAttribute:(int64_t)a7;
- (NSArray)participants;
- (NSString)searchQuery;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)requestedEventAttribute;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setDateTimeRange:(id)a3;
- (void)setLocation:(id)a3;
- (void)setParticipants:(id)a3;
- (void)setRequestedEventAttribute:(int64_t)a3;
- (void)setSearchQuery:(id)a3;
@end

@implementation INFindEventsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INFindEventsIntent *)self _typedBackingStore];
  v13 = v6;
  v8 = [v7 copy];
  v9 = [v7 participants];
  v10 = INIntentSlotValueRedactedContactsFromContacts(v9, a3, v13);

  [v8 setParticipants:v10];
  v11 = [v7 location];
  v12 = INIntentSlotValueRedactedLocationFromLocation(v11, a3, v13);

  [v8 setLocation:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"searchQuery";
  v3 = [(INFindEventsIntent *)self searchQuery];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v4;
  v17[1] = @"dateTimeRange";
  v5 = [(INFindEventsIntent *)self dateTimeRange];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v6;
  v17[2] = @"participants";
  v7 = [(INFindEventsIntent *)self participants];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v8;
  v17[3] = @"location";
  v9 = [(INFindEventsIntent *)self location];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v10;
  v17[4] = @"requestedEventAttribute";
  v11 = [(INFindEventsIntent *)self requestedEventAttribute];
  if ((v11 - 1) > 2)
  {
    v12 = @"unknown";
  }

  else
  {
    v12 = *(&off_1E7286080 + v11 - 1);
  }

  v13 = v12;
  v18[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setRequestedEventAttribute:(int64_t)a3
{
  v3 = a3 - 1;
  v4 = [(INFindEventsIntent *)self _typedBackingStore];
  v5 = v4;
  if (v3 > 2)
  {
    [v4 setHasRequestedEventAttribute:0];
  }

  else
  {
    [v4 setRequestedEventAttribute:?];
  }
}

- (int64_t)requestedEventAttribute
{
  v3 = [(INFindEventsIntent *)self _typedBackingStore];
  v4 = [v3 hasRequestedEventAttribute];
  v5 = [(INFindEventsIntent *)self _typedBackingStore];
  v6 = [v5 requestedEventAttribute];
  if (((v6 - 1 < 3) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setLocation:(id)a3
{
  v4 = a3;
  v6 = [(INFindEventsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(v4);

  [v6 setLocation:v5];
}

- (CLPlacemark)location
{
  v2 = [(INFindEventsIntent *)self _typedBackingStore];
  v3 = [v2 location];
  v4 = INIntentSlotValueTransformFromLocation(v3);

  return v4;
}

- (void)setParticipants:(id)a3
{
  v4 = a3;
  v6 = [(INFindEventsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(v4);

  [v6 setParticipants:v5];
}

- (NSArray)participants
{
  v2 = [(INFindEventsIntent *)self _typedBackingStore];
  v3 = [v2 participants];
  v4 = INIntentSlotValueTransformFromContacts(v3);

  return v4;
}

- (void)setDateTimeRange:(id)a3
{
  v4 = a3;
  v6 = [(INFindEventsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRangeValue(v4);

  [v6 setDateTimeRange:v5];
}

- (INDateComponentsRange)dateTimeRange
{
  v2 = [(INFindEventsIntent *)self _typedBackingStore];
  v3 = [v2 dateTimeRange];
  v4 = INIntentSlotValueTransformFromDateTimeRangeValue(v3);

  return v4;
}

- (void)setSearchQuery:(id)a3
{
  v4 = a3;
  v5 = [(INFindEventsIntent *)self _typedBackingStore];
  [v5 setSearchQuery:v4];
}

- (NSString)searchQuery
{
  v2 = [(INFindEventsIntent *)self _typedBackingStore];
  v3 = [v2 searchQuery];
  v4 = [v3 copy];

  return v4;
}

- (INFindEventsIntent)initWithSearchQuery:(id)a3 dateTimeRange:(id)a4 participants:(id)a5 location:(id)a6 requestedEventAttribute:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = INFindEventsIntent;
  v16 = [(INIntent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(INFindEventsIntent *)v16 setSearchQuery:v12];
    [(INFindEventsIntent *)v17 setDateTimeRange:v13];
    [(INFindEventsIntent *)v17 setParticipants:v14];
    [(INFindEventsIntent *)v17 setLocation:v15];
    [(INFindEventsIntent *)v17 setRequestedEventAttribute:a7];
  }

  return v17;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INFindEventsIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INFindEventsIntent *)self _typedBackingStore];
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