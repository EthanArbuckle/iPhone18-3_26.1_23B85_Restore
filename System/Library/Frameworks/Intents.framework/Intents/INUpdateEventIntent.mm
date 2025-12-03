@interface INUpdateEventIntent
- (CLPlacemark)setLocation;
- (INDateComponentsRange)setDateTimeRange;
- (INUpdateEventIntent)initWithTargetEventIdentifier:(id)identifier setTitle:(id)title setDateTimeRange:(id)range setLocation:(id)location addParticipants:(id)participants removeParticipants:(id)removeParticipants updateAllOccurrences:(id)occurrences removeLocation:(id)self0;
- (NSArray)addParticipants;
- (NSArray)removeParticipants;
- (NSNumber)removeLocation;
- (NSNumber)updateAllOccurrences;
- (NSString)setTitle;
- (NSString)targetEventIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAddParticipants:(id)participants;
- (void)setRemoveLocation:(id)location;
- (void)setRemoveParticipants:(id)participants;
- (void)setSetDateTimeRange:(id)range;
- (void)setSetLocation:(id)location;
- (void)setSetTitle:(id)title;
- (void)setTargetEventIdentifier:(id)identifier;
- (void)setUpdateAllOccurrences:(id)occurrences;
@end

@implementation INUpdateEventIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  v15 = idCopy;
  v8 = [_typedBackingStore copy];
  setLocation = [_typedBackingStore setLocation];
  v10 = INIntentSlotValueRedactedLocationFromLocation(setLocation, options, v15);
  [v8 setSetLocation:v10];

  addParticipants = [_typedBackingStore addParticipants];
  v12 = INIntentSlotValueRedactedContactsFromContacts(addParticipants, options, v15);

  [v8 setAddParticipants:v12];
  removeParticipants = [_typedBackingStore removeParticipants];
  v14 = INIntentSlotValueRedactedContactsFromContacts(removeParticipants, options, v15);

  [v8 setRemoveParticipants:v14];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v29[8] = *MEMORY[0x1E69E9840];
  v28[0] = @"targetEventIdentifier";
  targetEventIdentifier = [(INUpdateEventIntent *)self targetEventIdentifier];
  v4 = targetEventIdentifier;
  if (!targetEventIdentifier)
  {
    targetEventIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v25 = targetEventIdentifier;
  v29[0] = targetEventIdentifier;
  v28[1] = @"setTitle";
  setTitle = [(INUpdateEventIntent *)self setTitle];
  v6 = setTitle;
  if (!setTitle)
  {
    setTitle = [MEMORY[0x1E695DFB0] null];
  }

  v24 = setTitle;
  v29[1] = setTitle;
  v28[2] = @"setDateTimeRange";
  setDateTimeRange = [(INUpdateEventIntent *)self setDateTimeRange];
  v8 = setDateTimeRange;
  if (!setDateTimeRange)
  {
    setDateTimeRange = [MEMORY[0x1E695DFB0] null];
  }

  v23 = setDateTimeRange;
  v29[2] = setDateTimeRange;
  v28[3] = @"setLocation";
  setLocation = [(INUpdateEventIntent *)self setLocation];
  v10 = setLocation;
  if (!setLocation)
  {
    setLocation = [MEMORY[0x1E695DFB0] null];
  }

  v22 = setLocation;
  v29[3] = setLocation;
  v28[4] = @"addParticipants";
  addParticipants = [(INUpdateEventIntent *)self addParticipants];
  v12 = addParticipants;
  if (!addParticipants)
  {
    addParticipants = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v21 = addParticipants;
  v29[4] = addParticipants;
  v28[5] = @"removeParticipants";
  removeParticipants = [(INUpdateEventIntent *)self removeParticipants];
  null = removeParticipants;
  if (!removeParticipants)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null;
  v28[6] = @"updateAllOccurrences";
  updateAllOccurrences = [(INUpdateEventIntent *)self updateAllOccurrences];
  null2 = updateAllOccurrences;
  if (!updateAllOccurrences)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = null2;
  v28[7] = @"removeLocation";
  removeLocation = [(INUpdateEventIntent *)self removeLocation];
  null3 = removeLocation;
  if (!removeLocation)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = null3;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
  if (!removeLocation)
  {
  }

  if (!updateAllOccurrences)
  {
  }

  if (!removeParticipants)
  {
  }

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v27)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v26;
}

