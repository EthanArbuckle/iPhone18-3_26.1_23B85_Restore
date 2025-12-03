@interface INStartPhotoPlaybackIntent
- (CLPlacemark)locationCreated;
- (INConditionalOperator)peopleInPhotoOperator;
- (INConditionalOperator)searchTermsOperator;
- (INDateComponentsRange)dateCreated;
- (INPhotoAttributeOptions)excludedAttributes;
- (INPhotoAttributeOptions)includedAttributes;
- (INStartPhotoPlaybackIntent)initWithDateCreated:(INDateComponentsRange *)dateCreated locationCreated:(CLPlacemark *)locationCreated albumName:(NSString *)albumName searchTerms:(NSArray *)searchTerms includedAttributes:(INPhotoAttributeOptions)includedAttributes excludedAttributes:(INPhotoAttributeOptions)excludedAttributes peopleInPhoto:(NSArray *)peopleInPhoto;
- (NSArray)peopleInPhoto;
- (NSArray)searchTerms;
- (NSString)albumName;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setAlbumName:(id)name;
- (void)setDateCreated:(id)created;
- (void)setExcludedAttributes:(unint64_t)attributes;
- (void)setIncludedAttributes:(unint64_t)attributes;
- (void)setLocationCreated:(id)created;
- (void)setPeopleInPhoto:(id)photo;
- (void)setSearchTerms:(id)terms;
@end

@implementation INStartPhotoPlaybackIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  idCopy = id;
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  v21 = idCopy;
  v8 = [_typedBackingStore copy];
  dateCreated = [_typedBackingStore dateCreated];
  v10 = INIntentSlotValueRedactedDateTimeRangeFromDateTimeRange(dateCreated, options);
  [v8 setDateCreated:v10];

  locationCreated = [_typedBackingStore locationCreated];
  v12 = INIntentSlotValueRedactedLocationFromLocation(locationCreated, options, v21);
  [v8 setLocationCreated:v12];

  albumName = [_typedBackingStore albumName];
  v14 = INIntentSlotValueRedactedStringFromString(albumName, options, v21);
  [v8 setAlbumName:v14];

  searchTerm = [v8 searchTerm];
  dataStrings = [searchTerm dataStrings];
  v17 = INIntentSlotValueRedactedStringsFromStrings(dataStrings, options, v21);

  [searchTerm setDataStrings:v17];
  peopleInPhoto = [v8 peopleInPhoto];
  contacts = [peopleInPhoto contacts];
  v20 = INIntentSlotValueRedactedContactsFromContacts(contacts, options, v21);

  [peopleInPhoto setContacts:v20];
  [(INIntent *)self setBackingStore:v8];
}

- (id)_dictionaryRepresentation
{
  v26[7] = *MEMORY[0x1E69E9840];
  v25[0] = @"dateCreated";
  dateCreated = [(INStartPhotoPlaybackIntent *)self dateCreated];
  v4 = dateCreated;
  if (!dateCreated)
  {
    dateCreated = [MEMORY[0x1E695DFB0] null];
  }

  v23 = dateCreated;
  v26[0] = dateCreated;
  v25[1] = @"locationCreated";
  locationCreated = [(INStartPhotoPlaybackIntent *)self locationCreated];
  v6 = locationCreated;
  if (!locationCreated)
  {
    locationCreated = [MEMORY[0x1E695DFB0] null];
  }

  v22 = locationCreated;
  v26[1] = locationCreated;
  v25[2] = @"albumName";
  albumName = [(INStartPhotoPlaybackIntent *)self albumName];
  v8 = albumName;
  if (!albumName)
  {
    albumName = [MEMORY[0x1E695DFB0] null];
  }

  v21 = albumName;
  v26[2] = albumName;
  v25[3] = @"searchTerms";
  searchTerms = [(INStartPhotoPlaybackIntent *)self searchTerms];
  v10 = searchTerms;
  if (!searchTerms)
  {
    searchTerms = [MEMORY[0x1E695DFB0] null];
  }

  v20 = searchTerms;
  v26[3] = searchTerms;
  v25[4] = @"includedAttributes";
  v11 = INPhotoAttributeOptionsGetNames([(INStartPhotoPlaybackIntent *)self includedAttributes]);
  null = v11;
  if (!v11)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v4;
  v26[4] = null;
  v25[5] = @"excludedAttributes";
  v13 = INPhotoAttributeOptionsGetNames([(INStartPhotoPlaybackIntent *)self excludedAttributes]);
  null2 = v13;
  if (!v13)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null2;
  v25[6] = @"peopleInPhoto";
  peopleInPhoto = [(INStartPhotoPlaybackIntent *)self peopleInPhoto];
  null3 = peopleInPhoto;
  if (!peopleInPhoto)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null3;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (!peopleInPhoto)
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

- (void)setPeopleInPhoto:(id)photo
{
  photoCopy = photo;
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  peopleInPhoto = [_typedBackingStore peopleInPhoto];

  if (!peopleInPhoto)
  {
    peopleInPhoto = objc_alloc_init(_INPBContactList);
    _typedBackingStore2 = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
    [_typedBackingStore2 setPeopleInPhoto:peopleInPhoto];
  }

  v7 = INIntentSlotValueTransformToContacts(photoCopy);
  [(_INPBContactList *)peopleInPhoto setContacts:v7];
}

- (INConditionalOperator)peopleInPhotoOperator
{
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  peopleInPhoto = [_typedBackingStore peopleInPhoto];

  condition = [peopleInPhoto condition];
  v5 = INIntentSlotValueTransformFromCondition(condition);

  return v5;
}

- (NSArray)peopleInPhoto
{
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  peopleInPhoto = [_typedBackingStore peopleInPhoto];

  contacts = [peopleInPhoto contacts];
  v5 = INIntentSlotValueTransformFromContacts(contacts);

  return v5;
}

- (void)setExcludedAttributes:(unint64_t)attributes
{
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  [_typedBackingStore clearExcludedAttributes];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__INStartPhotoPlaybackIntent_setExcludedAttributes___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INPhotoAttributeOptionsEnumerateBackingTypes(attributes, v6);
}

void __52__INStartPhotoPlaybackIntent_setExcludedAttributes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addExcludedAttribute:a2];
}

