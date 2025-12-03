@interface PHQuery
+ (BOOL)_isKindOfMomentOrAlbumEntity:(id)entity;
+ (BOOL)_validateLocalIdentifiers:(id)identifiers compatibilityWithFetchType:(id)type;
+ (BOOL)isToManySelfInPredicate:(id)predicate;
+ (id)_assetIDsFromAssets:(id)assets anyAsset:(id *)asset;
+ (id)_containerIdentifierForFetchType:(id)type predicate:(id)predicate outRelationship:(id *)relationship;
+ (id)_defaultFetchOptionsForIdentifiedAssetsQueryInPhotoLibrary:(id)library;
+ (id)_fetchOptionsForFetchingAssetsFromAssetCollection:(id)collection options:(id)options changeDetectionCriteria:(id)criteria;
+ (id)_fetchOptionsForFetchingAssetsFromImportSessions:(id)sessions options:(id)options;
+ (id)_filterPredicateFromFetchOptionsPredicate:(id)predicate options:(id)options phClass:(Class)class;
+ (id)_guestAssetOnlyPredicate;
+ (id)_queryForAssetResourceUploadJobsWithOptions:(id)options configuration:(id)configuration predicate:(id)predicate;
+ (id)_queryForAssetsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)_queryForPersonsInAssetsWithObjectIDs:(id)ds withOptions:(id)options;
+ (id)_queryForPersonsWithFaceRelationshipPredicate:(id)predicate options:(id)options;
+ (id)_queryForRootCollectionListWithRootFolder:(id)folder options:(id)options;
+ (id)_relationshipForFetchType:(id)type predicate:(id)predicate;
+ (id)_transformedSortDescriptors:(id)descriptors forFetchType:(id)type;
+ (id)combinedFetchRequestForQueries:(id)queries;
+ (id)defaultSortDescriptorForFetchType:(id)type predicate:(id)predicate ascending:(BOOL)ascending;
+ (id)fetchRootFolderIDForAlbumKind:(int)kind photoLibrary:(id)library;
+ (id)identificationBlockForAlbumSortKey:(unsigned int)key;
+ (id)identificationBlockForAssetCollectionType:(int64_t)type;
+ (id)identificationBlockForSmartAlbumKind:(int)kind;
+ (id)queryForAcknowledgeableAssetResourceUploadJobsWithConfiguration:(id)configuration options:(id)options;
+ (id)queryForActiveLibraryScopeWithOptions:(id)options;
+ (id)queryForAllAssetsAssociatedWithMemory:(id)memory options:(id)options;
+ (id)queryForAllAssetsInYearRepresentedByYearHighlight:(id)highlight options:(id)options;
+ (id)queryForAllTripHighlightsContainingAssetUUIDs:(id)ds options:(id)options;
+ (id)queryForAnsweredQuestionsWithOptions:(id)options;
+ (id)queryForAnsweredYesOrNoQuestionsWithOptions:(id)options;
+ (id)queryForAnyCinematicVideosNeedingDeferredProcessingWithOtions:(id)otions;
+ (id)queryForAssetCollectionsContainingAsset:(id)asset withType:(int64_t)type options:(id)options;
+ (id)queryForAssetCollectionsContainingAssets:(id)assets withType:(int64_t)type options:(id)options;
+ (id)queryForAssetCollectionsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForAssetCollectionsWithObjectIDs:(id)ds options:(id)options;
+ (id)queryForAssetCollectionsWithType:(int64_t)type localIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForAssetCollectionsWithType:(int64_t)type subtype:(int64_t)subtype options:(id)options;
+ (id)queryForAssetResourceUploadJobConfigurationsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForAssetResourceUploadJobConfigurationsWithOptions:(id)options;
+ (id)queryForAssetResourceUploadJobsWithConfiguration:(id)configuration states:(id)states options:(id)options;
+ (id)queryForAssetsAssociatedWithMomentsOfMemory:(id)memory options:(id)options;
+ (id)queryForAssetsCaptured:(BOOL)captured orEdited:(BOOL)edited onThisCameraSinceDate:(id)date options:(id)options;
+ (id)queryForAssetsForCloudFeedEntry:(id)entry options:(id)options;
+ (id)queryForAssetsForComment:(id)comment options:(id)options;
+ (id)queryForAssetsForFaceGroups:(id)groups options:(id)options;
+ (id)queryForAssetsForFaces:(id)faces options:(id)options;
+ (id)queryForAssetsForKeywords:(id)keywords options:(id)options;
+ (id)queryForAssetsForPTPWithOptions:(id)options;
+ (id)queryForAssetsForPersons:(id)persons options:(id)options;
+ (id)queryForAssetsFromCameraSinceDate:(id)date options:(id)options;
+ (id)queryForAssetsInAssetCollection:(id)collection options:(id)options;
+ (id)queryForAssetsInBoundingBoxWithTopLeftLocation:(id)location bottomRightLocation:(id)rightLocation options:(id)options;
+ (id)queryForAssetsInConversations:(id)conversations options:(id)options;
+ (id)queryForAssetsInImportSessions:(id)sessions options:(id)options;
+ (id)queryForAssetsInLibraryScope:(id)scope options:(id)options;
+ (id)queryForAssetsInPreviewStateInLibraryScope:(id)scope options:(id)options;
+ (id)queryForAssetsInPreviewStateWithSuggestedByClientTypes:(id)types options:(id)options;
+ (id)queryForAssetsInUtilityCollectionWithType:(unsigned __int16)type options:(id)options;
+ (id)queryForAssetsUsingSearchIndexLookupIdentifier:(id)identifier options:(id)options;
+ (id)queryForAssetsWithBurstIdentifier:(id)identifier options:(id)options;
+ (id)queryForAssetsWithCurrentUserAsLibraryScopeContributor:(BOOL)contributor inLibraryScope:(id)scope options:(id)options;
+ (id)queryForAssetsWithMediaType:(int64_t)type options:(id)options;
+ (id)queryForAssetsWithObjectIDs:(id)ds options:(id)options;
+ (id)queryForAssetsWithOptions:(id)options;
+ (id)queryForAssociatedPersonForFaceGroup:(id)group withOptions:(id)options;
+ (id)queryForChildrenDayGroupHighlightsForPhotosHighlight:(id)highlight options:(id)options;
+ (id)queryForChildrenHighlightsForPhotosHighlight:(id)highlight options:(id)options;
+ (id)queryForCloudSharedAlbumInvitationRecordsForCloudSharedAlbum:(id)album options:(id)options;
+ (id)queryForCloudSharedAlbumInvitationRecordsWithOptions:(id)options;
+ (id)queryForCloudSharedAlbumsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForCollageAssetsInDayHighlight:(id)highlight options:(id)options;
+ (id)queryForCollectionListContainingCollection:(id)collection options:(id)options;
+ (id)queryForCollectionListsWithType:(int64_t)type localIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForCollectionListsWithType:(int64_t)type subtype:(int64_t)subtype options:(id)options;
+ (id)queryForCollectionsInCollectionList:(id)list options:(id)options;
+ (id)queryForCommentsForAsset:(id)asset options:(id)options;
+ (id)queryForCommentsForCloudFeedEntry:(id)entry options:(id)options;
+ (id)queryForCommentsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForContributorForComment:(id)comment options:(id)options;
+ (id)queryForConversationsWithOptions:(id)options;
+ (id)queryForCuratedAssetsInMemory:(id)memory options:(id)options;
+ (id)queryForCuratedAssetsInMomentShare:(id)share options:(id)options;
+ (id)queryForCuratedAssetsInPhotosHighlight:(id)highlight options:(id)options;
+ (id)queryForCurrentUserParticipantInShare:(id)share options:(id)options;
+ (id)queryForCustomUserAssetsInMemory:(id)memory options:(id)options;
+ (id)queryForEmptyFaceGroupsWithOptions:(id)options;
+ (id)queryForEntriesFromEarliestDate:(id)date latestDate:(id)latestDate filter:(int64_t)filter options:(id)options;
+ (id)queryForEntryWithLocalIdentifier:(id)identifier options:(id)options;
+ (id)queryForExtendedCuratedAssetsInMemory:(id)memory options:(id)options;
+ (id)queryForFaceCropsForPerson:(id)person options:(id)options;
+ (id)queryForFaceCropsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForFaceCropsWithOptions:(id)options;
+ (id)queryForFaceGroupsForPerson:(id)person options:(id)options;
+ (id)queryForFaceGroupsWithFace:(id)face options:(id)options;
+ (id)queryForFaceGroupsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForFaceGroupsWithOptions:(id)options;
+ (id)queryForFacesForPerson:(id)person options:(id)options;
+ (id)queryForFacesInAsset:(id)asset options:(id)options;
+ (id)queryForFacesInAssets:(id)assets options:(id)options;
+ (id)queryForFacesInFaceGroup:(id)group options:(id)options;
+ (id)queryForFacesOnAssetWithFace:(id)face options:(id)options;
+ (id)queryForFacesOnFaceCrop:(id)crop options:(id)options;
+ (id)queryForFacesWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForFacesWithOptions:(id)options;
+ (id)queryForFacesWithVuObservationIDs:(id)ds options:(id)options;
+ (id)queryForGuestAssetsInCollectionContainingAsset:(id)asset options:(id)options;
+ (id)queryForGuestAssetsWithOptions:(id)options;
+ (id)queryForImportSessionsWithOptions:(id)options;
+ (id)queryForInFlightJobCountWithConfiguration:(id)configuration options:(id)options;
+ (id)queryForInvalidMergeCandidatePersonsForPerson:(id)person options:(id)options;
+ (id)queryForKeyAssetForPerson:(id)person options:(id)options;
+ (id)queryForKeyAssetInMemory:(id)memory options:(id)options;
+ (id)queryForKeyAssetInPhotosHighlight:(id)highlight options:(id)options;
+ (id)queryForKeyAssetsInAssetCollection:(id)collection options:(id)options;
+ (id)queryForKeyAssetsInCollectionShare:(id)share options:(id)options;
+ (id)queryForKeyAssetsInMomentShare:(id)share options:(id)options;
+ (id)queryForKeyAssetsInSuggestion:(id)suggestion options:(id)options;
+ (id)queryForKeyFaceForFaceGroup:(id)group options:(id)options;
+ (id)queryForKeyFaceOnPerson:(id)person options:(id)options;
+ (id)queryForKeySharingSuggestionAssetsInHighlight:(id)highlight options:(id)options;
+ (id)queryForKeywordsForAsset:(id)asset options:(id)options;
+ (id)queryForKeywordsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForKeywordsWithOptions:(id)options;
+ (id)queryForKeywordsWithTitles:(id)titles options:(id)options;
+ (id)queryForLibraryScopesWithOptions:(id)options;
+ (id)queryForLikesForAsset:(id)asset options:(id)options;
+ (id)queryForLikesForCloudFeedEntry:(id)entry options:(id)options;
+ (id)queryForMemoriesWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForMergeCandidatePersonsForPerson:(id)person options:(id)options;
+ (id)queryForMergeCandidateWithConfidencePersonsForPerson:(id)person options:(id)options;
+ (id)queryForMomentListsWithSubType:(int64_t)type containingMoment:(id)moment;
+ (id)queryForMomentListsWithSubType:(int64_t)type options:(id)options;
+ (id)queryForMomentsBackingMemory:(id)memory;
+ (id)queryForMomentsBackingSuggestion:(id)suggestion;
+ (id)queryForMomentsContainingAssetsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForMomentsContainingAssetsWithOIDs:(id)ds options:(id)options;
+ (id)queryForMomentsForFacesWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForMomentsForPersonsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForMomentsInMomentList:(id)list options:(id)options;
+ (id)queryForMomentsInPhotosHighlight:(id)highlight;
+ (id)queryForMomentsWithOptions:(id)options;
+ (id)queryForMovieCuratedAssetsInMemory:(id)memory options:(id)options;
+ (id)queryForOwnerParticipantInShare:(id)share options:(id)options;
+ (id)queryForParentDayGroupHighlightForPhotosHighlight:(id)highlight options:(id)options;
+ (id)queryForParentHighlightForPhotosHighlight:(id)highlight options:(id)options;
+ (id)queryForParentHighlightsForPhotosHighlights:(id)highlights options:(id)options;
+ (id)queryForPendingLibraryScopeInvitationWithOptions:(id)options;
+ (id)queryForPersonForFaceCrop:(id)crop options:(id)options;
+ (id)queryForPersonWithFace:(id)face options:(id)options;
+ (id)queryForPersonWithShareParticipant:(id)participant options:(id)options;
+ (id)queryForPersonsInAsset:(id)asset options:(id)options;
+ (id)queryForPersonsInAssets:(id)assets withOptions:(id)options;
+ (id)queryForPersonsInAssetsFetchResult:(id)result withOptions:(id)options;
+ (id)queryForPersonsWithContactIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForPersonsWithFaces:(id)faces options:(id)options;
+ (id)queryForPersonsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForPersonsWithMdIDs:(id)ds options:(id)options;
+ (id)queryForPersonsWithNonNilUserFeedbackWithTypes:(id)types options:(id)options;
+ (id)queryForPersonsWithObjectIDs:(id)ds options:(id)options;
+ (id)queryForPersonsWithOptions:(id)options;
+ (id)queryForPersonsWithQuestionType:(unsigned __int16)type options:(id)options;
+ (id)queryForPersonsWithType:(int64_t)type options:(id)options;
+ (id)queryForPhotosHighlightsContainingMoments:(id)moments;
+ (id)queryForPreviewLibraryScopeWithOptions:(id)options;
+ (id)queryForProjectsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForQuestionsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForQuestionsWithOptions:(id)options;
+ (id)queryForQuestionsWithState:(unsigned __int16)state options:(id)options;
+ (id)queryForReferencedAssetsWithOptions:(id)options;
+ (id)queryForRejectedFacesOnPerson:(id)person options:(id)options;
+ (id)queryForRejectedPersonsForFace:(id)face options:(id)options;
+ (id)queryForRepresentativeAssetsInMemory:(id)memory options:(id)options;
+ (id)queryForRepresentativeAssetsInSuggestion:(id)suggestion options:(id)options;
+ (id)queryForRetryableAssetResourceUploadJobsWithConfiguration:(id)configuration options:(id)options;
+ (id)queryForRootAlbumCollectionListWithOptions:(id)options;
+ (id)queryForRootProjectCollectionListWithOptions:(id)options;
+ (id)queryForShareParticipantWithPerson:(id)person options:(id)options;
+ (id)queryForShareParticipantsInShare:(id)share options:(id)options;
+ (id)queryForShareParticipantsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForShareParticipantsWithParticipantIDs:(id)ds options:(id)options;
+ (id)queryForSingletonFacesWithOptions:(id)options;
+ (id)queryForSuggestionsWithFeaturedState:(unsigned __int16)state types:(id)types options:(id)options;
+ (id)queryForSuggestionsWithOptions:(id)options;
+ (id)queryForSuggestionsWithState:(unsigned __int16)state options:(id)options;
+ (id)queryForSuggestionsWithState:(unsigned __int16)state type:(unsigned __int16)type subtype:(unsigned __int16)subtype options:(id)options;
+ (id)queryForSuggestionsWithTypes:(id)types options:(id)options;
+ (id)queryForTopLevelCollectionsMatchingPredicate:(id)predicate options:(id)options;
+ (id)queryForTopLevelUserCollectionsWithOptions:(id)options;
+ (id)queryForType:(id)type withBasePredicate:(id)predicate inLibrary:(id)library;
+ (id)queryForType:(id)type withBasePredicate:(id)predicate seedOIDs:(id)ds inLibrary:(id)library;
+ (id)queryForType:(id)type withIdentifiers:(id)identifiers identifierKeyPath:(id)path options:(id)options;
+ (id)queryForType:(id)type withLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)queryForUserCuratedAssetsInMemory:(id)memory options:(id)options;
+ (id)queryForVisibleAssetsWithObjectIDs:(id)ds options:(id)options;
+ (id)queryforLibraryScopesWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (unsigned)_excludeMaskForUserLibraryWithFetchOptions:(id)options;
+ (void)_setLibraryScopeDefaultSortDescriptor:(id)descriptor;
+ (void)photoLibraryWasAccessed;
- (BOOL)evaluateWithObject:(id)object;
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
- (id)_createFetchRequestIncludingBasePredicate:(BOOL)predicate;
- (id)_effectiveDefaultSortDescriptorReversingOrder:(BOOL)order;
- (id)_effectiveSortDescriptors;
- (id)_globalPredicatesForPHClass:(Class)class;
- (id)_substitutedChangeTrackingKeyPathFromKeyPath:(id)path;
- (id)combinedQueryGroupKey;
- (id)containerIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)effectivePredicateForPHClass:(Class)class includingBasePredicate:(BOOL)predicate;
- (id)executeQuery;
- (id)initForType:(id)type withBasePredicate:(id)predicate seedOIDs:(id)ds inLibrary:(id)library;
- (id)updatedQueryWithChange:(id)change;
- (int64_t)collectionFetchType;
- (void)_prepareCombinedQueryKeys;
- (void)_prepareContainerInfo;
- (void)_prepareFilteringAttributes;
- (void)_setIdentificationBlock:(id)block;
- (void)setFetchOptions:(id)options;
- (void)visitPredicate:(id)predicate;
- (void)visitPredicateExpression:(id)expression;
- (void)visitPredicateOperator:(id)operator;
@end

@implementation PHQuery

+ (void)photoLibraryWasAccessed
{
  if (PLPlatformPhotosAccessLoggingSupported())
  {
    mEMORY[0x1E69BF2B0] = [MEMORY[0x1E69BF2B0] sharedInstance];
    [mEMORY[0x1E69BF2B0] logPhotosAccessWithSelfAuditToken];
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
    photoLibrary = [(PHQuery *)self photoLibrary];
    v4 = [(PHFetchResult *)v5 initWithQuery:self library:photoLibrary];
  }

  if (MEMORY[0x19EAF3390]())
  {
    query = [(PHFetchResult *)v4 query];
    fetchType = [query fetchType];
    if (fetchType == @"PHAsset")
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
  fetchOptions = [(PHQuery *)self fetchOptions];
  sortDescriptors = [fetchOptions sortDescriptors];

  fetchOptions2 = [(PHQuery *)self fetchOptions];
  internalSortDescriptors = [fetchOptions2 internalSortDescriptors];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = self->_containerCollection;
    if (sortDescriptors)
    {
LABEL_3:
      v8 = [objc_opt_class() _transformedSortDescriptors:sortDescriptors forFetchType:self->_fetchType];
LABEL_7:
      effectiveCustomSortDescriptors = v8;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if (sortDescriptors)
    {
      goto LABEL_3;
    }
  }

  if (internalSortDescriptors)
  {
    v8 = internalSortDescriptors;
    goto LABEL_7;
  }

  if ([(PHCollection *)self->_containerCollection isUserSmartAlbum])
  {
    v20 = [MEMORY[0x1E69BE430] sortDescriptorsForAlbumKind:1507];
    effectiveCustomSortDescriptors = [v20 mutableCopy];

    if ([(PHCollection *)self->_containerCollection customSortKey]== 5 || [(PHCollection *)self->_containerCollection customSortKey]== 101)
    {
      v21 = MEMORY[0x1E696AEB0];
      v22 = @"additionalAttributes.title";
      customSortAscending = 1;
    }

    else
    {
      if ([(PHCollection *)self->_containerCollection customSortKey]!= 1)
      {
        goto LABEL_8;
      }

      v31 = MEMORY[0x1E696AEB0];
      customSortAscending = [(PHCollection *)self->_containerCollection customSortAscending];
      v22 = @"dateCreated";
      v21 = v31;
    }

    v24 = [v21 sortDescriptorWithKey:v22 ascending:customSortAscending];
    [effectiveCustomSortDescriptors insertObject:v24 atIndex:0];
  }

  else if ([(PHCollection *)v7 assetCollectionType]== 12 && [(PHCollection *)self->_containerCollection customSortKey]== 6)
  {
    customSortAscending2 = [(PHCollection *)self->_containerCollection customSortAscending];
    if ([(PHCollection *)v7 assetCollectionSubtype]== 102)
    {
      v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"cloudBatchPublishDate" ascending:customSortAscending2];
      v39[0] = v24;
      v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:customSortAscending2];
      v39[1] = v26;
      v27 = MEMORY[0x1E695DEC8];
      v28 = v39;
    }

    else
    {
      v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:customSortAscending2];
      v38[0] = v24;
      v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:customSortAscending2];
      v38[1] = v26;
      v27 = MEMORY[0x1E695DEC8];
      v28 = v38;
    }

    effectiveCustomSortDescriptors = [v27 arrayWithObjects:v28 count:2];
  }

  else
  {
    effectiveCustomSortDescriptors = [(PHCollection *)self->_containerCollection effectiveCustomSortDescriptors];
    fetchOptions3 = [(PHQuery *)self fetchOptions];
    v24 = -[PHQuery _effectiveDefaultSortDescriptorReversingOrder:](self, "_effectiveDefaultSortDescriptorReversingOrder:", [fetchOptions3 reverseDefaultSortDescriptors]);

    if (v24 && effectiveCustomSortDescriptors)
    {
      v30 = [effectiveCustomSortDescriptors arrayByAddingObject:v24];

      effectiveCustomSortDescriptors = v30;
    }

    else if (v24 && !effectiveCustomSortDescriptors)
    {
      v37 = v24;
      effectiveCustomSortDescriptors = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    }
  }

LABEL_8:
  fetchOptions4 = [(PHQuery *)self fetchOptions];
  reverseSortOrder = [fetchOptions4 reverseSortOrder];

  if (reverseSortOrder)
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(effectiveCustomSortDescriptors, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = effectiveCustomSortDescriptors;
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

          reversedSortDescriptor = [*(*(&v32 + 1) + 8 * i) reversedSortDescriptor];
          [v12 addObject:reversedSortDescriptor];
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v12 = effectiveCustomSortDescriptors;
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
  fetchOptions = [(PHQuery *)self fetchOptions];
  predicate = [fetchOptions predicate];
  if (predicate != self->_cachedFetchOptionsPredicate)
  {
    objc_storeStrong(&self->_cachedFetchOptionsPredicate, predicate);
    if (self->_cachedFetchOptionsPredicate)
    {
      v5 = [objc_opt_class() _filterPredicateFromFetchOptionsPredicate:self->_cachedFetchOptionsPredicate options:fetchOptions phClass:{+[PHPhotoLibrary classForFetchType:](PHPhotoLibrary, "classForFetchType:", self->_fetchType)}];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_preparedContainerInfo)
  {
    if ([(PHQuery *)selfCopy collectionFetchType]== 3)
    {
      v3 = objc_opt_class();
      fetchType = selfCopy->_fetchType;
      basePredicate = selfCopy->_basePredicate;
      v11 = 0;
      v6 = [v3 _containerIdentifierForFetchType:fetchType predicate:basePredicate outRelationship:&v11];
      v7 = v11;
      containerIdentifier = selfCopy->_containerIdentifier;
      selfCopy->_containerIdentifier = v6;

      containerRelationship = selfCopy->_containerRelationship;
      selfCopy->_containerRelationship = v7;
    }

    else
    {
      if (![(PHQuery *)selfCopy _isUserSmartAlbum])
      {
LABEL_7:
        selfCopy->_preparedContainerInfo = 1;
        goto LABEL_8;
      }

      objectID = [(PHObject *)selfCopy->_containerCollection objectID];
      containerRelationship = selfCopy->_containerIdentifier;
      selfCopy->_containerIdentifier = objectID;
    }

    goto LABEL_7;
  }

LABEL_8:
  objc_sync_exit(selfCopy);
}

- (BOOL)overrideResultClassWithFetchType
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"PHMomentList";
  v6[1] = @"PHSocialGroup";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  fetchType = [(PHQuery *)self fetchType];
  LOBYTE(self) = [v3 containsObject:fetchType];

  return self;
}

- (void)_setIdentificationBlock:(id)block
{
  self->_identificationBlock = [block copy];

  MEMORY[0x1EEE66BB8]();
}

- (NSString)shortDescription
{
  v10.receiver = self;
  v10.super_class = PHQuery;
  v3 = [(PHQuery *)&v10 description];
  fetchOptions = [(PHQuery *)self fetchOptions];
  shortDescription = [fetchOptions shortDescription];
  fetchType = [(PHQuery *)self fetchType];
  basePredicate = [(PHQuery *)self basePredicate];
  v8 = [v3 stringByAppendingFormat:@" opts=%@, type=%@, base=%@", shortDescription, fetchType, objc_opt_class()];

  return v8;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PHQuery;
  v2 = [(PHQuery *)&v4 description];

  return v2;
}

- (void)visitPredicateExpression:(id)expression
{
  v19 = *MEMORY[0x1E69E9840];
  expressionCopy = expression;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412546;
    v16 = objc_opt_class();
    v17 = 2112;
    v18 = expressionCopy;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "PHQuery visitPredicateExpression: %@ %@", &v15, 0x16u);
  }

  expressionType = [expressionCopy expressionType];
  if (expressionType > 0x14)
  {
    goto LABEL_13;
  }

  if (((1 << expressionType) & 0x1048F7) != 0)
  {
    v7 = 0;
    goto LABEL_6;
  }

  if (((1 << expressionType) & 0x408) == 0)
  {
LABEL_13:
    filteringKeys = self->_filteringKeys;
    self->_filteringKeys = 0;

LABEL_14:
    filteringOids = self->_filteringOids;
    self->_filteringOids = 0;

    goto LABEL_15;
  }

  keyPath = [expressionCopy keyPath];
  v10 = [keyPath length];
  v7 = v10 == 0;
  if (v10)
  {
    v11 = [(PHQuery *)self _substitutedChangeTrackingKeyPathFromKeyPath:keyPath];
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

- (void)visitPredicateOperator:(id)operator
{
  v9 = *MEMORY[0x1E69E9840];
  operatorCopy = operator;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412546;
    v6 = objc_opt_class();
    v7 = 2112;
    v8 = operatorCopy;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEBUG, "PHQuery visitPredicateOperator: %@ %@", &v5, 0x16u);
  }
}

