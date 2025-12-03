@interface PHMemory
+ (BOOL)isTriggeredMemoryCategory:(unint64_t)category;
+ (Class)propertySetClassForPropertySet:(id)set;
+ (id)_composePropertiesToFetchWithHint:(unint64_t)hint;
+ (id)_fetchOptionsForTransientMemoryAssetsWithOptions:(id)options;
+ (id)assetListPredicateFromQueryHintObjects:(id)objects;
+ (id)blockedPersonLocalIdentifiersInPhotoLibrary:(id)library;
+ (id)corePropertiesToFetch;
+ (id)entityKeyMap;
+ (id)fetchBestRecentMemoryWithOptions:(id)options;
+ (id)fetchBlockedMemoriesWithOptions:(id)options;
+ (id)fetchMemoriesWithGraphMemoryIdentifiers:(id)identifiers options:(id)options;
+ (id)fetchMemoriesWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)fetchMemoriesWithNilLastEnrichmentDateWithOptions:(id)options;
+ (id)fetchMemoriesWithUserFeedbackWithOptions:(id)options;
+ (id)fetchMemoryWithGraphMemoryIdentifier:(id)identifier options:(id)options;
+ (id)fetchMostRelevantMemoryAtDate:(id)date options:(id)options;
+ (id)fetchMostRelevantMemoryWithOptions:(id)options;
+ (id)fetchPredicateForSharingFilter:(unsigned __int16)filter;
+ (id)fetchPredicateFromComparisonPredicate:(id)predicate options:(id)options;
+ (id)fetchPredicateFromUserCreatedComparisonPredicate:(id)predicate;
+ (id)filteredAndSortedPreviewAssetsByScoreFromAssets:(id)assets targetSize:(CGSize)size;
+ (id)memoriesWithBlockedPersonFeatureInPhotoLibrary:(id)library;
+ (id)mostRelevantMemoryInMemories:(id)memories atDate:(id)date;
+ (id)movieDataWithTitleFontName:(id)name;
+ (id)previewCandidatesFromAssets:(id)assets;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
+ (id)propertySetAccessorsByPropertySet;
+ (id)propertySetsForPropertyFetchHints:(unint64_t)hints;
+ (id)stringForCategory:(unint64_t)category;
+ (id)stringForFeaturedState:(int64_t)state;
+ (id)stringForNotificationState:(unint64_t)state;
+ (id)stringForSubcategory:(unint64_t)subcategory;
+ (id)stringForTriggerType:(unint64_t)type;
+ (id)titleFontNameFromMovieData:(id)data;
+ (id)transformValueExpression:(id)expression forKeyPath:(id)path;
+ (id)transientMemoryWithInfo:(id)info photoLibrary:(id)library;
+ (unint64_t)_contextualScoreForMemory:(id)memory;
+ (unint64_t)propertyFetchHintsForPropertySets:(id)sets;
+ (void)clearCurrentMemoryForURLNavigation;
+ (void)generateMemoriesWithOptions:(id)options completion:(id)completion;
+ (void)setCurrentMemoryForURLNavigation:(id)navigation;
- (BOOL)hasBlockableFeature;
- (BOOL)isBadgeable;
- (BOOL)isContiguous;
- (BOOL)isCurrentlyRelevant;
- (BOOL)isPresentedFromURLNavigation;
- (NSArray)blockableFeatures;
- (NSArray)triggerTypes;
- (NSDictionary)photosGraphProperties;
- (NSSet)featuredPersonLocalIdentifiers;
- (NSString)storyTitleCategory;
- (PHMemory)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
- (double)_evaluatedDurationWithNumberOfStillPhotos:(unint64_t)photos numberOfLivePhotos:(unint64_t)livePhotos numberOfVideos:(unint64_t)videos options:(id)options;
- (double)currentRelevanceScore;
- (id)_createPropertyObjectOfClass:(Class)class preFetchedProperties:(id)properties;
- (id)_curatedAssetIDsWithLibrary:(id)library;
- (id)_extendedCuratedAssetIDsWithLibrary:(id)library;
- (id)_representativeAndCuratedAssetIDs;
- (id)curationOfLength:(unint64_t)length options:(id)options error:(id *)error;
- (id)description;
- (id)extractGenerativeMemoryMusicCuration;
- (id)fetchAssetsWithCurationOfLength:(unint64_t)length options:(id)options error:(id *)error;
- (id)fetchPreviewAssetForLength:(unint64_t)length targetSize:(CGSize)size;
- (id)meaningLabels;
- (id)moodKeywords;
- (id)movieStateDataForAsset:(id)asset;
- (id)predicateForAllAssetsWithLibrary:(id)library;
- (id)predicateForAllMomentsFromRepresentativeAssets;
- (id)predicateForAssetsContainedInMomentsFromRepresentativeAssets;
- (id)presentationHints;
- (id)query;
- (id)queryForCuratedAssetsWithOptions:(id)options;
- (id)queryForExtendedCuratedAssetsWithOptions:(id)options;
- (id)queryForKeyAssetWithOptions:(id)options;
- (id)rankedPreviewAssetsForLength:(unint64_t)length targetSize:(CGSize)size;
- (id)titleFontName;
- (id)transientRepresentativeAndCuratedAssetIDs;
- (id)userFeedbackProperties;
- (int64_t)storyColorGradeKind;
- (unint64_t)_fetchNumberOfAssetsWithType:(unint64_t)type predicate:(id)predicate;
- (unint64_t)_numberOfAssetsWithType:(unint64_t)type optionsValue:(id)value predicate:(id)predicate;
- (unint64_t)availableCurationLengthsWithOptions:(id)options;
- (unint64_t)currentCurationLengthWithOptions:(id)options;
- (unint64_t)suggestedMood;
- (unint64_t)titleFontNameHash;
- (void)_loadValuesFromPhotosGraphProperties;
- (void)setupTransientMemory;
@end

@implementation PHMemory

+ (id)corePropertiesToFetch
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PHMemory_corePropertiesToFetch__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (corePropertiesToFetch_onceToken != -1)
  {
    dispatch_once(&corePropertiesToFetch_onceToken, block);
  }

  v2 = corePropertiesToFetch_array;

  return v2;
}

void __33__PHMemory_corePropertiesToFetch__block_invoke()
{
  v4[36] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v0 setName:@"objectID"];
  v1 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  [v0 setExpression:v1];

  [v0 setExpressionResultType:2000];
  v4[0] = v0;
  v4[1] = @"category";
  v4[2] = @"subcategory";
  v4[3] = @"creationDate";
  v4[4] = @"movieAssetState";
  v4[5] = @"movieData";
  v4[6] = @"photosGraphData";
  v4[7] = @"photosGraphVersion";
  v4[8] = @"rejected";
  v4[9] = @"favorite";
  v4[10] = @"pendingState";
  v4[11] = @"creationType";
  v4[12] = @"syndicatedContentState";
  v4[13] = @"userActionOptions";
  v4[14] = @"subtitle";
  v4[15] = @"title";
  v4[16] = @"graphMemoryIdentifier";
  v4[17] = @"storyColorGradeKind";
  v4[18] = @"storySerializedTitleCategory";
  v4[19] = @"score";
  v4[20] = @"lastViewedDate";
  v4[21] = @"lastMoviePlayedDate";
  v4[22] = @"lastEnrichmentDate";
  v4[23] = @"assetListPredicate";
  v4[24] = @"notificationState";
  v4[25] = @"featuredState";
  v4[26] = @"blacklistedFeature";
  v4[27] = @"playCount";
  v4[28] = @"shareCount";
  v4[29] = @"viewCount";
  v4[30] = @"pendingPlayCount";
  v4[31] = @"pendingShareCount";
  v4[32] = @"pendingViewCount";
  v4[33] = @"sharingComposition";
  v4[34] = @"startDate";
  v4[35] = @"endDate";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:36];
  v3 = corePropertiesToFetch_array;
  corePropertiesToFetch_array = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_13439;

  return v2;
}

void __24__PHMemory_entityKeyMap__block_invoke()
{
  v57[26] = *MEMORY[0x1E69E9840];
  v23 = [PHEntityKeyMap alloc];
  v55 = @"objectID";
  v56[0] = @"objectID";
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
  v57[0] = v29;
  v56[1] = @"uuid";
  v54 = @"uuid";
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  v57[1] = v28;
  v56[2] = @"title";
  v53[0] = @"localizedTitle";
  v53[1] = @"title";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v57[2] = v27;
  v56[3] = @"subtitle";
  v52[0] = @"localizedSubtitle";
  v52[1] = @"subtitle";
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v57[3] = v26;
  v56[4] = @"graphMemoryIdentifier";
  v51 = @"graphMemoryIdentifier";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  v57[4] = v25;
  v56[5] = @"storyColorGradeKind";
  v50 = @"storyColorGradeKind";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v57[5] = v24;
  v56[6] = @"storySerializedTitleCategory";
  v49 = @"storyTitleCategory";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v57[6] = v22;
  v56[7] = @"creationDate";
  v48 = @"creationDate";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v57[7] = v21;
  v56[8] = @"photosGraphVersion";
  v47 = @"photosGraphVersion";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v57[8] = v20;
  v56[9] = @"rejected";
  v46 = @"rejected";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v57[9] = v19;
  v56[10] = @"favorite";
  v45 = @"favorite";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v57[10] = v18;
  v56[11] = @"pendingState";
  v44 = @"pendingState";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v57[11] = v17;
  v56[12] = @"creationType";
  v43 = @"creationType";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v57[12] = v16;
  v56[13] = @"syndicatedContentState";
  v42 = @"syndicatedContentState";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v57[13] = v15;
  v56[14] = @"userActionOptions";
  v41 = @"userCreated";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v57[14] = v14;
  v56[15] = @"subcategory";
  v40 = @"subcategory";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v57[15] = v13;
  v56[16] = @"score";
  v39 = @"score";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v57[16] = v12;
  v56[17] = @"notificationState";
  v38 = @"notificationState";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v57[17] = v0;
  v56[18] = @"featuredState";
  v37 = @"featuredState";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v57[18] = v1;
  v56[19] = @"blacklistedFeature";
  v36 = @"blacklistedFeature";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v57[19] = v2;
  v56[20] = @"category";
  v35 = @"category";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v57[20] = v3;
  v56[21] = @"lastViewedDate";
  v34 = @"lastViewedDate";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v57[21] = v4;
  v56[22] = @"viewCount";
  v33 = @"viewCount";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v57[22] = v5;
  v56[23] = @"sharingComposition";
  v32 = @"sharingComposition";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v57[23] = v6;
  v56[24] = @"startDate";
  v31 = @"startDate";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v57[24] = v7;
  v56[25] = @"endDate";
  v30 = @"endDate";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v57[25] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:26];
  v10 = [(PHEntityKeyMap *)v23 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_15_13439;
  entityKeyMap_pl_once_object_15_13439 = v10;
}

+ (id)propertySetsForPropertyFetchHints:(unint64_t)hints
{
  hintsCopy = hints;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [@"PHMemoryPropertySetIdentifier" length];
  if ((hintsCopy & 1) != 0 && v5)
  {
    [v4 addObject:@"PHMemoryPropertySetIdentifier"];
  }

  v6 = [@"PHMemoryPropertySetCore" length];
  if ((hintsCopy & 2) != 0 && v6)
  {
    [v4 addObject:@"PHMemoryPropertySetCore"];
  }

  v7 = [@"PHMemoryPropertySetUserFeedback" length];
  if ((hintsCopy & 4) != 0 && v7)
  {
    [v4 addObject:@"PHMemoryPropertySetUserFeedback"];
  }

  v8 = [MEMORY[0x1E695DFD8] setWithSet:v4];

  return v8;
}

+ (unint64_t)propertyFetchHintsForPropertySets:(id)sets
{
  setsCopy = sets;
  if ([@"PHMemoryPropertySetIdentifier" length])
  {
    v4 = [setsCopy containsObject:@"PHMemoryPropertySetIdentifier"];
  }

  else
  {
    v4 = 0;
  }

  if ([@"PHMemoryPropertySetCore" length] && objc_msgSend(setsCopy, "containsObject:", @"PHMemoryPropertySetCore"))
  {
    v4 |= 2uLL;
  }

  if ([@"PHMemoryPropertySetUserFeedback" length] && objc_msgSend(setsCopy, "containsObject:", @"PHMemoryPropertySetUserFeedback"))
  {
    v4 |= 4uLL;
  }

  if (![setsCopy containsObject:@"PHMemoryPropertySetIdentifier"])
  {
    v4 |= 2uLL;
  }

  return v4;
}