- (INPhotoAttributeOptions)excludedAttributes
{
  v8 = 0;
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  excludedAttributesCount = [_typedBackingStore excludedAttributesCount];

  if (!excludedAttributesCount)
  {
    return 0;
  }

  for (i = 0; i != excludedAttributesCount; ++i)
  {
    _typedBackingStore2 = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
    INPhotoAttributeOptionsAddBackingType(&v8, [_typedBackingStore2 excludedAttributeAtIndex:i]);
  }

  return v8;
}

- (void)setIncludedAttributes:(unint64_t)attributes
{
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  [_typedBackingStore clearIncludedAttributes];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__INStartPhotoPlaybackIntent_setIncludedAttributes___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INPhotoAttributeOptionsEnumerateBackingTypes(attributes, v6);
}

void __52__INStartPhotoPlaybackIntent_setIncludedAttributes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _typedBackingStore];
  [v3 addIncludedAttribute:a2];
}

- (INPhotoAttributeOptions)includedAttributes
{
  v8 = 0;
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  includedAttributesCount = [_typedBackingStore includedAttributesCount];

  if (!includedAttributesCount)
  {
    return 0;
  }

  for (i = 0; i != includedAttributesCount; ++i)
  {
    _typedBackingStore2 = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
    INPhotoAttributeOptionsAddBackingType(&v8, [_typedBackingStore2 includedAttributeAtIndex:i]);
  }

  return v8;
}

- (void)setSearchTerms:(id)terms
{
  termsCopy = terms;
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  searchTerm = [_typedBackingStore searchTerm];

  if (!searchTerm)
  {
    searchTerm = objc_alloc_init(_INPBStringList);
    _typedBackingStore2 = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
    [_typedBackingStore2 setSearchTerm:searchTerm];
  }

  v7 = INIntentSlotValueTransformToStrings(termsCopy);
  [(_INPBStringList *)searchTerm setDataStrings:v7];
}

- (INConditionalOperator)searchTermsOperator
{
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  searchTerm = [_typedBackingStore searchTerm];

  conditionType = [searchTerm conditionType];
  v5 = INIntentSlotValueTransformFromCondition(conditionType);

  return v5;
}

- (NSArray)searchTerms
{
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  searchTerm = [_typedBackingStore searchTerm];

  dataStrings = [searchTerm dataStrings];
  v5 = INIntentSlotValueTransformFromStrings(dataStrings);

  return v5;
}

- (void)setAlbumName:(id)name
{
  nameCopy = name;
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToString(nameCopy);

  [_typedBackingStore setAlbumName:v5];
}

- (NSString)albumName
{
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  albumName = [_typedBackingStore albumName];
  v4 = INIntentSlotValueTransformFromString(albumName);

  return v4;
}

- (void)setLocationCreated:(id)created
{
  createdCopy = created;
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToLocation(createdCopy);

  [_typedBackingStore setLocationCreated:v5];
}

- (CLPlacemark)locationCreated
{
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  locationCreated = [_typedBackingStore locationCreated];
  v4 = INIntentSlotValueTransformFromLocation(locationCreated);

  return v4;
}

- (void)setDateCreated:(id)created
{
  createdCopy = created;
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  v5 = INIntentSlotValueTransformToDateTimeRange(createdCopy);

  [_typedBackingStore setDateCreated:v5];
}

- (INDateComponentsRange)dateCreated
{
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  dateCreated = [_typedBackingStore dateCreated];
  v4 = INIntentSlotValueTransformFromDateTimeRange(dateCreated);

  return v4;
}

- (INStartPhotoPlaybackIntent)initWithDateCreated:(INDateComponentsRange *)dateCreated locationCreated:(CLPlacemark *)locationCreated albumName:(NSString *)albumName searchTerms:(NSArray *)searchTerms includedAttributes:(INPhotoAttributeOptions)includedAttributes excludedAttributes:(INPhotoAttributeOptions)excludedAttributes peopleInPhoto:(NSArray *)peopleInPhoto
{
  v15 = dateCreated;
  v16 = locationCreated;
  v17 = albumName;
  v18 = searchTerms;
  v19 = peopleInPhoto;
  v23.receiver = self;
  v23.super_class = INStartPhotoPlaybackIntent;
  v20 = [(INIntent *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(INStartPhotoPlaybackIntent *)v20 setDateCreated:v15];
    [(INStartPhotoPlaybackIntent *)v21 setLocationCreated:v16];
    [(INStartPhotoPlaybackIntent *)v21 setAlbumName:v17];
    [(INStartPhotoPlaybackIntent *)v21 setSearchTerms:v18];
    [(INStartPhotoPlaybackIntent *)v21 setIncludedAttributes:includedAttributes];
    [(INStartPhotoPlaybackIntent *)v21 setExcludedAttributes:excludedAttributes];
    [(INStartPhotoPlaybackIntent *)v21 setPeopleInPhoto:v19];
  }

  return v21;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INStartPhotoPlaybackIntent *)self _typedBackingStore];
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