- (void)visitPredicate:(id)predicate
{
  v40 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v37 = objc_opt_class();
    v38 = 2112;
    v39 = predicateCopy;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "PHQuery visitPredicate: %@ %@", buf, 0x16u);
  }

  if ([PHQuery isToManySelfInPredicate:predicateCopy])
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
    v7 = predicateCopy;
    leftExpression = [v7 leftExpression];
    rightExpression = [v7 rightExpression];
    if (([leftExpression expressionType] == 10 || objc_msgSend(leftExpression, "expressionType") == 3) && !objc_msgSend(rightExpression, "expressionType"))
    {
      keyPath = [leftExpression keyPath];
      if ([keyPath length])
      {
        v11 = [(PHQuery *)self _substitutedChangeTrackingKeyPathFromKeyPath:keyPath];
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
            constantValue = [rightExpression constantValue];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17[2](v17, constantValue);
            }

            else if ([constantValue conformsToProtocol:&unk_1F1036760])
            {
              v26 = v12;
              v27 = keyPath;
              v28 = rightExpression;
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              v25 = constantValue;
              v19 = constantValue;
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

              rightExpression = v28;
              v12 = v26;
              keyPath = v27;
              constantValue = v25;
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

- (id)_substitutedChangeTrackingKeyPathFromKeyPath:(id)path
{
  pathCopy = path;
  v5 = objc_autoreleasePoolPush();
  entity = [(NSFetchRequest *)self->_fetchRequest entity];
  v7 = [pathCopy componentsSeparatedByString:@"."];
  v8 = pathCopy;
  if ([v7 count] == 2)
  {
    name = [entity name];
    entityName = [MEMORY[0x1E69BE540] entityName];
    v11 = [name isEqualToString:entityName];

    v8 = pathCopy;
    if (v11)
    {
      v12 = [v7 objectAtIndexedSubscript:0];
      v13 = [v7 objectAtIndexedSubscript:1];
      relationshipsByName = [entity relationshipsByName];
      v28 = v12;
      v15 = [relationshipsByName objectForKeyedSubscript:v12];

      destinationEntity = [v15 destinationEntity];
      propertiesByName = [destinationEntity propertiesByName];
      v27 = v13;
      v18 = [propertiesByName objectForKeyedSubscript:v13];

      userInfo = [v18 userInfo];
      v20 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69BE9F8]];
      LODWORD(v12) = [v20 BOOLValue];

      userInfo2 = [v18 userInfo];
      v22 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69BE8E0]];

      if (v12)
      {

        v8 = 0;
      }

      else
      {
        v8 = pathCopy;
        if (v22)
        {
          propertiesByName2 = [entity propertiesByName];
          v24 = [propertiesByName2 objectForKeyedSubscript:v22];

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

            v8 = pathCopy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_preparedFilteringAttributes)
  {
    selfCopy->_preparedFilteringAttributes = 1;
    v61 = selfCopy;
    fetchRequest = [(PHQuery *)selfCopy fetchRequest];
    entityName = [fetchRequest entityName];
    containerRelationship = [(PHQuery *)selfCopy containerRelationship];
    name = [containerRelationship name];
    v51 = name;
    if (name)
    {
      v76[0] = name;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:1];
    }

    else
    {
      v4 = MEMORY[0x1E695E0F0];
    }

    v52 = v4;
    selfCopy->_objectToContainerRelationshipIndexValue = [MEMORY[0x1E69BE6F8] indexValueForRelationshipNames:? entity:?];
    inverseRelationship = [containerRelationship inverseRelationship];
    entity = [inverseRelationship entity];
    name2 = [entity name];

    name3 = [inverseRelationship name];
    v49 = name3;
    if (name3)
    {
      v75 = name3;
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
      predicate = [fetchRequest predicate];
      *buf = 138412290;
      v74 = predicate;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "\n\n*** PHQuery acceptVisitor: %@", buf, 0xCu);
    }

    predicate2 = [fetchRequest predicate];
    [predicate2 acceptVisitor:v61 flags:1];

    if (v61->_filteringOids && v61->_filteringObjectKeyPaths)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      filteringRelationshipsIndexValueByBaseEntityName = v61->_filteringRelationshipsIndexValueByBaseEntityName;
      v61->_filteringRelationshipsIndexValueByBaseEntityName = dictionary;

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
            entity2 = [fetchRequest entity];
            v19 = [entity2 ph_relationshipDescriptionsForKeyPath:v17];

            lastObject = [v19 lastObject];
            inverseRelationship2 = [lastObject inverseRelationship];

            if (inverseRelationship2)
            {
              entity3 = [inverseRelationship2 entity];
              name4 = [entity3 name];

              name5 = [inverseRelationship2 name];
              v25 = name5;
              if (name5)
              {
                v71 = name5;
                v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
              }

              else
              {
                v26 = MEMORY[0x1E695E0F0];
              }

              v27 = [MEMORY[0x1E69BE6F8] indexValueForRelationshipNames:v26 entity:name4];
              entity4 = [inverseRelationship2 entity];
              ph_baseEntity = [entity4 ph_baseEntity];
              name6 = [ph_baseEntity name];

              v31 = [(NSMutableDictionary *)v61->_filteringRelationshipsIndexValueByBaseEntityName objectForKeyedSubscript:name6];
              unsignedLongLongValue = [v31 unsignedLongLongValue];

              v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue | v27];
              [(NSMutableDictionary *)v61->_filteringRelationshipsIndexValueByBaseEntityName setObject:v33 forKeyedSubscript:name6];
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
    sortDescriptors = [fetchRequest sortDescriptors];
    v37 = [sortDescriptors countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v37)
    {
      v38 = *v63;
      while (2)
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v63 != v38)
          {
            objc_enumerationMutation(sortDescriptors);
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

        v37 = [sortDescriptors countByEnumeratingWithState:&v62 objects:v70 count:16];
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
      allObjects = [(NSMutableSet *)v42 allObjects];
      v61->_filteringAttributesIndexValue = [MEMORY[0x1E69BE6F8] indexValueForAttributeNames:allObjects entity:entityName];
      v61->_filteringRelationshipsIndexValue = [MEMORY[0x1E69BE6F8] indexValueForRelationshipNames:allObjects entity:entityName];
      v44 = MEMORY[0x1E69BE6F8];
      allObjects2 = [v34 allObjects];
      v61->_sortingAttributesIndexValue = [v44 indexValueForRelationshipNames:allObjects2 entity:entityName];

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
      entity5 = [(NSManagedObjectID *)containerIdentifier entity];
      name7 = [entity5 name];

      v61->_containerSortingAttributesIndexValue = [MEMORY[0x1E69BE6F8] indexValueForAttributeNames:&unk_1F102E180 entity:name7];
      v61->_containerUserQueryIndexValue = [MEMORY[0x1E69BE6F8] indexValueForAttributeNames:&unk_1F102E198 entity:name7];
    }

    selfCopy = v61;
  }

  objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_preparedCombinedQueryKeys)
  {
    selfCopy->_preparedCombinedQueryKeys = 1;
    containerCollection = selfCopy->_containerCollection;
    if ((!containerCollection || [(PHCollection *)containerCollection collectionHasFixedOrder]) && !selfCopy->_seedOIDs)
    {
      basePredicate = [(PHQuery *)selfCopy basePredicate];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_22:

        goto LABEL_28;
      }

      fetchOptions = [(PHQuery *)selfCopy fetchOptions];
      fetchLimit = [fetchOptions fetchLimit];

      if (!fetchLimit)
      {
        basePredicate = [(PHQuery *)selfCopy basePredicate];
        if ([basePredicate predicateOperatorType] != 4 || objc_msgSend(basePredicate, "comparisonPredicateModifier"))
        {
          goto LABEL_27;
        }

        leftExpression = [basePredicate leftExpression];
        rightExpression = [basePredicate rightExpression];
        if ([leftExpression expressionType] != 3 || objc_msgSend(rightExpression, "expressionType"))
        {
LABEL_26:

LABEL_27:
          goto LABEL_28;
        }

        constantValue = [rightExpression constantValue];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          constantValue2 = [rightExpression constantValue];
        }

        else
        {
          constantValue2 = 0;
        }

        keyPath = [leftExpression keyPath];
        v12 = [objc_opt_class() _relationshipForFetchType:selfCopy->_fetchType predicate:basePredicate];
        if (!constantValue2 || ![keyPath length] || !v12 || (objc_msgSend(v12, "isToMany") & 1) != 0)
        {
LABEL_25:

          goto LABEL_26;
        }

        v13 = [(PHQuery *)selfCopy _createFetchRequestIncludingBasePredicate:0];
        if (v13)
        {
          v14 = MEMORY[0x1E696AE18];
          v15 = [keyPath stringByAppendingString:@" == %@"];
          v24 = [v14 predicateWithFormat:v15, MEMORY[0x1E695E118]];

          predicate = [v13 predicate];
          if (predicate)
          {
            v22 = MEMORY[0x1E696AB28];
            v25[0] = v24;
            predicate2 = [v13 predicate];
            v25[1] = predicate2;
            v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
            v23 = [v22 andPredicateWithSubpredicates:v17];
          }

          else
          {
            v23 = v24;
          }

          [v13 setPredicate:v23];
          v18 = [[_PHFetchRequestWrapper alloc] initWithFetchRequest:v13 containerIdentifier:0 fetchPropertySets:0];
          combinedQueryGroupKey = selfCopy->_combinedQueryGroupKey;
          selfCopy->_combinedQueryGroupKey = v18;
          v20 = v18;

          objc_storeStrong(&selfCopy->_combinedQueryKeyPath, keyPath);
          objc_storeStrong(&selfCopy->_combinedQuerySeparatingIdentifier, constantValue2);

          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }
  }

LABEL_28:
  objc_sync_exit(selfCopy);
}

- (BOOL)evaluateWithObject:(id)object
{
  objectCopy = object;
  fetchRequest = [(PHQuery *)self fetchRequest];
  predicate = [fetchRequest predicate];

  LOBYTE(fetchRequest) = [predicate evaluateWithObject:objectCopy];
  return fetchRequest;
}

- (id)effectivePredicateForPHClass:(Class)class includingBasePredicate:(BOOL)predicate
{
  predicateCopy = predicate;
  v66[2] = *MEMORY[0x1E69E9840];
  photoLibrary = [(PHQuery *)self photoLibrary];
  managedObjectContextForCurrentQueueQoS = [photoLibrary managedObjectContextForCurrentQueueQoS];

  filterPredicate = [(PHQuery *)self filterPredicate];
  fetchOptions = [(PHQuery *)self fetchOptions];
  internalPredicate = [fetchOptions internalPredicate];

  fetchOptions2 = [(PHQuery *)self fetchOptions];
  internalInclusionPredicate = [fetchOptions2 internalInclusionPredicate];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0;
  basePredicate = self->_basePredicate;
  if (basePredicate && predicateCopy)
  {
    v15 = basePredicate;
    [v14 addObject:v15];
  }

  v17 = filterPredicate;
  if (filterPredicate || (v17 = internalPredicate) != 0)
  {
    [v14 addObject:v17];
  }

  fetchOptions3 = [(PHQuery *)self fetchOptions];
  isExclusivePredicate = [fetchOptions3 isExclusivePredicate];

  if ((isExclusivePredicate & 1) == 0)
  {
    v20 = [(PHQuery *)self _globalPredicatesForPHClass:class];
    [v14 addObjectsFromArray:v20];
  }

  managedEntityName = [(objc_class *)class managedEntityName];
  v22 = PLSafeEntityForNameInManagedObjectContext();

  if (v22)
  {
    entityName = [MEMORY[0x1E69BE458] entityName];
    v24 = PLSafeEntityForNameInManagedObjectContext();

    if (v24)
    {
      v25 = PLSafeEntityForNameInManagedObjectContext();
      v64 = v15;
      if (v25)
      {
        v63 = internalInclusionPredicate;
        if ([v22 isKindOfEntity:v24] && !-[PHQuery _includesCameraRoll](self, "_includesCameraRoll"))
        {
          v61 = v25;
          fetchOptions4 = [(PHQuery *)self fetchOptions];
          if (!fetchOptions4)
          {
            fetchOptions4 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
          }

          photoLibrary2 = [fetchOptions4 photoLibrary];

          if (!photoLibrary2)
          {
            [fetchOptions4 setPhotoLibrary:self->_photoLibrary];
          }

          photoLibrary3 = [fetchOptions4 photoLibrary];
          photoLibrary = self->_photoLibrary;

          if (photoLibrary3 != photoLibrary)
          {
            v30 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_FAULT, "fetchOptions passed to PHQuery has a photoLibrary set that does not match _photoLibrary", buf, 2u);
            }
          }

          v31 = fetchOptions4;
          photoLibrary4 = [v31 photoLibrary];

          if (!photoLibrary4)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSPredicate *_predicateForFilteringCollections(PHFetchOptions *__strong)"];
            [currentHandler handleFailureInFunction:v59 file:@"PHQuery.m" lineNumber:3033 description:{@"Invalid parameter not satisfying: %@", @"fetchOptions.photoLibrary != nil"}];
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

        v62 = internalPredicate;
        v47 = v25;
        if ([v22 isKindOfEntity:v25])
        {
          v48 = [filterPredicate description];
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
        internalInclusionPredicate = v63;
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
        internalPredicate = v62;
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

- (id)_globalPredicatesForPHClass:(Class)class
{
  v105[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  fetchOptions = [(PHQuery *)self fetchOptions];
  includeTrashedAssets = [fetchOptions includeTrashedAssets];
  if ([(objc_class *)class managedObjectSupportsTrashedState]&& (includeTrashedAssets & 1) == 0)
  {
    predicateToExcludeTrashedAssets = [MEMORY[0x1E69BE540] predicateToExcludeTrashedAssets];
    [array addObject:predicateToExcludeTrashedAssets];
  }

  includeHiddenAssets = [fetchOptions includeHiddenAssets];
  if ([(objc_class *)class managedObjectSupportsHiddenState]&& (includeHiddenAssets & 1) == 0)
  {
    predicateToExcludeHiddenAssets = [MEMORY[0x1E69BE540] predicateToExcludeHiddenAssets];
    [array addObject:predicateToExcludeHiddenAssets];
  }

  includeTrashedShares = [fetchOptions includeTrashedShares];
  if ([(objc_class *)class managedObjectSupportsShareTrashedState]&& (includeTrashedShares & 1) == 0)
  {
    predicateToExcludeTrashedShares = [MEMORY[0x1E69BE7D0] predicateToExcludeTrashedShares];
    [array addObject:predicateToExcludeTrashedShares];
  }

  includeExpiredShares = [fetchOptions includeExpiredShares];
  if ([(objc_class *)class managedObjectSupportsShareExpiredState]&& (includeExpiredShares & 1) == 0)
  {
    predicateToExcludeExpiredShares = [MEMORY[0x1E69BE7D0] predicateToExcludeExpiredShares];
    [array addObject:predicateToExcludeExpiredShares];
  }

  includeExitingShares = [fetchOptions includeExitingShares];
  if ([(objc_class *)class managedObjectSupportsShareExitingState]&& (includeExitingShares & 1) == 0)
  {
    predicateToExcludeExitingLibraryScopes = [MEMORY[0x1E69BE4E8] predicateToExcludeExitingLibraryScopes];
    [array addObject:predicateToExcludeExitingLibraryScopes];
  }

  includePendingShares = [fetchOptions includePendingShares];
  if ([(objc_class *)class managedObjectSupportsSharePendingState])
  {
    if ((includePendingShares & 1) == 0)
    {
      predicateToExcludePendingShares = [MEMORY[0x1E69BE7D0] predicateToExcludePendingShares];
      [array addObject:predicateToExcludePendingShares];
    }

    predicateToExcludeUnknownShares = [MEMORY[0x1E69BE7D0] predicateToExcludeUnknownShares];
    [array addObject:predicateToExcludeUnknownShares];
  }

  includeOnlyAssetsAllowedForAnalysis = [fetchOptions includeOnlyAssetsAllowedForAnalysis];
  if ([(objc_class *)class managedObjectSupportsAllowedForAnalysis]&& includeOnlyAssetsAllowedForAnalysis)
  {
    predicateToIncludeOnlyAllowedForAnalysisAssets = [MEMORY[0x1E69BE540] predicateToIncludeOnlyAllowedForAnalysisAssets];
    [array addObject:predicateToIncludeOnlyAllowedForAnalysisAssets];
  }

  includeOnlyContentContributedByCurrentUser = [fetchOptions includeOnlyContentContributedByCurrentUser];
  includeBothPrivateAssetsAndSharedContentContributedByCurrentUser = [fetchOptions includeBothPrivateAssetsAndSharedContentContributedByCurrentUser];
  if ([(objc_class *)class managedObjectSupportsContributor])
  {
    if (includeOnlyContentContributedByCurrentUser)
    {
      predicateToIncludeOnlyContentContributedByCurrentUser = [MEMORY[0x1E69BE540] predicateToIncludeOnlyContentContributedByCurrentUser];
LABEL_38:
      v31 = predicateToIncludeOnlyContentContributedByCurrentUser;
      [array addObject:predicateToIncludeOnlyContentContributedByCurrentUser];

      goto LABEL_39;
    }

    if (includeBothPrivateAssetsAndSharedContentContributedByCurrentUser)
    {
      predicateToIncludeOnlyContentContributedByCurrentUser = [MEMORY[0x1E69BE540] predicateToIncludeBothPrivateAssetsAndSharedContentContributedByCurrentUser];
      goto LABEL_38;
    }

    useNoIndexOnSharingFilter = [fetchOptions useNoIndexOnSharingFilter];
    if ([fetchOptions sharingFilter] != 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = self->_containerCollection;
        if ([(PHCollection *)v26 assetCollectionType]== 2)
        {
          useNoIndexOnSharingFilter |= [(PHCollection *)v26 assetCollectionSubtype]== 209;
        }
      }
    }

    sharingFilter = [fetchOptions sharingFilter];
    if (sharingFilter == 1)
    {
      v28 = MEMORY[0x1E69BE540];
      v29 = useNoIndexOnSharingFilter & 1;
      v30 = 1;
      goto LABEL_37;
    }

    if (!sharingFilter)
    {
      v28 = MEMORY[0x1E69BE540];
      v29 = useNoIndexOnSharingFilter & 1;
      v30 = 0;
LABEL_37:
      predicateToIncludeOnlyContentContributedByCurrentUser = [v28 predicateForAssetSharingFilter:v30 noindex:v29];
      goto LABEL_38;
    }
  }

LABEL_39:
  if ([(objc_class *)class managedObjectSupportsVisibilityState])
  {
    if (([fetchOptions includeDuplicateAssets] & 1) == 0)
    {
      photoLibrary = [(PHQuery *)self photoLibrary];
      isCloudPhotoLibraryEnabled = [photoLibrary isCloudPhotoLibraryEnabled];

      if ((isCloudPhotoLibraryEnabled & 1) == 0)
      {
        v34 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(visibilityState) = %d", 0];
        v35 = MEMORY[0x1E696AB28];
        v105[0] = v34;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:1];
        v37 = [MEMORY[0x1E69BF328] subpredicatesForExcludeMask:{objc_msgSend(MEMORY[0x1E69BF328], "maskForPhotoStreamAsset")}];
        v38 = [v36 arrayByAddingObjectsFromArray:v37];
        v39 = [v35 orPredicateWithSubpredicates:v38];

        [array addObject:v39];
      }
    }
  }

  if (-[objc_class managedObjectSupportsDuplicateVisibilityState](class, "managedObjectSupportsDuplicateVisibilityState") && [fetchOptions excludeDuplicateAssetVisibilityStateHidden])
  {
    predicateToExcludeDuplicateAssetVisibilityStateHidden = [MEMORY[0x1E69BE540] predicateToExcludeDuplicateAssetVisibilityStateHidden];
    [array addObject:predicateToExcludeDuplicateAssetVisibilityStateHidden];
  }

  if (-[objc_class managedObjectSupportsDuplicateVisibilityState](class, "managedObjectSupportsDuplicateVisibilityState") && [fetchOptions includeDuplicateAssetVisibilityStateMostRelevant])
  {
    predicateToIncludeDuplicateAssetVisibilityStateMostRelevant = [MEMORY[0x1E69BE540] predicateToIncludeDuplicateAssetVisibilityStateMostRelevant];
    [array addObject:predicateToIncludeDuplicateAssetVisibilityStateMostRelevant];
  }

  if (-[objc_class managedObjectSupportsAssetStacks](class, "managedObjectSupportsAssetStacks") && [fetchOptions excludeNonVisibleStackedAssets])
  {
    predicateToExcludeNonVisibleStackedAssets = [MEMORY[0x1E69BE540] predicateToExcludeNonVisibleStackedAssets];
    [array addObject:predicateToExcludeNonVisibleStackedAssets];
  }

  if (-[objc_class managedObjectSupportsPendingState](class, "managedObjectSupportsPendingState") && ([fetchOptions includePendingMemories] & 1) == 0)
  {
    v43 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(pendingState) != %d", 1];
    [array addObject:v43];
  }

  if (-[objc_class managedObjectSupportsPendingState](class, "managedObjectSupportsPendingState") && ([fetchOptions includeLocalMemories] & 1) == 0)
  {
    v44 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(pendingState) != %d", 2];
    [array addObject:v44];
  }

  if (-[objc_class managedObjectSupportsCreationType](class, "managedObjectSupportsCreationType") && ([fetchOptions includeStoryMemories] & 1) == 0)
  {
    v45 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(creationType) != %d", 1];
    [array addObject:v45];
  }

  if (-[objc_class managedObjectSupportsPendingState](class, "managedObjectSupportsPendingState") && ([fetchOptions includeSourceMemories] & 1) == 0)
  {
    v46 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == nil", @"targetUserEditedMemory"];
    [array addObject:v46];
  }

  if (-[objc_class managedObjectSupportsRejectedState](class, "managedObjectSupportsRejectedState") && ([fetchOptions includeRejectedMemories] & 1) == 0)
  {
    v47 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(rejected) == NO"];
    [array addObject:v47];
  }

  if ([(objc_class *)class managedObjectSupportsPersonFilters])
  {
    v48 = [PHQueryPersonContext subpredicatesForFetchOptions:fetchOptions];
    [array addObjectsFromArray:v48];
    v49 = [PHQueryPersonContext fetchOptionsWithOverriddenChangeDetectionCriteriaIfNecessary:fetchOptions];

    [(PHQuery *)self setFetchOptions:v49];
    fetchOptions = v49;
  }

  if (-[objc_class managedObjectSupportsKeyFaces](class, "managedObjectSupportsKeyFaces") && [fetchOptions includeOnlyPersonsWithVisibleKeyFaces])
  {
    predicateForVisibleKeyFace = [MEMORY[0x1E69BE608] predicateForVisibleKeyFace];
    [array addObject:predicateForVisibleKeyFace];
  }

  if (-[objc_class managedObjectSupportsMontage](class, "managedObjectSupportsMontage") && [fetchOptions excludeMontageAssets])
  {
    v51 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(additionalAttributes.montage) == nil"];
    [array addObject:v51];
  }

  if (-[objc_class managedObjectSupportsScreenshot](class, "managedObjectSupportsScreenshot") && [fetchOptions excludeScreenshotAssets])
  {
    v52 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == NO", @"isDetectedScreenshot"];
    [array addObject:v52];
  }

  if (-[objc_class managedObjectSupportsBursts](class, "managedObjectSupportsBursts") && ([fetchOptions includeAllBurstAssets] & 1) == 0)
  {
    containerIdentifier = [(PHQuery *)self containerIdentifier];
    if (!containerIdentifier || (v54 = objc_opt_class(), [containerIdentifier entity], v55 = objc_claimAutoreleasedReturnValue(), LODWORD(v54) = objc_msgSend(v54, "_isKindOfMomentOrAlbumEntity:", v55), v55, !v54) || (-[PHQuery containerRelationship](self, "containerRelationship"), v56 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v56, "inverseRelationship"), v57 = objc_claimAutoreleasedReturnValue(), v56, objc_msgSend(v57, "name"), v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v58, "isEqualToString:", @"assets"), v58, v57, (v59 & 1) == 0))
    {
      predicateToExcludeNonvisibleBurstAssets = [MEMORY[0x1E69BE540] predicateToExcludeNonvisibleBurstAssets];
      [array addObject:predicateToExcludeNonvisibleBurstAssets];
    }
  }

  if (-[objc_class managedObjectSupportsFaceState](class, "managedObjectSupportsFaceState") && fetchOptions && ([fetchOptions includeNonvisibleFaces] & 1) == 0)
  {
    predicatesToExcludeNonVisibleFaces = [MEMORY[0x1E69BE3D0] predicatesToExcludeNonVisibleFaces];
    [array addObjectsFromArray:predicatesToExcludeNonVisibleFaces];
  }

  if (-[objc_class managedObjectSupportsFaceState](class, "managedObjectSupportsFaceState") && [fetchOptions includeOnlyFacesNeedingFaceCrop])
  {
    predicatesForFacesNeedingFaceCropGeneration = [MEMORY[0x1E69BE3D0] predicatesForFacesNeedingFaceCropGeneration];
    [array addObjectsFromArray:predicatesForFacesNeedingFaceCropGeneration];
  }

  if (-[objc_class managedObjectSupportsFaceState](class, "managedObjectSupportsFaceState") && [fetchOptions includeOnlyFacesWithFaceprints])
  {
    v63 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(faceprint) != nil"];
    [array addObject:v63];
  }

  if (-[objc_class managedObjectSupportsFaceState](class, "managedObjectSupportsFaceState") && [fetchOptions includeOnlyFacesInFaceGroups])
  {
    v64 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(faceGroup) != nil"];
    [array addObject:v64];
  }

  if ([(objc_class *)class managedObjectSupportsSavedAssetType])
  {
    photoLibrary2 = [(PHQuery *)self photoLibrary];
    isCloudPhotoLibraryEnabled2 = [photoLibrary2 isCloudPhotoLibraryEnabled];

    if (isCloudPhotoLibraryEnabled2)
    {
      v67 = [MEMORY[0x1E69BF328] subpredicatesForExcludeMask:{objc_msgSend(MEMORY[0x1E69BF328], "maskForPhotoStreamAsset")}];
      [array addObjectsFromArray:v67];
    }
  }

  if (-[objc_class managedObjectSupportsAdjustments](class, "managedObjectSupportsAdjustments") && [fetchOptions includeRecentlyEditedSmartAlbum])
  {
    predicateToExcludeCameraAutoAdjustments = [MEMORY[0x1E69BE540] predicateToExcludeCameraAutoAdjustments];
    [array addObject:predicateToExcludeCameraAutoAdjustments];
  }

  photoLibrary3 = [fetchOptions photoLibrary];
  type = [photoLibrary3 type];

  if (!type)
  {
    if (![(objc_class *)class managedObjectSupportsSavedAssetType])
    {
      goto LABEL_111;
    }

    v74 = [PHQuery _excludeMaskForUserLibraryWithFetchOptions:fetchOptions];
    goto LABEL_110;
  }

  photoLibrary4 = [fetchOptions photoLibrary];
  type2 = [photoLibrary4 type];

  if (type2 == 1)
  {
    includePlaceholderAssets = [fetchOptions includePlaceholderAssets];
    if ([(objc_class *)class managedObjectSupportsSavedAssetType])
    {
      BYTE2(v100) = 1;
      LOWORD(v100) = 257;
      HIDWORD(v99) = 16843009;
      BYTE3(v99) = includePlaceholderAssets ^ 1;
      BYTE2(v99) = 0;
      LOWORD(v99) = 257;
      v74 = [MEMORY[0x1E69BF328] validatedSavedAssetTypeMaskUnknown:1 photoBooth:1 photoStream:1 camera:1 cloudShared:1 cameraConnectionKit:1 cloudPhotoLibrary:v99 wallpaper_UNUSED:v100 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
LABEL_110:
      v75 = [MEMORY[0x1E69BF328] subpredicatesForExcludeMask:v74];
      [array addObjectsFromArray:v75];
    }
  }

LABEL_111:
  if (![(objc_class *)class managedObjectSupportsDetectionType])
  {
    goto LABEL_122;
  }

  includedDetectionTypes = [fetchOptions includedDetectionTypes];
  v77 = includedDetectionTypes;
  if (includedDetectionTypes)
  {
    v78 = includedDetectionTypes;
  }

  else
  {
    v78 = +[PHFetchOptions defaultDetectionTypes];
  }

  if (objc_opt_class() == class)
  {
    v79 = 0x1E69BE3D0;
LABEL_119:
    v80 = [*v79 predicateForIncludedDetectionTypes:v78];
    if (v80)
    {
      v81 = v80;
      [array addObject:v80];
    }

    goto LABEL_121;
  }

  if (objc_opt_class() == class)
  {
    v79 = 0x1E69BE608;
    goto LABEL_119;
  }

LABEL_121:

LABEL_122:
  if ([(objc_class *)class managedObjectSupportsBodyDetection])
  {
    v82 = [PHFace faceFetchTypeForOptions:fetchOptions];
    v83 = [MEMORY[0x1E69BE3D0] predicateForFetchType:v82];
    [array _pl_addNonNilObject:v83];
  }

  if (-[objc_class managedObjectSupportsTorsoOnly](class, "managedObjectSupportsTorsoOnly") && (!fetchOptions || ([fetchOptions includeTorsoOnlyPerson] & 1) == 0))
  {
    predicateToExcludeTorsoOnlyPerson = [MEMORY[0x1E69BE608] predicateToExcludeTorsoOnlyPerson];
    [array addObject:predicateToExcludeTorsoOnlyPerson];
  }

  if (-[objc_class managedObjectSupportsSharingComposition](class, "managedObjectSupportsSharingComposition") && fetchOptions && [fetchOptions sharingFilter] != 2)
  {
    v85 = -[objc_class fetchPredicateForSharingFilter:](class, "fetchPredicateForSharingFilter:", [fetchOptions sharingFilter]);
    if (v85)
    {
      [array addObject:v85];
    }
  }

  if ([(objc_class *)class managedObjectSupportsSensitivityAnalysis])
  {
    if ([fetchOptions excludeSensitiveAndUnprocessedAssets])
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
          predicateForAssetsIncompletelyProcessedForSensitivity = [MEMORY[0x1E69BE540] predicateForAssetsIncompletelyProcessedForSensitivity];
          v90 = [v88 notPredicateWithSubpredicate:predicateForAssetsIncompletelyProcessedForSensitivity];
          v104[0] = v90;
          v91 = MEMORY[0x1E696AB28];
          v92 = [getSCSensitivityAnalysisClass_36607() fetchExclusionPredicateWithCompactAnalysisKeyPath:@"compactSCSensitivityAnalysis"];
          v93 = [v91 notPredicateWithSubpredicate:v92];
          v104[1] = v93;
          v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
          v95 = [v88 andPredicateWithSubpredicates:v94];

          [array addObject:v95];
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

  v97 = array;

  return array;
}

- (void)setFetchOptions:(id)options
{
  optionsCopy = options;
  if (optionsCopy)
  {
    v10 = optionsCopy;
    v5 = [optionsCopy copy];
    fetchOptions = self->_fetchOptions;
    self->_fetchOptions = v5;

    photoLibrary = [v10 photoLibrary];

    optionsCopy = v10;
    if (photoLibrary)
    {
      photoLibrary2 = [v10 photoLibrary];
      photoLibrary = self->_photoLibrary;
      self->_photoLibrary = photoLibrary2;

      optionsCopy = v10;
    }
  }
}

- (NSRelationshipDescription)containerRelationship
{
  [(PHQuery *)self _prepareContainerInfo];
  containerRelationship = self->_containerRelationship;

  return containerRelationship;
}

- (id)_effectiveDefaultSortDescriptorReversingOrder:(BOOL)order
{
  orderCopy = order;
  basePredicate = [(PHQuery *)self basePredicate];

  if (!basePredicate || (v6 = objc_opt_class(), -[PHQuery fetchType](self, "fetchType"), v7 = objc_claimAutoreleasedReturnValue(), -[PHQuery basePredicate](self, "basePredicate"), v8 = objc_claimAutoreleasedReturnValue(), [v6 defaultSortDescriptorForFetchType:v7 predicate:v8 ascending:!orderCopy], defaultSortDescriptor = objc_claimAutoreleasedReturnValue(), v8, v7, !defaultSortDescriptor))
  {
    defaultSortDescriptor = [(PHCollection *)self->_containerCollection defaultSortDescriptor];
  }

  return defaultSortDescriptor;
}

- (id)_createFetchRequestIncludingBasePredicate:(BOOL)predicate
{
  predicateCopy = predicate;
  v44 = *MEMORY[0x1E69E9840];
  fetchOptions = [(PHQuery *)self fetchOptions];
  relatedEntityName = [fetchOptions relatedEntityName];

  v7 = [PHPhotoLibrary classForFetchType:self->_fetchType];
  managedEntityName = [(objc_class *)v7 managedEntityName];
  if (relatedEntityName)
  {
    relatedRelationshipProperty = [fetchOptions relatedRelationshipProperty];

    if (relatedRelationshipProperty)
    {
      relatedEntityName2 = [fetchOptions relatedEntityName];

      managedEntityName = relatedEntityName2;
    }

    else
    {
      v11 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = fetchOptions;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "fetchOptions.relatedEntityName supplied without a .relatedRelationshipProperty: %@", buf, 0xCu);
      }
    }
  }

  photoLibrary = [(PHQuery *)self photoLibrary];
  managedObjectContextForCurrentQueueQoS = [photoLibrary managedObjectContextForCurrentQueueQoS];
  v14 = PLSafeEntityForNameInManagedObjectContext();
  if (v14)
  {
    v15 = objc_opt_new();
    [v15 setEntity:v14];
    v16 = [(PHQuery *)self effectivePredicateForPHClass:v7 includingBasePredicate:predicateCopy];
    if (v16)
    {
      [v15 setPredicate:v16];
    }

    propertiesToGroupBy = [(PHQuery *)self propertiesToGroupBy];
    if ([propertiesToGroupBy count])
    {
      v35 = v16;
      v38 = photoLibrary;
      [v15 setResultType:2];
      v36 = propertiesToGroupBy;
      [v15 setPropertiesToGroupBy:propertiesToGroupBy];
      v18 = objc_alloc_init(MEMORY[0x1E695D5C8]);
      [v18 setName:@"objectID"];
      expressionForEvaluatedObject = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
      [v18 setExpression:expressionForEvaluatedObject];

      [v18 setExpressionResultType:2000];
      v41 = v18;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
      propertiesToFetchWhenGrouping = [(PHQuery *)self propertiesToFetchWhenGrouping];
      v22 = [propertiesToFetchWhenGrouping count];

      if (v22)
      {
        propertiesToFetchWhenGrouping2 = [(PHQuery *)self propertiesToFetchWhenGrouping];
        v24 = [v20 arrayByAddingObjectsFromArray:propertiesToFetchWhenGrouping2];

        v20 = v24;
      }

      [v15 setPropertiesToFetch:v20];

      propertiesToGroupBy = v36;
      photoLibrary = v38;
      v16 = v35;
    }

    else if (relatedEntityName)
    {
      [v15 setResultType:2];
      v25 = objc_alloc_init(MEMORY[0x1E695D5C8]);
      [v25 setName:@"objectID"];
      v39 = photoLibrary;
      v26 = MEMORY[0x1E696ABC8];
      [fetchOptions relatedRelationshipProperty];
      v37 = propertiesToGroupBy;
      v28 = v27 = v16;
      v29 = [v26 expressionForKeyPath:v28];
      [v25 setExpression:v29];

      v16 = v27;
      propertiesToGroupBy = v37;
      [v25 setExpressionResultType:2000];
      v40 = v25;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      [v15 setPropertiesToFetch:v30];

      photoLibrary = v39;
    }

    else
    {
      [v15 setResultType:1];
    }

    [v15 setIncludesPropertyValues:0];
    [v15 setIncludesPendingChanges:0];
    _effectiveSortDescriptors = [(PHQuery *)self _effectiveSortDescriptors];
    [v15 setSortDescriptors:_effectiveSortDescriptors];
    fetchLimit = [fetchOptions fetchLimit];
    if (fetchLimit)
    {
      [v15 setFetchLimit:fetchLimit];
    }

    fetchOffset = [fetchOptions fetchOffset];
    if (fetchOffset)
    {
      [v15 setFetchOffset:fetchOffset];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)updatedQueryWithChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (!self->_containerCollection)
  {
    goto LABEL_14;
  }

  v6 = [changeCopy changeDetailsForObject:?];
  objectAfterChanges = [v6 objectAfterChanges];
  if (!(v6 | objectAfterChanges))
  {
    fetchOptions = [(PHQuery *)self fetchOptions];
    changeDetectionCriteria = [fetchOptions changeDetectionCriteria];
    photoLibrary = [(PHQuery *)self photoLibrary];
    managedObjectContext = [photoLibrary managedObjectContext];
    v12 = [v5 intersectsWithDetectionCriteria:changeDetectionCriteria managedObjectContext:managedObjectContext];

    if (!v12)
    {
LABEL_13:

LABEL_14:
      selfCopy = self;
      goto LABEL_15;
    }

    objectAfterChanges = self->_containerCollection;
  }

  if (!objectAfterChanges)
  {
    goto LABEL_13;
  }

  selfCopy = [(PHQuery *)self copy];
  [(PHQuery *)selfCopy _setContainerCollection:objectAfterChanges];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objectAfterChanges;
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
    userQuery = [v15 userQuery];
    photoLibrary2 = [v15 photoLibrary];
    v18PhotoLibrary = [photoLibrary2 photoLibrary];
    v20 = [v28 predicateForQuery:userQuery inLibrary:v18PhotoLibrary changeDetectionCriteria:v16];
    [(PHQuery *)selfCopy _setBasePredicate:v20];

    v21 = MEMORY[0x1E69BE708];
    userQuery2 = [v15 userQuery];
    v23 = [v21 includesHiddenAssetsInQuery:userQuery2];

    fetchOptions2 = [(PHQuery *)selfCopy fetchOptions];
    [fetchOptions2 setIncludeHiddenAssets:v23];

    v25 = [[PHQueryChangeDetectionCriteria alloc] initWithPLQueryChangeDetectionCriteria:v29];
    fetchOptions3 = [(PHQuery *)selfCopy fetchOptions];
    [fetchOptions3 setChangeDetectionCriteria:v25];
  }

  if (!selfCopy)
  {
    goto LABEL_14;
  }

LABEL_15:

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initForType:self->_fetchType withBasePredicate:self->_basePredicate inLibrary:self->_photoLibrary];
  fetchOptions = [(PHQuery *)self fetchOptions];
  [v4 setFetchOptions:fetchOptions];

  [v4 _setIncludesCameraRoll:{-[PHQuery _includesCameraRoll](self, "_includesCameraRoll")}];
  v6 = [(PHCollection *)self->_containerCollection copy];
  [v4 _setContainerCollection:v6];

  [v4 _setCollectionFetchType:{-[PHQuery collectionFetchType](self, "collectionFetchType")}];
  [v4 _setIdentificationBlock:self->_identificationBlock];
  propertiesToGroupBy = [(PHQuery *)self propertiesToGroupBy];
  [v4 setPropertiesToGroupBy:propertiesToGroupBy];

  propertiesToFetchWhenGrouping = [(PHQuery *)self propertiesToFetchWhenGrouping];
  [v4 setPropertiesToFetchWhenGrouping:propertiesToFetchWhenGrouping];

  objc_storeStrong(v4 + 35, self->_searchIndexLookupIdentifier);
  return v4;
}

