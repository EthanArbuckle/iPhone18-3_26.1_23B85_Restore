@interface PHPerson
+ (Class)propertySetClassForPropertySet:(id)set;
+ (id)_assetLocalIdentifiersForAssetCollection:(id)collection;
+ (id)_composePropertiesToFetchWithHint:(unint64_t)hint;
+ (id)_convertToPersonSuggestion:(id)suggestion photoLibrary:(id)library;
+ (id)_fetchSuggestedPersonsForClient:(unint64_t)client options:(id)options;
+ (id)_fetchSuggestedPersonsForRecipients:(id)recipients options:(id)options photoLibrary:(id)library;
+ (id)_fetchSuggestedRecipientsForFocusedAssetCollection:(id)collection assetCollection:(id)assetCollection options:(id)options client:(unint64_t)client;
+ (id)_momentLocalIdentifiersForAssetCollection:(id)collection;
+ (id)_packageSuggestionList:(id)list photoLibrary:(id)library;
+ (id)_personSuggestionMarkedAsConfirmed:(BOOL)confirmed fromPersonSuggestion:(id)suggestion;
+ (id)_requestSuggestedPersonsForClient:(unint64_t)client options:(id)options;
+ (id)batchFetchRelationshipInferencesForPersons:(id)persons;
+ (id)batchFetchSuggestedRecipientsForAssets:(id)assets options:(id)options;
+ (id)corePropertiesToFetch;
+ (id)entityKeyMap;
+ (id)fetchAssociatedPersonsGroupedByFaceGroupLocalIdentifierForFaceGroups:(id)groups options:(id)options;
+ (id)fetchFinalMergeTargetPersonsForPersonWithUUID:(id)d options:(id)options;
+ (id)fetchInvalidMergeCandidatePersonsForPerson:(id)person options:(id)options;
+ (id)fetchMergeCandidatePersonsForPerson:(id)person options:(id)options;
+ (id)fetchMergeCandidateWithConfidencePersonsForPerson:(id)person options:(id)options;
+ (id)fetchPersonAssociatedWithFaceGroup:(id)group options:(id)options;
+ (id)fetchPersonCountGroupedByAssetLocalIdentifierForAssets:(id)assets options:(id)options;
+ (id)fetchPersonForFaceCrop:(id)crop options:(id)options;
+ (id)fetchPersonForShareParticipant:(id)participant options:(id)options;
+ (id)fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:(id)ds options:(id)options;
+ (id)fetchPersonWithFace:(id)face options:(id)options;
+ (id)fetchPersonsForAssetCollection:(id)collection options:(id)options;
+ (id)fetchPersonsForContactIdentifiers:(id)identifiers options:(id)options;
+ (id)fetchPersonsForContacts:(id)contacts options:(id)options;
+ (id)fetchPersonsForReferences:(id)references photoLibrary:(id)library;
+ (id)fetchPersonsGroupedByAssetLocalIdentifierForAssets:(id)assets options:(id)options;
+ (id)fetchPersonsInAsset:(id)asset options:(id)options;
+ (id)fetchPersonsInAssets:(id)assets options:(id)options;
+ (id)fetchPersonsInAssetsFetchResult:(id)result options:(id)options;
+ (id)fetchPersonsInSocialGroup:(id)group option:(id)option;
+ (id)fetchPersonsThroughAssetPersonEdgesForAsset:(id)asset options:(id)options;
+ (id)fetchPersonsWithFaces:(id)faces options:(id)options;
+ (id)fetchPersonsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)fetchPersonsWithMdIDs:(id)ds options:(id)options;
+ (id)fetchPersonsWithObjectIDs:(id)ds options:(id)options;
+ (id)fetchPersonsWithQuestionType:(unsigned __int16)type options:(id)options;
+ (id)fetchPersonsWithType:(int64_t)type options:(id)options;
+ (id)fetchPredicateFromComparisonPredicate:(id)predicate options:(id)options;
+ (id)fetchRejectedPersonsForFace:(id)face options:(id)options;
+ (id)fetchSuggestedPersonsForAssetCollection:(id)collection options:(id)options;
+ (id)fetchSuggestedPersonsForClient:(unint64_t)client options:(id)options;
+ (id)fetchSuggestedPersonsForFocusedAssetCollection:(id)collection options:(id)options;
+ (id)fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:(id)ds options:(id)options;
+ (id)identifierPropertiesToFetch;
+ (id)momentCountsByPersonUUIDForPersonsWithUUIDs:(id)ds afterDate:(id)date photoLibrary:(id)library;
+ (id)personSuggestionsForPerson:(id)person confirmedPersonSuggestions:(id)suggestions rejectedPersonSuggestions:(id)personSuggestions;
+ (id)personToKeepForCloudConsistencyFromPersons:(id)persons;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
+ (id)propertySetAccessorsByPropertySet;
+ (id)propertySetsForPropertyFetchHints:(unint64_t)hints;
+ (id)transformValueExpression:(id)expression forKeyPath:(id)path;
+ (int64_t)_personSuggestionsForPerson:(id)person confirmedPersonSuggestions:(id)suggestions rejectedPersonSuggestions:(id)personSuggestions fromClient:(id)client completion:(id)completion;
+ (int64_t)personSuggestionsForPerson:(id)person confirmedPersonSuggestions:(id)suggestions rejectedPersonSuggestions:(id)personSuggestions completion:(id)completion;
+ (int64_t)updateKeyFacesOfPersons:(id)persons forceUpdate:(BOOL)update completion:(id)completion;
+ (unint64_t)propertyFetchHintsForPropertySets:(id)sets;
- (PHPerson)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
- (id)_createPropertyObjectOfClass:(Class)class preFetchedProperties:(id)properties;
- (id)debugDescription;
- (id)description;
- (id)linkedContactWithKeysToFetch:(id)fetch;
- (id)userFeedbackProperties;
- (void)markAsNeedingKeyFace;
@end

@implementation PHPerson

- (id)userFeedbackProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:4];
  v3 = objc_opt_class();

  return [(PHPerson *)self _createPropertyObjectOfClass:v3];
}

- (id)_createPropertyObjectOfClass:(Class)class preFetchedProperties:(id)properties
{
  propertiesCopy = properties;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__28433;
  v46 = __Block_byref_object_dispose__28434;
  v47 = ph_objc_getAssociatedObject(self, class);
  v7 = v43[5];
  if (!v7)
  {
    keyPathToPrimaryObject = [(objc_class *)class keyPathToPrimaryObject];
    if (propertiesCopy)
    {
      v9 = [[class alloc] initWithFetchDictionary:propertiesCopy person:self prefetched:1];
      v10 = v43[5];
      v43[5] = v9;
    }

    else
    {
      entityName = [(objc_class *)class entityName];
      v12 = entityName;
      v13 = @"Person";
      if (entityName)
      {
        v13 = entityName;
      }

      v14 = v13;

      v15 = MEMORY[0x1E696AE18];
      objectID = [(PHObject *)self objectID];
      if (keyPathToPrimaryObject)
      {
        [v15 predicateWithFormat:@"%K == %@", keyPathToPrimaryObject, objectID];
      }

      else
      {
        [v15 predicateWithFormat:@"self == %@", objectID];
      }
      v17 = ;

      propertiesToFetch = [(objc_class *)class propertiesToFetch];
      if (objc_opt_respondsToSelector())
      {
        propertiesToSortBy = [(objc_class *)class propertiesToSortBy];
        v19 = v17;
        v20 = v14;
      }

      else
      {
        v19 = v17;
        v20 = v14;
        propertiesToSortBy = 0;
      }

      photoLibrary = [(PHObject *)self photoLibrary];
      propertySetName = [(objc_class *)class propertySetName];
      v23 = [photoLibrary objectFetchingManagedObjectContextForObject:self propertySet:propertySetName];

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __62__PHPerson__createPropertyObjectOfClass_preFetchedProperties___block_invoke;
      v33[3] = &unk_1E75A7D08;
      v10 = v20;
      v34 = v10;
      v24 = v19;
      v35 = v24;
      v25 = propertiesToFetch;
      v36 = v25;
      v26 = propertiesToSortBy;
      v37 = v26;
      v27 = v23;
      v38 = v27;
      selfCopy = self;
      v40 = &v42;
      classCopy = class;
      [v27 performBlockAndWait:v33];
    }

    v28 = ph_objc_setAssociatedObjectIfNotSet(self, class, v43[5]);
    v29 = v43[5];
    v43[5] = v28;

    v7 = v43[5];
  }

  v30 = v7;
  _Block_object_dispose(&v42, 8);

  return v30;
}

