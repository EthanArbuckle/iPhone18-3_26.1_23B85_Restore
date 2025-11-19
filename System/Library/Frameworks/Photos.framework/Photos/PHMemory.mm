@interface PHMemory
+ (BOOL)isTriggeredMemoryCategory:(unint64_t)a3;
+ (Class)propertySetClassForPropertySet:(id)a3;
+ (id)_composePropertiesToFetchWithHint:(unint64_t)a3;
+ (id)_fetchOptionsForTransientMemoryAssetsWithOptions:(id)a3;
+ (id)assetListPredicateFromQueryHintObjects:(id)a3;
+ (id)blockedPersonLocalIdentifiersInPhotoLibrary:(id)a3;
+ (id)corePropertiesToFetch;
+ (id)entityKeyMap;
+ (id)fetchBestRecentMemoryWithOptions:(id)a3;
+ (id)fetchBlockedMemoriesWithOptions:(id)a3;
+ (id)fetchMemoriesWithGraphMemoryIdentifiers:(id)a3 options:(id)a4;
+ (id)fetchMemoriesWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)fetchMemoriesWithNilLastEnrichmentDateWithOptions:(id)a3;
+ (id)fetchMemoriesWithUserFeedbackWithOptions:(id)a3;
+ (id)fetchMemoryWithGraphMemoryIdentifier:(id)a3 options:(id)a4;
+ (id)fetchMostRelevantMemoryAtDate:(id)a3 options:(id)a4;
+ (id)fetchMostRelevantMemoryWithOptions:(id)a3;
+ (id)fetchPredicateForSharingFilter:(unsigned __int16)a3;
+ (id)fetchPredicateFromComparisonPredicate:(id)a3 options:(id)a4;
+ (id)fetchPredicateFromUserCreatedComparisonPredicate:(id)a3;
+ (id)filteredAndSortedPreviewAssetsByScoreFromAssets:(id)a3 targetSize:(CGSize)a4;
+ (id)memoriesWithBlockedPersonFeatureInPhotoLibrary:(id)a3;
+ (id)mostRelevantMemoryInMemories:(id)a3 atDate:(id)a4;
+ (id)movieDataWithTitleFontName:(id)a3;
+ (id)previewCandidatesFromAssets:(id)a3;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
+ (id)propertySetAccessorsByPropertySet;
+ (id)propertySetsForPropertyFetchHints:(unint64_t)a3;
+ (id)stringForCategory:(unint64_t)a3;
+ (id)stringForFeaturedState:(int64_t)a3;
+ (id)stringForNotificationState:(unint64_t)a3;
+ (id)stringForSubcategory:(unint64_t)a3;
+ (id)stringForTriggerType:(unint64_t)a3;
+ (id)titleFontNameFromMovieData:(id)a3;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
+ (id)transientMemoryWithInfo:(id)a3 photoLibrary:(id)a4;
+ (unint64_t)_contextualScoreForMemory:(id)a3;
+ (unint64_t)propertyFetchHintsForPropertySets:(id)a3;
+ (void)clearCurrentMemoryForURLNavigation;
+ (void)generateMemoriesWithOptions:(id)a3 completion:(id)a4;
+ (void)setCurrentMemoryForURLNavigation:(id)a3;
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
- (PHMemory)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (double)_evaluatedDurationWithNumberOfStillPhotos:(unint64_t)a3 numberOfLivePhotos:(unint64_t)a4 numberOfVideos:(unint64_t)a5 options:(id)a6;
- (double)currentRelevanceScore;
- (id)_createPropertyObjectOfClass:(Class)a3 preFetchedProperties:(id)a4;
- (id)_curatedAssetIDsWithLibrary:(id)a3;
- (id)_extendedCuratedAssetIDsWithLibrary:(id)a3;
- (id)_representativeAndCuratedAssetIDs;
- (id)curationOfLength:(unint64_t)a3 options:(id)a4 error:(id *)a5;
- (id)description;
- (id)extractGenerativeMemoryMusicCuration;
- (id)fetchAssetsWithCurationOfLength:(unint64_t)a3 options:(id)a4 error:(id *)a5;
- (id)fetchPreviewAssetForLength:(unint64_t)a3 targetSize:(CGSize)a4;
- (id)meaningLabels;
- (id)moodKeywords;
- (id)movieStateDataForAsset:(id)a3;
- (id)predicateForAllAssetsWithLibrary:(id)a3;
- (id)predicateForAllMomentsFromRepresentativeAssets;
- (id)predicateForAssetsContainedInMomentsFromRepresentativeAssets;
- (id)presentationHints;
- (id)query;
- (id)queryForCuratedAssetsWithOptions:(id)a3;
- (id)queryForExtendedCuratedAssetsWithOptions:(id)a3;
- (id)queryForKeyAssetWithOptions:(id)a3;
- (id)rankedPreviewAssetsForLength:(unint64_t)a3 targetSize:(CGSize)a4;
- (id)titleFontName;
- (id)transientRepresentativeAndCuratedAssetIDs;
- (id)userFeedbackProperties;
- (int64_t)storyColorGradeKind;
- (unint64_t)_fetchNumberOfAssetsWithType:(unint64_t)a3 predicate:(id)a4;
- (unint64_t)_numberOfAssetsWithType:(unint64_t)a3 optionsValue:(id)a4 predicate:(id)a5;
- (unint64_t)availableCurationLengthsWithOptions:(id)a3;
- (unint64_t)currentCurationLengthWithOptions:(id)a3;
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
  block[4] = a1;
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

+ (id)propertySetsForPropertyFetchHints:(unint64_t)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [@"PHMemoryPropertySetIdentifier" length];
  if ((v3 & 1) != 0 && v5)
  {
    [v4 addObject:@"PHMemoryPropertySetIdentifier"];
  }

  v6 = [@"PHMemoryPropertySetCore" length];
  if ((v3 & 2) != 0 && v6)
  {
    [v4 addObject:@"PHMemoryPropertySetCore"];
  }

  v7 = [@"PHMemoryPropertySetUserFeedback" length];
  if ((v3 & 4) != 0 && v7)
  {
    [v4 addObject:@"PHMemoryPropertySetUserFeedback"];
  }

  v8 = [MEMORY[0x1E695DFD8] setWithSet:v4];

  return v8;
}

+ (unint64_t)propertyFetchHintsForPropertySets:(id)a3
{
  v3 = a3;
  if ([@"PHMemoryPropertySetIdentifier" length])
  {
    v4 = [v3 containsObject:@"PHMemoryPropertySetIdentifier"];
  }

  else
  {
    v4 = 0;
  }

  if ([@"PHMemoryPropertySetCore" length] && objc_msgSend(v3, "containsObject:", @"PHMemoryPropertySetCore"))
  {
    v4 |= 2uLL;
  }

  if ([@"PHMemoryPropertySetUserFeedback" length] && objc_msgSend(v3, "containsObject:", @"PHMemoryPropertySetUserFeedback"))
  {
    v4 |= 4uLL;
  }

  if (![v3 containsObject:@"PHMemoryPropertySetIdentifier"])
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

+ (Class)propertySetClassForPropertySet:(id)a3
{
  v3 = propertySetClassForPropertySet__onceToken_13145;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&propertySetClassForPropertySet__onceToken_13145, &__block_literal_global_980);
  }

  v5 = [propertySetClassForPropertySet__propertySetClassByPropertySetName_13146 objectForKey:v4];

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