- (void)setRemoveLocation:(id)location
{
  locationCopy = location;
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  if (locationCopy)
  {
    [_typedBackingStore setRemoveLocation:{objc_msgSend(locationCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasRemoveLocation:0];
  }
}

- (NSNumber)removeLocation
{
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasRemoveLocation])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INUpdateEventIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "removeLocation")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUpdateAllOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  if (occurrencesCopy)
  {
    [_typedBackingStore setUpdateAllOccurrences:{objc_msgSend(occurrencesCopy, "BOOLValue")}];
  }

  else
  {
    [_typedBackingStore setHasUpdateAllOccurrences:0];
  }
}

- (NSNumber)updateAllOccurrences
{
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  if ([_typedBackingStore hasUpdateAllOccurrences])
  {
    v4 = MEMORY[0x1E696AD98];
    _typedBackingStore2 = [(INUpdateEventIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(_typedBackingStore2, "updateAllOccurrences")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setRemoveParticipants:(id)participants
{
  participantsCopy = participants;
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(participantsCopy);

  [_typedBackingStore setRemoveParticipants:v5];
}

- (NSArray)removeParticipants
{
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  removeParticipants = [_typedBackingStore removeParticipants];
  v4 = INIntentSlotValueTransformFromContacts(removeParticipants);

  return v4;
}

- (void)setAddParticipants:(id)participants
{
  participantsCopy = participants;
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(participantsCopy);

  [_typedBackingStore setAddParticipants:v5];
}

- (NSArray)addParticipants
{
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  addParticipants = [_typedBackingStore addParticipants];
  v4 = INIntentSlotValueTransformFromContacts(addParticipants);

  return v4;
}

- (void)setSetLocation:(id)location
{
  locationCopy = location;
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(locationCopy);

  [_typedBackingStore setSetLocation:v5];
}

- (CLPlacemark)setLocation
{
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  setLocation = [_typedBackingStore setLocation];
  v4 = INIntentSlotValueTransformFromLocation(setLocation);

  return v4;
}

- (void)setSetDateTimeRange:(id)range
{
  rangeCopy = range;
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRangeValue(rangeCopy);

  [_typedBackingStore setSetDateTimeRange:v5];
}

- (INDateComponentsRange)setDateTimeRange
{
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  setDateTimeRange = [_typedBackingStore setDateTimeRange];
  v4 = INIntentSlotValueTransformFromDateTimeRangeValue(setDateTimeRange);

  return v4;
}

- (void)setSetTitle:(id)title
{
  titleCopy = title;
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  [_typedBackingStore setSetTitle:titleCopy];
}

- (NSString)setTitle
{
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  setTitle = [_typedBackingStore setTitle];
  v4 = [setTitle copy];

  return v4;
}

- (void)setTargetEventIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  [_typedBackingStore setTargetEventIdentifier:identifierCopy];
}

- (NSString)targetEventIdentifier
{
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  targetEventIdentifier = [_typedBackingStore targetEventIdentifier];
  v4 = [targetEventIdentifier copy];

  return v4;
}

- (INUpdateEventIntent)initWithTargetEventIdentifier:(id)identifier setTitle:(id)title setDateTimeRange:(id)range setLocation:(id)location addParticipants:(id)participants removeParticipants:(id)removeParticipants updateAllOccurrences:(id)occurrences removeLocation:(id)self0
{
  identifierCopy = identifier;
  titleCopy = title;
  rangeCopy = range;
  locationCopy = location;
  participantsCopy = participants;
  removeParticipantsCopy = removeParticipants;
  occurrencesCopy = occurrences;
  removeLocationCopy = removeLocation;
  v27.receiver = self;
  v27.super_class = INUpdateEventIntent;
  v24 = [(INIntent *)&v27 init];
  v25 = v24;
  if (v24)
  {
    [(INUpdateEventIntent *)v24 setTargetEventIdentifier:identifierCopy];
    [(INUpdateEventIntent *)v25 setSetTitle:titleCopy];
    [(INUpdateEventIntent *)v25 setSetDateTimeRange:rangeCopy];
    [(INUpdateEventIntent *)v25 setSetLocation:locationCopy];
    [(INUpdateEventIntent *)v25 setAddParticipants:participantsCopy];
    [(INUpdateEventIntent *)v25 setRemoveParticipants:removeParticipantsCopy];
    [(INUpdateEventIntent *)v25 setUpdateAllOccurrences:occurrencesCopy];
    [(INUpdateEventIntent *)v25 setRemoveLocation:removeLocationCopy];
  }

  return v25;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INUpdateEventIntent *)self _typedBackingStore];
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