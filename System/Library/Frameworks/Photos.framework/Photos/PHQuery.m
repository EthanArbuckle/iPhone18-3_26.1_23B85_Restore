@interface PHQuery
+ (BOOL)_isKindOfMomentOrAlbumEntity:(id)a3;
+ (BOOL)_validateLocalIdentifiers:(id)a3 compatibilityWithFetchType:(id)a4;
+ (BOOL)isToManySelfInPredicate:(id)a3;
+ (id)_assetIDsFromAssets:(id)a3 anyAsset:(id *)a4;
+ (id)_containerIdentifierForFetchType:(id)a3 predicate:(id)a4 outRelationship:(id *)a5;
+ (id)_defaultFetchOptionsForIdentifiedAssetsQueryInPhotoLibrary:(id)a3;
+ (id)_fetchOptionsForFetchingAssetsFromAssetCollection:(id)a3 options:(id)a4 changeDetectionCriteria:(id)a5;
+ (id)_fetchOptionsForFetchingAssetsFromImportSessions:(id)a3 options:(id)a4;
+ (id)_filterPredicateFromFetchOptionsPredicate:(id)a3 options:(id)a4 phClass:(Class)a5;
+ (id)_guestAssetOnlyPredicate;
+ (id)_queryForAssetResourceUploadJobsWithOptions:(id)a3 configuration:(id)a4 predicate:(id)a5;
+ (id)_queryForAssetsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)_queryForPersonsInAssetsWithObjectIDs:(id)a3 withOptions:(id)a4;
+ (id)_queryForPersonsWithFaceRelationshipPredicate:(id)a3 options:(id)a4;
+ (id)_queryForRootCollectionListWithRootFolder:(id)a3 options:(id)a4;
+ (id)_relationshipForFetchType:(id)a3 predicate:(id)a4;
+ (id)_transformedSortDescriptors:(id)a3 forFetchType:(id)a4;
+ (id)combinedFetchRequestForQueries:(id)a3;
+ (id)defaultSortDescriptorForFetchType:(id)a3 predicate:(id)a4 ascending:(BOOL)a5;
+ (id)fetchRootFolderIDForAlbumKind:(int)a3 photoLibrary:(id)a4;
+ (id)identificationBlockForAlbumSortKey:(unsigned int)a3;
+ (id)identificationBlockForAssetCollectionType:(int64_t)a3;
+ (id)identificationBlockForSmartAlbumKind:(int)a3;
+ (id)queryForAcknowledgeableAssetResourceUploadJobsWithConfiguration:(id)a3 options:(id)a4;
+ (id)queryForActiveLibraryScopeWithOptions:(id)a3;
+ (id)queryForAllAssetsAssociatedWithMemory:(id)a3 options:(id)a4;
+ (id)queryForAllAssetsInYearRepresentedByYearHighlight:(id)a3 options:(id)a4;
+ (id)queryForAllTripHighlightsContainingAssetUUIDs:(id)a3 options:(id)a4;
+ (id)queryForAnsweredQuestionsWithOptions:(id)a3;
+ (id)queryForAnsweredYesOrNoQuestionsWithOptions:(id)a3;
+ (id)queryForAnyCinematicVideosNeedingDeferredProcessingWithOtions:(id)a3;
+ (id)queryForAssetCollectionsContainingAsset:(id)a3 withType:(int64_t)a4 options:(id)a5;
+ (id)queryForAssetCollectionsContainingAssets:(id)a3 withType:(int64_t)a4 options:(id)a5;
+ (id)queryForAssetCollectionsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForAssetCollectionsWithObjectIDs:(id)a3 options:(id)a4;
+ (id)queryForAssetCollectionsWithType:(int64_t)a3 localIdentifiers:(id)a4 options:(id)a5;
+ (id)queryForAssetCollectionsWithType:(int64_t)a3 subtype:(int64_t)a4 options:(id)a5;
+ (id)queryForAssetResourceUploadJobConfigurationsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForAssetResourceUploadJobConfigurationsWithOptions:(id)a3;
+ (id)queryForAssetResourceUploadJobsWithConfiguration:(id)a3 states:(id)a4 options:(id)a5;
+ (id)queryForAssetsAssociatedWithMomentsOfMemory:(id)a3 options:(id)a4;
+ (id)queryForAssetsCaptured:(BOOL)a3 orEdited:(BOOL)a4 onThisCameraSinceDate:(id)a5 options:(id)a6;
+ (id)queryForAssetsForCloudFeedEntry:(id)a3 options:(id)a4;
+ (id)queryForAssetsForComment:(id)a3 options:(id)a4;
+ (id)queryForAssetsForFaceGroups:(id)a3 options:(id)a4;
+ (id)queryForAssetsForFaces:(id)a3 options:(id)a4;
+ (id)queryForAssetsForKeywords:(id)a3 options:(id)a4;
+ (id)queryForAssetsForPTPWithOptions:(id)a3;
+ (id)queryForAssetsForPersons:(id)a3 options:(id)a4;
+ (id)queryForAssetsFromCameraSinceDate:(id)a3 options:(id)a4;
+ (id)queryForAssetsInAssetCollection:(id)a3 options:(id)a4;
+ (id)queryForAssetsInBoundingBoxWithTopLeftLocation:(id)a3 bottomRightLocation:(id)a4 options:(id)a5;
+ (id)queryForAssetsInConversations:(id)a3 options:(id)a4;
+ (id)queryForAssetsInImportSessions:(id)a3 options:(id)a4;
+ (id)queryForAssetsInLibraryScope:(id)a3 options:(id)a4;
+ (id)queryForAssetsInPreviewStateInLibraryScope:(id)a3 options:(id)a4;
+ (id)queryForAssetsInPreviewStateWithSuggestedByClientTypes:(id)a3 options:(id)a4;
+ (id)queryForAssetsInUtilityCollectionWithType:(unsigned __int16)a3 options:(id)a4;
+ (id)queryForAssetsUsingSearchIndexLookupIdentifier:(id)a3 options:(id)a4;
+ (id)queryForAssetsWithBurstIdentifier:(id)a3 options:(id)a4;
+ (id)queryForAssetsWithCurrentUserAsLibraryScopeContributor:(BOOL)a3 inLibraryScope:(id)a4 options:(id)a5;
+ (id)queryForAssetsWithMediaType:(int64_t)a3 options:(id)a4;
+ (id)queryForAssetsWithObjectIDs:(id)a3 options:(id)a4;
+ (id)queryForAssetsWithOptions:(id)a3;
+ (id)queryForAssociatedPersonForFaceGroup:(id)a3 withOptions:(id)a4;
+ (id)queryForChildrenDayGroupHighlightsForPhotosHighlight:(id)a3 options:(id)a4;
+ (id)queryForChildrenHighlightsForPhotosHighlight:(id)a3 options:(id)a4;
+ (id)queryForCloudSharedAlbumInvitationRecordsForCloudSharedAlbum:(id)a3 options:(id)a4;
+ (id)queryForCloudSharedAlbumInvitationRecordsWithOptions:(id)a3;
+ (id)queryForCloudSharedAlbumsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForCollageAssetsInDayHighlight:(id)a3 options:(id)a4;
+ (id)queryForCollectionListContainingCollection:(id)a3 options:(id)a4;
+ (id)queryForCollectionListsWithType:(int64_t)a3 localIdentifiers:(id)a4 options:(id)a5;
+ (id)queryForCollectionListsWithType:(int64_t)a3 subtype:(int64_t)a4 options:(id)a5;
+ (id)queryForCollectionsInCollectionList:(id)a3 options:(id)a4;
+ (id)queryForCommentsForAsset:(id)a3 options:(id)a4;
+ (id)queryForCommentsForCloudFeedEntry:(id)a3 options:(id)a4;
+ (id)queryForCommentsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForContributorForComment:(id)a3 options:(id)a4;
+ (id)queryForConversationsWithOptions:(id)a3;
+ (id)queryForCuratedAssetsInMemory:(id)a3 options:(id)a4;
+ (id)queryForCuratedAssetsInMomentShare:(id)a3 options:(id)a4;
+ (id)queryForCuratedAssetsInPhotosHighlight:(id)a3 options:(id)a4;
+ (id)queryForCurrentUserParticipantInShare:(id)a3 options:(id)a4;
+ (id)queryForCustomUserAssetsInMemory:(id)a3 options:(id)a4;
+ (id)queryForEmptyFaceGroupsWithOptions:(id)a3;
+ (id)queryForEntriesFromEarliestDate:(id)a3 latestDate:(id)a4 filter:(int64_t)a5 options:(id)a6;
+ (id)queryForEntryWithLocalIdentifier:(id)a3 options:(id)a4;
+ (id)queryForExtendedCuratedAssetsInMemory:(id)a3 options:(id)a4;
+ (id)queryForFaceCropsForPerson:(id)a3 options:(id)a4;
+ (id)queryForFaceCropsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForFaceCropsWithOptions:(id)a3;
+ (id)queryForFaceGroupsForPerson:(id)a3 options:(id)a4;
+ (id)queryForFaceGroupsWithFace:(id)a3 options:(id)a4;
+ (id)queryForFaceGroupsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForFaceGroupsWithOptions:(id)a3;
+ (id)queryForFacesForPerson:(id)a3 options:(id)a4;
+ (id)queryForFacesInAsset:(id)a3 options:(id)a4;
+ (id)queryForFacesInAssets:(id)a3 options:(id)a4;
+ (id)queryForFacesInFaceGroup:(id)a3 options:(id)a4;
+ (id)queryForFacesOnAssetWithFace:(id)a3 options:(id)a4;
+ (id)queryForFacesOnFaceCrop:(id)a3 options:(id)a4;
+ (id)queryForFacesWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForFacesWithOptions:(id)a3;
+ (id)queryForFacesWithVuObservationIDs:(id)a3 options:(id)a4;
+ (id)queryForGuestAssetsInCollectionContainingAsset:(id)a3 options:(id)a4;
+ (id)queryForGuestAssetsWithOptions:(id)a3;
+ (id)queryForImportSessionsWithOptions:(id)a3;
+ (id)queryForInFlightJobCountWithConfiguration:(id)a3 options:(id)a4;
+ (id)queryForInvalidMergeCandidatePersonsForPerson:(id)a3 options:(id)a4;
+ (id)queryForKeyAssetForPerson:(id)a3 options:(id)a4;
+ (id)queryForKeyAssetInMemory:(id)a3 options:(id)a4;
+ (id)queryForKeyAssetInPhotosHighlight:(id)a3 options:(id)a4;
+ (id)queryForKeyAssetsInAssetCollection:(id)a3 options:(id)a4;
+ (id)queryForKeyAssetsInCollectionShare:(id)a3 options:(id)a4;
+ (id)queryForKeyAssetsInMomentShare:(id)a3 options:(id)a4;
+ (id)queryForKeyAssetsInSuggestion:(id)a3 options:(id)a4;
+ (id)queryForKeyFaceForFaceGroup:(id)a3 options:(id)a4;
+ (id)queryForKeyFaceOnPerson:(id)a3 options:(id)a4;
+ (id)queryForKeySharingSuggestionAssetsInHighlight:(id)a3 options:(id)a4;
+ (id)queryForKeywordsForAsset:(id)a3 options:(id)a4;
+ (id)queryForKeywordsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForKeywordsWithOptions:(id)a3;
+ (id)queryForKeywordsWithTitles:(id)a3 options:(id)a4;
+ (id)queryForLibraryScopesWithOptions:(id)a3;
+ (id)queryForLikesForAsset:(id)a3 options:(id)a4;
+ (id)queryForLikesForCloudFeedEntry:(id)a3 options:(id)a4;
+ (id)queryForMemoriesWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForMergeCandidatePersonsForPerson:(id)a3 options:(id)a4;
+ (id)queryForMergeCandidateWithConfidencePersonsForPerson:(id)a3 options:(id)a4;
+ (id)queryForMomentListsWithSubType:(int64_t)a3 containingMoment:(id)a4;
+ (id)queryForMomentListsWithSubType:(int64_t)a3 options:(id)a4;
+ (id)queryForMomentsBackingMemory:(id)a3;
+ (id)queryForMomentsBackingSuggestion:(id)a3;
+ (id)queryForMomentsContainingAssetsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForMomentsContainingAssetsWithOIDs:(id)a3 options:(id)a4;
+ (id)queryForMomentsForFacesWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForMomentsForPersonsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForMomentsInMomentList:(id)a3 options:(id)a4;
+ (id)queryForMomentsInPhotosHighlight:(id)a3;
+ (id)queryForMomentsWithOptions:(id)a3;
+ (id)queryForMovieCuratedAssetsInMemory:(id)a3 options:(id)a4;
+ (id)queryForOwnerParticipantInShare:(id)a3 options:(id)a4;
+ (id)queryForParentDayGroupHighlightForPhotosHighlight:(id)a3 options:(id)a4;
+ (id)queryForParentHighlightForPhotosHighlight:(id)a3 options:(id)a4;
+ (id)queryForParentHighlightsForPhotosHighlights:(id)a3 options:(id)a4;
+ (id)queryForPendingLibraryScopeInvitationWithOptions:(id)a3;
+ (id)queryForPersonForFaceCrop:(id)a3 options:(id)a4;
+ (id)queryForPersonWithFace:(id)a3 options:(id)a4;
+ (id)queryForPersonWithShareParticipant:(id)a3 options:(id)a4;
+ (id)queryForPersonsInAsset:(id)a3 options:(id)a4;
+ (id)queryForPersonsInAssets:(id)a3 withOptions:(id)a4;
+ (id)queryForPersonsInAssetsFetchResult:(id)a3 withOptions:(id)a4;
+ (id)queryForPersonsWithContactIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForPersonsWithFaces:(id)a3 options:(id)a4;
+ (id)queryForPersonsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForPersonsWithMdIDs:(id)a3 options:(id)a4;
+ (id)queryForPersonsWithNonNilUserFeedbackWithTypes:(id)a3 options:(id)a4;
+ (id)queryForPersonsWithObjectIDs:(id)a3 options:(id)a4;
+ (id)queryForPersonsWithOptions:(id)a3;
+ (id)queryForPersonsWithQuestionType:(unsigned __int16)a3 options:(id)a4;
+ (id)queryForPersonsWithType:(int64_t)a3 options:(id)a4;
+ (id)queryForPhotosHighlightsContainingMoments:(id)a3;
+ (id)queryForPreviewLibraryScopeWithOptions:(id)a3;
+ (id)queryForProjectsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForQuestionsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForQuestionsWithOptions:(id)a3;
+ (id)queryForQuestionsWithState:(unsigned __int16)a3 options:(id)a4;
+ (id)queryForReferencedAssetsWithOptions:(id)a3;
+ (id)queryForRejectedFacesOnPerson:(id)a3 options:(id)a4;
+ (id)queryForRejectedPersonsForFace:(id)a3 options:(id)a4;
+ (id)queryForRepresentativeAssetsInMemory:(id)a3 options:(id)a4;
+ (id)queryForRepresentativeAssetsInSuggestion:(id)a3 options:(id)a4;
+ (id)queryForRetryableAssetResourceUploadJobsWithConfiguration:(id)a3 options:(id)a4;
+ (id)queryForRootAlbumCollectionListWithOptions:(id)a3;
+ (id)queryForRootProjectCollectionListWithOptions:(id)a3;
+ (id)queryForShareParticipantWithPerson:(id)a3 options:(id)a4;
+ (id)queryForShareParticipantsInShare:(id)a3 options:(id)a4;
+ (id)queryForShareParticipantsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)queryForShareParticipantsWithParticipantIDs:(id)a3 options:(id)a4;
+ (id)queryForSingletonFacesWithOptions:(id)a3;
+ (id)queryForSuggestionsWithFeaturedState:(unsigned __int16)a3 types:(id)a4 options:(id)a5;
+ (id)queryForSuggestionsWithOptions:(id)a3;
+ (id)queryForSuggestionsWithState:(unsigned __int16)a3 options:(id)a4;
+ (id)queryForSuggestionsWithState:(unsigned __int16)a3 type:(unsigned __int16)a4 subtype:(unsigned __int16)a5 options:(id)a6;
+ (id)queryForSuggestionsWithTypes:(id)a3 options:(id)a4;
+ (id)queryForTopLevelCollectionsMatchingPredicate:(id)a3 options:(id)a4;
+ (id)queryForTopLevelUserCollectionsWithOptions:(id)a3;
+ (id)queryForType:(id)a3 withBasePredicate:(id)a4 inLibrary:(id)a5;
+ (id)queryForType:(id)a3 withBasePredicate:(id)a4 seedOIDs:(id)a5 inLibrary:(id)a6;
+ (id)queryForType:(id)a3 withIdentifiers:(id)a4 identifierKeyPath:(id)a5 options:(id)a6;
+ (id)queryForType:(id)a3 withLocalIdentifiers:(id)a4 options:(id)a5;
+ (id)queryForUserCuratedAssetsInMemory:(id)a3 options:(id)a4;
+ (id)queryForVisibleAssetsWithObjectIDs:(id)a3 options:(id)a4;
+ (id)queryforLibraryScopesWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (unsigned)_excludeMaskForUserLibraryWithFetchOptions:(id)a3;
+ (void)_setLibraryScopeDefaultSortDescriptor:(id)a3;
+ (void)photoLibraryWasAccessed;
- (BOOL)evaluateWithObject:(id)a3;
- (BOOL)overrideResultClassWithFetchType;
- (NSDictionary)filteringRelationshipsIndexValueByBaseEntityName;
- (NSFetchRequest)fetchRequest;
- (NSManagedObjectID)combinedQuerySeparatingIdentifier;
- (NSPredicate)filterPredicate;
- (NSRelationshipDescription)containerRelationship;
- (NSSet)filteringKeys;
- (NSSet)filteringOids;
- (NSString)combinedQueryKeyPath;
- (NSString)shortDescription;
- (id)_createFetchRequestIncludingBasePredicate:(BOOL)a3;
- (id)_effectiveDefaultSortDescriptorReversingOrder:(BOOL)a3;
- (id)_effectiveSortDescriptors;
- (id)_globalPredicatesForPHClass:(Class)a3;
- (id)_substitutedChangeTrackingKeyPathFromKeyPath:(id)a3;
- (id)combinedQueryGroupKey;
- (id)containerIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)effectivePredicateForPHClass:(Class)a3 includingBasePredicate:(BOOL)a4;
- (id)executeQuery;
- (id)initForType:(id)a3 withBasePredicate:(id)a4 seedOIDs:(id)a5 inLibrary:(id)a6;
- (id)updatedQueryWithChange:(id)a3;
- (int64_t)collectionFetchType;
- (void)_prepareCombinedQueryKeys;
- (void)_prepareContainerInfo;
- (void)_prepareFilteringAttributes;
- (void)_setIdentificationBlock:(id)a3;
- (void)setFetchOptions:(id)a3;
- (void)visitPredicate:(id)a3;
- (void)visitPredicateExpression:(id)a3;
- (void)visitPredicateOperator:(id)a3;
@end

@implementation PHQuery

+ (void)photoLibraryWasAccessed
{
  if (PLPlatformPhotosAccessLoggingSupported())
  {
    v2 = [MEMORY[0x1E69BF2B0] sharedInstance];
    [v2 logPhotosAccessWithSelfAuditToken];
  }
}

- (id)executeQuery
{
  identificationBlock = self->_identificationBlock;
  if (identificationBlock)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __23__PHQuery_executeQuery__block_invoke;
    v11[3] = &unk_1E75A8C90;
    v11[4] = self;
    v4 = identificationBlock[2](identificationBlock, v11);
  }

  else
  {
    v5 = [PHFetchResult alloc];
    v6 = [(PHQuery *)self photoLibrary];
    v4 = [(PHFetchResult *)v5 initWithQuery:self library:v6];
  }

  if (MEMORY[0x19EAF3390]())
  {
    v7 = [(PHFetchResult *)v4 query];
    v8 = [v7 fetchType];
    if (v8 == @"PHAsset")
    {
      v9 = [(PHFetchResult *)v4 count];

      if (v9)
      {
        plslogGreenTeaReadingPhotosOrVideos();
      }
    }

    else
    {
    }
  }

  +[PHQuery photoLibraryWasAccessed];

  return v4;
}

PHFetchResult *__23__PHQuery_executeQuery__block_invoke(uint64_t a1)
{
  v2 = [PHFetchResult alloc];
  v3 = *(a1 + 32);
  v4 = [v3 photoLibrary];
  v5 = [(PHFetchResult *)v2 initWithQuery:v3 library:v4];

  return v5;
}

- (id)_effectiveSortDescriptors
{
  v39[2] = *MEMORY[0x1E69E9840];
  v3 = [(PHQuery *)self fetchOptions];
  v4 = [v3 sortDescriptors];

  v5 = [(PHQuery *)self fetchOptions];
  v6 = [v5 internalSortDescriptors];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = self->_containerCollection;
    if (v4)
    {
LABEL_3:
      v8 = [objc_opt_class() _transformedSortDescriptors:v4 forFetchType:self->_fetchType];
LABEL_7:
      v9 = v8;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  if (v6)
  {
    v8 = v6;
    goto LABEL_7;
  }

  if ([(PHCollection *)self->_containerCollection isUserSmartAlbum])
  {
    v20 = [MEMORY[0x1E69BE430] sortDescriptorsForAlbumKind:1507];
    v9 = [v20 mutableCopy];

    if ([(PHCollection *)self->_containerCollection customSortKey]== 5 || [(PHCollection *)self->_containerCollection customSortKey]== 101)
    {
      v21 = MEMORY[0x1E696AEB0];
      v22 = @"additionalAttributes.title";
      v23 = 1;
    }

    else
    {
      if ([(PHCollection *)self->_containerCollection customSortKey]!= 1)
      {
        goto LABEL_8;
      }

      v31 = MEMORY[0x1E696AEB0];
      v23 = [(PHCollection *)self->_containerCollection customSortAscending];
      v22 = @"dateCreated";
      v21 = v31;
    }

    v24 = [v21 sortDescriptorWithKey:v22 ascending:v23];
    [v9 insertObject:v24 atIndex:0];
  }

  else if ([(PHCollection *)v7 assetCollectionType]== 12 && [(PHCollection *)self->_containerCollection customSortKey]== 6)
  {
    v25 = [(PHCollection *)self->_containerCollection customSortAscending];
    if ([(PHCollection *)v7 assetCollectionSubtype]== 102)
    {
      v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"cloudBatchPublishDate" ascending:v25];
      v39[0] = v24;
      v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:v25];
      v39[1] = v26;
      v27 = MEMORY[0x1E695DEC8];
      v28 = v39;
    }

    else
    {
      v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:v25];
      v38[0] = v24;
      v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:v25];
      v38[1] = v26;
      v27 = MEMORY[0x1E695DEC8];
      v28 = v38;
    }

    v9 = [v27 arrayWithObjects:v28 count:2];
  }

  else
  {
    v9 = [(PHCollection *)self->_containerCollection effectiveCustomSortDescriptors];
    v29 = [(PHQuery *)self fetchOptions];
    v24 = -[PHQuery _effectiveDefaultSortDescriptorReversingOrder:](self, "_effectiveDefaultSortDescriptorReversingOrder:", [v29 reverseDefaultSortDescriptors]);

    if (v24 && v9)
    {
      v30 = [v9 arrayByAddingObject:v24];

      v9 = v30;
    }

    else if (v24 && !v9)
    {
      v37 = v24;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    }
  }

LABEL_8:
  v10 = [(PHQuery *)self fetchOptions];
  v11 = [v10 reverseSortOrder];

  if (v11)
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v32 + 1) + 8 * i) reversedSortDescriptor];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (int64_t)collectionFetchType
{
  result = self->_collectionFetchType;
  if (!result)
  {
    v4 = [objc_opt_class() _relationshipForFetchType:self->_fetchType predicate:self->_basePredicate];
    v5 = 2;
    if (v4)
    {
      v5 = 3;
    }

    self->_collectionFetchType = v5;

    return self->_collectionFetchType;
  }

  return result;
}

- (NSFetchRequest)fetchRequest
{
  if (self->_searchIndexLookupIdentifier)
  {
    v3 = 0;
  }

  else
  {
    fetchRequest = self->_fetchRequest;
    if (!fetchRequest)
    {
      v7 = [(PHQuery *)self _createFetchRequestIncludingBasePredicate:1];
      v8 = self->_fetchRequest;
      self->_fetchRequest = v7;

      fetchRequest = self->_fetchRequest;
    }

    v3 = fetchRequest;
  }

  return v3;
}

- (NSPredicate)filterPredicate
{
  v3 = [(PHQuery *)self fetchOptions];
  v4 = [v3 predicate];
  if (v4 != self->_cachedFetchOptionsPredicate)
  {
    objc_storeStrong(&self->_cachedFetchOptionsPredicate, v4);
    if (self->_cachedFetchOptionsPredicate)
    {
      v5 = [objc_opt_class() _filterPredicateFromFetchOptionsPredicate:self->_cachedFetchOptionsPredicate options:v3 phClass:{+[PHPhotoLibrary classForFetchType:](PHPhotoLibrary, "classForFetchType:", self->_fetchType)}];
    }

    else
    {
      v5 = 0;
    }

    filterPredicate = self->_filterPredicate;
    self->_filterPredicate = v5;
  }

  v7 = self->_filterPredicate;
  v8 = v7;

  return v7;
}

- (id)containerIdentifier
{
  [(PHQuery *)self _prepareContainerInfo];
  containerIdentifier = self->_containerIdentifier;

  return containerIdentifier;
}

- (void)_prepareContainerInfo
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_preparedContainerInfo)
  {
    if ([(PHQuery *)v2 collectionFetchType]== 3)
    {
      v3 = objc_opt_class();
      fetchType = v2->_fetchType;
      basePredicate = v2->_basePredicate;
      v11 = 0;
      v6 = [v3 _containerIdentifierForFetchType:fetchType predicate:basePredicate outRelationship:&v11];
      v7 = v11;
      containerIdentifier = v2->_containerIdentifier;
      v2->_containerIdentifier = v6;

      containerRelationship = v2->_containerRelationship;
      v2->_containerRelationship = v7;
    }

    else
    {
      if (![(PHQuery *)v2 _isUserSmartAlbum])
      {
LABEL_7:
        v2->_preparedContainerInfo = 1;
        goto LABEL_8;
      }

      v10 = [(PHObject *)v2->_containerCollection objectID];
      containerRelationship = v2->_containerIdentifier;
      v2->_containerIdentifier = v10;
    }

    goto LABEL_7;
  }

LABEL_8:
  objc_sync_exit(v2);
}

- (BOOL)overrideResultClassWithFetchType
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"PHMomentList";
  v6[1] = @"PHSocialGroup";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [(PHQuery *)self fetchType];
  LOBYTE(self) = [v3 containsObject:v4];

  return self;
}