- (id)_createPropertyObjectOfClass:(Class)a3 preFetchedProperties:(id)a4
{
  v6 = a4;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__13157;
  v46 = __Block_byref_object_dispose__13158;
  v47 = ph_objc_getAssociatedObject(self, a3);
  v7 = v43[5];
  if (!v7)
  {
    v8 = [(objc_class *)a3 keyPathToPrimaryObject];
    if (v6)
    {
      v9 = [[a3 alloc] initWithFetchDictionary:v6 memory:self prefetched:1];
      v10 = v43[5];
      v43[5] = v9;
    }

    else
    {
      v11 = [(objc_class *)a3 entityName];
      v12 = v11;
      v13 = @"Memory";
      if (v11)
      {
        v13 = v11;
      }

      v14 = v13;

      v15 = MEMORY[0x1E696AE18];
      v16 = [(PHObject *)self objectID];
      if (v8)
      {
        [v15 predicateWithFormat:@"%K == %@", v8, v16];
      }

      else
      {
        [v15 predicateWithFormat:@"self == %@", v16];
      }
      v17 = ;

      v18 = [(objc_class *)a3 propertiesToFetch];
      if (objc_opt_respondsToSelector())
      {
        v32 = [(objc_class *)a3 propertiesToSortBy];
        v19 = v17;
        v20 = v14;
      }

      else
      {
        v19 = v17;
        v20 = v14;
        v32 = 0;
      }

      v21 = [(PHObject *)self photoLibrary];
      v22 = [(objc_class *)a3 propertySetName];
      v23 = [v21 objectFetchingManagedObjectContextForObject:self propertySet:v22];

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __62__PHMemory__createPropertyObjectOfClass_preFetchedProperties___block_invoke;
      v33[3] = &unk_1E75A7D08;
      v10 = v20;
      v34 = v10;
      v24 = v19;
      v35 = v24;
      v25 = v18;
      v36 = v25;
      v26 = v32;
      v37 = v26;
      v27 = v23;
      v38 = v27;
      v39 = self;
      v40 = &v42;
      v41 = a3;
      [v27 performBlockAndWait:v33];
    }

    v28 = ph_objc_setAssociatedObjectIfNotSet(self, a3, v43[5]);
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
  v3 = [MEMORY[0x1E695DF00] date];
  [(PHMemory *)self relevanceScoreAtDate:v3];
  v5 = v4;

  return v5;
}

- (BOOL)isCurrentlyRelevant
{
  v3 = [MEMORY[0x1E695DF00] date];
  LOBYTE(self) = [(PHMemory *)self isRelevantAtDate:v3];

  return self;
}

- (NSDictionary)photosGraphProperties
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_photosGraphProperties)
  {
    if (v2->_photosGraphData)
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
      photosGraphData = v2->_photosGraphData;
      v19 = 0;
      v12 = [v17 unarchivedObjectOfClasses:v10 fromData:photosGraphData error:&v19];
      v13 = v19;
      photosGraphProperties = v2->_photosGraphProperties;
      v2->_photosGraphProperties = v12;

      if (!v2->_photosGraphProperties)
      {
        v2->_photosGraphProperties = MEMORY[0x1E695E0F8];
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
      v2->_photosGraphProperties = MEMORY[0x1E695E0F8];
    }
  }

  v15 = v2->_photosGraphProperties;
  objc_sync_exit(v2);

  return v15;
}

- (BOOL)isBadgeable
{
  v3 = [(PHMemory *)self lastViewedDate];

  if (v3 || [(PHMemory *)self pendingState]!= 1 || [(PHMemory *)self featuredState]!= 1)
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
  v2 = [(PHMemory *)self photosGraphProperties];
  v3 = [v2 objectForKeyedSubscript:@"info"];

  v4 = [v3 objectForKeyedSubscript:@"meaningLabels"];

  return v4;
}

- (id)moodKeywords
{
  v2 = [(PHMemory *)self photosGraphProperties];
  v3 = [v2 objectForKeyedSubscript:@"info"];

  v4 = [v3 objectForKeyedSubscript:@"moodKeywords"];

  return v4;
}

- (unint64_t)suggestedMood
{
  v2 = [(PHMemory *)self photosGraphProperties];
  v3 = [v2 objectForKeyedSubscript:@"info"];

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
  v2 = [(PHMemory *)self photosGraphProperties];
  v3 = [v2 objectForKeyedSubscript:@"triggerTypes"];

  return v3;
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = PHMemory;
  v3 = [(PHAssetCollection *)&v14 description];
  v13 = [(PHMemory *)self pendingState];
  v4 = [(PHMemory *)self creationType];
  v5 = [(PHMemory *)self isFavorite];
  v6 = [(PHMemory *)self isUserCreated];
  v7 = [(PHMemory *)self isRejected];
  v8 = [(PHMemory *)self category];
  v9 = [(PHMemory *)self subcategory];
  v10 = [(PHMemory *)self creationDate];
  v11 = [v3 stringByAppendingFormat:@" pendingState:%d, creationType:%d, fav:%d, user:%d, reject:%d [%d/%d - %@], featuredState: %d, syndicatedContentState: %d", v13, v4, v5, v6, v7, v8, v9, v10, -[PHMemory featuredState](self, "featuredState"), -[PHMemory syndicatedContentState](self, "syndicatedContentState")];

  return v11;
}

- (id)_extendedCuratedAssetIDsWithLibrary:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13157;
  v25 = __Block_byref_object_dispose__13158;
  v26 = 0;
  v5 = MEMORY[0x1E695D5E0];
  v6 = [MEMORY[0x1E69BE540] entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = MEMORY[0x1E696AE18];
  v9 = [(PHObject *)self objectID];
  v10 = [v8 predicateWithFormat:@"memoriesBeingExtendedCuratedAssets CONTAINS %@", v9];
  [v7 setPredicate:v10];

  [v7 setResultType:1];
  [v7 setIncludesPropertyValues:0];
  v11 = [v4 managedObjectContextForCurrentQueueQoS];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__PHMemory__extendedCuratedAssetIDsWithLibrary___block_invoke;
  v16[3] = &unk_1E75AA158;
  v20 = &v21;
  v12 = v11;
  v17 = v12;
  v13 = v7;
  v18 = v13;
  v19 = self;
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

- (id)_curatedAssetIDsWithLibrary:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13157;
  v25 = __Block_byref_object_dispose__13158;
  v26 = 0;
  v5 = MEMORY[0x1E695D5E0];
  v6 = [MEMORY[0x1E69BE540] entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = MEMORY[0x1E696AE18];
  v9 = [(PHObject *)self objectID];
  v10 = [v8 predicateWithFormat:@"memoriesBeingCuratedAssets CONTAINS %@", v9];
  [v7 setPredicate:v10];

  [v7 setResultType:1];
  [v7 setIncludesPropertyValues:0];
  v11 = [v4 managedObjectContextForCurrentQueueQoS];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__PHMemory__curatedAssetIDsWithLibrary___block_invoke;
  v16[3] = &unk_1E75AA158;
  v20 = &v21;
  v12 = v11;
  v17 = v12;
  v13 = v7;
  v18 = v13;
  v19 = self;
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
    v3 = [(PHMemory *)self transientRepresentativeAndCuratedAssetIDs];
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
    v6 = [(PHObject *)self uuid];
    v7 = [v5 predicateWithFormat:@"uuid == %@", v6];
    [v4 setPredicate:v7];

    [v4 setResultType:0];
    [v4 setIncludesPropertyValues:0];
    [v4 setRelationshipKeyPathsForPrefetching:&unk_1F102DF40];
    v8 = [(PHObject *)self photoLibrary];
    v9 = [v8 managedObjectContextForCurrentQueueQoS];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__PHMemory__representativeAndCuratedAssetIDs__block_invoke;
    v13[3] = &unk_1E75AA158;
    v10 = v9;
    v14 = v10;
    v11 = v4;
    v15 = v11;
    v16 = self;
    v17 = &v18;
    [v10 performBlockAndWait:v13];
    v3 = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  return v3;
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
  v2 = [(PHMemory *)self _representativeAndCuratedAssetIDs];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN (%@)", @"assets", v2];

  return v3;
}

- (id)predicateForAssetsContainedInMomentsFromRepresentativeAssets
{
  v2 = [(PHMemory *)self _representativeAndCuratedAssetIDs];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN (%@)", @"moment.assets", v2];

  return v3;
}

- (id)predicateForAllAssetsWithLibrary:(id)a3
{
  v74[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHMemory *)self _extendedCuratedAssetIDsWithLibrary:v4];
  if ([v5 count])
  {
    v6 = [(PHMemory *)self _curatedAssetIDsWithLibrary:v4];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN (%@) OR self IN (%@)", v5, v6];

    if (v7)
    {
      goto LABEL_41;
    }
  }

  v8 = [(PHMemory *)self assetListPredicate];
  if (v8)
  {
    v9 = v8;
    v70 = 0;
    v10 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:&v70];
    v11 = v70;
    if (!v10)
    {
      v7 = 0;
      goto LABEL_34;
    }

    v12 = [v10 objectForKey:@"albums"];
    v13 = [v10 objectForKey:@"persons"];
    v14 = [v10 objectForKey:@"dateRanges"];
    v59 = v12;
    if (v12)
    {
      v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY albums.uuid IN (%@) OR ANY albums.cloudGUID in (%@)", v12, v12];
    }

    else
    {
      v7 = 0;
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
        v56 = v7;
        v57 = v5;
        v58 = v4;
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
            v7 = [v40 andPredicateWithSubpredicates:v41];
          }

          else
          {
            v7 = v38;
          }

          v4 = v58;
        }

        else
        {
          v5 = v57;
          v4 = v58;
          v7 = v56;
          v9 = v55;
          v13 = v61;
        }

        v11 = v62;
        v10 = v63;
        v14 = v60;
      }

