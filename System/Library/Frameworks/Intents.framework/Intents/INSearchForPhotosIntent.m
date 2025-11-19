@interface INSearchForPhotosIntent
- (CLPlacemark)locationCreated;
- (INConditionalOperator)peopleInPhotoOperator;
- (INConditionalOperator)searchTermsOperator;
- (INDateComponentsRange)dateCreated;
- (INPhotoAttributeOptions)excludedAttributes;
- (INPhotoAttributeOptions)includedAttributes;
- (INSearchForPhotosIntent)initWithDateCreated:(INDateComponentsRange *)dateCreated locationCreated:(CLPlacemark *)locationCreated albumName:(NSString *)albumName searchTerms:(NSArray *)searchTerms includedAttributes:(INPhotoAttributeOptions)includedAttributes excludedAttributes:(INPhotoAttributeOptions)excludedAttributes peopleInPhoto:(NSArray *)peopleInPhoto;
- (NSArray)activities;
- (NSArray)events;
- (NSArray)geographicalFeatures;
- (NSArray)peopleInPhoto;
- (NSArray)places;
- (NSArray)searchTerms;
- (NSString)albumName;
- (NSString)memoryName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (int64_t)activitiesOperator;
- (int64_t)eventsOperator;
- (int64_t)geographicalFeaturesOperator;
- (int64_t)placesOperator;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4;
- (void)_setMetadata:(id)a3;
- (void)setActivities:(id)a3;
- (void)setAlbumName:(id)a3;
- (void)setDateCreated:(id)a3;
- (void)setEvents:(id)a3;
- (void)setExcludedAttributes:(unint64_t)a3;
- (void)setGeographicalFeatures:(id)a3;
- (void)setIncludedAttributes:(unint64_t)a3;
- (void)setLocationCreated:(id)a3;
- (void)setMemoryName:(id)a3;
- (void)setPeopleInPhoto:(id)a3;
- (void)setPlaces:(id)a3;
- (void)setSearchTerms:(id)a3;
@end

@implementation INSearchForPhotosIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)a3 containingAppBundleId:(id)a4
{
  v6 = a4;
  v7 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v21 = v6;
  v8 = [v7 copy];
  v9 = [v7 dateCreated];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(v9, a3);
  [v8 setDateCreated:v10];

  v11 = [v7 locationCreated];
  v12 = INIntentSlotValueRedactedLocationFromLocation(v11, a3, v21);
  [v8 setLocationCreated:v12];

  v13 = [v7 albumName];
  v14 = INIntentSlotValueRedactedStringFromString(v13, a3, v21);
  [v8 setAlbumName:v14];

  v15 = [v8 searchTerm];
  v16 = [v15 dataStrings];
  v17 = INIntentSlotValueRedactedStringsFromStrings(v16, a3, v21);

  [v15 setDataStrings:v17];
  v18 = [v8 peopleInPhoto];
  v19 = [v18 contacts];
  v20 = INIntentSlotValueRedactedContactsFromContacts(v19, a3, v21);

  [v18 setContacts:v20];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v26[7] = *MEMORY[0x1E69E9840];
  v25[0] = @"dateCreated";
  v3 = [(INSearchForPhotosIntent *)self dateCreated];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v3;
  v26[0] = v3;
  v25[1] = @"locationCreated";
  v5 = [(INSearchForPhotosIntent *)self locationCreated];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v5;
  v26[1] = v5;
  v25[2] = @"albumName";
  v7 = [(INSearchForPhotosIntent *)self albumName];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v7;
  v26[2] = v7;
  v25[3] = @"searchTerms";
  v9 = [(INSearchForPhotosIntent *)self searchTerms];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v26[3] = v9;
  v25[4] = @"includedAttributes";
  v11 = INPhotoAttributeOptionsGetNames([(INSearchForPhotosIntent *)self includedAttributes]);
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v4;
  v26[4] = v12;
  v25[5] = @"excludedAttributes";
  v13 = INPhotoAttributeOptionsGetNames([(INSearchForPhotosIntent *)self excludedAttributes]);
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v14;
  v25[6] = @"peopleInPhoto";
  v15 = [(INSearchForPhotosIntent *)self peopleInPhoto];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (!v15)
  {
  }

  if (!v13)
  {
  }

  if (!v11)
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

  if (!v24)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)setMemoryName:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(v4);

  [v6 setMemoryName:v5];
}