void __62__PHPerson__createPropertyObjectOfClass_preFetchedProperties___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*(a1 + 32)];
  [v2 setPredicate:*(a1 + 40)];
  [v2 setPropertiesToFetch:*(a1 + 48)];
  [v2 setResultType:2];
  if ([*(a1 + 56) count])
  {
    [v2 setSortDescriptors:*(a1 + 56)];
  }

  v3 = *(a1 + 64);
  v13 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v13];
  v5 = v13;
  if (!v4)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 88) description];
      v8 = [*(a1 + 72) uuid];
      *buf = 138412802;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Failed to fetch property set %@ data for %@: %@", buf, 0x20u);
    }

    goto LABEL_11;
  }

  if ([*(a1 + 88) isToMany])
  {
    v14 = @"fetchedResults";
    v15 = v4;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  }

  else
  {
    [v4 firstObject];
  }
  v9 = ;
  if (!v9)
  {
LABEL_11:
    v9 = MEMORY[0x1E695E0F8];
  }

  v10 = [objc_alloc(*(a1 + 88)) initWithFetchDictionary:v9 person:*(a1 + 72) prefetched:0];
  v11 = *(*(a1 + 80) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)debugDescription
{
  v15.receiver = self;
  v15.super_class = PHPerson;
  v3 = [(PHObject *)&v15 description];
  name = [(PHPerson *)self name];
  displayName = [(PHPerson *)self displayName];
  uuid = [(PHObject *)self uuid];
  type = [(PHPerson *)self type];
  detectionType = [(PHPerson *)self detectionType];
  manualOrder = [(PHPerson *)self manualOrder];
  [(PHPerson *)self mergeCandidateConfidence];
  v10 = v9;
  personUri = [(PHPerson *)self personUri];
  v12 = [v3 stringByAppendingFormat:@" name=%@, displayName=%@, identifier=%@, type=%d, detectionType=%d, manualOrder=%d, mergeCandidateConfidence=%lf, personUri=%@, inPersonNamingModel=%d, faceCount=%d, verified=%d", name, displayName, uuid, type, detectionType, manualOrder, v10, personUri, -[PHPerson isInPersonNamingModel](self, "isInPersonNamingModel"), -[PHPerson faceCount](self, "faceCount"), -[PHPerson isVerified](self, "isVerified")];

  return v12;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PHPerson;
  v2 = [(PHObject *)&v4 description];

  return v2;
}

- (id)linkedContactWithKeysToFetch:(id)fetch
{
  fetchCopy = fetch;
  photoLibrary = [(PHObject *)self photoLibrary];
  sharedContactStore = [objc_opt_class() sharedContactStore];

  personUri = [(PHPerson *)self personUri];
  v8 = [sharedContactStore unifiedContactWithIdentifier:personUri keysToFetch:fetchCopy error:0];

  if (!v8)
  {
    v8 = [MEMORY[0x1E69BE380] contactWithMatchingDictionary:self->_contactMatchingDictionary keysToFetch:fetchCopy contactStore:sharedContactStore];
  }

  return v8;
}

- (void)markAsNeedingKeyFace
{
  photoLibrary = [(PHObject *)self photoLibrary];
  assetsdClient = [photoLibrary assetsdClient];
  libraryInternalClient = [assetsdClient libraryInternalClient];
  uuid = [(PHObject *)self uuid];
  [libraryInternalClient markPersonAsNeedingKeyFace:uuid completionHandler:&__block_literal_global_291];
}

void __32__PHPerson_markAsNeedingKeyFace__block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_ERROR, "Error marking person as needing key face: %@", &v6, 0xCu);
    }
  }
}

- (PHPerson)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  v42.receiver = self;
  v42.super_class = PHPerson;
  v9 = [(PHObject *)&v42 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:library];
  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"fullName"];
    name = v9->_name;
    v9->_name = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
    displayName = v9->_displayName;
    v9->_displayName = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"personUUID"];
    uuid = v9->super._uuid;
    v9->super._uuid = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"detectionType"];
    v9->_detectionType = [v16 integerValue];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v9->_type = [v17 integerValue];

    v18 = [dictionaryCopy objectForKeyedSubscript:@"manualOrder"];
    v9->_manualOrder = [v18 integerValue];

    v19 = [dictionaryCopy objectForKeyedSubscript:@"mergeCandidateConfidence"];
    [v19 doubleValue];
    v9->_mergeCandidateConfidence = v20;

    v21 = [dictionaryCopy objectForKeyedSubscript:@"personUri"];
    personUri = v9->_personUri;
    v9->_personUri = v21;

    v23 = [dictionaryCopy objectForKeyedSubscript:@"inPersonNamingModel"];
    v9->_inPersonNamingModel = [v23 BOOLValue];

    v24 = [dictionaryCopy objectForKeyedSubscript:@"faceCount"];
    v9->_faceCount = [v24 integerValue];

    v25 = [dictionaryCopy objectForKeyedSubscript:@"verifiedType"];
    v9->_verifiedType = [v25 integerValue];

    v26 = [dictionaryCopy objectForKeyedSubscript:@"questionType"];
    v9->_questionType = [v26 integerValue];

    v27 = [dictionaryCopy objectForKeyedSubscript:@"ageType"];
    v9->_ageType = [v27 integerValue];

    v28 = [dictionaryCopy objectForKeyedSubscript:@"genderType"];
    v9->_genderType = [v28 integerValue];

    v29 = [dictionaryCopy objectForKeyedSubscript:@"genderType"];
    v9->_sexType = [v29 integerValue];

    v30 = [dictionaryCopy objectForKeyedSubscript:@"assetSortOrder"];
    v9->_assetSortOrder = [v30 integerValue];

    v31 = [dictionaryCopy objectForKeyedSubscript:@"contactMatchingDictionary"];
    contactMatchingDictionary = v9->_contactMatchingDictionary;
    v9->_contactMatchingDictionary = v31;

    v33 = [dictionaryCopy objectForKeyedSubscript:@"keyFacePickSource"];
    v9->_keyFacePickSource = [v33 integerValue];

    v34 = [dictionaryCopy objectForKeyedSubscript:@"isMeConfidence"];
    [v34 doubleValue];
    v9->_isMeConfidence = v35;

    v36 = [dictionaryCopy objectForKeyedSubscript:@"suggestedForClientType"];
    integerValue = [v36 integerValue];

    if (integerValue == 1)
    {
      v38 = integerValue;
    }

    else
    {
      if (integerValue)
      {
LABEL_7:
        v39 = [dictionaryCopy objectForKeyedSubscript:@"mdID"];
        mdID = v9->_mdID;
        v9->_mdID = v39;

        goto LABEL_8;
      }

      v38 = 0;
    }

    v9->_persistedSuggestionForClient = v38;
    goto LABEL_7;
  }

LABEL_8:

  return v9;
}

+ (id)propertySetsForPropertyFetchHints:(unint64_t)hints
{
  hintsCopy = hints;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [@"PHPersonPropertySetIdentifier" length];
  if ((hintsCopy & 1) != 0 && v5)
  {
    [v4 addObject:@"PHPersonPropertySetIdentifier"];
  }

  v6 = [@"PHPersonPropertySetCore" length];
  if ((hintsCopy & 2) != 0 && v6)
  {
    [v4 addObject:@"PHPersonPropertySetCore"];
  }

  v7 = [@"PHPersonPropertySetUserFeedback" length];
  if ((hintsCopy & 4) != 0 && v7)
  {
    [v4 addObject:@"PHPersonPropertySetUserFeedback"];
  }

  v8 = [MEMORY[0x1E695DFD8] setWithSet:v4];

  return v8;
}

+ (unint64_t)propertyFetchHintsForPropertySets:(id)sets
{
  setsCopy = sets;
  if ([@"PHPersonPropertySetIdentifier" length])
  {
    v4 = [setsCopy containsObject:@"PHPersonPropertySetIdentifier"];
  }

  else
  {
    v4 = 0;
  }

  if ([@"PHPersonPropertySetCore" length] && objc_msgSend(setsCopy, "containsObject:", @"PHPersonPropertySetCore"))
  {
    v4 |= 2uLL;
  }

  if ([@"PHPersonPropertySetUserFeedback" length] && objc_msgSend(setsCopy, "containsObject:", @"PHPersonPropertySetUserFeedback"))
  {
    v4 |= 4uLL;
  }

  if (![setsCopy containsObject:@"PHPersonPropertySetIdentifier"])
  {
    v4 |= 2uLL;
  }

  return v4;
}

+ (id)propertySetAccessorsByPropertySet
{
  if (propertySetAccessorsByPropertySet_onceToken_28594 != -1)
  {
    dispatch_once(&propertySetAccessorsByPropertySet_onceToken_28594, &__block_literal_global_327);
  }

  v3 = propertySetAccessorsByPropertySet_accessorByPropertySetName_28595;

  return v3;
}

void __45__PHPerson_propertySetAccessorsByPropertySet__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"PHPersonPropertySetIdentifier";
  v2[1] = @"PHPersonPropertySetCore";
  v3[0] = @"self";
  v3[1] = @"self";
  v2[2] = @"PHPersonPropertySetUserFeedback";
  v3[2] = @"userFeedbackProperties";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = propertySetAccessorsByPropertySet_accessorByPropertySetName_28595;
  propertySetAccessorsByPropertySet_accessorByPropertySetName_28595 = v0;
}

+ (Class)propertySetClassForPropertySet:(id)set
{
  v3 = propertySetClassForPropertySet__onceToken_28602;
  setCopy = set;
  if (v3 != -1)
  {
    dispatch_once(&propertySetClassForPropertySet__onceToken_28602, &__block_literal_global_325);
  }

  v5 = [propertySetClassForPropertySet__propertySetClassByPropertySetName_28603 objectForKey:setCopy];

  return v5;
}

void __43__PHPerson_propertySetClassForPropertySet___block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"PHPersonPropertySetIdentifier";
  v3[0] = objc_opt_class();
  v2[1] = @"PHPersonPropertySetCore";
  v3[1] = objc_opt_class();
  v2[2] = @"PHPersonPropertySetUserFeedback";
  v3[2] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = propertySetClassForPropertySet__propertySetClassByPropertySetName_28603;
  propertySetClassForPropertySet__propertySetClassByPropertySetName_28603 = v0;
}

+ (id)fetchPersonsThroughAssetPersonEdgesForAsset:(id)asset options:(id)options
{
  v4 = [PHGraphQuery graphQueryForPersonsForAsset:asset options:options];
  executeQuery = [v4 executeQuery];

  return executeQuery;
}