LABEL_34:
      if (v7)
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    }

    v15 = v9;
    v16 = [PHFetchOptions fetchOptionsWithPhotoLibrary:v4 orObject:self];
    v17 = [PHPerson fetchPersonsWithLocalIdentifiers:v13 options:v16];
    v18 = [v13 count];
    v19 = [v17 count];
    v20 = v13;
    v21 = MEMORY[0x1E696AE18];
    if (v18 == v19)
    {
      v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K IN (%@)", @"detectedFaces", @"personForFace.personUUID", v20];
      if (v7)
      {
LABEL_12:
        v23 = MEMORY[0x1E696AB28];
        v74[0] = v22;
        v74[1] = v7;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
        v25 = v24 = v7;
        v26 = [v23 andPredicateWithSubpredicates:v25];

        v7 = v26;
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
      v27 = [(PHObject *)self objectID];
      v22 = [v21 predicateWithFormat:@"memoriesBeingCuratedAssets CONTAINS %@", v27];

      if (v7)
      {
        goto LABEL_12;
      }
    }

    v7 = v22;
    goto LABEL_15;
  }

LABEL_35:
  v7 = [(PHMemory *)self predicateForAssetsContainedInMomentsFromRepresentativeAssets];
  if ([(PHMemory *)self subcategory]== 204 || [(PHMemory *)self subcategory]== 203)
  {
    v42 = [(PHMemory *)self featuredPersonLocalIdentifiers];
    v43 = [PHFetchOptions fetchOptionsWithPhotoLibrary:v4 orObject:self];
    v44 = [v42 allObjects];
    v45 = [PHPerson fetchPersonsWithLocalIdentifiers:v44 options:v43];

    v46 = [v42 count];
    if (v46 == [v45 count])
    {
      v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v42, "count")}];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __45__PHMemory_predicateForAllAssetsWithLibrary___block_invoke;
      v64[3] = &unk_1E75A58E8;
      v65 = v47;
      v48 = v47;
      [v42 enumerateObjectsUsingBlock:v64];
      v49 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K IN (%@)", @"detectedFaces", @"personForFace.personUUID", v48];
      v50 = MEMORY[0x1E696AB28];
      v71[0] = v49;
      v71[1] = v7;
      v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
      v52 = [v50 andPredicateWithSubpredicates:v51];

      v7 = v65;
    }

    else
    {
      v53 = MEMORY[0x1E696AE18];
      v48 = [(PHObject *)self objectID];
      v52 = [v53 predicateWithFormat:@"memoriesBeingCuratedAssets CONTAINS %@", v48];
    }

    v7 = v52;
  }

LABEL_41:

  return v7;
}

void __45__PHMemory_predicateForAllAssetsWithLibrary___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [PHObject uuidFromLocalIdentifier:a2];
  [*(a1 + 32) addObject:v3];
}

- (unint64_t)titleFontNameHash
{
  v3 = [(PHMemory *)self creationDate];
  if (!v3)
  {
    v4 = [PHAsset fetchKeyCuratedAssetInAssetCollection:self referenceAsset:0];
    v5 = [v4 firstObject];

    v3 = [v5 creationDate];
  }

  v6 = [PHAssetCollection titleFontNameHashFromDate:v3];
  v7 = [(PHAssetCollection *)self title];
  v8 = [PHAssetCollection titleFontNameHashFromHash:v6 andHash:[PHAssetCollection titleFontNameHashFromString:v7]];

  return v8;
}

- (id)titleFontName
{
  titleFontName = self->_titleFontName;
  if (!titleFontName)
  {
    v4 = [(PHMemory *)self movieData];
    v5 = [objc_opt_class() titleFontNameFromMovieData:v4];
    v6 = self->_titleFontName;
    self->_titleFontName = v5;

    if (!self->_titleFontName)
    {
      v10.receiver = self;
      v10.super_class = PHMemory;
      v7 = [(PHAssetCollection *)&v10 titleFontName];
      v8 = self->_titleFontName;
      self->_titleFontName = v7;
    }

    titleFontName = self->_titleFontName;
  }

  return titleFontName;
}