- (void)_setIdentificationBlock:(id)a3
{
  self->_identificationBlock = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (NSString)shortDescription
{
  v10.receiver = self;
  v10.super_class = PHQuery;
  v3 = [(PHQuery *)&v10 description];
  v4 = [(PHQuery *)self fetchOptions];
  v5 = [v4 shortDescription];
  v6 = [(PHQuery *)self fetchType];
  v7 = [(PHQuery *)self basePredicate];
  v8 = [v3 stringByAppendingFormat:@" opts=%@, type=%@, base=%@", v5, v6, objc_opt_class()];

  return v8;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PHQuery;
  v2 = [(PHQuery *)&v4 description];

  return v2;
}

- (void)visitPredicateExpression:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412546;
    v16 = objc_opt_class();
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "PHQuery visitPredicateExpression: %@ %@", &v15, 0x16u);
  }

  v6 = [v4 expressionType];
  if (v6 > 0x14)
  {
    goto LABEL_13;
  }

  if (((1 << v6) & 0x1048F7) != 0)
  {
    v7 = 0;
    goto LABEL_6;
  }

  if (((1 << v6) & 0x408) == 0)
  {
LABEL_13:
    filteringKeys = self->_filteringKeys;
    self->_filteringKeys = 0;

LABEL_14:
    filteringOids = self->_filteringOids;
    self->_filteringOids = 0;

    goto LABEL_15;
  }

  v9 = [v4 keyPath];
  v10 = [v9 length];
  v7 = v10 == 0;
  if (v10)
  {
    v11 = [(PHQuery *)self _substitutedChangeTrackingKeyPathFromKeyPath:v9];
    if ([v11 rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableSet *)self->_filteringKeys addObject:v11];
      v12 = 0;
    }

    else
    {
      v12 = v11 != 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
LABEL_7:
    v8 = self->_filteringKeys;
    self->_filteringKeys = 0;

    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_6:
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_15:
}

- (void)visitPredicateOperator:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412546;
    v6 = objc_opt_class();
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEBUG, "PHQuery visitPredicateOperator: %@ %@", &v5, 0x16u);
  }
}

- (void)visitPredicate:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v37 = objc_opt_class();
    v38 = 2112;
    v39 = v4;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "PHQuery visitPredicate: %@ %@", buf, 0x16u);
  }

  if ([PHQuery isToManySelfInPredicate:v4])
  {
    self->_containsToManySelfInPredicate = 1;
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "PHQuery found to-many SELF IN predicate", buf, 2u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
    v8 = [v7 leftExpression];
    v9 = [v7 rightExpression];
    if (([v8 expressionType] == 10 || objc_msgSend(v8, "expressionType") == 3) && !objc_msgSend(v9, "expressionType"))
    {
      v10 = [v8 keyPath];
      if ([v10 length])
      {
        v11 = [(PHQuery *)self _substitutedChangeTrackingKeyPathFromKeyPath:v10];
        v12 = v11;
        if (!v11 || [v11 rangeOfString:@"."] != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (!self->_filteringOids)
          {
            v13 = [MEMORY[0x1E695DFA8] set];
            filteringOids = self->_filteringOids;
            self->_filteringOids = v13;

            v15 = [MEMORY[0x1E695DFA8] set];
            filteringObjectKeyPaths = self->_filteringObjectKeyPaths;
            self->_filteringObjectKeyPaths = v15;
          }

          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __26__PHQuery_visitPredicate___block_invoke;
          aBlock[3] = &unk_1E75A8CC0;
          aBlock[4] = self;
          v34 = v12;
          v17 = _Block_copy(aBlock);
          if (v12)
          {
            v18 = [v9 constantValue];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17[2](v17, v18);
            }

            else if ([v18 conformsToProtocol:&unk_1F1036760])
            {
              v26 = v12;
              v27 = v10;
              v28 = v9;
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              v25 = v18;
              v19 = v18;
              v20 = [v19 countByEnumeratingWithState:&v29 objects:v35 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v30;
                do
                {
                  for (i = 0; i != v21; ++i)
                  {
                    if (*v30 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v24 = *(*(&v29 + 1) + 8 * i);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v17[2](v17, v24);
                    }
                  }

                  v21 = [v19 countByEnumeratingWithState:&v29 objects:v35 count:16];
                }

                while (v21);
              }

              v9 = v28;
              v12 = v26;
              v10 = v27;
              v18 = v25;
            }
          }
        }
      }
    }
  }
}

void __26__PHQuery_visitPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 200);
  v5 = a2;
  [v4 addObject:v3];
  [*(*(a1 + 32) + 192) addObject:v5];
}

- (id)_substitutedChangeTrackingKeyPathFromKeyPath:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSFetchRequest *)self->_fetchRequest entity];
  v7 = [v4 componentsSeparatedByString:@"."];
  v8 = v4;
  if ([v7 count] == 2)
  {
    v9 = [v6 name];
    v10 = [MEMORY[0x1E69BE540] entityName];
    v11 = [v9 isEqualToString:v10];

    v8 = v4;
    if (v11)
    {
      v12 = [v7 objectAtIndexedSubscript:0];
      v13 = [v7 objectAtIndexedSubscript:1];
      v14 = [v6 relationshipsByName];
      v28 = v12;
      v15 = [v14 objectForKeyedSubscript:v12];

      v16 = [v15 destinationEntity];
      v17 = [v16 propertiesByName];
      v27 = v13;
      v18 = [v17 objectForKeyedSubscript:v13];

      v19 = [v18 userInfo];
      v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69BE9F8]];
      LODWORD(v12) = [v20 BOOLValue];

      v21 = [v18 userInfo];
      v22 = [v21 objectForKeyedSubscript:*MEMORY[0x1E69BE8E0]];

      if (v12)
      {

        v8 = 0;
      }

      else
      {
        v8 = v4;
        if (v22)
        {
          v23 = [v6 propertiesByName];
          v24 = [v23 objectForKeyedSubscript:v22];

          if (v24)
          {
            v8 = v22;
          }

          else
          {
            v25 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Unable to find target property defined by userInfo key PHQueryChangeTrackingFilteringAssetAttributesSubstituteProperty.", buf, 2u);
            }

            v8 = v4;
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v5);

  return v8;
}

- (void)_prepareFilteringAttributes
{
  v76[1] = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_preparedFilteringAttributes)
  {
    v2->_preparedFilteringAttributes = 1;
    v61 = v2;
    v59 = [(PHQuery *)v2 fetchRequest];
    v56 = [v59 entityName];
    v55 = [(PHQuery *)v2 containerRelationship];
    v3 = [v55 name];
    v51 = v3;
    if (v3)
    {
      v76[0] = v3;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:1];
    }

    else
    {
      v4 = MEMORY[0x1E695E0F0];
    }

    v52 = v4;
    v2->_objectToContainerRelationshipIndexValue = [MEMORY[0x1E69BE6F8] indexValueForRelationshipNames:? entity:?];
    v54 = [v55 inverseRelationship];
    v5 = [v54 entity];
    v53 = [v5 name];

    v6 = [v54 name];
    v49 = v6;
    if (v6)
    {
      v75 = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    v50 = v7;
    v61->_containerToObjectRelationshipIndexValue = [MEMORY[0x1E69BE6F8] indexValueForRelationshipNames:? entity:?];
    v8 = [MEMORY[0x1E695DFA8] set];
    filteringKeys = v61->_filteringKeys;
    v61->_filteringKeys = v8;

    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v59 predicate];
      *buf = 138412290;
      v74 = v11;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "\n\n*** PHQuery acceptVisitor: %@", buf, 0xCu);
    }

    v12 = [v59 predicate];
    [v12 acceptVisitor:v61 flags:1];

    if (v61->_filteringOids && v61->_filteringObjectKeyPaths)
    {
      v13 = [MEMORY[0x1E695DF90] dictionary];
      filteringRelationshipsIndexValueByBaseEntityName = v61->_filteringRelationshipsIndexValueByBaseEntityName;
      v61->_filteringRelationshipsIndexValueByBaseEntityName = v13;

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = v61->_filteringObjectKeyPaths;
      v15 = [(NSMutableSet *)obj countByEnumeratingWithState:&v66 objects:v72 count:16];
      if (v15)
      {
        v58 = *v67;
        do
        {
          v60 = v15;
          for (i = 0; i != v60; ++i)
          {
            if (*v67 != v58)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v66 + 1) + 8 * i);
            v18 = [v59 entity];
            v19 = [v18 ph_relationshipDescriptionsForKeyPath:v17];

            v20 = [v19 lastObject];
            v21 = [v20 inverseRelationship];

            if (v21)
            {
              v22 = [v21 entity];
              v23 = [v22 name];

              v24 = [v21 name];
              v25 = v24;
              if (v24)
              {
                v71 = v24;
                v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
              }

              else
              {
                v26 = MEMORY[0x1E695E0F0];
              }

              v27 = [MEMORY[0x1E69BE6F8] indexValueForRelationshipNames:v26 entity:v23];
              v28 = [v21 entity];
              v29 = [v28 ph_baseEntity];
              v30 = [v29 name];

              v31 = [(NSMutableDictionary *)v61->_filteringRelationshipsIndexValueByBaseEntityName objectForKeyedSubscript:v30];
              v32 = [v31 unsignedLongLongValue];

              v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v32 | v27];
              [(NSMutableDictionary *)v61->_filteringRelationshipsIndexValueByBaseEntityName setObject:v33 forKeyedSubscript:v30];
            }
          }

          v15 = [(NSMutableSet *)obj countByEnumeratingWithState:&v66 objects:v72 count:16];
        }

        while (v15);
      }
    }

    v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v35 = v61;
    if (!v61->_filteringKeys)
    {
      goto LABEL_39;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v36 = [v59 sortDescriptors];
    v37 = [v36 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v37)
    {
      v38 = *v63;
      while (2)
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v63 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v40 = [*(*(&v62 + 1) + 8 * j) key];
          if (![v40 length] || objc_msgSend(v40, "rangeOfString:", @".") != 0x7FFFFFFFFFFFFFFFLL)
          {
            v41 = v61->_filteringKeys;
            v61->_filteringKeys = 0;

            goto LABEL_37;
          }

          [(NSMutableSet *)v61->_filteringKeys addObject:v40];
          [v34 addObject:v40];
        }

        v37 = [v36 countByEnumeratingWithState:&v62 objects:v70 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }
    }

LABEL_37:

    v35 = v61;
    v42 = v61->_filteringKeys;
    if (v42)
    {
      v43 = [(NSMutableSet *)v42 allObjects];
      v61->_filteringAttributesIndexValue = [MEMORY[0x1E69BE6F8] indexValueForAttributeNames:v43 entity:v56];
      v61->_filteringRelationshipsIndexValue = [MEMORY[0x1E69BE6F8] indexValueForRelationshipNames:v43 entity:v56];
      v44 = MEMORY[0x1E69BE6F8];
      v45 = [v34 allObjects];
      v61->_sortingAttributesIndexValue = [v44 indexValueForRelationshipNames:v45 entity:v56];

      v35 = v61;
    }

    else
    {
LABEL_39:
      v35->_filteringRelationshipsIndexValue = -1;
      v35->_sortingAttributesIndexValue = -1;
      v35->_filteringAttributesIndexValue = -1;
    }

    containerIdentifier = v35->_containerIdentifier;
    if (containerIdentifier)
    {
      v47 = [(NSManagedObjectID *)containerIdentifier entity];
      v48 = [v47 name];

      v61->_containerSortingAttributesIndexValue = [MEMORY[0x1E69BE6F8] indexValueForAttributeNames:&unk_1F102E180 entity:v48];
      v61->_containerUserQueryIndexValue = [MEMORY[0x1E69BE6F8] indexValueForAttributeNames:&unk_1F102E198 entity:v48];
    }

    v2 = v61;
  }

  objc_sync_exit(v2);
}

- (NSDictionary)filteringRelationshipsIndexValueByBaseEntityName
{
  [(PHQuery *)self _prepareFilteringAttributes];
  filteringRelationshipsIndexValueByBaseEntityName = self->_filteringRelationshipsIndexValueByBaseEntityName;

  return filteringRelationshipsIndexValueByBaseEntityName;
}

- (NSSet)filteringOids
{
  [(PHQuery *)self _prepareFilteringAttributes];
  filteringOids = self->_filteringOids;

  return filteringOids;
}

- (NSSet)filteringKeys
{
  [(PHQuery *)self _prepareFilteringAttributes];
  v3 = [(NSMutableSet *)self->_filteringKeys copy];

  return v3;
}

- (NSManagedObjectID)combinedQuerySeparatingIdentifier
{
  [(PHQuery *)self _prepareCombinedQueryKeys];
  combinedQuerySeparatingIdentifier = self->_combinedQuerySeparatingIdentifier;

  return combinedQuerySeparatingIdentifier;
}

- (NSString)combinedQueryKeyPath
{
  [(PHQuery *)self _prepareCombinedQueryKeys];
  combinedQueryKeyPath = self->_combinedQueryKeyPath;

  return combinedQueryKeyPath;
}

- (id)combinedQueryGroupKey
{
  [(PHQuery *)self _prepareCombinedQueryKeys];
  combinedQueryGroupKey = self->_combinedQueryGroupKey;

  return combinedQueryGroupKey;
}

- (void)_prepareCombinedQueryKeys
{
  v25[2] = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_preparedCombinedQueryKeys)
  {
    v2->_preparedCombinedQueryKeys = 1;
    containerCollection = v2->_containerCollection;
    if ((!containerCollection || [(PHCollection *)containerCollection collectionHasFixedOrder]) && !v2->_seedOIDs)
    {
      v4 = [(PHQuery *)v2 basePredicate];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_22:

        goto LABEL_28;
      }

      v5 = [(PHQuery *)v2 fetchOptions];
      v6 = [v5 fetchLimit];

      if (!v6)
      {
        v4 = [(PHQuery *)v2 basePredicate];
        if ([v4 predicateOperatorType] != 4 || objc_msgSend(v4, "comparisonPredicateModifier"))
        {
          goto LABEL_27;
        }

        v7 = [v4 leftExpression];
        v8 = [v4 rightExpression];
        if ([v7 expressionType] != 3 || objc_msgSend(v8, "expressionType"))
        {
LABEL_26:

LABEL_27:
          goto LABEL_28;
        }

        v9 = [v8 constantValue];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v8 constantValue];
        }

        else
        {
          v10 = 0;
        }

        v11 = [v7 keyPath];
        v12 = [objc_opt_class() _relationshipForFetchType:v2->_fetchType predicate:v4];
        if (!v10 || ![v11 length] || !v12 || (objc_msgSend(v12, "isToMany") & 1) != 0)
        {
LABEL_25:

          goto LABEL_26;
        }

        v13 = [(PHQuery *)v2 _createFetchRequestIncludingBasePredicate:0];
        if (v13)
        {
          v14 = MEMORY[0x1E696AE18];
          v15 = [v11 stringByAppendingString:@" == %@"];
          v24 = [v14 predicateWithFormat:v15, MEMORY[0x1E695E118]];

          v16 = [v13 predicate];
          if (v16)
          {
            v22 = MEMORY[0x1E696AB28];
            v25[0] = v24;
            v21 = [v13 predicate];
            v25[1] = v21;
            v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
            v23 = [v22 andPredicateWithSubpredicates:v17];
          }

          else
          {
            v23 = v24;
          }

          [v13 setPredicate:v23];
          v18 = [[_PHFetchRequestWrapper alloc] initWithFetchRequest:v13 containerIdentifier:0 fetchPropertySets:0];
          combinedQueryGroupKey = v2->_combinedQueryGroupKey;
          v2->_combinedQueryGroupKey = v18;
          v20 = v18;

          objc_storeStrong(&v2->_combinedQueryKeyPath, v11);
          objc_storeStrong(&v2->_combinedQuerySeparatingIdentifier, v10);

          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }
  }

LABEL_28:
  objc_sync_exit(v2);
}

- (BOOL)evaluateWithObject:(id)a3
{
  v4 = a3;
  v5 = [(PHQuery *)self fetchRequest];
  v6 = [v5 predicate];

  LOBYTE(v5) = [v6 evaluateWithObject:v4];
  return v5;
}

- (id)effectivePredicateForPHClass:(Class)a3 includingBasePredicate:(BOOL)a4
{
  v4 = a4;
  v66[2] = *MEMORY[0x1E69E9840];
  v7 = [(PHQuery *)self photoLibrary];
  v8 = [v7 managedObjectContextForCurrentQueueQoS];

  v9 = [(PHQuery *)self filterPredicate];
  v10 = [(PHQuery *)self fetchOptions];
  v11 = [v10 internalPredicate];

  v12 = [(PHQuery *)self fetchOptions];
  v13 = [v12 internalInclusionPredicate];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0;
  basePredicate = self->_basePredicate;
  if (basePredicate && v4)
  {
    v15 = basePredicate;
    [v14 addObject:v15];
  }

  v17 = v9;
  if (v9 || (v17 = v11) != 0)
  {
    [v14 addObject:v17];
  }

  v18 = [(PHQuery *)self fetchOptions];
  v19 = [v18 isExclusivePredicate];

  if ((v19 & 1) == 0)
  {
    v20 = [(PHQuery *)self _globalPredicatesForPHClass:a3];
    [v14 addObjectsFromArray:v20];
  }

  v21 = [(objc_class *)a3 managedEntityName];
  v22 = PLSafeEntityForNameInManagedObjectContext();

  if (v22)
  {
    v23 = [MEMORY[0x1E69BE458] entityName];
    v24 = PLSafeEntityForNameInManagedObjectContext();

    if (v24)
    {
      v25 = PLSafeEntityForNameInManagedObjectContext();
      v64 = v15;
      if (v25)
      {
        v63 = v13;
        if ([v22 isKindOfEntity:v24] && !-[PHQuery _includesCameraRoll](self, "_includesCameraRoll"))
        {
          v61 = v25;
          v26 = [(PHQuery *)self fetchOptions];
          if (!v26)
          {
            v26 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
          }

          v27 = [v26 photoLibrary];

          if (!v27)
          {
            [v26 setPhotoLibrary:self->_photoLibrary];
          }

          v28 = [v26 photoLibrary];
          photoLibrary = self->_photoLibrary;

          if (v28 != photoLibrary)
          {
            v30 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_FAULT, "fetchOptions passed to PHQuery has a photoLibrary set that does not match _photoLibrary", buf, 2u);
            }
          }

          v31 = v26;
          v32 = [v31 photoLibrary];

          if (!v32)
          {
            v58 = [MEMORY[0x1E696AAA8] currentHandler];
            v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSPredicate *_predicateForFilteringCollections(PHFetchOptions *__strong)"];
            [v58 handleFailureInFunction:v59 file:@"PHQuery.m" lineNumber:3033 description:{@"Invalid parameter not satisfying: %@", @"fetchOptions.photoLibrary != nil"}];
          }

          v33 = MEMORY[0x1E69BE458];
          [v31 photoLibrary];
          v34 = v60 = v31;
          v35 = [v33 defaultAlbumKindsForFetchingWithCPLEnabled:{objc_msgSend(v34, "isCloudPhotoLibraryEnabled")}];

          if ([v60 includeFavoriteMemoriesCollectionList])
          {
            v36 = [v35 arrayByAddingObject:&unk_1F102D238];

            v35 = v36;
          }

          if ([v60 includePlacesSmartAlbum])
          {
            v37 = [v35 arrayByAddingObject:&unk_1F102D268];

            v35 = v37;
          }

          if ([v60 includeUserSmartAlbums])
          {
            v38 = [v35 arrayByAddingObject:&unk_1F102D280];

            v35 = v38;
          }

          if ([v60 includeRecentlyEditedSmartAlbum])
          {
            v39 = [v35 arrayByAddingObject:&unk_1F102D298];

            v35 = v39;
          }

          if ([v60 includeScreenRecordingsSmartAlbum])
          {
            v40 = [v35 arrayByAddingObject:&unk_1F102D2B0];

            v35 = v40;
          }

          if ([v60 includeSharedLibrarySharingSuggestionsSmartAlbum])
          {
            v41 = [v35 arrayByAddingObject:&unk_1F102D2C8];

            v35 = v41;
          }

          if ([v60 includeAllPhotosSmartAlbum])
          {
            v42 = [v35 arrayByAddingObject:&unk_1F102D2E0];

            v35 = v42;
          }

          if ([v60 includeActionCamVideoSmartAlbum])
          {
            v43 = [v35 arrayByAddingObject:&unk_1F102D2F8];

            v35 = v43;
          }

          if ([v60 includeProResSmartAlbum])
          {
            v44 = [v35 arrayByAddingObject:&unk_1F102D310];

            v35 = v44;
          }

          if ([v60 includeDuplicatesAlbums])
          {
            v45 = [v35 arrayByAddingObject:&unk_1F102D328];

            v35 = [v45 arrayByAddingObject:&unk_1F102D340];
          }

          v46 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind IN %@", v35];

          [v14 addObject:v46];
          v25 = v61;
        }

        v62 = v11;
        v47 = v25;
        if ([v22 isKindOfEntity:v25])
        {
          v48 = [v9 description];
          v49 = [v48 containsString:@"cloudRelationshipState"];

          if ((v49 & 1) == 0)
          {
            v50 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudRelationshipState != %d", 1];
            [v14 addObject:v50];
          }
        }

        v51 = v24;
        if (![v14 count])
        {
          v52 = [MEMORY[0x1E696AE18] predicateWithValue:1];
          [v14 addObject:v52];
        }

        v53 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v14];
        v25 = v53;
        v13 = v63;
        if (v63)
        {
          v54 = MEMORY[0x1E696AB28];
          v66[0] = v53;
          v66[1] = v63;
          v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
          v56 = [v54 orPredicateWithSubpredicates:v55];

          v25 = v56;
        }

        v24 = v51;
        v11 = v62;
      }

      else
      {
        v47 = 0;
      }

      v15 = v64;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)_globalPredicatesForPHClass:(Class)a3
{
  v105[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(PHQuery *)self fetchOptions];
  v7 = [v6 includeTrashedAssets];
  if ([(objc_class *)a3 managedObjectSupportsTrashedState]&& (v7 & 1) == 0)
  {
    v8 = [MEMORY[0x1E69BE540] predicateToExcludeTrashedAssets];
    [v5 addObject:v8];
  }

  v9 = [v6 includeHiddenAssets];
  if ([(objc_class *)a3 managedObjectSupportsHiddenState]&& (v9 & 1) == 0)
  {
    v10 = [MEMORY[0x1E69BE540] predicateToExcludeHiddenAssets];
    [v5 addObject:v10];
  }

  v11 = [v6 includeTrashedShares];
  if ([(objc_class *)a3 managedObjectSupportsShareTrashedState]&& (v11 & 1) == 0)
  {
    v12 = [MEMORY[0x1E69BE7D0] predicateToExcludeTrashedShares];
    [v5 addObject:v12];
  }

  v13 = [v6 includeExpiredShares];
  if ([(objc_class *)a3 managedObjectSupportsShareExpiredState]&& (v13 & 1) == 0)
  {
    v14 = [MEMORY[0x1E69BE7D0] predicateToExcludeExpiredShares];
    [v5 addObject:v14];
  }

  v15 = [v6 includeExitingShares];
  if ([(objc_class *)a3 managedObjectSupportsShareExitingState]&& (v15 & 1) == 0)
  {
    v16 = [MEMORY[0x1E69BE4E8] predicateToExcludeExitingLibraryScopes];
    [v5 addObject:v16];
  }

  v17 = [v6 includePendingShares];
  if ([(objc_class *)a3 managedObjectSupportsSharePendingState])
  {
    if ((v17 & 1) == 0)
    {
      v18 = [MEMORY[0x1E69BE7D0] predicateToExcludePendingShares];
      [v5 addObject:v18];
    }

    v19 = [MEMORY[0x1E69BE7D0] predicateToExcludeUnknownShares];
    [v5 addObject:v19];
  }

  v20 = [v6 includeOnlyAssetsAllowedForAnalysis];
  if ([(objc_class *)a3 managedObjectSupportsAllowedForAnalysis]&& v20)
  {
    v21 = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAssets];
    [v5 addObject:v21];
  }

  v22 = [v6 includeOnlyContentContributedByCurrentUser];
  v23 = [v6 includeBothPrivateAssetsAndSharedContentContributedByCurrentUser];
  if ([(objc_class *)a3 managedObjectSupportsContributor])
  {
    if (v22)
    {
      v24 = [MEMORY[0x1E69BE540] predicateToIncludeOnlyContentContributedByCurrentUser];
LABEL_38:
      v31 = v24;
      [v5 addObject:v24];

      goto LABEL_39;
    }

    if (v23)
    {
      v24 = [MEMORY[0x1E69BE540] predicateToIncludeBothPrivateAssetsAndSharedContentContributedByCurrentUser];
      goto LABEL_38;
    }

    v25 = [v6 useNoIndexOnSharingFilter];
    if ([v6 sharingFilter] != 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = self->_containerCollection;
        if ([(PHCollection *)v26 assetCollectionType]== 2)
        {
          v25 |= [(PHCollection *)v26 assetCollectionSubtype]== 209;
        }
      }
    }

    v27 = [v6 sharingFilter];
    if (v27 == 1)
    {
      v28 = MEMORY[0x1E69BE540];
      v29 = v25 & 1;
      v30 = 1;
      goto LABEL_37;
    }

    if (!v27)
    {
      v28 = MEMORY[0x1E69BE540];
      v29 = v25 & 1;
      v30 = 0;
LABEL_37:
      v24 = [v28 predicateForAssetSharingFilter:v30 noindex:v29];
      goto LABEL_38;
    }
  }