+ (id)propertySetAccessorsByPropertySet
{
  if (propertySetAccessorsByPropertySet_onceToken_13142 != -1)
  {
    dispatch_once(&propertySetAccessorsByPropertySet_onceToken_13142, &__block_literal_global_982);
  }

  v3 = propertySetAccessorsByPropertySet_accessorByPropertySetName_13143;

  return v3;
}

void __45__PHMemory_propertySetAccessorsByPropertySet__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"PHMemoryPropertySetIdentifier";
  v2[1] = @"PHMemoryPropertySetCore";
  v3[0] = @"self";
  v3[1] = @"self";
  v2[2] = @"PHMemoryPropertySetUserFeedback";
  v3[2] = @"userFeedbackProperties";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = propertySetAccessorsByPropertySet_accessorByPropertySetName_13143;
  propertySetAccessorsByPropertySet_accessorByPropertySetName_13143 = v0;
}

+ (Class)propertySetClassForPropertySet:(id)set
{
  v3 = propertySetClassForPropertySet__onceToken_13145;
  setCopy = set;
  if (v3 != -1)
  {
    dispatch_once(&propertySetClassForPropertySet__onceToken_13145, &__block_literal_global_980);
  }

  v5 = [propertySetClassForPropertySet__propertySetClassByPropertySetName_13146 objectForKey:setCopy];

  return v5;
}

void __43__PHMemory_propertySetClassForPropertySet___block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"PHMemoryPropertySetIdentifier";
  v3[0] = objc_opt_class();
  v2[1] = @"PHMemoryPropertySetCore";
  v3[1] = objc_opt_class();
  v2[2] = @"PHMemoryPropertySetUserFeedback";
  v3[2] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = propertySetClassForPropertySet__propertySetClassByPropertySetName_13146;
  propertySetClassForPropertySet__propertySetClassByPropertySetName_13146 = v0;
}

- (id)userFeedbackProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:4];
  v3 = objc_opt_class();

  return [(PHMemory *)self _createPropertyObjectOfClass:v3];
}

- (id)_createPropertyObjectOfClass:(Class)class preFetchedProperties:(id)properties
{
  propertiesCopy = properties;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__13157;
  v46 = __Block_byref_object_dispose__13158;
  v47 = ph_objc_getAssociatedObject(self, class);
  v7 = v43[5];
  if (!v7)
  {
    keyPathToPrimaryObject = [(objc_class *)class keyPathToPrimaryObject];
    if (propertiesCopy)
    {
      v9 = [[class alloc] initWithFetchDictionary:propertiesCopy memory:self prefetched:1];
      v10 = v43[5];
      v43[5] = v9;
    }

    else
    {
      entityName = [(objc_class *)class entityName];
      v12 = entityName;
      v13 = @"Memory";
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
      v33[2] = __62__PHMemory__createPropertyObjectOfClass_preFetchedProperties___block_invoke;
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

void __62__PHMemory__createPropertyObjectOfClass_preFetchedProperties___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 88) description];
      v9 = [*(a1 + 72) uuid];
      *buf = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch property set %@ data for %@: %@", buf, 0x20u);
    }

    goto LABEL_9;
  }

  v6 = [v4 firstObject];
  if (!v6)
  {
LABEL_9:
    v6 = MEMORY[0x1E695E0F8];
  }

  v10 = [objc_alloc(*(a1 + 88)) initWithFetchDictionary:v6 memory:*(a1 + 72) prefetched:0];
  v11 = *(*(a1 + 80) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (double)currentRelevanceScore
{
  date = [MEMORY[0x1E695DF00] date];
  [(PHMemory *)self relevanceScoreAtDate:date];
  v5 = v4;

  return v5;
}

- (BOOL)isCurrentlyRelevant
{
  date = [MEMORY[0x1E695DF00] date];
  LOBYTE(self) = [(PHMemory *)self isRelevantAtDate:date];

  return self;
}

- (NSDictionary)photosGraphProperties
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_photosGraphProperties)
  {
    if (selfCopy->_photosGraphData)
    {
      v17 = MEMORY[0x1E696ACD0];
      v18 = MEMORY[0x1E695DFD8];
      v3 = objc_opt_class();
      v4 = objc_opt_class();
      v5 = objc_opt_class();
      v6 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = [v18 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
      photosGraphData = selfCopy->_photosGraphData;
      v19 = 0;
      v12 = [v17 unarchivedObjectOfClasses:v10 fromData:photosGraphData error:&v19];
      v13 = v19;
      photosGraphProperties = selfCopy->_photosGraphProperties;
      selfCopy->_photosGraphProperties = v12;

      if (!selfCopy->_photosGraphProperties)
      {
        selfCopy->_photosGraphProperties = MEMORY[0x1E695E0F8];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v13;
          _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error unarchiving photosGraphData from Memory: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      selfCopy->_photosGraphProperties = MEMORY[0x1E695E0F8];
    }
  }

  v15 = selfCopy->_photosGraphProperties;
  objc_sync_exit(selfCopy);

  return v15;
}

- (BOOL)isBadgeable
{
  lastViewedDate = [(PHMemory *)self lastViewedDate];

  if (lastViewedDate || [(PHMemory *)self pendingState]!= 1 || [(PHMemory *)self featuredState]!= 1)
  {
    return 0;
  }

  if ([(PHMemory *)self isStellar])
  {
    return 1;
  }

  return [(PHMemory *)self isMustSee];
}

- (id)presentationHints
{
  v2 = [[PHMemoryPresentationHints alloc] initWithMemory:self];

  return v2;
}

- (id)meaningLabels
{
  photosGraphProperties = [(PHMemory *)self photosGraphProperties];
  v3 = [photosGraphProperties objectForKeyedSubscript:@"info"];

  v4 = [v3 objectForKeyedSubscript:@"meaningLabels"];

  return v4;
}

- (id)moodKeywords
{
  photosGraphProperties = [(PHMemory *)self photosGraphProperties];
  v3 = [photosGraphProperties objectForKeyedSubscript:@"info"];

  v4 = [v3 objectForKeyedSubscript:@"moodKeywords"];

  return v4;
}

- (unint64_t)suggestedMood
{
  photosGraphProperties = [(PHMemory *)self photosGraphProperties];
  v3 = [photosGraphProperties objectForKeyedSubscript:@"info"];

  v4 = [v3 objectForKeyedSubscript:@"suggestedMood"];
  v5 = PHMemoryMoodForString(v4);

  return v5;
}

- (NSString)storyTitleCategory
{
  storyTitleCategory = self->_storyTitleCategory;
  if (!storyTitleCategory)
  {
    [(PHMemory *)self _loadValuesFromPhotosGraphProperties];
    storyTitleCategory = self->_storyTitleCategory;
  }

  return storyTitleCategory;
}

- (int64_t)storyColorGradeKind
{
  result = self->_storyColorGradeKind;
  if (!result)
  {
    [(PHMemory *)self _loadValuesFromPhotosGraphProperties];
    return self->_storyColorGradeKind;
  }

  return result;
}

- (NSArray)triggerTypes
{
  photosGraphProperties = [(PHMemory *)self photosGraphProperties];
  v3 = [photosGraphProperties objectForKeyedSubscript:@"triggerTypes"];

  return v3;
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = PHMemory;
  v3 = [(PHAssetCollection *)&v14 description];
  pendingState = [(PHMemory *)self pendingState];
  creationType = [(PHMemory *)self creationType];
  isFavorite = [(PHMemory *)self isFavorite];
  isUserCreated = [(PHMemory *)self isUserCreated];
  isRejected = [(PHMemory *)self isRejected];
  category = [(PHMemory *)self category];
  subcategory = [(PHMemory *)self subcategory];
  creationDate = [(PHMemory *)self creationDate];
  v11 = [v3 stringByAppendingFormat:@" pendingState:%d, creationType:%d, fav:%d, user:%d, reject:%d [%d/%d - %@], featuredState: %d, syndicatedContentState: %d", pendingState, creationType, isFavorite, isUserCreated, isRejected, category, subcategory, creationDate, -[PHMemory featuredState](self, "featuredState"), -[PHMemory syndicatedContentState](self, "syndicatedContentState")];

  return v11;
}

- (id)_extendedCuratedAssetIDsWithLibrary:(id)library
{
  libraryCopy = library;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13157;
  v25 = __Block_byref_object_dispose__13158;
  v26 = 0;
  v5 = MEMORY[0x1E695D5E0];
  entityName = [MEMORY[0x1E69BE540] entityName];
  v7 = [v5 fetchRequestWithEntityName:entityName];

  v8 = MEMORY[0x1E696AE18];
  objectID = [(PHObject *)self objectID];
  v10 = [v8 predicateWithFormat:@"memoriesBeingExtendedCuratedAssets CONTAINS %@", objectID];
  [v7 setPredicate:v10];

  [v7 setResultType:1];
  [v7 setIncludesPropertyValues:0];
  managedObjectContextForCurrentQueueQoS = [libraryCopy managedObjectContextForCurrentQueueQoS];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__PHMemory__extendedCuratedAssetIDsWithLibrary___block_invoke;
  v16[3] = &unk_1E75AA158;
  v20 = &v21;
  v12 = managedObjectContextForCurrentQueueQoS;
  v17 = v12;
  v13 = v7;
  v18 = v13;
  selfCopy = self;
  [v12 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __48__PHMemory__extendedCuratedAssetIDsWithLibrary___block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v12 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v12];
  v5 = v12;
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (!*(*(a1[7] + 8) + 40))
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[6];
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Can't fetch extended curated asset IDs for %@: %@", buf, 0x16u);
    }

    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = MEMORY[0x1E695E0F0];
  }
}

- (id)_curatedAssetIDsWithLibrary:(id)library
{
  libraryCopy = library;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13157;
  v25 = __Block_byref_object_dispose__13158;
  v26 = 0;
  v5 = MEMORY[0x1E695D5E0];
  entityName = [MEMORY[0x1E69BE540] entityName];
  v7 = [v5 fetchRequestWithEntityName:entityName];

  v8 = MEMORY[0x1E696AE18];
  objectID = [(PHObject *)self objectID];
  v10 = [v8 predicateWithFormat:@"memoriesBeingCuratedAssets CONTAINS %@", objectID];
  [v7 setPredicate:v10];

  [v7 setResultType:1];
  [v7 setIncludesPropertyValues:0];
  managedObjectContextForCurrentQueueQoS = [libraryCopy managedObjectContextForCurrentQueueQoS];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__PHMemory__curatedAssetIDsWithLibrary___block_invoke;
  v16[3] = &unk_1E75AA158;
  v20 = &v21;
  v12 = managedObjectContextForCurrentQueueQoS;
  v17 = v12;
  v13 = v7;
  v18 = v13;
  selfCopy = self;
  [v12 performBlockAndWait:v16];
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __40__PHMemory__curatedAssetIDsWithLibrary___block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v12 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v12];
  v5 = v12;
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (!*(*(a1[7] + 8) + 40))
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[6];
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Can't fetch curated asset IDs for %@: %@", buf, 0x16u);
    }

    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = MEMORY[0x1E695E0F0];
  }
}