- (NSString)memoryName
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 memoryName];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (void)setGeographicalFeatures:(id)a3
{
  v8 = a3;
  v4 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v5 = [v4 geographicalFeatures];

  if (!v5)
  {
    v5 = objc_alloc_init(_INPBGeographicalFeatureList);
    v6 = [(INSearchForPhotosIntent *)self _typedBackingStore];
    [v6 setGeographicalFeatures:v5];
  }

  v7 = INIntentSlotValueTransformToGeographicalFeatures(v8);
  [(_INPBGeographicalFeatureList *)v5 setGeographicalFeatures:v7];
}

- (int64_t)geographicalFeaturesOperator
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 geographicalFeatures];

  v4 = [v3 condition];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (NSArray)geographicalFeatures
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 geographicalFeatures];

  v4 = [v3 geographicalFeatures];
  v5 = INIntentSlotValueTransformFromGeographicalFeatures(v4);

  return v5;
}

- (void)setActivities:(id)a3
{
  v8 = a3;
  v4 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v5 = [v4 activities];

  if (!v5)
  {
    v5 = objc_alloc_init(_INPBActivityList);
    v6 = [(INSearchForPhotosIntent *)self _typedBackingStore];
    [v6 setActivities:v5];
  }

  v7 = INIntentSlotValueTransformToActivities(v8);
  [(_INPBActivityList *)v5 setActivities:v7];
}

- (int64_t)activitiesOperator
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 activities];

  v4 = [v3 condition];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (NSArray)activities
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 activities];

  v4 = [v3 activities];
  v5 = INIntentSlotValueTransformFromActivities(v4);

  return v5;
}

- (void)setPlaces:(id)a3
{
  v8 = a3;
  v4 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v5 = [v4 places];

  if (!v5)
  {
    v5 = objc_alloc_init(_INPBPlaceList);
    v6 = [(INSearchForPhotosIntent *)self _typedBackingStore];
    [v6 setPlaces:v5];
  }

  v7 = INIntentSlotValueTransformToPlaces(v8);
  [(_INPBPlaceList *)v5 setPlaces:v7];
}

- (int64_t)placesOperator
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 places];

  v4 = [v3 condition];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (NSArray)places
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 places];

  v4 = [v3 places];
  v5 = INIntentSlotValueTransformFromPlaces(v4);

  return v5;
}

- (void)setEvents:(id)a3
{
  v8 = a3;
  v4 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v5 = [v4 events];

  if (!v5)
  {
    v5 = objc_alloc_init(_INPBEventList);
    v6 = [(INSearchForPhotosIntent *)self _typedBackingStore];
    [v6 setEvents:v5];
  }

  v7 = INIntentSlotValueTransformToEvents(v8);
  [(_INPBEventList *)v5 setEvents:v7];
}

- (int64_t)eventsOperator
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 events];

  v4 = [v3 condition];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (NSArray)events
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 events];

  v4 = [v3 events];
  v5 = INIntentSlotValueTransformFromEvents(v4);

  return v5;
}

- (void)setPeopleInPhoto:(id)a3
{
  v8 = a3;
  v4 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v5 = [v4 peopleInPhoto];

  if (!v5)
  {
    v5 = objc_alloc_init(_INPBContactList);
    v6 = [(INSearchForPhotosIntent *)self _typedBackingStore];
    [v6 setPeopleInPhoto:v5];
  }

  v7 = INIntentSlotValueTransformToContacts(v8);
  [(_INPBContactList *)v5 setContacts:v7];
}

- (INConditionalOperator)peopleInPhotoOperator
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 peopleInPhoto];

  v4 = [v3 condition];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (NSArray)peopleInPhoto
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 peopleInPhoto];

  v4 = [v3 contacts];
  v5 = INIntentSlotValueTransformFromContacts(v4);

  return v5;
}

- (void)setExcludedAttributes:(unint64_t)a3
{
  v5 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  [v5 clearExcludedAttributes];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__INSearchForPhotosIntent_setExcludedAttributes___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INPhotoAttributeOptionsEnumerateBackingTypes(a3, v6);
}

void __49__INSearchForPhotosIntent_setExcludedAttributes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addExcludedAttribute:a2];
}