- (BOOL)hasBlockableFeature
{
  v2 = [(PHMemory *)self blockableFeatures];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSArray)blockableFeatures
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PHMemory *)self photosGraphProperties];
  if (v3)
  {
    v15 = v3;
    v4 = [v3 objectForKeyedSubscript:@"blacklistableFeatures"];
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
          v12 = [(PHObject *)self photoLibrary];
          v13 = [PHMemoryFeature memoryFeatureWithData:v11 photoLibrary:v12];

          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v3 = v15;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (BOOL)isContiguous
{
  v2 = [(PHMemory *)self photosGraphProperties];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"info"];
    v5 = [v4 objectForKeyedSubscript:@"sourceTypeEnum"];

    if (v5)
    {
      v6 = [v5 unsignedIntegerValue];
    }

    else
    {
      v8 = [v3 objectForKeyedSubscript:@"info"];
      v9 = [v8 objectForKeyedSubscript:@"sourceType"];

      if (v9)
      {
        if ([v9 isEqualToString:@"Moment"])
        {
          v6 = 1;
        }

        else if ([v9 isEqualToString:@"Contiguous Moments"])
        {
          v6 = 2;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    v7 = (v6 - 1) < 2;
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
  v4 = [(PHMemory *)self photosGraphProperties];
  if (!v4)
  {
    goto LABEL_23;
  }

  [(PHMemory *)self photosGraphVersion];
  v5 = PLMemoriesAlgorithmsVersionFromPhotosGraphVersion();
  if (v5 < 0x101)
  {
    v16 = [v4 objectForKeyedSubscript:@"featureVector"];
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

  [v4 objectForKeyedSubscript:v6];
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
        v13 = [v12 firstObject];
        v14 = [v13 isEqualToString:@"People"];

        if (v14)
        {
          v15 = [v12 lastObject];
          [v3 addObject:v15];
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
    v9 = [(PHMemory *)self photosGraphProperties];
    v3 = [v9 objectForKeyedSubscript:@"titleCategory"];
    self->_titleCategory = [v3 integerValue];

    if (!self->_storyTitleCategory)
    {
      v4 = [v9 objectForKeyedSubscript:@"storyTitleCategory"];
      storyTitleCategory = self->_storyTitleCategory;
      self->_storyTitleCategory = v4;
    }

    v6 = v9;
    if (!self->_storyColorGradeKind)
    {
      v7 = [v9 objectForKeyedSubscript:@"storyColorGradeKind"];
      self->_storyColorGradeKind = [v7 integerValue];

      v6 = v9;
      if (!self->_storyColorGradeKind)
      {
        v8 = [v9 objectForKeyedSubscript:@"storyColorGradeCategory"];
        self->_storyColorGradeKind = PFStoryColorGradeKindDefaultForColorGradeCategory();

        v6 = v9;
      }
    }

    self->_didLoadPhotosGraphProperties = 1;
  }
}

- (PHMemory)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v9 = a5;
  v62.receiver = self;
  v62.super_class = PHMemory;
  v10 = [(PHAssetCollection *)&v62 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:v9];
  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:@"photosGraphVersion"];
    v10->_photosGraphVersion = [v11 longLongValue];

    v12 = [v8 objectForKeyedSubscript:@"category"];
    v10->_category = PHMemoryValidatedMemoryCategory([v12 intValue]);

    v13 = [v8 objectForKeyedSubscript:@"subcategory"];
    v10->_subcategory = PHMemoryValidatedMemorySubcategory([v13 intValue]);

    v14 = [v8 objectForKeyedSubscript:@"creationDate"];
    creationDate = v10->_creationDate;
    v10->_creationDate = v14;

    v16 = [v8 objectForKeyedSubscript:@"movieAssetState"];
    movieAssetState = v10->_movieAssetState;
    v10->_movieAssetState = v16;

    v18 = [v8 objectForKeyedSubscript:@"movieData"];
    movieData = v10->_movieData;
    v10->_movieData = v18;

    v20 = [v8 objectForKeyedSubscript:@"photosGraphData"];
    photosGraphData = v10->_photosGraphData;
    v10->_photosGraphData = v20;

    v22 = [v8 objectForKeyedSubscript:@"rejected"];
    v10->_rejected = [v22 BOOLValue];

    v23 = [v8 objectForKeyedSubscript:@"favorite"];
    v10->_favorite = [v23 BOOLValue];

    v24 = [v8 objectForKeyedSubscript:@"pendingState"];
    v10->_pendingState = [v24 intValue];

    v25 = [v8 objectForKeyedSubscript:@"creationType"];
    v10->_creationType = [v25 intValue];

    v26 = [v8 objectForKeyedSubscript:@"syndicatedContentState"];
    v10->_syndicatedContentState = [v26 intValue];

    v27 = [v8 objectForKeyedSubscript:@"userActionOptions"];
    v10->_userActionOptions = [v27 intValue];

    v10->_userCreated = [MEMORY[0x1E69BE5A8] isUserCreatedMemoryWithUserActionOptions:v10->_userActionOptions];
    v28 = [v8 objectForKeyedSubscript:@"subtitle"];
    localizedSubtitle = v10->_localizedSubtitle;
    v10->_localizedSubtitle = v28;

    v30 = [v8 objectForKeyedSubscript:@"graphMemoryIdentifier"];
    graphMemoryIdentifier = v10->_graphMemoryIdentifier;
    v10->_graphMemoryIdentifier = v30;

    v32 = [v8 objectForKeyedSubscript:@"storyColorGradeKind"];
    v10->_storyColorGradeKind = [v32 intValue];

    v33 = [v8 objectForKeyedSubscript:@"storySerializedTitleCategory"];
    [v33 intValue];
    v34 = PFStoryValidatedTitleCategory();
    storyTitleCategory = v10->_storyTitleCategory;
    v10->_storyTitleCategory = v34;

    v36 = [v8 objectForKeyedSubscript:@"score"];
    [v36 doubleValue];
    v10->_score = v37;

    v38 = [v8 objectForKeyedSubscript:@"lastViewedDate"];
    lastViewedDate = v10->_lastViewedDate;
    v10->_lastViewedDate = v38;

    v40 = [v8 objectForKeyedSubscript:@"lastMoviePlayedDate"];
    lastMoviePlayedDate = v10->_lastMoviePlayedDate;
    v10->_lastMoviePlayedDate = v40;

    v42 = [v8 objectForKeyedSubscript:@"lastEnrichmentDate"];
    lastEnrichmentDate = v10->_lastEnrichmentDate;
    v10->_lastEnrichmentDate = v42;

    v44 = [v8 objectForKeyedSubscript:@"assetListPredicate"];
    assetListPredicate = v10->_assetListPredicate;
    v10->_assetListPredicate = v44;

    v46 = [v8 objectForKeyedSubscript:@"notificationState"];
    v10->_notificationState = [v46 intValue];

    v47 = [v8 objectForKeyedSubscript:@"featuredState"];
    v10->_featuredState = [v47 intValue];

    v48 = [v8 objectForKeyedSubscript:@"blacklistedFeature"];
    if (v48)
    {
      v49 = [PHMemoryFeature memoryFeatureWithData:v48 photoLibrary:v9];
    }

    else
    {
      v49 = 0;
    }

    objc_storeStrong(&v10->_blacklistedFeature, v49);
    if (v48)
    {
    }

    v50 = [v8 objectForKeyedSubscript:@"playCount"];
    v10->_syncedPlayCount = [v50 longLongValue];

    v51 = [v8 objectForKeyedSubscript:@"shareCount"];
    v10->_syncedShareCount = [v51 longLongValue];

    v52 = [v8 objectForKeyedSubscript:@"viewCount"];
    v10->_syncedViewCount = [v52 longLongValue];

    v53 = [v8 objectForKeyedSubscript:@"pendingPlayCount"];
    v10->_pendingPlayCount = [v53 longLongValue];

    v54 = [v8 objectForKeyedSubscript:@"pendingShareCount"];
    v10->_pendingShareCount = [v54 longLongValue];

    v55 = [v8 objectForKeyedSubscript:@"pendingViewCount"];
    v10->_pendingViewCount = [v55 longLongValue];

    v10->super._assetCollectionType = 4;
    v56 = [v8 objectForKeyedSubscript:@"sharingComposition"];
    v10->_sharingComposition = [v56 unsignedIntegerValue];

    v57 = [v8 objectForKeyedSubscript:@"startDate"];
    startDate = v10->super._startDate;
    v10->super._startDate = v57;

    v59 = [v8 objectForKeyedSubscript:@"endDate"];
    endDate = v10->super._endDate;
    v10->super._endDate = v59;
  }

  return v10;
}

- (id)movieStateDataForAsset:(id)a3
{
  movieAssetState = self->_movieAssetState;
  v4 = [a3 uuid];
  v5 = [(NSDictionary *)movieAssetState objectForKey:v4];

  return v5;
}

+ (id)memoriesWithBlockedPersonFeatureInPhotoLibrary:(id)a3
{
  v4 = [a3 librarySpecificFetchOptions];
  [v4 setChunkSizeForFetch:200];
  [v4 setCacheSizeForFetch:200];
  v5 = [a1 fetchBlockedMemoriesWithOptions:v4];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PHMemory_memoriesWithBlockedPersonFeatureInPhotoLibrary___block_invoke;
  v10[3] = &unk_1E75A5910;
  v11 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:v10];
  v8 = [v7 allObjects];

  return v8;
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

+ (id)blockedPersonLocalIdentifiersInPhotoLibrary:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [a1 memoriesWithBlockedPersonFeatureInPhotoLibrary:a3];
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

        v10 = [*(*(&v13 + 1) + 8 * i) blacklistedFeature];
        v11 = [v10 personLocalIdentifier];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)fetchMostRelevantMemoryWithOptions:(id)a3
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  v5 = [v3 date];
  v6 = [PHMemory fetchMostRelevantMemoryAtDate:v5 options:v4];

  return v6;
}