- (id)_representativeAndCuratedAssetIDs
{
  if ([(PHMemory *)self isTransient])
  {
    transientRepresentativeAndCuratedAssetIDs = [(PHMemory *)self transientRepresentativeAndCuratedAssetIDs];
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__13157;
    v22 = __Block_byref_object_dispose__13158;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Memory"];
    v5 = MEMORY[0x1E696AE18];
    uuid = [(PHObject *)self uuid];
    v7 = [v5 predicateWithFormat:@"uuid == %@", uuid];
    [v4 setPredicate:v7];

    [v4 setResultType:0];
    [v4 setIncludesPropertyValues:0];
    [v4 setRelationshipKeyPathsForPrefetching:&unk_1F102DF40];
    photoLibrary = [(PHObject *)self photoLibrary];
    managedObjectContextForCurrentQueueQoS = [photoLibrary managedObjectContextForCurrentQueueQoS];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__PHMemory__representativeAndCuratedAssetIDs__block_invoke;
    v13[3] = &unk_1E75AA158;
    v10 = managedObjectContextForCurrentQueueQoS;
    v14 = v10;
    v11 = v4;
    v15 = v11;
    selfCopy = self;
    v17 = &v18;
    [v10 performBlockAndWait:v13];
    transientRepresentativeAndCuratedAssetIDs = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  return transientRepresentativeAndCuratedAssetIDs;
}

void __45__PHMemory__representativeAndCuratedAssetIDs__block_invoke(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v14 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v14];
  v5 = v14;
  if (v4)
  {
    v6 = [v4 firstObject];
    v7 = *(*(a1[7] + 8) + 40);
    v8 = [v6 objectIDsForRelationshipNamed:@"representativeAssets"];
    [v7 addObjectsFromArray:v8];

    v9 = *(*(a1[7] + 8) + 40);
    v10 = [v6 objectIDsForRelationshipNamed:@"curatedAssets"];
    [v9 addObjectsFromArray:v10];

    v11 = *(*(a1[7] + 8) + 40);
    v12 = [v6 objectIDsForRelationshipNamed:@"extendedCuratedAssets"];
    [v11 addObjectsFromArray:v12];
  }

  else
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[6];
      *buf = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Failed to fetch memory and the related asset ids for %@: %@", buf, 0x16u);
    }
  }
}

- (id)predicateForAllMomentsFromRepresentativeAssets
{
  _representativeAndCuratedAssetIDs = [(PHMemory *)self _representativeAndCuratedAssetIDs];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN (%@)", @"assets", _representativeAndCuratedAssetIDs];

  return v3;
}

- (id)predicateForAssetsContainedInMomentsFromRepresentativeAssets
{
  _representativeAndCuratedAssetIDs = [(PHMemory *)self _representativeAndCuratedAssetIDs];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN (%@)", @"moment.assets", _representativeAndCuratedAssetIDs];

  return v3;
}

- (id)predicateForAllAssetsWithLibrary:(id)library
{
  v74[2] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = [(PHMemory *)self _extendedCuratedAssetIDsWithLibrary:libraryCopy];
  if ([v5 count])
  {
    v6 = [(PHMemory *)self _curatedAssetIDsWithLibrary:libraryCopy];
    predicateForAssetsContainedInMomentsFromRepresentativeAssets = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN (%@) OR self IN (%@)", v5, v6];

    if (predicateForAssetsContainedInMomentsFromRepresentativeAssets)
    {
      goto LABEL_41;
    }
  }

  assetListPredicate = [(PHMemory *)self assetListPredicate];
  if (assetListPredicate)
  {
    v9 = assetListPredicate;
    v70 = 0;
    v10 = [MEMORY[0x1E696AE40] propertyListWithData:assetListPredicate options:0 format:0 error:&v70];
    v11 = v70;
    if (!v10)
    {
      predicateForAssetsContainedInMomentsFromRepresentativeAssets = 0;
      goto LABEL_34;
    }

    v12 = [v10 objectForKey:@"albums"];
    v13 = [v10 objectForKey:@"persons"];
    v14 = [v10 objectForKey:@"dateRanges"];
    v59 = v12;
    if (v12)
    {
      predicateForAssetsContainedInMomentsFromRepresentativeAssets = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY albums.uuid IN (%@) OR ANY albums.cloudGUID in (%@)", v12, v12];
    }

    else
    {
      predicateForAssetsContainedInMomentsFromRepresentativeAssets = 0;
    }

    v62 = v11;
    v63 = v10;
    v60 = v14;
    v61 = v13;
    if (!v13)
    {
LABEL_16:
      if (v14)
      {
        v55 = v9;
        v56 = predicateForAssetsContainedInMomentsFromRepresentativeAssets;
        v57 = v5;
        v58 = libraryCopy;
        v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v29 = v14;
        v30 = [v29 countByEnumeratingWithState:&v66 objects:v73 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v67;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v67 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v66 + 1) + 8 * i);
              if ([v34 count] == 2)
              {
                v35 = [v34 objectAtIndex:0];
                v36 = [v34 objectAtIndex:1];
                v37 = [MEMORY[0x1E696AE18] predicateWithFormat:@"dateCreated >= %@ AND dateCreated <= %@", v35, v36];
                [v28 addObject:v37];
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v66 objects:v73 count:16];
          }

          while (v31);
        }

        if ([v28 count])
        {
          v38 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v28];
          v39 = v38;
          v5 = v57;
          v9 = v55;
          v13 = v61;
          if (v56)
          {
            v40 = MEMORY[0x1E696AB28];
            v72[0] = v38;
            v72[1] = v56;
            v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
            predicateForAssetsContainedInMomentsFromRepresentativeAssets = [v40 andPredicateWithSubpredicates:v41];
          }

          else
          {
            predicateForAssetsContainedInMomentsFromRepresentativeAssets = v38;
          }

          libraryCopy = v58;
        }

        else
        {
          v5 = v57;
          libraryCopy = v58;
          predicateForAssetsContainedInMomentsFromRepresentativeAssets = v56;
          v9 = v55;
          v13 = v61;
        }

        v11 = v62;
        v10 = v63;
        v14 = v60;
      }

LABEL_34:
      if (predicateForAssetsContainedInMomentsFromRepresentativeAssets)
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    }

    v15 = v9;
    v16 = [PHFetchOptions fetchOptionsWithPhotoLibrary:libraryCopy orObject:self];
    v17 = [PHPerson fetchPersonsWithLocalIdentifiers:v13 options:v16];
    v18 = [v13 count];
    v19 = [v17 count];
    v20 = v13;
    v21 = MEMORY[0x1E696AE18];
    if (v18 == v19)
    {
      v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K IN (%@)", @"detectedFaces", @"personForFace.personUUID", v20];
      if (predicateForAssetsContainedInMomentsFromRepresentativeAssets)
      {
LABEL_12:
        v23 = MEMORY[0x1E696AB28];
        v74[0] = v22;
        v74[1] = predicateForAssetsContainedInMomentsFromRepresentativeAssets;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
        v25 = v24 = predicateForAssetsContainedInMomentsFromRepresentativeAssets;
        v26 = [v23 andPredicateWithSubpredicates:v25];

        predicateForAssetsContainedInMomentsFromRepresentativeAssets = v26;
LABEL_15:
        v9 = v15;

        v11 = v62;
        v10 = v63;
        v14 = v60;
        v13 = v61;
        goto LABEL_16;
      }
    }

    else
    {
      objectID = [(PHObject *)self objectID];
      v22 = [v21 predicateWithFormat:@"memoriesBeingCuratedAssets CONTAINS %@", objectID];

      if (predicateForAssetsContainedInMomentsFromRepresentativeAssets)
      {
        goto LABEL_12;
      }
    }

    predicateForAssetsContainedInMomentsFromRepresentativeAssets = v22;
    goto LABEL_15;
  }

LABEL_35:
  predicateForAssetsContainedInMomentsFromRepresentativeAssets = [(PHMemory *)self predicateForAssetsContainedInMomentsFromRepresentativeAssets];
  if ([(PHMemory *)self subcategory]== 204 || [(PHMemory *)self subcategory]== 203)
  {
    featuredPersonLocalIdentifiers = [(PHMemory *)self featuredPersonLocalIdentifiers];
    v43 = [PHFetchOptions fetchOptionsWithPhotoLibrary:libraryCopy orObject:self];
    allObjects = [featuredPersonLocalIdentifiers allObjects];
    v45 = [PHPerson fetchPersonsWithLocalIdentifiers:allObjects options:v43];

    v46 = [featuredPersonLocalIdentifiers count];
    if (v46 == [v45 count])
    {
      v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(featuredPersonLocalIdentifiers, "count")}];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __45__PHMemory_predicateForAllAssetsWithLibrary___block_invoke;
      v64[3] = &unk_1E75A58E8;
      v65 = v47;
      objectID2 = v47;
      [featuredPersonLocalIdentifiers enumerateObjectsUsingBlock:v64];
      v49 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K IN (%@)", @"detectedFaces", @"personForFace.personUUID", objectID2];
      v50 = MEMORY[0x1E696AB28];
      v71[0] = v49;
      v71[1] = predicateForAssetsContainedInMomentsFromRepresentativeAssets;
      v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
      v52 = [v50 andPredicateWithSubpredicates:v51];

      predicateForAssetsContainedInMomentsFromRepresentativeAssets = v65;
    }

    else
    {
      v53 = MEMORY[0x1E696AE18];
      objectID2 = [(PHObject *)self objectID];
      v52 = [v53 predicateWithFormat:@"memoriesBeingCuratedAssets CONTAINS %@", objectID2];
    }

    predicateForAssetsContainedInMomentsFromRepresentativeAssets = v52;
  }

LABEL_41:

  return predicateForAssetsContainedInMomentsFromRepresentativeAssets;
}

void __45__PHMemory_predicateForAllAssetsWithLibrary___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [PHObject uuidFromLocalIdentifier:a2];
  [*(a1 + 32) addObject:v3];
}

- (unint64_t)titleFontNameHash
{
  creationDate = [(PHMemory *)self creationDate];
  if (!creationDate)
  {
    v4 = [PHAsset fetchKeyCuratedAssetInAssetCollection:self referenceAsset:0];
    firstObject = [v4 firstObject];

    creationDate = [firstObject creationDate];
  }

  v6 = [PHAssetCollection titleFontNameHashFromDate:creationDate];
  title = [(PHAssetCollection *)self title];
  v8 = [PHAssetCollection titleFontNameHashFromHash:v6 andHash:[PHAssetCollection titleFontNameHashFromString:title]];

  return v8;
}

- (id)titleFontName
{
  titleFontName = self->_titleFontName;
  if (!titleFontName)
  {
    movieData = [(PHMemory *)self movieData];
    v5 = [objc_opt_class() titleFontNameFromMovieData:movieData];
    v6 = self->_titleFontName;
    self->_titleFontName = v5;

    if (!self->_titleFontName)
    {
      v10.receiver = self;
      v10.super_class = PHMemory;
      titleFontName = [(PHAssetCollection *)&v10 titleFontName];
      v8 = self->_titleFontName;
      self->_titleFontName = titleFontName;
    }

    titleFontName = self->_titleFontName;
  }

  return titleFontName;
}

- (BOOL)hasBlockableFeature
{
  blockableFeatures = [(PHMemory *)self blockableFeatures];
  v3 = [blockableFeatures count] != 0;

  return v3;
}