LABEL_39:
  if ([(objc_class *)a3 managedObjectSupportsVisibilityState])
  {
    if (([v6 includeDuplicateAssets] & 1) == 0)
    {
      v32 = [(PHQuery *)self photoLibrary];
      v33 = [v32 isCloudPhotoLibraryEnabled];

      if ((v33 & 1) == 0)
      {
        v34 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(visibilityState) = %d", 0];
        v35 = MEMORY[0x1E696AB28];
        v105[0] = v34;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:1];
        v37 = [MEMORY[0x1E69BF328] subpredicatesForExcludeMask:{objc_msgSend(MEMORY[0x1E69BF328], "maskForPhotoStreamAsset")}];
        v38 = [v36 arrayByAddingObjectsFromArray:v37];
        v39 = [v35 orPredicateWithSubpredicates:v38];

        [v5 addObject:v39];
      }
    }
  }

  if (-[objc_class managedObjectSupportsDuplicateVisibilityState](a3, "managedObjectSupportsDuplicateVisibilityState") && [v6 excludeDuplicateAssetVisibilityStateHidden])
  {
    v40 = [MEMORY[0x1E69BE540] predicateToExcludeDuplicateAssetVisibilityStateHidden];
    [v5 addObject:v40];
  }

  if (-[objc_class managedObjectSupportsDuplicateVisibilityState](a3, "managedObjectSupportsDuplicateVisibilityState") && [v6 includeDuplicateAssetVisibilityStateMostRelevant])
  {
    v41 = [MEMORY[0x1E69BE540] predicateToIncludeDuplicateAssetVisibilityStateMostRelevant];
    [v5 addObject:v41];
  }

  if (-[objc_class managedObjectSupportsAssetStacks](a3, "managedObjectSupportsAssetStacks") && [v6 excludeNonVisibleStackedAssets])
  {
    v42 = [MEMORY[0x1E69BE540] predicateToExcludeNonVisibleStackedAssets];
    [v5 addObject:v42];
  }

  if (-[objc_class managedObjectSupportsPendingState](a3, "managedObjectSupportsPendingState") && ([v6 includePendingMemories] & 1) == 0)
  {
    v43 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(pendingState) != %d", 1];
    [v5 addObject:v43];
  }

  if (-[objc_class managedObjectSupportsPendingState](a3, "managedObjectSupportsPendingState") && ([v6 includeLocalMemories] & 1) == 0)
  {
    v44 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(pendingState) != %d", 2];
    [v5 addObject:v44];
  }

  if (-[objc_class managedObjectSupportsCreationType](a3, "managedObjectSupportsCreationType") && ([v6 includeStoryMemories] & 1) == 0)
  {
    v45 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(creationType) != %d", 1];
    [v5 addObject:v45];
  }

  if (-[objc_class managedObjectSupportsPendingState](a3, "managedObjectSupportsPendingState") && ([v6 includeSourceMemories] & 1) == 0)
  {
    v46 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == nil", @"targetUserEditedMemory"];
    [v5 addObject:v46];
  }

  if (-[objc_class managedObjectSupportsRejectedState](a3, "managedObjectSupportsRejectedState") && ([v6 includeRejectedMemories] & 1) == 0)
  {
    v47 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(rejected) == NO"];
    [v5 addObject:v47];
  }

  if ([(objc_class *)a3 managedObjectSupportsPersonFilters])
  {
    v48 = [PHQueryPersonContext subpredicatesForFetchOptions:v6];
    [v5 addObjectsFromArray:v48];
    v49 = [PHQueryPersonContext fetchOptionsWithOverriddenChangeDetectionCriteriaIfNecessary:v6];

    [(PHQuery *)self setFetchOptions:v49];
    v6 = v49;
  }

  if (-[objc_class managedObjectSupportsKeyFaces](a3, "managedObjectSupportsKeyFaces") && [v6 includeOnlyPersonsWithVisibleKeyFaces])
  {
    v50 = [MEMORY[0x1E69BE608] predicateForVisibleKeyFace];
    [v5 addObject:v50];
  }

  if (-[objc_class managedObjectSupportsMontage](a3, "managedObjectSupportsMontage") && [v6 excludeMontageAssets])
  {
    v51 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(additionalAttributes.montage) == nil"];
    [v5 addObject:v51];
  }

  if (-[objc_class managedObjectSupportsScreenshot](a3, "managedObjectSupportsScreenshot") && [v6 excludeScreenshotAssets])
  {
    v52 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == NO", @"isDetectedScreenshot"];
    [v5 addObject:v52];
  }

  if (-[objc_class managedObjectSupportsBursts](a3, "managedObjectSupportsBursts") && ([v6 includeAllBurstAssets] & 1) == 0)
  {
    v53 = [(PHQuery *)self containerIdentifier];
    if (!v53 || (v54 = objc_opt_class(), [v53 entity], v55 = objc_claimAutoreleasedReturnValue(), LODWORD(v54) = objc_msgSend(v54, "_isKindOfMomentOrAlbumEntity:", v55), v55, !v54) || (-[PHQuery containerRelationship](self, "containerRelationship"), v56 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v56, "inverseRelationship"), v57 = objc_claimAutoreleasedReturnValue(), v56, objc_msgSend(v57, "name"), v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v58, "isEqualToString:", @"assets"), v58, v57, (v59 & 1) == 0))
    {
      v60 = [MEMORY[0x1E69BE540] predicateToExcludeNonvisibleBurstAssets];
      [v5 addObject:v60];
    }
  }

  if (-[objc_class managedObjectSupportsFaceState](a3, "managedObjectSupportsFaceState") && v6 && ([v6 includeNonvisibleFaces] & 1) == 0)
  {
    v61 = [MEMORY[0x1E69BE3D0] predicatesToExcludeNonVisibleFaces];
    [v5 addObjectsFromArray:v61];
  }

  if (-[objc_class managedObjectSupportsFaceState](a3, "managedObjectSupportsFaceState") && [v6 includeOnlyFacesNeedingFaceCrop])
  {
    v62 = [MEMORY[0x1E69BE3D0] predicatesForFacesNeedingFaceCropGeneration];
    [v5 addObjectsFromArray:v62];
  }

  if (-[objc_class managedObjectSupportsFaceState](a3, "managedObjectSupportsFaceState") && [v6 includeOnlyFacesWithFaceprints])
  {
    v63 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(faceprint) != nil"];
    [v5 addObject:v63];
  }

  if (-[objc_class managedObjectSupportsFaceState](a3, "managedObjectSupportsFaceState") && [v6 includeOnlyFacesInFaceGroups])
  {
    v64 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(faceGroup) != nil"];
    [v5 addObject:v64];
  }

  if ([(objc_class *)a3 managedObjectSupportsSavedAssetType])
  {
    v65 = [(PHQuery *)self photoLibrary];
    v66 = [v65 isCloudPhotoLibraryEnabled];

    if (v66)
    {
      v67 = [MEMORY[0x1E69BF328] subpredicatesForExcludeMask:{objc_msgSend(MEMORY[0x1E69BF328], "maskForPhotoStreamAsset")}];
      [v5 addObjectsFromArray:v67];
    }
  }

  if (-[objc_class managedObjectSupportsAdjustments](a3, "managedObjectSupportsAdjustments") && [v6 includeRecentlyEditedSmartAlbum])
  {
    v68 = [MEMORY[0x1E69BE540] predicateToExcludeCameraAutoAdjustments];
    [v5 addObject:v68];
  }

  v69 = [v6 photoLibrary];
  v70 = [v69 type];

  if (!v70)
  {
    if (![(objc_class *)a3 managedObjectSupportsSavedAssetType])
    {
      goto LABEL_111;
    }

    v74 = [PHQuery _excludeMaskForUserLibraryWithFetchOptions:v6];
    goto LABEL_110;
  }

  v71 = [v6 photoLibrary];
  v72 = [v71 type];

  if (v72 == 1)
  {
    v73 = [v6 includePlaceholderAssets];
    if ([(objc_class *)a3 managedObjectSupportsSavedAssetType])
    {
      BYTE2(v100) = 1;
      LOWORD(v100) = 257;
      HIDWORD(v99) = 16843009;
      BYTE3(v99) = v73 ^ 1;
      BYTE2(v99) = 0;
      LOWORD(v99) = 257;
      v74 = [MEMORY[0x1E69BF328] validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:1 cameraConnectionKit:1 cloudPhotoLibrary:v99 wallpaper_UNUSED:v100 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
LABEL_110:
      v75 = [MEMORY[0x1E69BF328] subpredicatesForExcludeMask:v74];
      [v5 addObjectsFromArray:v75];
    }
  }

LABEL_111:
  if (![(objc_class *)a3 managedObjectSupportsDetectionType])
  {
    goto LABEL_122;
  }

  v76 = [v6 includedDetectionTypes];
  v77 = v76;
  if (v76)
  {
    v78 = v76;
  }

  else
  {
    v78 = +[PHFetchOptions defaultDetectionTypes];
  }

  if (objc_opt_class() == a3)
  {
    v79 = 0x1E69BE3D0;
LABEL_119:
    v80 = [*v79 predicateForIncludedDetectionTypes:v78];
    if (v80)
    {
      v81 = v80;
      [v5 addObject:v80];
    }

    goto LABEL_121;
  }

  if (objc_opt_class() == a3)
  {
    v79 = 0x1E69BE608;
    goto LABEL_119;
  }

LABEL_121:

LABEL_122:
  if ([(objc_class *)a3 managedObjectSupportsBodyDetection])
  {
    v82 = [PHFace faceFetchTypeForOptions:v6];
    v83 = [MEMORY[0x1E69BE3D0] predicateForFetchType:v82];
    [v5 _pl_addNonNilObject:v83];
  }

  if (-[objc_class managedObjectSupportsTorsoOnly](a3, "managedObjectSupportsTorsoOnly") && (!v6 || ([v6 includeTorsoOnlyPerson] & 1) == 0))
  {
    v84 = [MEMORY[0x1E69BE608] predicateToExcludeTorsoOnlyPerson];
    [v5 addObject:v84];
  }

  if (-[objc_class managedObjectSupportsSharingComposition](a3, "managedObjectSupportsSharingComposition") && v6 && [v6 sharingFilter] != 2)
  {
    v85 = -[objc_class fetchPredicateForSharingFilter:](a3, "fetchPredicateForSharingFilter:", [v6 sharingFilter]);
    if (v85)
    {
      [v5 addObject:v85];
    }
  }

  if ([(objc_class *)a3 managedObjectSupportsSensitivityAnalysis])
  {
    if ([v6 excludeSensitiveAndUnprocessedAssets])
    {
      getSCSensitivityAnalysisClass_36607();
      if (objc_opt_respondsToSelector())
      {
        v101 = 0;
        v86 = [getSCSensitivityAnalysisClass_36607() shouldHonorFetchExclusionPredicate:&v101];
        v87 = v101;
        if (v86)
        {
          v88 = MEMORY[0x1E696AB28];
          v89 = [MEMORY[0x1E69BE540] predicateForAssetsIncompletelyProcessedForSensitivity];
          v90 = [v88 notPredicateWithSubpredicate:v89];
          v104[0] = v90;
          v91 = MEMORY[0x1E696AB28];
          v92 = [getSCSensitivityAnalysisClass_36607() fetchExclusionPredicateWithCompactAnalysisKeyPath:@"compactSCSensitivityAnalysis"];
          v93 = [v91 notPredicateWithSubpredicate:v92];
          v104[1] = v93;
          v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
          v95 = [v88 andPredicateWithSubpredicates:v94];

          [v5 addObject:v95];
        }

        if (v87)
        {
          v96 = PLBackendGetLog();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v103 = v87;
            _os_log_impl(&dword_19C86F000, v96, OS_LOG_TYPE_ERROR, "Error evaluating if fetch exclusion predicate should be honored with the current policy: %@", buf, 0xCu);
          }
        }
      }
    }
  }

  v97 = v5;

  return v5;
}

- (void)setFetchOptions:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [v4 copy];
    fetchOptions = self->_fetchOptions;
    self->_fetchOptions = v5;

    v7 = [v10 photoLibrary];

    v4 = v10;
    if (v7)
    {
      v8 = [v10 photoLibrary];
      photoLibrary = self->_photoLibrary;
      self->_photoLibrary = v8;

      v4 = v10;
    }
  }
}

- (NSRelationshipDescription)containerRelationship
{
  [(PHQuery *)self _prepareContainerInfo];
  containerRelationship = self->_containerRelationship;

  return containerRelationship;
}

- (id)_effectiveDefaultSortDescriptorReversingOrder:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHQuery *)self basePredicate];

  if (!v5 || (v6 = objc_opt_class(), -[PHQuery fetchType](self, "fetchType"), v7 = objc_claimAutoreleasedReturnValue(), -[PHQuery basePredicate](self, "basePredicate"), v8 = objc_claimAutoreleasedReturnValue(), [v6 defaultSortDescriptorForFetchType:v7 predicate:v8 ascending:!v3], v9 = objc_claimAutoreleasedReturnValue(), v8, v7, !v9))
  {
    v9 = [(PHCollection *)self->_containerCollection defaultSortDescriptor];
  }

  return v9;
}

- (id)_createFetchRequestIncludingBasePredicate:(BOOL)a3
{
  v3 = a3;
  v44 = *MEMORY[0x1E69E9840];
  v5 = [(PHQuery *)self fetchOptions];
  v6 = [v5 relatedEntityName];

  v7 = [PHPhotoLibrary classForFetchType:self->_fetchType];
  v8 = [(objc_class *)v7 managedEntityName];
  if (v6)
  {
    v9 = [v5 relatedRelationshipProperty];

    if (v9)
    {
      v10 = [v5 relatedEntityName];

      v8 = v10;
    }

    else
    {
      v11 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v5;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "fetchOptions.relatedEntityName supplied without a .relatedRelationshipProperty: %@", buf, 0xCu);
      }
    }
  }

  v12 = [(PHQuery *)self photoLibrary];
  v13 = [v12 managedObjectContextForCurrentQueueQoS];
  v14 = PLSafeEntityForNameInManagedObjectContext();
  if (v14)
  {
    v15 = objc_opt_new();
    [v15 setEntity:v14];
    v16 = [(PHQuery *)self effectivePredicateForPHClass:v7 includingBasePredicate:v3];
    if (v16)
    {
      [v15 setPredicate:v16];
    }

    v17 = [(PHQuery *)self propertiesToGroupBy];
    if ([v17 count])
    {
      v35 = v16;
      v38 = v12;
      [v15 setResultType:2];
      v36 = v17;
      [v15 setPropertiesToGroupBy:v17];
      v18 = objc_alloc_init(MEMORY[0x1E695D5C8]);
      [v18 setName:@"objectID"];
      v19 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
      [v18 setExpression:v19];

      [v18 setExpressionResultType:2000];
      v41 = v18;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
      v21 = [(PHQuery *)self propertiesToFetchWhenGrouping];
      v22 = [v21 count];

      if (v22)
      {
        v23 = [(PHQuery *)self propertiesToFetchWhenGrouping];
        v24 = [v20 arrayByAddingObjectsFromArray:v23];

        v20 = v24;
      }

      [v15 setPropertiesToFetch:v20];

      v17 = v36;
      v12 = v38;
      v16 = v35;
    }

    else if (v6)
    {
      [v15 setResultType:2];
      v25 = objc_alloc_init(MEMORY[0x1E695D5C8]);
      [v25 setName:@"objectID"];
      v39 = v12;
      v26 = MEMORY[0x1E696ABC8];
      [v5 relatedRelationshipProperty];
      v37 = v17;
      v28 = v27 = v16;
      v29 = [v26 expressionForKeyPath:v28];
      [v25 setExpression:v29];

      v16 = v27;
      v17 = v37;
      [v25 setExpressionResultType:2000];
      v40 = v25;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      [v15 setPropertiesToFetch:v30];

      v12 = v39;
    }

    else
    {
      [v15 setResultType:1];
    }

    [v15 setIncludesPropertyValues:0];
    [v15 setIncludesPendingChanges:0];
    v31 = [(PHQuery *)self _effectiveSortDescriptors];
    [v15 setSortDescriptors:v31];
    v32 = [v5 fetchLimit];
    if (v32)
    {
      [v15 setFetchLimit:v32];
    }

    v33 = [v5 fetchOffset];
    if (v33)
    {
      [v15 setFetchOffset:v33];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)updatedQueryWithChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_containerCollection)
  {
    goto LABEL_14;
  }

  v6 = [v4 changeDetailsForObject:?];
  v7 = [v6 objectAfterChanges];
  if (!(v6 | v7))
  {
    v8 = [(PHQuery *)self fetchOptions];
    v9 = [v8 changeDetectionCriteria];
    v10 = [(PHQuery *)self photoLibrary];
    v11 = [v10 managedObjectContext];
    v12 = [v5 intersectsWithDetectionCriteria:v9 managedObjectContext:v11];

    if (!v12)
    {
LABEL_13:

LABEL_14:
      v13 = self;
      goto LABEL_15;
    }

    v7 = self->_containerCollection;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

  v13 = [(PHQuery *)self copy];
  [(PHQuery *)v13 _setContainerCollection:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if ([v15 plAlbumKind] == 1507)
  {
    v16 = objc_alloc_init(MEMORY[0x1E69BE700]);
    v28 = MEMORY[0x1E69BE708];
    v29 = v16;
    v17 = [v15 userQuery];
    v18 = [v15 photoLibrary];
    v19 = [v18 photoLibrary];
    v20 = [v28 predicateForQuery:v17 inLibrary:v19 changeDetectionCriteria:v16];
    [(PHQuery *)v13 _setBasePredicate:v20];

    v21 = MEMORY[0x1E69BE708];
    v22 = [v15 userQuery];
    v23 = [v21 includesHiddenAssetsInQuery:v22];

    v24 = [(PHQuery *)v13 fetchOptions];
    [v24 setIncludeHiddenAssets:v23];

    v25 = [[PHQueryChangeDetectionCriteria alloc] initWithPLQueryChangeDetectionCriteria:v29];
    v26 = [(PHQuery *)v13 fetchOptions];
    [v26 setChangeDetectionCriteria:v25];
  }

  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initForType:self->_fetchType withBasePredicate:self->_basePredicate inLibrary:self->_photoLibrary];
  v5 = [(PHQuery *)self fetchOptions];
  [v4 setFetchOptions:v5];

  [v4 _setIncludesCameraRoll:{-[PHQuery _includesCameraRoll](self, "_includesCameraRoll")}];
  v6 = [(PHCollection *)self->_containerCollection copy];
  [v4 _setContainerCollection:v6];

  [v4 _setCollectionFetchType:{-[PHQuery collectionFetchType](self, "collectionFetchType")}];
  [v4 _setIdentificationBlock:self->_identificationBlock];
  v7 = [(PHQuery *)self propertiesToGroupBy];
  [v4 setPropertiesToGroupBy:v7];

  v8 = [(PHQuery *)self propertiesToFetchWhenGrouping];
  [v4 setPropertiesToFetchWhenGrouping:v8];

  objc_storeStrong(v4 + 35, self->_searchIndexLookupIdentifier);
  return v4;
}

- (id)initForType:(id)a3 withBasePredicate:(id)a4 seedOIDs:(id)a5 inLibrary:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = PHQuery;
  v15 = [(PHQuery *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fetchType, a3);
    objc_storeStrong(&v16->_basePredicate, a4);
    objc_storeStrong(&v16->_seedOIDs, a5);
    objc_storeStrong(&v16->_photoLibrary, a6);
    v17 = [(PHPhotoLibrary *)v16->_photoLibrary librarySpecificFetchOptions];
    fetchOptions = v16->_fetchOptions;
    v16->_fetchOptions = v17;

    if (v11)
    {
      if (v14)
      {
        goto LABEL_4;
      }

      v20 = MEMORY[0x1E695DF30];
      v21 = *MEMORY[0x1E695D940];
      v22 = @"PHQuery requires a library";
    }

    else
    {
      v20 = MEMORY[0x1E695DF30];
      v21 = *MEMORY[0x1E695D940];
      v22 = @"PHQuery requires a type";
    }

    v23 = [v20 exceptionWithName:v21 reason:v22 userInfo:0];
    objc_exception_throw(v23);
  }

LABEL_4:

  return v16;
}

+ (id)identificationBlockForAssetCollectionType:(int64_t)a3
{
  if (a3 <= 0xD && ((0x3FDFu >> a3) & 1) != 0)
  {
    v3 = _Block_copy(*off_1E75A8F00[a3]);
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = PHQueryForAssetCollectionType_Other;
  }

  v5 = _Block_copy(v4);

  v6 = _Block_copy(v5);

  return v6;
}

+ (id)identificationBlockForAlbumSortKey:(unsigned int)a3
{
  v3 = 0;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        v4 = &PHQueryForAssetsInAlbum_SortKeyPublishDate;
      }

      else
      {
        if (a3 != 101)
        {
          goto LABEL_19;
        }

        v4 = &PHQueryForAssetsInAlbum_SortKeyContentTitle;
      }
    }

    else if (a3 == 4)
    {
      v4 = &PHQueryForAssetsInAlbum_SortKeyTrashDate;
    }

    else
    {
      v4 = &PHQueryForAssetsInAlbum_SortKeyTitle;
    }
  }

  else if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = &PHQueryForAssetsInAlbum_SortKeyLastModifiedDate;
    }

    else
    {
      v4 = &PHQueryForAssetsInAlbum_SortKeyImportDate;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_19;
    }

    v4 = &PHQueryForAssetsInAlbum_SortKeyCreationDate;
  }

  else
  {
    v4 = &PHQueryForAssetsInAlbum_SortKeyManual;
  }

  v3 = _Block_copy(*v4);
LABEL_19:
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = PHQueryForAssetsAlbum_SortKeyOther;
  }

  v6 = _Block_copy(v5);

  v7 = _Block_copy(v6);

  return v7;
}

+ (id)identificationBlockForSmartAlbumKind:(int)a3
{
  v3 = 0;
  if (a3 <= 1549)
  {
    if (a3 > 1501)
    {
      if (a3 > 1506)
      {
        if (a3 > 1508)
        {
          if (a3 == 1509)
          {
            v4 = PHQueryForAssetInAlbumKind_ConversationAlbum;
          }

          else
          {
            if (a3 != 1510)
            {
              goto LABEL_111;
            }

            v4 = PHQueryForAssetInAlbumKind_Duplicate;
          }
        }

        else if (a3 == 1507)
        {
          v4 = PHQueryForAssetInAlbumKind_UserSmartAlbum;
        }

        else
        {
          v4 = PHQueryForAssetInAlbumKind_Project;
        }
      }

      else if (a3 > 1504)
      {
        if (a3 == 1505)
        {
          v4 = PHQueryForAssetInAlbumKind_CloudSharedAlbum;
        }

        else
        {
          v4 = PHQueryForAssetInAlbumKind_ImportSessionAlbum;
        }
      }

      else if (a3 == 1502)
      {
        v4 = PHQueryForAssetInAlbumKind_PictureFrame;
      }

      else
      {
        if (a3 != 1503)
        {
          goto LABEL_111;
        }

        v4 = PHQueryForAssetInAlbumKind_CameraSession;
      }
    }

    else if (a3 > 999)
    {
      if (a3 > 1499)
      {
        if (a3 == 1500)
        {
          v4 = PHQueryForAssetInAlbumKind_PhotoStream;
        }

        else
        {
          v4 = PHQueryForAssetInAlbumKind_Wallpaper_UNUSED;
        }
      }

      else if (a3 == 1000)
      {
        v4 = PHQueryForAssetInAlbumKind_SavedPhotos;
      }

      else
      {
        if (a3 != 1100)
        {
          goto LABEL_111;
        }

        v4 = PHQueryForAssetInAlbumKind_1stSpecial;
      }
    }

    else if (a3 > 14)
    {
      if (a3 == 15)
      {
        v4 = PHQueryForAssetInAlbumKind_LegacyFaces;
      }

      else
      {
        if (a3 != 16)
        {
          goto LABEL_111;
        }

        v4 = PHQueryForAssetInAlbumKind_Places;
      }
    }

    else if (a3 == 2)
    {
      v4 = PHQueryForAssetInAlbumKind_Regular;
    }

    else
    {
      if (a3 != 12)
      {
        goto LABEL_111;
      }

      v4 = PHQueryForAssetInAlbumKind_Event;
    }

    goto LABEL_110;
  }

  if (a3 > 3570)
  {
    if (a3 > 4000)
    {
      if (a3 > 4003)
      {
        switch(a3)
        {
          case 4004:
            v4 = PHQueryForAssetInAlbumKind_EventsSmartFolder;
            break;
          case 4005:
            v4 = PHQueryForAssetInAlbumKind_FacesSmartFolder;
            break;
          case 4006:
            v4 = PHQueryForAssetInAlbumKind_FavoriteMemoriesSmartFolder;
            break;
          default:
            goto LABEL_111;
        }
      }

      else if (a3 == 4001)
      {
        v4 = PHQueryForAssetInAlbumKind_FacesStandIn;
      }

      else if (a3 == 4002)
      {
        v4 = PHQueryForAssetInAlbumKind_EventsStandIn;
      }

      else
      {
        v4 = PHQueryForAssetInAlbumKind_ImportStandIn;
      }
    }

    else if (a3 > 3997)
    {
      if (a3 == 3998)
      {
        v4 = PHQueryForAssetInAlbumKind_ProjectAlbumRootFolder;
      }

      else if (a3 == 3999)
      {
        v4 = PHQueryForAssetInAlbumKind_RootFolder;
      }

      else
      {
        v4 = PHQueryForAssetInAlbumKind_Folder;
      }
    }

    else
    {
      switch(a3)
      {
        case 3571:
          v4 = PHQueryForAssetInAlbumKind_SyncProgressAlbum;
          break;
        case 3572:
          v4 = PHQueryForAssetInAlbumKind_OTARestoreProgressAlbum;
          break;
        case 3573:
          v4 = PHQueryForAssetInAlbumKind_FilesystemImportProgressAlbum;
          break;
        default:
          goto LABEL_111;
      }
    }

LABEL_110:
    v3 = _Block_copy(v4);
    goto LABEL_111;
  }

  switch(a3)
  {
    case 1550:
      v4 = PHQueryForAssetInAlbumKind_1WaySyncAlbum;
      goto LABEL_110;
    case 1551:
      v4 = PHQueryForAssetInAlbumKind_1WaySyncEvent;
      goto LABEL_110;
    case 1552:
      v4 = PHQueryForAssetInAlbumKind_1WaySyncLibraryAlbum;
      goto LABEL_110;
    case 1553:
      v4 = PHQueryForAssetInAlbumKind_1WaySyncFolder;
      goto LABEL_110;
    case 1600:
      v4 = PHQueryForAssetInAlbumKind_AllAssetsAlbum;
      goto LABEL_110;
    case 1601:
      v4 = PHQueryForAssetInAlbumKind_AllNonPhotoStreamAssetsAlbum;
      goto LABEL_110;
    case 1602:
      v4 = PHQueryForAssetInAlbumKind_AllPhotoStream;
      goto LABEL_110;
    case 1603:
      v4 = PHQueryForAssetInAlbumKind_LastImportAlbum;
      goto LABEL_110;
    case 1604:
      v4 = PHQueryForAssetInAlbumKind_AllImportedAlbum;
      goto LABEL_110;
    case 1605:
      v4 = PHQueryForAssetInAlbumKind_PanoramasAlbum;
      goto LABEL_110;
    case 1606:
      v4 = PHQueryForAssetInAlbumKind_VideosAlbum;
      goto LABEL_110;
    case 1607:
      v4 = PHQueryForAssetInAlbumKind_VerticalPanoramasAlbum;
      goto LABEL_110;
    case 1608:
      v4 = PHQueryForAssetInAlbumKind_HorizontalPanoramasAlbum;
      goto LABEL_110;
    case 1609:
      v4 = PHQueryForAssetInAlbumKind_FavoritesAlbum;
      goto LABEL_110;
    case 1610:
      v4 = PHQueryForAssetInAlbumKind_TimelapsesAlbum;
      goto LABEL_110;
    case 1611:
      v4 = PHQueryForAssetInAlbumKind_AllHiddenAlbum;
      goto LABEL_110;
    case 1612:
      v4 = PHQueryForAssetInAlbumKind_TrashBinAlbum;
      goto LABEL_110;
    case 1613:
      v4 = PHQueryForAssetInAlbumKind_UserLibraryAlbum;
      goto LABEL_110;
    case 1614:
      v4 = PHQueryForAssetInAlbumKind_BurstsAlbum;
      goto LABEL_110;
    case 1615:
      v4 = PHQueryForAssetInAlbumKind_SlomoVideosAlbum;
      goto LABEL_110;
    case 1616:
      v4 = PHQueryForAssetInAlbumKind_RecentlyAddedAlbum;
      goto LABEL_110;
    case 1617:
      v4 = PHQueryForAssetInAlbumKind_SelfPortraitsAlbum;
      goto LABEL_110;
    case 1618:
      v4 = PHQueryForAssetInAlbumKind_ScreenshotsAlbum;
      goto LABEL_110;
    case 1619:
      v4 = PHQueryForAssetInAlbumKind_PlacesSmartAlbum;
      goto LABEL_110;
    case 1620:
      v4 = PHQueryForAssetInAlbumKind_DepthEffectAlbum;
      goto LABEL_110;
    case 1621:
      v4 = PHQueryForAssetInAlbumKind_LivePhotosAlbum;
      goto LABEL_110;
    case 1622:
      v4 = PHQueryForAssetInAlbumKind_AnimatedAlbum;
      goto LABEL_110;
    case 1623:
      v4 = PHQueryForAssetInAlbumKind_LongExposuresAlbum;
      goto LABEL_110;
    case 1624:
      v4 = PHQueryForAssetInAlbumKind_UnableToUploadAlbum;
      goto LABEL_110;
    case 1625:
      v4 = PHQueryForAssetInAlbumKind_RecentsAlbum_DEPRECATED;
      goto LABEL_110;
    case 1626:
      v4 = PHQueryForAssetInAlbumKind_RecentlyEditedAlbum;
      goto LABEL_110;
    case 1627:
      v4 = PHQueryForAssetInAlbumKind_ScreenRecordingsAlbum;
      goto LABEL_110;
    case 1628:
      v4 = PHQueryForAssetInAlbumKind_AllPhotosAlbum;
      goto LABEL_110;
    case 1629:
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:5173 description:@"Unreachable Code: Attempting to get id for DEPRECATED Shared Library Album"];

      v3 = 0;
      break;
    case 1630:
      v4 = PHQueryForAssetInAlbumKind_RAWAlbum;
      goto LABEL_110;
    case 1631:
      v4 = PHQueryForAssetInAlbumKind_CinematicVideoAlbum;
      goto LABEL_110;
    case 1632:
      v4 = PHQueryForAssetInAlbumKind_ProResAlbum;
      goto LABEL_110;
    case 1634:
      v4 = PHQueryForAssetInAlbumKind_AllLibraryDuplicatesAlbum;
      goto LABEL_110;
    case 1635:
      v4 = PHQueryForAssetInAlbumKind_NotUploadedAlbum_DEPRECATED;
      goto LABEL_110;
    case 1636:
      v4 = PHQueryForAssetInAlbumKind_SharedLibrarySharingSuggestionsAlbum;
      goto LABEL_110;
    case 1637:
      v4 = PHQueryForAssetInAlbumKind_ActionCamVideoAlbum;
      goto LABEL_110;
    case 1639:
      v4 = PHQueryForAssetInAlbumKind_SpatialAlbum;
      goto LABEL_110;
    case 1640:
      v4 = PHQueryForAssetInAlbumKind_RecentlySavedAlbum;
      goto LABEL_110;
    case 1641:
      v4 = PHQueryForAssetInAlbumKind_RecoveredAlbum;
      goto LABEL_110;
    case 1642:
      v4 = PHQueryForAssetInAlbumKind_FrontBackAlbum;
      goto LABEL_110;
    default:
      break;
  }