- (id)initForType:(id)type withBasePredicate:(id)predicate seedOIDs:(id)ds inLibrary:(id)library
{
  typeCopy = type;
  predicateCopy = predicate;
  dsCopy = ds;
  libraryCopy = library;
  v24.receiver = self;
  v24.super_class = PHQuery;
  v15 = [(PHQuery *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fetchType, type);
    objc_storeStrong(&v16->_basePredicate, predicate);
    objc_storeStrong(&v16->_seedOIDs, ds);
    objc_storeStrong(&v16->_photoLibrary, library);
    librarySpecificFetchOptions = [(PHPhotoLibrary *)v16->_photoLibrary librarySpecificFetchOptions];
    fetchOptions = v16->_fetchOptions;
    v16->_fetchOptions = librarySpecificFetchOptions;

    if (typeCopy)
    {
      if (libraryCopy)
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

+ (id)identificationBlockForAssetCollectionType:(int64_t)type
{
  if (type <= 0xD && ((0x3FDFu >> type) & 1) != 0)
  {
    v3 = _Block_copy(*off_1E75A8F00[type]);
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

+ (id)identificationBlockForAlbumSortKey:(unsigned int)key
{
  v3 = 0;
  if (key > 3)
  {
    if (key > 5)
    {
      if (key == 6)
      {
        v4 = &PHQueryForAssetsInAlbum_SortKeyPublishDate;
      }

      else
      {
        if (key != 101)
        {
          goto LABEL_19;
        }

        v4 = &PHQueryForAssetsInAlbum_SortKeyContentTitle;
      }
    }

    else if (key == 4)
    {
      v4 = &PHQueryForAssetsInAlbum_SortKeyTrashDate;
    }

    else
    {
      v4 = &PHQueryForAssetsInAlbum_SortKeyTitle;
    }
  }

  else if (key > 1)
  {
    if (key == 2)
    {
      v4 = &PHQueryForAssetsInAlbum_SortKeyLastModifiedDate;
    }

    else
    {
      v4 = &PHQueryForAssetsInAlbum_SortKeyImportDate;
    }
  }

  else if (key)
  {
    if (key != 1)
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

+ (id)identificationBlockForSmartAlbumKind:(int)kind
{
  v3 = 0;
  if (kind <= 1549)
  {
    if (kind > 1501)
    {
      if (kind > 1506)
      {
        if (kind > 1508)
        {
          if (kind == 1509)
          {
            v4 = PHQueryForAssetInAlbumKind_ConversationAlbum;
          }

          else
          {
            if (kind != 1510)
            {
              goto LABEL_111;
            }

            v4 = PHQueryForAssetInAlbumKind_Duplicate;
          }
        }

        else if (kind == 1507)
        {
          v4 = PHQueryForAssetInAlbumKind_UserSmartAlbum;
        }

        else
        {
          v4 = PHQueryForAssetInAlbumKind_Project;
        }
      }

      else if (kind > 1504)
      {
        if (kind == 1505)
        {
          v4 = PHQueryForAssetInAlbumKind_CloudSharedAlbum;
        }

        else
        {
          v4 = PHQueryForAssetInAlbumKind_ImportSessionAlbum;
        }
      }

      else if (kind == 1502)
      {
        v4 = PHQueryForAssetInAlbumKind_PictureFrame;
      }

      else
      {
        if (kind != 1503)
        {
          goto LABEL_111;
        }

        v4 = PHQueryForAssetInAlbumKind_CameraSession;
      }
    }

    else if (kind > 999)
    {
      if (kind > 1499)
      {
        if (kind == 1500)
        {
          v4 = PHQueryForAssetInAlbumKind_PhotoStream;
        }

        else
        {
          v4 = PHQueryForAssetInAlbumKind_Wallpaper_UNUSED;
        }
      }

      else if (kind == 1000)
      {
        v4 = PHQueryForAssetInAlbumKind_SavedPhotos;
      }

      else
      {
        if (kind != 1100)
        {
          goto LABEL_111;
        }

        v4 = PHQueryForAssetInAlbumKind_1stSpecial;
      }
    }

    else if (kind > 14)
    {
      if (kind == 15)
      {
        v4 = PHQueryForAssetInAlbumKind_LegacyFaces;
      }

      else
      {
        if (kind != 16)
        {
          goto LABEL_111;
        }

        v4 = PHQueryForAssetInAlbumKind_Places;
      }
    }

    else if (kind == 2)
    {
      v4 = PHQueryForAssetInAlbumKind_Regular;
    }

    else
    {
      if (kind != 12)
      {
        goto LABEL_111;
      }

      v4 = PHQueryForAssetInAlbumKind_Event;
    }

    goto LABEL_110;
  }

  if (kind > 3570)
  {
    if (kind > 4000)
    {
      if (kind > 4003)
      {
        switch(kind)
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

      else if (kind == 4001)
      {
        v4 = PHQueryForAssetInAlbumKind_FacesStandIn;
      }

      else if (kind == 4002)
      {
        v4 = PHQueryForAssetInAlbumKind_EventsStandIn;
      }

      else
      {
        v4 = PHQueryForAssetInAlbumKind_ImportStandIn;
      }
    }

    else if (kind > 3997)
    {
      if (kind == 3998)
      {
        v4 = PHQueryForAssetInAlbumKind_ProjectAlbumRootFolder;
      }

      else if (kind == 3999)
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
      switch(kind)
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

  switch(kind)
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:5173 description:@"Unreachable Code: Attempting to get id for DEPRECATED Shared Library Album"];

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

+ (id)queryForAssetsInUtilityCollectionWithType:(unsigned __int16)type options:(id)options
{
  typeCopy = type;
  optionsCopy = options;
  v7 = [PHUtilityCollection searchLookupIdentifierForUtilityCollectionType:typeCopy];
  if (v7)
  {
    v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
    v9 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v8];

    v10 = [self queryForAssetsUsingSearchIndexLookupIdentifier:v7 options:v9];
    [v10 setFetchOptions:v9];

    optionsCopy = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)queryForAssetsUsingSearchIndexLookupIdentifier:(id)identifier options:(id)options
{
  identifierCopy = identifier;
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:options object:0];
  v8 = [self queryForType:@"PHAsset" withBasePredicate:0 inLibrary:v7];

  v9 = v8[35];
  v8[35] = identifierCopy;

  return v8;
}

+ (id)queryForPendingLibraryScopeInvitationWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v6 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v5];

  [self _setLibraryScopeDefaultSortDescriptor:v6];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ && %K == %d && %K == %d && %K == %d", @"scopeType", &unk_1F102D250, @"status", 2, @"localPublishState", 2, @"previewState", 0];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [self queryForType:@"PHLibraryScope" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForPreviewLibraryScopeWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v6 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v5];

  [self _setLibraryScopeDefaultSortDescriptor:v6];
  predicateForPreviewLibraryScope = [MEMORY[0x1E69BE4E8] predicateForPreviewLibraryScope];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [self queryForType:@"PHLibraryScope" withBasePredicate:predicateForPreviewLibraryScope inLibrary:v8];

  [v9 setFetchOptions:v6];

  return v9;
}

+ (id)queryForActiveLibraryScopeWithOptions:(id)options
{
  v15[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v6 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v5];

  [self _setLibraryScopeDefaultSortDescriptor:v6];
  v7 = MEMORY[0x1E696AB28];
  predicateForActiveLibraryScope = [MEMORY[0x1E69BE4E8] predicateForActiveLibraryScope];
  v15[0] = predicateForActiveLibraryScope;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d || %K == %d", @"status", 1, @"status", 3];
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v11 = [v7 andPredicateWithSubpredicates:v10];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v13 = [self queryForType:@"PHLibraryScope" withBasePredicate:v11 inLibrary:v12];

  [v13 setFetchOptions:v6];

  return v13;
}

+ (id)queryForLibraryScopesWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v6 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v5];

  [self _setLibraryScopeDefaultSortDescriptor:v6];
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v8 = [self queryForType:@"PHLibraryScope" withBasePredicate:0 inLibrary:v7];

  [v8 setFetchOptions:v6];

  return v8;
}

+ (id)queryforLibraryScopesWithLocalIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  identifiersCopy = identifiers;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v8];

  [self _setLibraryScopeDefaultSortDescriptor:v9];
  v10 = [self queryForType:@"PHLibraryScope" withLocalIdentifiers:identifiersCopy options:v9];

  [v10 setFetchOptions:v9];

  return v10;
}

+ (void)_setLibraryScopeDefaultSortDescriptor:(id)descriptor
{
  v6[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  if (([descriptorCopy hasAnySortDescriptors] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v6[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

    [descriptorCopy setSortDescriptors:v5];
  }
}

+ (id)queryForEntryWithLocalIdentifier:(id)identifier options:(id)options
{
  optionsCopy = options;
  v6 = [(PHObject *)PHCloudFeedEntry uuidFromLocalIdentifier:identifier];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uuid", v6];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHCloudFeedEntry" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)queryForEntriesFromEarliestDate:(id)date latestDate:(id)latestDate filter:(int64_t)filter options:(id)options
{
  v22[3] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  latestDateCopy = latestDate;
  optionsCopy = options;
  if (dateCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %@", @"entryDate", dateCopy];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v12 = ;
  if (latestDateCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= %@", @"entryDate", latestDateCopy];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v13 = ;
  if ((filter - 1) >= 5)
  {
    filterCopy = 0;
  }

  else
  {
    filterCopy = filter;
  }

  v15 = [MEMORY[0x1E69BE320] notificationPredicateForFilter:filterCopy];
  v16 = MEMORY[0x1E696AB28];
  v22[0] = v12;
  v22[1] = v13;
  v22[2] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v18 = [v16 andPredicateWithSubpredicates:v17];

  v19 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v20 = [PHQuery queryForType:@"PHCloudFeedEntry" withBasePredicate:v18 inLibrary:v19];

  [v20 setFetchOptions:optionsCopy];

  return v20;
}

+ (id)queryForCommentsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  v5 = MEMORY[0x1E695DFD8];
  optionsCopy = options;
  v7 = [v5 setWithArray:identifiers];
  v8 = [(PHObject *)PHAssetComment uuidsFromLocalIdentifiers:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"cloudGUID", v8];
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v11 = [PHQuery queryForType:@"PHAssetComment" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForLikesForCloudFeedEntry:(id)entry options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  entryCopy = entry;
  objectID = [entryCopy objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"cloudFeedLikeCommentEntry", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:entryCopy];

  v11 = [PHQuery queryForType:@"PHAssetComment" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForLikesForAsset:(id)asset options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  assetCopy = asset;
  objectID = [assetCopy objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"likedAsset", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:assetCopy];

  v11 = [PHQuery queryForType:@"PHAssetComment" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForCommentsForCloudFeedEntry:(id)entry options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  entryCopy = entry;
  objectID = [entryCopy objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"cloudFeedCommentEntry", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:entryCopy];

  v11 = [PHQuery queryForType:@"PHAssetComment" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForCommentsForAsset:(id)asset options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  assetCopy = asset;
  objectID = [assetCopy objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"commentedAsset", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:assetCopy];

  v11 = [PHQuery queryForType:@"PHAssetComment" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForQuestionsWithState:(unsigned __int16)state options:(id)options
{
  stateCopy = state;
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  stateCopy = [v5 predicateWithFormat:@"state = %d", stateCopy];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHQuestion" withBasePredicate:stateCopy inLibrary:v8];
  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)queryForAnsweredQuestionsWithOptions:(id)options
{
  v3 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  v5 = [v3 predicateWithFormat:@"state = %d OR state = %d OR state = %d", 2, 3, 1];
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v7 = [PHQuery queryForType:@"PHQuestion" withBasePredicate:v5 inLibrary:v6];
  [v7 setFetchOptions:optionsCopy];

  return v7;
}

+ (id)queryForAnsweredYesOrNoQuestionsWithOptions:(id)options
{
  v3 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  v5 = [v3 predicateWithFormat:@"state = %d OR state = %d", 2, 3];
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v7 = [PHQuery queryForType:@"PHQuestion" withBasePredicate:v5 inLibrary:v6];
  [v7 setFetchOptions:optionsCopy];

  return v7;
}

+ (id)queryForQuestionsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  v4 = MEMORY[0x1E696AE18];
  if (identifiers)
  {
    identifiersCopy = identifiers;
  }

  else
  {
    identifiersCopy = MEMORY[0x1E695E0F0];
  }

  optionsCopy = options;
  identifiersCopy = [v4 predicateWithFormat:@"uuid IN (%@)", identifiersCopy];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHQuestion" withBasePredicate:identifiersCopy inLibrary:v8];
  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)queryForQuestionsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v5 = [PHQuery queryForType:@"PHQuestion" withBasePredicate:0 inLibrary:v4];
  [v5 setFetchOptions:optionsCopy];

  return v5;
}

+ (id)queryForKeywordsForAsset:(id)asset options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  assetCopy = asset;
  objectID = [assetCopy objectID];
  v9 = [v5 predicateWithFormat:@"ANY assetAttributes.asset = %@", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:assetCopy];

  v11 = [PHQuery queryForType:@"PHKeyword" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForKeywordsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  v7 = [self queryForType:@"PHKeyword" withLocalIdentifiers:identifiers options:optionsCopy];
  [v7 setFetchOptions:optionsCopy];

  return v7;
}

+ (id)queryForKeywordsWithTitles:(id)titles options:(id)options
{
  v4 = MEMORY[0x1E696AE18];
  if (titles)
  {
    titlesCopy = titles;
  }

  else
  {
    titlesCopy = MEMORY[0x1E695E0F0];
  }

  optionsCopy = options;
  titlesCopy = [v4 predicateWithFormat:@"%K IN %@", @"title", titlesCopy];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHKeyword" withBasePredicate:titlesCopy inLibrary:v8];
  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)queryForKeywordsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v5 = [PHQuery queryForType:@"PHKeyword" withBasePredicate:0 inLibrary:v4];
  [v5 setFetchOptions:optionsCopy];

  return v5;
}

+ (id)queryForProjectsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  v6 = [PHQuery queryForAssetCollectionsWithType:10 localIdentifiers:identifiers options:optionsCopy];
  [v6 setFetchOptions:optionsCopy];

  return v6;
}

+ (id)queryForConversationsWithOptions:(id)options
{
  optionsCopy = options;
  [optionsCopy hasAnySortDescriptors];
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v5 = [PHQuery queryForType:@"PHConversation" withBasePredicate:0 inLibrary:v4];

  [v5 setFetchOptions:optionsCopy];

  return v5;
}

+ (id)queryForImportSessionsWithOptions:(id)options
{
  v10[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  if (([optionsCopy hasAnySortDescriptors] & 1) == 0 && v4)
  {
    if (optionsCopy)
    {
      v5 = [optionsCopy copy];

      optionsCopy = v5;
    }

    else
    {
      optionsCopy = objc_opt_new();
    }

    v10[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [optionsCopy setInternalSortDescriptors:v6];
  }

  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v8 = [PHQuery queryForType:@"PHImportSession" withBasePredicate:0 inLibrary:v7];

  [v8 setFetchOptions:optionsCopy];

  return v8;
}

+ (id)queryForSuggestionsWithFeaturedState:(unsigned __int16)state types:(id)types options:(id)options
{
  stateCopy = state;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  typesCopy = types;
  stateCopy = [v7 predicateWithFormat:@"%K = %d", @"featuredState", stateCopy];
  v11 = MEMORY[0x1E695E0F0];
  if (typesCopy)
  {
    v11 = typesCopy;
  }

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"type", v11];

  v13 = MEMORY[0x1E696AB28];
  v19[0] = stateCopy;
  v19[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [v13 andPredicateWithSubpredicates:v14];
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v17 = [PHQuery queryForType:@"PHSuggestion" withBasePredicate:v15 inLibrary:v16];

  [v17 setFetchOptions:optionsCopy];

  return v17;
}

+ (id)queryForSuggestionsWithTypes:(id)types options:(id)options
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AE18];
  if (types)
  {
    typesCopy = types;
  }

  else
  {
    typesCopy = MEMORY[0x1E695E0F0];
  }

  optionsCopy = options;
  typesCopy = [v4 predicateWithFormat:@"%K IN %@", @"type", typesCopy];
  v8 = MEMORY[0x1E696AB28];
  v14[0] = typesCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [v8 andPredicateWithSubpredicates:v9];
  v11 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v12 = [PHQuery queryForType:@"PHSuggestion" withBasePredicate:v10 inLibrary:v11];

  [v12 setFetchOptions:optionsCopy];

  return v12;
}

+ (id)queryForSuggestionsWithState:(unsigned __int16)state type:(unsigned __int16)type subtype:(unsigned __int16)subtype options:(id)options
{
  subtypeCopy = subtype;
  typeCopy = type;
  stateCopy = state;
  v20[2] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  stateCopy = [v9 predicateWithFormat:@"%K = %d", @"state", stateCopy];
  typeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"type", typeCopy];
  v20[0] = stateCopy;
  v20[1] = typeCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  if (subtypeCopy)
  {
    subtypeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"subtype", subtypeCopy];
    v15 = [v13 arrayByAddingObject:subtypeCopy];

    v13 = v15;
  }

  v16 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v13];
  v17 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v18 = [PHQuery queryForType:@"PHSuggestion" withBasePredicate:v16 inLibrary:v17];

  [v18 setFetchOptions:optionsCopy];

  return v18;
}

+ (id)queryForSuggestionsWithState:(unsigned __int16)state options:(id)options
{
  stateCopy = state;
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  stateCopy = [v5 predicateWithFormat:@"state = %d", stateCopy];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHSuggestion" withBasePredicate:stateCopy inLibrary:v8];

  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)queryForSuggestionsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v5 = [PHQuery queryForType:@"PHSuggestion" withBasePredicate:0 inLibrary:v4];

  [v5 setFetchOptions:optionsCopy];

  return v5;
}

+ (id)queryForShareParticipantWithPerson:(id)person options:(id)options
{
  v18[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  personCopy = person;
  objectID = [personCopy objectID];

  if (objectID)
  {
    objectID2 = [personCopy objectID];
    v18[0] = objectID2;
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

  photoLibrary = [personCopy photoLibrary];

  v13 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  photoLibrary2 = [v13 photoLibrary];
  v15 = [PHQuery queryForType:@"PHShareParticipant" withBasePredicate:v10 inLibrary:photoLibrary2];

  [v15 setFetchOptions:v13];

  return v15;
}

+ (id)queryForCurrentUserParticipantInShare:(id)share options:(id)options
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  shareCopy = share;
  v8 = [v5 predicateWithFormat:@"%K == YES", @"isCurrentUser"];
  v9 = MEMORY[0x1E696AE18];
  objectID = [shareCopy objectID];

  v11 = [v9 predicateWithFormat:@"%K == %@", @"share", objectID];

  v12 = MEMORY[0x1E696AB28];
  v18[0] = v8;
  v18[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v16 = [PHQuery queryForType:@"PHShareParticipant" withBasePredicate:v14 inLibrary:v15];

  [optionsCopy setFetchLimit:1];
  [v16 setFetchOptions:optionsCopy];

  return v16;
}

+ (id)queryForOwnerParticipantInShare:(id)share options:(id)options
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  shareCopy = share;
  v8 = [v5 predicateWithFormat:@"%K == %d", @"role", 1];
  v9 = MEMORY[0x1E696AE18];
  objectID = [shareCopy objectID];

  v11 = [v9 predicateWithFormat:@"%K == %@", @"share", objectID];

  v12 = MEMORY[0x1E696AB28];
  v18[0] = v8;
  v18[1] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v16 = [PHQuery queryForType:@"PHShareParticipant" withBasePredicate:v14 inLibrary:v15];

  [optionsCopy setFetchLimit:1];
  [v16 setFetchOptions:optionsCopy];

  return v16;
}

+ (id)queryForContributorForComment:(id)comment options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  commentCopy = comment;
  objectID = [commentCopy objectID];
  v9 = [v5 predicateWithFormat:@"%K CONTAINS %@", @"collectionShareComments", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:commentCopy];

  v11 = [PHQuery queryForType:@"PHShareParticipant" withBasePredicate:v9 inLibrary:v10];

  [optionsCopy setFetchLimit:1];
  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForShareParticipantsWithParticipantIDs:(id)ds options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  v7 = [v5 predicateWithFormat:@"%K IN %@", @"participantID", ds];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHShareParticipant" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)queryForShareParticipantsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  v7 = [self queryForType:@"PHShareParticipant" withLocalIdentifiers:identifiers options:optionsCopy];
  [v7 setFetchOptions:optionsCopy];

  return v7;
}

+ (id)queryForShareParticipantsInShare:(id)share options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  shareCopy = share;
  objectID = [shareCopy objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"share", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:shareCopy];

  v11 = [PHQuery queryForType:@"PHShareParticipant" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForPersonsWithNonNilUserFeedbackWithTypes:(id)types options:(id)options
{
  v4 = MEMORY[0x1E696AE18];
  if (types)
  {
    typesCopy = types;
  }

  else
  {
    typesCopy = MEMORY[0x1E695E0F0];
  }

  optionsCopy = options;
  typesCopy = [v4 predicateWithFormat:@"ANY userFeedbacks.feature IN %@", typesCopy];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHPerson" withBasePredicate:typesCopy inLibrary:v8];

  [v9 setFetchOptions:optionsCopy];
  [v9 _setCollectionFetchType:2];

  return v9;
}

+ (id)queryForFaceCropsForPerson:(id)person options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  personCopy = person;
  objectID = [personCopy objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"person", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:personCopy];

  v11 = [PHQuery queryForType:@"PHFaceCrop" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForFaceCropsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  v7 = [self queryForType:@"PHFaceCrop" withLocalIdentifiers:identifiers options:optionsCopy];
  [v7 setFetchOptions:optionsCopy];

  return v7;
}

+ (id)queryForFaceCropsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v5 = [PHQuery queryForType:@"PHFaceCrop" withBasePredicate:0 inLibrary:v4];

  [v5 setFetchOptions:optionsCopy];

  return v5;
}

+ (id)queryForInvalidMergeCandidatePersonsForPerson:(id)person options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  personCopy = person;
  objectID = [personCopy objectID];
  v9 = [v5 predicateWithFormat:@"invalidMergeCandidates CONTAINS %@", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:personCopy];

  v11 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForMergeCandidateWithConfidencePersonsForPerson:(id)person options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  personCopy = person;
  objectID = [personCopy objectID];
  v9 = [v5 predicateWithFormat:@"%K CONTAINS %@", @"mergeCandidatesWithConfidence", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:personCopy];

  v11 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForMergeCandidatePersonsForPerson:(id)person options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  personCopy = person;
  objectID = [personCopy objectID];
  v9 = [v5 predicateWithFormat:@"mergeCandidates CONTAINS %@", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:personCopy];

  v11 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForAssociatedPersonForFaceGroup:(id)group withOptions:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  groupCopy = group;
  objectID = [groupCopy objectID];
  v9 = [v5 predicateWithFormat:@"associatedFaceGroup = %@", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:groupCopy];

  v11 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForEmptyFaceGroupsWithOptions:(id)options
{
  v3 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  v5 = [v3 predicateWithFormat:@"%K.@count == 0", @"detectedFaces"];
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v7 = [PHQuery queryForType:@"PHFaceGroup" withBasePredicate:v5 inLibrary:v6];

  [v7 setFetchOptions:optionsCopy];

  return v7;
}

+ (id)queryForFaceGroupsWithFace:(id)face options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  faceCopy = face;
  objectID = [faceCopy objectID];
  v9 = [v5 predicateWithFormat:@"%K CONTAINS %@", @"detectedFaces", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:faceCopy];

  v11 = [PHQuery queryForType:@"PHFaceGroup" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForFaceGroupsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  v7 = [self queryForType:@"PHFaceGroup" withLocalIdentifiers:identifiers options:optionsCopy];
  [v7 setFetchOptions:optionsCopy];

  return v7;
}

+ (id)queryForFaceGroupsForPerson:(id)person options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  personCopy = person;
  objectID = [personCopy objectID];
  v9 = [v5 predicateWithFormat:@"ANY %K.%K = %@", @"detectedFaces", @"personForFace", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:personCopy];

  v11 = [PHQuery queryForType:@"PHFaceGroup" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForFaceGroupsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v5 = [PHQuery queryForType:@"PHFaceGroup" withBasePredicate:0 inLibrary:v4];

  [v5 setFetchOptions:optionsCopy];

  return v5;
}

+ (id)queryForAssetsForFaces:(id)faces options:(id)options
{
  v25 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = facesCopy;
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
        objectID = [v14 objectID];
        [array addObject:objectID];

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

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"detectedFaces", array, v20];
  v17 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:v11];
  v18 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v16 inLibrary:v17];

  [v18 setFetchOptions:optionsCopy];
  [v18 _setCollectionFetchType:2];

  return v18;
}

+ (id)queryForAssetsForFaceGroups:(id)groups options:(id)options
{
  v41 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = groupsCopy;
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

        objectID = [*(*(&v35 + 1) + 8 * i) objectID];
        [array addObject:objectID];
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v10);
  }

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"faceGroup", array];
  firstObject = [v8 firstObject];
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:firstObject];

  v29 = v14;
  v17 = [PHQuery queryForType:@"PHFace" withBasePredicate:v14 inLibrary:v16];
  v30 = optionsCopy;
  [v17 setFetchOptions:optionsCopy];
  [v17 _setCollectionFetchType:2];
  executeQuery = [v17 executeQuery];
  array2 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = executeQuery;
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

        objectID2 = [*(*(&v31 + 1) + 8 * j) objectID];
        [array2 addObject:objectID2];
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }

  v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"detectedFaces", array2];
  v27 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v26 inLibrary:v16];
  [v27 setFetchOptions:v30];
  [v27 _setCollectionFetchType:2];

  return v27;
}