+ (unint64_t)_contextualScoreForMemory:(id)a3
{
  v3 = a3;
  if ([v3 subcategory] == 210)
  {
    v4 = 9;
    goto LABEL_3;
  }

  v6 = [v3 category];
  if (v6 <= 211)
  {
    if (v6 > 208)
    {
      if (v6 == 209)
      {
        v4 = 3;
        goto LABEL_3;
      }

      if (v6 == 210)
      {
        v4 = 2;
        goto LABEL_3;
      }
    }

    else
    {
      if (v6 == 101)
      {
        v4 = 4;
        goto LABEL_3;
      }

      if (v6 == 202)
      {
        v4 = 6;
        goto LABEL_3;
      }
    }

LABEL_22:
    v4 = 0;
    goto LABEL_3;
  }

  if (v6 > 213)
  {
    if (v6 == 214)
    {
      v4 = 1;
      goto LABEL_3;
    }

    if (v6 == 216)
    {
      v4 = 5;
      goto LABEL_3;
    }

    goto LABEL_22;
  }

  if (v6 == 212)
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

+ (id)fetchBestRecentMemoryWithOptions:(id)a3
{
  v73[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [v6 startOfDayForDate:v5];

  v57 = v7;
  v58 = v5;
  if (!v4)
  {
    v8 = objc_opt_new();
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(creationDate >= %@) && (creationDate <= %@)", v7, v5];
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
    v4 = v8;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
    [v8 setSortDescriptors:v17];

    v7 = v57;
    v5 = v58;
  }

  v18 = [(PHAssetCollection *)PHMemory fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v4];
  v60 = [MEMORY[0x1E695DEE8] currentCalendar];
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
    v56 = v4;
    v22 = 0;
    v23 = 0;
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
        v29 = [v28 creationDate];
        if (v22 && ![v60 isDate:v22 inSameDayAsDate:v29])
        {

          goto LABEL_21;
        }

        v30 = [a1 _contextualScoreForMemory:v28];
        [v28 score];
        v32 = v31;
        if (v25 < v30 || (v25 == v30 ? (v33 = v26 < v32) : (v33 = 0), v33))
        {
          v34 = v28;

          v35 = v29;
          v22 = v35;
          v26 = v32;
          v25 = v30;
          v23 = v34;
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

    if (v23)
    {
      v37 = PLPhotoKitGetLog();
      v7 = v57;
      v5 = v58;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v67 = "+[PHMemory fetchBestRecentMemoryWithOptions:]";
        v68 = 2112;
        v69 = v23;
        _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_DEFAULT, "%s: Returning memory %@", buf, 0x16u);
      }

      v4 = v56;
LABEL_42:

      goto LABEL_43;
    }

    v4 = v56;
    v7 = v57;
    v5 = v58;
  }

  else
  {

    v22 = 0;
  }

  v38 = [v4 photoLibrary];
  v39 = [PHFetchOptions fetchOptionsWithPhotoLibrary:v38 orObject:0];

  [v39 setFetchLimit:1];
  v40 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v70 = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  [v39 setSortDescriptors:v41];

  v42 = MEMORY[0x1E696AE18];
  v43 = [MEMORY[0x1E695DF00] date];
  v44 = [v42 predicateWithFormat:@"relevantUntilDate > %@ && type == %d", v43, 4];
  [v39 setPredicate:v44];

  v45 = [PHSuggestion fetchSuggestionsWithOptions:v39];
  if ([v45 count])
  {
    v23 = [v45 firstObject];
    v46 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v67 = "+[PHMemory fetchBestRecentMemoryWithOptions:]";
      v68 = 2112;
      v69 = v23;
      _os_log_impl(&dword_19C86F000, v46, OS_LOG_TYPE_DEFAULT, "%s: Returning on-this-day suggestion %@", buf, 0x16u);
    }

    if (v23)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v47 = [v4 photoLibrary];
  v48 = [PHFetchOptions fetchOptionsWithPhotoLibrary:v47 orObject:0];

  [v48 setFetchLimit:1];
  v49 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v65 = v49;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
  [v48 setSortDescriptors:v50];

  v51 = [MEMORY[0x1E696AE18] predicateWithFormat:@"creationDate >= %@ && creationDate <= %@ && (subtype == %d || subtype == %d)", v7, v5, 304, 305];
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

    v23 = 0;
    goto LABEL_42;
  }

  v23 = [v52 firstObject];
  v53 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v67 = "+[PHMemory fetchBestRecentMemoryWithOptions:]";
    v68 = 2112;
    v69 = v23;
    _os_log_impl(&dword_19C86F000, v53, OS_LOG_TYPE_DEFAULT, "%s: Returning person centric suggestion %@", buf, 0x16u);
  }

  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_37:
  v36 = obj;
LABEL_43:
  v54 = v23;

  return v23;
}

+ (id)stringForTriggerType:(unint64_t)a3
{
  if (a3 > 0x1B)
  {
    return @"??";
  }

  else
  {
    return off_1E75A5988[a3];
  }
}

+ (BOOL)isTriggeredMemoryCategory:(unint64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a3 <= 200)
  {
    if (a3 <= 0x20)
    {
      if (((1 << a3) & 0x7FBFFFFE) != 0)
      {
        return result;
      }

      if (((1 << a3) & 0x180000000) != 0)
      {
        return 0;
      }
    }

    if (a3 - 101 < 2)
    {
      return result;
    }

    if (a3 == 100)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (a3 - 201 < 0x15)
  {
    return result;
  }

  if (a3 - 301 >= 2 && a3 != 401)
  {
LABEL_11:
    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEFAULT, "Invalid memory category %lu", &v6, 0xCu);
    }
  }

  return 0;
}

+ (id)stringForFeaturedState:(int64_t)a3
{
  if ((a3 + 1) > 3)
  {
    return @"Unsupported Featured State";
  }

  else
  {
    return off_1E75A5968[a3 + 1];
  }
}

+ (id)stringForNotificationState:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Unsupported Notification State";
  }

  else
  {
    return off_1E75A5950[a3];
  }
}