LABEL_111:
  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = PHQueryForAssetsInOtherSmartAlbum;
  }

  v9 = _Block_copy(v8);

  v10 = _Block_copy(v9);

  return v10;
}

+ (id)queryForAssetsInUtilityCollectionWithType:(unsigned __int16)a3 options:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [PHUtilityCollection searchLookupIdentifierForUtilityCollectionType:v4];
  if (v7)
  {
    v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
    v9 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v8];

    v10 = [a1 queryForAssetsUsingSearchIndexLookupIdentifier:v7 options:v9];
    [v10 setFetchOptions:v9];

    v6 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)queryForAssetsUsingSearchIndexLookupIdentifier:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:a4 object:0];
  v8 = [a1 queryForType:@"PHAsset" withBasePredicate:0 inLibrary:v7];

  v9 = v8[35];
  v8[35] = v6;

  return v8;
}

+ (id)queryForPendingLibraryScopeInvitationWithOptions:(id)a3
{
  v4 = a3;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v4 object:0];
  v6 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v4 photoLibrary:v5];

  [a1 _setLibraryScopeDefaultSortDescriptor:v6];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ && %K == %d && %K == %d && %K == %d", @"scopeType", &unk_1F102D250, @"status", 2, @"localPublishState", 2, @"previewState", 0];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [a1 queryForType:@"PHLibraryScope" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForPreviewLibraryScopeWithOptions:(id)a3
{
  v4 = a3;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v4 object:0];
  v6 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v4 photoLibrary:v5];

  [a1 _setLibraryScopeDefaultSortDescriptor:v6];
  v7 = [MEMORY[0x1E69BE4E8] predicateForPreviewLibraryScope];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [a1 queryForType:@"PHLibraryScope" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForActiveLibraryScopeWithOptions:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v4 object:0];
  v6 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v4 photoLibrary:v5];

  [a1 _setLibraryScopeDefaultSortDescriptor:v6];
  v7 = MEMORY[0x1E696AB28];
  v8 = [MEMORY[0x1E69BE4E8] predicateForActiveLibraryScope];
  v15[0] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d || %K == %d", @"status", 1, @"status", 3];
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v11 = [v7 andPredicateWithSubpredicates:v10];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v13 = [a1 queryForType:@"PHLibraryScope" withBasePredicate:v11 inLibrary:v12];

  [v13 setFetchOptions:v6];

  return v13;
}

+ (id)queryForLibraryScopesWithOptions:(id)a3
{
  v4 = a3;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v4 object:0];
  v6 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v4 photoLibrary:v5];

  [a1 _setLibraryScopeDefaultSortDescriptor:v6];
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v8 = [a1 queryForType:@"PHLibraryScope" withBasePredicate:0 inLibrary:v7];

  [v8 setFetchOptions:v6];

  return v8;
}

+ (id)queryforLibraryScopesWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v8];

  [a1 _setLibraryScopeDefaultSortDescriptor:v9];
  v10 = [a1 queryForType:@"PHLibraryScope" withLocalIdentifiers:v7 options:v9];

  [v10 setFetchOptions:v9];

  return v10;
}

+ (void)_setLibraryScopeDefaultSortDescriptor:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (([v3 hasAnySortDescriptors] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v6[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

    [v3 setSortDescriptors:v5];
  }
}

+ (id)queryForEntryWithLocalIdentifier:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = [(PHObject *)PHCloudFeedEntry uuidFromLocalIdentifier:a3];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uuid", v6];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v5 object:0];
  v9 = [PHQuery queryForType:@"PHCloudFeedEntry" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v5];

  return v9;
}

+ (id)queryForEntriesFromEarliestDate:(id)a3 latestDate:(id)a4 filter:(int64_t)a5 options:(id)a6
{
  v22[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (v9)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %@", @"entryDate", v9];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v12 = ;
  if (v10)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= %@", @"entryDate", v10];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v13 = ;
  if ((a5 - 1) >= 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = a5;
  }

  v15 = [MEMORY[0x1E69BE320] notificationPredicateForFilter:v14];
  v16 = MEMORY[0x1E696AB28];
  v22[0] = v12;
  v22[1] = v13;
  v22[2] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v18 = [v16 andPredicateWithSubpredicates:v17];

  v19 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v11 object:0];
  v20 = [PHQuery queryForType:@"PHCloudFeedEntry" withBasePredicate:v18 inLibrary:v19];

  [v20 setFetchOptions:v11];

  return v20;
}

+ (id)queryForCommentsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a4;
  v7 = [v5 setWithArray:a3];
  v8 = [(PHObject *)PHAssetComment uuidsFromLocalIdentifiers:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"cloudGUID", v8];
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v11 = [PHQuery queryForType:@"PHAssetComment" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForLikesForCloudFeedEntry:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"cloudFeedLikeCommentEntry", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHAssetComment" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForLikesForAsset:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"likedAsset", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHAssetComment" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForCommentsForCloudFeedEntry:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"cloudFeedCommentEntry", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHAssetComment" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForCommentsForAsset:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"commentedAsset", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHAssetComment" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForQuestionsWithState:(unsigned __int16)a3 options:(id)a4
{
  v4 = a3;
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = [v5 predicateWithFormat:@"state = %d", v4];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHQuestion" withBasePredicate:v7 inLibrary:v8];
  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForAnsweredQuestionsWithOptions:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"state = %d OR state = %d OR state = %d", 2, 3, 1];
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v4 object:0];
  v7 = [PHQuery queryForType:@"PHQuestion" withBasePredicate:v5 inLibrary:v6];
  [v7 setFetchOptions:v4];

  return v7;
}

+ (id)queryForAnsweredYesOrNoQuestionsWithOptions:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"state = %d OR state = %d", 2, 3];
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v4 object:0];
  v7 = [PHQuery queryForType:@"PHQuestion" withBasePredicate:v5 inLibrary:v6];
  [v7 setFetchOptions:v4];

  return v7;
}

+ (id)queryForQuestionsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v4 = MEMORY[0x1E696AE18];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = a4;
  v7 = [v4 predicateWithFormat:@"uuid IN (%@)", v5];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHQuestion" withBasePredicate:v7 inLibrary:v8];
  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForQuestionsWithOptions:(id)a3
{
  v3 = a3;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [PHQuery queryForType:@"PHQuestion" withBasePredicate:0 inLibrary:v4];
  [v5 setFetchOptions:v3];

  return v5;
}

+ (id)queryForKeywordsForAsset:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"ANY assetAttributes.asset = %@", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHKeyword" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForKeywordsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a1 queryForType:@"PHKeyword" withLocalIdentifiers:a3 options:v6];
  [v7 setFetchOptions:v6];

  return v7;
}

+ (id)queryForKeywordsWithTitles:(id)a3 options:(id)a4
{
  v4 = MEMORY[0x1E696AE18];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = a4;
  v7 = [v4 predicateWithFormat:@"%K IN %@", @"title", v5];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHKeyword" withBasePredicate:v7 inLibrary:v8];
  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForKeywordsWithOptions:(id)a3
{
  v3 = a3;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [PHQuery queryForType:@"PHKeyword" withBasePredicate:0 inLibrary:v4];
  [v5 setFetchOptions:v3];

  return v5;
}

+ (id)queryForProjectsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = [PHQuery queryForAssetCollectionsWithType:10 localIdentifiers:a3 options:v5];
  [v6 setFetchOptions:v5];

  return v6;
}

+ (id)queryForConversationsWithOptions:(id)a3
{
  v3 = a3;
  [v3 hasAnySortDescriptors];
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [PHQuery queryForType:@"PHConversation" withBasePredicate:0 inLibrary:v4];

  [v5 setFetchOptions:v3];

  return v5;
}

+ (id)queryForImportSessionsWithOptions:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  if (([v3 hasAnySortDescriptors] & 1) == 0 && v4)
  {
    if (v3)
    {
      v5 = [v3 copy];

      v3 = v5;
    }

    else
    {
      v3 = objc_opt_new();
    }

    v10[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v3 setInternalSortDescriptors:v6];
  }

  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v8 = [PHQuery queryForType:@"PHImportSession" withBasePredicate:0 inLibrary:v7];

  [v8 setFetchOptions:v3];

  return v8;
}

+ (id)queryForSuggestionsWithFeaturedState:(unsigned __int16)a3 types:(id)a4 options:(id)a5
{
  v6 = a3;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AE18];
  v8 = a5;
  v9 = a4;
  v10 = [v7 predicateWithFormat:@"%K = %d", @"featuredState", v6];
  v11 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v11 = v9;
  }

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"type", v11];

  v13 = MEMORY[0x1E696AB28];
  v19[0] = v10;
  v19[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [v13 andPredicateWithSubpredicates:v14];
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v8 object:0];
  v17 = [PHQuery queryForType:@"PHSuggestion" withBasePredicate:v15 inLibrary:v16];

  [v17 setFetchOptions:v8];

  return v17;
}

+ (id)queryForSuggestionsWithTypes:(id)a3 options:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AE18];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = a4;
  v7 = [v4 predicateWithFormat:@"%K IN %@", @"type", v5];
  v8 = MEMORY[0x1E696AB28];
  v14[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [v8 andPredicateWithSubpredicates:v9];
  v11 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v12 = [PHQuery queryForType:@"PHSuggestion" withBasePredicate:v10 inLibrary:v11];

  [v12 setFetchOptions:v6];

  return v12;
}

+ (id)queryForSuggestionsWithState:(unsigned __int16)a3 type:(unsigned __int16)a4 subtype:(unsigned __int16)a5 options:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v20[2] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AE18];
  v10 = a6;
  v11 = [v9 predicateWithFormat:@"%K = %d", @"state", v8];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"type", v7];
  v20[0] = v11;
  v20[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  if (v6)
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"subtype", v6];
    v15 = [v13 arrayByAddingObject:v14];

    v13 = v15;
  }

  v16 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v13];
  v17 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v10 object:0];
  v18 = [PHQuery queryForType:@"PHSuggestion" withBasePredicate:v16 inLibrary:v17];

  [v18 setFetchOptions:v10];

  return v18;
}

+ (id)queryForSuggestionsWithState:(unsigned __int16)a3 options:(id)a4
{
  v4 = a3;
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = [v5 predicateWithFormat:@"state = %d", v4];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHSuggestion" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForSuggestionsWithOptions:(id)a3
{
  v3 = a3;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [PHQuery queryForType:@"PHSuggestion" withBasePredicate:0 inLibrary:v4];

  [v5 setFetchOptions:v3];

  return v5;
}

+ (id)queryForShareParticipantWithPerson:(id)a3 options:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [v6 objectID];

  if (v7)
  {
    v8 = [v6 objectID];
    v18[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"person", v9];
  }

  else
  {
    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "query for share participant with no person provided", buf, 2u);
    }

    v10 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  v12 = [v6 photoLibrary];

  v13 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v5 photoLibrary:v12];

  v14 = [v13 photoLibrary];
  v15 = [PHQuery queryForType:@"PHShareParticipant" withBasePredicate:v10 inLibrary:v14];

  [v15 setFetchOptions:v13];

  return v15;
}

+ (id)queryForCurrentUserParticipantInShare:(id)a3 options:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v5 predicateWithFormat:@"%K == YES", @"isCurrentUser"];
  v9 = MEMORY[0x1E696AE18];
  v10 = [v7 objectID];

  v11 = [v9 predicateWithFormat:@"%K == %@", @"share", v10];

  v12 = MEMORY[0x1E696AB28];
  v18[0] = v8;
  v18[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v16 = [PHQuery queryForType:@"PHShareParticipant" withBasePredicate:v14 inLibrary:v15];

  [v6 setFetchLimit:1];
  [v16 setFetchOptions:v6];

  return v16;
}

+ (id)queryForOwnerParticipantInShare:(id)a3 options:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v5 predicateWithFormat:@"%K == %d", @"role", 1];
  v9 = MEMORY[0x1E696AE18];
  v10 = [v7 objectID];

  v11 = [v9 predicateWithFormat:@"%K == %@", @"share", v10];

  v12 = MEMORY[0x1E696AB28];
  v18[0] = v8;
  v18[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v16 = [PHQuery queryForType:@"PHShareParticipant" withBasePredicate:v14 inLibrary:v15];

  [v6 setFetchLimit:1];
  [v16 setFetchOptions:v6];

  return v16;
}

+ (id)queryForContributorForComment:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"%K CONTAINS %@", @"collectionShareComments", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHShareParticipant" withBasePredicate:v9 inLibrary:v10];

  [v6 setFetchLimit:1];
  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForShareParticipantsWithParticipantIDs:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = [v5 predicateWithFormat:@"%K IN %@", @"participantID", a3];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHShareParticipant" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForShareParticipantsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a1 queryForType:@"PHShareParticipant" withLocalIdentifiers:a3 options:v6];
  [v7 setFetchOptions:v6];

  return v7;
}

+ (id)queryForShareParticipantsInShare:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"share", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHShareParticipant" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForPersonsWithNonNilUserFeedbackWithTypes:(id)a3 options:(id)a4
{
  v4 = MEMORY[0x1E696AE18];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = a4;
  v7 = [v4 predicateWithFormat:@"ANY userFeedbacks.feature IN %@", v5];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v6];
  [v9 _setCollectionFetchType:2];

  return v9;
}

+ (id)queryForFaceCropsForPerson:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"person", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHFaceCrop" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForFaceCropsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a1 queryForType:@"PHFaceCrop" withLocalIdentifiers:a3 options:v6];
  [v7 setFetchOptions:v6];

  return v7;
}

+ (id)queryForFaceCropsWithOptions:(id)a3
{
  v3 = a3;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [PHQuery queryForType:@"PHFaceCrop" withBasePredicate:0 inLibrary:v4];

  [v5 setFetchOptions:v3];

  return v5;
}

+ (id)queryForInvalidMergeCandidatePersonsForPerson:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"invalidMergeCandidates CONTAINS %@", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v6];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForMergeCandidateWithConfidencePersonsForPerson:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"%K CONTAINS %@", @"mergeCandidatesWithConfidence", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v6];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForMergeCandidatePersonsForPerson:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"mergeCandidates CONTAINS %@", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v6];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForAssociatedPersonForFaceGroup:(id)a3 withOptions:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"associatedFaceGroup = %@", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v6];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForEmptyFaceGroupsWithOptions:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"%K.@count == 0", @"detectedFaces"];
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v4 object:0];
  v7 = [PHQuery queryForType:@"PHFaceGroup" withBasePredicate:v5 inLibrary:v6];

  [v7 setFetchOptions:v4];

  return v7;
}

+ (id)queryForFaceGroupsWithFace:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"%K CONTAINS %@", @"detectedFaces", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHFaceGroup" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v6];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForFaceGroupsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a1 queryForType:@"PHFaceGroup" withLocalIdentifiers:a3 options:v6];
  [v7 setFetchOptions:v6];

  return v7;
}

+ (id)queryForFaceGroupsForPerson:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"ANY %K.%K = %@", @"detectedFaces", @"personForFace", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHFaceGroup" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v6];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForFaceGroupsWithOptions:(id)a3
{
  v3 = a3;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [PHQuery queryForType:@"PHFaceGroup" withBasePredicate:0 inLibrary:v4];

  [v5 setFetchOptions:v3];

  return v5;
}

+ (id)queryForAssetsForFaces:(id)a3 options:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 objectID];
        [v7 addObject:v15];

        if (!v11)
        {
          v11 = v14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"detectedFaces", v7, v20];
  v17 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v11];
  v18 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v16 inLibrary:v17];

  [v18 setFetchOptions:v6];
  [v18 _setCollectionFetchType:2];

  return v18;
}

+ (id)queryForAssetsForFaceGroups:(id)a3 options:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v35 + 1) + 8 * i) objectID];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v10);
  }

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"faceGroup", v7];
  v15 = [v8 firstObject];
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v15];

  v29 = v14;
  v17 = [PHQuery queryForType:@"PHFace" withBasePredicate:v14 inLibrary:v16];
  v30 = v6;
  [v17 setFetchOptions:v6];
  [v17 _setCollectionFetchType:2];
  v18 = [v17 executeQuery];
  v19 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v31 + 1) + 8 * j) objectID];
        [v19 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }

  v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"detectedFaces", v19];
  v27 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v26 inLibrary:v16];
  [v27 setFetchOptions:v30];
  [v27 _setCollectionFetchType:2];

  return v27;
}

+ (id)queryForKeyAssetForPerson:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"ANY %K.%K = %@", @"detectedFaces", @"personBeingKeyFace", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 inLibrary:v10];

  return v11;
}

+ (id)queryForAssetsForPersons:(id)a3 options:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 objectID];
        [v7 addObject:v15];

        if (!v11)
        {
          v11 = v14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K IN %@", @"detectedFaces", @"personForFace", v7];
  v17 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v11];
  v18 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v16 inLibrary:v17];

  [v18 setFetchOptions:v6];
  [v18 _setCollectionFetchType:2];

  return v18;
}

+ (id)queryForPersonForFaceCrop:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"faceCrops CONTAINS %@", v8];

  v10 = [v7 photoLibrary];

  v11 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v10];

  [v11 setMinimumVerifiedFaceCount:0];
  [v11 setMinimumUnverifiedFaceCount:0];
  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v11 object:0];
  v13 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v9 inLibrary:v12];

  [v13 setFetchOptions:v11];
  [v13 _setCollectionFetchType:2];

  return v13;
}

+ (id)queryForRejectedPersonsForFace:(id)a3 options:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = a3;
  v9 = [v8 objectID];
  v10 = [v6 predicateWithFormat:@"rejectedFaces CONTAINS %@", v9];

  v11 = [v8 photoLibrary];

  v12 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v7 photoLibrary:v11];

  [v12 setMinimumVerifiedFaceCount:0];
  [v12 setMinimumUnverifiedFaceCount:0];
  v13 = [a1 _queryForPersonsWithFaceRelationshipPredicate:v10 options:v12];

  return v13;
}

+ (id)queryForPersonsWithFaces:(id)a3 options:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = [v14 objectID];
        [v8 addObject:v16];

        objc_autoreleasePoolPop(v15);
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"detectedFaces", v8, v23];
  v18 = [v9 firstObject];
  v19 = [v18 photoLibrary];
  v20 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v7 photoLibrary:v19];

  v21 = [a1 _queryForPersonsWithFaceRelationshipPredicate:v17 options:v20];

  return v21;
}

+ (id)queryForPersonWithFace:(id)a3 options:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = a3;
  v9 = [v8 objectID];
  v10 = [v6 predicateWithFormat:@"%K CONTAINS %@", @"detectedFaces", v9];

  v11 = [v8 photoLibrary];

  v12 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v7 photoLibrary:v11];

  v13 = [a1 _queryForPersonsWithFaceRelationshipPredicate:v10 options:v12];

  return v13;
}

+ (id)queryForPersonWithShareParticipant:(id)a3 options:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [v6 objectID];

  if (v7)
  {
    v8 = [v6 objectID];
    v18[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"shareParticipant", v9];
  }

  else
  {
    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "query for person with no share participant provided", buf, 2u);
    }

    v10 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  v12 = [v6 photoLibrary];

  v13 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v5 photoLibrary:v12];

  v14 = [v13 photoLibrary];
  v15 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v10 inLibrary:v14];

  [v15 setFetchOptions:v13];

  return v15;
}

+ (id)queryForPersonsWithContactIdentifiers:(id)a3 options:(id)a4
{
  v4 = MEMORY[0x1E696AE18];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = a4;
  v7 = [v4 predicateWithFormat:@"personUri IN (%@)", v5];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)_queryForPersonsWithFaceRelationshipPredicate:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v5 object:0];
  v8 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v6 inLibrary:v7];

  [v8 setFetchOptions:v5];
  [v8 _setCollectionFetchType:2];

  return v8;
}

+ (id)queryForPersonsWithMdIDs:(id)a3 options:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = MEMORY[0x1E696AB28];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"mdID"];
    v18[0] = v8;
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN (%@)", @"mdID", v5];
    v18[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v11 = [v7 andPredicateWithSubpredicates:v10];
  }

  else
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "+[PHQuery queryForPersonsWithMdIDs:options:]";
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "%s with no mdIDs", buf, 0xCu);
    }

    v11 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  v13 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v14 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v11 inLibrary:v13];

  [v14 setFetchOptions:v6];

  return v14;
}

+ (id)queryForPersonsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [PHObject uuidFromLocalIdentifier:*(*(&v20 + 1) + 8 * i)];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN (%@)", @"personUUID", v7, v20];
  }

  else
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "+[PHQuery queryForPersonsWithLocalIdentifiers:options:]";
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "%s with nil identifiers", buf, 0xCu);
    }

    v14 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  v16 = v14;
  v17 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v18 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v16 inLibrary:v17];

  [v18 setFetchOptions:v6];

  return v18;
}

+ (id)_queryForPersonsInAssetsWithObjectIDs:(id)a3 withOptions:(id)a4
{
  v4 = MEMORY[0x1E696AE18];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = a4;
  v7 = [v4 predicateWithFormat:@"ANY %K.%K IN %@", @"detectedFaces", @"assetForFace", v5];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v6];
  [v9 _setCollectionFetchType:2];

  return v9;
}

+ (id)queryForPersonsInAssetsFetchResult:(id)a3 withOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 firstObject];
  v9 = [v8 photoLibrary];
  v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v9];

  v11 = [a1 _assetIDsFromAssets:v7 anyAsset:0];

  v12 = [a1 _queryForPersonsInAssetsWithObjectIDs:v11 withOptions:v10];

  return v12;
}

+ (id)queryForPersonsInAssets:(id)a3 withOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 firstObject];
  v9 = [v8 photoLibrary];
  v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v9];

  v11 = [v7 _pl_map:&__block_literal_global_851];

  v12 = [a1 _queryForPersonsInAssetsWithObjectIDs:v11 withOptions:v10];

  return v12;
}

+ (id)queryForPersonsInAsset:(id)a3 options:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v12 = a3;
    v6 = MEMORY[0x1E695DEC8];
    v7 = a4;
    v8 = a3;
    v9 = [v6 arrayWithObjects:&v12 count:1];

    v10 = [a1 queryForPersonsInAssets:v9 withOptions:{v7, v12, v13}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)queryForPersonsWithObjectIDs:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:0];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DEC8] array];
  }

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v6];
  v10 = [a1 queryForType:@"PHPerson" withBasePredicate:v9 seedOIDs:0 inLibrary:v8];

  [v10 setFetchOptions:v7];

  return v10;
}

+ (id)queryForPersonsWithQuestionType:(unsigned __int16)a3 options:(id)a4
{
  v4 = a3;
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = [v5 predicateWithFormat:@"questionType == %d", v4];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForPersonsWithType:(int64_t)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  if (a3)
  {
    [v5 predicateWithFormat:@"type == %d", a3];
  }

  else
  {
    [v5 predicateWithFormat:@"noindex:(type) == %d", 0];
  }
  v7 = ;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForPersonsWithOptions:(id)a3
{
  v3 = a3;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [PHQuery queryForType:@"PHPerson" withBasePredicate:0 inLibrary:v4];

  [v5 setFetchOptions:v3];

  return v5;
}

+ (id)queryForKeyFaceOnPerson:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 photoLibrary];
  v8 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v5 photoLibrary:v7];

  [v8 setIncludeNonvisibleFaces:0];
  v9 = MEMORY[0x1E696AE18];
  v10 = [v6 objectID];
  v11 = [v9 predicateWithFormat:@"%K == %@", @"personBeingKeyFace", v10];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v8 object:v6];

  v13 = [PHQuery queryForType:@"PHFace" withBasePredicate:v11 inLibrary:v12];

  [v13 setFetchOptions:v8];

  return v13;
}