- (INPhotoAttributeOptions)excludedAttributes
{
  v8 = 0;
  v3 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v4 = [v3 excludedAttributesCount];

  if (!v4)
  {
    return 0;
  }

  for (i = 0; i != v4; ++i)
  {
    v6 = [(INSearchForPhotosIntent *)self _typedBackingStore];
    INPhotoAttributeOptionsAddBackingType(&v8, [v6 excludedAttributeAtIndex:i]);
  }

  return v8;
}

- (void)setIncludedAttributes:(unint64_t)a3
{
  v5 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  [v5 clearIncludedAttributes];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__INSearchForPhotosIntent_setIncludedAttributes___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INPhotoAttributeOptionsEnumerateBackingTypes(a3, v6);
}

void __49__INSearchForPhotosIntent_setIncludedAttributes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addIncludedAttribute:a2];
}

- (INPhotoAttributeOptions)includedAttributes
{
  v8 = 0;
  v3 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v4 = [v3 includedAttributesCount];

  if (!v4)
  {
    return 0;
  }

  for (i = 0; i != v4; ++i)
  {
    v6 = [(INSearchForPhotosIntent *)self _typedBackingStore];
    INPhotoAttributeOptionsAddBackingType(&v8, [v6 includedAttributeAtIndex:i]);
  }

  return v8;
}

- (void)setSearchTerms:(id)a3
{
  v8 = a3;
  v4 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v5 = [v4 searchTerm];

  if (!v5)
  {
    v5 = objc_alloc_init(_INPBStringList);
    v6 = [(INSearchForPhotosIntent *)self _typedBackingStore];
    [v6 setSearchTerm:v5];
  }

  v7 = INIntentSlotValueTransformToStrings(v8);
  [(_INPBStringList *)v5 setDataStrings:v7];
}

- (INConditionalOperator)searchTermsOperator
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 searchTerm];

  v4 = [v3 conditionType];
  v5 = INIntentSlotValueTransformFromCondition(v4);

  return v5;
}

- (NSArray)searchTerms
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 searchTerm];

  v4 = [v3 dataStrings];
  v5 = INIntentSlotValueTransformFromStrings(v4);

  return v5;
}

- (void)setAlbumName:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(v4);

  [v6 setAlbumName:v5];
}

- (NSString)albumName
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 albumName];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (void)setLocationCreated:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(v4);

  [v6 setLocationCreated:v5];
}

- (CLPlacemark)locationCreated
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 locationCreated];
  v4 = INIntentSlotValueTransformFromLocation(v3);

  return v4;
}

- (void)setDateCreated:(id)a3
{
  v4 = a3;
  v6 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(v4);

  [v6 setDateCreated:v5];
}

- (INDateComponentsRange)dateCreated
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  v3 = [v2 dateCreated];
  v4 = INIntentSlotValueTransformFromDateTimeRange(v3);

  return v4;
}

- (INSearchForPhotosIntent)initWithDateCreated:(INDateComponentsRange *)dateCreated locationCreated:(CLPlacemark *)locationCreated albumName:(NSString *)albumName searchTerms:(NSArray *)searchTerms includedAttributes:(INPhotoAttributeOptions)includedAttributes excludedAttributes:(INPhotoAttributeOptions)excludedAttributes peopleInPhoto:(NSArray *)peopleInPhoto
{
  v15 = dateCreated;
  v16 = locationCreated;
  v17 = albumName;
  v18 = searchTerms;
  v19 = peopleInPhoto;
  v23.receiver = self;
  v23.super_class = INSearchForPhotosIntent;
  v20 = [(INIntent *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(INSearchForPhotosIntent *)v20 setDateCreated:v15];
    [(INSearchForPhotosIntent *)v21 setLocationCreated:v16];
    [(INSearchForPhotosIntent *)v21 setAlbumName:v17];
    [(INSearchForPhotosIntent *)v21 setSearchTerms:v18];
    [(INSearchForPhotosIntent *)v21 setIncludedAttributes:includedAttributes];
    [(INSearchForPhotosIntent *)v21 setExcludedAttributes:excludedAttributes];
    [(INSearchForPhotosIntent *)v21 setPeopleInPhoto:v19];
  }

  return v21;
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(INSearchForPhotosIntent *)self _typedBackingStore];
  [v5 setIntentMetadata:v4];
}

- (id)_metadata
{
  v2 = [(INSearchForPhotosIntent *)self _typedBackingStore];
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