- (NSArray)blockableFeatures
{
  v21 = *MEMORY[0x1E69E9840];
  photosGraphProperties = [(PHMemory *)self photosGraphProperties];
  if (photosGraphProperties)
  {
    v15 = photosGraphProperties;
    v4 = [photosGraphProperties objectForKeyedSubscript:@"blacklistableFeatures"];
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          photoLibrary = [(PHObject *)self photoLibrary];
          v13 = [PHMemoryFeature memoryFeatureWithData:v11 photoLibrary:photoLibrary];

          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    photosGraphProperties = v15;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (BOOL)isContiguous
{
  photosGraphProperties = [(PHMemory *)self photosGraphProperties];
  v3 = photosGraphProperties;
  if (photosGraphProperties)
  {
    v4 = [photosGraphProperties objectForKeyedSubscript:@"info"];
    v5 = [v4 objectForKeyedSubscript:@"sourceTypeEnum"];

    if (v5)
    {
      unsignedIntegerValue = [v5 unsignedIntegerValue];
    }

    else
    {
      v8 = [v3 objectForKeyedSubscript:@"info"];
      v9 = [v8 objectForKeyedSubscript:@"sourceType"];

      if (v9)
      {
        if ([v9 isEqualToString:@"Moment"])
        {
          unsignedIntegerValue = 1;
        }

        else if ([v9 isEqualToString:@"Contiguous Moments"])
        {
          unsignedIntegerValue = 2;
        }

        else
        {
          unsignedIntegerValue = 0;
        }
      }

      else
      {
        unsignedIntegerValue = 0;
      }
    }

    v7 = (unsignedIntegerValue - 1) < 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSSet)featuredPersonLocalIdentifiers
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  photosGraphProperties = [(PHMemory *)self photosGraphProperties];
  if (!photosGraphProperties)
  {
    goto LABEL_23;
  }

  [(PHMemory *)self photosGraphVersion];
  v5 = PLMemoriesAlgorithmsVersionFromPhotosGraphVersion();
  if (v5 < 0x101)
  {
    v16 = [photosGraphProperties objectForKeyedSubscript:@"featureVector"];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 objectForKeyedSubscript:@"people"];
      v19 = v18;
      if (v18 && [v18 count])
      {
        v20 = [MEMORY[0x1E695DFA8] setWithArray:v19];
LABEL_22:
        v21 = v20;

        v3 = v21;
        goto LABEL_23;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = [MEMORY[0x1E695DFA8] set];
    goto LABEL_22;
  }

  if (v5 == 257)
  {
    v6 = @"featureVector";
  }

  else
  {
    v6 = @"featureVector_v2";
  }

  [photosGraphProperties objectForKeyedSubscript:v6];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v26 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        firstObject = [v12 firstObject];
        v14 = [firstObject isEqualToString:@"People"];

        if (v14)
        {
          lastObject = [v12 lastObject];
          [v3 addObject:lastObject];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

LABEL_23:

  return v3;
}

- (void)_loadValuesFromPhotosGraphProperties
{
  if (!self->_didLoadPhotosGraphProperties)
  {
    photosGraphProperties = [(PHMemory *)self photosGraphProperties];
    v3 = [photosGraphProperties objectForKeyedSubscript:@"titleCategory"];
    self->_titleCategory = [v3 integerValue];

    if (!self->_storyTitleCategory)
    {
      v4 = [photosGraphProperties objectForKeyedSubscript:@"storyTitleCategory"];
      storyTitleCategory = self->_storyTitleCategory;
      self->_storyTitleCategory = v4;
    }

    v6 = photosGraphProperties;
    if (!self->_storyColorGradeKind)
    {
      v7 = [photosGraphProperties objectForKeyedSubscript:@"storyColorGradeKind"];
      self->_storyColorGradeKind = [v7 integerValue];

      v6 = photosGraphProperties;
      if (!self->_storyColorGradeKind)
      {
        v8 = [photosGraphProperties objectForKeyedSubscript:@"storyColorGradeCategory"];
        self->_storyColorGradeKind = PFStoryColorGradeKindDefaultForColorGradeCategory();

        v6 = photosGraphProperties;
      }
    }

    self->_didLoadPhotosGraphProperties = 1;
  }
}

- (PHMemory)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  libraryCopy = library;
  v62.receiver = self;
  v62.super_class = PHMemory;
  v10 = [(PHAssetCollection *)&v62 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:libraryCopy];
  if (v10)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"photosGraphVersion"];
    v10->_photosGraphVersion = [v11 longLongValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"category"];
    v10->_category = PHMemoryValidatedMemoryCategory([v12 intValue]);

    v13 = [dictionaryCopy objectForKeyedSubscript:@"subcategory"];
    v10->_subcategory = PHMemoryValidatedMemorySubcategory([v13 intValue]);

    v14 = [dictionaryCopy objectForKeyedSubscript:@"creationDate"];
    creationDate = v10->_creationDate;
    v10->_creationDate = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"movieAssetState"];
    movieAssetState = v10->_movieAssetState;
    v10->_movieAssetState = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"movieData"];
    movieData = v10->_movieData;
    v10->_movieData = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"photosGraphData"];
    photosGraphData = v10->_photosGraphData;
    v10->_photosGraphData = v20;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"rejected"];
    v10->_rejected = [v22 BOOLValue];

    v23 = [dictionaryCopy objectForKeyedSubscript:@"favorite"];
    v10->_favorite = [v23 BOOLValue];

    v24 = [dictionaryCopy objectForKeyedSubscript:@"pendingState"];
    v10->_pendingState = [v24 intValue];

    v25 = [dictionaryCopy objectForKeyedSubscript:@"creationType"];
    v10->_creationType = [v25 intValue];

    v26 = [dictionaryCopy objectForKeyedSubscript:@"syndicatedContentState"];
    v10->_syndicatedContentState = [v26 intValue];

    v27 = [dictionaryCopy objectForKeyedSubscript:@"userActionOptions"];
    v10->_userActionOptions = [v27 intValue];

    v10->_userCreated = [MEMORY[0x1E69BE5A8] isUserCreatedMemoryWithUserActionOptions:v10->_userActionOptions];
    v28 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    localizedSubtitle = v10->_localizedSubtitle;
    v10->_localizedSubtitle = v28;

    v30 = [dictionaryCopy objectForKeyedSubscript:@"graphMemoryIdentifier"];
    graphMemoryIdentifier = v10->_graphMemoryIdentifier;
    v10->_graphMemoryIdentifier = v30;

    v32 = [dictionaryCopy objectForKeyedSubscript:@"storyColorGradeKind"];
    v10->_storyColorGradeKind = [v32 intValue];

    v33 = [dictionaryCopy objectForKeyedSubscript:@"storySerializedTitleCategory"];
    [v33 intValue];
    v34 = PFStoryValidatedTitleCategory();
    storyTitleCategory = v10->_storyTitleCategory;
    v10->_storyTitleCategory = v34;

    v36 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    [v36 doubleValue];
    v10->_score = v37;

    v38 = [dictionaryCopy objectForKeyedSubscript:@"lastViewedDate"];
    lastViewedDate = v10->_lastViewedDate;
    v10->_lastViewedDate = v38;

    v40 = [dictionaryCopy objectForKeyedSubscript:@"lastMoviePlayedDate"];
    lastMoviePlayedDate = v10->_lastMoviePlayedDate;
    v10->_lastMoviePlayedDate = v40;

    v42 = [dictionaryCopy objectForKeyedSubscript:@"lastEnrichmentDate"];
    lastEnrichmentDate = v10->_lastEnrichmentDate;
    v10->_lastEnrichmentDate = v42;

    v44 = [dictionaryCopy objectForKeyedSubscript:@"assetListPredicate"];
    assetListPredicate = v10->_assetListPredicate;
    v10->_assetListPredicate = v44;

    v46 = [dictionaryCopy objectForKeyedSubscript:@"notificationState"];
    v10->_notificationState = [v46 intValue];

    v47 = [dictionaryCopy objectForKeyedSubscript:@"featuredState"];
    v10->_featuredState = [v47 intValue];

    v48 = [dictionaryCopy objectForKeyedSubscript:@"blacklistedFeature"];
    if (v48)
    {
      v49 = [PHMemoryFeature memoryFeatureWithData:v48 photoLibrary:libraryCopy];
    }

    else
    {
      v49 = 0;
    }

    objc_storeStrong(&v10->_blacklistedFeature, v49);
    if (v48)
    {
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"playCount"];
    v10->_syncedPlayCount = [v50 longLongValue];

    v51 = [dictionaryCopy objectForKeyedSubscript:@"shareCount"];
    v10->_syncedShareCount = [v51 longLongValue];

    v52 = [dictionaryCopy objectForKeyedSubscript:@"viewCount"];
    v10->_syncedViewCount = [v52 longLongValue];

    v53 = [dictionaryCopy objectForKeyedSubscript:@"pendingPlayCount"];
    v10->_pendingPlayCount = [v53 longLongValue];

    v54 = [dictionaryCopy objectForKeyedSubscript:@"pendingShareCount"];
    v10->_pendingShareCount = [v54 longLongValue];

    v55 = [dictionaryCopy objectForKeyedSubscript:@"pendingViewCount"];
    v10->_pendingViewCount = [v55 longLongValue];

    v10->super._assetCollectionType = 4;
    v56 = [dictionaryCopy objectForKeyedSubscript:@"sharingComposition"];
    v10->_sharingComposition = [v56 unsignedIntegerValue];

    v57 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
    startDate = v10->super._startDate;
    v10->super._startDate = v57;

    v59 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
    endDate = v10->super._endDate;
    v10->super._endDate = v59;
  }

  return v10;
}

- (id)movieStateDataForAsset:(id)asset
{
  movieAssetState = self->_movieAssetState;
  uuid = [asset uuid];
  v5 = [(NSDictionary *)movieAssetState objectForKey:uuid];

  return v5;
}

+ (id)memoriesWithBlockedPersonFeatureInPhotoLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setChunkSizeForFetch:200];
  [librarySpecificFetchOptions setCacheSizeForFetch:200];
  v5 = [self fetchBlockedMemoriesWithOptions:librarySpecificFetchOptions];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PHMemory_memoriesWithBlockedPersonFeatureInPhotoLibrary___block_invoke;
  v10[3] = &unk_1E75A5910;
  v11 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:v10];
  allObjects = [v7 allObjects];

  return allObjects;
}

void __59__PHMemory_memoriesWithBlockedPersonFeatureInPhotoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 blacklistedFeature];
  v4 = [v3 type];

  if (v4 == 1)
  {
    [*(a1 + 32) addObject:v5];
  }
}

+ (id)blockedPersonLocalIdentifiersInPhotoLibrary:(id)library
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [self memoriesWithBlockedPersonFeatureInPhotoLibrary:library];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        blacklistedFeature = [*(*(&v13 + 1) + 8 * i) blacklistedFeature];
        personLocalIdentifier = [blacklistedFeature personLocalIdentifier];
        [v4 addObject:personLocalIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)fetchMostRelevantMemoryWithOptions:(id)options
{
  v3 = MEMORY[0x1E695DF00];
  optionsCopy = options;
  date = [v3 date];
  v6 = [PHMemory fetchMostRelevantMemoryAtDate:date options:optionsCopy];

  return v6;
}

+ (unint64_t)_contextualScoreForMemory:(id)memory
{
  memoryCopy = memory;
  if ([memoryCopy subcategory] == 210)
  {
    v4 = 9;
    goto LABEL_3;
  }

  category = [memoryCopy category];
  if (category <= 211)
  {
    if (category > 208)
    {
      if (category == 209)
      {
        v4 = 3;
        goto LABEL_3;
      }

      if (category == 210)
      {
        v4 = 2;
        goto LABEL_3;
      }
    }

    else
    {
      if (category == 101)
      {
        v4 = 4;
        goto LABEL_3;
      }

      if (category == 202)
      {
        v4 = 6;
        goto LABEL_3;
      }
    }

LABEL_22:
    v4 = 0;
    goto LABEL_3;
  }

  if (category > 213)
  {
    if (category == 214)
    {
      v4 = 1;
      goto LABEL_3;
    }

    if (category == 216)
    {
      v4 = 5;
      goto LABEL_3;
    }

    goto LABEL_22;
  }

  if (category == 212)
  {
    v4 = 8;
  }

  else
  {
    v4 = 7;
  }

LABEL_3:

  return v4;
}

+ (id)fetchBestRecentMemoryWithOptions:(id)options
{
  v73[4] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  date = [MEMORY[0x1E695DF00] date];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [currentCalendar startOfDayForDate:date];

  v57 = v7;
  v58 = date;
  if (!optionsCopy)
  {
    v8 = objc_opt_new();
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(creationDate >= %@) && (creationDate <= %@)", v7, date];
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (category IN %@)", &unk_1F102DF58];
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (subcategory IN %@)", &unk_1F102DF70];
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(photosGraphVersion & %d) >= %d", 0xFFFFLL, 512];
    v13 = MEMORY[0x1E696AB28];
    v73[0] = v9;
    v73[1] = v10;
    v73[2] = v11;
    v73[3] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
    v15 = [v13 andPredicateWithSubpredicates:v14];

    [v8 setInternalPredicate:v15];
    [v8 setIncludePendingMemories:1];
    v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v72 = v16;
    optionsCopy = v8;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
    [v8 setSortDescriptors:v17];

    v7 = v57;
    date = v58;
  }

  v18 = [(PHAssetCollection *)PHMemory fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:optionsCopy];
  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v61 objects:v71 count:16];
  obj = v19;
  if (v20)
  {
    v21 = v20;
    v56 = optionsCopy;
    v22 = 0;
    firstObject = 0;
    v24 = *v62;
    v25 = 0x8000000000000000;
    v26 = -3.4028e38;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v62 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v61 + 1) + 8 * i);
        creationDate = [v28 creationDate];
        if (v22 && ![currentCalendar2 isDate:v22 inSameDayAsDate:creationDate])
        {

          goto LABEL_21;
        }

        v30 = [self _contextualScoreForMemory:v28];
        [v28 score];
        v32 = v31;
        if (v25 < v30 || (v25 == v30 ? (v33 = v26 < v32) : (v33 = 0), v33))
        {
          v34 = v28;

          v35 = creationDate;
          v22 = v35;
          v26 = v32;
          v25 = v30;
          firstObject = v34;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }

LABEL_21:
    v36 = obj;

    if (firstObject)
    {
      v37 = PLPhotoKitGetLog();
      v7 = v57;
      date = v58;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v67 = "+[PHMemory fetchBestRecentMemoryWithOptions:]";
        v68 = 2112;
        v69 = firstObject;
        _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_DEFAULT, "%s: Returning memory %@", buf, 0x16u);
      }

      optionsCopy = v56;
LABEL_42:

      goto LABEL_43;
    }

    optionsCopy = v56;
    v7 = v57;
    date = v58;
  }

  else
  {

    v22 = 0;
  }

  photoLibrary = [optionsCopy photoLibrary];
  v39 = [PHFetchOptions fetchOptionsWithPhotoLibrary:photoLibrary orObject:0];

  [v39 setFetchLimit:1];
  v40 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v70 = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  [v39 setSortDescriptors:v41];

  v42 = MEMORY[0x1E696AE18];
  date2 = [MEMORY[0x1E695DF00] date];
  v44 = [v42 predicateWithFormat:@"relevantUntilDate > %@ && type == %d", date2, 4];
  [v39 setPredicate:v44];

  v45 = [PHSuggestion fetchSuggestionsWithOptions:v39];
  if ([v45 count])
  {
    firstObject = [v45 firstObject];
    v46 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v67 = "+[PHMemory fetchBestRecentMemoryWithOptions:]";
      v68 = 2112;
      v69 = firstObject;
      _os_log_impl(&dword_19C86F000, v46, OS_LOG_TYPE_DEFAULT, "%s: Returning on-this-day suggestion %@", buf, 0x16u);
    }

    if (firstObject)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  photoLibrary2 = [optionsCopy photoLibrary];
  v48 = [PHFetchOptions fetchOptionsWithPhotoLibrary:photoLibrary2 orObject:0];

  [v48 setFetchLimit:1];
  v49 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v65 = v49;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
  [v48 setSortDescriptors:v50];

  v51 = [MEMORY[0x1E696AE18] predicateWithFormat:@"creationDate >= %@ && creationDate <= %@ && (subtype == %d || subtype == %d)", v7, date, 304, 305];
  [v48 setPredicate:v51];

  v52 = [PHSuggestion fetchSuggestionsWithOptions:v48];
  if (![v52 count])
  {

LABEL_39:
    v37 = PLPhotoKitGetLog();
    v36 = obj;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v67 = "+[PHMemory fetchBestRecentMemoryWithOptions:]";
      _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_DEFAULT, "%s: No memory or suggestion found", buf, 0xCu);
    }

    firstObject = 0;
    goto LABEL_42;
  }

  firstObject = [v52 firstObject];
  v53 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v67 = "+[PHMemory fetchBestRecentMemoryWithOptions:]";
    v68 = 2112;
    v69 = firstObject;
    _os_log_impl(&dword_19C86F000, v53, OS_LOG_TYPE_DEFAULT, "%s: Returning person centric suggestion %@", buf, 0x16u);
  }

  if (!firstObject)
  {
    goto LABEL_39;
  }

LABEL_37:
  v36 = obj;
LABEL_43:
  v54 = firstObject;

  return firstObject;
}

+ (id)stringForTriggerType:(unint64_t)type
{
  if (type > 0x1B)
  {
    return @"??";
  }

  else
  {
    return off_1E75A5988[type];
  }
}

+ (BOOL)isTriggeredMemoryCategory:(unint64_t)category
{
  v8 = *MEMORY[0x1E69E9840];
  result = 1;
  if (category <= 200)
  {
    if (category <= 0x20)
    {
      if (((1 << category) & 0x7FBFFFFE) != 0)
      {
        return result;
      }

      if (((1 << category) & 0x180000000) != 0)
      {
        return 0;
      }
    }

    if (category - 101 < 2)
    {
      return result;
    }

    if (category == 100)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (category - 201 < 0x15)
  {
    return result;
  }

  if (category - 301 >= 2 && category != 401)
  {
LABEL_11:
    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      categoryCopy = category;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEFAULT, "Invalid memory category %lu", &v6, 0xCu);
    }
  }

  return 0;
}

+ (id)stringForFeaturedState:(int64_t)state
{
  if ((state + 1) > 3)
  {
    return @"Unsupported Featured State";
  }

  else
  {
    return off_1E75A5968[state + 1];
  }
}

+ (id)stringForNotificationState:(unint64_t)state
{
  if (state > 2)
  {
    return @"Unsupported Notification State";
  }

  else
  {
    return off_1E75A5950[state];
  }
}

+ (id)stringForSubcategory:(unint64_t)subcategory
{
  if (subcategory > 300)
  {
    if (subcategory > 403)
    {
      if (subcategory > 1001)
      {
        switch(subcategory)
        {
          case 0x3EAuLL:
            return @"Story VisualClusterBased";
          case 0x3EBuLL:
            return @"Story VisualClusterBasedChronologica";
          case 0x44CuLL:
            return @"Story LastResort";
        }
      }

      else
      {
        switch(subcategory)
        {
          case 0x194uLL:
            return @"Place Area";
          case 0x3E8uLL:
            return @"Story Montage";
          case 0x3E9uLL:
            return @"Story Chronological";
        }
      }
    }

    else
    {
      if (subcategory > 400)
      {
        if (subcategory == 401)
        {
          return @"Place Region";
        }

        if (subcategory == 402)
        {
          return @"Place Location";
        }

        return @"Place Business";
      }

      switch(subcategory)
      {
        case 0x12DuLL:
          return @"Contextual Location";
        case 0x12EuLL:
          return @"Contextual People";
        case 0x12FuLL:
          return @"Contextual Location and People";
      }
    }

    return @"Unsupported Subcategory";
  }

  if (subcategory <= 102)
  {
    switch(subcategory)
    {
      case 0uLL:
        return @"None";
      case 0x65uLL:
        return @"Event People";
      case 0x66uLL:
        return @"Event Holiday";
    }

    return @"Unsupported Subcategory";
  }

  switch(subcategory)
  {
    case 0xC9uLL:
      result = @"Featured Neighbor";
      break;
    case 0xCAuLL:
      result = @"Featured People";
      break;
    case 0xCBuLL:
      result = @"Featured Social Group";
      break;
    case 0xCCuLL:
      result = @"Featured Person";
      break;
    case 0xCDuLL:
      result = @"Featured Trip";
      break;
    case 0xCEuLL:
      result = @"Featured Weekend";
      break;
    case 0xCFuLL:
      result = @"Featured Some Time";
      break;
    case 0xD0uLL:
      result = @"Featured Place";
      break;
    case 0xD1uLL:
      result = @"Featured Special Event";
      break;
    case 0xD2uLL:
      result = @"Featured Birthday";
      break;
    case 0xD3uLL:
      result = @"Featured Past Superset";
      break;
    case 0xD4uLL:
      result = @"Featured Pet";
      break;
    case 0xD5uLL:
      result = @"Featured Meaningful Event";
      break;
    case 0xD6uLL:
      result = @"Featured Meaningful Event Aggregate";
      break;
    case 0xD7uLL:
      result = @"Featured Recurrent Trip";
      break;
    case 0xD8uLL:
      result = @"Featured People Visiting";
      break;
    case 0xD9uLL:
      result = @"Featured Baby";
      break;
    case 0xDAuLL:
      result = @"Featured Foodie";
      break;
    default:
      if (subcategory != 103)
      {
        return @"Unsupported Subcategory";
      }

      result = @"Event Calendar";
      break;
  }

  return result;
}

+ (id)stringForCategory:(unint64_t)category
{
  if (category > 100)
  {
    if (category > 300)
    {
      switch(category)
      {
        case 0x12DuLL:
          return @"Featured";
        case 0x12EuLL:
          return @"Place";
        case 0x191uLL:
          return @"Blocked";
        default:
          return @"Unsupported Category";
      }
    }

    else
    {
      switch(category)
      {
        case 0xC9uLL:
          result = @"Year Summary";
          break;
        case 0xCAuLL:
          result = @"Day in History";
          break;
        case 0xCBuLL:
          result = @"Last Weekend";
          break;
        case 0xCCuLL:
          result = @"Last Week";
          break;
        case 0xCDuLL:
          result = @"This Week";
          break;
        case 0xCEuLL:
          result = @"Same Day";
          break;
        case 0xCFuLL:
          result = @"Same Weekend";
          break;
        case 0xD0uLL:
          result = @"Week in History";
          break;
        case 0xD1uLL:
          result = @"Recent Past Event";
          break;
        case 0xD2uLL:
          result = @"Upcoming Related Event";
          break;
        case 0xD3uLL:
          result = @"Best of Past";
          break;
        case 0xD4uLL:
          result = @"Celebrated Holiday in History";
          break;
        case 0xD5uLL:
          result = @"Holiday in History";
          break;
        case 0xD6uLL:
          result = @"Throwback Thursday";
          break;
        case 0xD7uLL:
          result = @"Celebration Over Time";
          break;
        case 0xD8uLL:
          result = @"This Season";
          break;
        case 0xD9uLL:
          result = @"Season in History";
          break;
        case 0xDAuLL:
          result = @"Key People for Upcoming Holiday Event";
          break;
        case 0xDBuLL:
          result = @"Early moments with People";
          break;
        case 0xDCuLL:
          result = @"People over Time";
          break;
        case 0xDDuLL:
          result = @"Home Aggregation";
          break;
        default:
          if (category == 101)
          {
            result = @"Contextual";
          }

          else
          {
            if (category != 102)
            {
              return @"Unsupported Category";
            }

            result = @"Nearby Today";
          }

          break;
      }
    }
  }

  else
  {
    result = @"Unknown";
    switch(category)
    {
      case 0uLL:
        return result;
      case 1uLL:
        result = @"Single Moment";
        break;
      case 2uLL:
        result = @"Person Over Time";
        break;
      case 3uLL:
        result = @"Person";
        break;
      case 4uLL:
        result = @"Early Moments With Person";
        break;
      case 5uLL:
        result = @"Social Group Over Time";
        break;
      case 6uLL:
        result = @"Social Group";
        break;
      case 7uLL:
        result = @"Last Month At Home";
        break;
      case 8uLL:
        result = @"Year In Review";
        break;
      case 9uLL:
        result = @"Foodie";
        break;
      case 0xAuLL:
        result = @"Pet";
        break;
      case 0xBuLL:
        result = @"Baby";
        break;
      case 0xCuLL:
        result = @"City Location";
        break;
      case 0xDuLL:
        result = @"Region Location";
        break;
      case 0xEuLL:
        result = @"Area Location";
        break;
      case 0xFuLL:
        result = @"Business Location";
        break;
      case 0x10uLL:
        result = @"Meaningful Event";
        break;
      case 0x11uLL:
        result = @"Meaningful Event Aggregation";
        break;
      case 0x12uLL:
        result = @"Recurrent Trip";
        break;
      case 0x13uLL:
        result = @"Trip";
        break;
      case 0x14uLL:
        result = @"Past Superset";
        break;
      case 0x15uLL:
        result = @"Season";
        break;
      case 0x16uLL:
        return @"Unsupported Category";
      case 0x17uLL:
        result = @"Day In History Aggregation";
        break;
      case 0x18uLL:
        result = @"Recent Highlights";
        break;
      case 0x19uLL:
        result = @"Child Activity";
        break;
      case 0x1AuLL:
        result = @"Exciting Moments";
        break;
      case 0x1BuLL:
        result = @"Trends";
        break;
      case 0x1CuLL:
        result = @"Pet Outdoor";
        break;
      case 0x1DuLL:
        result = @"Child And Person";
        break;
      case 0x1EuLL:
        result = @"Child Outdoor";
        break;
      case 0x1FuLL:
        result = @"Ongoing Trip";
        break;
      case 0x20uLL:
        result = @"Story";
        break;
      default:
        if (category != 100)
        {
          return @"Unsupported Category";
        }

        result = @"Content Creation Tool";
        break;
    }
  }

  return result;
}