+ (id)queryForRejectedFacesOnPerson:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"rejectedPersons CONTAINS %@", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHFace" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForFacesOnFaceCrop:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"faceCrop == %@", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHFace" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v6];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForFacesOnAssetWithFace:(id)a3 options:(id)a4
{
  v30[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E696AB28];
  v8 = MEMORY[0x1E696AE18];
  v9 = [v5 objectID];
  v10 = [v8 predicateWithFormat:@"%K CONTAINS %@", @"assetForFace.detectedFaces", v9];
  v30[0] = v10;
  v11 = MEMORY[0x1E696AE18];
  v12 = [v5 objectID];
  v13 = [v11 predicateWithFormat:@"%K CONTAINS %@", @"assetForTemporalDetectedFaces.temporalDetectedFaces", v12];
  v30[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v15 = [v7 orPredicateWithSubpredicates:v14];

  if (v6)
  {
    v16 = [v6 includeMediaAnalysisProcessingRangeTypes] & 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = [v6 includeMediaAnalysisProcessingRangeTypes];
  if (v16 && (v17 & 2) != 0)
  {
    v18 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    goto LABEL_12;
  }

  if (v16)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 0", @"duration"];
    v18 = LABEL_11:;
LABEL_12:
    v19 = v18;
    if (v18)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if ((v17 & 2) != 0)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > 0", @"duration"];
    goto LABEL_11;
  }

LABEL_16:
  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:4120 description:{@"Invalid parameter not satisfying: %@", @"durationPredicate != nil"}];

  v19 = 0;
LABEL_13:
  v20 = MEMORY[0x1E696AB28];
  v29[0] = v15;
  v29[1] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];

  v23 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v5];
  v24 = [PHQuery queryForType:@"PHFace" withBasePredicate:v22 inLibrary:v23];

  [v24 setFetchOptions:v6];
  [v24 _setCollectionFetchType:2];

  return v24;
}

+ (id)queryForFacesWithVuObservationIDs:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = a4;
  v8 = [v5 predicateWithFormat:@"%K IN %@", @"vuObservationID", v6];
  v9 = [v7 photoLibrary];
  v10 = [a1 queryForType:@"PHFace" withBasePredicate:v8 inLibrary:v9];

  [v10 setFetchOptions:v7];

  return v10;
}

+ (id)queryForFacesWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a1 queryForType:@"PHFace" withLocalIdentifiers:a3 options:v6];
  [v7 setFetchOptions:v6];

  return v7;
}

+ (id)queryForKeyFaceForFaceGroup:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"faceGroupBeingKeyFace == %@", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHFace" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForFacesInFaceGroup:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"faceGroup = %@", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHFace" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForFacesForPerson:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![v6 includeMediaAnalysisProcessingRangeTypes] || (objc_msgSend(v6, "includeMediaAnalysisProcessingRangeTypes") & 1) != 0)
  {
    v8 = MEMORY[0x1E696AE18];
    v9 = [v5 objectID];
    v10 = [v8 predicateWithFormat:@"%K = %@", @"personForFace", v9];
    [v7 addObject:v10];
  }

  if (([v6 includeMediaAnalysisProcessingRangeTypes] & 2) != 0)
  {
    v11 = MEMORY[0x1E696AE18];
    v12 = [v5 objectID];
    v13 = [v11 predicateWithFormat:@"%K = %@", @"personForTemporalDetectedFaces", v12];
    [v7 addObject:v13];
  }

  v14 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v7];
  v15 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v5];
  v16 = [PHQuery queryForType:@"PHFace" withBasePredicate:v14 inLibrary:v15];

  [v16 setFetchOptions:v6];

  return v16;
}

+ (id)queryForFacesInAssets:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = [a3 fetchedObjectIDs];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v5 || ([v5 includeMediaAnalysisProcessingRangeTypes] & 1) != 0)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"assetForFace", v7];
    [v8 addObject:v9];
  }

  if (([v5 includeMediaAnalysisProcessingRangeTypes] & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"assetForTemporalDetectedFaces", v7];
    [v8 addObject:v10];
  }

  v11 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v8];
  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v5 object:0];
  v13 = [PHQuery queryForType:@"PHFace" withBasePredicate:v11 inLibrary:v12];

  [v13 setFetchOptions:v5];

  return v13;
}

+ (id)queryForFacesInAsset:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v6 || ([v6 includeMediaAnalysisProcessingRangeTypes] & 1) != 0)
  {
    v8 = MEMORY[0x1E696AE18];
    v9 = [v5 objectID];
    v10 = [v8 predicateWithFormat:@"%K = %@", @"assetForFace", v9];
    [v7 addObject:v10];
  }

  if (([v6 includeMediaAnalysisProcessingRangeTypes] & 2) != 0)
  {
    v11 = MEMORY[0x1E696AE18];
    v12 = [v5 objectID];
    v13 = [v11 predicateWithFormat:@"%K = %@", @"assetForTemporalDetectedFaces", v12];
    [v7 addObject:v13];
  }

  v14 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v7];
  v15 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v5];
  v16 = [PHQuery queryForType:@"PHFace" withBasePredicate:v14 inLibrary:v15];

  [v16 setFetchOptions:v6];

  return v16;
}

+ (id)queryForSingletonFacesWithOptions:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = MEMORY[0x1E696AE18];
  v5 = a3;
  v6 = [v4 predicateWithFormat:@"%K == NULL", @"faceGroup"];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL", @"personForFace", v6];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v9 = [v3 andPredicateWithSubpredicates:v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v5 object:0];
  v11 = [PHQuery queryForType:@"PHFace" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v5];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForFacesWithOptions:(id)a3
{
  v3 = a3;
  if ([v3 includeMediaAnalysisProcessingRangeTypes] == 1)
  {
    v4 = @"%K == 0.0";
LABEL_5:
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:v4, @"duration"];
    goto LABEL_7;
  }

  if ([v3 includeMediaAnalysisProcessingRangeTypes] == 2)
  {
    v4 = @"%K > 0.0";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v7 = [PHQuery queryForType:@"PHFace" withBasePredicate:v5 inLibrary:v6];

  [v7 setFetchOptions:v3];

  return v7;
}

+ (id)queryForMomentListsWithSubType:(int64_t)a3 options:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v5 object:0];
  switch(a3)
  {
    case 1:
      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 1];
      v8 = [PHQuery queryForType:@"PHMomentList" withBasePredicate:v12 inLibrary:v6];

      v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
      v19[0] = v9;
      v10 = v19;
      break;
    case 2:
      v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 2];
      v8 = [PHQuery queryForType:@"PHMomentList" withBasePredicate:v11 inLibrary:v6];

      v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
      v18 = v9;
      v10 = &v18;
      break;
    case 0x7FFFFFFFFFFFFFFFLL:
      v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d OR kind == %d", 2, 1];
      v8 = [PHQuery queryForType:@"PHMomentList" withBasePredicate:v7 inLibrary:v6];

      v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
      v17 = v9;
      v10 = &v17;
      break;
    default:
      [v5 hasAnySortDescriptors];
      v13 = 0;
      v8 = 0;
      goto LABEL_11;
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  if (([v5 hasAnySortDescriptors] & 1) == 0 && v13)
  {
    v14 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v5 photoLibrary:v6];

    [v14 setInternalSortDescriptors:v13];
    v5 = v14;
  }

LABEL_11:
  [v8 setFetchOptions:v5];
  v15 = v8;

  return v8;
}

+ (id)queryForMomentListsWithSubType:(int64_t)a3 containingMoment:(id)a4
{
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = MEMORY[0x1E696AE18];
    v17 = [v5 objectID];
    v9 = [v16 predicateWithFormat:@"(kind == %d) AND (moments CONTAINS %@)", 1, v17];

    v18 = MEMORY[0x1E696AE18];
    v19 = [v6 objectID];
    v14 = [v18 predicateWithFormat:@"(kind == %d) AND (moments CONTAINS %@)", 2, v19];

    v20 = MEMORY[0x1E696AB28];
    v26[0] = v9;
    v26[1] = v14;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v22 = [v20 orPredicateWithSubpredicates:v21];
    v23 = [v6 photoLibrary];
    v11 = [PHQuery queryForType:@"PHMomentList" withBasePredicate:v22 inLibrary:v23];
  }

  else if (a3 == 2)
  {
    v12 = MEMORY[0x1E696AE18];
    v13 = [v5 objectID];
    v14 = [v12 predicateWithFormat:@"(kind == %d) AND (SUBQUERY(childPhotosHighlights, $cph, SUBQUERY($cph.childPhotosHighlights, $ccph, ANY $ccph.moments == %@).@count > 0).@count > 0)", 2, v13];

    v15 = [v6 photoLibrary];
    v11 = [PHQuery queryForType:@"PHMomentList" withBasePredicate:v14 inLibrary:v15];

    v9 = 0;
  }

  else
  {
    if (a3 == 1)
    {
      v7 = MEMORY[0x1E696AE18];
      v8 = [v5 objectID];
      v9 = [v7 predicateWithFormat:@"(kind == %d) AND (SUBQUERY(childPhotosHighlights, $cph, ANY $cph.moments == %@).@count > 0)", 1, v8];

      v10 = [v6 photoLibrary];
      v11 = [PHQuery queryForType:@"PHMomentList" withBasePredicate:v9 inLibrary:v10];
    }

    else
    {
      v11 = 0;
      v9 = 0;
    }

    v14 = 0;
  }

  v24 = v11;

  return v11;
}

+ (id)queryForTopLevelCollectionsMatchingPredicate:(id)a3 options:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v8 = [v7 albumRootFolderObjectID];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"parentFolder", v8];
  v10 = MEMORY[0x1E696AB28];
  v19[0] = v9;
  v19[1] = v5;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"parentFolder" ascending:1];
  if (([v6 hasAnySortDescriptors] & 1) == 0 && v13)
  {
    v14 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v7];

    v18 = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [v14 setInternalSortDescriptors:v15];

    v6 = v14;
  }

  v16 = [PHQuery queryForType:@"PHCollection" withBasePredicate:v12 inLibrary:v7];
  [v16 setFetchOptions:v6];

  return v16;
}

+ (id)queryForTopLevelUserCollectionsWithOptions:(id)a3
{
  v4 = a3;
  v5 = +[PHCollection predicateForUserCollections];
  v6 = [a1 queryForTopLevelCollectionsMatchingPredicate:v5 options:v4];

  return v6;
}

+ (id)_queryForRootCollectionListWithRootFolder:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = [v5 predicateWithFormat:@"self = %@", a3];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHCollectionList" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForRootProjectCollectionListWithOptions:(id)a3
{
  v4 = a3;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v4 object:0];
  v6 = [v5 projectAlbumRootFolderObjectID];

  v7 = [a1 _queryForRootCollectionListWithRootFolder:v6 options:v4];

  return v7;
}

+ (id)queryForRootAlbumCollectionListWithOptions:(id)a3
{
  v4 = a3;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v4 object:0];
  v6 = [v5 albumRootFolderObjectID];

  v7 = [a1 _queryForRootCollectionListWithRootFolder:v6 options:v4];

  return v7;
}

+ (id)fetchRootFolderIDForAlbumKind:(int)a3 photoLibrary:(id)a4
{
  v4 = *&a3;
  v37 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 photoLibraryForCurrentQueueQoS];
  v7 = MEMORY[0x1E695D5E0];
  v8 = [MEMORY[0x1E69BE558] entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %d", v4];
  [v9 setIncludesPropertyValues:0];
  [v9 setResultType:1];
  [v9 setFetchLimit:1];
  [v9 setPredicate:v10];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__36903;
  v33 = __Block_byref_object_dispose__36904;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__36903;
  v27 = __Block_byref_object_dispose__36904;
  v28 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__PHQuery_fetchRootFolderIDForAlbumKind_photoLibrary___block_invoke;
  v18[3] = &unk_1E75A9D58;
  v21 = &v29;
  v11 = v6;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v22 = &v23;
  [v11 performBlockAndWait:v18];
  v13 = v30[5];
  if (v13)
  {
    v14 = [v13 firstObject];
  }

  else
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v24[5];
      *buf = 138412290;
      v36 = v16;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch root folder %@", buf, 0xCu);
    }

    v14 = 0;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v14;
}

void __54__PHQuery_fetchRootFolderIDForAlbumKind_photoLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)queryForCollectionListsWithType:(int64_t)a3 subtype:(int64_t)a4 options:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = _fetchTypeForCollectionListTypeAndSubtype(a3);
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v8 object:0];
  if (a3 == 3)
  {
    switch(a4)
    {
      case 0x7FFFFFFFFFFFFFFFLL:
        if ([v8 includeFavoriteMemoriesCollectionList])
        {
          v15 = [&unk_1F102E1F8 arrayByAddingObject:&unk_1F102D238];
        }

        else
        {
          v15 = &unk_1F102E1F8;
        }

        v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind IN %@", v15];

        goto LABEL_19;
      case 0xC9:
        v13 = MEMORY[0x1E696AE18];
        v14 = 4005;
        break;
      case 0xC8:
        v13 = MEMORY[0x1E696AE18];
        v14 = 4004;
        break;
      default:
        v16 = [v8 includeFavoriteMemoriesCollectionList];
        if (a4 != 1000000202 || !v16)
        {
          v23 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v26 = 3;
            v27 = 1024;
            v28 = a4;
            _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Unsupported fetch for collections with type %d and subtype %d", buf, 0xEu);
          }

          v17 = [MEMORY[0x1E696AE18] predicateWithValue:0];
          goto LABEL_16;
        }

        v13 = MEMORY[0x1E696AE18];
        v14 = 4006;
        break;
    }

    v17 = [v13 predicateWithFormat:@"kind = %d", v14];
LABEL_16:
    v11 = v17;
LABEL_19:
    v18 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v8 object:0];
    v12 = [PHQuery queryForType:v9 withBasePredicate:v11 inLibrary:v18];

    v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"kind" ascending:1];
    if (([v8 hasAnySortDescriptors] & 1) == 0 && v19)
    {
      v20 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v8 photoLibrary:v10];

      v24 = v19;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      [v20 setInternalSortDescriptors:v21];

      v8 = v20;
    }

    [v12 setFetchOptions:v8];

    goto LABEL_23;
  }

  if (a3 != 2)
  {
    v12 = [a1 queryForMomentListsWithSubType:a4 options:v8];
    goto LABEL_24;
  }

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind IN %@", &unk_1F102E1E0];
  v12 = [PHQuery queryForType:v9 withBasePredicate:v11 inLibrary:v10];
  [v12 setFetchOptions:v8];
LABEL_23:

LABEL_24:

  return v12;
}

+ (id)queryForCollectionListsWithType:(int64_t)a3 localIdentifiers:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = _fetchTypeForCollectionListTypeAndSubtype(a3);
  v11 = [a1 queryForType:v10 withLocalIdentifiers:v9 options:v8];

  return v11;
}

+ (id)queryForCollectionListContainingCollection:(id)a3 options:(id)a4
{
  v28[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 assetCollectionType] == 3)
  {
    v7 = MEMORY[0x1E696AE18];
    v8 = [v5 objectID];
    v9 = [v7 predicateWithFormat:@"SUBQUERY(childPhotosHighlights, $cph, ANY $cph.moments == %@).@count > 0", v8];

    v10 = MEMORY[0x1E696AE18];
    v11 = [v5 objectID];
    v12 = [v10 predicateWithFormat:@"SUBQUERY(childPhotosHighlights, $cph, SUBQUERY($cph.childPhotosHighlights, $ccph, ANY $ccph.moments == %@).@count > 0).@count > 0", v11];

    v13 = MEMORY[0x1E696AB28];
    v28[0] = v9;
    v28[1] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v15 = [v13 orPredicateWithSubpredicates:v14];
    v16 = [v5 photoLibrary];
    v17 = [PHQuery queryForType:@"PHMomentList" withBasePredicate:v15 inLibrary:v16];

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = MEMORY[0x1E696AE18];
    v21 = [v5 objectID];
    v9 = [v20 predicateWithFormat:@"childCollections CONTAINS %@", v21];

    if (([v6 includeRootFolder] & 1) == 0)
    {
      v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT kind IN %@", &unk_1F102E1C8];
      v23 = MEMORY[0x1E696AB28];
      v27[0] = v9;
      v27[1] = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
      v25 = [v23 andPredicateWithSubpredicates:v24];

      v9 = v25;
    }

    v12 = [v5 photoLibrary];
    v17 = [PHQuery queryForType:@"PHCollectionList" withBasePredicate:v9 inLibrary:v12];
LABEL_10:

    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v18 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  v19 = [v5 photoLibrary];
  v17 = [PHQuery queryForType:@"PHCollectionList" withBasePredicate:v18 inLibrary:v19];

  if (v6)
  {
LABEL_11:
    [v17 setFetchOptions:v6];
  }

LABEL_12:

  return v17;
}

+ (id)queryForCollectionsInCollectionList:(id)a3 options:(id)a4
{
  v28[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 collectionListType] == 1)
  {
    v7 = [PHQuery queryForMomentsInMomentList:v5 options:v6];
    v8 = PHQueryForCollectionsInMomentList;
LABEL_3:
    v9 = _Block_copy(v8);
    goto LABEL_4;
  }

  if ([v5 collectionListType] == 3 && objc_msgSend(v5, "collectionListSubtype") == 200)
  {
    v7 = [PHQuery queryForAssetCollectionsWithType:1 subtype:3 options:v6];
    v8 = PHQueryForCollectionsInSmartFolderEvents;
    goto LABEL_3;
  }

  if ([v5 collectionListType] == 3 && objc_msgSend(v5, "collectionListSubtype") == 201)
  {
    v7 = [PHQuery queryForAssetCollectionsWithType:1 subtype:4 options:v6];
    v8 = PHQueryForCollectionsInSmartFolderFaces;
    goto LABEL_3;
  }

  if ([v5 collectionListType] == 3 && objc_msgSend(v5, "collectionListSubtype") == 1000000202)
  {
    v11 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v5];
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"favorite != 0 AND rejected == 0"];
    v13 = [v6 sharingFilter];
    if (v13 == 2)
    {
      v18 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    }

    else
    {
      if (v13 == 1)
      {
        [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"sharingComposition", 1];
      }

      else
      {
        if (v13)
        {
          v19 = 0;
          goto LABEL_29;
        }

        [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"sharingComposition", 0];
      }
      v18 = ;
    }

    v19 = v18;
LABEL_29:
    v20 = MEMORY[0x1E696AB28];
    v28[0] = v12;
    v28[1] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v22 = [v20 andPredicateWithSubpredicates:v21];

    v7 = [PHQuery queryForType:@"PHMemory" withBasePredicate:v22 inLibrary:v11];
    if (([v6 hasAnySortDescriptors] & 1) == 0)
    {
      v23 = [v5 photoLibrary];
      v24 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v23];

      v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v27 = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];

      [v24 setInternalSortDescriptors:v26];
      v6 = v24;
    }

    [v7 setFetchOptions:v6];
    v9 = _Block_copy(PHQueryForCollectionsInSmartFolderFavoriteMemories);

LABEL_4:
    v10 = 0;
    if (v7)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v14 = MEMORY[0x1E696AE18];
  v15 = [v5 objectID];
  v10 = [v14 predicateWithFormat:@"parentFolder = %@", v15];

  v9 = _Block_copy(PHQueryForCollectionsInFolder);
LABEL_19:
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v5];
  v7 = [PHQuery queryForType:@"PHCollection" withBasePredicate:v10 inLibrary:v16];

  if (v6)
  {
    [v7 setFetchOptions:v6];
  }

LABEL_21:
  [v7 _setContainerCollection:v5];
  [v7 _setIdentificationBlock:v9];

  return v7;
}

+ (id)queryForInFlightJobCountWithConfiguration:(id)a3 options:(id)a4
{
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = a3;
  v9 = [v6 predicateWithFormat:@"%K == %hu", @"state", 1];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %hu", @"state", 2];
  v11 = MEMORY[0x1E696AB28];
  v12 = [MEMORY[0x1E69BE270] predicateForAcknowledgeableJobs];
  v17[0] = v12;
  v17[1] = v9;
  v17[2] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v14 = [v11 orPredicateWithSubpredicates:v13];

  v15 = [a1 _queryForAssetResourceUploadJobsWithOptions:v7 configuration:v8 predicate:v14];

  return v15;
}

+ (id)queryForAcknowledgeableAssetResourceUploadJobsWithConfiguration:(id)a3 options:(id)a4
{
  v6 = MEMORY[0x1E69BE270];
  v7 = a4;
  v8 = a3;
  v9 = [v6 predicateForAcknowledgeableJobs];
  v10 = [a1 _queryForAssetResourceUploadJobsWithOptions:v7 configuration:v8 predicate:v9];

  return v10;
}

+ (id)queryForAssetResourceUploadJobsWithConfiguration:(id)a3 states:(id)a4 options:(id)a5
{
  v8 = MEMORY[0x1E696AE18];
  v9 = a5;
  v10 = a3;
  v11 = [v8 predicateWithFormat:@"%K IN %@", @"state", a4];
  v12 = [a1 _queryForAssetResourceUploadJobsWithOptions:v9 configuration:v10 predicate:v11];

  return v12;
}

+ (id)_queryForAssetResourceUploadJobsWithOptions:(id)a3 configuration:(id)a4 predicate:(id)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:0];
  v11 = MEMORY[0x1E696AE18];
  v12 = [v9 objectID];

  v13 = [v11 predicateWithFormat:@"configuration = %@", v12];

  if (v8)
  {
    v14 = MEMORY[0x1E696AB28];
    v19[0] = v13;
    v19[1] = v8;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v16 = [v14 andPredicateWithSubpredicates:v15];

    v17 = [PHQuery queryForType:@"PHAssetResourceUploadJob" withBasePredicate:v16 inLibrary:v10];

    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = [PHQuery queryForType:@"PHAssetResourceUploadJob" withBasePredicate:v13 inLibrary:v10];
  if (v7)
  {
LABEL_3:
    [v17 setFetchOptions:v7];
  }

LABEL_4:

  return v17;
}

+ (id)queryForRetryableAssetResourceUploadJobsWithConfiguration:(id)a3 options:(id)a4
{
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = a3;
  v9 = [v6 predicateWithFormat:@"%K == %hu", @"state", 3];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %hu", @"clientStatus", 0];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"attemptCount", 0];
  v12 = MEMORY[0x1E696AB28];
  v17[0] = v9;
  v17[1] = v10;
  v17[2] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = [a1 _queryForAssetResourceUploadJobsWithOptions:v7 configuration:v8 predicate:v14];

  return v15;
}

+ (id)queryForAssetResourceUploadJobConfigurationsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = [v5 predicateWithFormat:@"uuid IN (%@)", a3];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHAssetResourceUploadJobConfiguration" withBasePredicate:v7 inLibrary:v8];
  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForAssetResourceUploadJobConfigurationsWithOptions:(id)a3
{
  v3 = a3;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [PHQuery queryForType:@"PHAssetResourceUploadJobConfiguration" withBasePredicate:0 inLibrary:v4];
  [v5 setFetchOptions:v3];

  return v5;
}

+ (id)queryForMomentsContainingAssetsWithOIDs:(id)a3 options:(id)a4
{
  v4 = MEMORY[0x1E696AE18];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = a4;
  v7 = [v4 predicateWithFormat:@"ANY assets IN %@", v5];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForMomentsContainingAssetsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
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
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(PHObject *)PHAsset uuidFromLocalIdentifier:*(*(&v18 + 1) + 8 * i)];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY assets.uuid IN %@", v7];
  v15 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v16 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v14 inLibrary:v15];

  [v16 setFetchOptions:v6];

  return v16;
}

+ (id)queryForMomentsForPersonsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  if (!v6)
  {
    v6 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:0 photoLibrary:v8];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__36903;
  v26 = __Block_byref_object_dispose__36904;
  v27 = 0;
  v9 = [v8 photoLibrary];
  v10 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__PHQuery_queryForMomentsForPersonsWithLocalIdentifiers_options___block_invoke;
  v17[3] = &unk_1E75AA158;
  v11 = v7;
  v18 = v11;
  v12 = v6;
  v19 = v12;
  v13 = v10;
  v20 = v13;
  v21 = &v22;
  [v9 performBlockAndWait:v17];
  if (v23[5])
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v23[5]];
    v15 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v14 inLibrary:v8];

    [v15 setFetchOptions:v12];
    [v15 _setCollectionFetchType:2];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v22, 8);

  return v15;
}

void __65__PHQuery_queryForMomentsForPersonsWithLocalIdentifiers_options___block_invoke(uint64_t a1)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _pl_map:&__block_literal_global_678];
  v3 = [MEMORY[0x1E69BE608] fetchRequest];
  [v3 setResultType:1];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"personUUID", v2];
  [v3 setPredicate:v4];

  v5 = [*(a1 + 40) verifiedPersonTypes];
  if ([v5 count])
  {
    v6 = MEMORY[0x1E696AB28];
    v7 = [v3 predicate];
    v23[0] = v7;
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"verifiedType", v5];
    v23[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v10 = [v6 andPredicateWithSubpredicates:v9];
    [v3 setPredicate:v10];
  }

  v11 = MEMORY[0x1E695DFD8];
  v12 = *(a1 + 48);
  v20 = 0;
  v13 = [v12 executeFetchRequest:v3 error:&v20];
  v14 = v20;
  v15 = [v11 setWithArray:v13];

  if (v15)
  {
    v16 = [MEMORY[0x1E69BE5C0] momentIDsWithPersonIDs:v15 inContext:*(a1 + 48)];
  }

  else
  {
    v17 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "Failed queryForMomentsForPersonsWithLocalIdentifiers, error fetching person IDs: %@", buf, 0xCu);
    }

    v16 = [MEMORY[0x1E695DFD8] set];
  }

  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v16;
}

+ (id)queryForMomentsForFacesWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(PHObject *)PHFace uuidFromLocalIdentifier:*(*(&v21 + 1) + 8 * i)];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v14 = [v6 verifiedPersonTypes];
  if (v14)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(assets, $a, SUBQUERY($a.%K, $f, $f.%K IN %@ AND $f.%K IN %@).@count != 0).@count != 0", @"detectedFaces", @"uuid", v7, @"personForFace.verifiedType", v14];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(assets, $a, SUBQUERY($a.%K, $f, $f.%K IN %@).@count != 0).@count != 0", @"detectedFaces", @"uuid", v7, v19, v20];
  }
  v15 = ;
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v17 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v15 inLibrary:v16];

  [v17 setFetchOptions:v6];
  [v17 _setCollectionFetchType:2];

  return v17;
}