+ (id)stringForSubcategory:(unint64_t)a3
{
  if (a3 > 300)
  {
    if (a3 > 403)
    {
      if (a3 > 1001)
      {
        switch(a3)
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
        switch(a3)
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
      if (a3 > 400)
      {
        if (a3 == 401)
        {
          return @"Place Region";
        }

        if (a3 == 402)
        {
          return @"Place Location";
        }

        return @"Place Business";
      }

      switch(a3)
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

  if (a3 <= 102)
  {
    switch(a3)
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

  switch(a3)
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
      if (a3 != 103)
      {
        return @"Unsupported Subcategory";
      }

      result = @"Event Calendar";
      break;
  }

  return result;
}

+ (id)stringForCategory:(unint64_t)a3
{
  if (a3 > 100)
  {
    if (a3 > 300)
    {
      switch(a3)
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
      switch(a3)
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
          if (a3 == 101)
          {
            result = @"Contextual";
          }

          else
          {
            if (a3 != 102)
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
    switch(a3)
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
        if (a3 != 100)
        {
          return @"Unsupported Category";
        }

        result = @"Content Creation Tool";
        break;
    }
  }

  return result;
}

+ (id)assetListPredicateFromQueryHintObjects:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v26 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v3;
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
          v13 = v12;
          if ([v13 assetCollectionType] == 1 && (objc_msgSend(v13, "assetCollectionSubtype") == 2 || objc_msgSend(v13, "assetCollectionSubtype") == 5))
          {
            v14 = [v13 cloudGUID];
            if (v14 || ([v13 uuid], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v15 = v14;
              [v4 addObject:v14];
              goto LABEL_18;
            }
          }

          goto LABEL_19;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 uuid];
          [v5 addObject:v13];
          goto LABEL_19;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          if ([v13 collectionListSubtype] == 2)
          {
            v15 = [v13 startDate];
            [v13 endDate];
            v16 = v5;
            v18 = v17 = v4;
            v32[0] = v15;
            v32[1] = v18;
            [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
            v20 = v19 = v10;
            [v26 addObject:v20];

            v10 = v19;
            v4 = v17;
            v5 = v16;
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

  if ([v4 count])
  {
    [v24 setObject:v4 forKey:@"albums"];
  }

  if ([v5 count])
  {
    [v24 setObject:v5 forKey:@"persons"];
  }

  if ([v26 count])
  {
    [v24 setObject:v26 forKey:@"dateRanges"];
  }

  if (![v24 count] || (v27 = 0, objc_msgSend(MEMORY[0x1E696AE40], "dataWithPropertyList:format:options:error:", v24, 200, 0, &v27), (v22 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v22 = [MEMORY[0x1E695DEF0] data];
  }

  return v22;
}

+ (id)titleFontNameFromMovieData:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v9 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v9];
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

+ (id)movieDataWithTitleFontName:(id)a3
{
  v3 = MEMORY[0x1E696ACC8];
  v4 = a3;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:v4 forKey:@"titleFontName"];

  v6 = [v5 encodedData];

  return v6;
}

+ (id)fetchMemoriesWithGraphMemoryIdentifiers:(id)a3 options:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = [a4 copy];
  }

  else
  {
    v8 = a3;
    v7 = objc_alloc_init(PHFetchOptions);
  }

  v9 = v7;
  [(PHFetchOptions *)v7 setIncludeRejectedMemories:1];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"graphMemoryIdentifier IN %@", a3];

  [(PHFetchOptions *)v9 setInternalPredicate:v10];
  [(PHFetchOptions *)v9 setIsExclusivePredicate:1];
  v11 = [(PHAssetCollection *)PHMemory fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v9];

  return v11;
}

+ (id)fetchMemoryWithGraphMemoryIdentifier:(id)a3 options:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = [a4 copy];
  }

  else
  {
    v8 = a3;
    v7 = objc_alloc_init(PHFetchOptions);
  }

  v9 = v7;
  [(PHFetchOptions *)v7 setIncludeLocalMemories:1];
  [(PHFetchOptions *)v9 setIncludeRejectedMemories:1];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"graphMemoryIdentifier == %@", a3];

  [(PHFetchOptions *)v9 setInternalPredicate:v10];
  [(PHFetchOptions *)v9 setIsExclusivePredicate:1];
  [(PHFetchOptions *)v9 setFetchLimit:1];
  v11 = [(PHAssetCollection *)PHMemory fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v9];

  return v11;
}

+ (id)fetchMemoriesWithNilLastEnrichmentDateWithOptions:(id)a3
{
  if (a3)
  {
    v3 = [a3 copy];
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

+ (id)fetchMemoriesWithUserFeedbackWithOptions:(id)a3
{
  if (a3)
  {
    v3 = [a3 copy];
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

+ (id)fetchMemoriesWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__PHMemory_fetchMemoriesWithLocalIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __54__PHMemory_fetchMemoriesWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForMemoriesWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchBlockedMemoriesWithOptions:(id)a3
{
  if (a3)
  {
    v3 = [a3 copy];
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

+ (id)fetchPredicateFromUserCreatedComparisonPredicate:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 leftExpression];
  v5 = [v3 rightExpression];

  if ([v4 expressionType] == 3)
  {
    v6 = [v4 keyPath];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 isEqualToString:@"userCreated"] && !objc_msgSend(v5, "expressionType"))
  {
    v9 = [v5 constantValue];
    if ([v9 BOOLValue])
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

+ (id)fetchPredicateFromComparisonPredicate:(id)a3 options:(id)a4
{
  v6 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___PHMemory;
  v7 = objc_msgSendSuper2(&v9, sel_fetchPredicateFromComparisonPredicate_options_, v6, a4);
  if (!v7)
  {
    v7 = [a1 fetchPredicateFromUserCreatedComparisonPredicate:v6];
  }

  return v7;
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PHMemory_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transformValueExpression_forKeyPath__onceToken_13427 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_13427, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_13428 containsObject:v7])
  {
    v8 = v6;
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

+ (id)fetchPredicateForSharingFilter:(unsigned __int16)a3
{
  if (!a3)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"sharingComposition", a3, v3];

    return v5;
  }

  if (a3 == 1)
  {
    *&a3 = 1;
    goto LABEL_4;
  }

  v5 = 0;

  return v5;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
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

+ (id)_composePropertiesToFetchWithHint:(unint64_t)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if (v3)
  {
    v7 = [a1 identifierPropertiesToFetch];
    [a1 extendPropertiesToFetch:v5 withProperties:v7];

    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [a1 corePropertiesToFetch];
  [a1 extendPropertiesToFetch:v5 withProperties:v8];

  if ((v3 & 4) != 0)
  {
LABEL_4:
    [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  }

LABEL_5:

  return v5;
}

+ (void)generateMemoriesWithOptions:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 photoLibrary];
  v10 = [v9 photoLibrary];
  v11 = [v10 photoAnalysisClient];

  if (v11)
  {
    v12 = [v7 dictionaryRepresentation];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__PHMemory_generateMemoriesWithOptions_completion___block_invoke;
    v14[3] = &unk_1E75A8C38;
    v15 = v8;
    [v11 generateMemoriesWithOptions:v12 reply:v14];
  }

  else if (v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PHMemory.m" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"client"}];

    (*(v8 + 2))(v8, 0, 0);
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

+ (id)mostRelevantMemoryInMemories:(id)a3 atDate:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        [PHMemoryRelevanceHelper relevanceScoreForMemory:v13 atDate:v6];
        if (v14 > v11)
        {
          v15 = v14;
          v16 = v13;

          v9 = v16;
          v11 = v15;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)fetchMostRelevantMemoryAtDate:(id)a3 options:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 copy];
  [v6 setFetchLimit:12];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:0];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [v6 setSortDescriptors:v9];

  v10 = [PHAssetCollection fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v6];
  v11 = [PHMemory mostRelevantMemoryInMemories:v10 atDate:v5];

  return v11;
}

- (BOOL)isPresentedFromURLNavigation
{
  v2 = _identifierForMemoryPresentedFromURNavigation;
  if (!_identifierForMemoryPresentedFromURNavigation)
  {
    return 0;
  }

  v3 = [(PHObject *)self localIdentifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

+ (void)clearCurrentMemoryForURLNavigation
{
  v2 = _identifierForMemoryPresentedFromURNavigation;
  _identifierForMemoryPresentedFromURNavigation = 0;

  v3 = _sourceForMemoryPresentedFromURLNavigation;
  _sourceForMemoryPresentedFromURLNavigation = 0;
}

+ (void)setCurrentMemoryForURLNavigation:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:v3 resolvingAgainstBaseURL:0];
  v5 = [v4 scheme];
  v6 = [v5 isEqualToString:@"photos"];

  if (!v6)
  {
    v23 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_23;
  }

  v7 = [v4 host];
  if (![v7 isEqualToString:@"memory"])
  {
    v23 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_22;
  }

  v28 = v7;
  v29 = v4;
  v30 = v3;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [v4 queryItems];
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v9)
  {
    v31 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_21;
  }

  v10 = v9;
  v31 = 0;
  v11 = 0;
  v12 = 0;
  v13 = *v33;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v33 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v32 + 1) + 8 * i);
      v16 = [v15 name];
      v17 = [v16 isEqualToString:@"identifier"];

      if (v17)
      {
        [v15 value];
        v12 = v18 = v12;
      }

      else
      {
        v19 = [v15 name];
        v20 = [v19 isEqualToString:@"source"];

        if (v20)
        {
          [v15 value];
          v11 = v18 = v11;
        }

        else
        {
          v21 = [v15 name];
          v22 = [v21 isEqualToString:@"play"];

          if (!v22)
          {
            continue;
          }

          v18 = [v15 value];
          v31 = [v18 BOOLValue];
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v10);
LABEL_21:

  v4 = v29;
  v3 = v30;
  v7 = v28;
  v23 = v31;
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

- (id)rankedPreviewAssetsForLength:(unint64_t)a3 targetSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v8 = [(PHMemory *)self curationOfLength:a3 options:MEMORY[0x1E695E0F8] error:&v28];
  v9 = v28;
  if (v9)
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v31 = a3;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "[PHMemory+Curation] failed to fetch assets with length(%lu): %@", buf, 0x16u);
    }

    v11 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v12 = [(PHObject *)self photoLibrary];
    v13 = [v12 librarySpecificFetchOptions];
    v10 = [PHAsset fetchKeyCuratedAssetInAssetCollection:self referenceAsset:0 options:v13];

    v14 = [v10 firstObject];
    v15 = [(PHObject *)self photoLibrary];
    v16 = [v15 librarySpecificFetchOptions];

    [v16 setIncludeGuestAssets:1];
    v17 = MEMORY[0x1E696AE18];
    v18 = [v14 localIdentifier];
    v19 = [v17 predicateWithFormat:@"localIdentifier != %@", v18];

    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"playbackStyle != %d && playbackStyle != %d", 4, 5];
    v21 = MEMORY[0x1E696AB28];
    v29[0] = v19;
    v29[1] = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v23 = [v21 andPredicateWithSubpredicates:v22];
    [v16 setPredicate:v23];

    v24 = [PHAsset fetchAssetsWithUUIDs:v8 options:v16];
    v25 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v24 count];
      *buf = 134217984;
      v31 = v26;
      _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_INFO, "[PHMemory+Curation] Curated assets count:%lu", buf, 0xCu);
    }

    v11 = [objc_opt_class() filteredAndSortedPreviewAssetsByScoreFromAssets:v24 targetSize:{width, height}];
  }

  return v11;
}