+ (id)assetListPredicateFromQueryHintObjects:(id)objects
{
  v34 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = objectsCopy;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    v10 = off_1E75A1000;
    v25 = v6;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          uuid = v12;
          if ([uuid assetCollectionType] == 1 && (objc_msgSend(uuid, "assetCollectionSubtype") == 2 || objc_msgSend(uuid, "assetCollectionSubtype") == 5))
          {
            cloudGUID = [uuid cloudGUID];
            if (cloudGUID || ([uuid uuid], (cloudGUID = objc_claimAutoreleasedReturnValue()) != 0))
            {
              startDate = cloudGUID;
              [array addObject:cloudGUID];
              goto LABEL_18;
            }
          }

          goto LABEL_19;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          uuid = [v12 uuid];
          [array2 addObject:uuid];
          goto LABEL_19;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          uuid = v12;
          if ([uuid collectionListSubtype] == 2)
          {
            startDate = [uuid startDate];
            [uuid endDate];
            v16 = array2;
            v18 = v17 = array;
            v32[0] = startDate;
            v32[1] = v18;
            [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
            v20 = v19 = v10;
            [array3 addObject:v20];

            v10 = v19;
            array = v17;
            array2 = v16;
            v6 = v25;
LABEL_18:
          }

LABEL_19:

          goto LABEL_20;
        }

        objc_opt_class();
        objc_opt_isKindOfClass();
LABEL_20:
        ++v11;
      }

      while (v8 != v11);
      v21 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      v8 = v21;
    }

    while (v21);
  }

  if ([array count])
  {
    [dictionary setObject:array forKey:@"albums"];
  }

  if ([array2 count])
  {
    [dictionary setObject:array2 forKey:@"persons"];
  }

  if ([array3 count])
  {
    [dictionary setObject:array3 forKey:@"dateRanges"];
  }

  if (![dictionary count] || (v27 = 0, objc_msgSend(MEMORY[0x1E696AE40], "dataWithPropertyList:format:options:error:", dictionary, 200, 0, &v27), (data = objc_claimAutoreleasedReturnValue()) == 0))
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  return data;
}

+ (id)titleFontNameFromMovieData:(id)data
{
  v12 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v9 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:&v9];
    v5 = v9;
    if (v4)
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleFontName"];
    }

    else
    {
      v7 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, "Error while decoding movieData: %@", buf, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)movieDataWithTitleFontName:(id)name
{
  v3 = MEMORY[0x1E696ACC8];
  nameCopy = name;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:nameCopy forKey:@"titleFontName"];

  encodedData = [v5 encodedData];

  return encodedData;
}

+ (id)fetchMemoriesWithGraphMemoryIdentifiers:(id)identifiers options:(id)options
{
  if (options)
  {
    identifiersCopy = identifiers;
    v7 = [options copy];
  }

  else
  {
    identifiersCopy2 = identifiers;
    v7 = objc_alloc_init(PHFetchOptions);
  }

  v9 = v7;
  [(PHFetchOptions *)v7 setIncludeRejectedMemories:1];
  identifiers = [MEMORY[0x1E696AE18] predicateWithFormat:@"graphMemoryIdentifier IN %@", identifiers];

  [(PHFetchOptions *)v9 setInternalPredicate:identifiers];
  [(PHFetchOptions *)v9 setIsExclusivePredicate:1];
  v11 = [(PHAssetCollection *)PHMemory fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v9];

  return v11;
}

+ (id)fetchMemoryWithGraphMemoryIdentifier:(id)identifier options:(id)options
{
  if (options)
  {
    identifierCopy = identifier;
    v7 = [options copy];
  }

  else
  {
    identifierCopy2 = identifier;
    v7 = objc_alloc_init(PHFetchOptions);
  }

  v9 = v7;
  [(PHFetchOptions *)v7 setIncludeLocalMemories:1];
  [(PHFetchOptions *)v9 setIncludeRejectedMemories:1];
  identifier = [MEMORY[0x1E696AE18] predicateWithFormat:@"graphMemoryIdentifier == %@", identifier];

  [(PHFetchOptions *)v9 setInternalPredicate:identifier];
  [(PHFetchOptions *)v9 setIsExclusivePredicate:1];
  [(PHFetchOptions *)v9 setFetchLimit:1];
  v11 = [(PHAssetCollection *)PHMemory fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v9];

  return v11;
}

+ (id)fetchMemoriesWithNilLastEnrichmentDateWithOptions:(id)options
{
  if (options)
  {
    v3 = [options copy];
  }

  else
  {
    v3 = objc_alloc_init(PHFetchOptions);
  }

  v4 = v3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"lastEnrichmentDate == nil"];
  [(PHFetchOptions *)v4 setInternalPredicate:v5];

  [(PHFetchOptions *)v4 setIsExclusivePredicate:1];
  v6 = [(PHAssetCollection *)PHMemory fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v4];

  return v6;
}

+ (id)fetchMemoriesWithUserFeedbackWithOptions:(id)options
{
  if (options)
  {
    v3 = [options copy];
  }

  else
  {
    v3 = objc_alloc_init(PHFetchOptions);
  }

  v4 = v3;
  [(PHFetchOptions *)v3 setIncludeRejectedMemories:1];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"userFeedbacks.@count > 0"];
  [(PHFetchOptions *)v4 setInternalPredicate:v5];

  v6 = [(PHAssetCollection *)PHMemory fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v4];

  return v6;
}

+ (id)fetchMemoriesWithLocalIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__PHMemory_fetchMemoriesWithLocalIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = identifiersCopy;
  v6 = identifiersCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __54__PHMemory_fetchMemoriesWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForMemoriesWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchBlockedMemoriesWithOptions:(id)options
{
  if (options)
  {
    v3 = [options copy];
  }

  else
  {
    v3 = objc_alloc_init(PHFetchOptions);
  }

  v4 = v3;
  [(PHFetchOptions *)v3 setIncludeRejectedMemories:1];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"blacklistedFeature != nil"];
  [(PHFetchOptions *)v4 setInternalPredicate:v5];
  v6 = [(PHAssetCollection *)PHMemory fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v4];

  return v6;
}

+ (id)fetchPredicateFromUserCreatedComparisonPredicate:(id)predicate
{
  v16[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
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

  if ([keyPath isEqualToString:@"userCreated"] && !objc_msgSend(rightExpression, "expressionType"))
  {
    constantValue = [rightExpression constantValue];
    if ([constantValue BOOLValue])
    {
      v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"userActionOptions", 1];
      v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"userActionOptions", 3];
      v12 = MEMORY[0x1E696AB28];
      v16[0] = v10;
      v13 = v16;
    }

    else
    {
      v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"userActionOptions", 0];
      v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"userActionOptions", 2];
      v12 = MEMORY[0x1E696AB28];
      v15 = v10;
      v13 = &v15;
    }

    v13[1] = v11;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    v7 = [v12 orPredicateWithSubpredicates:v14];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fetchPredicateFromComparisonPredicate:(id)predicate options:(id)options
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___PHMemory;
  v7 = objc_msgSendSuper2(&v9, sel_fetchPredicateFromComparisonPredicate_options_, predicateCopy, options);
  if (!v7)
  {
    v7 = [self fetchPredicateFromUserCreatedComparisonPredicate:predicateCopy];
  }

  return v7;
}

+ (id)transformValueExpression:(id)expression forKeyPath:(id)path
{
  expressionCopy = expression;
  pathCopy = path;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PHMemory_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transformValueExpression_forKeyPath__onceToken_13427 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_13427, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_13428 containsObject:pathCopy])
  {
    v8 = expressionCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __48__PHMemory_transformValueExpression_forKeyPath___block_invoke()
{
  v4[26] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"localizedTitle";
  v4[1] = @"title";
  v4[2] = @"localizedSubtitle";
  v4[3] = @"subtitle";
  v4[4] = @"graphMemoryIdentifier";
  v4[5] = @"storyColorGradeKind";
  v4[6] = @"storyTitleCategory";
  v4[7] = @"creationDate";
  v4[8] = @"photosGraphVersion";
  v4[9] = @"rejected";
  v4[10] = @"favorite";
  v4[11] = @"pendingState";
  v4[12] = @"creationType";
  v4[13] = @"syndicatedContentState";
  v4[14] = @"subcategory";
  v4[15] = @"uuid";
  v4[16] = @"score";
  v4[17] = @"notificationState";
  v4[18] = @"featuredState";
  v4[19] = @"blacklistedFeature";
  v4[20] = @"category";
  v4[21] = @"lastViewedDate";
  v4[22] = @"viewCount";
  v4[23] = @"sharingComposition";
  v4[24] = @"startDate";
  v4[25] = @"endDate";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:26];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_13428;
  transformValueExpression_forKeyPath___passThroughSet_13428 = v2;
}

+ (id)fetchPredicateForSharingFilter:(unsigned __int16)filter
{
  if (!filter)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"sharingComposition", filter, v3];

    return v5;
  }

  if (filter == 1)
  {
    *&filter = 1;
    goto LABEL_4;
  }

  v5 = 0;

  return v5;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  if (propertiesToFetchWithHint__onceToken_13444 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_13444, &__block_literal_global_13445);
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__13157;
  v9 = __Block_byref_object_dispose__13158;
  v10 = 0;
  pl_dispatch_sync();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __38__PHMemory_propertiesToFetchWithHint___block_invoke_325(uint64_t a1)
{
  v2 = propertiesToFetchWithHint__propertiesToFetchByHint_13447;
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

    v10 = propertiesToFetchWithHint__propertiesToFetchByHint_13447;
    v12 = [MEMORY[0x1E695DEC8] arrayWithArray:*(*(*(a1 + 32) + 8) + 40)];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
    [v10 setObject:v12 forKey:v11];
  }
}

uint64_t __38__PHMemory_propertiesToFetchWithHint___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = propertiesToFetchWithHint__propertiesToFetchByHint_13447;
  propertiesToFetchWithHint__propertiesToFetchByHint_13447 = v0;

  propertiesToFetchWithHint__propertyQueue_13446 = dispatch_queue_create("com.apple.photos.personpropertyhints", 0);

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

+ (void)generateMemoriesWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  photoLibrary = [optionsCopy photoLibrary];
  v9PhotoLibrary = [photoLibrary photoLibrary];
  photoAnalysisClient = [v9PhotoLibrary photoAnalysisClient];

  if (photoAnalysisClient)
  {
    dictionaryRepresentation = [optionsCopy dictionaryRepresentation];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__PHMemory_generateMemoriesWithOptions_completion___block_invoke;
    v14[3] = &unk_1E75A8C38;
    v15 = completionCopy;
    [photoAnalysisClient generateMemoriesWithOptions:dictionaryRepresentation reply:v14];
  }

  else if (completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMemory.m" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"client"}];

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

uint64_t __51__PHMemory_generateMemoriesWithOptions_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)mostRelevantMemoryInMemories:(id)memories atDate:(id)date
{
  v23 = *MEMORY[0x1E69E9840];
  memoriesCopy = memories;
  dateCopy = date;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [memoriesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(memoriesCopy);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        [PHMemoryRelevanceHelper relevanceScoreForMemory:v13 atDate:dateCopy];
        if (v14 > v11)
        {
          v15 = v14;
          v16 = v13;

          v9 = v16;
          v11 = v15;
        }
      }

      v8 = [memoriesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)fetchMostRelevantMemoryAtDate:(id)date options:(id)options
{
  v13[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v6 = [options copy];
  [v6 setFetchLimit:12];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:0];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [v6 setSortDescriptors:v9];

  v10 = [PHAssetCollection fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v6];
  v11 = [PHMemory mostRelevantMemoryInMemories:v10 atDate:dateCopy];

  return v11;
}

- (BOOL)isPresentedFromURLNavigation
{
  v2 = _identifierForMemoryPresentedFromURNavigation;
  if (!_identifierForMemoryPresentedFromURNavigation)
  {
    return 0;
  }

  localIdentifier = [(PHObject *)self localIdentifier];
  v4 = [v2 isEqualToString:localIdentifier];

  return v4;
}

+ (void)clearCurrentMemoryForURLNavigation
{
  v2 = _identifierForMemoryPresentedFromURNavigation;
  _identifierForMemoryPresentedFromURNavigation = 0;

  v3 = _sourceForMemoryPresentedFromURLNavigation;
  _sourceForMemoryPresentedFromURLNavigation = 0;
}

+ (void)setCurrentMemoryForURLNavigation:(id)navigation
{
  v37 = *MEMORY[0x1E69E9840];
  navigationCopy = navigation;
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:navigationCopy resolvingAgainstBaseURL:0];
  scheme = [v4 scheme];
  v6 = [scheme isEqualToString:@"photos"];

  if (!v6)
  {
    v23 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_23;
  }

  host = [v4 host];
  if (![host isEqualToString:@"memory"])
  {
    v23 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_22;
  }

  v28 = host;
  v29 = v4;
  v30 = navigationCopy;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  queryItems = [v4 queryItems];
  v9 = [queryItems countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v9)
  {
    bOOLValue = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_21;
  }

  v10 = v9;
  bOOLValue = 0;
  v11 = 0;
  v12 = 0;
  v13 = *v33;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v33 != v13)
      {
        objc_enumerationMutation(queryItems);
      }

      v15 = *(*(&v32 + 1) + 8 * i);
      name = [v15 name];
      v17 = [name isEqualToString:@"identifier"];

      if (v17)
      {
        [v15 value];
        v12 = value = v12;
      }

      else
      {
        name2 = [v15 name];
        v20 = [name2 isEqualToString:@"source"];

        if (v20)
        {
          [v15 value];
          v11 = value = v11;
        }

        else
        {
          name3 = [v15 name];
          v22 = [name3 isEqualToString:@"play"];

          if (!v22)
          {
            continue;
          }

          value = [v15 value];
          bOOLValue = [value BOOLValue];
        }
      }
    }

    v10 = [queryItems countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v10);