+ (id)queryForMomentsInMomentList:(id)a3 options:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v5];
  if ([v5 collectionListSubtype] == 1)
  {
    v8 = MEMORY[0x1E696AE18];
    v9 = [v5 objectID];
    [v8 predicateWithFormat:@"highlight.parentPhotosHighlight == %@", v9];
    goto LABEL_5;
  }

  if ([v5 collectionListSubtype] == 2)
  {
    v10 = MEMORY[0x1E696AE18];
    v9 = [v5 objectID];
    [v10 predicateWithFormat:@"highlight.parentPhotosHighlight.parentPhotosHighlight == %@", v9];
    v11 = LABEL_5:;
    v12 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v11 inLibrary:v7];

    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported collectionListSubtype: %li for querying moments within a moment list.", objc_msgSend(v5, "collectionListSubtype")];
  v15 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v17 = v14;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v12 = 0;
  if (v6)
  {
LABEL_6:
    [v12 setFetchOptions:v6];
  }

LABEL_7:

  return v12;
}

+ (id)queryForMomentsInPhotosHighlight:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = MEMORY[0x1E696AE18];
  v6 = [v3 objectID];
  v7 = [v5 predicateWithFormat:@"highlight = %@", v6];

  LODWORD(v6) = [v3 isSharingSuggestion];
  if (v6)
  {
    v8 = MEMORY[0x1E696AB28];
    v14[0] = v7;
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY assets.%K IN %@", @"libraryScopeShareState", &unk_1F102E1B0];
    v14[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v11 = [v8 andPredicateWithSubpredicates:v10];

    v7 = v11;
  }

  v12 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v7 inLibrary:v4];

  return v12;
}

+ (id)queryForChildrenDayGroupHighlightsForPhotosHighlight:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AE18];
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v6 predicateWithFormat:@"parentDayGroupPhotosHighlight = %@", v8];
  v10 = [v7 photoLibrary];

  v11 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v9 inLibrary:v10];

  if (v5)
  {
    [v11 setFetchOptions:v5];
  }

  return v11;
}

+ (id)queryForParentDayGroupHighlightForPhotosHighlight:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AE18];
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v6 predicateWithFormat:@"ANY childDayGroupPhotosHighlights = %@", v8];
  v10 = [v7 photoLibrary];

  v11 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v9 inLibrary:v10];

  if (v5)
  {
    [v11 setFetchOptions:v5];
  }

  return v11;
}

+ (id)queryForChildrenHighlightsForPhotosHighlight:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AE18];
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v6 predicateWithFormat:@"parentPhotosHighlight = %@", v8];
  v10 = [v7 photoLibrary];

  v11 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v9 inLibrary:v10];

  if (v5)
  {
    [v11 setFetchOptions:v5];
  }

  return v11;
}

+ (id)queryForParentHighlightsForPhotosHighlights:(id)a3 options:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [v6 photoLibrary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (!v8)
        {
          v8 = [*(*(&v19 + 1) + 8 * i) photoLibrary];
        }

        v15 = [v14 objectID];
        [v7 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY childPhotosHighlights IN %@", v7];
  v17 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v16 inLibrary:v8];

  if (v6)
  {
    [v17 setFetchOptions:v6];
  }

  return v17;
}

+ (id)queryForParentHighlightForPhotosHighlight:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AE18];
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v6 predicateWithFormat:@"ANY childPhotosHighlights = %@", v8];
  v10 = [v7 photoLibrary];

  v11 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v9 inLibrary:v10];

  if (v5)
  {
    [v11 setFetchOptions:v5];
  }

  return v11;
}

+ (id)queryForPhotosHighlightsContainingMoments:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 objectID];
        [v4 addObject:v12];

        if (!v8)
        {
          v8 = [v11 photoLibrary];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY moments IN %@", v4];
  v14 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v13 inLibrary:v8];

  return v14;
}

+ (id)queryForMomentsBackingSuggestion:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [v3 predicateForAllMomentsFromRepresentativeAssets];

  v6 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v5 inLibrary:v4];

  [v6 _setCollectionFetchType:2];

  return v6;
}

+ (id)queryForMomentsBackingMemory:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [v3 predicateForAllMomentsFromRepresentativeAssets];

  v6 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v5 inLibrary:v4];

  [v6 _setCollectionFetchType:2];

  return v6;
}

+ (id)queryForMomentsWithOptions:(id)a3
{
  v3 = a3;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [PHQuery queryForType:@"PHMoment" withBasePredicate:0 inLibrary:v4];

  if (v3)
  {
    [v5 setFetchOptions:v3];
  }

  return v5;
}

+ (id)queryForAssetCollectionsWithObjectIDs:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v8];
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:0];
  v11 = [a1 queryForType:@"PHAssetCollection" withBasePredicate:v9 inLibrary:v10];

  if (v7)
  {
    [v11 setFetchOptions:v7];
  }

  return v11;
}

+ (id)queryForAssetCollectionsWithType:(int64_t)a3 subtype:(int64_t)a4 options:(id)a5
{
  v62[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  if (a3 == 1 && a4 == 101)
  {
    v8 = [MEMORY[0x1E69BF2F0] clientIsAllowedToFetchCollectionShares];
    if (v8)
    {
      a4 = 101;
    }

    else
    {
      a4 = 102;
    }

    if (v8)
    {
      a3 = 1;
    }

    else
    {
      a3 = 12;
    }
  }

  v9 = _fetchTypeForAssetCollectionTypeAndSubtype(a3, a4);
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:0];
  if (v9)
  {
    v11 = v7;
    v12 = dyld_program_sdk_at_least();
    if (a4)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = a4;
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (a3 <= 0xC)
    {
      if (((1 << a3) & 0x798) != 0)
      {
LABEL_18:
        v15 = MEMORY[0x1E696AE18];
        v16 = 1;
LABEL_19:
        v17 = [v15 predicateWithValue:v16];
LABEL_119:
        v31 = v17;
        goto LABEL_120;
      }

      if (a3 == 6)
      {
        if (v14 <= 1000000302)
        {
          if (v14 == 1000000301)
          {
            [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %d", 0, v54];
            goto LABEL_118;
          }

          if (v14 == 1000000302)
          {
            v24 = MEMORY[0x1E696AE18];
            v25 = 1;
            goto LABEL_117;
          }
        }

        else
        {
          switch(v14)
          {
            case 0x3B9ACB2FLL:
              goto LABEL_67;
            case 0x3B9ACB30:
              v24 = MEMORY[0x1E696AE18];
              v25 = 3;
              goto LABEL_117;
            case 0x7FFFFFFFFFFFFFFFLL:
              goto LABEL_18;
          }
        }

        v28 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
LABEL_83:

LABEL_84:
          v15 = MEMORY[0x1E696AE18];
          v16 = 0;
          goto LABEL_19;
        }

        *buf = 67109376;
        *&buf[4] = 6;
        v58 = 1024;
        v59 = v14;
LABEL_82:
        _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_ERROR, "Unsupported fetch for asset collections with type %d and subtype %d", buf, 0xEu);
        goto LABEL_83;
      }

      if (a3 == 12)
      {
        switch(v14)
        {
          case 0x66:
            v22 = MEMORY[0x1E696AE18];
            v23 = 2;
            goto LABEL_61;
          case 0x7FFFFFFFFFFFFFFFLL:
            goto LABEL_18;
          case 0x67:
            v22 = MEMORY[0x1E696AE18];
            v23 = 1;
LABEL_61:
            [v22 predicateWithFormat:@"%K = %d", @"collectionShareKind", v23];
            v17 = LABEL_118:;
            goto LABEL_119;
        }

        v28 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_83;
        }

        *buf = 67109376;
        *&buf[4] = 12;
        v58 = 1024;
        v59 = v14;
        goto LABEL_82;
      }
    }

    if (a3 != 2)
    {
      if (a3 != 1)
      {
        goto LABEL_164;
      }

      if (v14 > 99)
      {
        if (v14 <= 1000000000)
        {
          if (v14 == 100)
          {
            v24 = MEMORY[0x1E696AE18];
            v25 = 1500;
            goto LABEL_117;
          }

          if (v14 == 101)
          {
            v24 = MEMORY[0x1E696AE18];
            v25 = 1505;
            goto LABEL_117;
          }
        }

        else
        {
          switch(v14)
          {
            case 0x3B9ACA01:
              v24 = MEMORY[0x1E696AE18];
              v25 = 1000;
              goto LABEL_117;
            case 0x3B9ACC59:
              v24 = MEMORY[0x1E696AE18];
              v25 = 1510;
              goto LABEL_117;
            case 0x7FFFFFFFFFFFFFFFLL:
LABEL_164:
              v31 = 0;
              goto LABEL_120;
          }
        }

        goto LABEL_99;
      }

      if (v14 > 3)
      {
        switch(v14)
        {
          case 4:
            v24 = MEMORY[0x1E696AE18];
            v25 = 15;
            goto LABEL_117;
          case 5:
            v24 = MEMORY[0x1E696AE18];
            v25 = 1550;
            goto LABEL_117;
          case 6:
            v24 = MEMORY[0x1E696AE18];
            v25 = 12;
LABEL_117:
            [v24 predicateWithFormat:@"kind = %d", v25, v54];
            goto LABEL_118;
        }

        goto LABEL_99;
      }

      if (v14 != 2)
      {
        if (v14 == 3)
        {
          v24 = MEMORY[0x1E696AE18];
          v25 = 1551;
          goto LABEL_117;
        }

LABEL_99:
        v30 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_163;
        }

        *buf = 67109376;
        *&buf[4] = 1;
        v58 = 1024;
        v59 = v14;
        goto LABEL_162;
      }

LABEL_67:
      v24 = MEMORY[0x1E696AE18];
      v25 = 2;
      goto LABEL_117;
    }

    v26 = [PHSmartAlbum albumKindFromSmartAlbumSubtype:v14];
    v55 = [v26 integerValue];

    if (v14 <= 220)
    {
      if ((v14 - 200) < 0x14)
      {
LABEL_44:
        v24 = MEMORY[0x1E696AE18];
        v25 = v55;
        goto LABEL_117;
      }

      if (v14 == 220)
      {
        if (v11 && ![v11 includeScreenRecordingsSmartAlbum])
        {
          v27 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = 2;
            v58 = 1024;
            v59 = 220;
            goto LABEL_191;
          }

LABEL_192:

          goto LABEL_84;
        }

        goto LABEL_115;
      }

      goto LABEL_160;
    }

    if (v14 > 1000000211)
    {
      if (v14 > 1000000217)
      {
        if ((v14 - 1000000218) < 2)
        {
          goto LABEL_44;
        }

        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (_os_feature_enabled_impl())
          {
            v29 = [&unk_1F102E210 arrayByAddingObject:&unk_1F102D538];
          }

          else
          {
            v29 = &unk_1F102E210;
          }

          if ([v11 includePlacesSmartAlbum])
          {
            v44 = [v29 arrayByAddingObject:&unk_1F102D268];

            v29 = v44;
          }

          if ([v11 includeUserSmartAlbums])
          {
            v45 = [v29 arrayByAddingObject:&unk_1F102D280];

            v29 = v45;
          }

          if ([v11 includeRecentlyEditedSmartAlbum])
          {
            v46 = [v29 arrayByAddingObject:&unk_1F102D298];

            v29 = v46;
          }

          if ([v11 includeScreenRecordingsSmartAlbum])
          {
            v47 = [v29 arrayByAddingObject:&unk_1F102D2B0];

            v29 = v47;
          }

          if ([v11 includeSharedLibrarySharingSuggestionsSmartAlbum])
          {
            v48 = [v29 arrayByAddingObject:&unk_1F102D2C8];

            v29 = v48;
          }

          if ([v11 includeActionCamVideoSmartAlbum])
          {
            v49 = [v29 arrayByAddingObject:&unk_1F102D2F8];

            v29 = v49;
          }

          if ([v11 includeProResSmartAlbum])
          {
            v50 = [v29 arrayByAddingObject:&unk_1F102D310];

            v29 = v50;
          }

          if ([v11 includeAllPhotosSmartAlbum])
          {
            v51 = [v29 arrayByAddingObject:&unk_1F102D2E0];

            v29 = v51;
          }

          if ([v11 includeTrashBinAlbum])
          {
            v52 = [v29 arrayByAddingObject:&unk_1F102D550];

            v29 = v52;
          }

          if ([v11 includeDuplicatesAlbums])
          {
            v53 = [v29 arrayByAddingObject:&unk_1F102D328];

            v29 = v53;
          }

          v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind IN %@", v29];

LABEL_120:
          v20 = [PHQuery queryForType:v9 withBasePredicate:v31 inLibrary:v10];

          v21 = [PHQuery identificationBlockForAssetCollectionType:a3];
          if (a4 == 1000000001 && a3 == 1)
          {
            [v20 _setIncludesCameraRoll:1];
            goto LABEL_123;
          }

          v32 = 0;
          if (a3 > 8)
          {
            if (a3 == 9)
            {
              v33 = MEMORY[0x1E696AEB0];
              v34 = @"startDate";
              goto LABEL_136;
            }

            if (a3 != 12)
            {
              goto LABEL_138;
            }

            v33 = MEMORY[0x1E696AEB0];
            v34 = @"lastModifiedDate";
          }

          else
          {
            if (a3 != 1)
            {
              if (a3 != 2)
              {
                goto LABEL_138;
              }

              if (a4 != 0x7FFFFFFFFFFFFFFFLL)
              {
LABEL_123:
                v32 = 0;
LABEL_138:
                if (([v11 hasAnySortDescriptors] & 1) == 0 && v32)
                {
                  v36 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v11 photoLibrary:v10];

                  v56 = v32;
                  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
                  [v36 setInternalSortDescriptors:v37];

                  v11 = v36;
                }

                v38 = v11;
                v7 = v38;
                if (a3 != 6)
                {
                  if (a3 == 2 && a4 == 219)
                  {
                    *buf = @"PHAssetPropertySetSpatialMedia";
                    v39 = buf;
                    goto LABEL_152;
                  }

LABEL_149:

LABEL_154:
                  [v20 setFetchOptions:v7];

                  goto LABEL_155;
                }

                v40 = [v38 sharingFilter];
                if (v40 == 2)
                {
                  v60 = @"PHPhotosHighlightPropertySetPrivateOrShared";
                  v39 = &v60;
                }

                else if (v40 == 1)
                {
                  v61 = @"PHPhotosHighlightPropertySetOnlyShared";
                  v39 = &v61;
                }

                else
                {
                  if (v40)
                  {
                    goto LABEL_149;
                  }

                  v62[0] = @"PHPhotosHighlightPropertySetOnlyPrivate";
                  v39 = v62;
                }

LABEL_152:
                v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];

                if (v41)
                {
                  v42 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v7 photoLibrary:v10];

                  [v42 addFetchPropertySets:v41];
                  v7 = v42;
                }

                goto LABEL_154;
              }

              v33 = MEMORY[0x1E696AEB0];
              v34 = @"parentFolder";
              goto LABEL_136;
            }

            if ((a4 - 3) < 2)
            {
              v33 = MEMORY[0x1E696AEB0];
              v34 = @"syncEventOrderKey";
LABEL_136:
              v35 = 1;
              goto LABEL_137;
            }

            if (a4 != 101)
            {
              goto LABEL_123;
            }

            v33 = MEMORY[0x1E696AEB0];
            v34 = @"cloudLastInterestingChangeDate";
          }

          v35 = 0;
LABEL_137:
          v32 = [v33 sortDescriptorWithKey:v34 ascending:v35];
          goto LABEL_138;
        }

        goto LABEL_160;
      }

      if (v14 == 1000000212)
      {
        goto LABEL_44;
      }

      if (v14 == 1000000214)
      {
        if (![v11 includeSharedLibrarySharingSuggestionsSmartAlbum])
        {
          v27 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = 2;
            v58 = 1024;
            v59 = 1000000214;
            goto LABEL_191;
          }

          goto LABEL_192;
        }

LABEL_115:
        v24 = MEMORY[0x1E696AE18];
        v25 = v55;
        goto LABEL_117;
      }

      if (v14 != 1000000215)
      {
LABEL_160:
        v30 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_163;
        }

        *buf = 67109376;
        *&buf[4] = 2;
        v58 = 1024;
        v59 = v14;
LABEL_162:
        _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "Unsupported fetch for asset collections with type %d and subtype %d", buf, 0xEu);
LABEL_163:

        if (dyld_program_sdk_at_least())
        {
          goto LABEL_84;
        }

        goto LABEL_164;
      }

      if ([v11 includeActionCamVideoSmartAlbum])
      {
        goto LABEL_115;
      }

      v27 = PLPhotoKitGetLog();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_192;
      }

      *buf = 67109376;
      *&buf[4] = 2;
      v58 = 1024;
      v59 = 1000000215;
    }

    else
    {
      if (v14 <= 1000000203)
      {
        switch(v14)
        {
          case 221:
            goto LABEL_44;
          case 1000000201:
            v24 = MEMORY[0x1E696AE18];
            v25 = 1612;
            goto LABEL_117;
          case 1000000203:
            if ([v11 includePlacesSmartAlbum])
            {
              v24 = MEMORY[0x1E696AE18];
              v25 = 1619;
              goto LABEL_117;
            }

            v27 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              *&buf[4] = 2;
              v58 = 1024;
              v59 = 1000000203;
              goto LABEL_191;
            }

            goto LABEL_192;
        }

        goto LABEL_160;
      }

      if (v14 > 1000000205)
      {
        if (v14 == 1000000206)
        {
          if (![v11 includeRecentlyEditedSmartAlbum])
          {
            v27 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              *&buf[4] = 2;
              v58 = 1024;
              v59 = 1000000206;
              goto LABEL_191;
            }

            goto LABEL_192;
          }

          goto LABEL_115;
        }

        if (v14 != 1000000211)
        {
          goto LABEL_160;
        }

        if ([v11 includeProResSmartAlbum])
        {
          goto LABEL_115;
        }

        v27 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_192;
        }

        *buf = 67109376;
        *&buf[4] = 2;
        v58 = 1024;
        v59 = 1000000211;
      }

      else
      {
        if (v14 == 1000000204)
        {
          goto LABEL_44;
        }

        if ([v11 includeAllPhotosSmartAlbum])
        {
          goto LABEL_115;
        }

        v27 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_192;
        }

        *buf = 67109376;
        *&buf[4] = 2;
        v58 = 1024;
        v59 = 1000000205;
      }
    }

LABEL_191:
    _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_ERROR, "Unsupported fetch for asset collections with type %d and subtype %d", buf, 0xEu);
    goto LABEL_192;
  }

  v18 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *&buf[4] = a3;
    v58 = 1024;
    v59 = a4;
    _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "Unsupported fetch for asset collections with type %d and subtype %d (no fetch type)", buf, 0xEu);
  }

  v19 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  v20 = [PHQuery queryForType:@"PHAssetCollection" withBasePredicate:v19 inLibrary:v10];

  v21 = _Block_copy(PHQueryForAssetCollectionType_NoFetchType);
LABEL_155:
  [v20 _setIdentificationBlock:v21];

  return v20;
}

+ (id)queryForAssetCollectionsWithType:(int64_t)a3 localIdentifiers:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = _fetchTypeForAssetCollectionTypeAndSubtype(a3, 0x7FFFFFFFFFFFFFFFLL);
  v11 = [a1 queryForType:v10 withLocalIdentifiers:v9 options:v8];

  return v11;
}

+ (id)queryForAssetCollectionsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 firstObject];
  v9 = [PHObject identifierCodeFromLocalIdentifier:v8];

  if (!v9)
  {
    v10 = @"PHAssetCollection";
    v18 = @"PHAssetCollection";
    goto LABEL_9;
  }

  v10 = _fetchTypeForAssetCollectionLocalIdentifierCode(v9);
  if (v10)
  {
LABEL_9:
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__PHQuery_queryForAssetCollectionsWithLocalIdentifiers_options___block_invoke;
    v21[3] = &unk_1E75A8D50;
    v22 = v10;
    v11 = v10;
    v19 = [v6 _pl_filter:v21];
    v17 = [a1 queryForType:v11 withLocalIdentifiers:v19 options:v7];

    v12 = v22;
    goto LABEL_10;
  }

  v11 = [v6 firstObject];
  pl_dispatch_once();
  v12 = handleUnsupportedAssetCollectionFetchTypeForLocalIdentifier_pl_once_object_47;
  v13 = [PHObject identifierCodeFromLocalIdentifier:v11];
  v14 = [(__CFString *)v12 objectForKeyedSubscript:v13];
  if (v14)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ to fetch asset collection with local identifier (%@) with invalid fetch type: %@", @"Failed", v11, v14];
    v16 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v15;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }
  }

  v17 = 0;
LABEL_10:

  return v17;
}

BOOL __64__PHQuery_queryForAssetCollectionsWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [PHObject identifierCodeFromLocalIdentifier:a2];
  v4 = v3;
  if (v3)
  {
    v5 = _fetchTypeForAssetCollectionLocalIdentifierCode(v3);
    v6 = v5 == *(a1 + 32);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (BOOL)_validateLocalIdentifiers:(id)a3 compatibilityWithFetchType:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    v11 = 1;
    *&v8 = 138412546;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [PHObject identifierCodeFromLocalIdentifier:v13, v18];
        v15 = [PHPhotoLibrary fetchTypeForLocalIdentifierCode:v14];
        if (([v15 isEqualToString:v6] & 1) == 0)
        {
          v16 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v25 = v13;
            v26 = 2112;
            v27 = v6;
            _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Invalid localIdentifier %@ passed to query for %@", buf, 0x16u);
          }

          v11 = 0;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

+ (id)queryForAssetCollectionsContainingAssets:(id)a3 withType:(int64_t)a4 options:(id)a5
{
  v25[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v22 = 0;
  v9 = [a1 _assetIDsFromAssets:a3 anyAsset:&v22];
  v10 = v22;
  v11 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v8 object:v10];
  if (![v9 count])
  {
    goto LABEL_15;
  }

  if (a4 <= 5)
  {
    switch(a4)
    {
      case 1:
        v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY assets IN %@", v9];
        v15 = @"PHAlbum";
        goto LABEL_20;
      case 3:
        v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY assets IN %@", v9];
        v15 = @"PHMoment";
        goto LABEL_20;
      case 4:
        v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY extendedCuratedAssets IN %@", v9];
        v15 = @"PHMemory";
LABEL_20:
        v14 = [PHQuery queryForType:v15 withBasePredicate:v12 inLibrary:v11];
        goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (a4 > 7)
  {
    if (a4 == 8)
    {
      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"keyAssets", v9];
      v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"representativeSuggestionAssets", v9];
      v16 = MEMORY[0x1E696AB28];
      v25[0] = v12;
      v25[1] = v13;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
      v18 = [v16 orPredicateWithSubpredicates:v17];

      v14 = [PHQuery queryForType:@"PHSuggestion" withBasePredicate:v18 inLibrary:v11];

      goto LABEL_18;
    }

    if (a4 == 9)
    {
      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"assets", v9];
      v15 = @"PHImportSession";
      goto LABEL_20;
    }

LABEL_14:
    if ((queryForAssetCollectionsContainingAssets_withType_options__didLog & 1) == 0)
    {
      queryForAssetCollectionsContainingAssets_withType_options__didLog = 1;
      v12 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (a4 > 0xD)
        {
          v20 = 0;
        }

        else
        {
          v20 = off_1E75A8E78[a4];
        }

        v21 = v20;
        *buf = 138412290;
        v24 = v21;
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEFAULT, "Fetching for asset collection type %@ containing an asset is not supported", buf, 0xCu);
      }

      v14 = 0;
      goto LABEL_21;
    }

LABEL_15:
    v14 = 0;
    goto LABEL_22;
  }

  if (a4 == 6)
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY assets IN %@", v9];
    v15 = @"PHPhotosHighlight";
    goto LABEL_20;
  }

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY assets IN %@", v9];
  v13 = +[PHPhotoLibrary sharedMomentSharePhotoLibrary];
  v14 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v12 inLibrary:v13];
LABEL_18:

LABEL_21:
LABEL_22:
  [v14 setFetchOptions:v8];

  return v14;
}

+ (id)queryForAllTripHighlightsContainingAssetUUIDs:(id)a3 options:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = MEMORY[0x1E696AE18];
  v8 = a4;
  v9 = [v7 predicateWithFormat:@"ANY %K.%K IN %@", @"dayGroupAssets", @"uuid", v6];
  v10 = [MEMORY[0x1E69BE6B8] predicateForAllTripHighlights];
  v11 = MEMORY[0x1E696AB28];
  v17[0] = v9;
  v17[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];

  v14 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v8 object:0];
  v15 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v13 inLibrary:v14];
  [v15 setFetchOptions:v8];

  return v15;
}

+ (id)queryForAssetCollectionsContainingAsset:(id)a3 withType:(int64_t)a4 options:(id)a5
{
  v35[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [v7 objectID];

  if (!v9)
  {
    v20 = 0;
    goto LABEL_23;
  }

  v10 = [v7 photoLibrary];
  if (a4 <= 6)
  {
    switch(a4)
    {
      case 1:
        v27 = MEMORY[0x1E696AE18];
        v22 = [v7 objectID];
        v23 = [v27 predicateWithFormat:@"assets CONTAINS %@", v22];
        v24 = @"PHAlbum";
        goto LABEL_21;
      case 3:
        goto LABEL_14;
      case 6:
        v21 = MEMORY[0x1E696AE18];
        v22 = [v7 objectID];
        v23 = [v21 predicateWithFormat:@"assets CONTAINS %@", v22];
        v24 = @"PHPhotosHighlight";
LABEL_21:
        v20 = [PHQuery queryForType:v24 withBasePredicate:v23 inLibrary:v10];

        goto LABEL_22;
    }

LABEL_16:
    if ((queryForAssetCollectionsContainingAsset_withType_options__didLog & 1) == 0)
    {
      queryForAssetCollectionsContainingAsset_withType_options__didLog = 1;
      v28 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        if (a4 > 0xD)
        {
          v29 = 0;
        }

        else
        {
          v29 = off_1E75A8E78[a4];
        }

        v32 = v29;
        *buf = 138412290;
        v34 = v32;
        _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_DEFAULT, "Fetching for asset collection type %@ containing an asset is not supported", buf, 0xCu);
      }
    }

    v20 = 0;
    goto LABEL_22;
  }

  if (a4 > 8)
  {
    if (a4 == 9)
    {
      v30 = MEMORY[0x1E696AE18];
      v22 = [v7 objectID];
      v23 = [v30 predicateWithFormat:@"%K CONTAINS %@", @"assets", v22];
      v24 = @"PHImportSession";
      goto LABEL_21;
    }

    if (a4 == 12)
    {
      v25 = MEMORY[0x1E696AE18];
      v22 = [v7 objectID];
      v23 = [v25 predicateWithFormat:@"%K CONTAINS %@", @"collectionShareAssets", v22];
      v24 = @"PHCollectionShare";
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (a4 == 7)
  {
LABEL_14:
    v26 = MEMORY[0x1E696AE18];
    v22 = [v7 objectID];
    v23 = [v26 predicateWithFormat:@"assets CONTAINS %@", v22];
    v24 = @"PHMoment";
    goto LABEL_21;
  }

  v11 = MEMORY[0x1E696AE18];
  v12 = [v7 objectID];
  v13 = [v11 predicateWithFormat:@"%K CONTAINS %@", @"keyAssets", v12];

  v14 = MEMORY[0x1E696AE18];
  v15 = [v7 objectID];
  v16 = [v14 predicateWithFormat:@"%K CONTAINS %@", @"representativeSuggestionAssets", v15];

  v17 = MEMORY[0x1E696AB28];
  v35[0] = v13;
  v35[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v19 = [v17 orPredicateWithSubpredicates:v18];

  v20 = [PHQuery queryForType:@"PHSuggestion" withBasePredicate:v19 inLibrary:v10];

LABEL_22:
LABEL_23:
  [v20 setFetchOptions:v8];

  return v20;
}

+ (id)queryForAssetsForCloudFeedEntry:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"cloudFeedAssetsEntry", v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForAssetsForComment:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectID];
  v9 = [v7 objectID];
  v10 = [v5 predicateWithFormat:@"%K CONTAINS %@ OR %K CONTAINS %@", @"likeComments", v8, @"cloudComments", v9];

  v11 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v12 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v10 inLibrary:v11];
  [v12 setFetchOptions:v6];

  return v12;
}