+ (id)queryForKeyAssetForPerson:(id)person options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  personCopy = person;
  objectID = [personCopy objectID];
  v9 = [v5 predicateWithFormat:@"ANY %K.%K = %@", @"detectedFaces", @"personBeingKeyFace", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:personCopy];

  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 inLibrary:v10];

  return v11;
}

+ (id)queryForAssetsForPersons:(id)persons options:(id)options
{
  v25 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = personsCopy;
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
        objectID = [v14 objectID];
        [array addObject:objectID];

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

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K IN %@", @"detectedFaces", @"personForFace", array];
  v17 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:v11];
  v18 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v16 inLibrary:v17];

  [v18 setFetchOptions:optionsCopy];
  [v18 _setCollectionFetchType:2];

  return v18;
}

+ (id)queryForPersonForFaceCrop:(id)crop options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  cropCopy = crop;
  objectID = [cropCopy objectID];
  v9 = [v5 predicateWithFormat:@"faceCrops CONTAINS %@", objectID];

  photoLibrary = [cropCopy photoLibrary];

  v11 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  [v11 setMinimumVerifiedFaceCount:0];
  [v11 setMinimumUnverifiedFaceCount:0];
  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v11 object:0];
  v13 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v9 inLibrary:v12];

  [v13 setFetchOptions:v11];
  [v13 _setCollectionFetchType:2];

  return v13;
}

+ (id)queryForRejectedPersonsForFace:(id)face options:(id)options
{
  v6 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  faceCopy = face;
  objectID = [faceCopy objectID];
  v10 = [v6 predicateWithFormat:@"rejectedFaces CONTAINS %@", objectID];

  photoLibrary = [faceCopy photoLibrary];

  v12 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  [v12 setMinimumVerifiedFaceCount:0];
  [v12 setMinimumUnverifiedFaceCount:0];
  v13 = [self _queryForPersonsWithFaceRelationshipPredicate:v10 options:v12];

  return v13;
}

+ (id)queryForPersonsWithFaces:(id)faces options:(id)options
{
  v28 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  optionsCopy = options;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = facesCopy;
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
        objectID = [v14 objectID];
        [v8 addObject:objectID];

        objc_autoreleasePoolPop(v15);
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"detectedFaces", v8, v23];
  firstObject = [v9 firstObject];
  photoLibrary = [firstObject photoLibrary];
  v20 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  v21 = [self _queryForPersonsWithFaceRelationshipPredicate:v17 options:v20];

  return v21;
}

+ (id)queryForPersonWithFace:(id)face options:(id)options
{
  v6 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  faceCopy = face;
  objectID = [faceCopy objectID];
  v10 = [v6 predicateWithFormat:@"%K CONTAINS %@", @"detectedFaces", objectID];

  photoLibrary = [faceCopy photoLibrary];

  v12 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  v13 = [self _queryForPersonsWithFaceRelationshipPredicate:v10 options:v12];

  return v13;
}

+ (id)queryForPersonWithShareParticipant:(id)participant options:(id)options
{
  v18[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  participantCopy = participant;
  objectID = [participantCopy objectID];

  if (objectID)
  {
    objectID2 = [participantCopy objectID];
    v18[0] = objectID2;
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

  photoLibrary = [participantCopy photoLibrary];

  v13 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  photoLibrary2 = [v13 photoLibrary];
  v15 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v10 inLibrary:photoLibrary2];

  [v15 setFetchOptions:v13];

  return v15;
}

+ (id)queryForPersonsWithContactIdentifiers:(id)identifiers options:(id)options
{
  v4 = MEMORY[0x1E696AE18];
  if (identifiers)
  {
    identifiersCopy = identifiers;
  }

  else
  {
    identifiersCopy = MEMORY[0x1E695E0F0];
  }

  optionsCopy = options;
  identifiersCopy = [v4 predicateWithFormat:@"personUri IN (%@)", identifiersCopy];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHPerson" withBasePredicate:identifiersCopy inLibrary:v8];

  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)_queryForPersonsWithFaceRelationshipPredicate:(id)predicate options:(id)options
{
  optionsCopy = options;
  predicateCopy = predicate;
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v8 = [PHQuery queryForType:@"PHPerson" withBasePredicate:predicateCopy inLibrary:v7];

  [v8 setFetchOptions:optionsCopy];
  [v8 _setCollectionFetchType:2];

  return v8;
}

+ (id)queryForPersonsWithMdIDs:(id)ds options:(id)options
{
  v18[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  optionsCopy = options;
  if ([dsCopy count])
  {
    v7 = MEMORY[0x1E696AB28];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"mdID"];
    v18[0] = v8;
    dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN (%@)", @"mdID", dsCopy];
    v18[1] = dsCopy;
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

  v13 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v14 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v11 inLibrary:v13];

  [v14 setFetchOptions:optionsCopy];

  return v14;
}

+ (id)queryForPersonsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  v27 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  optionsCopy = options;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = identifiersCopy;
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
  v17 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v18 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v16 inLibrary:v17];

  [v18 setFetchOptions:optionsCopy];

  return v18;
}

+ (id)_queryForPersonsInAssetsWithObjectIDs:(id)ds withOptions:(id)options
{
  v4 = MEMORY[0x1E696AE18];
  if (ds)
  {
    dsCopy = ds;
  }

  else
  {
    dsCopy = MEMORY[0x1E695E0F0];
  }

  optionsCopy = options;
  dsCopy = [v4 predicateWithFormat:@"ANY %K.%K IN %@", @"detectedFaces", @"assetForFace", dsCopy];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHPerson" withBasePredicate:dsCopy inLibrary:v8];

  [v9 setFetchOptions:optionsCopy];
  [v9 _setCollectionFetchType:2];

  return v9;
}

+ (id)queryForPersonsInAssetsFetchResult:(id)result withOptions:(id)options
{
  optionsCopy = options;
  resultCopy = result;
  firstObject = [resultCopy firstObject];
  photoLibrary = [firstObject photoLibrary];
  v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  v11 = [self _assetIDsFromAssets:resultCopy anyAsset:0];

  v12 = [self _queryForPersonsInAssetsWithObjectIDs:v11 withOptions:v10];

  return v12;
}

+ (id)queryForPersonsInAssets:(id)assets withOptions:(id)options
{
  optionsCopy = options;
  assetsCopy = assets;
  firstObject = [assetsCopy firstObject];
  photoLibrary = [firstObject photoLibrary];
  v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  v11 = [assetsCopy _pl_map:&__block_literal_global_851];

  v12 = [self _queryForPersonsInAssetsWithObjectIDs:v11 withOptions:v10];

  return v12;
}

+ (id)queryForPersonsInAsset:(id)asset options:(id)options
{
  v13 = *MEMORY[0x1E69E9840];
  if (asset)
  {
    assetCopy = asset;
    v6 = MEMORY[0x1E695DEC8];
    optionsCopy = options;
    assetCopy2 = asset;
    v9 = [v6 arrayWithObjects:&assetCopy count:1];

    v10 = [self queryForPersonsInAssets:v9 withOptions:{optionsCopy, assetCopy, v13}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)queryForPersonsWithObjectIDs:(id)ds options:(id)options
{
  dsCopy = ds;
  optionsCopy = options;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  if (!dsCopy)
  {
    dsCopy = [MEMORY[0x1E695DEC8] array];
  }

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", dsCopy];
  v10 = [self queryForType:@"PHPerson" withBasePredicate:dsCopy seedOIDs:0 inLibrary:v8];

  [v10 setFetchOptions:optionsCopy];

  return v10;
}

+ (id)queryForPersonsWithQuestionType:(unsigned __int16)type options:(id)options
{
  typeCopy = type;
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  typeCopy = [v5 predicateWithFormat:@"questionType == %d", typeCopy];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHPerson" withBasePredicate:typeCopy inLibrary:v8];

  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)queryForPersonsWithType:(int64_t)type options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  if (type)
  {
    [v5 predicateWithFormat:@"type == %d", type];
  }

  else
  {
    [v5 predicateWithFormat:@"noindex:(type) == %d", 0];
  }
  v7 = ;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHPerson" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)queryForPersonsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v5 = [PHQuery queryForType:@"PHPerson" withBasePredicate:0 inLibrary:v4];

  [v5 setFetchOptions:optionsCopy];

  return v5;
}

+ (id)queryForKeyFaceOnPerson:(id)person options:(id)options
{
  optionsCopy = options;
  personCopy = person;
  photoLibrary = [personCopy photoLibrary];
  v8 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  [v8 setIncludeNonvisibleFaces:0];
  v9 = MEMORY[0x1E696AE18];
  objectID = [personCopy objectID];
  v11 = [v9 predicateWithFormat:@"%K == %@", @"personBeingKeyFace", objectID];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v8 object:personCopy];

  v13 = [PHQuery queryForType:@"PHFace" withBasePredicate:v11 inLibrary:v12];

  [v13 setFetchOptions:v8];

  return v13;
}

+ (id)queryForRejectedFacesOnPerson:(id)person options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  personCopy = person;
  objectID = [personCopy objectID];
  v9 = [v5 predicateWithFormat:@"rejectedPersons CONTAINS %@", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:personCopy];

  v11 = [PHQuery queryForType:@"PHFace" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForFacesOnFaceCrop:(id)crop options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  cropCopy = crop;
  objectID = [cropCopy objectID];
  v9 = [v5 predicateWithFormat:@"faceCrop == %@", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:cropCopy];

  v11 = [PHQuery queryForType:@"PHFace" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForFacesOnAssetWithFace:(id)face options:(id)options
{
  v30[2] = *MEMORY[0x1E69E9840];
  faceCopy = face;
  optionsCopy = options;
  v7 = MEMORY[0x1E696AB28];
  v8 = MEMORY[0x1E696AE18];
  objectID = [faceCopy objectID];
  v10 = [v8 predicateWithFormat:@"%K CONTAINS %@", @"assetForFace.detectedFaces", objectID];
  v30[0] = v10;
  v11 = MEMORY[0x1E696AE18];
  objectID2 = [faceCopy objectID];
  v13 = [v11 predicateWithFormat:@"%K CONTAINS %@", @"assetForTemporalDetectedFaces.temporalDetectedFaces", objectID2];
  v30[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v15 = [v7 orPredicateWithSubpredicates:v14];

  if (optionsCopy)
  {
    v16 = [optionsCopy includeMediaAnalysisProcessingRangeTypes] & 1;
  }

  else
  {
    v16 = 1;
  }

  includeMediaAnalysisProcessingRangeTypes = [optionsCopy includeMediaAnalysisProcessingRangeTypes];
  if (v16 && (includeMediaAnalysisProcessingRangeTypes & 2) != 0)
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

  if ((includeMediaAnalysisProcessingRangeTypes & 2) != 0)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > 0", @"duration"];
    goto LABEL_11;
  }

LABEL_16:
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:4120 description:{@"Invalid parameter not satisfying: %@", @"durationPredicate != nil"}];

  v19 = 0;
LABEL_13:
  v20 = MEMORY[0x1E696AB28];
  v29[0] = v15;
  v29[1] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];

  v23 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:faceCopy];
  v24 = [PHQuery queryForType:@"PHFace" withBasePredicate:v22 inLibrary:v23];

  [v24 setFetchOptions:optionsCopy];
  [v24 _setCollectionFetchType:2];

  return v24;
}

+ (id)queryForFacesWithVuObservationIDs:(id)ds options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  if (ds)
  {
    dsCopy = ds;
  }

  else
  {
    dsCopy = MEMORY[0x1E695E0F0];
  }

  optionsCopy = options;
  dsCopy = [v5 predicateWithFormat:@"%K IN %@", @"vuObservationID", dsCopy];
  photoLibrary = [optionsCopy photoLibrary];
  v10 = [self queryForType:@"PHFace" withBasePredicate:dsCopy inLibrary:photoLibrary];

  [v10 setFetchOptions:optionsCopy];

  return v10;
}

+ (id)queryForFacesWithLocalIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  v7 = [self queryForType:@"PHFace" withLocalIdentifiers:identifiers options:optionsCopy];
  [v7 setFetchOptions:optionsCopy];

  return v7;
}