id __62__PHPerson_fetchPersonsWithUserFeedbackOfAllTypesWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsExclusivePredicate:1];
  v3 = [PHQuery queryForPersonsWithNonNilUserFeedbackWithTypes:&unk_1F102E138 options:v2];

  v4 = [v3 executeQuery];

  return v4;
}

id __79__PHPerson_fetchPersonsWithAutonamingSuggestionFeatureUserFeedbackWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsExclusivePredicate:1];
  v3 = [PHQuery queryForPersonsWithNonNilUserFeedbackWithTypes:&unk_1F102E120 options:v2];

  v4 = [v3 executeQuery];

  return v4;
}

id __52__PHPerson_fetchPersonsWithUserFeedbackWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsExclusivePredicate:1];
  v3 = [PHQuery queryForPersonsWithNonNilUserFeedbackWithTypes:&unk_1F102E108 options:v2];

  v4 = [v3 executeQuery];

  return v4;
}

+ (id)_fetchSuggestedPersonsForClient:(unint64_t)client options:(id)options
{
  v51 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  photoLibrary = [optionsCopy photoLibrary];
  if (!photoLibrary)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPerson.m" lineNumber:1270 description:@"Caller need to set a PHPhotoLibrary on options."];
  }

  v9 = [optionsCopy copy];
  [v9 setPersonContext:1];
  [v9 setShouldPrefetchCount:1];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"suggestedForClientType == %d || type == %d", client, 1];
  [v9 setInternalPredicate:v10];

  v11 = [PHPerson fetchPersonsWithOptions:v9];
  if ([v11 count] < 0x14)
  {
    v14 = [MEMORY[0x1E695DFA8] setWithCapacity:20];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v12 = v11;
    v15 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(v12);
          }

          localIdentifier = [*(*(&v42 + 1) + 8 * i) localIdentifier];
          [v14 addObject:localIdentifier];
        }

        v16 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v16);
    }

    v37 = photoLibrary;
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setPersonContext:1];
    [librarySpecificFetchOptions setShouldPrefetchCount:1];
    v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"faceCount" ascending:0];
    v49[0] = v21;
    v22 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
    v49[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    [librarySpecificFetchOptions setSortDescriptors:v23];

    [PHPerson fetchPersonsWithOptions:librarySpecificFetchOptions];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v24 = v41 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v39;
LABEL_14:
      v28 = 0;
      while (1)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(v24);
        }

        localIdentifier2 = [*(*(&v38 + 1) + 8 * v28) localIdentifier];
        [v14 addObject:localIdentifier2];

        if ([v14 count] > 0x13)
        {
          break;
        }

        if (v26 == ++v28)
        {
          v26 = [v24 countByEnumeratingWithState:&v38 objects:v48 count:16];
          if (v26)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }

    photoLibrary = v37;
    if ([v14 count] || (v32 = objc_msgSend(v37, "countOfUnclusteredFaces")) == 0)
    {
      allObjects = [v14 allObjects];
      v31 = [PHPerson fetchPersonsWithLocalIdentifiers:allObjects options:optionsCopy];

      v12 = v31;
      v13 = v12;
    }

    else
    {
      v33 = v32;
      v34 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v47 = v33;
        _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_DEFAULT, "No persons returned in people home, returning nil fetch result as the library is not analyzed yet; countOfUnclusteredFaces: %lu", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  else
  {
    v12 = v11;
    v13 = v12;
  }

  return v13;
}

+ (id)_requestSuggestedPersonsForClient:(unint64_t)client options:(id)options
{
  v22[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  photoLibrary = [optionsCopy photoLibrary];
  if (!photoLibrary)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPerson.m" lineNumber:1247 description:@"Caller need to set a PHPhotoLibrary on options."];
  }

  v21 = @"PHPeopleSuggestionClientKey";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:client];
  v22[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  photoAnalysisClient = [photoLibrary photoAnalysisClient];
  v18 = 0;
  v12 = [photoAnalysisClient requestSuggestedPersonsWithOptions:v10 error:&v18];
  v13 = v18;

  if (v12)
  {
    v14 = [self _fetchSuggestedPersonsForRecipients:v12 options:optionsCopy photoLibrary:photoLibrary];
  }

  else
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Error requesting suggested persons for client: %@", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

+ (id)fetchSuggestedPersonsForClient:(unint64_t)client options:(id)options
{
  optionsCopy = options;
  if (client - 4 < 2)
  {
    v7 = [self _requestSuggestedPersonsForClient:client options:optionsCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  if (client == 1)
  {
    v7 = [self _fetchSuggestedPersonsForClient:1 options:optionsCopy];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

+ (id)batchFetchRelationshipInferencesForPersons:(id)persons
{
  v27 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  v4 = [MEMORY[0x1E695DFA8] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = personsCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    photoLibrary = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        localIdentifier = [v11 localIdentifier];
        if (localIdentifier)
        {
          [v4 addObject:localIdentifier];
        }

        if (!photoLibrary)
        {
          photoLibrary = [v11 photoLibrary];

          if (photoLibrary)
          {
            photoLibrary = [v11 photoLibrary];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  else
  {
    photoLibrary = 0;
  }

  if (![v4 count])
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "[Person Knowledge] personLocalIdentifiers.count == 0, not requesting contact inferences";
LABEL_25:
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    }

LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  if (!photoLibrary)
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "[Person Knowledge] No photo library found for persons";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  photoAnalysisClient = [photoLibrary photoAnalysisClient];
  v19 = 0;
  v14 = [photoAnalysisClient requestRelationshipInferencesForPersonLocalIdentifiers:v4 error:&v19];
  v15 = v19;

  if (v15)
  {
    v16 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v15;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "[Person Knowledge] Error requesting relationship inferences for persons: %@", buf, 0xCu);
    }
  }

LABEL_27:

  return v14;
}

+ (id)fetchPersonsForContactIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__PHPerson_fetchPersonsForContactIdentifiers_options___block_invoke;
  v11[3] = &unk_1E75AA278;
  v12 = identifiersCopy;
  v13 = optionsCopy;
  v7 = optionsCopy;
  v8 = identifiersCopy;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:v7 fetchBlock:v11];

  return v9;
}

id __54__PHPerson_fetchPersonsForContactIdentifiers_options___block_invoke(uint64_t a1)
{
  v1 = [PHQuery queryForPersonsWithContactIdentifiers:*(a1 + 32) options:*(a1 + 40)];
  v2 = [v1 executeQuery];

  return v2;
}

+ (id)fetchPersonsForContacts:(id)contacts options:(id)options
{
  v22 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  optionsCopy = options;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = contactsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        identifier = [*(*(&v17 + 1) + 8 * i) identifier];
        if (identifier)
        {
          [v8 addObject:identifier];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [self fetchPersonsForContactIdentifiers:v8 options:optionsCopy];

  return v15;
}

+ (id)personToKeepForCloudConsistencyFromPersons:(id)persons
{
  v20 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [personsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(personsCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (v6)
        {
          uuid = [*(*(&v15 + 1) + 8 * i) uuid];
          uuid2 = [v6 uuid];
          v12 = [uuid compare:uuid2];

          if (v12 != -1)
          {
            continue;
          }
        }

        v13 = v9;

        v6 = v13;
      }

      v5 = [personsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)fetchPersonCountGroupedByAssetLocalIdentifierForAssets:(id)assets options:(id)options
{
  v45 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = assetsCopy;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        uuid = [v15 uuid];
        [array addObject:uuid];

        if (!v12)
        {
          v12 = v15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v11);

    if (v12)
    {
      if (optionsCopy)
      {
        v17 = [PHQuery queryForPersonsWithOptions:optionsCopy];
        fetchRequest = [v17 fetchRequest];
      }

      else
      {
        fetchRequest = 0;
      }

      v22 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:v12];
      photoLibrary = [v22 photoLibrary];
      v24 = MEMORY[0x1E69BE608];
      v34 = fetchRequest;
      predicate = [fetchRequest predicate];
      includedDetectionTypes = [optionsCopy includedDetectionTypes];
      v37 = 0;
      v27 = [v24 fetchPersonCountByAssetUUIDForAssetUUIDs:array predicate:predicate includedDetectionTypes:includedDetectionTypes library:photoLibrary error:&v37];
      v28 = v37;

      if (v27)
      {
        v29 = v28;
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __75__PHPerson_fetchPersonCountGroupedByAssetLocalIdentifierForAssets_options___block_invoke;
        v35[3] = &unk_1E75A7CC0;
        v31 = dictionary;
        v36 = v31;
        [v27 enumerateKeysAndObjectsUsingBlock:v35];
        v32 = v36;
      }

      else
      {
        v32 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v28;
          v43 = v28;
          _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_ERROR, "Error fetching person counts by asset: %@", buf, 0xCu);
        }

        else
        {
          v29 = v28;
        }

        v31 = 0;
      }

      v19 = v31;
      v21 = v19;
      goto LABEL_25;
    }
  }

  else
  {
  }

  v19 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = NSStringFromSelector(a2);
    *buf = 138412290;
    v43 = v20;
    _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Cannot run without assets %@", buf, 0xCu);
  }

  v21 = MEMORY[0x1E695E0F8];
LABEL_25:

  return v21;
}

void __75__PHPerson_fetchPersonCountGroupedByAssetLocalIdentifierForAssets_options___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [(PHObject *)PHAsset localIdentifierWithUUID:a2];
  [v4 setObject:v5 forKeyedSubscript:v6];
}