+ (id)queryForAssetsInPreviewStateWithSuggestedByClientTypes:(id)a3 options:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
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
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v18 + 1) + 8 * i) integerValue];
        v13 = PLManagedAssetPredicateToFetchAllAssetsInLibraryScopePreviewStateWithSuggestedByClientType();
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v7];
  v15 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v16 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v14 inLibrary:v15];

  [v16 setFetchOptions:v6];

  return v16;
}

+ (id)queryForAssetsInPreviewStateInLibraryScope:(id)a3 options:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [a1 _participationStateFromLibraryScope:v7];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"activeLibraryScopeParticipationState", v8];
  v10 = PLManagedAssetPredicateToFetchAllAssetsInLibraryScopePreviewState();
  v11 = MEMORY[0x1E696AB28];
  v17[0] = v9;
  v17[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];

  v14 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v15 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v13 inLibrary:v14];

  [v15 setFetchOptions:v6];

  return v15;
}

+ (id)queryForAssetsWithCurrentUserAsLibraryScopeContributor:(BOOL)a3 inLibraryScope:(id)a4 options:(id)a5
{
  v6 = a3;
  v20[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AE18];
  v8 = a5;
  v9 = [a4 objectID];
  v10 = [v7 predicateWithFormat:@"libraryScope == %@", v9];

  v11 = MEMORY[0x1E696AB28];
  if (v6)
  {
    v20[0] = v10;
    v12 = [MEMORY[0x1E69BE540] predicateToIncludeOnlyContentContributedByCurrentUser];
    v20[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v14 = [v11 andPredicateWithSubpredicates:v13];
  }

  else
  {
    v19[0] = v10;
    v12 = [MEMORY[0x1E69BE540] predicateToIncludeOnlyContentContributedByCurrentUser];
    v13 = [v11 notPredicateWithSubpredicate:v12];
    v19[1] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v14 = [v11 andPredicateWithSubpredicates:v15];

    v10 = v15;
  }

  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v8 object:0];
  v17 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v14 inLibrary:v16];

  [v17 setFetchOptions:v8];

  return v17;
}

+ (id)queryForAssetsInLibraryScope:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _participationStateFromLibraryScope:v7];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"activeLibraryScopeParticipationState", v8];
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v6];

  return v11;
}

+ (id)queryForAssetsCaptured:(BOOL)a3 orEdited:(BOOL)a4 onThisCameraSinceDate:(id)a5 options:(id)a6
{
  v7 = a4;
  v8 = a3;
  v33[4] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  if (!v11)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:2418 description:{@"Invalid parameter not satisfying: %@", @"date != nil"}];
  }

  v13 = [v12 photoLibrary];

  if (!v13)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:2419 description:{@"Invalid parameter not satisfying: %@", @"options.photoLibrary != nil"}];
  }

  [v11 timeIntervalSinceNow];
  if (v14 >= 0.0)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:2420 description:{@"Invalid parameter not satisfying: %@", @"date.timeIntervalSinceNow < 0"}];
  }

  v15 = [v12 internalPredicate];

  if (v15)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:2421 description:{@"Invalid parameter not satisfying: %@", @"options.internalPredicate == nil"}];
  }

  if (v8 == v7)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:2422 description:{@"Invalid parameter not satisfying: %@", @"captured != edited"}];
  }

  v16 = [v12 copy];
  if (!v8)
  {
    v18 = 0;
    v17 = 0;
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"dateCreated", v11];
  v18 = [MEMORY[0x1E69BE540] predicateForUnadjustedAssetsWithKeyPathToAsset:0];
  if (v7)
  {
LABEL_15:
    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"adjustmentTimestamp", v11];

    v20 = [MEMORY[0x1E69BE540] predicateForAdjustedAssetsWithKeyPathToAsset:0];

    v18 = v20;
    v17 = v19;
  }

LABEL_16:
  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %d", @"currentSleetCast", 0];
  v22 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCameraAsset"), 1}];
  v23 = MEMORY[0x1E696AB28];
  v33[0] = v17;
  v33[1] = v18;
  v33[2] = v21;
  v33[3] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
  v25 = [v23 andPredicateWithSubpredicates:v24];

  [v16 setInternalPredicate:v25];
  v26 = [a1 queryForAssetsWithOptions:v16];

  return v26;
}

+ (id)queryForAssetsFromCameraSinceDate:(id)a3 options:(id)a4
{
  v26[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:2387 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  if (+[PHPhotoLibrary isMultiLibraryModeEnabled])
  {
    v9 = [v8 photoLibrary];

    if (!v9)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:2389 description:{@"Invalid parameter not satisfying: %@", @"options.photoLibrary"}];
    }
  }

  v10 = [v8 copy];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"addedDate", v7];
  v12 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCameraAsset"), 1}];
  v13 = MEMORY[0x1E696AB28];
  v26[0] = v11;
  v26[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v15 = [v13 andPredicateWithSubpredicates:v14];

  v16 = [v10 internalPredicate];
  v17 = v16;
  if (v16)
  {
    v18 = MEMORY[0x1E696AB28];
    v25[0] = v16;
    v25[1] = v15;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v20 = [v18 andPredicateWithSubpredicates:v19];
    [v10 setInternalPredicate:v20];
  }

  else
  {
    [v10 setInternalPredicate:v15];
  }

  v21 = [a1 queryForAssetsWithOptions:v10];

  return v21;
}

+ (id)queryForAllAssetsInYearRepresentedByYearHighlight:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 kind] == 2)
  {
    v8 = [v6 photoLibrary];
    v9 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v7 photoLibrary:v8];

    v10 = MEMORY[0x1E696AE18];
    v11 = [v6 objectID];
    v12 = [v10 predicateWithFormat:@"highlightBeingAssets.parentPhotosHighlight.parentPhotosHighlight = %@", v11];
    [v9 setInternalPredicate:v12];

    v13 = [a1 queryForAssetsWithOptions:v9];
    v7 = v9;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)queryForReferencedAssetsWithOptions:(id)a3
{
  v3 = MEMORY[0x1E69BF2B8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v6 setComparator:1];
  [v6 setKey:6];
  [v5 addSingleQueries:v6];
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v4 object:0];
  v8 = objc_alloc_init(MEMORY[0x1E69BE700]);
  v9 = MEMORY[0x1E69BE708];
  v10 = [v7 photoLibrary];
  v11 = [v9 predicateForQuery:v5 inLibrary:v10 changeDetectionCriteria:v8];

  v12 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v7];
  [v12 setFetchOptions:v4];

  v13 = [[PHQueryChangeDetectionCriteria alloc] initWithPLQueryChangeDetectionCriteria:v8];
  if (v13)
  {
    v14 = [v12 fetchOptions];
    [v14 setChangeDetectionCriteria:v13];
  }

  return v12;
}

+ (id)queryForAssetsForKeywords:(id)a3 options:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = a4;
  v8 = [v6 _pl_map:&__block_literal_global_526];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"additionalAttributes.keywords", v8];
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:0];
  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:v7];

  return v11;
}

+ (id)queryForKeyAssetsInAssetCollection:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 assetCollectionType] == 8)
  {
    v7 = [PHQuery queryForKeyAssetsInSuggestion:v5 options:v6];
    v8 = v7;
    v9 = PHQueryForKeyAssetsInSuggestion;
  }

  else if ([v5 assetCollectionType] == 7)
  {
    v7 = [PHQuery queryForKeyAssetsInMomentShare:v5 options:v6];
    v8 = v7;
    v9 = PHQueryForKeyAssetsInMomentShare;
  }

  else if ([v5 assetCollectionType] == 12)
  {
    v7 = [PHQuery queryForKeyAssetsInCollectionShare:v5 options:v6];
    v8 = v7;
    v9 = PHQueryForKeyAssetsInCollectionShare;
  }

  else
  {
    if ([v5 assetCollectionType] != 6 || objc_msgSend(v5, "assetCollectionSubtype") != 1000000302 || !objc_msgSend(v5, "isSharingSuggestion"))
    {
      if ([v5 canContainCustomKeyAssets])
      {
        v11 = MEMORY[0x1E696AE18];
        v12 = [v5 objectID];
        v13 = [v11 predicateWithFormat:@"%K CONTAINS %@", @"albumsBeingKeyAssets", v12];

        v14 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v5];
        v8 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v13 inLibrary:v14];

        v15 = [v5 photoLibrary];
        v16 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v15];

        [v8 setFetchOptions:v16];
        [v8 _setIdentificationBlock:PHQueryForKeyAssetsInAssetCollection];
      }

      else if ([v5 assetCollectionType] == 3)
      {
        v8 = 0;
      }

      else
      {
        v17 = [v5 photoLibrary];
        v18 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v17];

        v19 = [v18 fetchLimit];
        v20 = +[PHQuery maxKeyAssets];
        if (v19 >= v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = v19;
        }

        if (v19)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        [v18 setFetchLimit:v22];
        [v18 setReverseSortOrder:{objc_msgSend(v18, "reverseSortOrder") ^ objc_msgSend(v5, "keyAssetsAtEnd")}];
        v8 = [PHQuery queryForAssetsInAssetCollection:v5 options:v18];
        v6 = v18;
      }

      goto LABEL_8;
    }

    v7 = [PHQuery queryForKeySharingSuggestionAssetsInHighlight:v5 options:v6];
    v8 = v7;
    v9 = PHQueryForKeySharingSuggestionAssetsInHighlight;
  }

  [v7 _setIdentificationBlock:v9];
LABEL_8:

  return v8;
}

+ (id)queryForKeySharingSuggestionAssetsInHighlight:(id)a3 options:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 assetCollectionSubtype] == 1000000302)
  {
    v7 = [v5 photoLibrary];
    v8 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v7];

    v9 = [MEMORY[0x1E695DF70] array];
    v10 = MEMORY[0x1E696AE18];
    v11 = [v5 objectID];
    v12 = [v10 predicateWithFormat:@"highlightBeingAssets.parentPhotosHighlight == %@", v11];
    [v9 addObject:v12];

    v13 = PLManagedAssetPredicateToFetchAssetsSuggestedForSharing();
    [v9 addObject:v13];

    v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v9];
    [v8 setInternalPredicate:v14];

    [v8 setSharingFilter:0];
    v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:0];
    v19[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v8 setInternalSortDescriptors:v16];

    v17 = [PHQuery queryForAssetsWithOptions:v8];

    v6 = v8;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)queryForKeyAssetsInCollectionShare:(id)a3 options:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [v6 photoLibrary];
  v8 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v5 photoLibrary:v7];

  [v8 setFetchLimit:1];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"cloudBatchPublishDate" ascending:0];
  v14[0] = v9;
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:0];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v8 setInternalSortDescriptors:v11];

  v12 = [PHQuery queryForAssetsInAssetCollection:v6 options:v8];

  return v12;
}

+ (id)queryForKeyAssetsInMomentShare:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 preview];
  v8 = [v7 keyAssetIdentifier];
  if (v8)
  {
    v9 = [v5 photoLibrary];
    v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v9];

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid == %@ OR cloudAssetGUID == %@", v8, v8];
    [v10 setInternalPredicate:v11];
    v12 = [PHQuery queryForAssetsInAssetCollection:v5 options:v10];

    v6 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)queryForAssetsWithBurstIdentifier:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E69BE540];
  v6 = a4;
  v7 = [v5 predicateForBurstAssetsWithBurstUUID:a3];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForVisibleAssetsWithObjectIDs:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:0];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DEC8] array];
  }

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v6];
  v10 = [a1 queryForType:@"PHAsset" withBasePredicate:v9 seedOIDs:0 inLibrary:v8];

  v11 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v7 photoLibrary:v8];

  [v10 setFetchOptions:v11];

  return v10;
}

+ (id)queryForAssetsWithObjectIDs:(id)a3 options:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = a4;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:0];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v6];
  v10 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 seedOIDs:0 inLibrary:v8];

  v11 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v7 photoLibrary:v8];

  [v11 setIncludeTrashedAssets:1];
  [v11 setIncludeAllBurstAssets:1];
  [v11 setIncludeHiddenAssets:1];
  [v10 setFetchOptions:v11];

  return v10;
}

+ (id)queryForGuestAssetsInCollectionContainingAsset:(id)a3 options:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  [v6 fetchPropertySetsIfNeeded];
  v7 = [v6 curationProperties];

  v8 = [v7 syndicationIdentifier];

  v9 = PLSearchableIdentifierFromMessagesSyndicationID();
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"additionalAttributes.syndicationIdentifier CONTAINS %@", v9];
  v11 = [v5 internalPredicate];

  if (v11)
  {
    v12 = MEMORY[0x1E696AB28];
    v13 = [v5 internalPredicate];
    v18[0] = v13;
    v18[1] = v10;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v15 = [v12 andPredicateWithSubpredicates:v14];
    [v5 setInternalPredicate:v15];
  }

  else
  {
    [v5 setInternalPredicate:v10];
  }

  v16 = [PHQuery queryForGuestAssetsWithOptions:v5];

  return v16;
}

+ (id)queryForGuestAssetsWithOptions:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v4 object:0];
  v6 = MEMORY[0x1E696AB28];
  v7 = [a1 _guestAssetOnlyPredicate];
  v14[0] = v7;
  v8 = +[PHAsset filterPredicateToExcludeNoSyndicationAssets];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v10 = [v6 andPredicateWithSubpredicates:v9];

  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v10 inLibrary:v5];
  if (!v4 || ![v4 includeAssetSourceTypes])
  {
    v12 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v4 photoLibrary:v5];

    [v12 setIncludeAssetSourceTypes:1];
    v4 = v12;
  }

  [v11 setFetchOptions:v4];

  return v11;
}

+ (id)queryForAnyCinematicVideosNeedingDeferredProcessingWithOtions:(id)a3
{
  v3 = a3;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d AND %K = %d", @"depthType", 2, @"deferredProcessingNeeded", 2];
  v6 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v5 inLibrary:v4];
  if (!v3)
  {
    v3 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:0 photoLibrary:v4];
  }

  [v3 setFetchLimit:1];
  [v6 setFetchOptions:v3];

  return v6;
}

+ (id)queryForAssetsForPTPWithOptions:(id)a3
{
  v3 = a3;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [v4 photoLibrary];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__36903;
  v20 = __Block_byref_object_dispose__36904;
  v21 = 0;
  v6 = [v5 managedObjectContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__PHQuery_queryForAssetsForPTPWithOptions___block_invoke;
  v12[3] = &unk_1E75AA3F8;
  v15 = &v16;
  v7 = v6;
  v13 = v7;
  v8 = v5;
  v14 = v8;
  [v7 performBlockAndWait:v12];
  v9 = [PHPTPFetches predicateForAssetsExposedByPHPTPExcludingObjectIDs:v17[5]];
  v10 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 inLibrary:v4];
  if (!v3)
  {
    v3 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:0 photoLibrary:v4];
  }

  [v3 setIncludeAllBurstAssets:1];
  [v10 setFetchOptions:v3];

  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __43__PHQuery_queryForAssetsForPTPWithOptions___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = +[PHPTPFetches fetchAssetIdsToExcludeFromPTPInContext:isCloudPhotoLibraryEnabled:](PHPTPFetches, "fetchAssetIdsToExcludeFromPTPInContext:isCloudPhotoLibraryEnabled:", *(a1 + 32), [*(a1 + 40) isCloudPhotoLibraryEnabled]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)queryForAssetsWithOptions:(id)a3
{
  v3 = a3;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [PHQuery queryForType:@"PHAsset" withBasePredicate:0 inLibrary:v4];
  if (!v3 || ![v3 includeAssetSourceTypes])
  {
    v6 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v3 photoLibrary:v4];

    [v6 setIncludeAssetSourceTypes:1];
    v3 = v6;
  }

  [v5 setFetchOptions:v3];

  return v5;
}

+ (id)queryForCloudSharedAlbumInvitationRecordsForCloudSharedAlbum:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v5 object:v6];
  v8 = MEMORY[0x1E696AE18];
  v9 = [v6 cloudGUID];

  v10 = [v8 predicateWithFormat:@"%K = %@", @"albumGUID", v9];

  v11 = [PHQuery queryForType:@"PHCloudSharedAlbumInvitationRecord" withBasePredicate:v10 inLibrary:v7];
  if (!v5)
  {
    v5 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:0 photoLibrary:v7];
  }

  [v11 setFetchOptions:v5];

  return v11;
}

+ (id)queryForCloudSharedAlbumInvitationRecordsWithOptions:(id)a3
{
  v3 = a3;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [PHQuery queryForType:@"PHCloudSharedAlbumInvitationRecord" withBasePredicate:0 inLibrary:v4];
  if (!v3)
  {
    v3 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:0 photoLibrary:v4];
  }

  [v5 setFetchOptions:v3];

  return v5;
}

+ (id)queryForCloudSharedAlbumsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a1 queryForType:@"PHCloudSharedAlbum" withLocalIdentifiers:a3 options:v6];
  [v7 setFetchOptions:v6];

  return v7;
}

+ (id)_queryForAssetsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a1 queryForType:@"PHAsset" withLocalIdentifiers:a3 options:v6];
  v8 = objc_opt_class();
  v9 = [v6 photoLibrary];
  v10 = [v8 _defaultFetchOptionsForIdentifiedAssetsQueryInPhotoLibrary:v9];

  if (v6)
  {
    [v10 mergeWithFetchOptions:v6];
  }

  [v7 setFetchOptions:v10];

  return v7;
}

+ (id)_defaultFetchOptionsForIdentifiedAssetsQueryInPhotoLibrary:(id)a3
{
  v3 = [PHFetchOptions fetchOptionsWithPhotoLibrary:a3 orObject:0];
  [v3 setIncludeDuplicateAssets:1];
  [v3 setIncludeHiddenAssets:1];

  return v3;
}

+ (id)queryForType:(id)a3 withLocalIdentifiers:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([v10 isEqualToString:@"PHPerson"])
  {
    v11 = @"personUUID";
  }

  else
  {
    v11 = @"uuid";
  }

  v12 = [a1 queryForType:v10 withIdentifiers:v9 identifierKeyPath:v11 options:v8];

  return v12;
}

+ (id)queryForType:(id)a3 withIdentifiers:(id)a4 identifierKeyPath:(id)a5 options:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [PHObject uuidFromLocalIdentifier:*(*(&v25 + 1) + 8 * i)];
        if (v19)
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  v20 = MEMORY[0x1E695E0F0];
  if (v13)
  {
    v20 = v13;
  }

  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN (%@)", v11, v20, v25];
  v22 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v12 object:0];
  v23 = [PHQuery queryForType:v9 withBasePredicate:v21 inLibrary:v22];

  [v23 setFetchOptions:v12];

  return v23;
}

+ (id)queryForAssetsWithMediaType:(int64_t)a3 options:(id)a4
{
  v5 = a4;
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v5 object:0];
  if (a3 >= 4)
  {
    v7 = 3;
  }

  else
  {
    v7 = (0x2000100000003uLL >> (16 * a3)) & 3;
  }

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %d", v7];
  v9 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v8 inLibrary:v6];

  if (!v5 || ![v5 includeAssetSourceTypes])
  {
    v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v5 photoLibrary:v6];

    [v10 setIncludeAssetSourceTypes:1];
    v5 = v10;
  }

  [v9 setFetchOptions:v5];

  return v9;
}

+ (id)queryForCustomUserAssetsInMemory:(id)a3 options:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ([v8 assetCollectionType] != 4)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:2021 description:@"Fetching for user curated assets is only supported in a memory"];
  }

  v9 = MEMORY[0x1E696AE18];
  v10 = [v8 objectID];
  v11 = [v9 predicateWithFormat:@"%K CONTAINS %@", @"memoriesBeingCustomUserAssets", v10];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:v8];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  [v13 _setContainerCollection:v8];
  [v13 setFetchOptions:v7];

  return v13;
}

+ (id)queryForUserCuratedAssetsInMemory:(id)a3 options:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ([v8 assetCollectionType] != 4)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:2008 description:@"Fetching for user curated assets is only supported in a memory"];
  }

  v9 = MEMORY[0x1E696AE18];
  v10 = [v8 objectID];
  v11 = [v9 predicateWithFormat:@"memoriesBeingUserCuratedAssets CONTAINS %@", v10];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:v8];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  v14 = [a1 _fetchOptionsForFetchingAssetsFromAssetCollection:v8 options:v7 changeDetectionCriteria:0];

  [v13 _setContainerCollection:v8];
  [v13 setFetchOptions:v14];

  return v13;
}

+ (id)queryForMovieCuratedAssetsInMemory:(id)a3 options:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ([v8 assetCollectionType] != 4)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:1994 description:@"Fetching for movie curated assets is only supported in a memory"];
  }

  v9 = MEMORY[0x1E696AE18];
  v10 = [v8 objectID];
  v11 = [v9 predicateWithFormat:@"memoriesBeingMovieCuratedAssets CONTAINS %@", v10];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:v8];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  v14 = [a1 _fetchOptionsForFetchingAssetsFromAssetCollection:v8 options:v7 changeDetectionCriteria:0];

  [v13 _setContainerCollection:v8];
  [v13 setFetchOptions:v14];

  return v13;
}

+ (id)queryForAssetsInAssetCollection:(id)a3 options:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:v6];
  if ([v6 assetCollectionType] == 3)
  {
    v9 = MEMORY[0x1E696AE18];
    v10 = [v6 objectID];
    v11 = [v9 predicateWithFormat:@"moment = %@", v10];

    v12 = PHQueryForAssetsInMoment;
LABEL_12:
    v17 = _Block_copy(v12);
LABEL_13:
    v18 = v17;
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  if ([v6 assetCollectionType] == 7)
  {
    v13 = MEMORY[0x1E696AE18];
    v14 = [v6 objectID];
    v11 = [v13 predicateWithFormat:@"momentShare = %@", v14];

    v12 = PHQueryForAssetsInMomentShare;
    goto LABEL_12;
  }

  if ([v6 assetCollectionType] == 12 || objc_msgSend(v6, "assetCollectionType") == 1 && objc_msgSend(v6, "assetCollectionSubtype") == 101 && (objc_msgSend(MEMORY[0x1E69BF2F0], "clientIsAllowedToFetchCollectionShares") & 1) == 0)
  {
    v15 = MEMORY[0x1E696AE18];
    v16 = [v6 objectID];
    v11 = [v15 predicateWithFormat:@"collectionShare = %@", v16];

    v12 = PHQueryForAssetsInCollectionShare;
    goto LABEL_12;
  }

  if ([v6 assetCollectionType] == 4)
  {
    v11 = [v6 predicateForAllAssetsWithLibrary:v8];
    v12 = PHQueryForAssetsInMemory;
    goto LABEL_12;
  }

  if ([v6 assetCollectionType] == 2)
  {
    v24 = [v6 plAlbumKind];
    if (v24 == 1507)
    {
      v25 = [v6 userQuery];
      v19 = objc_alloc_init(MEMORY[0x1E69BE700]);
      v26 = MEMORY[0x1E69BE708];
      v27 = [v6 photoLibrary];
      v28 = [v27 photoLibrary];
      v11 = [v26 predicateForQuery:v25 inLibrary:v28 changeDetectionCriteria:v19];

      v18 = _Block_copy(PHQueryForAssetsInUserSmartAlbum);
    }

    else
    {
      v29 = v24;
      v11 = [MEMORY[0x1E69BE430] predicateForAlbumKind:v24 includeGuest:{objc_msgSend(v7, "includeGuestAssets")}];
      v18 = [a1 identificationBlockForSmartAlbumKind:v29];
      if ([v7 hasAnySortDescriptors])
      {
        goto LABEL_14;
      }

      v30 = [v6 photoLibrary];
      v31 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v7 photoLibrary:v30];

      v32 = [MEMORY[0x1E69BE430] sortDescriptorsForAlbumKind:v29];
      [v31 setInternalSortDescriptors:v32];

      v19 = 0;
      v7 = v31;
    }
  }

  else
  {
    if ([v6 assetCollectionType] == 6 && objc_msgSend(v6, "isSharingSuggestion"))
    {
      v11 = _predicateForAssetsInSharedLibrarySharingSuggestionWithOptions(v6);
      v12 = PHQueryForAssetsInSharedLibrarySuggestion;
      goto LABEL_12;
    }

    if ([v6 assetCollectionType] == 6)
    {
      v11 = _predicateForAssetsInPhotosHighlightWithOptions(v6, v7);
      v12 = PHQueryForAssetsInPhotosHighlight;
      goto LABEL_12;
    }

    if ([v6 assetCollectionType] == 8)
    {
      v11 = [v6 predicateForAllAssets];
      v12 = PHQueryForAssetsInSuggestion;
      goto LABEL_12;
    }

    if ([v6 assetCollectionType] == 9)
    {
      v33 = MEMORY[0x1E696AE18];
      v34 = [v6 objectID];
      v11 = [v33 predicateWithFormat:@"%K = %@", @"importSession", v34];

      v12 = PHQueryForAssetsInImportSession;
      goto LABEL_12;
    }

    if ([v6 assetCollectionType] == 13)
    {
      v35 = MEMORY[0x1E696AE18];
      v36 = [v6 objectID];
      v11 = [v35 predicateWithFormat:@"%K = %@", @"conversation", v36];

      v12 = PHQueryForAssetsInConversation;
      goto LABEL_12;
    }

    if ([v6 assetCollectionSubtype] != 1000000601 || objc_msgSend(v7, "sharingFilter") == 2)
    {
      if (v6)
      {
        v37 = MEMORY[0x1E696AE18];
        v38 = [v6 objectID];
        v11 = [v37 predicateWithFormat:@"albums CONTAINS %@", v38];

        v17 = [a1 identificationBlockForAlbumSortKey:{objc_msgSend(v6, "customSortKey")}];
        goto LABEL_13;
      }

      v39 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v41 = "+[PHQuery queryForAssetsInAssetCollection:options:]";
        _os_log_impl(&dword_19C86F000, v39, OS_LOG_TYPE_ERROR, "nil assetCollection passed to %s", buf, 0xCu);
      }
    }

    v11 = [MEMORY[0x1E696AE18] predicateWithValue:0];
    v19 = 0;
    v18 = 0;
  }