- (id)fetchPreviewAssetForLength:(unint64_t)a3 targetSize:(CGSize)a4
{
  v4 = [(PHMemory *)self rankedPreviewAssetsForLength:a3 targetSize:a4.width, a4.height];
  v5 = [v4 firstObject];

  return v5;
}

- (id)extractGenerativeMemoryMusicCuration
{
  if ([(PHMemory *)self isGenerative])
  {
    v3 = [(PHMemory *)self photosGraphProperties];
    v4 = v3;
    if (!v3)
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

    v5 = [v3 objectForKeyedSubscript:@"generativeMemoryData"];
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

- (unint64_t)_fetchNumberOfAssetsWithType:(unint64_t)a3 predicate:(id)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v14 = [(PHMemory *)self _predicateForLivePhotos];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v14 = [(PHMemory *)self _predicateForVideos];
    }

LABEL_10:
    v7 = v14;
    goto LABEL_11;
  }

  if (!a3)
  {
    v14 = [(PHMemory *)self _predicateForImages];
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    v8 = MEMORY[0x1E696AB28];
    v9 = [(PHMemory *)self _predicateForImages];
    v24[0] = v9;
    v10 = MEMORY[0x1E696AB28];
    v11 = [(PHMemory *)self _predicateForLivePhotos];
    v12 = [v10 notPredicateWithSubpredicate:v11];
    v24[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v7 = [v8 andPredicateWithSubpredicates:v13];
  }

LABEL_11:
  v15 = [(PHObject *)self photoLibrary];
  v16 = [v15 librarySpecificFetchOptions];

  v17 = MEMORY[0x1E696AB28];
  v23[0] = v6;
  v23[1] = v7;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];
  [v16 setInternalPredicate:v19];

  [v16 setShouldPrefetchCount:1];
  [v16 setWantsIncrementalChangeDetails:0];
  v20 = [PHAsset fetchAssetsWithOptions:v16];
  v21 = [v20 count];

  return v21;
}

- (unint64_t)_numberOfAssetsWithType:(unint64_t)a3 optionsValue:(id)a4 predicate:(id)a5
{
  if (a4)
  {
    return [a4 integerValue];
  }

  else
  {
    return [(PHMemory *)self _fetchNumberOfAssetsWithType:a3 predicate:a5];
  }
}

- (id)fetchAssetsWithCurationOfLength:(unint64_t)a3 options:(id)a4 error:(id *)a5
{
  v6 = [(PHMemory *)self curationOfLength:a3 options:a4 error:a5];
  if (v6)
  {
    v7 = [(PHObject *)self photoLibrary];
    v8 = [v7 librarySpecificFetchOptions];
    v9 = [PHAsset fetchAssetsWithUUIDs:v6 options:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)curationOfLength:(unint64_t)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(PHObject *)self photoLibrary];
  v10 = [v9 photoAnalysisClient];
  v11 = [(PHObject *)self localIdentifier];
  v12 = [v10 requestCurationOfLength:a3 forMemoryForLocalIdentifier:v11 withOptions:v8 error:a5];

  return v12;
}