+ (id)fetchPersonsGroupedByAssetLocalIdentifierForAssets:(id)assets options:(id)options
{
  v46 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  optionsCopy = options;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__28433;
  v41 = __Block_byref_object_dispose__28434;
  v42 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = assetsCopy;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v11)
  {
    selfCopy = self;
    v12 = 0;
    v13 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        uuid = [v15 uuid];
        [array addObject:uuid];

        if (!v12)
        {
          v12 = v15;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v11);

    if (v12)
    {
      if (optionsCopy)
      {
        v17 = [PHQuery queryForPersonsWithOptions:optionsCopy];
        fetchRequest = [v17 fetchRequest];
      }

      else
      {
        fetchRequest = 0;
      }

      v21 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:v12];
      v22 = MEMORY[0x1E69BE608];
      predicate = [fetchRequest predicate];
      includedDetectionTypes = [optionsCopy includedDetectionTypes];
      photoLibrary = [v21 photoLibrary];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __71__PHPerson_fetchPersonsGroupedByAssetLocalIdentifierForAssets_options___block_invoke;
      v29[3] = &unk_1E75A7C98;
      v31 = &v37;
      v26 = v21;
      v30 = v26;
      v32 = selfCopy;
      [v22 batchFetchPersonsByAssetUUIDWithAssetUUIDs:array predicate:predicate includedDetectionTypes:includedDetectionTypes library:photoLibrary completion:v29];

      v20 = v38[5];
      goto LABEL_19;
    }
  }

  else
  {
  }

  v12 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v19 = NSStringFromSelector(a2);
    *buf = 138412290;
    v44 = v19;
    _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Cannot run without assets %@", buf, 0xCu);
  }

  v20 = MEMORY[0x1E695E0F8];
LABEL_19:

  _Block_object_dispose(&v37, 8);

  return v20;
}

void __71__PHPerson_fetchPersonsGroupedByAssetLocalIdentifierForAssets_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__PHPerson_fetchPersonsGroupedByAssetLocalIdentifierForAssets_options___block_invoke_2;
    v11[3] = &unk_1E75A7C70;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v11];
    v10 = v12;
  }

  else
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "Error batch fetching person groups by asset: %@", buf, 0xCu);
    }
  }
}

void __71__PHPerson_fetchPersonsGroupedByAssetLocalIdentifierForAssets_options___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PHObject *)PHAsset localIdentifierWithUUID:a2];
  v7 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = [PHPersonPLAdapter alloc];
        v15 = [(PHObjectPLAdapter *)v14 initWithPLManagedObject:v13 photoLibrary:*(a1 + 32), v18];
        v16 = [objc_alloc(*(a1 + 48)) initWithFetchDictionary:v15 propertyHint:2 photoLibrary:*(a1 + 32)];
        [v7 addObject:v16];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17 = [[PHManualFetchResult alloc] initWithObjects:v7 photoLibrary:*(a1 + 32) fetchType:@"PHPerson" fetchPropertySets:0 identifier:0 registerIfNeeded:1];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v17 forKeyedSubscript:v6];
}

+ (id)fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:(id)ds options:(id)options
{
  v16[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  optionsCopy = options;
  if ([dsCopy count])
  {
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K != %d) && (%K >= 1)", @"personForFace.verifiedType", 0, @"personForFace.faceCount"];
    internalPredicate = [optionsCopy internalPredicate];
    if (internalPredicate)
    {
      v10 = internalPredicate;
      v11 = MEMORY[0x1E696AB28];
      v16[0] = v8;
      v16[1] = internalPredicate;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
      v13 = [v11 andPredicateWithSubpredicates:v12];
    }

    else
    {
      v13 = v8;
    }

    [optionsCopy setInternalPredicate:v13];
    v14 = [self fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:dsCopy options:optionsCopy];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  return v14;
}

+ (id)fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:(id)ds options:(id)options
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  optionsCopy = options;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__28433;
  v23 = __Block_byref_object_dispose__28434;
  v24 = 0;
  photoLibrary = [optionsCopy photoLibrary];
  if (photoLibrary)
  {
    includeMediaAnalysisProcessingRangeTypes = [optionsCopy includeMediaAnalysisProcessingRangeTypes];
    v10 = MEMORY[0x1E69BE608];
    internalPredicate = [optionsCopy internalPredicate];
    includedDetectionTypes = [optionsCopy includedDetectionTypes];
    managedObjectContextForCurrentQueueQoS = [photoLibrary managedObjectContextForCurrentQueueQoS];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__PHPerson_fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs_options___block_invoke;
    v18[3] = &unk_1E75A7C48;
    v18[4] = &v19;
    [v10 batchFetchPersonUUIDsByAssetUUIDWithAssetUUIDs:dsCopy predicate:internalPredicate includedDetectionTypes:includedDetectionTypes includeTemporalDetectedFaces:(includeMediaAnalysisProcessingRangeTypes >> 1) & 1 inManagedObjectContext:managedObjectContextForCurrentQueueQoS completion:v18];

    v14 = v20[5];
  }

  else
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138412290;
      v26 = v16;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "No photo library in %@", buf, 0xCu);
    }

    v14 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v14;
}

void __68__PHPerson_fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (v6)
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Error batch fetching person uuids groups by assets: %@", &v10, 0xCu);
    }
  }
}

+ (id)momentCountsByPersonUUIDForPersonsWithUUIDs:(id)ds afterDate:(id)date photoLibrary:(id)library
{
  v41[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dateCopy = date;
  libraryCopy = library;
  v8 = MEMORY[0x1E695D5E0];
  entityName = [MEMORY[0x1E69BE3D0] entityName];
  v10 = [v8 fetchRequestWithEntityName:entityName];

  [v10 setResultType:2];
  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K IN %@", @"personForFace", @"personUUID", dsCopy];
  dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K.%K > %@", @"assetForFace", @"moment", @"startDate", dateCopy];
  v11 = MEMORY[0x1E696AB28];
  v41[0] = dsCopy;
  v41[1] = dateCopy;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];
  [v10 setPredicate:v13];

  v14 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v14 setName:@"personUUID"];
  v15 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"%K.%K", @"personForFace", @"personUUID"];
  [v14 setExpression:v15];

  [v14 setExpressionResultType:700];
  v16 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v16 setName:@"momentUUID"];
  v17 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"%K.%K.uuid", @"assetForFace", @"moment"];
  [v16 setExpression:v17];

  [v16 setExpressionResultType:700];
  v40[0] = v14;
  v40[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  [v10 setPropertiesToGroupBy:v18];

  v39[0] = v14;
  v39[1] = v16;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  [v10 setPropertiesToFetch:v19];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__28433;
  v37 = __Block_byref_object_dispose__28434;
  v38 = 0;
  photoLibrary = [libraryCopy photoLibrary];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __79__PHPerson_momentCountsByPersonUUIDForPersonsWithUUIDs_afterDate_photoLibrary___block_invoke;
  v29[3] = &unk_1E75AA3F8;
  v21 = libraryCopy;
  v30 = v21;
  v22 = v10;
  v31 = v22;
  v32 = &v33;
  [photoLibrary performBlockAndWait:v29];

  v23 = v34[5];
  _Block_object_dispose(&v33, 8);

  return v23;
}

void __79__PHPerson_momentCountsByPersonUUIDForPersonsWithUUIDs_afterDate_photoLibrary___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 managedObjectContext];
  v4 = *(a1 + 40);
  v37 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v37];
  v6 = v37;

  if (v5)
  {
    v27 = v6;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = v5;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v33 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:{@"personUUID", v27}];
          if (v17)
          {
            v18 = [v16 objectForKeyedSubscript:@"momentUUID"];

            if (v18)
            {
              [v10 addObject:v17];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v13);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = [v10 allObjects];
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v29 + 1) + 8 * j);
          v25 = [v10 countForObject:v24, v27];
          if (v25)
          {
            v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
            [*(*(*(a1 + 48) + 8) + 40) setObject:v26 forKeyedSubscript:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v29 objects:v40 count:16];
      }

      while (v21);
    }

    v6 = v27;
    v5 = v28;
  }

  else
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v6;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "Error batch fetching moment counts by person uuids: %@", buf, 0xCu);
    }
  }
}