+ (id)queryForKeyFaceForFaceGroup:(id)group options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  groupCopy = group;
  objectID = [groupCopy objectID];
  v9 = [v5 predicateWithFormat:@"faceGroupBeingKeyFace == %@", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:groupCopy];

  v11 = [PHQuery queryForType:@"PHFace" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForFacesInFaceGroup:(id)group options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  groupCopy = group;
  objectID = [groupCopy objectID];
  v9 = [v5 predicateWithFormat:@"faceGroup = %@", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:groupCopy];

  v11 = [PHQuery queryForType:@"PHFace" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForFacesForPerson:(id)person options:(id)options
{
  personCopy = person;
  optionsCopy = options;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![optionsCopy includeMediaAnalysisProcessingRangeTypes] || (objc_msgSend(optionsCopy, "includeMediaAnalysisProcessingRangeTypes") & 1) != 0)
  {
    v8 = MEMORY[0x1E696AE18];
    objectID = [personCopy objectID];
    v10 = [v8 predicateWithFormat:@"%K = %@", @"personForFace", objectID];
    [v7 addObject:v10];
  }

  if (([optionsCopy includeMediaAnalysisProcessingRangeTypes] & 2) != 0)
  {
    v11 = MEMORY[0x1E696AE18];
    objectID2 = [personCopy objectID];
    v13 = [v11 predicateWithFormat:@"%K = %@", @"personForTemporalDetectedFaces", objectID2];
    [v7 addObject:v13];
  }

  v14 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v7];
  v15 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:personCopy];
  v16 = [PHQuery queryForType:@"PHFace" withBasePredicate:v14 inLibrary:v15];

  [v16 setFetchOptions:optionsCopy];

  return v16;
}

+ (id)queryForFacesInAssets:(id)assets options:(id)options
{
  optionsCopy = options;
  fetchedObjectIDs = [assets fetchedObjectIDs];
  if (fetchedObjectIDs)
  {
    v7 = fetchedObjectIDs;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!optionsCopy || ([optionsCopy includeMediaAnalysisProcessingRangeTypes] & 1) != 0)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"assetForFace", v7];
    [v8 addObject:v9];
  }

  if (([optionsCopy includeMediaAnalysisProcessingRangeTypes] & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"assetForTemporalDetectedFaces", v7];
    [v8 addObject:v10];
  }

  v11 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v8];
  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v13 = [PHQuery queryForType:@"PHFace" withBasePredicate:v11 inLibrary:v12];

  [v13 setFetchOptions:optionsCopy];

  return v13;
}

+ (id)queryForFacesInAsset:(id)asset options:(id)options
{
  assetCopy = asset;
  optionsCopy = options;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!optionsCopy || ([optionsCopy includeMediaAnalysisProcessingRangeTypes] & 1) != 0)
  {
    v8 = MEMORY[0x1E696AE18];
    objectID = [assetCopy objectID];
    v10 = [v8 predicateWithFormat:@"%K = %@", @"assetForFace", objectID];
    [v7 addObject:v10];
  }

  if (([optionsCopy includeMediaAnalysisProcessingRangeTypes] & 2) != 0)
  {
    v11 = MEMORY[0x1E696AE18];
    objectID2 = [assetCopy objectID];
    v13 = [v11 predicateWithFormat:@"%K = %@", @"assetForTemporalDetectedFaces", objectID2];
    [v7 addObject:v13];
  }

  v14 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v7];
  v15 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:assetCopy];
  v16 = [PHQuery queryForType:@"PHFace" withBasePredicate:v14 inLibrary:v15];

  [v16 setFetchOptions:optionsCopy];

  return v16;
}

+ (id)queryForSingletonFacesWithOptions:(id)options
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  v6 = [v4 predicateWithFormat:@"%K == NULL", @"faceGroup"];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL", @"personForFace", v6];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v9 = [v3 andPredicateWithSubpredicates:v8];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v11 = [PHQuery queryForType:@"PHFace" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];
  [v11 _setCollectionFetchType:2];

  return v11;
}

+ (id)queryForFacesWithOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy includeMediaAnalysisProcessingRangeTypes] == 1)
  {
    v4 = @"%K == 0.0";
LABEL_5:
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:v4, @"duration"];
    goto LABEL_7;
  }

  if ([optionsCopy includeMediaAnalysisProcessingRangeTypes] == 2)
  {
    v4 = @"%K > 0.0";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v7 = [PHQuery queryForType:@"PHFace" withBasePredicate:v5 inLibrary:v6];

  [v7 setFetchOptions:optionsCopy];

  return v7;
}

+ (id)queryForMomentListsWithSubType:(int64_t)type options:(id)options
{
  v19[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  switch(type)
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
      [optionsCopy hasAnySortDescriptors];
      v13 = 0;
      v8 = 0;
      goto LABEL_11;
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  if (([optionsCopy hasAnySortDescriptors] & 1) == 0 && v13)
  {
    v14 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v6];

    [v14 setInternalSortDescriptors:v13];
    optionsCopy = v14;
  }

LABEL_11:
  [v8 setFetchOptions:optionsCopy];
  v15 = v8;

  return v8;
}

+ (id)queryForMomentListsWithSubType:(int64_t)type containingMoment:(id)moment
{
  v26[2] = *MEMORY[0x1E69E9840];
  momentCopy = moment;
  v6 = momentCopy;
  if (type == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = MEMORY[0x1E696AE18];
    objectID = [momentCopy objectID];
    v9 = [v16 predicateWithFormat:@"(kind == %d) AND (moments CONTAINS %@)", 1, objectID];

    v18 = MEMORY[0x1E696AE18];
    objectID2 = [v6 objectID];
    v14 = [v18 predicateWithFormat:@"(kind == %d) AND (moments CONTAINS %@)", 2, objectID2];

    v20 = MEMORY[0x1E696AB28];
    v26[0] = v9;
    v26[1] = v14;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v22 = [v20 orPredicateWithSubpredicates:v21];
    photoLibrary = [v6 photoLibrary];
    v11 = [PHQuery queryForType:@"PHMomentList" withBasePredicate:v22 inLibrary:photoLibrary];
  }

  else if (type == 2)
  {
    v12 = MEMORY[0x1E696AE18];
    objectID3 = [momentCopy objectID];
    v14 = [v12 predicateWithFormat:@"(kind == %d) AND (SUBQUERY(childPhotosHighlights, $cph, SUBQUERY($cph.childPhotosHighlights, $ccph, ANY $ccph.moments == %@).@count > 0).@count > 0)", 2, objectID3];

    photoLibrary2 = [v6 photoLibrary];
    v11 = [PHQuery queryForType:@"PHMomentList" withBasePredicate:v14 inLibrary:photoLibrary2];

    v9 = 0;
  }

  else
  {
    if (type == 1)
    {
      v7 = MEMORY[0x1E696AE18];
      objectID4 = [momentCopy objectID];
      v9 = [v7 predicateWithFormat:@"(kind == %d) AND (SUBQUERY(childPhotosHighlights, $cph, ANY $cph.moments == %@).@count > 0)", 1, objectID4];

      photoLibrary3 = [v6 photoLibrary];
      v11 = [PHQuery queryForType:@"PHMomentList" withBasePredicate:v9 inLibrary:photoLibrary3];
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

+ (id)queryForTopLevelCollectionsMatchingPredicate:(id)predicate options:(id)options
{
  v19[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  optionsCopy = options;
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  albumRootFolderObjectID = [v7 albumRootFolderObjectID];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"parentFolder", albumRootFolderObjectID];
  v10 = MEMORY[0x1E696AB28];
  v19[0] = v9;
  v19[1] = predicateCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"parentFolder" ascending:1];
  if (([optionsCopy hasAnySortDescriptors] & 1) == 0 && v13)
  {
    v14 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v7];

    v18 = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [v14 setInternalSortDescriptors:v15];

    optionsCopy = v14;
  }

  v16 = [PHQuery queryForType:@"PHCollection" withBasePredicate:v12 inLibrary:v7];
  [v16 setFetchOptions:optionsCopy];

  return v16;
}

+ (id)queryForTopLevelUserCollectionsWithOptions:(id)options
{
  optionsCopy = options;
  v5 = +[PHCollection predicateForUserCollections];
  v6 = [self queryForTopLevelCollectionsMatchingPredicate:v5 options:optionsCopy];

  return v6;
}

+ (id)_queryForRootCollectionListWithRootFolder:(id)folder options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  folder = [v5 predicateWithFormat:@"self = %@", folder];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHCollectionList" withBasePredicate:folder inLibrary:v8];

  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)queryForRootProjectCollectionListWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  projectAlbumRootFolderObjectID = [v5 projectAlbumRootFolderObjectID];

  v7 = [self _queryForRootCollectionListWithRootFolder:projectAlbumRootFolderObjectID options:optionsCopy];

  return v7;
}

+ (id)queryForRootAlbumCollectionListWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  albumRootFolderObjectID = [v5 albumRootFolderObjectID];

  v7 = [self _queryForRootCollectionListWithRootFolder:albumRootFolderObjectID options:optionsCopy];

  return v7;
}

+ (id)fetchRootFolderIDForAlbumKind:(int)kind photoLibrary:(id)library
{
  v4 = *&kind;
  v37 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  photoLibraryForCurrentQueueQoS = [libraryCopy photoLibraryForCurrentQueueQoS];
  v7 = MEMORY[0x1E695D5E0];
  entityName = [MEMORY[0x1E69BE558] entityName];
  v9 = [v7 fetchRequestWithEntityName:entityName];

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
  v11 = photoLibraryForCurrentQueueQoS;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v22 = &v23;
  [v11 performBlockAndWait:v18];
  v13 = v30[5];
  if (v13)
  {
    firstObject = [v13 firstObject];
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

    firstObject = 0;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return firstObject;
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

+ (id)queryForCollectionListsWithType:(int64_t)type subtype:(int64_t)subtype options:(id)options
{
  v29 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v9 = _fetchTypeForCollectionListTypeAndSubtype(type);
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  if (type == 3)
  {
    switch(subtype)
    {
      case 0x7FFFFFFFFFFFFFFFLL:
        if ([optionsCopy includeFavoriteMemoriesCollectionList])
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
        includeFavoriteMemoriesCollectionList = [optionsCopy includeFavoriteMemoriesCollectionList];
        if (subtype != 1000000202 || !includeFavoriteMemoriesCollectionList)
        {
          v23 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v26 = 3;
            v27 = 1024;
            subtypeCopy = subtype;
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
    v18 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
    v12 = [PHQuery queryForType:v9 withBasePredicate:v11 inLibrary:v18];

    v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"kind" ascending:1];
    if (([optionsCopy hasAnySortDescriptors] & 1) == 0 && v19)
    {
      v20 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v10];

      v24 = v19;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      [v20 setInternalSortDescriptors:v21];

      optionsCopy = v20;
    }

    [v12 setFetchOptions:optionsCopy];

    goto LABEL_23;
  }

  if (type != 2)
  {
    v12 = [self queryForMomentListsWithSubType:subtype options:optionsCopy];
    goto LABEL_24;
  }

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind IN %@", &unk_1F102E1E0];
  v12 = [PHQuery queryForType:v9 withBasePredicate:v11 inLibrary:v10];
  [v12 setFetchOptions:optionsCopy];
LABEL_23:

LABEL_24:

  return v12;
}

+ (id)queryForCollectionListsWithType:(int64_t)type localIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  identifiersCopy = identifiers;
  v10 = _fetchTypeForCollectionListTypeAndSubtype(type);
  v11 = [self queryForType:v10 withLocalIdentifiers:identifiersCopy options:optionsCopy];

  return v11;
}

+ (id)queryForCollectionListContainingCollection:(id)collection options:(id)options
{
  v28[2] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  optionsCopy = options;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [collectionCopy assetCollectionType] == 3)
  {
    v7 = MEMORY[0x1E696AE18];
    objectID = [collectionCopy objectID];
    v9 = [v7 predicateWithFormat:@"SUBQUERY(childPhotosHighlights, $cph, ANY $cph.moments == %@).@count > 0", objectID];

    v10 = MEMORY[0x1E696AE18];
    objectID2 = [collectionCopy objectID];
    photoLibrary2 = [v10 predicateWithFormat:@"SUBQUERY(childPhotosHighlights, $cph, SUBQUERY($cph.childPhotosHighlights, $ccph, ANY $ccph.moments == %@).@count > 0).@count > 0", objectID2];

    v13 = MEMORY[0x1E696AB28];
    v28[0] = v9;
    v28[1] = photoLibrary2;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v15 = [v13 orPredicateWithSubpredicates:v14];
    photoLibrary = [collectionCopy photoLibrary];
    v17 = [PHQuery queryForType:@"PHMomentList" withBasePredicate:v15 inLibrary:photoLibrary];

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = MEMORY[0x1E696AE18];
    objectID3 = [collectionCopy objectID];
    v9 = [v20 predicateWithFormat:@"childCollections CONTAINS %@", objectID3];

    if (([optionsCopy includeRootFolder] & 1) == 0)
    {
      v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT kind IN %@", &unk_1F102E1C8];
      v23 = MEMORY[0x1E696AB28];
      v27[0] = v9;
      v27[1] = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
      v25 = [v23 andPredicateWithSubpredicates:v24];

      v9 = v25;
    }

    photoLibrary2 = [collectionCopy photoLibrary];
    v17 = [PHQuery queryForType:@"PHCollectionList" withBasePredicate:v9 inLibrary:photoLibrary2];
LABEL_10:

    if (!optionsCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v18 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  photoLibrary3 = [collectionCopy photoLibrary];
  v17 = [PHQuery queryForType:@"PHCollectionList" withBasePredicate:v18 inLibrary:photoLibrary3];

  if (optionsCopy)
  {
LABEL_11:
    [v17 setFetchOptions:optionsCopy];
  }

LABEL_12:

  return v17;
}

+ (id)queryForCollectionsInCollectionList:(id)list options:(id)options
{
  v28[2] = *MEMORY[0x1E69E9840];
  listCopy = list;
  optionsCopy = options;
  if ([listCopy collectionListType] == 1)
  {
    v7 = [PHQuery queryForMomentsInMomentList:listCopy options:optionsCopy];
    v8 = PHQueryForCollectionsInMomentList;
LABEL_3:
    v9 = _Block_copy(v8);
    goto LABEL_4;
  }

  if ([listCopy collectionListType] == 3 && objc_msgSend(listCopy, "collectionListSubtype") == 200)
  {
    v7 = [PHQuery queryForAssetCollectionsWithType:1 subtype:3 options:optionsCopy];
    v8 = PHQueryForCollectionsInSmartFolderEvents;
    goto LABEL_3;
  }

  if ([listCopy collectionListType] == 3 && objc_msgSend(listCopy, "collectionListSubtype") == 201)
  {
    v7 = [PHQuery queryForAssetCollectionsWithType:1 subtype:4 options:optionsCopy];
    v8 = PHQueryForCollectionsInSmartFolderFaces;
    goto LABEL_3;
  }

  if ([listCopy collectionListType] == 3 && objc_msgSend(listCopy, "collectionListSubtype") == 1000000202)
  {
    v11 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:listCopy];
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"favorite != 0 AND rejected == 0"];
    sharingFilter = [optionsCopy sharingFilter];
    if (sharingFilter == 2)
    {
      v18 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    }

    else
    {
      if (sharingFilter == 1)
      {
        [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"sharingComposition", 1];
      }

      else
      {
        if (sharingFilter)
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
    if (([optionsCopy hasAnySortDescriptors] & 1) == 0)
    {
      photoLibrary = [listCopy photoLibrary];
      v24 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

      v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v27 = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];

      [v24 setInternalSortDescriptors:v26];
      optionsCopy = v24;
    }

    [v7 setFetchOptions:optionsCopy];
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
  objectID = [listCopy objectID];
  v10 = [v14 predicateWithFormat:@"parentFolder = %@", objectID];

  v9 = _Block_copy(PHQueryForCollectionsInFolder);
LABEL_19:
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:listCopy];
  v7 = [PHQuery queryForType:@"PHCollection" withBasePredicate:v10 inLibrary:v16];

  if (optionsCopy)
  {
    [v7 setFetchOptions:optionsCopy];
  }

LABEL_21:
  [v7 _setContainerCollection:listCopy];
  [v7 _setIdentificationBlock:v9];

  return v7;
}

+ (id)queryForInFlightJobCountWithConfiguration:(id)configuration options:(id)options
{
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  configurationCopy = configuration;
  v9 = [v6 predicateWithFormat:@"%K == %hu", @"state", 1];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %hu", @"state", 2];
  v11 = MEMORY[0x1E696AB28];
  predicateForAcknowledgeableJobs = [MEMORY[0x1E69BE270] predicateForAcknowledgeableJobs];
  v17[0] = predicateForAcknowledgeableJobs;
  v17[1] = v9;
  v17[2] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v14 = [v11 orPredicateWithSubpredicates:v13];

  v15 = [self _queryForAssetResourceUploadJobsWithOptions:optionsCopy configuration:configurationCopy predicate:v14];

  return v15;
}

+ (id)queryForAcknowledgeableAssetResourceUploadJobsWithConfiguration:(id)configuration options:(id)options
{
  v6 = MEMORY[0x1E69BE270];
  optionsCopy = options;
  configurationCopy = configuration;
  predicateForAcknowledgeableJobs = [v6 predicateForAcknowledgeableJobs];
  v10 = [self _queryForAssetResourceUploadJobsWithOptions:optionsCopy configuration:configurationCopy predicate:predicateForAcknowledgeableJobs];

  return v10;
}

+ (id)queryForAssetResourceUploadJobsWithConfiguration:(id)configuration states:(id)states options:(id)options
{
  v8 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  configurationCopy = configuration;
  states = [v8 predicateWithFormat:@"%K IN %@", @"state", states];
  v12 = [self _queryForAssetResourceUploadJobsWithOptions:optionsCopy configuration:configurationCopy predicate:states];

  return v12;
}

+ (id)_queryForAssetResourceUploadJobsWithOptions:(id)options configuration:(id)configuration predicate:(id)predicate
{
  v19[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  predicateCopy = predicate;
  configurationCopy = configuration;
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v11 = MEMORY[0x1E696AE18];
  objectID = [configurationCopy objectID];

  v13 = [v11 predicateWithFormat:@"configuration = %@", objectID];

  if (predicateCopy)
  {
    v14 = MEMORY[0x1E696AB28];
    v19[0] = v13;
    v19[1] = predicateCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v16 = [v14 andPredicateWithSubpredicates:v15];

    v17 = [PHQuery queryForType:@"PHAssetResourceUploadJob" withBasePredicate:v16 inLibrary:v10];

    if (!optionsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = [PHQuery queryForType:@"PHAssetResourceUploadJob" withBasePredicate:v13 inLibrary:v10];
  if (optionsCopy)
  {
LABEL_3:
    [v17 setFetchOptions:optionsCopy];
  }

LABEL_4:

  return v17;
}

+ (id)queryForRetryableAssetResourceUploadJobsWithConfiguration:(id)configuration options:(id)options
{
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  configurationCopy = configuration;
  v9 = [v6 predicateWithFormat:@"%K == %hu", @"state", 3];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %hu", @"clientStatus", 0];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"attemptCount", 0];
  v12 = MEMORY[0x1E696AB28];
  v17[0] = v9;
  v17[1] = v10;
  v17[2] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = [self _queryForAssetResourceUploadJobsWithOptions:optionsCopy configuration:configurationCopy predicate:v14];

  return v15;
}

+ (id)queryForAssetResourceUploadJobConfigurationsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  identifiers = [v5 predicateWithFormat:@"uuid IN (%@)", identifiers];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHAssetResourceUploadJobConfiguration" withBasePredicate:identifiers inLibrary:v8];
  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)queryForAssetResourceUploadJobConfigurationsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v5 = [PHQuery queryForType:@"PHAssetResourceUploadJobConfiguration" withBasePredicate:0 inLibrary:v4];
  [v5 setFetchOptions:optionsCopy];

  return v5;
}

+ (id)queryForMomentsContainingAssetsWithOIDs:(id)ds options:(id)options
{
  v4 = MEMORY[0x1E696AE18];
  if (ds)
  {
    dsCopy = ds;
  }

  else
  {
    dsCopy = MEMORY[0x1E695E0F0];
  }

  optionsCopy = options;
  dsCopy = [v4 predicateWithFormat:@"ANY assets IN %@", dsCopy];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHMoment" withBasePredicate:dsCopy inLibrary:v8];

  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)queryForMomentsContainingAssetsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  v23 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  optionsCopy = options;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = identifiersCopy;
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
  v15 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v16 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v14 inLibrary:v15];

  [v16 setFetchOptions:optionsCopy];

  return v16;
}

+ (id)queryForMomentsForPersonsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  if (identifiersCopy)
  {
    v7 = identifiersCopy;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  if (!optionsCopy)
  {
    optionsCopy = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:0 photoLibrary:v8];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__36903;
  v26 = __Block_byref_object_dispose__36904;
  v27 = 0;
  photoLibrary = [v8 photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__PHQuery_queryForMomentsForPersonsWithLocalIdentifiers_options___block_invoke;
  v17[3] = &unk_1E75AA158;
  v11 = v7;
  v18 = v11;
  v12 = optionsCopy;
  v19 = v12;
  v13 = managedObjectContext;
  v20 = v13;
  v21 = &v22;
  [photoLibrary performBlockAndWait:v17];
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

+ (id)queryForMomentsForFacesWithLocalIdentifiers:(id)identifiers options:(id)options
{
  v26 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = identifiersCopy;
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
          [array addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  verifiedPersonTypes = [optionsCopy verifiedPersonTypes];
  if (verifiedPersonTypes)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(assets, $a, SUBQUERY($a.%K, $f, $f.%K IN %@ AND $f.%K IN %@).@count != 0).@count != 0", @"detectedFaces", @"uuid", array, @"personForFace.verifiedType", verifiedPersonTypes];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(assets, $a, SUBQUERY($a.%K, $f, $f.%K IN %@).@count != 0).@count != 0", @"detectedFaces", @"uuid", array, v19, v20];
  }
  v15 = ;
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v17 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v15 inLibrary:v16];

  [v17 setFetchOptions:optionsCopy];
  [v17 _setCollectionFetchType:2];

  return v17;
}

+ (id)queryForMomentsInMomentList:(id)list options:(id)options
{
  v18 = *MEMORY[0x1E69E9840];
  listCopy = list;
  optionsCopy = options;
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:listCopy];
  if ([listCopy collectionListSubtype] == 1)
  {
    v8 = MEMORY[0x1E696AE18];
    objectID = [listCopy objectID];
    [v8 predicateWithFormat:@"highlight.parentPhotosHighlight == %@", objectID];
    goto LABEL_5;
  }

  if ([listCopy collectionListSubtype] == 2)
  {
    v10 = MEMORY[0x1E696AE18];
    objectID = [listCopy objectID];
    [v10 predicateWithFormat:@"highlight.parentPhotosHighlight.parentPhotosHighlight == %@", objectID];
    v11 = LABEL_5:;
    v12 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v11 inLibrary:v7];

    if (!optionsCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported collectionListSubtype: %li for querying moments within a moment list.", objc_msgSend(listCopy, "collectionListSubtype")];
  v15 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v17 = v14;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v12 = 0;
  if (optionsCopy)
  {
LABEL_6:
    [v12 setFetchOptions:optionsCopy];
  }

LABEL_7:

  return v12;
}

+ (id)queryForMomentsInPhotosHighlight:(id)highlight
{
  v14[2] = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  photoLibrary = [highlightCopy photoLibrary];
  v5 = MEMORY[0x1E696AE18];
  objectID = [highlightCopy objectID];
  v7 = [v5 predicateWithFormat:@"highlight = %@", objectID];

  LODWORD(objectID) = [highlightCopy isSharingSuggestion];
  if (objectID)
  {
    v8 = MEMORY[0x1E696AB28];
    v14[0] = v7;
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY assets.%K IN %@", @"libraryScopeShareState", &unk_1F102E1B0];
    v14[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v11 = [v8 andPredicateWithSubpredicates:v10];

    v7 = v11;
  }

  v12 = [PHQuery queryForType:@"PHMoment" withBasePredicate:v7 inLibrary:photoLibrary];

  return v12;
}

+ (id)queryForChildrenDayGroupHighlightsForPhotosHighlight:(id)highlight options:(id)options
{
  optionsCopy = options;
  v6 = MEMORY[0x1E696AE18];
  highlightCopy = highlight;
  objectID = [highlightCopy objectID];
  v9 = [v6 predicateWithFormat:@"parentDayGroupPhotosHighlight = %@", objectID];
  photoLibrary = [highlightCopy photoLibrary];

  v11 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v9 inLibrary:photoLibrary];

  if (optionsCopy)
  {
    [v11 setFetchOptions:optionsCopy];
  }

  return v11;
}

+ (id)queryForParentDayGroupHighlightForPhotosHighlight:(id)highlight options:(id)options
{
  optionsCopy = options;
  v6 = MEMORY[0x1E696AE18];
  highlightCopy = highlight;
  objectID = [highlightCopy objectID];
  v9 = [v6 predicateWithFormat:@"ANY childDayGroupPhotosHighlights = %@", objectID];
  photoLibrary = [highlightCopy photoLibrary];

  v11 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v9 inLibrary:photoLibrary];

  if (optionsCopy)
  {
    [v11 setFetchOptions:optionsCopy];
  }

  return v11;
}

+ (id)queryForChildrenHighlightsForPhotosHighlight:(id)highlight options:(id)options
{
  optionsCopy = options;
  v6 = MEMORY[0x1E696AE18];
  highlightCopy = highlight;
  objectID = [highlightCopy objectID];
  v9 = [v6 predicateWithFormat:@"parentPhotosHighlight = %@", objectID];
  photoLibrary = [highlightCopy photoLibrary];

  v11 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v9 inLibrary:photoLibrary];

  if (optionsCopy)
  {
    [v11 setFetchOptions:optionsCopy];
  }

  return v11;
}