LABEL_21:

  v4 = v29;
  navigationCopy = v30;
  host = v28;
  v23 = bOOLValue;
LABEL_22:

LABEL_23:
  v24 = _identifierForMemoryPresentedFromURNavigation;
  _identifierForMemoryPresentedFromURNavigation = v12;
  v25 = v12;

  v26 = _sourceForMemoryPresentedFromURLNavigation;
  _sourceForMemoryPresentedFromURLNavigation = v11;
  v27 = v11;

  _wantsPlaybackForMemoryPresentedFromURLNavigation = v23 & 1;
}

- (id)rankedPreviewAssetsForLength:(unint64_t)length targetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v8 = [(PHMemory *)self curationOfLength:length options:MEMORY[0x1E695E0F8] error:&v28];
  v9 = v28;
  if (v9)
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      lengthCopy = length;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "[PHMemory+Curation] failed to fetch assets with length(%lu): %@", buf, 0x16u);
    }

    v11 = MEMORY[0x1E695E0F0];
  }

  else
  {
    photoLibrary = [(PHObject *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v10 = [PHAsset fetchKeyCuratedAssetInAssetCollection:self referenceAsset:0 options:librarySpecificFetchOptions];

    firstObject = [v10 firstObject];
    photoLibrary2 = [(PHObject *)self photoLibrary];
    librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

    [librarySpecificFetchOptions2 setIncludeGuestAssets:1];
    v17 = MEMORY[0x1E696AE18];
    localIdentifier = [firstObject localIdentifier];
    v19 = [v17 predicateWithFormat:@"localIdentifier != %@", localIdentifier];

    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"playbackStyle != %d && playbackStyle != %d", 4, 5];
    v21 = MEMORY[0x1E696AB28];
    v29[0] = v19;
    v29[1] = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v23 = [v21 andPredicateWithSubpredicates:v22];
    [librarySpecificFetchOptions2 setPredicate:v23];

    v24 = [PHAsset fetchAssetsWithUUIDs:v8 options:librarySpecificFetchOptions2];
    v25 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v24 count];
      *buf = 134217984;
      lengthCopy = v26;
      _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_INFO, "[PHMemory+Curation] Curated assets count:%lu", buf, 0xCu);
    }

    v11 = [objc_opt_class() filteredAndSortedPreviewAssetsByScoreFromAssets:v24 targetSize:{width, height}];
  }

  return v11;
}

- (id)fetchPreviewAssetForLength:(unint64_t)length targetSize:(CGSize)size
{
  v4 = [(PHMemory *)self rankedPreviewAssetsForLength:length targetSize:size.width, size.height];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)extractGenerativeMemoryMusicCuration
{
  if ([(PHMemory *)self isGenerative])
  {
    photosGraphProperties = [(PHMemory *)self photosGraphProperties];
    v4 = photosGraphProperties;
    if (!photosGraphProperties)
    {
      v6 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "No photosGraphData for the memory", v14, 2u);
      }

      v9 = 0;
      goto LABEL_19;
    }

    v5 = [photosGraphProperties objectForKeyedSubscript:@"generativeMemoryData"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"musicCuration"];
      if (v7)
      {
        v8 = v7;
        v9 = v8;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v10 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "No MusicCuration in the photosGraphData.GenerativeData", v12, 2u);
      }

      v8 = 0;
    }

    else
    {
      v8 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "No GenerativeData in the photosGraphData", v13, 2u);
      }
    }

    v9 = 0;
    goto LABEL_18;
  }

  v4 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_INFO, "Can't extract GenerativeMemoryMusicCuration for non-generative memory", buf, 2u);
  }

  v9 = 0;
LABEL_20:

  return v9;
}

- (unint64_t)_fetchNumberOfAssetsWithType:(unint64_t)type predicate:(id)predicate
{
  v24[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v7 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      _predicateForLivePhotos = [(PHMemory *)self _predicateForLivePhotos];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      _predicateForLivePhotos = [(PHMemory *)self _predicateForVideos];
    }

LABEL_10:
    v7 = _predicateForLivePhotos;
    goto LABEL_11;
  }

  if (!type)
  {
    _predicateForLivePhotos = [(PHMemory *)self _predicateForImages];
    goto LABEL_10;
  }

  if (type == 1)
  {
    v8 = MEMORY[0x1E696AB28];
    _predicateForImages = [(PHMemory *)self _predicateForImages];
    v24[0] = _predicateForImages;
    v10 = MEMORY[0x1E696AB28];
    _predicateForLivePhotos2 = [(PHMemory *)self _predicateForLivePhotos];
    v12 = [v10 notPredicateWithSubpredicate:_predicateForLivePhotos2];
    v24[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v7 = [v8 andPredicateWithSubpredicates:v13];
  }

LABEL_11:
  photoLibrary = [(PHObject *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v17 = MEMORY[0x1E696AB28];
  v23[0] = predicateCopy;
  v23[1] = v7;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];
  [librarySpecificFetchOptions setInternalPredicate:v19];

  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v20 = [PHAsset fetchAssetsWithOptions:librarySpecificFetchOptions];
  v21 = [v20 count];

  return v21;
}

- (unint64_t)_numberOfAssetsWithType:(unint64_t)type optionsValue:(id)value predicate:(id)predicate
{
  if (value)
  {
    return [value integerValue];
  }

  else
  {
    return [(PHMemory *)self _fetchNumberOfAssetsWithType:type predicate:predicate];
  }
}

- (id)fetchAssetsWithCurationOfLength:(unint64_t)length options:(id)options error:(id *)error
{
  v6 = [(PHMemory *)self curationOfLength:length options:options error:error];
  if (v6)
  {
    photoLibrary = [(PHObject *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v9 = [PHAsset fetchAssetsWithUUIDs:v6 options:librarySpecificFetchOptions];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)curationOfLength:(unint64_t)length options:(id)options error:(id *)error
{
  optionsCopy = options;
  photoLibrary = [(PHObject *)self photoLibrary];
  photoAnalysisClient = [photoLibrary photoAnalysisClient];
  localIdentifier = [(PHObject *)self localIdentifier];
  v12 = [photoAnalysisClient requestCurationOfLength:length forMemoryForLocalIdentifier:localIdentifier withOptions:optionsCopy error:error];

  return v12;
}

- (unint64_t)currentCurationLengthWithOptions:(id)options
{
  optionsCopy = options;
  v5 = MEMORY[0x1E696AE18];
  objectID = [(PHObject *)self objectID];
  v7 = [v5 predicateWithFormat:@"memoriesBeingCuratedAssets CONTAINS %@", objectID];

  v8 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionImageCountKey"];
  v9 = [(PHMemory *)self _numberOfAssetsWithType:0 optionsValue:v8 predicate:v7];

  v10 = [(PHMemory *)self _numberOfAssetsWithType:2 optionsValue:0 predicate:v7];
  v11 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionVideoCountKey"];
  v12 = [(PHMemory *)self _numberOfAssetsWithType:3 optionsValue:v11 predicate:v7];

  [(PHMemory *)self _evaluatedDurationWithNumberOfStillPhotos:v9 - v10 numberOfLivePhotos:v10 numberOfVideos:v12 options:optionsCopy];
  v14 = v13;
  v15 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionMinimumDurationForMediumCurationKey"];
  if (v15)
  {
    v16 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionMinimumDurationForMediumCurationKey"];
    [v16 doubleValue];
    v18 = v17;
  }

  else
  {
    v18 = 45.0;
  }

  if (v14 < v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  return v19;
}

- (unint64_t)availableCurationLengthsWithOptions:(id)options
{
  optionsCopy = options;
  [(PHMemory *)self photosGraphVersion];
  if (PLMemoriesAlgorithmsVersionFromPhotosGraphVersion() >= 0x301)
  {
    v6 = MEMORY[0x1E696AE18];
    objectID = [(PHObject *)self objectID];
    v8 = [v6 predicateWithFormat:@"memoriesBeingExtendedCuratedAssets CONTAINS %@", objectID];

    v9 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionImageCountKey"];
    v10 = [(PHMemory *)self _numberOfAssetsWithType:0 optionsValue:v9 predicate:v8];

    v11 = [(PHMemory *)self _numberOfAssetsWithType:2 optionsValue:0 predicate:v8];
    v12 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionVideoCountKey"];
    v13 = [(PHMemory *)self _numberOfAssetsWithType:3 optionsValue:v12 predicate:v8];

    [(PHMemory *)self _evaluatedDurationWithNumberOfStillPhotos:v10 - v11 numberOfLivePhotos:v11 numberOfVideos:v13 options:optionsCopy];
    v15 = v14;
    v16 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionMinimumDurationForMediumCurationKey"];
    if (v16)
    {
      v17 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionMinimumDurationForMediumCurationKey"];
      [v17 doubleValue];
      v19 = v18;
    }

    else
    {
      v19 = 45.0;
    }

    if (v15 >= v19)
    {
      v20 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionMinimumDurationForLongCurationKey"];
      if (v20)
      {
        v21 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionMinimumDurationForLongCurationKey"];
        [v21 doubleValue];
        v23 = v22;
      }

      else
      {
        v23 = 70.0;
      }

      if (v15 >= v23)
      {
        v5 = 7;
      }

      else
      {
        v5 = 3;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_evaluatedDurationWithNumberOfStillPhotos:(unint64_t)photos numberOfLivePhotos:(unint64_t)livePhotos numberOfVideos:(unint64_t)videos options:(id)options
{
  optionsCopy = options;
  v10 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionStillPhotoDurationKey"];
  if (v10)
  {
    v11 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionStillPhotoDurationKey"];
    [v11 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 2.0;
  }

  v14 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionLivePhotoDurationKey"];
  if (v14)
  {
    v15 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionLivePhotoDurationKey"];
    [v15 doubleValue];
    v17 = v16;
  }

  else
  {
    v17 = 3.0;
  }

  v18 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionVideoDurationKey"];
  if (v18)
  {
    v19 = [optionsCopy objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionVideoDurationKey"];
    [v19 doubleValue];
    v21 = v20;
  }

  else
  {
    v21 = 6.0;
  }

  return v17 * livePhotos + photos * v13 + videos * v21;
}

+ (id)filteredAndSortedPreviewAssetsByScoreFromAssets:(id)assets targetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v78 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    v52 = assetsCopy;
    v7 = [self previewCandidatesFromAssets:assetsCopy];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v58 objects:v77 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v59;
      v13 = *MEMORY[0x1E695F050];
      v14 = *(MEMORY[0x1E695F050] + 8);
      v15 = *(MEMORY[0x1E695F050] + 16);
      v16 = *(MEMORY[0x1E695F050] + 24);
      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v59 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v21 = *(*(&v58 + 1) + 8 * i);
          *buf = 0;
          [v21 suggestedCropForTargetSize:buf withFocusRegion:width andOutputCropScore:{height, v13, v14, v15, v16}];
          v22 = [_PHCropInfo alloc];
          v23 = [(_PHCropInfo *)v22 initWithAsset:v21 cropScore:*buf];
          [v8 addObject:v23];
          [v21 curationScore];
          v19 = v19 + v24;
          [v21 overallAestheticScore];
          v18 = v18 + v25;
          v17 = v17 + *buf;
        }

        v11 = [v9 countByEnumeratingWithState:&v58 objects:v77 count:16];
      }

      while (v11);
    }

    else
    {
      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
    }

    v50 = v9;
    v27 = [v9 count];
    v28 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"cropScore" ascending:0];
    v76[0] = v28;
    v29 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"asset.uuid" ascending:0];
    v76[1] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
    v51 = v8;
    v31 = [v8 sortedArrayUsingDescriptors:v30];

    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v32 = v31;
    v33 = [v32 countByEnumeratingWithState:&v54 objects:v75 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = v27;
      v36 = v19 / v27;
      v37 = v18 / v27;
      v38 = *v55;
      v39 = v17 / v35;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v55 != v38)
          {
            objc_enumerationMutation(v32);
          }

          v41 = *(*(&v54 + 1) + 8 * j);
          asset = [v41 asset];
          [v26 addObject:asset];
          v43 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            [v41 cropScore];
            v45 = v44;
            [asset curationScore];
            v47 = v46;
            [asset overallAestheticScore];
            *buf = 138413826;
            *&buf[4] = asset;
            v63 = 2048;
            v64 = v45;
            v65 = 2048;
            v66 = v39;
            v67 = 2048;
            v68 = v47;
            v69 = 2048;
            v70 = v36;
            v71 = 2048;
            v72 = v48;
            v73 = 2048;
            v74 = v37;
            _os_log_impl(&dword_19C86F000, v43, OS_LOG_TYPE_INFO, "[PNAssetCurationUtilities] Select preview asset:%@, cropScore:(%.4f, avg:%.4f), curationScore:(%.4f, avg:%.4f), aestheticScore:(%.4f, avg:%.4f)", buf, 0x48u);
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v54 objects:v75 count:16];
      }

      while (v34);
    }

    assetsCopy = v52;
  }

  else
  {
    v26 = MEMORY[0x1E695E0F0];
  }

  return v26;
}

+ (id)previewCandidatesFromAssets:(id)assets
{
  v51[2] = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if (![assetsCopy count])
  {
    v33 = [MEMORY[0x1E695DFD8] set];
    goto LABEL_22;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults persistentDomainForName:*MEMORY[0x1E696A400]];

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  fetchedObjects = [assetsCopy fetchedObjects];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"curationScore" ascending:0];
  v51[0] = v8;
  v51[1] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v10 = [fetchedObjects sortedArrayUsingDescriptors:v9];

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"overallAestheticScore" ascending:0];
  v50[0] = v11;
  v50[1] = v6;
  v42 = v6;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v13 = [fetchedObjects sortedArrayUsingDescriptors:v12];

  v14 = [v5 valueForKey:@"PHAssetPreviewCurationScorePercentileThresholdKey"];
  v15 = v14;
  v16 = &unk_1F102E598;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v43 = v5;
  v18 = [v5 valueForKey:@"PHAssetPreviewAestheticsScorePercentileThresholdKey"];
  v19 = v18;
  v20 = &unk_1F102E5A8;
  if (v18)
  {
    v20 = v18;
  }

  v21 = v20;

  v22 = [fetchedObjects count];
  [v17 doubleValue];
  v24 = v23 * v22;
  if (v24 < 1.0)
  {
    v24 = 1.0;
  }

  v25 = v24;
  v41 = v10;
  v26 = [v10 subarrayWithRange:{0, v24}];
  v27 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v45 = v17;
    v46 = 2048;
    v47 = v25;
    v48 = 2048;
    v49 = v22;
    _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_INFO, "[PHMemory+Curation] curationScorePercentile:%@, targetLength:(%lu/%lu)", buf, 0x20u);
  }

  [v21 doubleValue];
  v29 = v28 * v22;
  if (v29 < 1.0)
  {
    v29 = 1.0;
  }

  v30 = v29;
  v31 = [v13 subarrayWithRange:{0, v29, v13}];
  v32 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v45 = v21;
    v46 = 2048;
    v47 = v30;
    v48 = 2048;
    v49 = v22;
    _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_INFO, "[PHMemory+Curation] aestheticScorePercentile:%@, targetLength:(%lu/%lu)", buf, 0x20u);
  }

  v33 = [MEMORY[0x1E695DFA8] setWithArray:v26];
  v34 = [MEMORY[0x1E695DFA8] setWithArray:v31];
  if ([v33 intersectsSet:v34])
  {
    [v33 intersectSet:v34];
    v35 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [v33 count];
      *buf = 134217984;
      v45 = v36;
      v37 = "[PHMemory+Curation] Found curation/aesthetics overlap candidates:%lu";
LABEL_20:
      _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_INFO, v37, buf, 0xCu);
    }
  }

  else
  {
    v35 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v38 = [v33 count];
      *buf = 134217984;
      v45 = v38;
      v37 = "[PHMemory+Curation] No top curation/aesthetics overlap. Use topCurationAssets:%lu";
      goto LABEL_20;
    }
  }