- (unint64_t)currentCurationLengthWithOptions:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AE18];
  v6 = [(PHObject *)self objectID];
  v7 = [v5 predicateWithFormat:@"memoriesBeingCuratedAssets CONTAINS %@", v6];

  v8 = [v4 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionImageCountKey"];
  v9 = [(PHMemory *)self _numberOfAssetsWithType:0 optionsValue:v8 predicate:v7];

  v10 = [(PHMemory *)self _numberOfAssetsWithType:2 optionsValue:0 predicate:v7];
  v11 = [v4 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionVideoCountKey"];
  v12 = [(PHMemory *)self _numberOfAssetsWithType:3 optionsValue:v11 predicate:v7];

  [(PHMemory *)self _evaluatedDurationWithNumberOfStillPhotos:v9 - v10 numberOfLivePhotos:v10 numberOfVideos:v12 options:v4];
  v14 = v13;
  v15 = [v4 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionMinimumDurationForMediumCurationKey"];
  if (v15)
  {
    v16 = [v4 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionMinimumDurationForMediumCurationKey"];
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

- (unint64_t)availableCurationLengthsWithOptions:(id)a3
{
  v4 = a3;
  [(PHMemory *)self photosGraphVersion];
  if (PLMemoriesAlgorithmsVersionFromPhotosGraphVersion() >= 0x301)
  {
    v6 = MEMORY[0x1E696AE18];
    v7 = [(PHObject *)self objectID];
    v8 = [v6 predicateWithFormat:@"memoriesBeingExtendedCuratedAssets CONTAINS %@", v7];

    v9 = [v4 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionImageCountKey"];
    v10 = [(PHMemory *)self _numberOfAssetsWithType:0 optionsValue:v9 predicate:v8];

    v11 = [(PHMemory *)self _numberOfAssetsWithType:2 optionsValue:0 predicate:v8];
    v12 = [v4 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionVideoCountKey"];
    v13 = [(PHMemory *)self _numberOfAssetsWithType:3 optionsValue:v12 predicate:v8];

    [(PHMemory *)self _evaluatedDurationWithNumberOfStillPhotos:v10 - v11 numberOfLivePhotos:v11 numberOfVideos:v13 options:v4];
    v15 = v14;
    v16 = [v4 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionMinimumDurationForMediumCurationKey"];
    if (v16)
    {
      v17 = [v4 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionMinimumDurationForMediumCurationKey"];
      [v17 doubleValue];
      v19 = v18;
    }

    else
    {
      v19 = 45.0;
    }

    if (v15 >= v19)
    {
      v20 = [v4 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionMinimumDurationForLongCurationKey"];
      if (v20)
      {
        v21 = [v4 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionMinimumDurationForLongCurationKey"];
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

- (double)_evaluatedDurationWithNumberOfStillPhotos:(unint64_t)a3 numberOfLivePhotos:(unint64_t)a4 numberOfVideos:(unint64_t)a5 options:(id)a6
{
  v9 = a6;
  v10 = [v9 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionStillPhotoDurationKey"];
  if (v10)
  {
    v11 = [v9 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionStillPhotoDurationKey"];
    [v11 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 2.0;
  }

  v14 = [v9 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionLivePhotoDurationKey"];
  if (v14)
  {
    v15 = [v9 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionLivePhotoDurationKey"];
    [v15 doubleValue];
    v17 = v16;
  }

  else
  {
    v17 = 3.0;
  }

  v18 = [v9 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionVideoDurationKey"];
  if (v18)
  {
    v19 = [v9 objectForKeyedSubscript:@"PHMemoryCurationAvailabilityOptionVideoDurationKey"];
    [v19 doubleValue];
    v21 = v20;
  }

  else
  {
    v21 = 6.0;
  }

  return v17 * a4 + a3 * v13 + a5 * v21;
}

+ (id)filteredAndSortedPreviewAssetsByScoreFromAssets:(id)a3 targetSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v78 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    v52 = v6;
    v7 = [a1 previewCandidatesFromAssets:v6];
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
          v42 = [v41 asset];
          [v26 addObject:v42];
          v43 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            [v41 cropScore];
            v45 = v44;
            [v42 curationScore];
            v47 = v46;
            [v42 overallAestheticScore];
            *buf = 138413826;
            *&buf[4] = v42;
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

    v6 = v52;
  }

  else
  {
    v26 = MEMORY[0x1E695E0F0];
  }

  return v26;
}

+ (id)previewCandidatesFromAssets:(id)a3
{
  v51[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![v3 count])
  {
    v33 = [MEMORY[0x1E695DFD8] set];
    goto LABEL_22;
  }

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 persistentDomainForName:*MEMORY[0x1E696A400]];

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v7 = [v3 fetchedObjects];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"curationScore" ascending:0];
  v51[0] = v8;
  v51[1] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v10 = [v7 sortedArrayUsingDescriptors:v9];

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"overallAestheticScore" ascending:0];
  v50[0] = v11;
  v50[1] = v6;
  v42 = v6;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v13 = [v7 sortedArrayUsingDescriptors:v12];

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

  v22 = [v7 count];
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
  v5 = [(PHObject *)self photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v11[0] = @"PHAssetPropertySetIdentifier";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v6 setFetchPropertySets:v7];

  v8 = [PHAsset fetchAssetsWithLocalIdentifiers:v4 options:v6];
  v9 = [v8 fetchedObjectIDs];

  return v9;
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

- (id)queryForKeyAssetWithOptions:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  transientMemoryProperties = self->_transientMemoryProperties;
  v5 = a3;
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

  v10 = [objc_opt_class() _fetchOptionsForTransientMemoryAssetsWithOptions:v5];

  v11 = [PHQuery queryForAssetsWithLocalIdentifiers:v9 options:v10];

  return v11;
}

- (id)queryForCuratedAssetsWithOptions:(id)a3
{
  transientMemoryProperties = self->_transientMemoryProperties;
  v5 = a3;
  v6 = [(NSDictionary *)transientMemoryProperties objectForKeyedSubscript:@"curatedAssets"];

  if (!v6)
  {
    [(PHMemory *)self setupTransientMemory];
  }

  v7 = [objc_opt_class() _fetchOptionsForTransientMemoryAssetsWithOptions:v5];

  v8 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"curatedAssets"];
  v9 = [PHQuery queryForAssetsWithLocalIdentifiers:v8 options:v7];

  return v9;
}

- (id)queryForExtendedCuratedAssetsWithOptions:(id)a3
{
  transientMemoryProperties = self->_transientMemoryProperties;
  v5 = a3;
  v6 = [(NSDictionary *)transientMemoryProperties objectForKeyedSubscript:@"extendeduratedAssets"];

  if (!v6)
  {
    [(PHMemory *)self setupTransientMemory];
  }

  v7 = [objc_opt_class() _fetchOptionsForTransientMemoryAssetsWithOptions:v5];

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
  v9 = [v8 unsignedIntegerValue];
  v10 = [(PHMemory *)self category];

  if (v9 != v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Transient Memory has different category before and after setup", buf, 2u);
  }

  v11 = [(NSDictionary *)self->_transientMemoryProperties objectForKeyedSubscript:@"subcategory"];
  v12 = [v11 unsignedIntegerValue];
  v13 = [(PHMemory *)self subcategory];

  if (v12 != v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

+ (id)_fetchOptionsForTransientMemoryAssetsWithOptions:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    v5 = [v3 copy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = [v5 sortDescriptors];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

    [v5 setSortDescriptors:v9];
  }

  return v5;
}

+ (id)transientMemoryWithInfo:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = [v6 dictionary];
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];
  [v8 setObject:v10 forKeyedSubscript:@"uuid"];

  v11 = [(NSDictionary *)v5 objectForKeyedSubscript:@"category"];
  if (v11)
  {
    [v8 setObject:v11 forKeyedSubscript:@"category"];
  }

  v12 = [(NSDictionary *)v5 objectForKeyedSubscript:@"subcategory"];
  if (v12)
  {
    [v8 setObject:v12 forKeyedSubscript:@"subcategory"];
  }

  v13 = [(NSDictionary *)v5 objectForKeyedSubscript:@"title"];
  if (v13)
  {
    [v8 setObject:v13 forKeyedSubscript:@"title"];
  }

  v14 = [(NSDictionary *)v5 objectForKeyedSubscript:@"subtitle"];
  if (v14)
  {
    [v8 setObject:v14 forKeyedSubscript:@"subtitle"];
  }

  v15 = [(NSDictionary *)v5 objectForKeyedSubscript:@"creationDate"];
  if (v15)
  {
    [v8 setObject:v15 forKeyedSubscript:@"creationDate"];
  }

  v16 = [(NSDictionary *)v5 objectForKeyedSubscript:@"score"];
  if (v16)
  {
    [v8 setObject:v16 forKeyedSubscript:@"score"];
  }

  v17 = [[PHMemory alloc] initWithFetchDictionary:v8 propertyHint:2 photoLibrary:v7];

  transientMemoryProperties = v17->_transientMemoryProperties;
  v17->_transientMemoryProperties = v5;

  return v17;
}

@end