+ (id)queryForParentHighlightsForPhotosHighlights:(id)highlights options:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  highlightsCopy = highlights;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  photoLibrary = [optionsCopy photoLibrary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = highlightsCopy;
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
        if (!photoLibrary)
        {
          photoLibrary = [*(*(&v19 + 1) + 8 * i) photoLibrary];
        }

        objectID = [v14 objectID];
        [array addObject:objectID];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY childPhotosHighlights IN %@", array];
  v17 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v16 inLibrary:photoLibrary];

  if (optionsCopy)
  {
    [v17 setFetchOptions:optionsCopy];
  }

  return v17;
}

+ (id)queryForParentHighlightForPhotosHighlight:(id)highlight options:(id)options
{
  optionsCopy = options;
  v6 = MEMORY[0x1E696AE18];
  highlightCopy = highlight;
  objectID = [highlightCopy objectID];
  v9 = [v6 predicateWithFormat:@"ANY childPhotosHighlights = %@", objectID];
  photoLibrary = [highlightCopy photoLibrary];

  v11 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v9 inLibrary:photoLibrary];

  if (optionsCopy)
  {
    [v11 setFetchOptions:optionsCopy];
  }

  return v11;
}

+ (id)queryForPhotosHighlightsContainingMoments:(id)moments
{
  v21 = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = momentsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    photoLibrary = 0;
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
        objectID = [v11 objectID];
        [array addObject:objectID];

        if (!photoLibrary)
        {
          photoLibrary = [v11 photoLibrary];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    photoLibrary = 0;
  }

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY moments IN %@", array];
  v14 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v13 inLibrary:photoLibrary];

  return v14;
}

+ (id)queryForMomentsBackingSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  photoLibrary = [suggestionCopy photoLibrary];
  predicateForAllMomentsFromRepresentativeAssets = [suggestionCopy predicateForAllMomentsFromRepresentativeAssets];

  v6 = [PHQuery queryForType:@"PHMoment" withBasePredicate:predicateForAllMomentsFromRepresentativeAssets inLibrary:photoLibrary];

  [v6 _setCollectionFetchType:2];

  return v6;
}

+ (id)queryForMomentsBackingMemory:(id)memory
{
  memoryCopy = memory;
  photoLibrary = [memoryCopy photoLibrary];
  predicateForAllMomentsFromRepresentativeAssets = [memoryCopy predicateForAllMomentsFromRepresentativeAssets];

  v6 = [PHQuery queryForType:@"PHMoment" withBasePredicate:predicateForAllMomentsFromRepresentativeAssets inLibrary:photoLibrary];

  [v6 _setCollectionFetchType:2];

  return v6;
}

+ (id)queryForMomentsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v5 = [PHQuery queryForType:@"PHMoment" withBasePredicate:0 inLibrary:v4];

  if (optionsCopy)
  {
    [v5 setFetchOptions:optionsCopy];
  }

  return v5;
}

+ (id)queryForAssetCollectionsWithObjectIDs:(id)ds options:(id)options
{
  dsCopy = ds;
  optionsCopy = options;
  if (dsCopy)
  {
    v8 = dsCopy;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v8];
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v11 = [self queryForType:@"PHAssetCollection" withBasePredicate:v9 inLibrary:v10];

  if (optionsCopy)
  {
    [v11 setFetchOptions:optionsCopy];
  }

  return v11;
}

+ (id)queryForAssetCollectionsWithType:(int64_t)type subtype:(int64_t)subtype options:(id)options
{
  v62[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (type == 1 && subtype == 101)
  {
    clientIsAllowedToFetchCollectionShares = [MEMORY[0x1E69BF2F0] clientIsAllowedToFetchCollectionShares];
    if (clientIsAllowedToFetchCollectionShares)
    {
      subtype = 101;
    }

    else
    {
      subtype = 102;
    }

    if (clientIsAllowedToFetchCollectionShares)
    {
      type = 1;
    }

    else
    {
      type = 12;
    }
  }

  v9 = _fetchTypeForAssetCollectionTypeAndSubtype(type, subtype);
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  if (v9)
  {
    v11 = optionsCopy;
    v12 = dyld_program_sdk_at_least();
    if (subtype)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      subtypeCopy = subtype;
    }

    else
    {
      subtypeCopy = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (type <= 0xC)
    {
      if (((1 << type) & 0x798) != 0)
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

      if (type == 6)
      {
        if (subtypeCopy <= 1000000302)
        {
          if (subtypeCopy == 1000000301)
          {
            [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %d", 0, v54];
            goto LABEL_118;
          }

          if (subtypeCopy == 1000000302)
          {
            v24 = MEMORY[0x1E696AE18];
            v25 = 1;
            goto LABEL_117;
          }
        }

        else
        {
          switch(subtypeCopy)
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
        subtypeCopy2 = subtypeCopy;
LABEL_82:
        _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_ERROR, "Unsupported fetch for asset collections with type %d and subtype %d", buf, 0xEu);
        goto LABEL_83;
      }

      if (type == 12)
      {
        switch(subtypeCopy)
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
        subtypeCopy2 = subtypeCopy;
        goto LABEL_82;
      }
    }

    if (type != 2)
    {
      if (type != 1)
      {
        goto LABEL_164;
      }

      if (subtypeCopy > 99)
      {
        if (subtypeCopy <= 1000000000)
        {
          if (subtypeCopy == 100)
          {
            v24 = MEMORY[0x1E696AE18];
            v25 = 1500;
            goto LABEL_117;
          }

          if (subtypeCopy == 101)
          {
            v24 = MEMORY[0x1E696AE18];
            v25 = 1505;
            goto LABEL_117;
          }
        }

        else
        {
          switch(subtypeCopy)
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

      if (subtypeCopy > 3)
      {
        switch(subtypeCopy)
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

      if (subtypeCopy != 2)
      {
        if (subtypeCopy == 3)
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
        subtypeCopy2 = subtypeCopy;
        goto LABEL_162;
      }

LABEL_67:
      v24 = MEMORY[0x1E696AE18];
      v25 = 2;
      goto LABEL_117;
    }

    v26 = [PHSmartAlbum albumKindFromSmartAlbumSubtype:subtypeCopy];
    integerValue = [v26 integerValue];

    if (subtypeCopy <= 220)
    {
      if ((subtypeCopy - 200) < 0x14)
      {
LABEL_44:
        v24 = MEMORY[0x1E696AE18];
        v25 = integerValue;
        goto LABEL_117;
      }

      if (subtypeCopy == 220)
      {
        if (v11 && ![v11 includeScreenRecordingsSmartAlbum])
        {
          v27 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = 2;
            v58 = 1024;
            subtypeCopy2 = 220;
            goto LABEL_191;
          }

LABEL_192:

          goto LABEL_84;
        }

        goto LABEL_115;
      }

      goto LABEL_160;
    }

    if (subtypeCopy > 1000000211)
    {
      if (subtypeCopy > 1000000217)
      {
        if ((subtypeCopy - 1000000218) < 2)
        {
          goto LABEL_44;
        }

        if (subtypeCopy == 0x7FFFFFFFFFFFFFFFLL)
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

          v21 = [PHQuery identificationBlockForAssetCollectionType:type];
          if (subtype == 1000000001 && type == 1)
          {
            [v20 _setIncludesCameraRoll:1];
            goto LABEL_123;
          }

          v32 = 0;
          if (type > 8)
          {
            if (type == 9)
            {
              v33 = MEMORY[0x1E696AEB0];
              v34 = @"startDate";
              goto LABEL_136;
            }

            if (type != 12)
            {
              goto LABEL_138;
            }

            v33 = MEMORY[0x1E696AEB0];
            v34 = @"lastModifiedDate";
          }

          else
          {
            if (type != 1)
            {
              if (type != 2)
              {
                goto LABEL_138;
              }

              if (subtype != 0x7FFFFFFFFFFFFFFFLL)
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
                optionsCopy = v38;
                if (type != 6)
                {
                  if (type == 2 && subtype == 219)
                  {
                    *buf = @"PHAssetPropertySetSpatialMedia";
                    v39 = buf;
                    goto LABEL_152;
                  }

LABEL_149:

LABEL_154:
                  [v20 setFetchOptions:optionsCopy];

                  goto LABEL_155;
                }

                sharingFilter = [v38 sharingFilter];
                if (sharingFilter == 2)
                {
                  v60 = @"PHPhotosHighlightPropertySetPrivateOrShared";
                  v39 = &v60;
                }

                else if (sharingFilter == 1)
                {
                  v61 = @"PHPhotosHighlightPropertySetOnlyShared";
                  v39 = &v61;
                }

                else
                {
                  if (sharingFilter)
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
                  v42 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v10];

                  [v42 addFetchPropertySets:v41];
                  optionsCopy = v42;
                }

                goto LABEL_154;
              }

              v33 = MEMORY[0x1E696AEB0];
              v34 = @"parentFolder";
              goto LABEL_136;
            }

            if ((subtype - 3) < 2)
            {
              v33 = MEMORY[0x1E696AEB0];
              v34 = @"syncEventOrderKey";
LABEL_136:
              v35 = 1;
              goto LABEL_137;
            }

            if (subtype != 101)
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

      if (subtypeCopy == 1000000212)
      {
        goto LABEL_44;
      }

      if (subtypeCopy == 1000000214)
      {
        if (![v11 includeSharedLibrarySharingSuggestionsSmartAlbum])
        {
          v27 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = 2;
            v58 = 1024;
            subtypeCopy2 = 1000000214;
            goto LABEL_191;
          }

          goto LABEL_192;
        }

LABEL_115:
        v24 = MEMORY[0x1E696AE18];
        v25 = integerValue;
        goto LABEL_117;
      }

      if (subtypeCopy != 1000000215)
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
        subtypeCopy2 = subtypeCopy;
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
      subtypeCopy2 = 1000000215;
    }

    else
    {
      if (subtypeCopy <= 1000000203)
      {
        switch(subtypeCopy)
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
              subtypeCopy2 = 1000000203;
              goto LABEL_191;
            }

            goto LABEL_192;
        }

        goto LABEL_160;
      }

      if (subtypeCopy > 1000000205)
      {
        if (subtypeCopy == 1000000206)
        {
          if (![v11 includeRecentlyEditedSmartAlbum])
          {
            v27 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              *&buf[4] = 2;
              v58 = 1024;
              subtypeCopy2 = 1000000206;
              goto LABEL_191;
            }

            goto LABEL_192;
          }

          goto LABEL_115;
        }

        if (subtypeCopy != 1000000211)
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
        subtypeCopy2 = 1000000211;
      }

      else
      {
        if (subtypeCopy == 1000000204)
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
        subtypeCopy2 = 1000000205;
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
    *&buf[4] = type;
    v58 = 1024;
    subtypeCopy2 = subtype;
    _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "Unsupported fetch for asset collections with type %d and subtype %d (no fetch type)", buf, 0xEu);
  }

  v19 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  v20 = [PHQuery queryForType:@"PHAssetCollection" withBasePredicate:v19 inLibrary:v10];

  v21 = _Block_copy(PHQueryForAssetCollectionType_NoFetchType);
LABEL_155:
  [v20 _setIdentificationBlock:v21];

  return v20;
}

+ (id)queryForAssetCollectionsWithType:(int64_t)type localIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  identifiersCopy = identifiers;
  v10 = _fetchTypeForAssetCollectionTypeAndSubtype(type, 0x7FFFFFFFFFFFFFFFLL);
  v11 = [self queryForType:v10 withLocalIdentifiers:identifiersCopy options:optionsCopy];

  return v11;
}

+ (id)queryForAssetCollectionsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  v25 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  optionsCopy = options;
  firstObject = [identifiersCopy firstObject];
  v9 = [PHObject identifierCodeFromLocalIdentifier:firstObject];

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
    firstObject2 = v10;
    v19 = [identifiersCopy _pl_filter:v21];
    v17 = [self queryForType:firstObject2 withLocalIdentifiers:v19 options:optionsCopy];

    v12 = v22;
    goto LABEL_10;
  }

  firstObject2 = [identifiersCopy firstObject];
  pl_dispatch_once();
  v12 = handleUnsupportedAssetCollectionFetchTypeForLocalIdentifier_pl_once_object_47;
  v13 = [PHObject identifierCodeFromLocalIdentifier:firstObject2];
  v14 = [(__CFString *)v12 objectForKeyedSubscript:v13];
  if (v14)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ to fetch asset collection with local identifier (%@) with invalid fetch type: %@", @"Failed", firstObject2, v14];
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

+ (BOOL)_validateLocalIdentifiers:(id)identifiers compatibilityWithFetchType:(id)type
{
  v29 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  typeCopy = type;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = identifiersCopy;
  v7 = [identifiersCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
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
        if (([v15 isEqualToString:typeCopy] & 1) == 0)
        {
          v16 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v25 = v13;
            v26 = 2112;
            v27 = typeCopy;
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

+ (id)queryForAssetCollectionsContainingAssets:(id)assets withType:(int64_t)type options:(id)options
{
  v25[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v22 = 0;
  v9 = [self _assetIDsFromAssets:assets anyAsset:&v22];
  v10 = v22;
  v11 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:v10];
  if (![v9 count])
  {
    goto LABEL_15;
  }

  if (type <= 5)
  {
    switch(type)
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

  if (type > 7)
  {
    if (type == 8)
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

    if (type == 9)
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
        if (type > 0xD)
        {
          v20 = 0;
        }

        else
        {
          v20 = off_1E75A8E78[type];
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

  if (type == 6)
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
  [v14 setFetchOptions:optionsCopy];

  return v14;
}

+ (id)queryForAllTripHighlightsContainingAssetUUIDs:(id)ds options:(id)options
{
  v17[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (dsCopy)
  {
    v6 = dsCopy;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  v9 = [v7 predicateWithFormat:@"ANY %K.%K IN %@", @"dayGroupAssets", @"uuid", v6];
  predicateForAllTripHighlights = [MEMORY[0x1E69BE6B8] predicateForAllTripHighlights];
  v11 = MEMORY[0x1E696AB28];
  v17[0] = v9;
  v17[1] = predicateForAllTripHighlights;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];

  v14 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v15 = [PHQuery queryForType:@"PHPhotosHighlight" withBasePredicate:v13 inLibrary:v14];
  [v15 setFetchOptions:optionsCopy];

  return v15;
}

+ (id)queryForAssetCollectionsContainingAsset:(id)asset withType:(int64_t)type options:(id)options
{
  v35[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  objectID = [assetCopy objectID];

  if (!objectID)
  {
    v20 = 0;
    goto LABEL_23;
  }

  photoLibrary = [assetCopy photoLibrary];
  if (type <= 6)
  {
    switch(type)
    {
      case 1:
        v27 = MEMORY[0x1E696AE18];
        objectID2 = [assetCopy objectID];
        v23 = [v27 predicateWithFormat:@"assets CONTAINS %@", objectID2];
        v24 = @"PHAlbum";
        goto LABEL_21;
      case 3:
        goto LABEL_14;
      case 6:
        v21 = MEMORY[0x1E696AE18];
        objectID2 = [assetCopy objectID];
        v23 = [v21 predicateWithFormat:@"assets CONTAINS %@", objectID2];
        v24 = @"PHPhotosHighlight";
LABEL_21:
        v20 = [PHQuery queryForType:v24 withBasePredicate:v23 inLibrary:photoLibrary];

        goto LABEL_22;
    }

LABEL_16:
    if ((queryForAssetCollectionsContainingAsset_withType_options__didLog & 1) == 0)
    {
      queryForAssetCollectionsContainingAsset_withType_options__didLog = 1;
      v28 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        if (type > 0xD)
        {
          v29 = 0;
        }

        else
        {
          v29 = off_1E75A8E78[type];
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

  if (type > 8)
  {
    if (type == 9)
    {
      v30 = MEMORY[0x1E696AE18];
      objectID2 = [assetCopy objectID];
      v23 = [v30 predicateWithFormat:@"%K CONTAINS %@", @"assets", objectID2];
      v24 = @"PHImportSession";
      goto LABEL_21;
    }

    if (type == 12)
    {
      v25 = MEMORY[0x1E696AE18];
      objectID2 = [assetCopy objectID];
      v23 = [v25 predicateWithFormat:@"%K CONTAINS %@", @"collectionShareAssets", objectID2];
      v24 = @"PHCollectionShare";
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (type == 7)
  {
LABEL_14:
    v26 = MEMORY[0x1E696AE18];
    objectID2 = [assetCopy objectID];
    v23 = [v26 predicateWithFormat:@"assets CONTAINS %@", objectID2];
    v24 = @"PHMoment";
    goto LABEL_21;
  }

  v11 = MEMORY[0x1E696AE18];
  objectID3 = [assetCopy objectID];
  v13 = [v11 predicateWithFormat:@"%K CONTAINS %@", @"keyAssets", objectID3];

  v14 = MEMORY[0x1E696AE18];
  objectID4 = [assetCopy objectID];
  v16 = [v14 predicateWithFormat:@"%K CONTAINS %@", @"representativeSuggestionAssets", objectID4];

  v17 = MEMORY[0x1E696AB28];
  v35[0] = v13;
  v35[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v19 = [v17 orPredicateWithSubpredicates:v18];

  v20 = [PHQuery queryForType:@"PHSuggestion" withBasePredicate:v19 inLibrary:photoLibrary];

LABEL_22:
LABEL_23:
  [v20 setFetchOptions:optionsCopy];

  return v20;
}

+ (id)queryForAssetsForCloudFeedEntry:(id)entry options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  entryCopy = entry;
  objectID = [entryCopy objectID];
  v9 = [v5 predicateWithFormat:@"%K == %@", @"cloudFeedAssetsEntry", objectID];

  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:entryCopy];

  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 inLibrary:v10];
  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForAssetsForComment:(id)comment options:(id)options
{
  v5 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  commentCopy = comment;
  objectID = [commentCopy objectID];
  objectID2 = [commentCopy objectID];
  v10 = [v5 predicateWithFormat:@"%K CONTAINS %@ OR %K CONTAINS %@", @"likeComments", objectID, @"cloudComments", objectID2];

  v11 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:commentCopy];

  v12 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v10 inLibrary:v11];
  [v12 setFetchOptions:optionsCopy];

  return v12;
}

+ (id)queryForAssetsInPreviewStateWithSuggestedByClientTypes:(id)types options:(id)options
{
  v23 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  optionsCopy = options;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(typesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = typesCopy;
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
  v15 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v16 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v14 inLibrary:v15];

  [v16 setFetchOptions:optionsCopy];

  return v16;
}

+ (id)queryForAssetsInPreviewStateInLibraryScope:(id)scope options:(id)options
{
  v17[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  scopeCopy = scope;
  v8 = [self _participationStateFromLibraryScope:scopeCopy];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"activeLibraryScopeParticipationState", v8];
  v10 = PLManagedAssetPredicateToFetchAllAssetsInLibraryScopePreviewState();
  v11 = MEMORY[0x1E696AB28];
  v17[0] = v9;
  v17[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];

  v14 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:scopeCopy];

  v15 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v13 inLibrary:v14];

  [v15 setFetchOptions:optionsCopy];

  return v15;
}

+ (id)queryForAssetsWithCurrentUserAsLibraryScopeContributor:(BOOL)contributor inLibraryScope:(id)scope options:(id)options
{
  contributorCopy = contributor;
  v20[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  objectID = [scope objectID];
  v10 = [v7 predicateWithFormat:@"libraryScope == %@", objectID];

  v11 = MEMORY[0x1E696AB28];
  if (contributorCopy)
  {
    v20[0] = v10;
    predicateToIncludeOnlyContentContributedByCurrentUser = [MEMORY[0x1E69BE540] predicateToIncludeOnlyContentContributedByCurrentUser];
    v20[1] = predicateToIncludeOnlyContentContributedByCurrentUser;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v14 = [v11 andPredicateWithSubpredicates:v13];
  }

  else
  {
    v19[0] = v10;
    predicateToIncludeOnlyContentContributedByCurrentUser = [MEMORY[0x1E69BE540] predicateToIncludeOnlyContentContributedByCurrentUser];
    v13 = [v11 notPredicateWithSubpredicate:predicateToIncludeOnlyContentContributedByCurrentUser];
    v19[1] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v14 = [v11 andPredicateWithSubpredicates:v15];

    v10 = v15;
  }

  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v17 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v14 inLibrary:v16];

  [v17 setFetchOptions:optionsCopy];

  return v17;
}

+ (id)queryForAssetsInLibraryScope:(id)scope options:(id)options
{
  optionsCopy = options;
  scopeCopy = scope;
  v8 = [self _participationStateFromLibraryScope:scopeCopy];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"activeLibraryScopeParticipationState", v8];
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:scopeCopy];

  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForAssetsCaptured:(BOOL)captured orEdited:(BOOL)edited onThisCameraSinceDate:(id)date options:(id)options
{
  editedCopy = edited;
  capturedCopy = captured;
  v33[4] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  optionsCopy = options;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:2418 description:{@"Invalid parameter not satisfying: %@", @"date != nil"}];
  }

  photoLibrary = [optionsCopy photoLibrary];

  if (!photoLibrary)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:2419 description:{@"Invalid parameter not satisfying: %@", @"options.photoLibrary != nil"}];
  }

  [dateCopy timeIntervalSinceNow];
  if (v14 >= 0.0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:2420 description:{@"Invalid parameter not satisfying: %@", @"date.timeIntervalSinceNow < 0"}];
  }

  internalPredicate = [optionsCopy internalPredicate];

  if (internalPredicate)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:2421 description:{@"Invalid parameter not satisfying: %@", @"options.internalPredicate == nil"}];
  }

  if (capturedCopy == editedCopy)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:2422 description:{@"Invalid parameter not satisfying: %@", @"captured != edited"}];
  }

  v16 = [optionsCopy copy];
  if (!capturedCopy)
  {
    v18 = 0;
    dateCopy = 0;
    if (!editedCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"dateCreated", dateCopy];
  v18 = [MEMORY[0x1E69BE540] predicateForUnadjustedAssetsWithKeyPathToAsset:0];
  if (editedCopy)
  {
LABEL_15:
    dateCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"adjustmentTimestamp", dateCopy];

    v20 = [MEMORY[0x1E69BE540] predicateForAdjustedAssetsWithKeyPathToAsset:0];

    v18 = v20;
    dateCopy = dateCopy2;
  }

LABEL_16:
  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %d", @"currentSleetCast", 0];
  v22 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCameraAsset"), 1}];
  v23 = MEMORY[0x1E696AB28];
  v33[0] = dateCopy;
  v33[1] = v18;
  v33[2] = v21;
  v33[3] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
  v25 = [v23 andPredicateWithSubpredicates:v24];

  [v16 setInternalPredicate:v25];
  v26 = [self queryForAssetsWithOptions:v16];

  return v26;
}

+ (id)queryForAssetsFromCameraSinceDate:(id)date options:(id)options
{
  v26[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  optionsCopy = options;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:2387 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  if (+[PHPhotoLibrary isMultiLibraryModeEnabled])
  {
    photoLibrary = [optionsCopy photoLibrary];

    if (!photoLibrary)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:2389 description:{@"Invalid parameter not satisfying: %@", @"options.photoLibrary"}];
    }
  }

  v10 = [optionsCopy copy];

  dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"addedDate", dateCopy];
  v12 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCameraAsset"), 1}];
  v13 = MEMORY[0x1E696AB28];
  v26[0] = dateCopy;
  v26[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v15 = [v13 andPredicateWithSubpredicates:v14];

  internalPredicate = [v10 internalPredicate];
  v17 = internalPredicate;
  if (internalPredicate)
  {
    v18 = MEMORY[0x1E696AB28];
    v25[0] = internalPredicate;
    v25[1] = v15;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v20 = [v18 andPredicateWithSubpredicates:v19];
    [v10 setInternalPredicate:v20];
  }

  else
  {
    [v10 setInternalPredicate:v15];
  }

  v21 = [self queryForAssetsWithOptions:v10];

  return v21;
}

+ (id)queryForAllAssetsInYearRepresentedByYearHighlight:(id)highlight options:(id)options
{
  highlightCopy = highlight;
  optionsCopy = options;
  if ([highlightCopy kind] == 2)
  {
    photoLibrary = [highlightCopy photoLibrary];
    v9 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

    v10 = MEMORY[0x1E696AE18];
    objectID = [highlightCopy objectID];
    v12 = [v10 predicateWithFormat:@"highlightBeingAssets.parentPhotosHighlight.parentPhotosHighlight = %@", objectID];
    [v9 setInternalPredicate:v12];

    v13 = [self queryForAssetsWithOptions:v9];
    optionsCopy = v9;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)queryForReferencedAssetsWithOptions:(id)options
{
  v3 = MEMORY[0x1E69BF2B8];
  optionsCopy = options;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x1E69BF300]);
  [v6 setComparator:1];
  [v6 setKey:6];
  [v5 addSingleQueries:v6];
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v8 = objc_alloc_init(MEMORY[0x1E69BE700]);
  v9 = MEMORY[0x1E69BE708];
  photoLibrary = [v7 photoLibrary];
  v11 = [v9 predicateForQuery:v5 inLibrary:photoLibrary changeDetectionCriteria:v8];

  v12 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v7];
  [v12 setFetchOptions:optionsCopy];

  v13 = [[PHQueryChangeDetectionCriteria alloc] initWithPLQueryChangeDetectionCriteria:v8];
  if (v13)
  {
    fetchOptions = [v12 fetchOptions];
    [fetchOptions setChangeDetectionCriteria:v13];
  }

  return v12;
}