+ (id)_fetchSuggestedRecipientsForFocusedAssetCollection:(id)collection assetCollection:(id)assetCollection options:(id)options client:(unint64_t)client
{
  v57 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  assetCollectionCopy = assetCollection;
  optionsCopy = options;
  if (assetCollectionCopy)
  {
    v13 = assetCollectionCopy;
  }

  else
  {
    v13 = collectionCopy;
  }

  photoLibrary = [v13 photoLibrary];
  photoAnalysisClient = [photoLibrary photoAnalysisClient];
  v14 = MEMORY[0x1E695DF90];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:client];
  v16 = [v14 dictionaryWithObject:v15 forKey:@"PHPeopleSuggestionClientKey"];

  if (optionsCopy)
  {
    sharingStream = [optionsCopy sharingStream];
    if (sharingStream)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:sharingStream];
      [v16 setObject:v18 forKey:@"PHSuggestedRecipientsSharingStreamKey"];
    }
  }

  if (collectionCopy)
  {
    v19 = [self _assetLocalIdentifiersForAssetCollection:collectionCopy];
LABEL_11:
    v20 = [self _momentLocalIdentifiersForAssetCollection:v13];
    *v47 = 0;
    v48 = v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__28433;
    v51 = __Block_byref_object_dispose__28434;
    v52 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__28433;
    v45 = __Block_byref_object_dispose__28434;
    v46 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__PHPerson__fetchSuggestedRecipientsForFocusedAssetCollection_assetCollection_options_client___block_invoke;
    block[3] = &unk_1E75A89A8;
    v39 = &v41;
    v35 = photoAnalysisClient;
    v21 = v19;
    v36 = v21;
    v22 = v20;
    v37 = v22;
    v38 = v16;
    v40 = v47;
    v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    v24 = dispatch_get_global_queue(21, 0);
    dispatch_async(v24, v23);

    if (qos_class_self() < 0x16)
    {
      v25 = -1;
    }

    else
    {
      v25 = dispatch_time(0, 150000000);
    }

    v26 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v54 = v25;
      _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEFAULT, "Calling requestSuggestedRecipientsForAssetLocalIdentifiers with timeout %llu", buf, 0xCu);
    }

    if (dispatch_block_wait(v23, v25))
    {
      v27 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = v22;
        _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_ERROR, "Timeout while requesting suggested recipients for moment identifier %@", buf, 0xCu);
      }
    }

    if (*(v48 + 5))
    {
      v28 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *(v48 + 5);
        *buf = 138412546;
        v54 = v22;
        v55 = 2112;
        v56 = v29;
        _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_ERROR, "Can't request suggested recipients for moment identifier %@: %@", buf, 0x16u);
      }
    }

    v30 = v42[5];

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(v47, 8);

    goto LABEL_25;
  }

  if (assetCollectionCopy)
  {
    v19 = 0;
    v13 = assetCollectionCopy;
    goto LABEL_11;
  }

  v22 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *v47 = 0;
    _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Can't suggest recipients without valid input collection.", v47, 2u);
  }

  v30 = 0;
LABEL_25:

  return v30;
}

void __94__PHPerson__fetchSuggestedRecipientsForFocusedAssetCollection_assetCollection_options_client___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = *(a1[9] + 8);
  obj = *(v6 + 40);
  v7 = [v2 requestSuggestedRecipientsForAssetLocalIdentifiers:v3 momentLocalIdentifiers:v4 options:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

+ (id)_fetchSuggestedPersonsForRecipients:(id)recipients options:(id)options photoLibrary:(id)library
{
  v39 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  optionsCopy = options;
  libraryCopy = library;
  if ([recipientsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = recipientsCopy;
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v34 + 1) + 8 * i) objectForKeyedSubscript:@"localIdentifier"];
          if ([v16 length])
          {
            [array addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v13);
    }

    v17 = [PHPerson fetchPersonsWithLocalIdentifiers:array options:optionsCopy];
    fetchedObjects = [v17 fetchedObjects];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __69__PHPerson__fetchSuggestedPersonsForRecipients_options_photoLibrary___block_invoke;
    v32[3] = &unk_1E75A7BF8;
    v33 = array;
    v19 = array;
    v20 = [fetchedObjects sortedArrayUsingComparator:v32];
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __69__PHPerson__fetchSuggestedPersonsForRecipients_options_photoLibrary___block_invoke_2;
    v30 = &unk_1E75A7C20;
    v31 = v21;
    v22 = v21;
    [v20 enumerateObjectsUsingBlock:&v27];
    v23 = [PHManualFetchResult alloc];
    fetchPropertySetsAsSet = [optionsCopy fetchPropertySetsAsSet];
    v25 = [(PHManualFetchResult *)v23 initWithOids:v22 photoLibrary:libraryCopy fetchType:@"PHPerson" fetchPropertySets:fetchPropertySetsAsSet identifier:0 registerIfNeeded:1];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

uint64_t __69__PHPerson__fetchSuggestedPersonsForRecipients_options_photoLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 localIdentifier];
  v7 = [v5 localIdentifier];

  v8 = [*(a1 + 32) indexOfObject:v6];
  v9 = [*(a1 + 32) indexOfObject:v7];
  if (v8 < v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = v8 > v9;
  }

  return v10;
}

void __69__PHPerson__fetchSuggestedPersonsForRecipients_options_photoLibrary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  [v2 addObject:v3];
}