LABEL_22:

  return v33;
}

- (id)transientRepresentativeAndCuratedAssetIDs
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"assets"];

  if (!v3)
  {
    [(PHMemory *)self setupTransientMemory];
  }

  v4 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"representativeAssets"];
  photoLibrary = [(PHObject *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v11[0] = @"PHAssetPropertySetIdentifier";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v7];

  v8 = [PHAsset fetchAssetsWithLocalIdentifiers:v4 options:librarySpecificFetchOptions];
  fetchedObjectIDs = [v8 fetchedObjectIDs];

  return fetchedObjectIDs;
}

- (id)query
{
  v3 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"assets"];

  if (!v3)
  {
    [(PHMemory *)self setupTransientMemory];
  }

  v4 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"extendeduratedAssets"];
  v5 = v4;
  if (v4 && [v4 count] || (-[NSDictionary objectForKeyedSubscript:](self->_transientMemoryProperties, "objectForKeyedSubscript:", @"assets"), v6 = objc_claimAutoreleasedReturnValue(), v5, (v5 = v6) != 0))
  {
    v7 = [objc_opt_class() _fetchOptionsForTransientMemoryAssetsWithOptions:0];
    v8 = [PHQuery queryForAssetsWithLocalIdentifiers:v5 options:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)queryForKeyAssetWithOptions:(id)options
{
  v13[1] = *MEMORY[0x1E69E9840];
  transientMemoryProperties = self->_transientMemoryProperties;
  optionsCopy = options;
  v6 = [(NSDictionary *)transientMemoryProperties objectForKeyedSubscript:@"keyAsset"];

  if (!v6)
  {
    [(PHMemory *)self setupTransientMemory];
  }

  v7 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"keyAsset"];
  v8 = v7;
  if (v7)
  {
    v13[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [objc_opt_class() _fetchOptionsForTransientMemoryAssetsWithOptions:optionsCopy];

  v11 = [PHQuery queryForAssetsWithLocalIdentifiers:v9 options:v10];

  return v11;
}

- (id)queryForCuratedAssetsWithOptions:(id)options
{
  transientMemoryProperties = self->_transientMemoryProperties;
  optionsCopy = options;
  v6 = [(NSDictionary *)transientMemoryProperties objectForKeyedSubscript:@"curatedAssets"];

  if (!v6)
  {
    [(PHMemory *)self setupTransientMemory];
  }

  v7 = [objc_opt_class() _fetchOptionsForTransientMemoryAssetsWithOptions:optionsCopy];

  v8 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"curatedAssets"];
  v9 = [PHQuery queryForAssetsWithLocalIdentifiers:v8 options:v7];

  return v9;
}

- (id)queryForExtendedCuratedAssetsWithOptions:(id)options
{
  transientMemoryProperties = self->_transientMemoryProperties;
  optionsCopy = options;
  v6 = [(NSDictionary *)transientMemoryProperties objectForKeyedSubscript:@"extendeduratedAssets"];

  if (!v6)
  {
    [(PHMemory *)self setupTransientMemory];
  }

  v7 = [objc_opt_class() _fetchOptionsForTransientMemoryAssetsWithOptions:optionsCopy];

  v8 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"extendeduratedAssets"];
  v9 = [PHQuery queryForAssetsWithLocalIdentifiers:v8 options:v7];

  return v9;
}

- (void)setupTransientMemory
{
  transientMemoryProperties = self->_transientMemoryProperties;
  self->_transientMemoryProperties = MEMORY[0x1E695E0F8];

  v4 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"title"];
  title = self->_title;
  self->_title = v4;

  v6 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"subtitle"];
  localizedSubtitle = self->_localizedSubtitle;
  self->_localizedSubtitle = v6;

  v8 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"category"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];
  category = [(PHMemory *)self category];

  if (unsignedIntegerValue != category && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Transient Memory has different category before and after setup", buf, 2u);
  }

  v11 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"subcategory"];
  unsignedIntegerValue2 = [v11 unsignedIntegerValue];
  subcategory = [(PHMemory *)self subcategory];

  if (unsignedIntegerValue2 != subcategory && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v23 = 0;
    _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Transient Memory has different subcategory before and after setup", v23, 2u);
  }

  v14 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"score"];
  [v14 doubleValue];
  v16 = v15;
  [(PHMemory *)self score];
  v18 = v17;

  if (v16 != v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Transient Memory has different score before and after setup", v22, 2u);
  }

  v19 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"photosgraphData"];
  photosGraphData = self->_photosGraphData;
  self->_photosGraphData = v19;

  v21 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"photosGraphVersion"];
  self->_photosGraphVersion = [v21 integerValue];
}

+ (id)_fetchOptionsForTransientMemoryAssetsWithOptions:(id)options
{
  v11[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (optionsCopy)
  {
    v4 = optionsCopy;
    v5 = [optionsCopy copy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  sortDescriptors = [v5 sortDescriptors];
  v7 = [sortDescriptors count];

  if (!v7)
  {
    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

    [v5 setSortDescriptors:v9];
  }

  return v5;
}

+ (id)transientMemoryWithInfo:(id)info photoLibrary:(id)library
{
  infoCopy = info;
  v6 = MEMORY[0x1E695DF90];
  libraryCopy = library;
  dictionary = [v6 dictionary];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:@"uuid"];

  v11 = [(NSDictionary *)infoCopy objectForKeyedSubscript:@"category"];
  if (v11)
  {
    [dictionary setObject:v11 forKeyedSubscript:@"category"];
  }

  v12 = [(NSDictionary *)infoCopy objectForKeyedSubscript:@"subcategory"];
  if (v12)
  {
    [dictionary setObject:v12 forKeyedSubscript:@"subcategory"];
  }

  v13 = [(NSDictionary *)infoCopy objectForKeyedSubscript:@"title"];
  if (v13)
  {
    [dictionary setObject:v13 forKeyedSubscript:@"title"];
  }

  v14 = [(NSDictionary *)infoCopy objectForKeyedSubscript:@"subtitle"];
  if (v14)
  {
    [dictionary setObject:v14 forKeyedSubscript:@"subtitle"];
  }

  v15 = [(NSDictionary *)infoCopy objectForKeyedSubscript:@"creationDate"];
  if (v15)
  {
    [dictionary setObject:v15 forKeyedSubscript:@"creationDate"];
  }

  v16 = [(NSDictionary *)infoCopy objectForKeyedSubscript:@"score"];
  if (v16)
  {
    [dictionary setObject:v16 forKeyedSubscript:@"score"];
  }

  v17 = [[PHMemory alloc] initWithFetchDictionary:dictionary propertyHint:2 photoLibrary:libraryCopy];

  transientMemoryProperties = v17->_transientMemoryProperties;
  v17->_transientMemoryProperties = infoCopy;

  return v17;
}

@end