+ (id)queryForAssetsForKeywords:(id)keywords options:(id)options
{
  keywordsCopy = keywords;
  if (keywordsCopy)
  {
    v6 = keywordsCopy;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  optionsCopy = options;
  v8 = [v6 _pl_map:&__block_literal_global_526];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K IN %@", @"additionalAttributes.keywords", v8];
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 inLibrary:v10];

  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForKeyAssetsInAssetCollection:(id)collection options:(id)options
{
  collectionCopy = collection;
  optionsCopy = options;
  if ([collectionCopy assetCollectionType] == 8)
  {
    v7 = [PHQuery queryForKeyAssetsInSuggestion:collectionCopy options:optionsCopy];
    v8 = v7;
    v9 = PHQueryForKeyAssetsInSuggestion;
  }

  else if ([collectionCopy assetCollectionType] == 7)
  {
    v7 = [PHQuery queryForKeyAssetsInMomentShare:collectionCopy options:optionsCopy];
    v8 = v7;
    v9 = PHQueryForKeyAssetsInMomentShare;
  }

  else if ([collectionCopy assetCollectionType] == 12)
  {
    v7 = [PHQuery queryForKeyAssetsInCollectionShare:collectionCopy options:optionsCopy];
    v8 = v7;
    v9 = PHQueryForKeyAssetsInCollectionShare;
  }

  else
  {
    if ([collectionCopy assetCollectionType] != 6 || objc_msgSend(collectionCopy, "assetCollectionSubtype") != 1000000302 || !objc_msgSend(collectionCopy, "isSharingSuggestion"))
    {
      if ([collectionCopy canContainCustomKeyAssets])
      {
        v11 = MEMORY[0x1E696AE18];
        objectID = [collectionCopy objectID];
        v13 = [v11 predicateWithFormat:@"%K CONTAINS %@", @"albumsBeingKeyAssets", objectID];

        v14 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:collectionCopy];
        v8 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v13 inLibrary:v14];

        photoLibrary = [collectionCopy photoLibrary];
        v16 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

        [v8 setFetchOptions:v16];
        [v8 _setIdentificationBlock:PHQueryForKeyAssetsInAssetCollection];
      }

      else if ([collectionCopy assetCollectionType] == 3)
      {
        v8 = 0;
      }

      else
      {
        photoLibrary2 = [collectionCopy photoLibrary];
        v18 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary2];

        fetchLimit = [v18 fetchLimit];
        v20 = +[PHQuery maxKeyAssets];
        if (fetchLimit >= v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = fetchLimit;
        }

        if (fetchLimit)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        [v18 setFetchLimit:v22];
        [v18 setReverseSortOrder:{objc_msgSend(v18, "reverseSortOrder") ^ objc_msgSend(collectionCopy, "keyAssetsAtEnd")}];
        v8 = [PHQuery queryForAssetsInAssetCollection:collectionCopy options:v18];
        optionsCopy = v18;
      }

      goto LABEL_8;
    }

    v7 = [PHQuery queryForKeySharingSuggestionAssetsInHighlight:collectionCopy options:optionsCopy];
    v8 = v7;
    v9 = PHQueryForKeySharingSuggestionAssetsInHighlight;
  }

  [v7 _setIdentificationBlock:v9];
LABEL_8:

  return v8;
}

+ (id)queryForKeySharingSuggestionAssetsInHighlight:(id)highlight options:(id)options
{
  v19[1] = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  optionsCopy = options;
  if ([highlightCopy assetCollectionSubtype] == 1000000302)
  {
    photoLibrary = [highlightCopy photoLibrary];
    v8 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

    array = [MEMORY[0x1E695DF70] array];
    v10 = MEMORY[0x1E696AE18];
    objectID = [highlightCopy objectID];
    v12 = [v10 predicateWithFormat:@"highlightBeingAssets.parentPhotosHighlight == %@", objectID];
    [array addObject:v12];

    v13 = PLManagedAssetPredicateToFetchAssetsSuggestedForSharing();
    [array addObject:v13];

    v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
    [v8 setInternalPredicate:v14];

    [v8 setSharingFilter:0];
    v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:0];
    v19[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v8 setInternalSortDescriptors:v16];

    v17 = [PHQuery queryForAssetsWithOptions:v8];

    optionsCopy = v8;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)queryForKeyAssetsInCollectionShare:(id)share options:(id)options
{
  v14[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  shareCopy = share;
  photoLibrary = [shareCopy photoLibrary];
  v8 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  [v8 setFetchLimit:1];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"cloudBatchPublishDate" ascending:0];
  v14[0] = v9;
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:0];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v8 setInternalSortDescriptors:v11];

  v12 = [PHQuery queryForAssetsInAssetCollection:shareCopy options:v8];

  return v12;
}

+ (id)queryForKeyAssetsInMomentShare:(id)share options:(id)options
{
  shareCopy = share;
  optionsCopy = options;
  preview = [shareCopy preview];
  keyAssetIdentifier = [preview keyAssetIdentifier];
  if (keyAssetIdentifier)
  {
    photoLibrary = [shareCopy photoLibrary];
    v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid == %@ OR cloudAssetGUID == %@", keyAssetIdentifier, keyAssetIdentifier];
    [v10 setInternalPredicate:v11];
    v12 = [PHQuery queryForAssetsInAssetCollection:shareCopy options:v10];

    optionsCopy = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)queryForAssetsWithBurstIdentifier:(id)identifier options:(id)options
{
  v5 = MEMORY[0x1E69BE540];
  optionsCopy = options;
  v7 = [v5 predicateForBurstAssetsWithBurstUUID:identifier];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v7 inLibrary:v8];

  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)queryForVisibleAssetsWithObjectIDs:(id)ds options:(id)options
{
  dsCopy = ds;
  optionsCopy = options;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  if (!dsCopy)
  {
    dsCopy = [MEMORY[0x1E695DEC8] array];
  }

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", dsCopy];
  v10 = [self queryForType:@"PHAsset" withBasePredicate:dsCopy seedOIDs:0 inLibrary:v8];

  v11 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v8];

  [v10 setFetchOptions:v11];

  return v10;
}

+ (id)queryForAssetsWithObjectIDs:(id)ds options:(id)options
{
  dsCopy = ds;
  if (dsCopy)
  {
    v6 = dsCopy;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  optionsCopy = options;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v6];
  v10 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 seedOIDs:0 inLibrary:v8];

  v11 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v8];

  [v11 setIncludeTrashedAssets:1];
  [v11 setIncludeAllBurstAssets:1];
  [v11 setIncludeHiddenAssets:1];
  [v10 setFetchOptions:v11];

  return v10;
}

+ (id)queryForGuestAssetsInCollectionContainingAsset:(id)asset options:(id)options
{
  v18[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  assetCopy = asset;
  [assetCopy fetchPropertySetsIfNeeded];
  curationProperties = [assetCopy curationProperties];

  syndicationIdentifier = [curationProperties syndicationIdentifier];

  v9 = PLSearchableIdentifierFromMessagesSyndicationID();
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"additionalAttributes.syndicationIdentifier CONTAINS %@", v9];
  internalPredicate = [optionsCopy internalPredicate];

  if (internalPredicate)
  {
    v12 = MEMORY[0x1E696AB28];
    internalPredicate2 = [optionsCopy internalPredicate];
    v18[0] = internalPredicate2;
    v18[1] = v10;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v15 = [v12 andPredicateWithSubpredicates:v14];
    [optionsCopy setInternalPredicate:v15];
  }

  else
  {
    [optionsCopy setInternalPredicate:v10];
  }

  v16 = [PHQuery queryForGuestAssetsWithOptions:optionsCopy];

  return v16;
}

+ (id)queryForGuestAssetsWithOptions:(id)options
{
  v14[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v6 = MEMORY[0x1E696AB28];
  _guestAssetOnlyPredicate = [self _guestAssetOnlyPredicate];
  v14[0] = _guestAssetOnlyPredicate;
  v8 = +[PHAsset filterPredicateToExcludeNoSyndicationAssets];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v10 = [v6 andPredicateWithSubpredicates:v9];

  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v10 inLibrary:v5];
  if (!optionsCopy || ![optionsCopy includeAssetSourceTypes])
  {
    v12 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v5];

    [v12 setIncludeAssetSourceTypes:1];
    optionsCopy = v12;
  }

  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForAnyCinematicVideosNeedingDeferredProcessingWithOtions:(id)otions
{
  otionsCopy = otions;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:otionsCopy object:0];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d AND %K = %d", @"depthType", 2, @"deferredProcessingNeeded", 2];
  v6 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v5 inLibrary:v4];
  if (!otionsCopy)
  {
    otionsCopy = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:0 photoLibrary:v4];
  }

  [otionsCopy setFetchLimit:1];
  [v6 setFetchOptions:otionsCopy];

  return v6;
}

+ (id)queryForAssetsForPTPWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  photoLibrary = [v4 photoLibrary];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__36903;
  v20 = __Block_byref_object_dispose__36904;
  v21 = 0;
  managedObjectContext = [photoLibrary managedObjectContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__PHQuery_queryForAssetsForPTPWithOptions___block_invoke;
  v12[3] = &unk_1E75AA3F8;
  v15 = &v16;
  v7 = managedObjectContext;
  v13 = v7;
  v8 = photoLibrary;
  v14 = v8;
  [v7 performBlockAndWait:v12];
  v9 = [PHPTPFetches predicateForAssetsExposedByPHPTPExcludingObjectIDs:v17[5]];
  v10 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 inLibrary:v4];
  if (!optionsCopy)
  {
    optionsCopy = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:0 photoLibrary:v4];
  }

  [optionsCopy setIncludeAllBurstAssets:1];
  [v10 setFetchOptions:optionsCopy];

  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __43__PHQuery_queryForAssetsForPTPWithOptions___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = +[PHPTPFetches fetchAssetIdsToExcludeFromPTPInContext:isCloudPhotoLibraryEnabled:](PHPTPFetches, "fetchAssetIdsToExcludeFromPTPInContext:isCloudPhotoLibraryEnabled:", *(a1 + 32), [*(a1 + 40) isCloudPhotoLibraryEnabled]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)queryForAssetsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v5 = [PHQuery queryForType:@"PHAsset" withBasePredicate:0 inLibrary:v4];
  if (!optionsCopy || ![optionsCopy includeAssetSourceTypes])
  {
    v6 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v4];

    [v6 setIncludeAssetSourceTypes:1];
    optionsCopy = v6;
  }

  [v5 setFetchOptions:optionsCopy];

  return v5;
}

+ (id)queryForCloudSharedAlbumInvitationRecordsForCloudSharedAlbum:(id)album options:(id)options
{
  optionsCopy = options;
  albumCopy = album;
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:albumCopy];
  v8 = MEMORY[0x1E696AE18];
  cloudGUID = [albumCopy cloudGUID];

  v10 = [v8 predicateWithFormat:@"%K = %@", @"albumGUID", cloudGUID];

  v11 = [PHQuery queryForType:@"PHCloudSharedAlbumInvitationRecord" withBasePredicate:v10 inLibrary:v7];
  if (!optionsCopy)
  {
    optionsCopy = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:0 photoLibrary:v7];
  }

  [v11 setFetchOptions:optionsCopy];

  return v11;
}

+ (id)queryForCloudSharedAlbumInvitationRecordsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v5 = [PHQuery queryForType:@"PHCloudSharedAlbumInvitationRecord" withBasePredicate:0 inLibrary:v4];
  if (!optionsCopy)
  {
    optionsCopy = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:0 photoLibrary:v4];
  }

  [v5 setFetchOptions:optionsCopy];

  return v5;
}

+ (id)queryForCloudSharedAlbumsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  v7 = [self queryForType:@"PHCloudSharedAlbum" withLocalIdentifiers:identifiers options:optionsCopy];
  [v7 setFetchOptions:optionsCopy];

  return v7;
}

+ (id)_queryForAssetsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  v7 = [self queryForType:@"PHAsset" withLocalIdentifiers:identifiers options:optionsCopy];
  v8 = objc_opt_class();
  photoLibrary = [optionsCopy photoLibrary];
  v10 = [v8 _defaultFetchOptionsForIdentifiedAssetsQueryInPhotoLibrary:photoLibrary];

  if (optionsCopy)
  {
    [v10 mergeWithFetchOptions:optionsCopy];
  }

  [v7 setFetchOptions:v10];

  return v7;
}

+ (id)_defaultFetchOptionsForIdentifiedAssetsQueryInPhotoLibrary:(id)library
{
  v3 = [PHFetchOptions fetchOptionsWithPhotoLibrary:library orObject:0];
  [v3 setIncludeDuplicateAssets:1];
  [v3 setIncludeHiddenAssets:1];

  return v3;
}

+ (id)queryForType:(id)type withLocalIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  identifiersCopy = identifiers;
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PHPerson"])
  {
    v11 = @"personUUID";
  }

  else
  {
    v11 = @"uuid";
  }

  v12 = [self queryForType:typeCopy withIdentifiers:identifiersCopy identifierKeyPath:v11 options:optionsCopy];

  return v12;
}

+ (id)queryForType:(id)type withIdentifiers:(id)identifiers identifierKeyPath:(id)path options:(id)options
{
  v30 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  identifiersCopy = identifiers;
  pathCopy = path;
  optionsCopy = options;
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = identifiersCopy;
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

  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN (%@)", pathCopy, v20, v25];
  v22 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v23 = [PHQuery queryForType:typeCopy withBasePredicate:v21 inLibrary:v22];

  [v23 setFetchOptions:optionsCopy];

  return v23;
}

+ (id)queryForAssetsWithMediaType:(int64_t)type options:(id)options
{
  optionsCopy = options;
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  if (type >= 4)
  {
    v7 = 3;
  }

  else
  {
    v7 = (0x2000100000003uLL >> (16 * type)) & 3;
  }

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %d", v7];
  v9 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v8 inLibrary:v6];

  if (!optionsCopy || ![optionsCopy includeAssetSourceTypes])
  {
    v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:v6];

    [v10 setIncludeAssetSourceTypes:1];
    optionsCopy = v10;
  }

  [v9 setFetchOptions:optionsCopy];

  return v9;
}

+ (id)queryForCustomUserAssetsInMemory:(id)memory options:(id)options
{
  optionsCopy = options;
  memoryCopy = memory;
  if ([memoryCopy assetCollectionType] != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:2021 description:@"Fetching for user curated assets is only supported in a memory"];
  }

  v9 = MEMORY[0x1E696AE18];
  objectID = [memoryCopy objectID];
  v11 = [v9 predicateWithFormat:@"%K CONTAINS %@", @"memoriesBeingCustomUserAssets", objectID];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:memoryCopy];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  [v13 _setContainerCollection:memoryCopy];
  [v13 setFetchOptions:optionsCopy];

  return v13;
}

+ (id)queryForUserCuratedAssetsInMemory:(id)memory options:(id)options
{
  optionsCopy = options;
  memoryCopy = memory;
  if ([memoryCopy assetCollectionType] != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:2008 description:@"Fetching for user curated assets is only supported in a memory"];
  }

  v9 = MEMORY[0x1E696AE18];
  objectID = [memoryCopy objectID];
  v11 = [v9 predicateWithFormat:@"memoriesBeingUserCuratedAssets CONTAINS %@", objectID];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:memoryCopy];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  v14 = [self _fetchOptionsForFetchingAssetsFromAssetCollection:memoryCopy options:optionsCopy changeDetectionCriteria:0];

  [v13 _setContainerCollection:memoryCopy];
  [v13 setFetchOptions:v14];

  return v13;
}

+ (id)queryForMovieCuratedAssetsInMemory:(id)memory options:(id)options
{
  optionsCopy = options;
  memoryCopy = memory;
  if ([memoryCopy assetCollectionType] != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:1994 description:@"Fetching for movie curated assets is only supported in a memory"];
  }

  v9 = MEMORY[0x1E696AE18];
  objectID = [memoryCopy objectID];
  v11 = [v9 predicateWithFormat:@"memoriesBeingMovieCuratedAssets CONTAINS %@", objectID];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:memoryCopy];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  v14 = [self _fetchOptionsForFetchingAssetsFromAssetCollection:memoryCopy options:optionsCopy changeDetectionCriteria:0];

  [v13 _setContainerCollection:memoryCopy];
  [v13 setFetchOptions:v14];

  return v13;
}

+ (id)queryForAssetsInAssetCollection:(id)collection options:(id)options
{
  v44 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  optionsCopy = options;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:collectionCopy];
  if ([collectionCopy assetCollectionType] == 3)
  {
    v9 = MEMORY[0x1E696AE18];
    objectID = [collectionCopy objectID];
    predicateForAllAssets = [v9 predicateWithFormat:@"moment = %@", objectID];

    v12 = PHQueryForAssetsInMoment;
LABEL_12:
    v17 = _Block_copy(v12);
LABEL_13:
    v18 = v17;
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  if ([collectionCopy assetCollectionType] == 7)
  {
    v13 = MEMORY[0x1E696AE18];
    objectID2 = [collectionCopy objectID];
    predicateForAllAssets = [v13 predicateWithFormat:@"momentShare = %@", objectID2];

    v12 = PHQueryForAssetsInMomentShare;
    goto LABEL_12;
  }

  if ([collectionCopy assetCollectionType] == 12 || objc_msgSend(collectionCopy, "assetCollectionType") == 1 && objc_msgSend(collectionCopy, "assetCollectionSubtype") == 101 && (objc_msgSend(MEMORY[0x1E69BF2F0], "clientIsAllowedToFetchCollectionShares") & 1) == 0)
  {
    v15 = MEMORY[0x1E696AE18];
    objectID3 = [collectionCopy objectID];
    predicateForAllAssets = [v15 predicateWithFormat:@"collectionShare = %@", objectID3];

    v12 = PHQueryForAssetsInCollectionShare;
    goto LABEL_12;
  }

  if ([collectionCopy assetCollectionType] == 4)
  {
    predicateForAllAssets = [collectionCopy predicateForAllAssetsWithLibrary:v8];
    v12 = PHQueryForAssetsInMemory;
    goto LABEL_12;
  }

  if ([collectionCopy assetCollectionType] == 2)
  {
    plAlbumKind = [collectionCopy plAlbumKind];
    if (plAlbumKind == 1507)
    {
      userQuery = [collectionCopy userQuery];
      v19 = objc_alloc_init(MEMORY[0x1E69BE700]);
      v26 = MEMORY[0x1E69BE708];
      photoLibrary = [collectionCopy photoLibrary];
      v27PhotoLibrary = [photoLibrary photoLibrary];
      predicateForAllAssets = [v26 predicateForQuery:userQuery inLibrary:v27PhotoLibrary changeDetectionCriteria:v19];

      v18 = _Block_copy(PHQueryForAssetsInUserSmartAlbum);
    }

    else
    {
      v29 = plAlbumKind;
      predicateForAllAssets = [MEMORY[0x1E69BE430] predicateForAlbumKind:plAlbumKind includeGuest:{objc_msgSend(optionsCopy, "includeGuestAssets")}];
      v18 = [self identificationBlockForSmartAlbumKind:v29];
      if ([optionsCopy hasAnySortDescriptors])
      {
        goto LABEL_14;
      }

      photoLibrary2 = [collectionCopy photoLibrary];
      v31 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary2];

      v32 = [MEMORY[0x1E69BE430] sortDescriptorsForAlbumKind:v29];
      [v31 setInternalSortDescriptors:v32];

      v19 = 0;
      optionsCopy = v31;
    }
  }

  else
  {
    if ([collectionCopy assetCollectionType] == 6 && objc_msgSend(collectionCopy, "isSharingSuggestion"))
    {
      predicateForAllAssets = _predicateForAssetsInSharedLibrarySharingSuggestionWithOptions(collectionCopy);
      v12 = PHQueryForAssetsInSharedLibrarySuggestion;
      goto LABEL_12;
    }

    if ([collectionCopy assetCollectionType] == 6)
    {
      predicateForAllAssets = _predicateForAssetsInPhotosHighlightWithOptions(collectionCopy, optionsCopy);
      v12 = PHQueryForAssetsInPhotosHighlight;
      goto LABEL_12;
    }

    if ([collectionCopy assetCollectionType] == 8)
    {
      predicateForAllAssets = [collectionCopy predicateForAllAssets];
      v12 = PHQueryForAssetsInSuggestion;
      goto LABEL_12;
    }

    if ([collectionCopy assetCollectionType] == 9)
    {
      v33 = MEMORY[0x1E696AE18];
      objectID4 = [collectionCopy objectID];
      predicateForAllAssets = [v33 predicateWithFormat:@"%K = %@", @"importSession", objectID4];

      v12 = PHQueryForAssetsInImportSession;
      goto LABEL_12;
    }

    if ([collectionCopy assetCollectionType] == 13)
    {
      v35 = MEMORY[0x1E696AE18];
      objectID5 = [collectionCopy objectID];
      predicateForAllAssets = [v35 predicateWithFormat:@"%K = %@", @"conversation", objectID5];

      v12 = PHQueryForAssetsInConversation;
      goto LABEL_12;
    }

    if ([collectionCopy assetCollectionSubtype] != 1000000601 || objc_msgSend(optionsCopy, "sharingFilter") == 2)
    {
      if (collectionCopy)
      {
        v37 = MEMORY[0x1E696AE18];
        objectID6 = [collectionCopy objectID];
        predicateForAllAssets = [v37 predicateWithFormat:@"albums CONTAINS %@", objectID6];

        v17 = [self identificationBlockForAlbumSortKey:{objc_msgSend(collectionCopy, "customSortKey")}];
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

    predicateForAllAssets = [MEMORY[0x1E696AE18] predicateWithValue:0];
    v19 = 0;
    v18 = 0;
  }

LABEL_15:
  v20 = [PHQuery queryForType:@"PHAsset" withBasePredicate:predicateForAllAssets inLibrary:v8];
  v21 = [self _fetchOptionsForFetchingAssetsFromAssetCollection:collectionCopy options:optionsCopy changeDetectionCriteria:v19];

  [v20 _setContainerCollection:collectionCopy];
  if (!v18)
  {
    v22 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = collectionCopy;
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

+ (id)queryForAssetsInConversations:(id)conversations options:(id)options
{
  v25 = *MEMORY[0x1E69E9840];
  conversationsCopy = conversations;
  optionsCopy = options;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(conversationsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = conversationsCopy;
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

        objectID = [*(*(&v20 + 1) + 8 * i) objectID];
        [v8 addObject:objectID];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"importSessionID", v8, v20];
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v17 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v15 inLibrary:v16];
  v18 = [self _fetchOptionsForFetchingAssetsFromImportSessions:v8 options:optionsCopy];

  [v17 _setContainerCollection:0];
  [v17 setFetchOptions:v18];

  return v17;
}

+ (id)queryForAssetsInImportSessions:(id)sessions options:(id)options
{
  v25 = *MEMORY[0x1E69E9840];
  sessionsCopy = sessions;
  optionsCopy = options;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(sessionsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = sessionsCopy;
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

        objectID = [*(*(&v20 + 1) + 8 * i) objectID];
        [v8 addObject:objectID];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"importSession IN %@", v8];
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v17 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v15 inLibrary:v16];
  v18 = [self _fetchOptionsForFetchingAssetsFromImportSessions:v9 options:optionsCopy];

  [v17 _setContainerCollection:0];
  [v17 setFetchOptions:v18];

  return v17;
}

+ (id)_guestAssetOnlyPredicate
{
  v2 = MEMORY[0x1E69BF328];
  maskForGuestAsset = [MEMORY[0x1E69BF328] maskForGuestAsset];

  return [v2 predicateForIncludeMask:maskForGuestAsset useIndex:1];
}

+ (id)queryForAssetsInBoundingBoxWithTopLeftLocation:(id)location bottomRightLocation:(id)rightLocation options:(id)options
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC8];
  optionsCopy = options;
  rightLocationCopy = rightLocation;
  locationCopy = location;
  v11 = [v7 expressionForKeyPath:@"boundedByRect"];
  v12 = MEMORY[0x1E696ABC8];
  v19[0] = locationCopy;
  v19[1] = rightLocationCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v14 = [v12 expressionForConstantValue:v13];

  v15 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v11 rightExpression:v14 modifier:0 type:2000 options:0];
  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v17 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v15 inLibrary:v16];

  [v17 setFetchOptions:optionsCopy];

  return v17;
}

+ (id)queryForCollageAssetsInDayHighlight:(id)highlight options:(id)options
{
  highlightCopy = highlight;
  optionsCopy = options;
  if ([highlightCopy kind])
  {
    v7 = 0;
  }

  else
  {
    v8 = +[PHPhotosHighlight collageAssetsInverseRelationshipPredicateForDayHighlight:forHighlightFilter:](PHPhotosHighlight, "collageAssetsInverseRelationshipPredicateForDayHighlight:forHighlightFilter:", highlightCopy, [optionsCopy sharingFilter]);
    photoLibrary = [highlightCopy photoLibrary];
    v7 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v8 inLibrary:photoLibrary];

    [optionsCopy setUseNoIndexOnSharingFilter:1];
    [v7 _setContainerCollection:highlightCopy];
    [v7 setFetchOptions:optionsCopy];
  }

  return v7;
}

+ (id)queryForKeyAssetInPhotosHighlight:(id)highlight options:(id)options
{
  optionsCopy = options;
  highlightCopy = highlight;
  if ([highlightCopy assetCollectionType] != 6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:1824 description:@"Expected input collection to be a PhotosHighlight"];
  }

  v9 = +[PHPhotosHighlight keyAssetInverseRelationshipPredicateForHighlight:forHighlightFilter:](PHPhotosHighlight, "keyAssetInverseRelationshipPredicateForHighlight:forHighlightFilter:", highlightCopy, [optionsCopy sharingFilter]);
  photoLibrary = [highlightCopy photoLibrary];
  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v9 inLibrary:photoLibrary];
  v12 = [self _fetchOptionsForFetchingAssetsFromAssetCollection:highlightCopy options:optionsCopy changeDetectionCriteria:0];

  [v12 setSortDescriptors:0];
  [v12 setInternalSortDescriptors:0];
  [v11 _setContainerCollection:highlightCopy];

  [v11 setFetchOptions:v12];

  return v11;
}