+ (id)batchFetchSuggestedRecipientsForAssets:(id)assets options:(id)options
{
  v25 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  optionsCopy = options;
  v7 = [PHMoment fetchMomentUUIDByAssetUUIDForAssets:assetsCopy options:0];
  if ([v7 count])
  {
    photoLibrary = [optionsCopy photoLibrary];
    v9 = [MEMORY[0x1E695DF90] dictionaryWithObject:&unk_1F102D040 forKey:@"PHPeopleSuggestionClientKey"];
    if (optionsCopy)
    {
      sharingStream = [optionsCopy sharingStream];
      if (sharingStream)
      {
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:sharingStream];
        [v9 setObject:v11 forKey:@"PHSuggestedRecipientsSharingStreamKey"];
      }
    }

    if (!photoLibrary)
    {
      memset(v19, 0, sizeof(v19));
      v12 = assetsCopy;
      if ([v12 countByEnumeratingWithState:v19 objects:v24 count:16])
      {
        photoLibrary = [**(&v19[0] + 1) photoLibrary];
      }

      else
      {
        photoLibrary = 0;
      }
    }

    photoAnalysisClient = [photoLibrary photoAnalysisClient];
    v18 = 0;
    v13 = [photoAnalysisClient requestBatchSuggestedRecipientsForMomentUUIDByAssetUUID:v7 options:v9 error:&v18];
    v15 = v18;
    if (v15)
    {
      v16 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v21 = v7;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Can't request suggested recipients for momentUUIDByAssetUUID %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    photoLibrary = PLPhotoKitGetLog();
    if (os_log_type_enabled(photoLibrary, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = assetsCopy;
      _os_log_impl(&dword_19C86F000, photoLibrary, OS_LOG_TYPE_ERROR, "Can't suggest recipients without valid input: %@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

+ (id)fetchSuggestedPersonsForFocusedAssetCollection:(id)collection options:(id)options
{
  collectionCopy = collection;
  optionsCopy = options;
  v8 = [self _fetchSuggestedRecipientsForFocusedAssetCollection:collectionCopy assetCollection:0 options:optionsCopy client:3];
  if (v8)
  {
    v9 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:collectionCopy];
    v10 = [self _fetchSuggestedPersonsForRecipients:v8 options:optionsCopy photoLibrary:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)fetchSuggestedPersonsForAssetCollection:(id)collection options:(id)options
{
  collectionCopy = collection;
  optionsCopy = options;
  v8 = [self _fetchSuggestedRecipientsForFocusedAssetCollection:0 assetCollection:collectionCopy options:optionsCopy client:3];
  if (v8)
  {
    v9 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:collectionCopy];
    v10 = [self _fetchSuggestedPersonsForRecipients:v8 options:optionsCopy photoLibrary:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_momentLocalIdentifiersForAssetCollection:(id)collection
{
  v24[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if ([collectionCopy assetCollectionType] == 3)
  {
    localIdentifier = [collectionCopy localIdentifier];
    v24[0] = localIdentifier;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    goto LABEL_18;
  }

  photoLibrary = [collectionCopy photoLibrary];
  localIdentifier = [photoLibrary librarySpecificFetchOptions];

  v23 = @"PHAssetPropertySetIdentifier";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [localIdentifier setFetchPropertySets:v7];

  [localIdentifier setWantsIncrementalChangeDetails:0];
  [localIdentifier setSortDescriptors:MEMORY[0x1E695E0F0]];
  [localIdentifier setChunkSizeForFetch:2000];
  if ([collectionCopy assetCollectionType] == 6)
  {
    v8 = [PHAssetCollection fetchMomentsInHighlight:collectionCopy options:localIdentifier];
  }

  else if ([collectionCopy assetCollectionType] == 4)
  {
    v8 = [PHAssetCollection fetchMomentsBackingMemory:collectionCopy options:localIdentifier];
  }

  else
  {
    if ([collectionCopy assetCollectionType] != 8)
    {
      v17 = [PHAsset fetchAssetsInAssetCollection:collectionCopy options:localIdentifier];
      v9 = [PHAssetCollection fetchAssetCollectionsContainingAssets:v17 withType:3 options:localIdentifier];

      goto LABEL_10;
    }

    v8 = [PHAssetCollection fetchMomentsBackingSuggestion:collectionCopy options:localIdentifier];
  }

  v9 = v8;
LABEL_10:
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        localIdentifier2 = [*(*(&v18 + 1) + 8 * i) localIdentifier];
        [v5 addObject:localIdentifier2];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

LABEL_18:

  return v5;
}

+ (id)_assetLocalIdentifiersForAssetCollection:(id)collection
{
  v21[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  photoLibrary = [collectionCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v21[0] = @"PHAssetPropertySetIdentifier";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v6];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  [librarySpecificFetchOptions setSortDescriptors:MEMORY[0x1E695E0F0]];
  [librarySpecificFetchOptions setChunkSizeForFetch:2000];
  v7 = [PHAsset fetchAssetsInAssetCollection:collectionCopy options:librarySpecificFetchOptions];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        localIdentifier = [*(*(&v16 + 1) + 8 * i) localIdentifier];
        [v8 addObject:localIdentifier];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)fetchFinalMergeTargetPersonsForPersonWithUUID:(id)d options:(id)options
{
  v30[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  optionsCopy = options;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__28433;
  v28 = __Block_byref_object_dispose__28434;
  v29 = 0;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = v8;
  if (dCopy)
  {
    managedObjectContextForCurrentQueueQoS = [v8 managedObjectContextForCurrentQueueQoS];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__PHPerson_fetchFinalMergeTargetPersonsForPersonWithUUID_options___block_invoke;
    v17[3] = &unk_1E75AA1F0;
    v18 = dCopy;
    v11 = managedObjectContextForCurrentQueueQoS;
    v19 = v11;
    v20 = optionsCopy;
    v21 = v9;
    v22 = &v24;
    selfCopy = self;
    [v11 performBlockAndWait:v17];
  }

  if (v25[5])
  {
    v30[0] = v25[5];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  v13 = [PHManualFetchResult alloc];
  fetchPropertySetsAsSet = [optionsCopy fetchPropertySetsAsSet];
  v15 = [(PHManualFetchResult *)v13 initWithObjects:v12 photoLibrary:v9 fetchType:@"PHPerson" fetchPropertySets:fetchPropertySetsAsSet identifier:0 registerIfNeeded:1];

  _Block_object_dispose(&v24, 8);

  return v15;
}

void __66__PHPerson_fetchFinalMergeTargetPersonsForPersonWithUUID_options___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE608];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) predicate];
  v11 = [v2 fetchFinalMergeTargetPersonForPersonWithUUID:v3 context:v4 predicate:v5];

  if (v11)
  {
    v6 = [(PHObjectPLAdapter *)[PHPersonPLAdapter alloc] initWithPLManagedObject:v11 photoLibrary:*(a1 + 56)];
    v7 = [*(a1 + 48) fetchPropertySetsAsSet];
    v8 = [objc_alloc(*(a1 + 72)) initWithFetchDictionary:v6 propertyHint:+[PHPerson propertyFetchHintsForPropertySets:](PHPerson photoLibrary:{"propertyFetchHintsForPropertySets:", v7), *(a1 + 56)}];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

+ (id)fetchInvalidMergeCandidatePersonsForPerson:(id)person options:(id)options
{
  if (person)
  {
    v4 = [PHQuery queryForInvalidMergeCandidatePersonsForPerson:person options:options];
    executeQuery = [v4 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchMergeCandidateWithConfidencePersonsForPerson:(id)person options:(id)options
{
  if (person)
  {
    v4 = [PHQuery queryForMergeCandidateWithConfidencePersonsForPerson:person options:options];
    executeQuery = [v4 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchMergeCandidatePersonsForPerson:(id)person options:(id)options
{
  if (person)
  {
    v4 = [PHQuery queryForMergeCandidatePersonsForPerson:person options:options];
    executeQuery = [v4 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchAssociatedPersonsGroupedByFaceGroupLocalIdentifierForFaceGroups:(id)groups options:(id)options
{
  v46 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  optionsCopy = options;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__28433;
  v39 = __Block_byref_object_dispose__28434;
  v40 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = groupsCopy;
  v8 = [obj countByEnumeratingWithState:&v31 objects:v45 count:16];
  selfCopy = self;
  v9 = 0;
  if (v8)
  {
    v10 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        if (!v9)
        {
          v9 = v12;
        }

        localIdentifier = [v12 localIdentifier];
        v14 = [(PHObject *)PHFaceGroup uuidFromLocalIdentifier:localIdentifier];
        if (v14)
        {
          [array addObject:v14];
        }

        else
        {
          v15 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v42 = v12;
            v43 = 2112;
            v44 = localIdentifier;
            _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Cannot have uuid == nil for a PHFaceGroup. Skipping faceGroup: %@ with localIdentifier: %@", buf, 0x16u);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v45 count:16];
    }

    while (v8);
  }

  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:v9];
  v17 = MEMORY[0x1E69BE608];
  photoLibrary = [v16 photoLibrary];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __89__PHPerson_fetchAssociatedPersonsGroupedByFaceGroupLocalIdentifierForFaceGroups_options___block_invoke;
  v26[3] = &unk_1E75A7BD0;
  v29 = &v35;
  v19 = v16;
  v27 = v19;
  v20 = optionsCopy;
  v28 = v20;
  v30 = selfCopy;
  [v17 batchFetchAssociatedPersonByFaceGroupUUIDWithFaceGroupUUIDs:array predicate:0 library:photoLibrary completion:v26];

  v21 = v36[5];
  _Block_object_dispose(&v35, 8);

  return v21;
}

void __89__PHPerson_fetchAssociatedPersonsGroupedByFaceGroupLocalIdentifierForFaceGroups_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89__PHPerson_fetchAssociatedPersonsGroupedByFaceGroupLocalIdentifierForFaceGroups_options___block_invoke_2;
    v11[3] = &unk_1E75A7BA8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    [v5 enumerateKeysAndObjectsUsingBlock:v11];

    v10 = v12;
  }

  else
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "Error batch fetching associated person by face group: %@", buf, 0xCu);
    }
  }
}

void __89__PHPerson_fetchAssociatedPersonsGroupedByFaceGroupLocalIdentifierForFaceGroups_options___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PHObject *)PHFaceGroup localIdentifierWithUUID:a2];
  v7 = [(PHObjectPLAdapter *)[PHPersonPLAdapter alloc] initWithPLManagedObject:v5 photoLibrary:*(a1 + 32)];

  v8 = [*(a1 + 40) fetchPropertySetsAsSet];
  v9 = [objc_alloc(*(a1 + 56)) initWithFetchDictionary:v7 propertyHint:+[PHPerson propertyFetchHintsForPropertySets:](PHPerson photoLibrary:{"propertyFetchHintsForPropertySets:", v8), *(a1 + 32)}];
  v10 = [PHManualFetchResult alloc];
  v13[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12 = [(PHManualFetchResult *)v10 initWithObjects:v11 photoLibrary:*(a1 + 32) fetchType:@"PHPerson" fetchPropertySets:v8 identifier:0 registerIfNeeded:1];

  [*(*(*(a1 + 48) + 8) + 40) setObject:v12 forKeyedSubscript:v6];
}

+ (id)fetchPersonAssociatedWithFaceGroup:(id)group options:(id)options
{
  groupCopy = group;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PHPerson_fetchPersonAssociatedWithFaceGroup_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = groupCopy;
  v6 = groupCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __55__PHPerson_fetchPersonAssociatedWithFaceGroup_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssociatedPersonForFaceGroup:*(a1 + 32) withOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchPersonForFaceCrop:(id)crop options:(id)options
{
  v4 = [PHQuery queryForPersonForFaceCrop:crop options:options];
  executeQuery = [v4 executeQuery];

  return executeQuery;
}

+ (id)fetchRejectedPersonsForFace:(id)face options:(id)options
{
  if (face)
  {
    v4 = [PHQuery queryForRejectedPersonsForFace:face options:options];
    executeQuery = [v4 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchPersonsWithFaces:(id)faces options:(id)options
{
  v4 = [PHQuery queryForPersonsWithFaces:faces options:options];
  executeQuery = [v4 executeQuery];

  return executeQuery;
}

+ (id)fetchPersonWithFace:(id)face options:(id)options
{
  if (face)
  {
    v4 = [PHQuery queryForPersonWithFace:face options:options];
    executeQuery = [v4 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchPersonForShareParticipant:(id)participant options:(id)options
{
  if (participant)
  {
    v4 = [PHQuery queryForPersonWithShareParticipant:participant options:options];
    executeQuery = [v4 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchPersonsInSocialGroup:(id)group option:(id)option
{
  if (group)
  {
    v4 = [PHGraphQuery graphQueryForPersonsInSocialGroup:group options:option];
    executeQuery = [v4 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchPersonsForAssetCollection:(id)collection options:(id)options
{
  optionsCopy = options;
  if (collection)
  {
    collectionCopy = collection;
    photoLibrary = [optionsCopy photoLibrary];
    v8 = [PHFetchOptions fetchOptionsWithPhotoLibrary:photoLibrary orObject:collectionCopy];

    v9 = [PHAsset fetchAssetsInAssetCollection:collectionCopy options:v8];

    if ([v9 count])
    {
      v10 = [PHQuery queryForPersonsInAssetsFetchResult:v9 withOptions:optionsCopy];
      executeQuery = [v10 executeQuery];
    }

    else
    {
      executeQuery = 0;
    }
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchPersonsInAssetsFetchResult:(id)result options:(id)options
{
  resultCopy = result;
  optionsCopy = options;
  if ([resultCopy count])
  {
    v7 = [PHQuery queryForPersonsInAssetsFetchResult:resultCopy withOptions:optionsCopy];
    executeQuery = [v7 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchPersonsInAssets:(id)assets options:(id)options
{
  assetsCopy = assets;
  optionsCopy = options;
  if ([assetsCopy count])
  {
    v7 = [PHQuery queryForPersonsInAssets:assetsCopy withOptions:optionsCopy];
    executeQuery = [v7 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchPersonsInAsset:(id)asset options:(id)options
{
  if (asset)
  {
    v4 = [PHQuery queryForPersonsInAsset:asset options:options];
    executeQuery = [v4 executeQuery];
  }

  else
  {
    executeQuery = 0;
  }

  return executeQuery;
}

+ (id)fetchPersonsWithObjectIDs:(id)ds options:(id)options
{
  dsCopy = ds;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__PHPerson_fetchPersonsWithObjectIDs_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = dsCopy;
  v6 = dsCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __46__PHPerson_fetchPersonsWithObjectIDs_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForPersonsWithObjectIDs:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchPersonsWithMdIDs:(id)ds options:(id)options
{
  dsCopy = ds;
  optionsCopy = options;
  photoLibrary = [optionsCopy photoLibrary];

  if (!photoLibrary)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPerson.m" lineNumber:472 description:{@"Invalid parameter not satisfying: %@", @"options.photoLibrary"}];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__PHPerson_fetchPersonsWithMdIDs_options___block_invoke;
  v14[3] = &unk_1E75AB0E0;
  v15 = dsCopy;
  v10 = dsCopy;
  v11 = [PHObject authorizationAwareFetchResultWithOptions:optionsCopy fetchBlock:v14];

  return v11;
}

id __42__PHPerson_fetchPersonsWithMdIDs_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForPersonsWithMdIDs:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchPersonsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__PHPerson_fetchPersonsWithLocalIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = identifiersCopy;
  v6 = identifiersCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __53__PHPerson_fetchPersonsWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForPersonsWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchPersonsWithQuestionType:(unsigned __int16)type options:(id)options
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PHPerson_fetchPersonsWithQuestionType_options___block_invoke;
  v6[3] = &__block_descriptor_34_e39___PHFetchResult_16__0__PHFetchOptions_8l;
  typeCopy = type;
  v4 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v6];

  return v4;
}

id __49__PHPerson_fetchPersonsWithQuestionType_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForPersonsWithQuestionType:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchPersonsWithType:(int64_t)type options:(id)options
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__PHPerson_fetchPersonsWithType_options___block_invoke;
  v6[3] = &__block_descriptor_40_e39___PHFetchResult_16__0__PHFetchOptions_8l;
  v6[4] = type;
  v4 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v6];

  return v4;
}

id __41__PHPerson_fetchPersonsWithType_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForPersonsWithType:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

id __36__PHPerson_fetchPersonsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForPersonsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

id __37__PHPerson_fetchMePersonWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69BE608];
  v3 = a2;
  v4 = [v2 predicateForMePerson];
  [v3 setPredicate:v4];

  v5 = [PHQuery queryForPersonsWithOptions:v3];

  v6 = [v5 executeQuery];

  return v6;
}

+ (id)fetchPredicateFromComparisonPredicate:(id)predicate options:(id)options
{
  v22[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v21.receiver = self;
  v21.super_class = &OBJC_METACLASS___PHPerson;
  v7 = objc_msgSendSuper2(&v21, sel_fetchPredicateFromComparisonPredicate_options_, predicateCopy, options);
  if (!v7)
  {
    leftExpression = [predicateCopy leftExpression];
    rightExpression = [predicateCopy rightExpression];
    if ([leftExpression expressionType] == 3)
    {
      keyPath = [leftExpression keyPath];
    }

    else
    {
      keyPath = 0;
    }

    if ([keyPath isEqualToString:@"verified"] && !objc_msgSend(rightExpression, "expressionType"))
    {
      constantValue = [rightExpression constantValue];
      if ([constantValue BOOLValue])
      {
        v15 = @"verifiedType != %d";
      }

      else
      {
        v15 = @"noindex:(verifiedType) == %d";
      }

      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:v15, 0];

      goto LABEL_14;
    }

    if ([keyPath isEqualToString:@"verifiedType"])
    {
      if ([rightExpression expressionType])
      {
        v11 = 0;
      }

      else
      {
        constantValue2 = [rightExpression constantValue];
        v11 = constantValue2;
        if (constantValue2 && ![constantValue2 intValue])
        {
          v17 = MEMORY[0x1E696ABC8];
          v22[0] = leftExpression;
          v18 = MEMORY[0x1E695DEC8];
          v19 = leftExpression;
          v20 = [v18 arrayWithObjects:v22 count:1];
          leftExpression = [v17 expressionForFunction:@"noindex:" arguments:v20];
        }
      }

      v7 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:leftExpression rightExpression:rightExpression modifier:objc_msgSend(predicateCopy type:"comparisonPredicateModifier") options:{objc_msgSend(predicateCopy, "predicateOperatorType"), objc_msgSend(predicateCopy, "options")}];
    }

    else
    {
      v7 = 0;
    }
  }

  v12 = v7;
LABEL_14:

  return v12;
}

+ (id)transformValueExpression:(id)expression forKeyPath:(id)path
{
  expressionCopy = expression;
  pathCopy = path;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PHPerson_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transformValueExpression_forKeyPath__onceToken_28731 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_28731, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_28732 containsObject:pathCopy])
  {
    v8 = expressionCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __48__PHPerson_transformValueExpression_forKeyPath___block_invoke()
{
  v4[14] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"name";
  v4[1] = @"displayName";
  v4[2] = @"uuid";
  v4[3] = @"detectionType";
  v4[4] = @"type";
  v4[5] = @"manualOrder";
  v4[6] = @"mergeCandidateConfidence";
  v4[7] = @"personUri";
  v4[8] = @"inPersonNamingModel";
  v4[9] = @"faceCount";
  v4[10] = @"contactMatchingDictionary";
  v4[11] = @"persistedSuggestionForClient";
  v4[12] = @"keyFacePickSource";
  v4[13] = @"isMeConfidence";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:14];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_28732;
  transformValueExpression_forKeyPath___passThroughSet_28732 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_1;

  return v2;
}

void __24__PHPerson_entityKeyMap__block_invoke()
{
  v47[21] = *MEMORY[0x1E69E9840];
  v19 = [PHEntityKeyMap alloc];
  v45 = @"uuid";
  v46[0] = @"personUUID";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v47[0] = v24;
  v46[1] = @"detectionType";
  v44 = @"detectionType";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v47[1] = v23;
  v46[2] = @"fullName";
  v43 = @"name";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v47[2] = v22;
  v46[3] = @"displayName";
  v42 = @"displayName";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v47[3] = v21;
  v46[4] = @"type";
  v41 = @"type";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v47[4] = v20;
  v46[5] = @"manualOrder";
  v40 = @"manualOrder";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v47[5] = v18;
  v46[6] = @"mergeCandidateConfidence";
  v39 = @"mergeCandidateConfidence";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v47[6] = v17;
  v46[7] = @"personUri";
  v38 = @"personUri";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v47[7] = v16;
  v46[8] = @"inPersonNamingModel";
  v37 = @"inPersonNamingModel";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v47[8] = v15;
  v46[9] = @"faceCount";
  v36 = @"faceCount";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v47[9] = v14;
  v46[10] = @"verifiedType";
  v35 = @"verifiedType";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v47[10] = v13;
  v46[11] = @"questionType";
  v34 = @"questionType";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v47[11] = v12;
  v46[12] = @"ageType";
  v33 = @"ageType";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v47[12] = v0;
  v46[13] = @"genderType";
  v32 = @"genderType";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v47[13] = v1;
  v46[14] = @"genderType";
  v31 = @"sexType";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v47[14] = v2;
  v46[15] = @"contactMatchingDictionary";
  v30 = @"contactMatchingDictionary";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v47[15] = v3;
  v46[16] = @"suggestedForClientType";
  v29 = @"persistedSuggestionForClient";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v47[16] = v4;
  v46[17] = @"mdID";
  v28 = @"mdID";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v47[17] = v5;
  v46[18] = @"assetSortOrder";
  v27 = @"assetSortOrder";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v47[18] = v6;
  v46[19] = @"keyFacePickSource";
  v26 = @"keyFacePickSource";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v47[19] = v7;
  v46[20] = @"isMeConfidence";
  v25 = @"isMeConfidence";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v47[20] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:21];
  v10 = [(PHEntityKeyMap *)v19 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_1;
  entityKeyMap_pl_once_object_1 = v10;
}

+ (id)corePropertiesToFetch
{
  if (corePropertiesToFetch_onceToken_28739 != -1)
  {
    dispatch_once(&corePropertiesToFetch_onceToken_28739, &__block_literal_global_169);
  }

  v3 = corePropertiesToFetch_array_28740;

  return v3;
}

void __33__PHPerson_corePropertiesToFetch__block_invoke()
{
  v3[20] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v3[0] = v0;
  v3[1] = @"fullName";
  v3[2] = @"displayName";
  v3[3] = @"detectionType";
  v3[4] = @"type";
  v3[5] = @"manualOrder";
  v3[6] = @"mergeCandidateConfidence";
  v3[7] = @"personUri";
  v3[8] = @"inPersonNamingModel";
  v3[9] = @"faceCount";
  v3[10] = @"verifiedType";
  v3[11] = @"questionType";
  v3[12] = @"ageType";
  v3[13] = @"genderType";
  v3[14] = @"contactMatchingDictionary";
  v3[15] = @"suggestedForClientType";
  v3[16] = @"mdID";
  v3[17] = @"assetSortOrder";
  v3[18] = @"keyFacePickSource";
  v3[19] = @"isMeConfidence";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:20];
  v2 = corePropertiesToFetch_array_28740;
  corePropertiesToFetch_array_28740 = v1;
}

+ (id)identifierPropertiesToFetch
{
  pl_dispatch_once();
  v2 = identifierPropertiesToFetch_array;

  return v2;
}

void __39__PHPerson_identifierPropertiesToFetch__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v3[0] = v0;
  v3[1] = @"personUUID";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v2 = identifierPropertiesToFetch_array;
  identifierPropertiesToFetch_array = v1;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  if (propertiesToFetchWithHint__onceToken_28742 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_28742, &__block_literal_global_28743);
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__28433;
  v9 = __Block_byref_object_dispose__28434;
  v10 = 0;
  pl_dispatch_sync();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __38__PHPerson_propertiesToFetchWithHint___block_invoke_162(uint64_t a1)
{
  v2 = propertiesToFetchWithHint__propertiesToFetchByHint_28745;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = [*(a1 + 48) _composePropertiesToFetchWithHint:*(a1 + 40)];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = propertiesToFetchWithHint__propertiesToFetchByHint_28745;
    v12 = [MEMORY[0x1E695DEC8] arrayWithArray:*(*(*(a1 + 32) + 8) + 40)];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
    [v10 setObject:v12 forKey:v11];
  }
}

uint64_t __38__PHPerson_propertiesToFetchWithHint___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = propertiesToFetchWithHint__propertiesToFetchByHint_28745;
  propertiesToFetchWithHint__propertiesToFetchByHint_28745 = v0;

  propertiesToFetchWithHint__propertyQueue_28744 = dispatch_queue_create("com.apple.photos.personpropertyhints", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_composePropertiesToFetchWithHint:(unint64_t)hint
{
  hintCopy = hint;
  array = [MEMORY[0x1E695DF70] array];
  if (hintCopy)
  {
    identifierPropertiesToFetch = [self identifierPropertiesToFetch];
    [self extendPropertiesToFetch:array withProperties:identifierPropertiesToFetch];

    if ((hintCopy & 2) == 0)
    {
LABEL_3:
      if ((hintCopy & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((hintCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  corePropertiesToFetch = [self corePropertiesToFetch];
  [self extendPropertiesToFetch:array withProperties:corePropertiesToFetch];

  if ((hintCopy & 4) != 0)
  {
LABEL_4:
    [self extendPropertiesToFetch:array withPropertySetClass:objc_opt_class()];
  }

LABEL_5:

  return array;
}

+ (id)fetchPersonsForReferences:(id)references photoLibrary:(id)library
{
  libraryCopy = library;
  v6 = PHLocalIdentifierForObjectReferencesAndLibrary(references, libraryCopy);
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];

  [librarySpecificFetchOptions setPersonContext:5];
  v8 = [PHPerson fetchPersonsWithLocalIdentifiers:v6 options:librarySpecificFetchOptions];

  return v8;
}

+ (int64_t)updateKeyFacesOfPersons:(id)persons forceUpdate:(BOOL)update completion:(id)completion
{
  updateCopy = update;
  v28 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  completionCopy = completion;
  firstObject = [personsCopy firstObject];
  photoLibrary = [firstObject photoLibrary];
  photoAnalysisClient = [photoLibrary photoAnalysisClient];

  if (photoAnalysisClient)
  {
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = personsCopy;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          localIdentifier = [*(*(&v23 + 1) + 8 * v17) localIdentifier];
          [array addObject:localIdentifier];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __74__PHPerson_VisionService__updateKeyFacesOfPersons_forceUpdate_completion___block_invoke;
    v21[3] = &unk_1E75AA4C8;
    v22 = completionCopy;
    v19 = [photoAnalysisClient updateKeyFacesOfPersonsWithLocalIdentifiers:array forceUpdate:updateCopy completion:v21];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)_convertToPersonSuggestion:(id)suggestion photoLibrary:(id)library
{
  v24[1] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  libraryCopy = library;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setMinimumUnverifiedFaceCount:1];
  v24[0] = @"PHPersonPropertySetUserFeedback";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v8];

  personLocalIdentifier = [suggestionCopy personLocalIdentifier];
  v23 = personLocalIdentifier;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v11 = [PHPerson fetchPersonsWithLocalIdentifiers:v10 options:librarySpecificFetchOptions];

  firstObject = [v11 firstObject];
  if (firstObject)
  {
    keyFaceLocalIdentifier = [suggestionCopy keyFaceLocalIdentifier];
    v22 = keyFaceLocalIdentifier;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    librarySpecificFetchOptions2 = [libraryCopy librarySpecificFetchOptions];
    v16 = [PHFace fetchFacesWithLocalIdentifiers:v14 options:librarySpecificFetchOptions2];

    firstObject2 = [v16 firstObject];
    if (firstObject2)
    {
      confirmed = [suggestionCopy confirmed];
      v19 = [PHPersonSuggestion alloc];
      [suggestionCopy similarityScore];
      v20 = [(PHPersonSuggestion *)v19 initWithKeyFace:firstObject2 person:firstObject confirmed:confirmed similarityScore:?];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)_packageSuggestionList:(id)list photoLibrary:(id)library
{
  v21 = *MEMORY[0x1E69E9840];
  listCopy = list;
  libraryCopy = library;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = listCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [self _convertToPersonSuggestion:*(*(&v16 + 1) + 8 * i) photoLibrary:{libraryCopy, v16}];
        if (v14)
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return array;
}

+ (id)_personSuggestionMarkedAsConfirmed:(BOOL)confirmed fromPersonSuggestion:(id)suggestion
{
  confirmedCopy = confirmed;
  v22[6] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  if (suggestionCopy)
  {
    v6 = objc_autoreleasePoolPush();
    keyFace = [suggestionCopy keyFace];
    v8 = keyFace;
    if (keyFace)
    {
      localIdentifier = [keyFace localIdentifier];
      person = [suggestionCopy person];
      v11 = person;
      if (person)
      {
        localIdentifier2 = [person localIdentifier];
        v21[0] = @"faceCSN";
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "clusterSequenceNumber")}];
        v22[0] = v12;
        v22[1] = localIdentifier;
        v21[1] = @"faceIdentifier";
        v21[2] = @"personIdentifier";
        v22[2] = localIdentifier2;
        v21[3] = @"personFaceCount";
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "faceCount")}];
        v22[3] = v13;
        v21[4] = @"confirmed";
        v14 = [MEMORY[0x1E696AD98] numberWithBool:confirmedCopy];
        v22[4] = v14;
        v21[5] = @"similarityScore";
        v15 = MEMORY[0x1E696AD98];
        [suggestionCopy similarityScore];
        v16 = [v15 numberWithDouble:?];
        v22[5] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];

        v18 = [objc_alloc(MEMORY[0x1E69BE628]) initWithSuggestionDictionary:v17];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (int64_t)_personSuggestionsForPerson:(id)person confirmedPersonSuggestions:(id)suggestions rejectedPersonSuggestions:(id)personSuggestions fromClient:(id)client completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  personCopy = person;
  suggestionsCopy = suggestions;
  personSuggestionsCopy = personSuggestions;
  clientCopy = client;
  completionCopy = completion;
  localIdentifier = [personCopy localIdentifier];
  photoLibrary = [personCopy photoLibrary];
  array = [MEMORY[0x1E695DF70] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v16 = suggestionsCopy;
  v17 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v46;
    do
    {
      v20 = 0;
      do
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [self _personSuggestionMarkedAsConfirmed:1 fromPersonSuggestion:*(*(&v45 + 1) + 8 * v20)];
        if (v21)
        {
          [array addObject:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v18);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23 = personSuggestionsCopy;
  v24 = [v23 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v42;
    do
    {
      v27 = 0;
      do
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [self _personSuggestionMarkedAsConfirmed:0 fromPersonSuggestion:*(*(&v41 + 1) + 8 * v27)];
        if (v28)
        {
          [array2 addObject:v28];
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v25);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __130__PHPerson_VisionService___personSuggestionsForPerson_confirmedPersonSuggestions_rejectedPersonSuggestions_fromClient_completion___block_invoke;
  v37[3] = &unk_1E75AA498;
  v38 = photoLibrary;
  v39 = completionCopy;
  selfCopy = self;
  v29 = completionCopy;
  v30 = photoLibrary;
  v31 = [clientCopy suggestedPersonsForPersonWithLocalIdentifier:localIdentifier toBeConfirmedPersonSuggestions:array toBeRejectedPersonSuggestions:array2 completion:v37];

  return v31;
}

void __130__PHPerson_VisionService___personSuggestionsForPerson_confirmedPersonSuggestions_rejectedPersonSuggestions_fromClient_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = 0;
  v8 = v6;
  if (a2 && !v6)
  {
    v7 = [*(a1 + 48) _packageSuggestionList:a2 photoLibrary:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

+ (int64_t)personSuggestionsForPerson:(id)person confirmedPersonSuggestions:(id)suggestions rejectedPersonSuggestions:(id)personSuggestions completion:(id)completion
{
  personCopy = person;
  suggestionsCopy = suggestions;
  personSuggestionsCopy = personSuggestions;
  completionCopy = completion;
  photoLibrary = [personCopy photoLibrary];
  photoAnalysisClient = [photoLibrary photoAnalysisClient];

  if (photoAnalysisClient)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __118__PHPerson_VisionService__personSuggestionsForPerson_confirmedPersonSuggestions_rejectedPersonSuggestions_completion___block_invoke;
    v18[3] = &unk_1E75AA470;
    v19 = completionCopy;
    v16 = [self _personSuggestionsForPerson:personCopy confirmedPersonSuggestions:suggestionsCopy rejectedPersonSuggestions:personSuggestionsCopy fromClient:photoAnalysisClient completion:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)personSuggestionsForPerson:(id)person confirmedPersonSuggestions:(id)suggestions rejectedPersonSuggestions:(id)personSuggestions
{
  personCopy = person;
  suggestionsCopy = suggestions;
  personSuggestionsCopy = personSuggestions;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__49705;
  v22 = __Block_byref_object_dispose__49706;
  v23 = MEMORY[0x1E695E0F0];
  v11 = dispatch_block_create(0, &__block_literal_global_49707);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__PHPerson_VisionService__personSuggestionsForPerson_confirmedPersonSuggestions_rejectedPersonSuggestions___block_invoke_2;
  v15[3] = &unk_1E75AA448;
  v17 = &v18;
  v12 = v11;
  v16 = v12;
  [self personSuggestionsForPerson:personCopy confirmedPersonSuggestions:suggestionsCopy rejectedPersonSuggestions:personSuggestionsCopy completion:v15];
  dispatch_block_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v13;
}

void __107__PHPerson_VisionService__personSuggestionsForPerson_confirmedPersonSuggestions_rejectedPersonSuggestions___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

@end