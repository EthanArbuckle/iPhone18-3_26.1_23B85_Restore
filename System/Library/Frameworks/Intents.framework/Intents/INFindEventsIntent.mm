@interface INFindEventsIntent
- (CLPlacemark)location;
- (INDateComponentsRange)dateTimeRange;
- (INFindEventsIntent)initWithSearchQuery:(id)query dateTimeRange:(id)range participants:(id)participants location:(id)location requestedEventAttribute:(int64_t)attribute;
- (NSArray)participants;
- (NSString)searchQuery;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)requestedEventAttribute;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setDateTimeRange:(id)range;
- (void)setLocation:(id)location;
- (void)setParticipants:(id)participants;
- (void)setRequestedEventAttribute:(int64_t)attribute;
- (void)setSearchQuery:(id)query;
@end

@implementation INFindEventsIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INFindEventsIntent *)self _typedBackingStore];
  v13 = idCopy;
  v8 = [_typedBackingStore copy];
  participants = [_typedBackingStore participants];
  v10 = INIntentSlotValueRedactedContactsFromContacts(participants, options, v13);

  [v8 setParticipants:v10];
  location = [_typedBackingStore location];
  v12 = INIntentSlotValueRedactedLocationFromLocation(location, options, v13);

  [v8 setLocation:v12];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"searchQuery";
  searchQuery = [(INFindEventsIntent *)self searchQuery];
  null = searchQuery;
  if (!searchQuery)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  v17[1] = @"dateTimeRange";
  dateTimeRange = [(INFindEventsIntent *)self dateTimeRange];
  null2 = dateTimeRange;
  if (!dateTimeRange)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v17[2] = @"participants";
  participants = [(INFindEventsIntent *)self participants];
  null3 = participants;
  if (!participants)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null3;
  v17[3] = @"location";
  location = [(INFindEventsIntent *)self location];
  null4 = location;
  if (!location)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = null4;
  v17[4] = @"requestedEventAttribute";
  requestedEventAttribute = [(INFindEventsIntent *)self requestedEventAttribute];
  if ((requestedEventAttribute - 1) > 2)
  {
    v12 = @"unknown";
  }

  else
  {
    v12 = *(&off_1E7286080 + requestedEventAttribute - 1);
  }

  v13 = v12;
  v18[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];

  if (!location)
  {
  }

  if (!participants)
  {
  }

  if (!dateTimeRange)
  {
  }

  if (!searchQuery)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setRequestedEventAttribute:(int64_t)attribute
{
  v3 = attribute - 1;
  _typedBackingStore = [(INFindEventsIntent *)self _typedBackingStore];
  v5 = _typedBackingStore;
  if (v3 > 2)
  {
    [_typedBackingStore setHasRequestedEventAttribute:0];
  }

  else
  {
    [_typedBackingStore setRequestedEventAttribute:?];
  }
}

- (int64_t)requestedEventAttribute
{
  _typedBackingStore = [(INFindEventsIntent *)self _typedBackingStore];
  hasRequestedEventAttribute = [_typedBackingStore hasRequestedEventAttribute];
  _typedBackingStore2 = [(INFindEventsIntent *)self _typedBackingStore];
  requestedEventAttribute = [_typedBackingStore2 requestedEventAttribute];
  if (((requestedEventAttribute - 1 < 3) & hasRequestedEventAttribute) != 0)
  {
    v7 = requestedEventAttribute;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  _typedBackingStore = [(INFindEventsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(locationCopy);

  [_typedBackingStore setLocation:v5];
}

- (CLPlacemark)location
{
  _typedBackingStore = [(INFindEventsIntent *)self _typedBackingStore];
  location = [_typedBackingStore location];
  v4 = INIntentSlotValueTransformFromLocation(location);

  return v4;
}

- (void)setParticipants:(id)participants
{
  participantsCopy = participants;
  _typedBackingStore = [(INFindEventsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(participantsCopy);

  [_typedBackingStore setParticipants:v5];
}

- (NSArray)participants
{
  _typedBackingStore = [(INFindEventsIntent *)self _typedBackingStore];
  participants = [_typedBackingStore participants];
  v4 = INIntentSlotValueTransformFromContacts(participants);

  return v4;
}

- (void)setDateTimeRange:(id)range
{
  rangeCopy = range;
  _typedBackingStore = [(INFindEventsIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRangeValue(rangeCopy);

  [_typedBackingStore setDateTimeRange:v5];
}

- (INDateComponentsRange)dateTimeRange
{
  _typedBackingStore = [(INFindEventsIntent *)self _typedBackingStore];
  dateTimeRange = [_typedBackingStore dateTimeRange];
  v4 = INIntentSlotValueTransformFromDateTimeRangeValue(dateTimeRange);

  return v4;
}

- (void)setSearchQuery:(id)query
{
  queryCopy = query;
  _typedBackingStore = [(INFindEventsIntent *)self _typedBackingStore];
  [_typedBackingStore setSearchQuery:queryCopy];
}

- (NSString)searchQuery
{
  _typedBackingStore = [(INFindEventsIntent *)self _typedBackingStore];
  searchQuery = [_typedBackingStore searchQuery];
  v4 = [searchQuery copy];

  return v4;
}

- (INFindEventsIntent)initWithSearchQuery:(id)query dateTimeRange:(id)range participants:(id)participants location:(id)location requestedEventAttribute:(int64_t)attribute
{
  queryCopy = query;
  rangeCopy = range;
  participantsCopy = participants;
  locationCopy = location;
  v19.receiver = self;
  v19.super_class = INFindEventsIntent;
  v16 = [(INIntent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(INFindEventsIntent *)v16 setSearchQuery:queryCopy];
    [(INFindEventsIntent *)v17 setDateTimeRange:rangeCopy];
    [(INFindEventsIntent *)v17 setParticipants:participantsCopy];
    [(INFindEventsIntent *)v17 setLocation:locationCopy];
    [(INFindEventsIntent *)v17 setRequestedEventAttribute:attribute];
  }

  return v17;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INFindEventsIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INFindEventsIntent *)self _typedBackingStore];
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