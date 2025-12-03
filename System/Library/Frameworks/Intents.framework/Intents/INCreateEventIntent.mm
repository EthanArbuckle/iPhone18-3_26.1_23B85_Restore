@interface INCreateEventIntent
- (CLPlacemark)location;
- (INCreateEventIntent)initWithTitle:(id)title dateTimeRange:(id)range participants:(id)participants location:(id)location;
- (INDateComponentsRange)dateTimeRange;
- (NSArray)participants;
- (NSString)title;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setDateTimeRange:(id)range;
- (void)setLocation:(id)location;
- (void)setParticipants:(id)participants;
- (void)setTitle:(id)title;
@end

@implementation INCreateEventIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INCreateEventIntent *)self _typedBackingStore];
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
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"title";
  title = [(INCreateEventIntent *)self title];
  null = title;
  if (!title)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"dateTimeRange";
  dateTimeRange = [(INCreateEventIntent *)self dateTimeRange];
  null2 = dateTimeRange;
  if (!dateTimeRange)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"participants";
  participants = [(INCreateEventIntent *)self participants];
  null3 = participants;
  if (!participants)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"location";
  location = [(INCreateEventIntent *)self location];
  null4 = location;
  if (!location)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (!location)
  {
  }

  if (!participants)
  {
  }

  if (!dateTimeRange)
  {
  }

  if (!title)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  _typedBackingStore = [(INCreateEventIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(locationCopy);

  [_typedBackingStore setLocation:v5];
}

- (CLPlacemark)location
{
  _typedBackingStore = [(INCreateEventIntent *)self _typedBackingStore];
  location = [_typedBackingStore location];
  v4 = INIntentSlotValueTransformFromLocation(location);

  return v4;
}

- (void)setParticipants:(id)participants
{
  participantsCopy = participants;
  _typedBackingStore = [(INCreateEventIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(participantsCopy);

  [_typedBackingStore setParticipants:v5];
}

- (NSArray)participants
{
  _typedBackingStore = [(INCreateEventIntent *)self _typedBackingStore];
  participants = [_typedBackingStore participants];
  v4 = INIntentSlotValueTransformFromContacts(participants);

  return v4;
}

- (void)setDateTimeRange:(id)range
{
  rangeCopy = range;
  _typedBackingStore = [(INCreateEventIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRangeValue(rangeCopy);

  [_typedBackingStore setDateTimeRange:v5];
}

- (INDateComponentsRange)dateTimeRange
{
  _typedBackingStore = [(INCreateEventIntent *)self _typedBackingStore];
  dateTimeRange = [_typedBackingStore dateTimeRange];
  v4 = INIntentSlotValueTransformFromDateTimeRangeValue(dateTimeRange);

  return v4;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  _typedBackingStore = [(INCreateEventIntent *)self _typedBackingStore];
  [_typedBackingStore setTitle:titleCopy];
}

- (NSString)title
{
  _typedBackingStore = [(INCreateEventIntent *)self _typedBackingStore];
  title = [_typedBackingStore title];
  v4 = [title copy];

  return v4;
}

- (INCreateEventIntent)initWithTitle:(id)title dateTimeRange:(id)range participants:(id)participants location:(id)location
{
  titleCopy = title;
  rangeCopy = range;
  participantsCopy = participants;
  locationCopy = location;
  v17.receiver = self;
  v17.super_class = INCreateEventIntent;
  v14 = [(INIntent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(INCreateEventIntent *)v14 setTitle:titleCopy];
    [(INCreateEventIntent *)v15 setDateTimeRange:rangeCopy];
    [(INCreateEventIntent *)v15 setParticipants:participantsCopy];
    [(INCreateEventIntent *)v15 setLocation:locationCopy];
  }

  return v15;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INCreateEventIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INCreateEventIntent *)self _typedBackingStore];
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