+ (id)queryForCuratedAssetsInMomentShare:(id)share options:(id)options
{
  v19 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  optionsCopy = options;
  preview = [shareCopy preview];
  curatedAssetIdentifiers = [preview curatedAssetIdentifiers];
  if ([curatedAssetIdentifiers count])
  {
    photoLibrary = [shareCopy photoLibrary];
    v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@ OR cloudAssetGUID IN %@", curatedAssetIdentifiers, curatedAssetIdentifiers];
    [v10 setInternalPredicate:v11];
    v12 = [PHQuery queryForAssetsInAssetCollection:shareCopy options:v10];

    optionsCopy = v10;
  }

  else
  {
    v13 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "+[PHQuery queryForCuratedAssetsInMomentShare:options:]";
      v17 = 2048;
      v18 = shareCopy;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "%s no curated assets in momentShare %p", buf, 0x16u);
    }

    v12 = [PHQuery queryForAssetsWithObjectIDs:0 options:optionsCopy];
  }

  return v12;
}

+ (id)queryForCuratedAssetsInPhotosHighlight:(id)highlight options:(id)options
{
  highlightCopy = highlight;
  optionsCopy = options;
  v8 = _predicateForAssetsInPhotosHighlightWithOptions(highlightCopy, optionsCopy);
  if (v8)
  {
    photoLibrary = [highlightCopy photoLibrary];
    v10 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v8 inLibrary:photoLibrary];
    v11 = [self _fetchOptionsForFetchingAssetsFromAssetCollection:highlightCopy options:optionsCopy changeDetectionCriteria:0];

    [v10 _setContainerCollection:highlightCopy];
    [v10 setFetchOptions:v11];

    optionsCopy = v11;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)queryForRepresentativeAssetsInMemory:(id)memory options:(id)options
{
  optionsCopy = options;
  memoryCopy = memory;
  if ([memoryCopy assetCollectionType] != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:1777 description:@"Fetching for representative assets is only supported in a memory"];
  }

  v9 = MEMORY[0x1E696AE18];
  objectID = [memoryCopy objectID];
  v11 = [v9 predicateWithFormat:@"memoriesBeingRepresentativeAssets CONTAINS %@", objectID];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:memoryCopy];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  v14 = [self _fetchOptionsForFetchingAssetsFromAssetCollection:memoryCopy options:optionsCopy changeDetectionCriteria:0];

  [v13 _setContainerCollection:memoryCopy];
  [v13 setFetchOptions:v14];

  return v13;
}

+ (id)queryForRepresentativeAssetsInSuggestion:(id)suggestion options:(id)options
{
  optionsCopy = options;
  suggestionCopy = suggestion;
  if ([suggestionCopy assetCollectionType] != 8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:1763 description:@"Fetching for representative assets by suggestionsBeingRepresentativeAssets is only supported in a suggestion"];
  }

  v9 = MEMORY[0x1E696AE18];
  objectID = [suggestionCopy objectID];
  v11 = [v9 predicateWithFormat:@"suggestionsBeingRepresentativeAssets CONTAINS %@", objectID];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:suggestionCopy];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  v14 = [self _fetchOptionsForFetchingAssetsFromAssetCollection:suggestionCopy options:optionsCopy changeDetectionCriteria:0];

  [v13 _setContainerCollection:suggestionCopy];
  [v13 setFetchOptions:v14];

  return v13;
}

+ (id)queryForKeyAssetsInSuggestion:(id)suggestion options:(id)options
{
  optionsCopy = options;
  suggestionCopy = suggestion;
  if ([suggestionCopy assetCollectionType] != 8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:1749 description:@"Fetching for key assets by suggestionsBeingKeyAssets is only supported in a suggestion"];
  }

  v9 = MEMORY[0x1E696AE18];
  objectID = [suggestionCopy objectID];
  v11 = [v9 predicateWithFormat:@"suggestionsBeingKeyAssets CONTAINS %@", objectID];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:suggestionCopy];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  v14 = [self _fetchOptionsForFetchingAssetsFromAssetCollection:suggestionCopy options:optionsCopy changeDetectionCriteria:0];

  [v13 _setContainerCollection:suggestionCopy];
  [v13 setFetchOptions:v14];

  return v13;
}

+ (id)queryForAssetsAssociatedWithMomentsOfMemory:(id)memory options:(id)options
{
  optionsCopy = options;
  memoryCopy = memory;
  if ([memoryCopy assetCollectionType] != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:1737 description:@"queryForAssetsAssociatedWithMomentsOfMemory is only supported for a memory"];
  }

  predicateForAssetsContainedInMomentsFromRepresentativeAssets = [memoryCopy predicateForAssetsContainedInMomentsFromRepresentativeAssets];
  v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:memoryCopy];
  v11 = [PHQuery queryForType:@"PHAsset" withBasePredicate:predicateForAssetsContainedInMomentsFromRepresentativeAssets inLibrary:v10];

  v12 = [self _fetchOptionsForFetchingAssetsFromAssetCollection:memoryCopy options:optionsCopy changeDetectionCriteria:0];

  [v11 _setContainerCollection:memoryCopy];
  [v11 setFetchOptions:v12];

  return v11;
}

+ (id)queryForAllAssetsAssociatedWithMemory:(id)memory options:(id)options
{
  optionsCopy = options;
  memoryCopy = memory;
  if ([memoryCopy assetCollectionType] != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:1725 description:@"Fetching for all associated assets for a memory is only supported for a memory"];
  }

  objectID = [memoryCopy objectID];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K CONTAINS %@ OR %K CONTAINS %@", @"memoriesBeingExtendedCuratedAssets", objectID, @"memoriesBeingRepresentativeAssets", objectID];
  v11 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:memoryCopy];
  v12 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v10 inLibrary:v11];

  v13 = [self _fetchOptionsForFetchingAssetsFromAssetCollection:memoryCopy options:optionsCopy changeDetectionCriteria:0];

  [v12 _setContainerCollection:memoryCopy];
  [v12 setFetchOptions:v13];

  return v12;
}

+ (id)queryForKeyAssetInMemory:(id)memory options:(id)options
{
  optionsCopy = options;
  memoryCopy = memory;
  if ([memoryCopy assetCollectionType] != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:1712 description:@"Fetching for curated assets is only supported in a memory"];
  }

  v9 = MEMORY[0x1E696AE18];
  objectID = [memoryCopy objectID];
  v11 = [v9 predicateWithFormat:@"memoriesBeingKeyAsset CONTAINS %@", objectID];

  v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:memoryCopy];
  v13 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v11 inLibrary:v12];

  v14 = [self _fetchOptionsForFetchingAssetsFromAssetCollection:memoryCopy options:optionsCopy changeDetectionCriteria:0];

  [v13 _setContainerCollection:memoryCopy];
  [v13 setFetchOptions:v14];

  return v13;
}

+ (id)queryForExtendedCuratedAssetsInMemory:(id)memory options:(id)options
{
  memoryCopy = memory;
  optionsCopy = options;
  if ([memoryCopy assetCollectionType] != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:1692 description:@"Fetching for curated assets is only supported in a memory"];
  }

  if ([memoryCopy isTransient])
  {
    v9 = [memoryCopy queryForExtendedCuratedAssetsWithOptions:optionsCopy];
  }

  else
  {
    v10 = MEMORY[0x1E696AE18];
    objectID = [memoryCopy objectID];
    v12 = [v10 predicateWithFormat:@"memoriesBeingExtendedCuratedAssets CONTAINS %@", objectID];

    v13 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:memoryCopy];
    v9 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v12 inLibrary:v13];

    v14 = [self _fetchOptionsForFetchingAssetsFromAssetCollection:memoryCopy options:optionsCopy changeDetectionCriteria:0];

    [v9 _setContainerCollection:memoryCopy];
    [v9 setFetchOptions:v14];

    optionsCopy = v14;
  }

  return v9;
}

+ (id)queryForCuratedAssetsInMemory:(id)memory options:(id)options
{
  memoryCopy = memory;
  optionsCopy = options;
  if ([memoryCopy assetCollectionType] != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:1672 description:@"Fetching for curated assets is only supported in a memory"];
  }

  if ([memoryCopy isTransient])
  {
    v9 = [memoryCopy queryForCuratedAssetsWithOptions:optionsCopy];
  }

  else
  {
    v10 = MEMORY[0x1E696AE18];
    objectID = [memoryCopy objectID];
    v12 = [v10 predicateWithFormat:@"memoriesBeingCuratedAssets CONTAINS %@", objectID];

    v13 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:memoryCopy];
    v9 = [PHQuery queryForType:@"PHAsset" withBasePredicate:v12 inLibrary:v13];

    v14 = [self _fetchOptionsForFetchingAssetsFromAssetCollection:memoryCopy options:optionsCopy changeDetectionCriteria:0];

    [v9 _setContainerCollection:memoryCopy];
    [v9 setFetchOptions:v14];

    optionsCopy = v14;
  }

  return v9;
}

+ (id)queryForMemoriesWithLocalIdentifiers:(id)identifiers options:(id)options
{
  optionsCopy = options;
  v7 = [self queryForType:@"PHMemory" withLocalIdentifiers:identifiers options:optionsCopy];
  [v7 setFetchOptions:optionsCopy];

  return v7;
}

+ (id)_assetIDsFromAssets:(id)assets anyAsset:(id *)asset
{
  v26 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if (objc_opt_respondsToSelector())
  {
    fetchedObjectIDs = [assetsCopy fetchedObjectIDs];
  }

  else
  {
    fetchedObjectIDs = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && !fetchedObjectIDs)
  {
    objectIDs = [assetsCopy objectIDs];
    fetchedObjectIDs = [objectIDs array];
  }

  if (fetchedObjectIDs)
  {
    if (asset)
    {
      memset(v19, 0, sizeof(v19));
      if ([assetsCopy countByEnumeratingWithState:v19 objects:v24 count:16])
      {
        *asset = **(&v19[0] + 1);
      }
    }
  }

  else
  {
    fetchedObjectIDs = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = assetsCopy;
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
          objectID = [v14 objectID];

          if (objectID)
          {
            objectID2 = [v14 objectID];
            [fetchedObjectIDs addObject:objectID2];

            if (!((asset == 0) | v11 & 1))
            {
              v17 = v14;
              *asset = v14;
              v11 = 1;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }
  }

  return fetchedObjectIDs;
}

+ (id)_fetchOptionsForFetchingAssetsFromAssetCollection:(id)collection options:(id)options changeDetectionCriteria:(id)criteria
{
  v41[2] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  optionsCopy = options;
  criteriaCopy = criteria;
  photoLibrary = [collectionCopy photoLibrary];
  if (photoLibrary)
  {
    goto LABEL_2;
  }

  photoLibrary2 = [optionsCopy photoLibrary];

  if (!photoLibrary2)
  {
    photoLibrary = [MEMORY[0x1E696AAA8] currentHandler];
    [photoLibrary handleFailureInMethod:a2 object:self file:@"PHQuery.m" lineNumber:1564 description:{@"Invalid parameter not satisfying: %@", @"assetCollection.photoLibrary || options.photoLibrary"}];
LABEL_2:
  }

  if ([collectionCopy assetCollectionType] == 1)
  {
    if ([collectionCopy assetCollectionSubtype] == 100)
    {
      photoLibrary3 = [collectionCopy photoLibrary];
      v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary3];

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
    v15 = optionsCopy;
    goto LABEL_38;
  }

  if ([collectionCopy assetCollectionType] == 2)
  {
    if ([collectionCopy assetCollectionSubtype] == 205)
    {
      photoLibrary4 = [collectionCopy photoLibrary];
      v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary4];

      [v15 setIncludeHiddenAssets:1];
      goto LABEL_38;
    }

    if ([collectionCopy assetCollectionSubtype] == 1000000201)
    {
      photoLibrary5 = [collectionCopy photoLibrary];
      v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary5];

      [v15 setIncludeHiddenAssets:1];
LABEL_17:
      [v15 setIncludeTrashedAssets:1];
      goto LABEL_38;
    }

    if ([collectionCopy assetCollectionSubtype] != 1000000204)
    {
      if ([collectionCopy assetCollectionSubtype] == 1000000219)
      {
        photoLibrary6 = [collectionCopy photoLibrary];
        v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary6];

        [v15 setIsExclusivePredicate:1];
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    userQuery = [collectionCopy userQuery];
    photoLibrary7 = [collectionCopy photoLibrary];
    v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary7];

    [v15 setIncludeHiddenAssets:{objc_msgSend(MEMORY[0x1E69BE708], "includesHiddenAssetsKeyInQuery:", userQuery)}];
    goto LABEL_25;
  }

  if ([collectionCopy assetCollectionType] == 12)
  {
    photoLibrary8 = [collectionCopy photoLibrary];
    v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary8];

    [v15 setIncludeCollectionShareAssets:1];
    goto LABEL_38;
  }

  if ([collectionCopy assetCollectionType] != 4 && objc_msgSend(collectionCopy, "assetCollectionType") != 7 && objc_msgSend(collectionCopy, "assetCollectionType") != 8)
  {
    if ([collectionCopy assetCollectionType] == 9)
    {
      photoLibrary9 = [collectionCopy photoLibrary];
      v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary9];

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
      if ([collectionCopy assetCollectionType] == 3)
      {
        photoLibrary10 = [collectionCopy photoLibrary];
        v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary10];

        goto LABEL_17;
      }

      if ([collectionCopy assetCollectionType] != 6)
      {
        goto LABEL_37;
      }

      photoLibrary11 = [collectionCopy photoLibrary];
      v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary11];

      if ([v15 hasAnySortDescriptors])
      {
        goto LABEL_38;
      }

      v29 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
      v38 = v29;
      v30 = MEMORY[0x1E695DEC8];
      v31 = &v38;
    }

    userQuery = [v30 arrayWithObjects:v31 count:1];

    [v15 setInternalSortDescriptors:userQuery];
LABEL_25:

    goto LABEL_38;
  }

  photoLibrary12 = [collectionCopy photoLibrary];
  v15 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary12];

  if (([v15 hasAnySortDescriptors] & 1) == 0)
  {
    v23 = [(PHObject *)PHAsset internalSortDescriptorForPropertyKey:@"creationDate" ascending:1];
    v40 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
    [v15 setInternalSortDescriptors:v24];
  }

LABEL_38:
  if (criteriaCopy)
  {
    v34 = [[PHQueryChangeDetectionCriteria alloc] initWithPLQueryChangeDetectionCriteria:criteriaCopy];
    if (v34)
    {
      photoLibrary13 = [collectionCopy photoLibrary];
      v36 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v15 photoLibrary:photoLibrary13];

      [v36 setChangeDetectionCriteria:v34];
      v15 = v36;
    }
  }

  return v15;
}

+ (id)_fetchOptionsForFetchingAssetsFromImportSessions:(id)sessions options:(id)options
{
  v12[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  firstObject = [sessions firstObject];
  photoLibrary = [firstObject photoLibrary];
  v8 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  if (([v8 hasAnySortDescriptors] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

    [v8 setInternalSortDescriptors:v10];
  }

  return v8;
}

+ (BOOL)isToManySelfInPredicate:(id)predicate
{
  predicateCopy = predicate;
  objc_opt_class();
  v4 = predicateCopy;
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
    leftExpression = [v6 leftExpression];
    v8 = [leftExpression expressionType] == 1 && objc_msgSend(v6, "predicateOperatorType") == 10 && objc_msgSend(v6, "comparisonPredicateModifier");
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)combinedFetchRequestForQueries:(id)queries
{
  v49 = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
  firstObject = [queriesCopy firstObject];
  fetchType = [firstObject fetchType];
  v6 = [PHPhotoLibrary classForFetchType:fetchType];

  managedEntityName = [(objc_class *)v6 managedEntityName];
  photoLibrary = [firstObject photoLibrary];
  managedObjectContextForCurrentQueueQoS = [photoLibrary managedObjectContextForCurrentQueueQoS];
  v40 = managedEntityName;
  v10 = PLSafeEntityForNameInManagedObjectContext();

  v11 = objc_opt_new();
  v39 = v10;
  [v11 setEntity:v10];
  combinedQueryKeyPath = [firstObject combinedQueryKeyPath];
  v13 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(queriesCopy, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = queriesCopy;
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

        combinedQuerySeparatingIdentifier = [*(*(&v41 + 1) + 8 * i) combinedQuerySeparatingIdentifier];
        [v13 addObject:combinedQuerySeparatingIdentifier];
      }

      v16 = [v14 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v16);
  }

  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN (%@)", combinedQueryKeyPath, v13];
  v21 = [firstObject effectivePredicateForPHClass:v6 includingBasePredicate:0];
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
    expressionForEvaluatedObject = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
    [v26 setExpression:expressionForEvaluatedObject];

    [v26 setExpressionResultType:2000];
    v28 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v28 setName:combinedQueryKeyPath];
    v29 = [MEMORY[0x1E696ABC8] expressionForKeyPath:combinedQueryKeyPath];
    [v28 setExpression:v29];

    [v28 setExpressionResultType:2000];
    v46[0] = v26;
    v46[1] = v28;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    [v11 setPropertiesToFetch:v30];

    _effectiveSortDescriptors = [firstObject _effectiveSortDescriptors];
    [v11 setSortDescriptors:_effectiveSortDescriptors];
    if ([firstObject _isAlbumContentSort] && objc_msgSend(firstObject, "_isAlbumContentTitleSort"))
    {
      relationshipKeyPathsForPrefetching = [v11 relationshipKeyPathsForPrefetching];
      if (([relationshipKeyPathsForPrefetching containsObject:@"additionalAttributes.title"] & 1) == 0)
      {
        v36 = relationshipKeyPathsForPrefetching;
        if ([relationshipKeyPathsForPrefetching count])
        {
          [relationshipKeyPathsForPrefetching arrayByAddingObject:@"additionalAttributes.title"];
        }

        else
        {
          v45 = @"additionalAttributes.title";
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
        }
        v34 = ;
        [v11 setRelationshipKeyPathsForPrefetching:v34];

        relationshipKeyPathsForPrefetching = v36;
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

+ (unsigned)_excludeMaskForUserLibraryWithFetchOptions:(id)options
{
  optionsCopy = options;
  v4 = optionsCopy;
  if (optionsCopy)
  {
    includeAssetSourceTypes = [optionsCopy includeAssetSourceTypes];
  }

  else
  {
    includeAssetSourceTypes = 0;
  }

  v6 = (includeAssetSourceTypes & 2) == 0 && includeAssetSourceTypes != 0;
  v7 = (includeAssetSourceTypes & 4) == 0 && includeAssetSourceTypes != 0;
  if (v4)
  {
    v8 = [v4 includeGuestAssets] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  BYTE2(v12) = v7;
  BYTE1(v12) = ((includeAssetSourceTypes & 0x100) == 0) & ~[v4 includeCollectionShareAssets];
  LOBYTE(v12) = 1;
  HIBYTE(v11) = (includeAssetSourceTypes & 0x40) == 0;
  BYTE6(v11) = v8;
  BYTE5(v11) = (includeAssetSourceTypes & 0x10) == 0;
  BYTE4(v11) = 0;
  LODWORD(v11) = 16842752;
  v9 = [MEMORY[0x1E69BF328] validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:v6 cameraConnectionKit:0 cloudPhotoLibrary:v11 wallpaper_UNUSED:v12 momentShared:? placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
  if (includeAssetSourceTypes && (includeAssetSourceTypes & 1) == 0)
  {
    v9 |= [MEMORY[0x1E69BF328] maskForUserLibrary];
  }

  return v9;
}

+ (BOOL)_isKindOfMomentOrAlbumEntity:(id)entity
{
  entityCopy = entity;
  if (_isKindOfMomentOrAlbumEntity__onceToken != -1)
  {
    dispatch_once(&_isKindOfMomentOrAlbumEntity__onceToken, &__block_literal_global_37224);
  }

  if ([entityCopy isKindOfEntity:_isKindOfMomentOrAlbumEntity__momentEntity])
  {
    v4 = 1;
  }

  else
  {
    v4 = [entityCopy isKindOfEntity:_isKindOfMomentOrAlbumEntity__albumEntity];
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

+ (id)_filterPredicateFromFetchOptionsPredicate:(id)predicate options:(id)options phClass:(Class)class
{
  v33 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  optionsCopy = options;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = predicateCopy;
    v11 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = v10;
    subpredicates = [v10 subpredicates];
    v13 = [subpredicates countByEnumeratingWithState:&v26 objects:v32 count:16];
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
            objc_enumerationMutation(subpredicates);
          }

          v17 = [self _filterPredicateFromFetchOptionsPredicate:*(*(&v26 + 1) + 8 * i) options:optionsCopy phClass:class];
          [v11 addObject:v17];
        }

        v14 = [subpredicates countByEnumeratingWithState:&v26 objects:v32 count:16];
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

    v18 = [(objc_class *)class fetchPredicateFromComparisonPredicate:predicateCopy options:optionsCopy];
  }

  if (!v18)
  {
LABEL_16:
    v30 = @"predicate";
    v31 = predicateCopy;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v21 = MEMORY[0x1E696AEC0];
    predicateFormat = [predicateCopy predicateFormat];
    v23 = [v21 stringWithFormat:@"Unsupported predicate in fetch options: %@", predicateFormat];

    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:v20];
    objc_exception_throw(v24);
  }

  return v18;
}

+ (id)_containerIdentifierForFetchType:(id)type predicate:(id)predicate outRelationship:(id *)relationship
{
  typeCopy = type;
  predicateCopy = predicate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    keyPath = 0;
    goto LABEL_9;
  }

  leftExpression = [predicateCopy leftExpression];
  if ([leftExpression expressionType] != 3)
  {
    v16 = 0;
    keyPath = 0;
    goto LABEL_15;
  }

  keyPath = [leftExpression keyPath];

  if (!keyPath)
  {
    v16 = 0;
LABEL_9:
    constantValue2 = 0;
    if (!relationship)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = [(objc_class *)[PHPhotoLibrary classForFetchType:?]];
  managedObjectModel = [MEMORY[0x1E69BE578] managedObjectModel];
  entitiesByName = [managedObjectModel entitiesByName];
  v14 = [entitiesByName objectForKey:v11];

  relationshipsByName = [v14 relationshipsByName];
  v16 = [relationshipsByName objectForKey:keyPath];

  if (!v16)
  {
    goto LABEL_9;
  }

  leftExpression = [predicateCopy rightExpression];
  if (![leftExpression expressionType])
  {
    constantValue = [leftExpression constantValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      constantValue2 = [leftExpression constantValue];
      goto LABEL_16;
    }
  }

LABEL_15:
  constantValue2 = 0;
LABEL_16:

  if (relationship)
  {
LABEL_10:
    v20 = v16;
    *relationship = v16;
  }

LABEL_11:

  return constantValue2;
}

+ (id)_transformedSortDescriptors:(id)descriptors forFetchType:(id)type
{
  typeCopy = type;
  descriptorsCopy = descriptors;
  v7 = [descriptorsCopy mutableCopy];
  v8 = [PHPhotoLibrary classForFetchType:typeCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PHQuery__transformedSortDescriptors_forFetchType___block_invoke;
  v11[3] = &unk_1E75A8C60;
  v13 = v8;
  v9 = v7;
  v12 = v9;
  [descriptorsCopy enumerateObjectsUsingBlock:v11];

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

+ (id)defaultSortDescriptorForFetchType:(id)type predicate:(id)predicate ascending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v6 = [self _relationshipForFetchType:type predicate:predicate];
  inverseRelationship = [v6 inverseRelationship];
  v8 = inverseRelationship;
  if (inverseRelationship && [inverseRelationship isToMany] && objc_msgSend(v8, "isOrdered"))
  {
    v9 = MEMORY[0x1E696AEB0];
    name = [v6 name];
    v11 = [v9 sortDescriptorWithKey:name ascending:ascendingCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_relationshipForFetchType:(id)type predicate:(id)predicate
{
  typeCopy = type;
  predicateCopy = predicate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    keyPath = 0;
    goto LABEL_7;
  }

  leftExpression = [predicateCopy leftExpression];
  if ([leftExpression expressionType] == 3)
  {
    keyPath = [leftExpression keyPath];
    goto LABEL_4;
  }

  if ([leftExpression expressionType] == 4)
  {
    function = [leftExpression function];
    lowercaseString = [function lowercaseString];
    if (![lowercaseString isEqualToString:@"noindex:"])
    {
      keyPath = 0;
      v13 = 0;
      goto LABEL_15;
    }

    arguments = [leftExpression arguments];
    v15 = [arguments count];

    if (v15 == 1)
    {
      arguments2 = [leftExpression arguments];
      firstObject = [arguments2 firstObject];

      if ([firstObject expressionType] == 3)
      {
        keyPath = [firstObject keyPath];
      }

      else
      {
        keyPath = 0;
      }

LABEL_4:
      if (keyPath)
      {
        leftExpression = [(objc_class *)[PHPhotoLibrary classForFetchType:?]];
        function = [MEMORY[0x1E69BE578] managedObjectModel];
        entitiesByName = [function entitiesByName];
        lowercaseString = [entitiesByName objectForKey:leftExpression];

        relationshipsByName = [lowercaseString relationshipsByName];
        v13 = [relationshipsByName objectForKey:keyPath];

LABEL_15:
        goto LABEL_16;
      }

LABEL_7:
      v13 = 0;
      goto LABEL_17;
    }
  }

  keyPath = 0;
  v13 = 0;
LABEL_16:

LABEL_17:

  return v13;
}

+ (id)queryForType:(id)type withBasePredicate:(id)predicate seedOIDs:(id)ds inLibrary:(id)library
{
  libraryCopy = library;
  dsCopy = ds;
  predicateCopy = predicate;
  typeCopy = type;
  v14 = [[self alloc] initForType:typeCopy withBasePredicate:predicateCopy seedOIDs:dsCopy inLibrary:libraryCopy];

  return v14;
}

+ (id)queryForType:(id)type withBasePredicate:(id)predicate inLibrary:(id)library
{
  libraryCopy = library;
  predicateCopy = predicate;
  typeCopy = type;
  v11 = [[self alloc] initForType:typeCopy withBasePredicate:predicateCopy inLibrary:libraryCopy];

  return v11;
}

@end