LABEL_15:
  v20 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v8];
  v21 = [a1 _fetchOptionsForFetchingAssetsFromAssetCollection:v6 options:v7 changeDetectionCriteria:v19];

  [v20 _setContainerCollection:v6];
  if (!v18)
  {
    v22 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = v6;
      v42 = 2112;
      v43 = v21;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Missing identification block for asset collection: %@ with options: %@", buf, 0x16u);
    }
  }

  [v20 _setIdentificationBlock:v18];
  if (v21)
  {
    [v20 setFetchOptions:v21];
  }

  return v20;
}

+ (id)queryForAssetsInConversations:(id)a3 options:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v20 + 1) + 8 * i) objectID];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"importSessionID", v8, v20];
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:0];
  v17 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v15 inLibrary:v16];
  v18 = [a1 _fetchOptionsForFetchingAssetsFromImportSessions:v8 options:v7];

  [v17 _setContainerCollection:0];
  [v17 setFetchOptions:v18];

  return v17;
}

+ (id)queryForAssetsInImportSessions:(id)a3 options:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v20 + 1) + 8 * i) objectID];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"importSession IN %@", v8];
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:0];
  v17 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v15 inLibrary:v16];
  v18 = [a1 _fetchOptionsForFetchingAssetsFromImportSessions:v9 options:v7];

  [v17 _setContainerCollection:0];
  [v17 setFetchOptions:v18];

  return v17;
}

+ (id)_guestAssetOnlyPredicate
{
  v2 = MEMORY[0x1E69BF328];
  v3 = [MEMORY[0x1E69BF328] maskForGuestAsset];

  return [v2 predicateForIncludeMask:v3 useIndex:1];
}

+ (id)queryForAssetsInBoundingBoxWithTopLeftLocation:(id)a3 bottomRightLocation:(id)a4 options:(id)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 expressionForKeyPath:@"boundedByRect"];
  v12 = MEMORY[0x1E696ABC8];
  v19[0] = v10;
  v19[1] = v9;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v14 = [v12 expressionForConstantValue:v13];

  v15 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v11 rightExpression:v14 modifier:0 type:2000 options:0];
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v8 object:0];
  v17 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v15 inLibrary:v16];

  [v17 setFetchOptions:v8];

  return v17;
}

+ (id)queryForCollageAssetsInDayHighlight:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 kind])
  {
    v7 = 0;
  }

  else
  {
    v8 = +[PHPhotosHighlight collageAssetsInverseRelationshipPredicateForDayHighlight:forHighlightFilter:](PHPhotosHighlight, "collageAssetsInverseRelationshipPredicateForDayHighlight:forHighlightFilter:", v5, [v6 sharingFilter]);
    v9 = [v5 photoLibrary];
    v7 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v8 inLibrary:v9];

    [v6 setUseNoIndexOnSharingFilter:1];
    [v7 _setContainerCollection:v5];
    [v7 setFetchOptions:v6];
  }

  return v7;
}

+ (id)queryForKeyAssetInPhotosHighlight:(id)a3 options:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ([v8 assetCollectionType] != 6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:1824 description:@"Expected input collection to be a PhotosHighlight"];
  }

  v9 = +[PHPhotosHighlight keyAssetInverseRelationshipPredicateForHighlight:forHighlightFilter:](PHPhotosHighlight, "keyAssetInverseRelationshipPredicateForHighlight:forHighlightFilter:", v8, [v7 sharingFilter]);
  v10 = [v8 photoLibrary];
  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 inLibrary:v10];
  v12 = [a1 _fetchOptionsForFetchingAssetsFromAssetCollection:v8 options:v7 changeDetectionCriteria:0];

  [v12 setSortDescriptors:0];
  [v12 setInternalSortDescriptors:0];
  [v11 _setContainerCollection:v8];

  [v11 setFetchOptions:v12];

  return v11;
}

+ (id)queryForCuratedAssetsInMomentShare:(id)a3 options:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 preview];
  v8 = [v7 curatedAssetIdentifiers];
  if ([v8 count])
  {
    v9 = [v5 photoLibrary];
    v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v9];

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@ OR cloudAssetGUID IN %@", v8, v8];
    [v10 setInternalPredicate:v11];
    v12 = [PHQuery queryForAssetsInAssetCollection:v5 options:v10];

    v6 = v10;
  }

  else
  {
    v13 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "+[PHQuery queryForCuratedAssetsInMomentShare:options:]";
      v17 = 2048;
      v18 = v5;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "%s no curated assets in momentShare %p", buf, 0x16u);
    }

    v12 = [PHQuery queryForAssetsWithObjectIDs:0 options:v6];
  }

  return v12;
}

+ (id)queryForCuratedAssetsInPhotosHighlight:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _predicateForAssetsInPhotosHighlightWithOptions(v6, v7);
  if (v8)
  {
    v9 = [v6 photoLibrary];
    v10 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v8 inLibrary:v9];
    v11 = [a1 _fetchOptionsForFetchingAssetsFromAssetCollection:v6 options:v7 changeDetectionCriteria:0];

    [v10 _setContainerCollection:v6];
    [v10 setFetchOptions:v11];

    v7 = v11;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)queryForRepresentativeAssetsInMemory:(id)a3 options:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ([v8 assetCollectionType] != 4)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:1777 description:@"Fetching for representative assets is only supported in a memory"];
  }

  v9 = MEMORY[0x1E696AE18];
  v10 = [v8 objectID];
  v11 = [v9 predicateWithFormat:@"memoriesBeingRepresentativeAssets CONTAINS %@", v10];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:v8];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  v14 = [a1 _fetchOptionsForFetchingAssetsFromAssetCollection:v8 options:v7 changeDetectionCriteria:0];

  [v13 _setContainerCollection:v8];
  [v13 setFetchOptions:v14];

  return v13;
}

+ (id)queryForRepresentativeAssetsInSuggestion:(id)a3 options:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ([v8 assetCollectionType] != 8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:1763 description:@"Fetching for representative assets by suggestionsBeingRepresentativeAssets is only supported in a suggestion"];
  }

  v9 = MEMORY[0x1E696AE18];
  v10 = [v8 objectID];
  v11 = [v9 predicateWithFormat:@"suggestionsBeingRepresentativeAssets CONTAINS %@", v10];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:v8];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  v14 = [a1 _fetchOptionsForFetchingAssetsFromAssetCollection:v8 options:v7 changeDetectionCriteria:0];

  [v13 _setContainerCollection:v8];
  [v13 setFetchOptions:v14];

  return v13;
}

+ (id)queryForKeyAssetsInSuggestion:(id)a3 options:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ([v8 assetCollectionType] != 8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:1749 description:@"Fetching for key assets by suggestionsBeingKeyAssets is only supported in a suggestion"];
  }

  v9 = MEMORY[0x1E696AE18];
  v10 = [v8 objectID];
  v11 = [v9 predicateWithFormat:@"suggestionsBeingKeyAssets CONTAINS %@", v10];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:v8];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  v14 = [a1 _fetchOptionsForFetchingAssetsFromAssetCollection:v8 options:v7 changeDetectionCriteria:0];

  [v13 _setContainerCollection:v8];
  [v13 setFetchOptions:v14];

  return v13;
}

+ (id)queryForAssetsAssociatedWithMomentsOfMemory:(id)a3 options:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ([v8 assetCollectionType] != 4)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:1737 description:@"queryForAssetsAssociatedWithMomentsOfMemory is only supported for a memory"];
  }

  v9 = [v8 predicateForAssetsContainedInMomentsFromRepresentativeAssets];
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:v8];
  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 inLibrary:v10];

  v12 = [a1 _fetchOptionsForFetchingAssetsFromAssetCollection:v8 options:v7 changeDetectionCriteria:0];

  [v11 _setContainerCollection:v8];
  [v11 setFetchOptions:v12];

  return v11;
}

+ (id)queryForAllAssetsAssociatedWithMemory:(id)a3 options:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ([v8 assetCollectionType] != 4)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:1725 description:@"Fetching for all associated assets for a memory is only supported for a memory"];
  }

  v9 = [v8 objectID];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K CONTAINS %@ OR %K CONTAINS %@", @"memoriesBeingExtendedCuratedAssets", v9, @"memoriesBeingRepresentativeAssets", v9];
  v11 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:v8];
  v12 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v10 inLibrary:v11];

  v13 = [a1 _fetchOptionsForFetchingAssetsFromAssetCollection:v8 options:v7 changeDetectionCriteria:0];

  [v12 _setContainerCollection:v8];
  [v12 setFetchOptions:v13];

  return v12;
}

+ (id)queryForKeyAssetInMemory:(id)a3 options:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ([v8 assetCollectionType] != 4)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:1712 description:@"Fetching for curated assets is only supported in a memory"];
  }

  v9 = MEMORY[0x1E696AE18];
  v10 = [v8 objectID];
  v11 = [v9 predicateWithFormat:@"memoriesBeingKeyAsset CONTAINS %@", v10];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v7 object:v8];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  v14 = [a1 _fetchOptionsForFetchingAssetsFromAssetCollection:v8 options:v7 changeDetectionCriteria:0];

  [v13 _setContainerCollection:v8];
  [v13 setFetchOptions:v14];

  return v13;
}

+ (id)queryForExtendedCuratedAssetsInMemory:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 assetCollectionType] != 4)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:1692 description:@"Fetching for curated assets is only supported in a memory"];
  }

  if ([v7 isTransient])
  {
    v9 = [v7 queryForExtendedCuratedAssetsWithOptions:v8];
  }

  else
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = [v7 objectID];
    v12 = [v10 predicateWithFormat:@"memoriesBeingExtendedCuratedAssets CONTAINS %@", v11];

    v13 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v8 object:v7];
    v9 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v12 inLibrary:v13];

    v14 = [a1 _fetchOptionsForFetchingAssetsFromAssetCollection:v7 options:v8 changeDetectionCriteria:0];

    [v9 _setContainerCollection:v7];
    [v9 setFetchOptions:v14];

    v8 = v14;
  }

  return v9;
}

+ (id)queryForCuratedAssetsInMemory:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 assetCollectionType] != 4)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:1672 description:@"Fetching for curated assets is only supported in a memory"];
  }

  if ([v7 isTransient])
  {
    v9 = [v7 queryForCuratedAssetsWithOptions:v8];
  }

  else
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = [v7 objectID];
    v12 = [v10 predicateWithFormat:@"memoriesBeingCuratedAssets CONTAINS %@", v11];

    v13 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v8 object:v7];
    v9 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v12 inLibrary:v13];

    v14 = [a1 _fetchOptionsForFetchingAssetsFromAssetCollection:v7 options:v8 changeDetectionCriteria:0];

    [v9 _setContainerCollection:v7];
    [v9 setFetchOptions:v14];

    v8 = v14;
  }

  return v9;
}

+ (id)queryForMemoriesWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a1 queryForType:@"PHMemory" withLocalIdentifiers:a3 options:v6];
  [v7 setFetchOptions:v6];

  return v7;
}

+ (id)_assetIDsFromAssets:(id)a3 anyAsset:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 fetchedObjectIDs];
  }

  else
  {
    v6 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && !v6)
  {
    v7 = [v5 objectIDs];
    v6 = [v7 array];
  }

  if (v6)
  {
    if (a4)
    {
      memset(v19, 0, sizeof(v19));
      if ([v5 countByEnumeratingWithState:v19 objects:v24 count:16])
      {
        *a4 = **(&v19[0] + 1);
      }
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 objectID];

          if (v15)
          {
            v16 = [v14 objectID];
            [v6 addObject:v16];

            if (!((a4 == 0) | v11 & 1))
            {
              v17 = v14;
              *a4 = v14;
              v11 = 1;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }
  }

  return v6;
}

+ (id)_fetchOptionsForFetchingAssetsFromAssetCollection:(id)a3 options:(id)a4 changeDetectionCriteria:(id)a5
{
  v41[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 photoLibrary];
  if (v12)
  {
    goto LABEL_2;
  }

  v13 = [v10 photoLibrary];

  if (!v13)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PHQuery.m" lineNumber:1564 description:{@"Invalid parameter not satisfying: %@", @"assetCollection.photoLibrary || options.photoLibrary"}];
LABEL_2:
  }

  if ([v9 assetCollectionType] == 1)
  {
    if ([v9 assetCollectionSubtype] == 100)
    {
      v14 = [v9 photoLibrary];
      v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v10 photoLibrary:v14];

      if (([v15 hasAnySortDescriptors] & 1) == 0)
      {
        v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
        v41[0] = v16;
        v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortToken" ascending:1];
        v41[1] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];

        [v15 setInternalSortDescriptors:v18];
      }

      [v15 setIncludeDuplicateAssets:1];
      goto LABEL_38;
    }

LABEL_37:
    v15 = v10;
    goto LABEL_38;
  }

  if ([v9 assetCollectionType] == 2)
  {
    if ([v9 assetCollectionSubtype] == 205)
    {
      v19 = [v9 photoLibrary];
      v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v10 photoLibrary:v19];

      [v15 setIncludeHiddenAssets:1];
      goto LABEL_38;
    }

    if ([v9 assetCollectionSubtype] == 1000000201)
    {
      v21 = [v9 photoLibrary];
      v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v10 photoLibrary:v21];

      [v15 setIncludeHiddenAssets:1];
LABEL_17:
      [v15 setIncludeTrashedAssets:1];
      goto LABEL_38;
    }

    if ([v9 assetCollectionSubtype] != 1000000204)
    {
      if ([v9 assetCollectionSubtype] == 1000000219)
      {
        v27 = [v9 photoLibrary];
        v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v10 photoLibrary:v27];

        [v15 setIsExclusivePredicate:1];
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v25 = [v9 userQuery];
    v26 = [v9 photoLibrary];
    v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v10 photoLibrary:v26];

    [v15 setIncludeHiddenAssets:{objc_msgSend(MEMORY[0x1E69BE708], "includesHiddenAssetsKeyInQuery:", v25)}];
    goto LABEL_25;
  }

  if ([v9 assetCollectionType] == 12)
  {
    v20 = [v9 photoLibrary];
    v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v10 photoLibrary:v20];

    [v15 setIncludeCollectionShareAssets:1];
    goto LABEL_38;
  }

  if ([v9 assetCollectionType] != 4 && objc_msgSend(v9, "assetCollectionType") != 7 && objc_msgSend(v9, "assetCollectionType") != 8)
  {
    if ([v9 assetCollectionType] == 9)
    {
      v28 = [v9 photoLibrary];
      v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v10 photoLibrary:v28];

      if ([v15 hasAnySortDescriptors])
      {
        goto LABEL_38;
      }

      v29 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
      v39 = v29;
      v30 = MEMORY[0x1E695DEC8];
      v31 = &v39;
    }

    else
    {
      if ([v9 assetCollectionType] == 3)
      {
        v32 = [v9 photoLibrary];
        v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v10 photoLibrary:v32];

        goto LABEL_17;
      }

      if ([v9 assetCollectionType] != 6)
      {
        goto LABEL_37;
      }

      v33 = [v9 photoLibrary];
      v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v10 photoLibrary:v33];

      if ([v15 hasAnySortDescriptors])
      {
        goto LABEL_38;
      }

      v29 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
      v38 = v29;
      v30 = MEMORY[0x1E695DEC8];
      v31 = &v38;
    }

    v25 = [v30 arrayWithObjects:v31 count:1];

    [v15 setInternalSortDescriptors:v25];
LABEL_25:

    goto LABEL_38;
  }

  v22 = [v9 photoLibrary];
  v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v10 photoLibrary:v22];

  if (([v15 hasAnySortDescriptors] & 1) == 0)
  {
    v23 = [(PHObject *)PHAsset internalSortDescriptorForPropertyKey:@"creationDate" ascending:1];
    v40 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
    [v15 setInternalSortDescriptors:v24];
  }

LABEL_38:
  if (v11)
  {
    v34 = [[PHQueryChangeDetectionCriteria alloc] initWithPLQueryChangeDetectionCriteria:v11];
    if (v34)
    {
      v35 = [v9 photoLibrary];
      v36 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v15 photoLibrary:v35];

      [v36 setChangeDetectionCriteria:v34];
      v15 = v36;
    }
  }

  return v15;
}

+ (id)_fetchOptionsForFetchingAssetsFromImportSessions:(id)a3 options:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 firstObject];
  v7 = [v6 photoLibrary];
  v8 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v5 photoLibrary:v7];

  if (([v8 hasAnySortDescriptors] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

    [v8 setInternalSortDescriptors:v10];
  }

  return v8;
}

+ (BOOL)isToManySelfInPredicate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 leftExpression];
    v8 = [v7 expressionType] == 1 && objc_msgSend(v6, "predicateOperatorType") == 10 && objc_msgSend(v6, "comparisonPredicateModifier");
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)combinedFetchRequestForQueries:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 fetchType];
  v6 = [PHPhotoLibrary classForFetchType:v5];

  v7 = [(objc_class *)v6 managedEntityName];
  v8 = [v4 photoLibrary];
  v9 = [v8 managedObjectContextForCurrentQueueQoS];
  v40 = v7;
  v10 = PLSafeEntityForNameInManagedObjectContext();

  v11 = objc_opt_new();
  v39 = v10;
  [v11 setEntity:v10];
  v12 = [v4 combinedQueryKeyPath];
  v13 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = v3;
  v15 = [v14 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v41 + 1) + 8 * i) combinedQuerySeparatingIdentifier];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v16);
  }

  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN (%@)", v12, v13];
  v21 = [v4 effectivePredicateForPHClass:v6 includingBasePredicate:0];
  v22 = v21;
  if (v21)
  {
    v23 = MEMORY[0x1E696AB28];
    v38 = v20;
    v47[0] = v20;
    v47[1] = v21;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    v25 = [v23 andPredicateWithSubpredicates:v24];

    v37 = v25;
    [v11 setPredicate:v25];
    [v11 setIncludesPendingChanges:0];
    [v11 setResultType:2];
    v26 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v26 setName:@"objectID"];
    v27 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
    [v26 setExpression:v27];

    [v26 setExpressionResultType:2000];
    v28 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v28 setName:v12];
    v29 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v12];
    [v28 setExpression:v29];

    [v28 setExpressionResultType:2000];
    v46[0] = v26;
    v46[1] = v28;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    [v11 setPropertiesToFetch:v30];

    v31 = [v4 _effectiveSortDescriptors];
    [v11 setSortDescriptors:v31];
    if ([v4 _isAlbumContentSort] && objc_msgSend(v4, "_isAlbumContentTitleSort"))
    {
      v32 = [v11 relationshipKeyPathsForPrefetching];
      if (([v32 containsObject:@"additionalAttributes.title"] & 1) == 0)
      {
        v36 = v32;
        if ([v32 count])
        {
          [v32 arrayByAddingObject:@"additionalAttributes.title"];
        }

        else
        {
          v45 = @"additionalAttributes.title";
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
        }
        v34 = ;
        [v11 setRelationshipKeyPathsForPrefetching:v34];

        v32 = v36;
      }
    }

    v33 = v11;

    v20 = v38;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

+ (unsigned)_excludeMaskForUserLibraryWithFetchOptions:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 includeAssetSourceTypes];
  }

  else
  {
    v5 = 0;
  }

  v6 = (v5 & 2) == 0 && v5 != 0;
  v7 = (v5 & 4) == 0 && v5 != 0;
  if (v4)
  {
    v8 = [v4 includeGuestAssets] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  BYTE2(v12) = v7;
  BYTE1(v12) = ((v5 & 0x100) == 0) & ~[v4 includeCollectionShareAssets];
  LOBYTE(v12) = 1;
  HIBYTE(v11) = (v5 & 0x40) == 0;
  BYTE6(v11) = v8;
  BYTE5(v11) = (v5 & 0x10) == 0;
  BYTE4(v11) = 0;
  LODWORD(v11) = 16842752;
  v9 = [MEMORY[0x1E69BF328] validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:v6 cameraConnectionKit:0 cloudPhotoLibrary:v11 wallpaper_UNUSED:v12 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
  if (v5 && (v5 & 1) == 0)
  {
    v9 |= [MEMORY[0x1E69BF328] maskForUserLibrary];
  }

  return v9;
}

+ (BOOL)_isKindOfMomentOrAlbumEntity:(id)a3
{
  v3 = a3;
  if (_isKindOfMomentOrAlbumEntity__onceToken != -1)
  {
    dispatch_once(&_isKindOfMomentOrAlbumEntity__onceToken, &__block_literal_global_37224);
  }

  if ([v3 isKindOfEntity:_isKindOfMomentOrAlbumEntity__momentEntity])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isKindOfEntity:_isKindOfMomentOrAlbumEntity__albumEntity];
  }

  return v4;
}

void __40__PHQuery__isKindOfMomentOrAlbumEntity___block_invoke()
{
  v0 = [MEMORY[0x1E69BE578] managedObjectModel];
  v7 = [v0 entitiesByName];

  v1 = [MEMORY[0x1E69BE5C0] entityName];
  v2 = [v7 objectForKeyedSubscript:v1];
  v3 = _isKindOfMomentOrAlbumEntity__momentEntity;
  _isKindOfMomentOrAlbumEntity__momentEntity = v2;

  v4 = [MEMORY[0x1E69BE530] entityName];
  v5 = [v7 objectForKeyedSubscript:v4];
  v6 = _isKindOfMomentOrAlbumEntity__albumEntity;
  _isKindOfMomentOrAlbumEntity__albumEntity = v5;
}

+ (id)_filterPredicateFromFetchOptionsPredicate:(id)a3 options:(id)a4 phClass:(Class)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = v10;
    v12 = [v10 subpredicates];
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [a1 _filterPredicateFromFetchOptionsPredicate:*(*(&v26 + 1) + 8 * i) options:v9 phClass:a5];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v14);
    }

    v18 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(v25 subpredicates:{"compoundPredicateType"), v11}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    v18 = [(objc_class *)a5 fetchPredicateFromComparisonPredicate:v8 options:v9];
  }

  if (!v18)
  {
LABEL_16:
    v30 = @"predicate";
    v31 = v8;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v21 = MEMORY[0x1E696AEC0];
    v22 = [v8 predicateFormat];
    v23 = [v21 stringWithFormat:@"Unsupported predicate in fetch options: %@", v22];

    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:v20];
    objc_exception_throw(v24);
  }

  return v18;
}

+ (id)_containerIdentifierForFetchType:(id)a3 predicate:(id)a4 outRelationship:(id *)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    v10 = 0;
    goto LABEL_9;
  }

  v9 = [v8 leftExpression];
  if ([v9 expressionType] != 3)
  {
    v16 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v10 = [v9 keyPath];

  if (!v10)
  {
    v16 = 0;
LABEL_9:
    v19 = 0;
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = [(objc_class *)[PHPhotoLibrary classForFetchType:?]];
  v12 = [MEMORY[0x1E69BE578] managedObjectModel];
  v13 = [v12 entitiesByName];
  v14 = [v13 objectForKey:v11];

  v15 = [v14 relationshipsByName];
  v16 = [v15 objectForKey:v10];

  if (!v16)
  {
    goto LABEL_9;
  }

  v9 = [v8 rightExpression];
  if (![v9 expressionType])
  {
    v17 = [v9 constantValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = [v9 constantValue];
      goto LABEL_16;
    }
  }

LABEL_15:
  v19 = 0;
LABEL_16:

  if (a5)
  {
LABEL_10:
    v20 = v16;
    *a5 = v16;
  }

LABEL_11:

  return v19;
}

+ (id)_transformedSortDescriptors:(id)a3 forFetchType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 mutableCopy];
  v8 = [PHPhotoLibrary classForFetchType:v5];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PHQuery__transformedSortDescriptors_forFetchType___block_invoke;
  v11[3] = &unk_1E75A8C60;
  v13 = v8;
  v9 = v7;
  v12 = v9;
  [v6 enumerateObjectsUsingBlock:v11];

  return v9;
}

void __52__PHQuery__transformedSortDescriptors_forFetchType___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14 = a2;
  v5 = [v14 key];
  v6 = [*(a1 + 40) entityKeyForPropertyKey:v5];
  if (!v6)
  {
    v15 = @"sortDescriptor";
    v16[0] = v14;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v14 description];
    v12 = [v10 stringWithFormat:@"Unsupported sort descriptor in fetch options: %@", v11];

    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:v9];
    objc_exception_throw(v13);
  }

  v7 = v6;
  if (([v6 isEqualToString:v5] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v7 ascending:{objc_msgSend(v14, "ascending")}];
    [*(a1 + 32) replaceObjectAtIndex:a3 withObject:v8];
  }
}

+ (id)defaultSortDescriptorForFetchType:(id)a3 predicate:(id)a4 ascending:(BOOL)a5
{
  v5 = a5;
  v6 = [a1 _relationshipForFetchType:a3 predicate:a4];
  v7 = [v6 inverseRelationship];
  v8 = v7;
  if (v7 && [v7 isToMany] && objc_msgSend(v8, "isOrdered"))
  {
    v9 = MEMORY[0x1E696AEB0];
    v10 = [v6 name];
    v11 = [v9 sortDescriptorWithKey:v10 ascending:v5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_relationshipForFetchType:(id)a3 predicate:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v7 = [v6 leftExpression];
  if ([v7 expressionType] == 3)
  {
    v8 = [v7 keyPath];
    goto LABEL_4;
  }

  if ([v7 expressionType] == 4)
  {
    v9 = [v7 function];
    v11 = [v9 lowercaseString];
    if (![v11 isEqualToString:@"noindex:"])
    {
      v8 = 0;
      v13 = 0;
      goto LABEL_15;
    }

    v14 = [v7 arguments];
    v15 = [v14 count];

    if (v15 == 1)
    {
      v16 = [v7 arguments];
      v17 = [v16 firstObject];

      if ([v17 expressionType] == 3)
      {
        v8 = [v17 keyPath];
      }

      else
      {
        v8 = 0;
      }

LABEL_4:
      if (v8)
      {
        v7 = [(objc_class *)[PHPhotoLibrary classForFetchType:?]];
        v9 = [MEMORY[0x1E69BE578] managedObjectModel];
        v10 = [v9 entitiesByName];
        v11 = [v10 objectForKey:v7];

        v12 = [v11 relationshipsByName];
        v13 = [v12 objectForKey:v8];

LABEL_15:
        goto LABEL_16;
      }

LABEL_7:
      v13 = 0;
      goto LABEL_17;
    }
  }

  v8 = 0;
  v13 = 0;
LABEL_16:

LABEL_17:

  return v13;
}

+ (id)queryForType:(id)a3 withBasePredicate:(id)a4 seedOIDs:(id)a5 inLibrary:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initForType:v13 withBasePredicate:v12 seedOIDs:v11 inLibrary:v10];

  return v14;
}

+ (id)queryForType:(id)a3 withBasePredicate:(id)a4 inLibrary:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initForType:v10 withBasePredicate:v9 inLibrary:v8];

  return v11;
}

@end