@interface INUpdateEventIntent
- (CLPlacemark)setLocation;
- (INDateComponentsRange)setDateTimeRange;
- (INUpdateEventIntent)initWithTargetEventIdentifier:(id)a3 setTitle:(id)a4 setDateTimeRange:(id)a5 setLocation:(id)a6 addParticipants:(id)a7 removeParticipants:(id)a8 updateAllOccurrences:(id)a9 removeLocation:(id)a10;
- (NSArray)addParticipants;
- (NSArray)removeParticipants;
- (NSNumber)removeLocation;
- (NSNumber)updateAllOccurrences;
- (NSString)setTitle;
- (NSString)targetEventIdentifier;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setAddParticipants:(id)a3;
- (void)setRemoveLocation:(id)a3;
- (void)setRemoveParticipants:(id)a3;
- (void)setSetDateTimeRange:(id)a3;
- (void)setSetLocation:(id)a3;
- (void)setSetTitle:(id)a3;
- (void)setTargetEventIdentifier:(id)a3;
- (void)setUpdateAllOccurrences:(id)a3;
@end

@implementation INUpdateEventIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INUpdateEventIntent *)self _typedBackingStore];
  v15 = v6;
  v8 = [v7 copy];
  v9 = [v7 setLocation];
  v10 = INIntentSlotValueRedactedLocationFromLocation(v9, a3, v15);
  [v8 setSetLocation:v10];

  v11 = [v7 addParticipants];
  v12 = INIntentSlotValueRedactedContactsFromContacts(v11, a3, v15);

  [v8 setAddParticipants:v12];
  v13 = [v7 removeParticipants];
  v14 = INIntentSlotValueRedactedContactsFromContacts(v13, a3, v15);

  [v8 setRemoveParticipants:v14];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v29[8] = *MEMORY[0x1E69E9840];
  v28[0] = @"targetEventIdentifier";
  v3 = [(INUpdateEventIntent *)self targetEventIdentifier];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v3;
  v29[0] = v3;
  v28[1] = @"setTitle";
  v5 = [(INUpdateEventIntent *)self setTitle];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v5;
  v29[1] = v5;
  v28[2] = @"setDateTimeRange";
  v7 = [(INUpdateEventIntent *)self setDateTimeRange];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v7;
  v29[2] = v7;
  v28[3] = @"setLocation";
  v9 = [(INUpdateEventIntent *)self setLocation];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v9;
  v29[3] = v9;
  v28[4] = @"addParticipants";
  v11 = [(INUpdateEventIntent *)self addParticipants];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v21 = v11;
  v29[4] = v11;
  v28[5] = @"removeParticipants";
  v13 = [(INUpdateEventIntent *)self removeParticipants];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = v14;
  v28[6] = @"updateAllOccurrences";
  v15 = [(INUpdateEventIntent *)self updateAllOccurrences];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = v16;
  v28[7] = @"removeLocation";
  v17 = [(INUpdateEventIntent *)self removeLocation];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = v18;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
  if (!v17)
  {
  }

  if (!v15)
  {
  }

  if (!v13)
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

- (void)setRemoveLocation:(id)a3
{
  v5 = a3;
  v4 = [(INUpdateEventIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setRemoveLocation:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasRemoveLocation:0];
  }
}

- (NSNumber)removeLocation
{
  v3 = [(INUpdateEventIntent *)self _typedBackingStore];
  if ([v3 hasRemoveLocation])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INUpdateEventIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "removeLocation")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUpdateAllOccurrences:(id)a3
{
  v5 = a3;
  v4 = [(INUpdateEventIntent *)self _typedBackingStore];
  if (v5)
  {
    [v4 setUpdateAllOccurrences:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasUpdateAllOccurrences:0];
  }
}

- (NSNumber)updateAllOccurrences
{
  v3 = [(INUpdateEventIntent *)self _typedBackingStore];
  if ([v3 hasUpdateAllOccurrences])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INUpdateEventIntent *)self _typedBackingStore];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "updateAllOccurrences")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setRemoveParticipants:(id)a3
{
  v4 = a3;
  v6 = [(INUpdateEventIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(v4);

  [v6 setRemoveParticipants:v5];
}

- (NSArray)removeParticipants
{
  v2 = [(INUpdateEventIntent *)self _typedBackingStore];
  v3 = [v2 removeParticipants];
  v4 = INIntentSlotValueTransformFromContacts(v3);

  return v4;
}

- (void)setAddParticipants:(id)a3
{
  v4 = a3;
  v6 = [(INUpdateEventIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToContacts(v4);

  [v6 setAddParticipants:v5];
}

- (NSArray)addParticipants
{
  v2 = [(INUpdateEventIntent *)self _typedBackingStore];
  v3 = [v2 addParticipants];
  v4 = INIntentSlotValueTransformFromContacts(v3);

  return v4;
}

- (void)setSetLocation:(id)a3
{
  v4 = a3;
  v6 = [(INUpdateEventIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(v4);

  [v6 setSetLocation:v5];
}

- (CLPlacemark)setLocation
{
  v2 = [(INUpdateEventIntent *)self _typedBackingStore];
  v3 = [v2 setLocation];
  v4 = INIntentSlotValueTransformFromLocation(v3);

  return v4;
}

- (void)setSetDateTimeRange:(id)a3
{
  v4 = a3;
  v6 = [(INUpdateEventIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRangeValue(v4);

  [v6 setSetDateTimeRange:v5];
}

- (INDateComponentsRange)setDateTimeRange
{
  v2 = [(INUpdateEventIntent *)self _typedBackingStore];
  v3 = [v2 setDateTimeRange];
  v4 = INIntentSlotValueTransformFromDateTimeRangeValue(v3);

  return v4;
}

- (void)setSetTitle:(id)a3
{
  v4 = a3;
  v5 = [(INUpdateEventIntent *)self _typedBackingStore];
  [v5 setSetTitle:v4];
}

- (NSString)setTitle
{
  v2 = [(INUpdateEventIntent *)self _typedBackingStore];
  v3 = [v2 setTitle];
  v4 = [v3 copy];

  return v4;
}

- (void)setTargetEventIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INUpdateEventIntent *)self _typedBackingStore];
  [v5 setTargetEventIdentifier:v4];
}

- (NSString)targetEventIdentifier
{
  v2 = [(INUpdateEventIntent *)self _typedBackingStore];
  v3 = [v2 targetEventIdentifier];
  v4 = [v3 copy];

  return v4;
}

- (INUpdateEventIntent)initWithTargetEventIdentifier:(id)a3 setTitle:(id)a4 setDateTimeRange:(id)a5 setLocation:(id)a6 addParticipants:(id)a7 removeParticipants:(id)a8 updateAllOccurrences:(id)a9 removeLocation:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v27.receiver = self;
  v27.super_class = INUpdateEventIntent;
  v24 = [(INIntent *)&v27 init];
  v25 = v24;
  if (v24)
  {
    [(INUpdateEventIntent *)v24 setTargetEventIdentifier:v16];
    [(INUpdateEventIntent *)v25 setSetTitle:v17];
    [(INUpdateEventIntent *)v25 setSetDateTimeRange:v18];
    [(INUpdateEventIntent *)v25 setSetLocation:v19];
    [(INUpdateEventIntent *)v25 setAddParticipants:v20];
    [(INUpdateEventIntent *)v25 setRemoveParticipants:v21];
    [(INUpdateEventIntent *)v25 setUpdateAllOccurrences:v22];
    [(INUpdateEventIntent *)v25 setRemoveLocation:v23];
  }

  return v25;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INUpdateEventIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INUpdateEventIntent *)self _typedBackingStore];
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