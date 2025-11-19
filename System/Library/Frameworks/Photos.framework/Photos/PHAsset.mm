@interface PHAsset
+ (BOOL)_isLibraryScopeExiting:(id)a3;
+ (BOOL)_isLivePhotoWithPhotoIris:(BOOL)a3 hasAdjustments:(BOOL)a4 videoCpDuration:(int64_t)a5 videoCPVisibility:(unsigned __int16)a6 sourceType:(unint64_t)a7;
+ (BOOL)_libraryScopeAssetContributedByCurrentUser:(id)a3;
+ (BOOL)isEligibleForSpatialGenerationWithPixelSize:(CGSize)a3;
+ (Class)propertySetClassForPropertySet:(id)a3;
+ (PHFetchResult)fetchAssetsInAssetCollection:(PHAssetCollection *)assetCollection options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchAssetsWithALAssetURLs:(NSArray *)assetURLs options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchAssetsWithBurstIdentifier:(NSString *)burstIdentifier options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchAssetsWithLocalIdentifiers:(NSArray *)identifiers options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchAssetsWithMediaType:(PHAssetMediaType)mediaType options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchKeyAssetsInAssetCollection:(PHAssetCollection *)assetCollection options:(PHFetchOptions *)options;
+ (id)_assetFetchResultFromAssets:(id)a3 options:(id)a4;
+ (id)_composePropertiesToFetchWithHint:(unint64_t)a3;
+ (id)_currentTimestampString;
+ (id)_descriptionForMediaSubtype:(unint64_t)a3;
+ (id)_descriptionForVariationSuggestionStates:(unint64_t)a3;
+ (id)_descriptionForVariationSuggestionType:(unint64_t)a3;
+ (id)_fetchRepresentativeAssetInAssetCollection:(id)a3;
+ (id)_imageManagerRequestLoggingQueue;
+ (id)_inq_highestImageManagerRequestIDsObserved;
+ (id)_inq_imageManagerRequestLogsByAssetUUID;
+ (id)_inq_imageManagerRequestMessagesByRequestIDForAssetUUID:(id)a3 requestID:(int64_t)a4;
+ (id)_requestCuratedAssetInAssetCollection:(id)a3 referenceAsset:(id)a4 referencePersons:(id)a5 fetchOptions:(id)a6 onlyKey:(BOOL)a7;
+ (id)_transformMediaSubtypeReferences:(id)a3 inComparisonPredicate:(id)a4 options:(id)a5;
+ (id)_unfetchedPropertySetsForAssets:(id)a3 fromPropertySets:(id)a4;
+ (id)composabilityScoresOfAssets:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)corePropertiesToFetch;
+ (id)descriptionForMediaSubtypes:(unint64_t)a3;
+ (id)descriptionForMediaType:(int64_t)a3;
+ (id)descriptionForPlaybackStyle:(int64_t)a3;
+ (id)entityKeyMap;
+ (id)faceWorkerPropertiesToFetch;
+ (id)fetchAllAssetsInYearRepresentedByYearHighlight:(id)a3 options:(id)a4;
+ (id)fetchAnyCinematicVideosNeedingDeferredProcessingWithOptions:(id)a3;
+ (id)fetchAssetsAssociatedWithMomentsOfMemory:(id)a3 options:(id)a4;
+ (id)fetchAssetsCapturedOrEdited:(BOOL)a3 onThisCameraSinceDate:(id)a4 options:(id)a5;
+ (id)fetchAssetsContainingAllPersons:(id)a3 options:(id)a4;
+ (id)fetchAssetsForCloudFeedEntry:(id)a3 options:(id)a4;
+ (id)fetchAssetsForComment:(id)a3 options:(id)a4;
+ (id)fetchAssetsForFaceGroups:(id)a3 options:(id)a4;
+ (id)fetchAssetsForFaces:(id)a3 options:(id)a4;
+ (id)fetchAssetsForKeywords:(id)a3 options:(id)a4;
+ (id)fetchAssetsForOsMigrationWithOptions:(id)a3;
+ (id)fetchAssetsForPTPWithOptions:(id)a3;
+ (id)fetchAssetsForPerson:(id)a3 faceCount:(unint64_t)a4 options:(id)a5;
+ (id)fetchAssetsForPerson:(id)a3 options:(id)a4;
+ (id)fetchAssetsForPersons:(id)a3 options:(id)a4;
+ (id)fetchAssetsForReferences:(id)a3 photoLibrary:(id)a4;
+ (id)fetchAssetsForSearchLookupIdentifier:(id)a3 options:(id)a4;
+ (id)fetchAssetsForStyleablePhotoSuggestionsWithOptions:(id)a3;
+ (id)fetchAssetsFromCameraSinceDate:(id)a3 options:(id)a4;
+ (id)fetchAssetsGroupedByFaceUUIDForFaces:(id)a3;
+ (id)fetchAssetsGroupedByFaceUUIDForFaces:(id)a3 fetchPropertySets:(id)a4;
+ (id)fetchAssetsInAssetCollections:(id)a3 options:(id)a4;
+ (id)fetchAssetsInBoundingBoxWithTopLeftLocation:(id)a3 bottomRightLocation:(id)a4 options:(id)a5;
+ (id)fetchAssetsInImportSessions:(id)a3 options:(id)a4;
+ (id)fetchAssetsInLibraryScope:(id)a3 fromAssets:(id)a4;
+ (id)fetchAssetsInLibraryScope:(id)a3 options:(id)a4;
+ (id)fetchAssetsInPreviewStateInLibraryScope:(id)a3 options:(id)a4;
+ (id)fetchAssetsInPreviewStateWithPhotosOrPhotosDeferredSuggestedByClientTypeWithOptions:(id)a3;
+ (id)fetchAssetsInPreviewStateWithSuggestedByClientType:(signed __int16)a3 options:(id)a4;
+ (id)fetchAssetsMatchingAdjustedStableHash:(id)a3 photoLibrary:(id)a4;
+ (id)fetchAssetsMatchingOriginalStableHash:(id)a3 photoLibrary:(id)a4;
+ (id)fetchAssetsThroughAssetPersonEdgesForPerson:(id)a3 options:(id)a4;
+ (id)fetchAssetsWithCloudIdentifiers:(id)a3 options:(id)a4;
+ (id)fetchAssetsWithCurrentUserAsLibraryScopeContributor:(BOOL)a3 inLibraryScope:(id)a4 options:(id)a5;
+ (id)fetchAssetsWithObjectIDs:(id)a3 options:(id)a4;
+ (id)fetchAssetsWithSyndicationIdentifiers:(id)a3 options:(id)a4 includeRejected:(BOOL)a5;
+ (id)fetchAssetsWithUUIDs:(id)a3 options:(id)a4;
+ (id)fetchAssetsWithoutOriginalsInAssetCollection:(id)a3 options:(id)a4;
+ (id)fetchCollageAssetsForDayHighlight:(id)a3 options:(id)a4;
+ (id)fetchCuratedAssetsForMomentShareCreationWithAssets:(id)a3 options:(id)a4;
+ (id)fetchCuratedAssetsInAssetCollection:(id)a3 options:(id)a4;
+ (id)fetchCustomUserAssetsInMemory:(id)a3 options:(id)a4;
+ (id)fetchExclusiveAssetsForSocialGroup:(id)a3 options:(id)a4;
+ (id)fetchExclusiveSocialGroupAssetsForPersons:(id)a3 minimumNumberOfSharedAssets:(unint64_t)a4 options:(id)a5 error:(id *)a6;
+ (id)fetchExtendedCuratedAndRepresentativeAssetsAssociatedWithMemory:(id)a3 options:(id)a4;
+ (id)fetchExtendedCuratedAssetsInAssetCollection:(id)a3 options:(id)a4;
+ (id)fetchGuestAssetsInCollectionContainingAsset:(id)a3 options:(id)a4;
+ (id)fetchInclusiveAssetsForSocialGroup:(id)a3 options:(id)a4;
+ (id)fetchKeyAssetByHighlightUUIDForHighlights:(id)a3 options:(id)a4;
+ (id)fetchKeyAssetByMemoryUUIDForMemories:(id)a3 options:(id)a4;
+ (id)fetchKeyAssetBySuggestionUUIDForSuggestions:(id)a3 options:(id)a4;
+ (id)fetchKeyAssetBySuggestionUUIDForSuggestionsOIDs:(id)a3 options:(id)a4;
+ (id)fetchKeyAssetForEachSuggestion:(id)a3 options:(id)a4 useSuggestionsSortOrder:(BOOL)a5;
+ (id)fetchKeyAssetForExtendedSceneIdentifier:(unint64_t)a3 aboveConfidenceThreshold:(double)a4 minimumSceneAnalysisVersion:(signed __int16)a5 options:(id)a6;
+ (id)fetchKeyAssetForPerson:(id)a3 options:(id)a4;
+ (id)fetchKeyAssetForSocialGroup:(id)a3 createIfNeeded:(BOOL)a4 options:(id)a5;
+ (id)fetchKeyAssetsForCollectionList:(id)a3 options:(id)a4;
+ (id)fetchKeyCuratedAssetInAssetCollection:(id)a3 referenceAsset:(id)a4 options:(id)a5;
+ (id)fetchKeyCuratedAssetInAssetCollection:(id)a3 referencePersons:(id)a4;
+ (id)fetchMovieCuratedAssetsInMemory:(id)a3;
+ (id)fetchPredicateFromComparisonPredicate:(id)a3 options:(id)a4;
+ (id)fetchPreviewAssetsForMomentShareCreationWithAssets:(id)a3 options:(id)a4;
+ (id)fetchReducedCuratedAssetsInMemory:(id)a3 options:(id)a4;
+ (id)fetchRepresentativeAssetsInAssetCollection:(id)a3;
+ (id)fetchSummaryCurationForHighlight:(id)a3 fetchOptions:(id)a4 allowsOnDemand:(BOOL)a5 error:(id *)a6;
+ (id)fetchUserCuratedAssetsInMemory:(id)a3;
+ (id)fetchUserCuratedAssetsInMemory:(id)a3 options:(id)a4;
+ (id)fetchUserHiddenAssetsWithOptions:(id)a3;
+ (id)fetchVisibleAssetsWithObjectIDs:(id)a3 options:(id)a4;
+ (id)imageManagerPropertiesToFetch;
+ (id)internalSortDescriptorsWithCreationDateAscending:(BOOL)a3;
+ (id)locationPropertiesToFetch;
+ (id)originalUniformTypeIdentifierForAsset:(id)a3;
+ (id)pl_managedAssetsForAssets:(id)a3;
+ (id)predicateForResourcesForOsMigrationIncludeLocalOnly:(BOOL)a3 iCPLEnabled:(BOOL)a4;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
+ (id)propertySetAccessorsByPropertySet;
+ (id)propertySetsForPropertyFetchHints:(unint64_t)a3;
+ (id)senderIdentifierByAssetUUIDForAssets:(id)a3;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
+ (int64_t)countOfAssetsWithLocationFromUUIDs:(id)a3 photoLibrary:(id)a4;
+ (unint64_t)_extendedPropertyFetchHintsForPropertySets:(id)a3;
+ (unint64_t)propertyFetchHintsForPropertySets:(id)a3;
+ (void)_batchFetchAdditionalPropertySetsIfNeeded:(id)a3 forAssets:(id)a4;
+ (void)_inq_recordRequestID:(int64_t)a3;
+ (void)_inq_trimToMostRecentImageManagerMessages;
+ (void)computeStableHashesOfAsset:(id)a3 completionHandler:(id)a4;
- (BOOL)_canHandleAdjustmentData:(id)a3 withOptions:(id)a4;
- (BOOL)_isPartOfAvalancheWithKind:(unsigned __int16)a3;
- (BOOL)canPerformEditOperation:(PHAssetEditOperation)editOperation;
- (BOOL)canPerformSharingAction;
- (BOOL)hasLargerThanThumbResourceLocal;
- (BOOL)hasPeopleSceneMidOrGreaterConfidence;
- (BOOL)hasPhotoColorAdjustments;
- (BOOL)hasPhotoStreamTagID;
- (BOOL)isAnimatedGIF;
- (BOOL)isCinematicVideo;
- (BOOL)isCloudPhotoLibraryAsset;
- (BOOL)isCloudSharedAsset;
- (BOOL)isCollectionShareAsset;
- (BOOL)isDeleted;
- (BOOL)isEligibleForSpatialGenerationIncludingStereo:(BOOL)a3;
- (BOOL)isGuestAsset;
- (BOOL)isHDR;
- (BOOL)isHDRVideo;
- (BOOL)isHDVideo;
- (BOOL)isHEICSequence;
- (BOOL)isHEIF;
- (BOOL)isHighFrameRateVideo;
- (BOOL)isIncompleteLivePhotoMissingVideoComplement;
- (BOOL)isJPEG;
- (BOOL)isJPEG2000;
- (BOOL)isLocalVideoKeyFrameValid;
- (BOOL)isLocatedAtCoordinates:(CLLocationCoordinate2D)a3;
- (BOOL)isMediaSubtype:(unint64_t)a3;
- (BOOL)isMomentSharedAsset;
- (BOOL)isOffline;
- (BOOL)isOriginalRaw;
- (BOOL)isOriginalSRGB;
- (BOOL)isPDF;
- (BOOL)isPNG;
- (BOOL)isPSD;
- (BOOL)isPhotoIrisPlaceholder;
- (BOOL)isPhotoStreamPhoto;
- (BOOL)isPrimaryImageFormat;
- (BOOL)isRAW;
- (BOOL)isRecoveredAsset;
- (BOOL)isReferencedAsset;
- (BOOL)isScreenRecording;
- (BOOL)isSpatial3DPresentation;
- (BOOL)isSpatialMedia;
- (BOOL)isSpatialPresentation;
- (BOOL)isStreamedVideo;
- (BOOL)isSyndicatedAssetSavedToUserLibrary;
- (BOOL)isTIFF;
- (BOOL)isTimelapsePlaceholder;
- (BOOL)isVariationSuggestionStatesUnknown;
- (BOOL)isWalrusEnabled;
- (BOOL)representsBurst;
- (BOOL)shouldUseRAWResourceAsUnadjustedEditBase;
- (BOOL)shouldUseRAWResourceWithOriginalResourceChoice:(unint64_t)a3;
- (CGRect)acceptableCropRect;
- (CGRect)normalizedFaceAreaRect;
- (CGRect)originalFaceAreaRect;
- (CGRect)preferredCropRect;
- (CGRect)suggestedAdaptiveCropWithFaceRectScaleFactor:(double)a3 andOutputCropScore:(double *)a4 andAdaptiveHeadroom:(double *)a5;
- (CGRect)suggestedAdaptiveCropWithFaceRegionsForOutputCropScore:(double *)a3 andAdaptiveHeadroom:(double *)a4;
- (CGRect)suggestedCropForAspectRatio:(double)a3 withFocusRegion:(CGRect)a4 andOutputCropScore:(double *)a5;
- (CGRect)suggestedCropForTargetSize:(CGSize)a3;
- (CGRect)suggestedCropForTargetSize:(CGSize)a3 withFocusRegion:(CGRect)a4;
- (CGRect)suggestedCropForTargetSize:(CGSize)a3 withFocusRegion:(CGRect)a4 andOutputCropScore:(double *)a5;
- (CGRect)suggestedCropForTargetSize:(CGSize)a3 withOcclusionRegion:(CGRect)a4 andOutputCropScore:(double *)a5;
- (CGSize)imageSize;
- (CGSize)originalImageSize;
- (CGSize)originalUnorientedSize;
- (CGSize)unorientedSize;
- (CLLocationCoordinate2D)locationCoordinate;
- (NSData)distanceIdentity;
- (NSDate)localCreationDate;
- (NSManagedObjectContext)managedObjectContextForFetchingResources;
- (NSNumber)livePhotoSRLCompensationAmount;
- (NSString)adjustmentFormatIdentifier;
- (NSString)cloudIdentifier;
- (NSString)croppingDebugDescription;
- (NSString)description;
- (NSString)metadataDebugDescription;
- (NSString)originalFilename;
- (NSString)resourcesDebugDescription;
- (NSString)syndicatedAppDisplayName;
- (NSString)thumbnailIdentifier;
- (NSString)title;
- (NSString)variationSuggestionStatesDetails;
- (NSURL)ALAssetURL;
- (NSValue)originalFaceAreaRectValue;
- (PHAsset)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (PHAssetPhotosSmartStyleExtendedProperties)fetchSmartStyleExtendedProperties;
- (PHAssetSourceType)sourceType;
- (PHContentEditingInputRequestID)requestContentEditingInputWithOptions:(PHContentEditingInputRequestOptions *)options completionHandler:(void *)completionHandler;
- (UTType)contentType;
- (double)aspectRatio;
- (id)StoryPlaybackProperties;
- (id)__dictionaryWithContentsOfData:(id)a3;
- (id)_createAnalysisStatePropertyObject;
- (id)_createCommentPropertyObject;
- (id)_createKeywordPropertyObject;
- (id)_createPropertyObjectOfClass:(Class)a3 preFetchedProperties:(id)a4;
- (id)_imageRequestOptionsForBaseVersion:(int64_t)a3 options:(id)a4 progressEstimateForImageProgress:(id)a5;
- (id)_sceneClassificationsWithPredicate:(id)a3;
- (id)_uncachedLocation;
- (id)_unfetchedPropertySetsFromPropertySets:(id)a3;
- (id)_videoRequestOptionsForBaseVersion:(int64_t)a3 options:(id)a4 progressEstimateForVideoProgress:(id)a5;
- (id)adjustmentProperties;
- (id)adjustmentVersion;
- (id)adjustmentsDebugMetadata;
- (id)aestheticProperties;
- (id)assetAnalysisStateProperties;
- (id)assetUserActivityProperties;
- (id)cameraCaptureDeviceProperties;
- (id)characterRecognitionProperties;
- (id)cloudLocalStateProperties;
- (id)cloudSharedProperties;
- (id)coarseLocationProperties;
- (id)commentProperties;
- (id)creationDateAdjustedForTimeZone;
- (id)curationProperties;
- (id)descriptionForAestheticsWithManagedAsset:(id)a3;
- (id)descriptionForMediaAnalysisWithManagedAsset:(id)a3;
- (id)descriptionForPhotoAnanlysisWallpaperProeprtiesWithManagedAsset:(id)a3;
- (id)descriptionProperties;
- (id)destinationAssetCopyProperties;
- (id)detailedDebugDescriptionInLibrary:(id)a3;
- (id)evaluationDebugMetadata;
- (id)fileURLForFullsizeRenderImage;
- (id)fileURLForVideoComplementFile;
- (id)fileURLsForDiagnosticFiles;
- (id)gatingDebugMetadata;
- (id)gridMetadataProperties;
- (id)iconicScoreProperties;
- (id)importProperties;
- (id)keywordProperties;
- (id)libraryID;
- (id)libraryScopeProperties;
- (id)localDateProperties;
- (id)locationDataProperties;
- (id)mainFileURL;
- (id)managedAssetForPhotoLibrary:(id)a3;
- (id)mediaAnalysisProperties;
- (id)messagesForRecentImageManagerRequests;
- (id)montageProperties;
- (id)originalAVAssetCommonMetadata;
- (id)originalAVAssetOrProxy;
- (id)originalCreationDateWithTimeZone:(id *)a3;
- (id)originalImageProperties;
- (id)originalMetadataProperties;
- (id)originalUTI;
- (id)pathForAdjustmentDataFile;
- (id)pathForAdjustmentFile;
- (id)pathForOriginalFile;
- (id)photoAnalysisWallpaperProperties;
- (id)photoIrisProperties;
- (id)photosInfoPanelExtendedProperties;
- (id)photosInfoPanelLocationProperties;
- (id)photosOneUpProperties;
- (id)photosSmartStyleExtendedProperties;
- (id)pl_managedAsset;
- (id)pl_managedAssetFromPhotoLibrary:(id)a3;
- (id)pl_photoLibrary;
- (id)ptpProperties;
- (id)sceneAnalysisProperties;
- (id)sceneClassificationsOfTypes:(id)a3;
- (id)sceneprintProperties;
- (id)shortDescriptionForSensitivityState;
- (id)spatialMediaProperties;
- (id)textUnderstandingProperties;
- (id)visualSearchProperties;
- (id)wallpaperCroppingDebugKeyValuePairs;
- (int)analysisStateForWorkerType:(signed __int16)a3 outLastIgnoreDate:(id *)a4 outIgnoreUntilDate:(id *)a5;
- (int)orientation;
- (int64_t)_baseVersionForAdjustmentData:(id)a3 canHandleAdjustmentData:(BOOL)a4;
- (int64_t)originalImageOrientation;
- (int64_t)syndicationEligibility;
- (signed)kind;
- (unint64_t)contentChangeFromAsset:(id)a3;
- (unint64_t)originalChoiceToFallbackForUnsupportRAW;
- (unint64_t)originalResourceChoice;
- (unint64_t)thumbnailIndex;
- (unint64_t)variationSuggestionStatesForVariationType:(unint64_t)a3;
- (void)_attachPropertyObjectOfClass:(Class)a3 preFetchedProperties:(id)a4;
- (void)_createExtendedPropertySetsIfNeededWithPropertyHint:(unint64_t)a3 fetchDictionary:(id)a4;
- (void)_initializeCachedLocation;
- (void)_renderTemporaryVideoForObjectBuilder:(id)a3 resultHandler:(id)a4;
- (void)_requestRenderedVideoForVideoURL:(id)a3 adjustmentData:(id)a4 canHandleAdjustmentData:(BOOL)a5 resultHandler:(id)a6;
- (void)_setupAdjustmentAndDeferredProcessingAttributesFromFetchDictionary:(id)a3;
- (void)_setupAnalysisScoreAttributesFromFetchDictionary:(id)a3;
- (void)_setupAuxiliaryIdentifierAttributesFromFetchDictionary:(id)a3;
- (void)_setupBadgeAttributesFromFetchDictionary:(id)a3;
- (void)_setupFaceAttributesFromFetchDictionary:(id)a3;
- (void)_setupFileSystemAttributesFromFetchDictionary:(id)a3;
- (void)_setupGeometryAttributesFromFetchDictionary:(id)a3;
- (void)_setupHDRAndDepthMediaSubtypesFromFetchDictionary:(id)a3;
- (void)_setupKindSubtypeFromFetchDictionary:(id)a3;
- (void)_setupLocationAndCreationDateAttributesFromFetchDictionary:(id)a3;
- (void)_setupSmartStyleFromFetchDictionary:(id)a3;
- (void)_setupSpatialTypeFromFetchDictionary:(id)a3;
- (void)_setupTypeAndPersistenceStateAttributesFromFetchDictionary:(id)a3;
- (void)_setupUIStateAndTrashAttributesFromFetchDictionary:(id)a3;
- (void)cancelContentEditingInputRequest:(PHContentEditingInputRequestID)requestID;
- (void)generateLargeThumbnailFileIfNecessary;
- (void)getFingerPrintForAssetType:(int64_t)a3 withCompletionHandler:(id)a4;
- (void)getOriginalStableHashWithCompletionHandler:(id)a3;
- (void)recordImageManagerMessageForRequestID:(int)a3 message:(id)a4;
@end

@implementation PHAsset

+ (id)corePropertiesToFetch
{
  pl_dispatch_once();
  v2 = corePropertiesToFetch_array_22961;

  return v2;
}

void __32__PHAsset_corePropertiesToFetch__block_invoke(uint64_t a1)
{
  v10[55] = *MEMORY[0x1E69E9840];
  v10[0] = @"avalanchePickType";
  v10[1] = @"avalancheUUID";
  v10[2] = @"avalancheKind";
  v10[3] = @"complete";
  v10[4] = @"directory";
  v10[5] = @"filename";
  v10[6] = @"kind";
  v10[7] = @"kindSubtype";
  v10[8] = @"playbackStyle";
  v10[9] = @"playbackVariation";
  v10[10] = @"cameraProcessingAdjustmentState";
  v10[11] = @"depthType";
  v10[12] = @"savedAssetType";
  v10[13] = @"bundleScope";
  v10[14] = @"thumbnailIndex";
  v10[15] = @"width";
  v10[16] = @"height";
  v10[17] = @"duration";
  v10[18] = @"hdrType";
  v10[19] = @"favorite";
  v10[20] = @"hidden";
  v10[21] = @"adjustmentsState";
  v10[22] = @"trashedState";
  v10[23] = @"trashedDate";
  v10[24] = @"adjustmentTimestamp";
  v10[25] = @"curationScore";
  v10[26] = @"overallAestheticScore";
  v10[27] = @"highlightVisibilityScore";
  v10[28] = @"originalColorSpace";
  v10[29] = @"imageRequestHints";
  v10[30] = @"deferredProcessingNeeded";
  v10[31] = @"videoDeferredProcessingNeeded";
  v10[32] = @"dateCreated";
  v10[33] = @"locationData";
  v10[34] = @"modificationDate";
  v10[35] = @"addedDate";
  v10[36] = @"orientation";
  v10[37] = @"uniformTypeIdentifier";
  v10[38] = @"hdrGain";
  v10[39] = @"highFrameRateState";
  v10[40] = @"cloudAssetGUID";
  v10[41] = @"videoCpDurationValue";
  v10[42] = @"videoCpVisibilityState";
  v10[43] = @"cloudIsDeletable";
  v10[44] = @"faceAdjustmentVersion";
  v10[45] = @"faceAreaPoints";
  v10[46] = @"packedPreferredCropRect";
  v10[47] = @"packedAcceptableCropRect";
  v10[48] = @"packedBadgeAttributes";
  v10[49] = @"syndicationState";
  v10[50] = @"activeLibraryScopeParticipationState";
  v10[51] = @"currentSleetCast";
  v10[52] = @"spatialType";
  v10[53] = @"generativeMemoryCreationEligibilityState";
  v10[54] = @"compactSCSensitivityAnalysis";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:55];
  v3 = corePropertiesToFetch_array_22961;
  corePropertiesToFetch_array_22961 = v2;

  v4 = corePropertiesToFetch_array_22961;
  v5 = [*(a1 + 32) locationPropertiesToFetch];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  v7 = corePropertiesToFetch_array_22961;
  corePropertiesToFetch_array_22961 = v6;

  if (PLPlatformEagerlyFetchFaceRegions())
  {
    v8 = [corePropertiesToFetch_array_22961 arrayByAddingObject:@"additionalAttributes.faceRegions"];
    v9 = corePropertiesToFetch_array_22961;
    corePropertiesToFetch_array_22961 = v8;
  }
}

+ (id)locationPropertiesToFetch
{
  pl_dispatch_once();
  v2 = locationPropertiesToFetch_pl_once_object_15;

  return v2;
}

void __36__PHAsset_locationPropertiesToFetch__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"latitude";
  v3[1] = @"longitude";
  v3[2] = @"dateCreated";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = [v0 copy];
  v2 = locationPropertiesToFetch_pl_once_object_15;
  locationPropertiesToFetch_pl_once_object_15 = v1;
}

- (void)_initializeCachedLocation
{
  v3 = objc_initWeak(&location, self);

  v4 = objc_alloc(MEMORY[0x1E69BF270]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__PHAsset__initializeCachedLocation__block_invoke;
  v7[3] = &unk_1E75A9848;
  objc_copyWeak(&v8, &location);
  v5 = [v4 initWithRetriableBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  lazyCachedLocation = self->_lazyCachedLocation;
  self->_lazyCachedLocation = v5;
}

- (PHAssetSourceType)sourceType
{
  v3 = objc_opt_class();
  v4 = [(PHAsset *)self savedAssetType];

  return [v3 sourceTypeFromSavedAssetType:v4];
}

- (BOOL)representsBurst
{
  if (([(PHAsset *)self avalanchePickType]& 0x10) == 0)
  {
    return 0;
  }

  return [(PHAsset *)self isPartOfBurst];
}

- (BOOL)isGuestAsset
{
  [MEMORY[0x1E69BF328] maskForGuestAsset];
  [(PHAsset *)self savedAssetType];

  return PLValidatedSavedAssetTypeApplies();
}

- (unint64_t)thumbnailIndex
{
  persistedThumbnailIndex = self->_persistedThumbnailIndex;
  if (persistedThumbnailIndex > *MEMORY[0x1E69BE9D8] || persistedThumbnailIndex < *MEMORY[0x1E69BE9D0])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return persistedThumbnailIndex;
  }
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_18;

  return v2;
}

void __23__PHAsset_entityKeyMap__block_invoke()
{
  v59[27] = *MEMORY[0x1E69E9840];
  v24 = [PHEntityKeyMap alloc];
  v57 = @"uuid";
  v58[0] = @"uuid";
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  v59[0] = v30;
  v58[1] = @"dateCreated";
  v56 = @"creationDate";
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
  v59[1] = v29;
  v58[2] = @"modificationDate";
  v55 = @"modificationDate";
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
  v59[2] = v28;
  v58[3] = @"addedDate";
  v54 = @"addedDate";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  v59[3] = v27;
  v58[4] = @"kind";
  v53 = @"mediaType";
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v59[4] = v26;
  v58[5] = @"kindSubtype";
  v52 = @"mediaSubtypes";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  v59[5] = v25;
  v58[6] = @"uniformTypeIdentifier";
  v51 = @"contentType";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  v59[6] = v23;
  v58[7] = @"duration";
  v50 = @"duration";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v59[7] = v22;
  v58[8] = @"width";
  v49 = @"pixelWidth";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v59[8] = v21;
  v58[9] = @"height";
  v48 = @"pixelHeight";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v59[9] = v20;
  v58[10] = @"favorite";
  v47[0] = @"favorite";
  v47[1] = @"isFavorite";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  v59[10] = v19;
  v58[11] = @"hidden";
  v46[0] = @"hidden";
  v46[1] = @"isHidden";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v59[11] = v18;
  v58[12] = @"originalColorSpace";
  v45 = @"originalColorSpace";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v59[12] = v17;
  v58[13] = @"curationScore";
  v44 = @"curationScore";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v59[13] = v16;
  v58[14] = @"overallAestheticScore";
  v43 = @"overallAestheticScore";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v59[14] = v15;
  v58[15] = @"highlightVisibilityScore";
  v42 = @"highlightVisibilityScore";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v59[15] = v14;
  v58[16] = @"avalancheUUID";
  v41 = @"burstIdentifier";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v59[16] = v13;
  v58[17] = @"playbackStyle";
  v40 = @"playbackStyle";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v59[17] = v12;
  v58[18] = @"playbackVariation";
  v39 = @"playbackVariation";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v59[18] = v0;
  v58[19] = @"imageRequestHints";
  v38 = @"imageRequestHints";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v59[19] = v1;
  v58[20] = @"hdrGain";
  v37 = @"hdrGain";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v59[20] = v2;
  v58[21] = @"analysisStateModificationDate";
  v36 = @"analysisStateModificationDate";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v59[21] = v3;
  v58[22] = @"packedBadgeAttributes";
  v35[0] = @"RAWBadgeAttributes";
  v35[1] = @"hasKeywords";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v59[22] = v4;
  v58[23] = @"adjustmentTimestamp";
  v34 = @"adjustmentTimestamp";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v59[23] = v5;
  v58[24] = @"additionalAttributes.importedByBundleIdentifier";
  v33 = @"curationProperties.importedByBundleIdentifier";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v59[24] = v6;
  v58[25] = @"syndicationState";
  v32 = @"syndicationState";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v59[25] = v7;
  v58[26] = @"cloudLocalState";
  v31 = @"cloudLocalStateProperties.assetCloudLocalState";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v59[26] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:27];
  v10 = [(PHEntityKeyMap *)v24 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_18;
  entityKeyMap_pl_once_object_18 = v10;
}

- (CLLocationCoordinate2D)locationCoordinate
{
  latitude = self->_locationCoordinate.latitude;
  longitude = self->_locationCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (BOOL)isCloudSharedAsset
{
  [MEMORY[0x1E69BF328] maskForCloudSharedAsset];
  [(PHAsset *)self savedAssetType];

  return PLValidatedSavedAssetTypeApplies();
}

- (id)adjustmentVersion
{
  v3 = [(PHAsset *)self adjustmentTimestamp];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PHAsset *)self creationDate];
  }

  v6 = v5;

  return v6;
}

- (CGSize)unorientedSize
{
  [(PHAsset *)self pixelWidth];
  [(PHAsset *)self pixelHeight];
  PLOrientationInverse();

  PLOrientationTransformImageSize();
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)libraryID
{
  v2 = [(PHObject *)self photoLibrary];
  v3 = [v2 libraryID];

  return v3;
}

- (id)mediaAnalysisProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x10000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (NSString)description
{
  v20.receiver = self;
  v20.super_class = PHAsset;
  v19 = [(PHObject *)&v20 description];
  v3 = [(PHAsset *)self burstIdentifier];
  v4 = &stru_1F0FC60C8;
  if (v3)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(PHAsset *)self burstIdentifier];
    v7 = [(PHAsset *)self burstSelectionTypes];
    v8 = [(PHAsset *)self representsBurst];
    v9 = @"(*)";
    if (!v8)
    {
      v9 = &stru_1F0FC60C8;
    }

    v4 = [v5 stringWithFormat:@" burst=%@/%lu%@", v6, v7, v9];
  }

  v18 = [(PHAsset *)self mediaType];
  v17 = [(PHAsset *)self mediaSubtypes];
  v10 = [(PHAsset *)self sourceType];
  v11 = [(PHAsset *)self pixelWidth];
  v12 = [(PHAsset *)self pixelHeight];
  v13 = [(PHAsset *)self creationDate];
  v14 = [(PHAsset *)self location];
  v15 = [v19 stringByAppendingFormat:@" mediaType=%ld/%ld, sourceType=%ld, (%lux%lu), creationDate=%@, location=%d, hidden=%d, favorite=%d, adjusted=%d %@", v18, v17, v10, v11, v12, v13, v14 != 0, -[PHAsset isHidden](self, "isHidden"), -[PHAsset isFavorite](self, "isFavorite"), -[PHAsset hasAdjustments](self, "hasAdjustments"), v4];

  return v15;
}

- (id)importProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x20000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

id __36__PHAsset__initializeCachedLocation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _uncachedLocation];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_uncachedLocation
{
  locationData = self->_locationData;
  if (locationData)
  {
    v3 = [MEMORY[0x1E69BE540] newLocationFromLocationData:locationData timestampIfMissing:self->_creationDate];
  }

  else
  {
    v4 = atomic_load(&self->_canUseLocationCoordinateForLocation);
    if ((v4 & 1) != 0 && (p_locationCoordinate = &self->_locationCoordinate, CLLocationCoordinate2DIsValid(self->_locationCoordinate)))
    {
      v3 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:p_locationCoordinate->latitude longitude:p_locationCoordinate->longitude];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)sceneAnalysisProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:256];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

+ (id)fetchAssetsMatchingAdjustedStableHash:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = [PHFetchOptions fetchOptionsWithInclusiveDefaultsForPhotoLibrary:a4];
  [v6 setIncludeAssetSourceTypes:15];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"additionalAttributes.adjustedStableHash", v5];

  [v6 setInternalPredicate:v7];
  v8 = [PHObject authorizationAwareFetchResultWithOptions:v6 fetchBlock:&__block_literal_global_42];

  return v8;
}

id __74__PHAsset_StableHash__fetchAssetsMatchingAdjustedStableHash_photoLibrary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetsMatchingOriginalStableHash:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = [PHFetchOptions fetchOptionsWithInclusiveDefaultsForPhotoLibrary:a4];
  [v6 setIncludeAssetSourceTypes:15];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"additionalAttributes.originalStableHash", v5];

  [v6 setInternalPredicate:v7];
  v8 = [PHObject authorizationAwareFetchResultWithOptions:v6 fetchBlock:&__block_literal_global_197];

  return v8;
}

id __74__PHAsset_StableHash__fetchAssetsMatchingOriginalStableHash_photoLibrary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (void)computeStableHashesOfAsset:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 objectID];
  v8 = [v6 pl_photoLibrary];

  v9 = [v8 assetsdClient];
  v10 = [v9 cloudClient];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__PHAsset_StableHash__computeStableHashesOfAsset_completionHandler___block_invoke;
  v12[3] = &unk_1E75A34A0;
  v13 = v5;
  v11 = v5;
  [v10 computeStableHashesOfAsset:v7 synchronously:0 completionHandler:v12];
}

void __68__PHAsset_StableHash__computeStableHashesOfAsset_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7)
  {
    v11 = v9;
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    if (v9)
    {
      v14 = *MEMORY[0x1E696AA08];
      v15[0] = v9;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    }

    else
    {
      v13 = 0;
    }

    v11 = [v12 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v13];

    if (v10)
    {
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (id)pl_managedAsset
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PHAdoptionUtilities.m" lineNumber:50 description:@"This is only callable on the main thread"];
  }

  v4 = [(PHObject *)self photoLibrary];
  v5 = [v4 mainQueueConcurrencyPhotoLibrary];
  v6 = [(PHAsset *)self managedAssetForPhotoLibrary:v5];

  return v6;
}

- (id)pl_managedAssetFromPhotoLibrary:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PHAdoptionUtilities.m" lineNumber:44 description:@"This is only callable on the main thread"];
  }

  v6 = [(PHAsset *)self managedAssetForPhotoLibrary:v5];

  return v6;
}

+ (id)pl_managedAssetsForAssets:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PHAdoptionUtilities.m" lineNumber:56 description:@"This is only callable on the main thread"];
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) pl_managedAsset];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (CGRect)suggestedAdaptiveCropWithFaceRegionsForOutputCropScore:(double *)a3 andAdaptiveHeadroom:(double *)a4
{
  v7 = [(PHAsset *)self pixelWidth];
  v8 = [(PHAsset *)self pixelHeight];
  v9 = [MEMORY[0x1E69C0790] deviceConfigurationForOrientation:1];
  v60 = 0;
  v61 = &v60;
  v62 = 0x4010000000;
  v63 = &unk_19CB85426;
  v64 = 0u;
  v65 = 0u;
  [(PHAsset *)self normalizedFaceAreaRect];
  *&v64 = v10;
  *(&v64 + 1) = v11;
  *&v65 = v12;
  *(&v65 + 1) = v13;
  v14 = [(PHAsset *)self pixelWidth];
  v15 = [(PHAsset *)self pixelHeight];
  v53 = v7;
  v16 = [[PHWallpaperAsset alloc] initWithPhotoAsset:self];
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v67 = 0;
  v68 = &v67;
  v69 = 0x2050000000;
  v18 = getPISegmentationClass_softClass;
  v70 = getPISegmentationClass_softClass;
  if (!getPISegmentationClass_softClass)
  {
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __getPISegmentationClass_block_invoke;
    v66[3] = &unk_1E75A8DF0;
    v66[4] = &v67;
    __getPISegmentationClass_block_invoke(v66);
    v18 = v68[3];
  }

  v19 = v18;
  _Block_object_dispose(&v67, 8);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __95__PHAsset_Curated__suggestedAdaptiveCropWithFaceRegionsForOutputCropScore_andAdaptiveHeadroom___block_invoke;
  v54[3] = &unk_1E75A6378;
  v57 = &v60;
  v58 = v14;
  v59 = v15;
  v20 = v9;
  v55 = v20;
  v21 = v17;
  v56 = v21;
  [v18 loadSegmentationDataForAsset:v16 options:MEMORY[0x1E695E0F8] completion:v54];
  dispatch_group_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  v22 = MEMORY[0x1E69C06A0];
  v23 = [(PHAsset *)self pixelWidth];
  v24 = [(PHAsset *)self pixelHeight];
  [(PHAsset *)self preferredCropRect];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(PHAsset *)self acceptableCropRect];
  v37 = [v22 bestAdaptiveCropRectForPosterClassification:1 layoutConfiguration:v20 sourcePixelWidth:v23 sourcePixelHeight:v24 sourcePreferredCropRectNormalized:v26 sourceAcceptableCropRectNormalized:v28 sourceFaceAreaRectNormalized:{v30, v32, v33, v34, v35, v36, v61[4], v61[5], v61[6], v61[7]}];
  v38 = v37;
  if (a3)
  {
    [v37 cropScore];
    *a3 = v39;
  }

  if (a4)
  {
    [v38 adaptiveHeadroom];
    *a4 = v40;
  }

  [v38 adaptiveVisibleRect];
  v42 = v41 * v53 + 0.0;
  v44 = v43 * v8 + 0.0;
  v46 = v45 * v53;
  v48 = v47 * v8;

  _Block_object_dispose(&v60, 8);
  v49 = v42;
  v50 = v44;
  v51 = v46;
  v52 = v48;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

void __95__PHAsset_Curated__suggestedAdaptiveCropWithFaceRegionsForOutputCropScore_andAdaptiveHeadroom___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      v21 = 138412290;
      v22 = v8;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Error loading segmentation data: %@ Use PHAsset.normalizedFaceAreaRect.", &v21, 0xCu);
    }
  }

  else
  {
    v9 = MEMORY[0x1E69C07A8];
    [*(a1 + 32) screenSize];
    v11 = v10;
    v13 = v12;
    v14 = [v5 regions];
    v15 = [v14 faceRegions];
    [v9 bestFaceRectWithImageSize:v15 deviceSize:*(a1 + 56) faceRegions:{*(a1 + 64), v11, v13}];
    v16 = *(*(a1 + 48) + 8);
    v16[4] = v17;
    v16[5] = v18;
    v16[6] = v19;
    v16[7] = v20;
  }

  dispatch_group_leave(*(a1 + 40));
}

- (CGRect)suggestedAdaptiveCropWithFaceRectScaleFactor:(double)a3 andOutputCropScore:(double *)a4 andAdaptiveHeadroom:(double *)a5
{
  v9 = [(PHAsset *)self pixelWidth];
  v10 = [(PHAsset *)self pixelHeight];
  v11 = [MEMORY[0x1E69C0790] deviceConfigurationForOrientation:1];
  [(PHAsset *)self normalizedFaceAreaRect];
  v53.origin.x = v12 + v13 * 0.5 + v13 * a3 * -0.5;
  v53.origin.y = v14 + v15 * 0.5 + v15 * a3 * -0.5;
  v56.origin.x = 0.0;
  v56.origin.y = 0.0;
  v53.size.width = v13 * a3;
  v53.size.height = v15 * a3;
  v51 = v10;
  v52 = v9;
  v56.size.width = v9;
  v56.size.height = v10;
  v54 = CGRectIntersection(v53, v56);
  x = v54.origin.x;
  width = v54.size.width;
  height = v54.size.height;
  v19 = 1.0 - (v54.origin.y + v54.size.height);
  v20 = MEMORY[0x1E69C06A0];
  v21 = [(PHAsset *)self pixelWidth];
  v22 = [(PHAsset *)self pixelHeight];
  [(PHAsset *)self preferredCropRect];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(PHAsset *)self acceptableCropRect];
  v35 = [v20 bestAdaptiveCropRectForPosterClassification:1 layoutConfiguration:v11 sourcePixelWidth:v21 sourcePixelHeight:v22 sourcePreferredCropRectNormalized:v24 sourceAcceptableCropRectNormalized:v26 sourceFaceAreaRectNormalized:{v28, v30, v31, v32, v33, v34, *&x, *&v19, *&width, *&height}];
  v36 = v35;
  if (a4)
  {
    [v35 cropScore];
    *a4 = v37;
  }

  if (a5)
  {
    [v36 adaptiveHeadroom];
    *a5 = v38;
  }

  [v36 adaptiveVisibleRect];
  v40 = v39 * v52 + 0.0;
  v42 = v41 * v51 + 0.0;
  v44 = v43 * v52;
  v46 = v45 * v51;

  v47 = v40;
  v48 = v42;
  v49 = v44;
  v50 = v46;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

- (CGRect)suggestedCropForAspectRatio:(double)a3 withFocusRegion:(CGRect)a4 andOutputCropScore:(double *)a5
{
  [(PHAsset *)self faceAreaMinX];
  v8 = v7;
  [(PHAsset *)self faceAreaMinY];
  v10 = v9;
  [(PHAsset *)self faceAreaMaxX];
  v12 = v11;
  [(PHAsset *)self faceAreaMaxY];
  v13 = v12 - v8;
  v15 = v14 - v10;
  v16 = 1.0 - (v10 + v14 - v10);
  v17 = MEMORY[0x1E69C06A0];
  v18 = [(PHAsset *)self pixelWidth];
  v19 = [(PHAsset *)self pixelHeight];
  [(PHAsset *)self preferredCropRect];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(PHAsset *)self acceptableCropRect];
  [v17 bestCropRectV2ForAspectRatio:v18 withFocusRegion:v19 sourcePixelWidth:a5 sourcePixelHeight:a3 sourcePreferredCropRectNormalized:a4.origin.x sourceAcceptableCropRectNormalized:a4.origin.y sourceFaceAreaRectNormalized:a4.size.width outputCropScore:{a4.size.height, v21, v23, v25, v27, v28, v29, v30, v31, *&v8, *&v16, *&v13, *&v15}];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [(PHAsset *)self pixelWidth];
  v41 = [(PHAsset *)self pixelHeight];
  v42 = v33 * v40 + 0.0;
  v43 = v35 * v41 + 0.0;
  v44 = v37 * v40;
  v45 = v39 * v41;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (CGRect)suggestedCropForTargetSize:(CGSize)a3 withFocusRegion:(CGRect)a4 andOutputCropScore:(double *)a5
{
  if (a3.width <= 0.0 || a3.height <= 0.0)
  {
    v10 = [(PHAsset *)self pixelWidth];
    v8 = [(PHAsset *)self pixelHeight];
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    [(PHAsset *)self suggestedCropForAspectRatio:a5 withFocusRegion:a3.width / a3.height andOutputCropScore:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
    v10 = v9;
  }

  v11 = v10;
  result.size.height = v8;
  result.size.width = v11;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)suggestedCropForTargetSize:(CGSize)a3 withOcclusionRegion:(CGRect)a4 andOutputCropScore:(double *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.height;
  v11 = a3.width;
  if (!CGRectIsNull(a4) && ((v13 = x + width, v14 = y + height, v13 <= 1.0) ? (v15 = v14 <= 1.0) : (v15 = 0), v15))
  {
    v42 = [(PHAsset *)self pixelWidth];
    v20 = [(PHAsset *)self pixelHeight];
    v45 = 0.0;
    [(PHAsset *)self suggestedCropForTargetSize:&v45 withFocusRegion:v11 andOutputCropScore:v10, 0.0, v14, 1.0, 1.0 - v14];
    if (v45 <= 0.0)
    {
      v23 = v42;
    }

    v43 = v23;
    if (v45 <= 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v20 = v24;
    }

    v40 = v21;
    if (v45 <= 0.0)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v22;
    }

    v26 = fmax(v45, 0.0);
    [(PHAsset *)self suggestedCropForTargetSize:&v45 withFocusRegion:v11 andOutputCropScore:v10, 0.0, 0.0, 1.0, y];
    if (v45 <= v26)
    {
      v30 = v20;
    }

    v41 = v30;
    if (v45 <= v26)
    {
      v31 = v43;
    }

    else
    {
      v31 = v29;
    }

    if (v45 <= v26)
    {
      v32 = v40;
    }

    else
    {
      v25 = v28;
      v32 = v27;
    }

    if (v45 > v26)
    {
      v26 = v45;
    }

    [(PHAsset *)self suggestedCropForTargetSize:&v45 withFocusRegion:v11 andOutputCropScore:v10, 0.0, 0.0, x, 1.0];
    if (v45 <= v26)
    {
      v33 = v32;
    }

    v44 = v33;
    if (v45 <= v26)
    {
      v37 = v41;
    }

    else
    {
      v25 = v34;
      v31 = v35;
      v37 = v36;
    }

    if (v45 <= v26)
    {
      v38 = v26;
    }

    else
    {
      v38 = v45;
    }

    [(PHAsset *)self suggestedCropForTargetSize:&v45 withFocusRegion:v11 andOutputCropScore:v10, v13, 0.0, 1.0 - v13, 1.0, v45];
    v39 = v45;
    if (v45 <= v38)
    {
      v19 = v37;
      v18 = v31;
      v17 = v25;
      v16 = v44;
    }

    if (a5)
    {
      if (v45 <= v38)
      {
        v39 = v38;
      }

      *a5 = v39;
    }
  }

  else
  {
    [(PHAsset *)self suggestedCropForTargetSize:a5 withFocusRegion:v11 andOutputCropScore:v10, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  }

  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)suggestedCropForTargetSize:(CGSize)a3 withFocusRegion:(CGRect)a4
{
  [(PHAsset *)self suggestedCropForTargetSize:0 withFocusRegion:a3.width andOutputCropScore:a3.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)suggestedCropForTargetSize:(CGSize)a3
{
  [(PHAsset *)self suggestedCropForTargetSize:a3.width withFocusRegion:a3.height, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (id)internalSortDescriptorsWithCreationDateAscending:(BOOL)a3
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"dateCreated" ascending:a3];
  v7[0] = v3;
  v4 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"objectID" ascending:0];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)fetchAssetsForStyleablePhotoSuggestionsWithOptions:(id)a3
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = [a3 copy];
  v4 = MEMORY[0x1E696AB28];
  v5 = [MEMORY[0x1E69BE540] predicateForStyleableAssets];
  v17[0] = v5;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %f", @"highlightBeingExtendedAssets.promotionScore", *MEMORY[0x1E69BECC8]];
  v17[1] = v6;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %d", @"highlightBeingExtendedAssets.enrichmentState", 3];
  v17[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v9 = [v4 andPredicateWithSubpredicates:v8];
  [v3 setInternalPredicate:v9];

  [v3 setPredicate:0];
  v10 = [v3 sortDescriptors];

  if (!v10)
  {
    v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v16[0] = v11;
    v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
    v16[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    [v3 setSortDescriptors:v13];
  }

  v14 = [PHAsset fetchAssetsWithOptions:v3];

  return v14;
}

+ (id)fetchSummaryCurationForHighlight:(id)a3 fetchOptions:(id)a4 allowsOnDemand:(BOOL)a5 error:(id *)a6
{
  v27[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 photoLibrary];
  if ([v9 enrichmentState] == 4)
  {
    v12 = [v9 enrichmentVersion];
    if (v12 == [v9 highlightVersion])
    {
      v13 = [v10 copy];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [v11 librarySpecificFetchOptions];
      }

      v18 = v15;

      [v18 setHighlightCurationType:1];
      v19 = [PHAsset fetchCuratedAssetsInAssetCollection:v9 options:v18];
      goto LABEL_13;
    }
  }

  if (a5)
  {
    v16 = [v11 photoAnalysisClient];
    v17 = [v9 localIdentifier];
    v18 = [v16 requestSummaryCurationForHighlightLocalIdentifier:v17 options:MEMORY[0x1E695E0F8] error:a6];

    if (!v18)
    {
      a6 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v19 = [PHAsset fetchAssetsWithUUIDs:v18 options:v10];
LABEL_13:
    a6 = v19;
    goto LABEL_14;
  }

  if (a6)
  {
    v20 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v21 = MEMORY[0x1E696AEC0];
    v22 = [v9 uuid];
    v23 = [v21 stringWithFormat:@"No summary curation available for highlight %@, on-demand not allowed", v22];
    v27[0] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    *a6 = [v20 errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v24];

    a6 = 0;
  }

LABEL_15:

  return a6;
}

+ (id)fetchKeyAssetByMemoryUUIDForMemories:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v10 = [v9 photoLibrary];
  v11 = [v7 fetchedObjectIDsSet];

  v12 = [v6 fetchPropertySets];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__PHAsset_Curated__fetchKeyAssetByMemoryUUIDForMemories_options___block_invoke;
  v21[3] = &unk_1E75AA130;
  v22 = v11;
  v23 = v10;
  v24 = v9;
  v25 = v12;
  v13 = v8;
  v26 = v13;
  v14 = v12;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  [v16 performBlockAndWait:v21];
  v18 = v26;
  v19 = v13;

  return v13;
}

void __65__PHAsset_Curated__fetchKeyAssetByMemoryUUIDForMemories_options___block_invoke(id *a1)
{
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE540] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY memoriesBeingKeyAsset IN %@", a1[4]];
  [v4 setPredicate:v5];

  v6 = [a1[5] managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PHAsset_Curated__fetchKeyAssetByMemoryUUIDForMemories_options___block_invoke_2;
  v8[3] = &unk_1E75A6350;
  v9 = a1[4];
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v7 = [v6 enumerateObjectsFromFetchRequest:v4 usingDefaultBatchSizeWithBlock:v8];
}

void __65__PHAsset_Curated__fetchKeyAssetByMemoryUUIDForMemories_options___block_invoke_2(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = a2;
  v3 = [v21 memoriesBeingKeyAsset];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v23;
    *&v5 = 138543362;
    v20 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = a1[4];
        v11 = [v9 objectID];
        LODWORD(v10) = [v10 containsObject:v11];

        if (v10)
        {
          v12 = [(PHObjectPLAdapter *)[PHAssetPLAdapter alloc] initWithPLManagedObject:v21 photoLibrary:a1[5]];
          v13 = [(PHAssetPLAdapter *)v12 newObjectWithPropertySets:a1[6]];
          v14 = a1[7];
          v15 = [v9 uuid];
          v16 = [v14 objectForKeyedSubscript:v15];

          if (v16)
          {
            v17 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = [v9 uuid];
              *buf = v20;
              v27 = v18;
              _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "fetchKeyAssetByMemoryUUIDForMemories encountered multiple key assets for memory %{public}@, only taking one", buf, 0xCu);
            }
          }

          else
          {
            v19 = a1[7];
            v17 = [v9 uuid];
            [v19 setObject:v13 forKeyedSubscript:v17];
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }
}

+ (id)fetchKeyAssetBySuggestionUUIDForSuggestionsOIDs:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v9 = [v8 photoLibrary];
  v10 = [v6 fetchPropertySets];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__PHAsset_Curated__fetchKeyAssetBySuggestionUUIDForSuggestionsOIDs_options___block_invoke;
  v20[3] = &unk_1E75A6EB0;
  v21 = v5;
  v22 = v6;
  v23 = v9;
  v24 = v8;
  v25 = v10;
  v11 = v7;
  v26 = v11;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  v15 = v6;
  v16 = v5;
  [v14 performBlockAndWait:v20];
  v17 = v26;
  v18 = v11;

  return v11;
}

void __76__PHAsset_Curated__fetchKeyAssetBySuggestionUUIDForSuggestionsOIDs_options___block_invoke(id *a1)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE540] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY suggestionsBeingKeyAssets IN %@", a1[4]];
  [v4 setPredicate:v5];

  v6 = [a1[5] internalPredicate];

  if (v6)
  {
    v7 = MEMORY[0x1E696AB28];
    v8 = [a1[5] internalPredicate];
    v19[0] = v8;
    v9 = [v4 predicate];
    v19[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v11 = [v7 andPredicateWithSubpredicates:v10];
    [v4 setPredicate:v11];
  }

  v12 = [a1[6] managedObjectContext];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__PHAsset_Curated__fetchKeyAssetBySuggestionUUIDForSuggestionsOIDs_options___block_invoke_2;
  v14[3] = &unk_1E75A6328;
  v15 = a1[4];
  v16 = a1[7];
  v17 = a1[8];
  v18 = a1[9];
  v13 = [v12 enumerateObjectsFromFetchRequest:v4 count:0 usingDefaultBatchSizeWithBlock:v14];
}

void __76__PHAsset_Curated__fetchKeyAssetBySuggestionUUIDForSuggestionsOIDs_options___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 suggestionsBeingKeyAssets];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    *&v6 = 138543362;
    v20 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = *(a1 + 32);
        v12 = [v10 objectID];
        LODWORD(v11) = [v11 containsObject:v12];

        if (v11)
        {
          v13 = [v10 uuid];
          if (v13)
          {
            v14 = [(PHObjectPLAdapter *)[PHAssetPLAdapter alloc] initWithPLManagedObject:v3 photoLibrary:*(a1 + 40)];
            v15 = [(PHAssetPLAdapter *)v14 newObjectWithPropertySets:*(a1 + 48)];
            v16 = [*(a1 + 56) objectForKey:v13];

            if (v16)
            {
              v17 = PLPhotoKitGetLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v26 = v13;
                _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "fetchKeyAssetBySuggestionUUIDForSuggestions encountered multiple key assets for suggestion, only taking one: %@", buf, 0xCu);
              }
            }

            else
            {
              [*(a1 + 56) setObject:v15 forKeyedSubscript:v13];
            }
          }

          else
          {
            v14 = PLPhotoKitGetLog();
            if (os_log_type_enabled(&v14->super.super, OS_LOG_TYPE_ERROR))
            {
              v18 = [v10 objectID];
              v19 = [v18 pl_shortURI];
              *buf = v20;
              v26 = v19;
              _os_log_impl(&dword_19C86F000, &v14->super.super, OS_LOG_TYPE_ERROR, "fetchKeyAssetBySuggestionUUIDForSuggestions found a nil uuid for suggestion %{public}@", buf, 0xCu);
            }
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }
}

+ (id)fetchKeyAssetBySuggestionUUIDForSuggestions:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a3 fetchedObjectIDsSet];
  v8 = [a1 fetchKeyAssetBySuggestionUUIDForSuggestionsOIDs:v7 options:v6];

  return v8;
}

+ (id)fetchKeyAssetByHighlightUUIDForHighlights:(id)a3 options:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = v6;
  v7 = [v6 photoLibrary];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v5;
  v11 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        v16 = [v15 uuid];
        v17 = [v15 objectID];
        [v8 addObject:v17];

        [v9 addObject:v16];
        [v10 setObject:v15 forKeyedSubscript:v16];
        if (!v7)
        {
          v7 = [v15 photoLibrary];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v12);
  }

  v18 = [v7 photoLibrary];
  v19 = [v32 fetchPropertySets];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __70__PHAsset_Curated__fetchKeyAssetByHighlightUUIDForHighlights_options___block_invoke;
  v34[3] = &unk_1E75A6300;
  v35 = v18;
  v36 = v32;
  v37 = v8;
  v38 = v9;
  v39 = v10;
  v20 = v31;
  v40 = v20;
  v41 = v7;
  v42 = v19;
  v21 = v19;
  v22 = v7;
  v23 = v10;
  v24 = v9;
  v25 = v8;
  v26 = v32;
  v27 = v18;
  [v27 performBlockAndWait:v34];
  v28 = v42;
  v29 = v20;

  return v20;
}

void __70__PHAsset_Curated__fetchKeyAssetByHighlightUUIDForHighlights_options___block_invoke(uint64_t a1)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = MEMORY[0x1E695D5E0];
  v4 = [MEMORY[0x1E69BE540] entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = *(a1 + 40);
  if (!v6 || (v7 = [v6 sharingFilter], v7 == 2))
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@ || %K IN %@ || %K IN %@ || %K IN %@", @"highlightBeingKeyAssetPrivate", *(a1 + 48), @"dayGroupHighlightBeingKeyAssetPrivate", *(a1 + 48), @"highlightBeingKeyAssetShared", *(a1 + 48), @"dayGroupHighlightBeingKeyAssetShared", *(a1 + 48)];
    v25[0] = @"highlightBeingKeyAssetPrivate";
    v25[1] = @"dayGroupHighlightBeingKeyAssetPrivate";
    v25[2] = @"highlightBeingKeyAssetShared";
    v25[3] = @"dayGroupHighlightBeingKeyAssetShared";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    v8 = 2;
  }

  else
  {
    v8 = v7;
    if (v7 == 1)
    {
      v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@ || %K IN %@", @"highlightBeingKeyAssetShared", *(a1 + 48), @"dayGroupHighlightBeingKeyAssetShared", *(a1 + 48)];
      v26[0] = @"highlightBeingKeyAssetShared";
      v26[1] = @"dayGroupHighlightBeingKeyAssetShared";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      v8 = 1;
    }

    else
    {
      if (v7)
      {
        v9 = 0;
        goto LABEL_9;
      }

      v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@ || %K IN %@", @"highlightBeingKeyAssetPrivate", *(a1 + 48), @"dayGroupHighlightBeingKeyAssetPrivate", *(a1 + 48)];
      v27[0] = @"highlightBeingKeyAssetPrivate";
      v27[1] = @"dayGroupHighlightBeingKeyAssetPrivate";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
      v8 = 0;
    }
  }

  [v5 setRelationshipKeyPathsForPrefetching:v10];

LABEL_9:
  [v5 setPredicate:v9];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PHAsset_Curated__fetchKeyAssetByHighlightUUIDForHighlights_options___block_invoke_2;
  aBlock[3] = &unk_1E75A62B0;
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v24 = v8;
  v23 = *(a1 + 72);
  v11 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__PHAsset_Curated__fetchKeyAssetByHighlightUUIDForHighlights_options___block_invoke_118;
  v15[3] = &unk_1E75A62D8;
  v16 = *(a1 + 80);
  v12 = *(a1 + 88);
  v19 = v8;
  v17 = v12;
  v18 = v11;
  v13 = v11;
  v14 = [v2 enumerateObjectsFromFetchRequest:v5 count:0 usingDefaultBatchSizeWithBlock:v15];
}

void __70__PHAsset_Curated__fetchKeyAssetByHighlightUUIDForHighlights_options___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && [*(a1 + 32) containsObject:v7])
  {
    v10 = [*(a1 + 40) objectForKeyedSubscript:v7];
    if ([v10 sharingComposition] == 2 && *(a1 + 56) == 2)
    {
      v11 = [v10 mixedSharingCompositionKeyAssetRelationship];
      if (!v11)
      {
        [*(a1 + 48) setObject:v9 forKeyedSubscript:v7];
        v12 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = 138412290;
          v14 = v7;
        }

        goto LABEL_12;
      }

      if (v11 == 2)
      {
        if (![v8 hasLibraryScope])
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else if (v11 != 1 || ([v8 hasLibraryScope] & 1) != 0)
      {
        goto LABEL_12;
      }
    }

    [*(a1 + 48) setObject:v9 forKeyedSubscript:v7];
    goto LABEL_12;
  }

LABEL_13:
}

void __70__PHAsset_Curated__fetchKeyAssetByHighlightUUIDForHighlights_options___block_invoke_118(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [(PHObjectPLAdapter *)[PHAssetPLAdapter alloc] initWithPLManagedObject:v22 photoLibrary:*(a1 + 32)];
  v4 = [(PHAssetPLAdapter *)v3 newObjectWithPropertySets:*(a1 + 40)];
  v5 = *(a1 + 56);
  if (v5 == 2)
  {
    v11 = *(a1 + 48);
    v12 = [v22 highlightBeingKeyAssetPrivate];
    v13 = [v12 uuid];
    (*(v11 + 16))(v11, v13, v22, v4);

    v14 = *(a1 + 48);
    v15 = [v22 dayGroupHighlightBeingKeyAssetPrivate];
    v16 = [v15 uuid];
    (*(v14 + 16))(v14, v16, v22, v4);

    goto LABEL_6;
  }

  if (v5 == 1)
  {
LABEL_6:
    v17 = *(a1 + 48);
    v18 = [v22 highlightBeingKeyAssetShared];
    v19 = [v18 uuid];
    (*(v17 + 16))(v17, v19, v22, v4);

    v9 = *(a1 + 48);
    v10 = [v22 dayGroupHighlightBeingKeyAssetShared];
    goto LABEL_7;
  }

  if (*(a1 + 56))
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 48);
  v7 = [v22 highlightBeingKeyAssetPrivate];
  v8 = [v7 uuid];
  (*(v6 + 16))(v6, v8, v22, v4);

  v9 = *(a1 + 48);
  v10 = [v22 dayGroupHighlightBeingKeyAssetPrivate];
LABEL_7:
  v20 = v10;
  v21 = [v10 uuid];
  (*(v9 + 16))(v9, v21, v22, v4);

LABEL_8:
}

uint64_t __64__PHAsset_Curated__fetchAssetsForBehavioralCurationWithOptions___block_invoke()
{
  v0 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_19C86F000, v0, OS_LOG_TYPE_FAULT, "+[PHAsset fetchAssetsForBehavioralCurationWithOptions:] is deprecated.", v2, 2u);
  }

  return 0;
}

+ (id)fetchKeyAssetForEachSuggestion:(id)a3 options:(id)a4 useSuggestionsSortOrder:(BOOL)a5
{
  v5 = a5;
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![v7 count])
  {
    v27 = [v8 photoLibrary];
    v26 = [PHManualFetchResult emptyFetchResultWithPhotoLibrary:v27];

    goto LABEL_22;
  }

  v29 = v5;
  v30 = v8;
  v9 = [PHAsset fetchKeyAssetBySuggestionUUIDForSuggestions:v7 options:v8];
  v10 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = v7;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v15 = *v33;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v33 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v32 + 1) + 8 * i);
      v18 = [v17 uuid];
      v19 = [v9 objectForKeyedSubscript:v18];

      if (!v19)
      {
        v20 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v21 = [v17 uuid];
        *buf = 138412290;
        v37 = v21;
        v22 = v20;
        v23 = "Suggestion UUID %@ not found in suggestionsKeyAssetBySuggestionUUID.";
LABEL_13:
        _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
LABEL_14:

        goto LABEL_16;
      }

      v20 = [v19 objectID];
      if ([v10 containsObject:v20])
      {
        v21 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = v19;
          v22 = v21;
          v23 = "Duplicated suggestionKeyAsset: %@";
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      [v10 addObject:v20];
      [v11 addObject:v19];
LABEL_16:
    }

    v14 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
  }

  while (v14);
LABEL_18:

  v8 = v30;
  v24 = [v30 copy];
  if (v29)
  {
    v25 = [v10 array];
    [v24 setCustomObjectIDSortOrder:v25];
  }

  v26 = [PHAsset _assetFetchResultFromAssets:v11 options:v24];

  v7 = v31;
LABEL_22:

  return v26;
}

+ (id)fetchReducedCuratedAssetsInMemory:(id)a3 options:(id)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 assetCollectionType] != 4 && objc_msgSend(v7, "assetCollectionType") != 8)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"PHAsset_Curated.m" lineNumber:425 description:@"Only memories and suggestions are supported"];
  }

  if ([v7 assetCollectionType] == 8)
  {
    v9 = [PHAsset fetchKeyAssetsInAssetCollection:v7 options:v8];
  }

  else
  {
    if ([v8 fetchLimit])
    {
      v10 = [v8 fetchLimit];
    }

    else
    {
      v10 = 15;
    }

    v11 = [v7 photoLibrary];
    v12 = [v11 librarySpecificFetchOptions];

    if (v8)
    {
      [v12 mergeWithFetchOptions:v8];
    }

    v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v41[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    [v12 setSortDescriptors:v14];

    [v12 setFetchLimit:0];
    v15 = [PHQuery queryForCuratedAssetsInMemory:v7 options:v12];
    v16 = [v15 executeQuery];
    v17 = [v16 count];
    if (v17 <= v10)
    {
      v9 = v16;
    }

    else
    {
      v18 = [PHAsset fetchKeyCuratedAssetInAssetCollection:v7 referenceAsset:0];
      v19 = [v18 firstObject];
      v20 = [v19 localIdentifier];

      v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__18550;
      v39 = __Block_byref_object_dispose__18551;
      v40 = [v16 firstObject];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __62__PHAsset_Curated__fetchReducedCuratedAssetsInMemory_options___block_invoke;
      v29[3] = &unk_1E75A6288;
      v33 = v10;
      v34 = v17;
      v22 = v21;
      v30 = v22;
      v32 = &v35;
      v23 = v20;
      v31 = v23;
      [v16 enumerateObjectsUsingBlock:v29];
      if ([v22 count] < v10)
      {
        v24 = [v36[5] localIdentifier];
        [v22 addObject:v24];
      }

      v25 = [PHQuery queryForAssetsWithLocalIdentifiers:v22 options:v8];

      v26 = [v25 executeQuery];

      v9 = v26;
      _Block_object_dispose(&v35, 8);

      v15 = v25;
    }
  }

  return v9;
}

void __62__PHAsset_Curated__fetchReducedCuratedAssetsInMemory_options___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a2;
  v6 = (*(a1 + 56) * a3) / *(a1 + 64) - 1;
  if (v6 == [*(a1 + 32) count])
  {
    v8 = *(a1 + 48);
    v7 = a1 + 48;
    v9 = *(v7 - 16);
    v10 = [*(*(v8 + 8) + 40) localIdentifier];
    [v9 addObject:v10];
  }

  else
  {
    v11 = *(a1 + 48);
    v7 = a1 + 48;
    v12 = [*(*(v11 + 8) + 40) isFavorite];
    v26 = [*(*(*v7 + 8) + 40) mediaType];
    v13 = [*(*(*v7 + 8) + 40) localIdentifier];
    v14 = [v13 isEqualToString:*(v7 - 8)];

    v15 = [v27 isFavorite];
    v16 = [v27 mediaType];
    [*(*(*v7 + 8) + 40) curationScore];
    v18 = v17;
    [v27 curationScore];
    v20 = v19;
    v21 = [v27 localIdentifier];
    v22 = [v21 isEqualToString:*(v7 - 8)];

    v23 = v12 == v15 && v18 < v20;
    if (!v23 || (v26 == 2) != (v16 == 2) || v14)
    {
      if (v12 & 1 | ((v15 & 1) == 0) | v14 & 1 | (v26 == 2) ^ (v16 == 2))
      {
        v24 = v26 != 2 || v16 == 2;
        v25 = v24;
        if (!(v22 & 1 | (((v25 | v14) & 1) == 0)))
        {
          goto LABEL_19;
        }
      }
    }
  }

  objc_storeStrong((*(*v7 + 8) + 40), a2);
LABEL_19:
}

+ (id)fetchAssetsAssociatedWithMomentsOfMemory:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = [v5 photoLibrary];
    v6 = [v7 librarySpecificFetchOptions];
  }

  v8 = [PHQuery queryForAssetsAssociatedWithMomentsOfMemory:v5 options:v6];
  v9 = [v8 executeQuery];

  return v9;
}

+ (id)fetchExtendedCuratedAndRepresentativeAssetsAssociatedWithMemory:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = [v5 photoLibrary];
    v6 = [v7 librarySpecificFetchOptions];
  }

  [v6 setIncludeHiddenAssets:1];
  [v6 setIncludeAllBurstAssets:1];
  [v6 setIncludeGuestAssets:1];
  v8 = [PHQuery queryForAllAssetsAssociatedWithMemory:v5 options:v6];
  v9 = [v8 executeQuery];

  return v9;
}

+ (id)fetchRepresentativeAssetsInAssetCollection:(id)a3
{
  v5 = a3;
  if ([v5 assetCollectionType] == 4)
  {
    if ([v5 isTransient])
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:a1 file:@"PHAsset_Curated.m" lineNumber:382 description:@"Transient memories aren't supported"];
    }

    v6 = [v5 photoLibrary];
    v7 = [v6 librarySpecificFetchOptions];

    [v7 setIncludeHiddenAssets:1];
    [v7 setIncludeAllBurstAssets:1];
    [v7 setIncludeGuestAssets:1];
    v8 = [PHQuery queryForRepresentativeAssetsInMemory:v5 options:v7];
LABEL_9:
    v10 = v8;
    v11 = [v8 executeQuery];

    goto LABEL_11;
  }

  if ([v5 assetCollectionType] == 8)
  {
    if ([v5 isTransient])
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:a1 file:@"PHAsset_Curated.m" lineNumber:391 description:@"Transient suggestions aren't supported"];
    }

    v9 = [v5 photoLibrary];
    v7 = [v9 librarySpecificFetchOptions];

    [v7 setIncludeHiddenAssets:1];
    [v7 setIncludeAllBurstAssets:1];
    v8 = [PHQuery queryForRepresentativeAssetsInSuggestion:v5 options:v7];
    goto LABEL_9;
  }

  v11 = [objc_opt_class() _fetchRepresentativeAssetInAssetCollection:v5];
LABEL_11:

  return v11;
}

+ (id)fetchCustomUserAssetsInMemory:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 assetCollectionType] == 4)
  {
    v9 = [PHQuery queryForCustomUserAssetsInMemory:v7 options:v8];
    v10 = [v9 executeQuery];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PHAsset_Curated.m" lineNumber:373 description:@"fetchCustomUserAssetsInMemory only supports memory"];
    v10 = 0;
  }

  return v10;
}

+ (id)fetchUserCuratedAssetsInMemory:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 assetCollectionType] == 4)
  {
    if ([v7 isTransient])
    {
      [v7 queryForCuratedAssetsWithOptions:v8];
    }

    else
    {
      [PHQuery queryForUserCuratedAssetsInMemory:v7 options:v8];
    }
    v9 = ;
    v10 = [v9 executeQuery];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PHAsset_Curated.m" lineNumber:362 description:@"fetchUserCuratedAssetsInMemory only supports memory"];
    v10 = 0;
  }

  return v10;
}

+ (id)fetchUserCuratedAssetsInMemory:(id)a3
{
  v4 = a3;
  v5 = [v4 photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v7 = [a1 fetchUserCuratedAssetsInMemory:v4 options:v6];

  return v7;
}

+ (id)fetchMovieCuratedAssetsInMemory:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 assetCollectionType] == 4)
  {
    v6 = [v5 photoLibrary];
    v7 = [v6 librarySpecificFetchOptions];

    v13[0] = @"PHAssetPropertySetOriginalMetadata";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v7 addFetchPropertySets:v8];

    if ([v5 isTransient])
    {
      [v5 queryForCuratedAssetsWithOptions:v7];
    }

    else
    {
      [PHQuery queryForMovieCuratedAssetsInMemory:v5 options:v7];
    }
    v11 = ;
    v10 = [v11 executeQuery];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PHAsset_Curated.m" lineNumber:341 description:@"fetchMovieCuratedAssetsInMemory only supports memory"];

    v10 = 0;
  }

  return v10;
}

+ (id)fetchExtendedCuratedAssetsInAssetCollection:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = [v6 photoLibrary];
    v7 = [v8 librarySpecificFetchOptions];
  }

  if ([v6 assetCollectionType] == 4)
  {
    v9 = [PHQuery queryForExtendedCuratedAssetsInMemory:v6 options:v7];
LABEL_7:
    v10 = v9;
    v11 = [v9 executeQuery];

    goto LABEL_9;
  }

  if ([v6 assetCollectionType] == 6)
  {
    [v7 setHighlightCurationType:2];
    v9 = [PHQuery queryForCuratedAssetsInPhotosHighlight:v6 options:v7];
    goto LABEL_7;
  }

  v11 = [a1 _requestCuratedAssetInAssetCollection:v6 referenceAsset:0 referencePersons:0 fetchOptions:0 onlyKey:0];
LABEL_9:

  return v11;
}

+ (id)fetchCuratedAssetsInAssetCollection:(id)a3 options:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = [v6 photoLibrary];
    v7 = [v8 librarySpecificFetchOptions];
  }

  if ([v6 assetCollectionType] == 4)
  {
    v14[0] = @"PHAssetPropertySetOriginalMetadata";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v7 addFetchPropertySets:v9];

    v10 = [PHQuery queryForCuratedAssetsInMemory:v6 options:v7];
LABEL_11:
    v11 = v10;
    v12 = [v10 executeQuery];

    goto LABEL_12;
  }

  if ([v6 assetCollectionType] == 6)
  {
    if (![v7 highlightCurationType])
    {
      [v7 setHighlightCurationType:{objc_msgSend(v6, "preferredCurationType")}];
    }

    v10 = [PHQuery queryForCuratedAssetsInPhotosHighlight:v6 options:v7];
    goto LABEL_11;
  }

  if ([v6 assetCollectionType] == 7)
  {
    v10 = [PHQuery queryForCuratedAssetsInMomentShare:v6 options:v7];
    goto LABEL_11;
  }

  v12 = [a1 _requestCuratedAssetInAssetCollection:v6 referenceAsset:0 referencePersons:0 fetchOptions:v7 onlyKey:0];
LABEL_12:

  return v12;
}

+ (id)fetchKeyCuratedAssetInAssetCollection:(id)a3 referencePersons:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 assetCollectionType];
  v8 = objc_opt_class();
  if (v7 == 4)
  {
    [v8 fetchKeyCuratedAssetInAssetCollection:v6 referenceAsset:0];
  }

  else
  {
    [v8 _requestCuratedAssetInAssetCollection:v6 referenceAsset:0 referencePersons:v5 fetchOptions:0 onlyKey:1];
  }
  v9 = ;

  return v9;
}

+ (id)fetchKeyCuratedAssetInAssetCollection:(id)a3 referenceAsset:(id)a4 options:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 photoLibrary];

  if (!v10)
  {
    v11 = [v7 photoLibrary];
    v12 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v9 photoLibrary:v11];

    v9 = v12;
  }

  [v9 setIncludeGuestAssets:1];
  if ([v7 assetCollectionType] == 4)
  {
    v13 = [v7 photoLibrary];
    v14 = [v13 librarySpecificFetchOptions];

    v22[0] = @"PHAssetPropertySetOriginalMetadata";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v14 addFetchPropertySets:v15];

    [v14 mergeWithFetchOptions:v9];
    if ([v7 isTransient])
    {
      [v7 queryForKeyAssetWithOptions:v14];
    }

    else
    {
      [PHQuery queryForKeyAssetInMemory:v7 options:v14];
    }
    v20 = ;
    v19 = [v20 executeQuery];
  }

  else if ([v7 assetCollectionType] == 6)
  {
    v16 = [v7 photoLibrary];
    v17 = [v16 librarySpecificFetchOptions];

    [v17 mergeWithFetchOptions:v9];
    v18 = [PHQuery queryForKeyAssetInPhotosHighlight:v7 options:v17];
    v19 = [v18 executeQuery];
  }

  else
  {
    v19 = [objc_opt_class() _requestCuratedAssetInAssetCollection:v7 referenceAsset:v8 referencePersons:0 fetchOptions:0 onlyKey:1];
  }

  return v19;
}

+ (id)_assetFetchResultFromAssets:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 copy];
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v5 object:0];
  [v7 setPhotoLibrary:v8];

  [v7 setIncludeHiddenAssets:0];
  v9 = [v5 fetchPropertySets];
  [v7 setFetchPropertySets:v9];

  v10 = [v5 customObjectIDSortOrder];

  [v7 setCustomObjectIDSortOrder:v10];
  v11 = [v6 valueForKey:@"localIdentifier"];

  v12 = [PHAsset fetchAssetsWithLocalIdentifiers:v11 options:v7];

  return v12;
}

+ (id)_fetchRepresentativeAssetInAssetCollection:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [v4 photoLibrary];
  v6 = [v5 photoAnalysisClient];

  if (v6)
  {
    if (([v3 isTransient] & 1) == 0 && (objc_msgSend(v3, "assetCollectionType") == 4 || objc_msgSend(v3, "assetCollectionType") == 3 || objc_msgSend(v3, "assetCollectionType") == 7 || objc_msgSend(v3, "assetCollectionType") == 12 || objc_msgSend(v3, "assetCollectionType") == 1 || objc_msgSend(v3, "assetCollectionType") == 2 && objc_msgSend(v3, "assetCollectionSubtype") != 200))
    {
      v8 = [v3 localIdentifier];
      v7 = 0;
    }

    else
    {
      v7 = [PHAssetCollection graphOptionsForTransientAssetCollection:v3 needsCompleteMomentsInfo:0 options:0];
      v8 = 0;
    }

    v31 = 0;
    v10 = [v6 requestRepresentativeAssetsForAssetCollectionWithLocalIdentifier:v8 options:v7 error:&v31];
    v11 = v31;
    if (v11)
    {
      v12 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v11;
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "_fetchRepresentativeAssetInAssetCollection encountered error:%@", buf, 0xCu);
      }
    }

    if (v10)
    {
      v24 = v11;
      v25 = v8;
      v26 = v6;
      v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v14 = v10;
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v27 + 1) + 8 * i) objectForKeyedSubscript:@"PHRelatedAssetIdentifierKey"];
            [v13 addObject:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v16);
      }

      v20 = [PHFetchOptions fetchOptionsWithPhotoLibrary:0 orObject:v3];
      [v20 setIncludeHiddenAssets:1];
      [v20 setIncludeAllBurstAssets:1];
      v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v32 = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      [v20 setSortDescriptors:v22];

      v9 = [PHAsset fetchAssetsWithLocalIdentifiers:v13 options:v20];

      v8 = v25;
      v6 = v26;
      v11 = v24;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Photo Analysis Client is nil", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)_requestCuratedAssetInAssetCollection:(id)a3 referenceAsset:(id)a4 referencePersons:(id)a5 fetchOptions:(id)a6 onlyKey:(BOOL)a7
{
  v7 = a7;
  v79 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 photoLibrary];
  v16 = [v15 photoLibrary];
  v17 = [v16 photoAnalysisClient];

  if (v17)
  {
    v18 = objc_opt_new();
    v19 = [v13 count];
    if (v19)
    {
      v20 = [v13 _pl_map:&__block_literal_global_18579];
      [v18 setObject:v20 forKeyedSubscript:@"PHPhotosGraphOptionPersonLocalIdentifiersToFocus"];
    }

    if ([v14 curationType] == 2)
    {
      [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PHPhotosGraphOptionCurationTypeDedupe"];
    }

    v57 = v19;
    if (v14 || (v24 = [v11 assetCollectionType], v24 > 0xC) || ((1 << v24) & 0x11DA) == 0 && (v24 != 2 || objc_msgSend(v11, "assetCollectionSubtype") == 200))
    {
      if (v19 != 1)
      {
        if ([v11 isTransient] && objc_msgSend(v11, "assetCollectionType") == 1)
        {
          [v14 setFetchLimit:0];
        }

        v21 = [PHAssetCollection graphOptionsForTransientAssetCollection:v11 needsCompleteMomentsInfo:1 options:v14];
        [v18 addEntriesFromDictionary:v21];
      }

      v22 = 0;
    }

    else
    {
      v22 = [v11 localIdentifier];
      if (!v22)
      {
        v52 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v78 = v11;
          _os_log_impl(&dword_19C86F000, v52, OS_LOG_TYPE_ERROR, "no collection identifier found for %@", buf, 0xCu);
        }

        v23 = 0;
        goto LABEL_51;
      }
    }

    v61 = v22;
    if (v7)
    {
      v25 = [v12 localIdentifier];
      v71 = 0;
      v26 = [v17 requestCuratedAssetForAssetCollectionWithLocalIdentifier:v22 referenceAssetLocalIdentifier:v25 options:v18 error:&v71];
      v27 = v71;

      if (v26)
      {
        v76 = v26;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
      }

      else
      {
        v28 = 0;
      }

      v29 = v27;
      if (v27)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v70 = 0;
      v28 = [v17 requestCuratedAssetsForAssetCollectionWithLocalIdentifier:v22 duration:2 options:v18 error:&v70];
      v29 = v70;
      if (v29)
      {
LABEL_26:
        v30 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v78 = v29;
          _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "_requestCuratedAssetInAssetCollection encountered error:%@", buf, 0xCu);
        }
      }
    }

    v60 = v29;
    if (v28)
    {
      v54 = v17;
      v55 = v12;
      v59 = v14;
      v56 = v13;
      v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v28, "count")}];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v32 = v28;
      v33 = [v32 countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v67;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v67 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = [*(*(&v66 + 1) + 8 * i) objectForKeyedSubscript:@"PHRelatedAssetIdentifierKey"];
            [v31 addObject:v37];
          }

          v34 = [v32 countByEnumeratingWithState:&v66 objects:v75 count:16];
        }

        while (v34);
      }

      v14 = v59;
      v38 = [v59 copy];
      if (!v38)
      {
        v38 = [PHFetchOptions fetchOptionsWithPhotoLibrary:0 orObject:v11];
        [v38 setIncludeHiddenAssets:0];
        v39 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
        v74[0] = v39;
        v40 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
        v74[1] = v40;
        v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
        [v38 setSortDescriptors:v41];

        v14 = v59;
        v73 = @"PHAssetPropertySetOriginalMetadata";
        v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
        [v38 addFetchPropertySets:v42];
      }

      if (v57)
      {
        v58 = v11;
        v43 = [MEMORY[0x1E695DF70] array];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v44 = v56;
        v45 = [v44 countByEnumeratingWithState:&v62 objects:v72 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v63;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v63 != v47)
              {
                objc_enumerationMutation(v44);
              }

              v49 = [*(*(&v62 + 1) + 8 * j) objectID];
              [v43 addObject:v49];
            }

            v46 = [v44 countByEnumeratingWithState:&v62 objects:v72 count:16];
          }

          while (v46);
        }

        v50 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K IN %@", @"detectedFaces", @"personForFace", v43];
        [v38 setInternalPredicate:v50];
        [v38 setPredicate:0];

        v11 = v58;
        v14 = v59;
      }

      v51 = [PHAsset fetchAssetsWithLocalIdentifiers:v31 options:v38];

      v12 = v55;
      v13 = v56;
      v17 = v54;
    }

    else
    {
      v51 = 0;
    }

    v52 = v51;

    v23 = v52;
LABEL_51:

    goto LABEL_52;
  }

  v18 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "Photo Analysis Client is nil", buf, 2u);
  }

  v23 = 0;
LABEL_52:

  return v23;
}

- (BOOL)isOriginalRaw
{
  v2 = MEMORY[0x1E69C08F0];
  v3 = [(PHAsset *)self originalUTI];
  v4 = [v2 typeWithIdentifier:v3];
  v5 = [v4 conformsToType:*MEMORY[0x1E6982F88]];

  return v5;
}

- (id)originalUTI
{
  v3 = [(PHAsset *)self pathForOriginalFile];
  v4 = [v3 pathExtension];

  v5 = [MEMORY[0x1E69BE540] uniformTypeIdentifierFromPathExtension:v4 assetType:{-[PHAsset kind](self, "kind")}];

  return v5;
}

- (BOOL)shouldUseRAWResourceWithOriginalResourceChoice:(unint64_t)a3
{
  if (a3 == 1)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(PHAsset *)self isOriginalRaw];
    if (v3)
    {
      v6 = ![(PHAsset *)self hasAdjustments];
      if (a3 == 3)
      {
        LOBYTE(v3) = v6;
      }

      else
      {
        LOBYTE(v3) = 1;
      }
    }
  }

  return v3;
}

- (BOOL)shouldUseRAWResourceAsUnadjustedEditBase
{
  if (PHDeviceSupportsRAW_onceToken != -1)
  {
    dispatch_once(&PHDeviceSupportsRAW_onceToken, &__block_literal_global_19790);
  }

  if (PHDeviceSupportsRAW_deviceSupportsRAW != 1)
  {
    return 0;
  }

  v3 = [(PHAsset *)self originalResourceChoice];

  return [(PHAsset *)self shouldUseRAWResourceWithOriginalResourceChoice:v3];
}

- (unint64_t)originalChoiceToFallbackForUnsupportRAW
{
  v3 = [(PHAsset *)self originalResourceChoice];
  if (v3 == 1)
  {
    return 0;
  }

  v5 = v3;
  if (((v3 == 0) & [(PHAsset *)self isOriginalRaw]) != 0)
  {
    return 3;
  }

  else
  {
    return v5;
  }
}

- (void)_renderTemporaryVideoForObjectBuilder:(id)a3 resultHandler:(id)a4
{
  v5 = a4;
  v6 = *MEMORY[0x1E6987338];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__PHAsset_PHContentEditingInput___renderTemporaryVideoForObjectBuilder_resultHandler___block_invoke;
  v8[3] = &unk_1E75A92F8;
  v9 = v5;
  v7 = v5;
  [a3 requestExportSessionWithExportPreset:v6 resultHandler:v8];
}

void __86__PHAsset_PHContentEditingInput___renderTemporaryVideoForObjectBuilder_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RenderedContent-%@.MOV", v5];
    v7 = NSTemporaryDirectory();
    v8 = [v7 stringByAppendingPathComponent:v6];

    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    [v3 setOutputFileType:*MEMORY[0x1E69874C0]];
    [v3 setOutputURL:v9];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__PHAsset_PHContentEditingInput___renderTemporaryVideoForObjectBuilder_resultHandler___block_invoke_2;
    v12[3] = &unk_1E75AA870;
    v13 = v3;
    v10 = *(a1 + 32);
    v14 = v9;
    v15 = v10;
    v11 = v9;
    [v13 exportAsynchronouslyWithCompletionHandler:v12];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __86__PHAsset_PHContentEditingInput___renderTemporaryVideoForObjectBuilder_resultHandler___block_invoke_2(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) status] == 4)
  {
    v2 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Rendering video failed";
    v3 = MEMORY[0x1E695DF20];
    v4 = v11;
    v5 = &v10;
  }

  else
  {
    if ([*(a1 + 32) status] != 5)
    {
      goto LABEL_7;
    }

    v2 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A578];
    v9 = @"Rendering video cancelled";
    v3 = MEMORY[0x1E695DF20];
    v4 = &v9;
    v5 = &v8;
  }

  v6 = [v3 dictionaryWithObjects:v4 forKeys:v5 count:1];
  v7 = [v2 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v6];

  if (v7)
  {
    (*(*(a1 + 48) + 16))();

    return;
  }

LABEL_7:
  (*(*(a1 + 48) + 16))();
}

- (void)_requestRenderedVideoForVideoURL:(id)a3 adjustmentData:(id)a4 canHandleAdjustmentData:(BOOL)a5 resultHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = MEMORY[0x1E69C0910];
  v13 = a4;
  v14 = [v12 alloc];
  v15 = [v13 formatIdentifier];
  v16 = [v13 formatVersion];
  v17 = [v13 data];

  v18 = [v14 initWithFormatIdentifier:v15 formatVersion:v16 data:v17 baseVersion:0 editorBundleID:0 renderTypes:0];
  if (-[PHAsset isPhotoIris](self, "isPhotoIris") || a5 || ([v18 isRecognizedFormat] & 1) == 0)
  {
    v11[2](v11, v10, 0);
  }

  else
  {
    v19 = [MEMORY[0x1E6988168] assetWithURL:v10];
    v20 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:v19 videoAdjustments:v18];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __120__PHAsset_PHContentEditingInput___requestRenderedVideoForVideoURL_adjustmentData_canHandleAdjustmentData_resultHandler___block_invoke;
    v21[3] = &unk_1E75A92D0;
    v22 = v11;
    [(PHAsset *)self _renderTemporaryVideoForObjectBuilder:v20 resultHandler:v21];
  }
}

- (void)cancelContentEditingInputRequest:(PHContentEditingInputRequestID)requestID
{
  v4 = +[PHImageManager defaultManager];
  [v4 cancelImageRequest:requestID];
}

- (PHContentEditingInputRequestID)requestContentEditingInputWithOptions:(PHContentEditingInputRequestOptions *)options completionHandler:(void *)completionHandler
{
  v7 = options;
  v8 = completionHandler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = MEMORY[0x1E696AEC0];
    v15 = NSStringFromSelector(a2);
    v16 = [v14 stringWithFormat:@"%@ cannot be used on a non-existing asset", v15];
    v17 = [v12 exceptionWithName:v13 reason:v16 userInfo:0];
    v18 = v17;

    objc_exception_throw(v17);
  }

  v9 = +[PHImageManager defaultManager];
  v10 = [v9 requestContentEditingInputForAsset:self withOptions:v7 completionHandler:v8];

  return v10;
}

- (id)_imageRequestOptionsForBaseVersion:(int64_t)a3 options:(id)a4 progressEstimateForImageProgress:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  [v10 setDeliveryMode:1];
  [v10 setLoadingMode:65537];
  [v10 setNetworkAccessAllowed:{objc_msgSend(v8, "isNetworkAccessAllowed")}];
  v11 = [v8 progressHandler];

  if (v11)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __110__PHAsset_PHContentEditingInput___imageRequestOptionsForBaseVersion_options_progressEstimateForImageProgress___block_invoke;
    v17 = &unk_1E75A64D0;
    v19 = v9;
    v18 = v8;
    [v10 setProgressHandler:&v14];
  }

  v12 = [PHAdjustmentData imageRequestVersionFromAdjustmentBaseVersion:a3, v14, v15, v16, v17];
  if (([v8 dontAllowRAW] & 1) == 0 && v12 == 1)
  {
    if ([(PHAsset *)self shouldUseRAWResourceAsUnadjustedEditBase])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }
  }

  [v10 setVersion:v12];

  return v10;
}

void __110__PHAsset_PHContentEditingInput___imageRequestOptionsForBaseVersion_options_progressEstimateForImageProgress___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a1 + 40) + 16))();
  v6 = [*(a1 + 32) progressHandler];
  v6[2](v6, a3, v5);
}

- (id)_videoRequestOptionsForBaseVersion:(int64_t)a3 options:(id)a4 progressEstimateForVideoProgress:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  [v10 setDeliveryMode:1];
  [v10 setNetworkAccessAllowed:{objc_msgSend(v8, "isNetworkAccessAllowed")}];
  [v10 setVideoComplementAllowed:{-[PHAsset isPhotoIris](self, "isPhotoIris")}];
  v11 = [v8 progressHandler];

  if (v11)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __110__PHAsset_PHContentEditingInput___videoRequestOptionsForBaseVersion_options_progressEstimateForVideoProgress___block_invoke;
    v16 = &unk_1E75A64D0;
    v18 = v9;
    v17 = v8;
    [v10 setProgressHandler:&v13];
  }

  [v10 setVersion:{+[PHAdjustmentData videoRequestVersionFromAdjustmentBaseVersion:](PHAdjustmentData, "videoRequestVersionFromAdjustmentBaseVersion:", a3, v13, v14, v15, v16)}];

  return v10;
}

void __110__PHAsset_PHContentEditingInput___videoRequestOptionsForBaseVersion_options_progressEstimateForVideoProgress___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a1 + 40) + 16))();
  v6 = [*(a1 + 32) progressHandler];
  v6[2](v6, a3, v5);
}

- (int64_t)_baseVersionForAdjustmentData:(id)a3 canHandleAdjustmentData:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 _hasAdjustments];
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if (v7 && v4)
  {
    if ([v6 baseVersion])
    {
      if ([(PHAsset *)self isVideo])
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)_canHandleAdjustmentData:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v5 isOpaque] & 1) != 0 || !objc_msgSend(v5, "_hasAdjustments"))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [v6 canHandleAdjustmentData];

    if (v7)
    {
      v8 = [v6 canHandleAdjustmentData];
      LOBYTE(v7) = (v8)[2](v8, v5);
    }
  }

  return v7;
}

- (CGRect)acceptableCropRect
{
  x = self->_acceptableCropRect.origin.x;
  y = self->_acceptableCropRect.origin.y;
  width = self->_acceptableCropRect.size.width;
  height = self->_acceptableCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)preferredCropRect
{
  x = self->_preferredCropRect.origin.x;
  y = self->_preferredCropRect.origin.y;
  width = self->_preferredCropRect.size.width;
  height = self->_preferredCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedFaceAreaRect
{
  [(PHAsset *)self originalFaceAreaRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PHAsset *)self faceAreaMinY];
  v12 = v11;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Height = CGRectGetHeight(v18);
  v14 = 1.0 - (v12 + Height * 0.5) - Height * 0.5;
  v15 = v4;
  v16 = v8;
  v17 = v10;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (NSValue)originalFaceAreaRectValue
{
  [(PHAsset *)self originalFaceAreaRect];
  v4 = v6;
  if (CGRectIsEmpty(v6))
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696B098] valueWithBytes:&v4 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  }

  return v2;
}

- (CGRect)originalFaceAreaRect
{
  [(PHAsset *)self faceAreaMinX];
  v4 = v3;
  [(PHAsset *)self faceAreaMinY];
  v6 = v5;
  [(PHAsset *)self faceAreaMaxX];
  v8 = v7;
  [(PHAsset *)self faceAreaMaxY];
  v9 = v8 - v4;
  v11 = v10 - v6;
  v12 = v4;
  v13 = v6;
  result.size.height = v11;
  result.size.width = v9;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (NSManagedObjectContext)managedObjectContextForFetchingResources
{
  v3 = [(PHObject *)self photoLibrary];
  v4 = [v3 objectFetchingManagedObjectContextForObject:self propertySet:@"PHAssetPropertySetCore"];

  return v4;
}

- (id)shortDescriptionForSensitivityState
{
  v3 = [MEMORY[0x1E696AD60] string];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v4 = getSCSensitivityAnalysisClass_softClass_22488;
  v19 = getSCSensitivityAnalysisClass_softClass_22488;
  if (!getSCSensitivityAnalysisClass_softClass_22488)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getSCSensitivityAnalysisClass_block_invoke_22489;
    v15[3] = &unk_1E75A8DF0;
    v15[4] = &v16;
    __getSCSensitivityAnalysisClass_block_invoke_22489(v15);
    v4 = v17[3];
  }

  v5 = v4;
  _Block_object_dispose(&v16, 8);
  v14 = 0;
  v6 = [[v4 alloc] initFromCompactAnalysis:-[PHAsset compactSCSensitivityAnalysis](self error:{"compactSCSensitivityAnalysis"), &v14}];
  v7 = v14;
  if ([(PHAsset *)self compactSCSensitivityAnalysis]&& !v6)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error initializing SCSensitivityAnalysis: %@", v7];
    goto LABEL_18;
  }

  v9 = [(PHAsset *)self sensitivityAnalysisState];
  if (v9 <= 4)
  {
    [v3 appendString:off_1E75A7250[v9]];
  }

  if ([(PHAsset *)self compactSCSensitivityAnalysis])
  {
    if ([v6 mayNeedOnDemandAnalysis])
    {
      if ([v6 isContentPreviewable])
      {
        if (![v6 isContentPreviewable])
        {
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown value: %lld", -[PHAsset compactSCSensitivityAnalysis](self, "compactSCSensitivityAnalysis")];
          [v3 appendString:v13];

          goto LABEL_17;
        }

        v10 = @"<previewable>";
      }

      else
      {
        v10 = @"<not previewable>";
      }
    }

    else
    {
      v10 = @"<doesn't need analysis>";
    }
  }

  else
  {
    v10 = @"<unprocessed>";
  }

  [v3 appendString:v10];
LABEL_17:
  v8 = v3;
LABEL_18:
  v11 = v8;

  return v11;
}

- (NSString)croppingDebugDescription
{
  v38[5] = *MEMORY[0x1E69E9840];
  if ([(PHAsset *)self pixelWidth]&& [(PHAsset *)self pixelHeight])
  {
    PFDeviceScreenSize();
    v37[0] = @"square";
    v3 = DCIM_NSValueFromCGSize();
    v38[0] = v3;
    v37[1] = @"standard4x3";
    v4 = DCIM_NSValueFromCGSize();
    v38[1] = v4;
    v37[2] = @"wide16x9";
    v5 = DCIM_NSValueFromCGSize();
    v38[2] = v5;
    v37[3] = @"screenDefault";
    v6 = DCIM_NSValueFromCGSize();
    v38[3] = v6;
    v37[4] = @"screenTranspose";
    v7 = DCIM_NSValueFromCGSize();
    v38[4] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:5];

    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      v14 = *(MEMORY[0x1E695F050] + 8);
      v30 = *MEMORY[0x1E695F050];
      v15 = *(MEMORY[0x1E695F050] + 16);
      v16 = *(MEMORY[0x1E695F050] + 24);
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          v31 = 0;
          v19 = [v10 objectForKey:v18];
          v20 = MEMORY[0x19EAF1600]();
          v22 = v21;

          [(PHAsset *)self suggestedCropForTargetSize:&v31 withFocusRegion:v20 andOutputCropScore:v22, v30, v14, v15, v16];
          v23 = v31;
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v24, v25, v26, v27];
          [v9 appendFormat:@"\n%@=%f, %@", v18, v23, v28];
        }

        v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)variationSuggestionStatesDetails
{
  v25 = *MEMORY[0x1E69E9840];
  [(PHObject *)self addFetchPropertyHint:16];
  v3 = MEMORY[0x1E696AD60];
  v4 = [(PHAsset *)self photosOneUpProperties];
  v5 = [v3 stringWithFormat:@"[variationSuggestionState = %llu] ", objc_msgSend(v4, "variationSuggestionStates")];

  v6 = [(PHObject *)self photoLibrary];
  v19 = [v6 variationCache];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [&unk_1F102E060 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(&unk_1F102E060);
        }

        v11 = [*(*(&v20 + 1) + 8 * i) integerValue];
        v12 = [(PHAsset *)self variationSuggestionStatesForVariationType:v11];
        v13 = [objc_opt_class() _descriptionForVariationSuggestionType:v11];
        v14 = [objc_opt_class() _descriptionForVariationSuggestionStates:v12];
        [v5 appendFormat:@"\n\t%@: [%llu] %@", v13, v12, v14];
        if ((v12 & 2) != 0)
        {
          if ((v11 - 1) >= 3)
          {
            v15 = 0;
          }

          else
          {
            v15 = v11;
          }

          v16 = [(PHObject *)self uuid];
          v17 = [v19 gatingResultForVariationType:v15 assetIdentifier:v16];

          [v5 appendFormat:@" %@", v17];
        }
      }

      v8 = [&unk_1F102E060 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  return v5;
}

- (NSString)metadataDebugDescription
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__22497;
  v37 = __Block_byref_object_dispose__22498;
  v38 = &stru_1F0FC60C8;
  v3 = [(PHAsset *)self mediaType];
  v4 = [(PHAsset *)self mediaType]== PHAssetMediaTypeVideo || [(PHAsset *)self isPhotoIris];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v5 = dispatch_group_create();
  v6 = dispatch_queue_create("com.apple.photos.metadatadebugdescription", 0);
  if (v3 == PHAssetMediaTypeImage)
  {
    dispatch_group_enter(v5);
    v7 = v34[5];
    v34[5] = @"==========================\nImage Metadata:\n\n";

    v8 = objc_opt_new();
    [v8 setDeliveryMode:1];
    [v8 setLoadingMode:1];
    if ([(PHAsset *)self hasAdjustments])
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    [v8 setVersion:v9];
    [v8 setNetworkAccessAllowed:1];
    [v8 setSynchronous:0];
    [v8 setResultHandlerQueue:v6];
    v10 = +[PHImageManager defaultManager];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __35__PHAsset_metadataDebugDescription__block_invoke;
    v26[3] = &unk_1E75A70E0;
    v28 = &v33;
    v27 = v5;
    [v10 requestImageDataAndOrientationForAsset:self options:v8 resultHandler:v26];
  }

  if (v4)
  {
    dispatch_group_enter(v5);
    v11 = [v34[5] stringByAppendingString:@"==========================\nVideo Metadata:\n\n"];
    v12 = v34[5];
    v34[5] = v11;

    v13 = objc_opt_new();
    [v13 setNetworkAccessAllowed:1];
    [v13 setDeliveryMode:1];
    [v13 setResultHandlerQueue:v6];
    v14 = +[PHImageManager defaultManager];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __35__PHAsset_metadataDebugDescription__block_invoke_2;
    v22[3] = &unk_1E75A7108;
    v24 = &v33;
    v25 = &v29;
    v15 = v5;
    v23 = v15;
    [v14 requestURLForVideo:self options:v13 resultHandler:v22];

    v16 = dispatch_time(0, 10000000000);
    dispatch_group_wait(v15, v16);
    if (v30[3])
    {
      goto LABEL_15;
    }

    v17 = [v34[5] stringByAppendingString:@"Request Timed out."];
  }

  else
  {
    v18 = dispatch_time(0, 10000000000);
    dispatch_group_wait(v5, v18);
    if (v3 == PHAssetMediaTypeImage)
    {
      goto LABEL_15;
    }

    v17 = @"Can only print metadata for photos and videos";
  }

  v19 = v34[5];
  v34[5] = v17;

LABEL_15:
  v20 = v34[5];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v20;
}

void __35__PHAsset_metadataDebugDescription__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  data = a2;
  v8 = a3;
  v9 = a5;
  if (v8 && ([MEMORY[0x1E6982C40] typeWithIdentifier:v8], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "conformsToType:", *MEMORY[0x1E6982E30]), v10, data) && v11)
  {
    v12 = CGImageSourceCreateWithData(data, 0);
    v13 = CGImageSourceCopyProperties(v12, 0);
    Count = CGImageSourceGetCount(v12);
    v15 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@"%@\nImage Count: %lu\n\n", v13, Count];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v19 = [MEMORY[0x1E69C0708] imagePropertiesFromImageSource:v12 atIndex:i];
        v20 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@"==========================\nImage at index %lu:\n\n%@\n\n", i, v19];
        v21 = *(*(a1 + 40) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;
      }
    }

    CFRelease(v12);
  }

  else
  {
    v23 = *(*(*(a1 + 40) + 8) + 40);
    v13 = [v9 objectForKey:@"PHImageErrorKey"];
    v24 = [v23 stringByAppendingFormat:@"There was an error getting the maximum size image: %@\n\n", v13];
    v25 = *(*(a1 + 40) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __35__PHAsset_metadataDebugDescription__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1;
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v23 = [MEMORY[0x1E6987E28] assetWithURL:a2];
    v4 = [v23 metadata];
    v5 = [MEMORY[0x1E696AD60] stringWithFormat:&stru_1F0FC60C8];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [v10 commonKey];
          v12 = [v10 key];
          v13 = [v10 keySpace];
          [v5 appendFormat:@"%@ (%@, %@): \n", v11, v12, v13];

          v14 = [v10 stringValue];
          [v5 appendFormat:@"\t%@\n\n", v14];
        }

        v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v7);
    }

    v3 = a1;
    v15 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingString:v5];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  else
  {
    v18 = *(*(*(a1 + 40) + 8) + 40);
    v19 = [a3 objectForKeyedSubscript:@"PHImageErrorKey"];
    v20 = [v18 stringByAppendingFormat:@"There was en error getting the video: %@", v19];
    v21 = *(*(v3 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }

  *(*(*(v3 + 48) + 8) + 24) = 1;
  dispatch_group_leave(*(v3 + 32));
}

- (NSString)resourcesDebugDescription
{
  v3 = [(PHAsset *)self pl_photoLibrary];
  v4 = [(PHAsset *)self description];
  v5 = [v4 mutableCopy];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__22497;
  v19 = __Block_byref_object_dispose__22498;
  v20 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __36__PHAsset_resourcesDebugDescription__block_invoke;
  v11 = &unk_1E75AA3F8;
  v12 = self;
  v6 = v3;
  v13 = v6;
  v14 = &v15;
  [v6 performBlockAndWait:&v8 completionHandler:0];
  [v5 appendFormat:@"\n'modern' resources: %@\n", v16[5], v8, v9, v10, v11, v12];

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __36__PHAsset_resourcesDebugDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedAssetForPhotoLibrary:*(a1 + 40)];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 descriptionForModernResources];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

- (id)descriptionForPhotoAnanlysisWallpaperProeprtiesWithManagedAsset:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = [(PHAsset *)self _createPropertyObjectOfClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 wallpaperPropertiesData];
    [v4 appendFormat:@"wallpaperPropertiesData: %p (size: %lu)\n", v7, objc_msgSend(v7, "length")];
    v8 = [v6 wallpaperPropertiesTimestamp];
    [v4 appendFormat:@"wallpaperPropertiesTimestamp: %@\n", v8];

    [v4 appendFormat:@"wallpaperPropertiesVersion: %llu\n", objc_msgSend(v6, "wallpaperPropertiesVersion")];
    if (v7)
    {
      v12 = 0;
      v9 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:&v12];
      v10 = v9;
      if (v9)
      {
        [v4 appendFormat:@"wallpaperProperties: %@\n", v9];
      }

      else
      {
        [v4 appendFormat:@"wallpaperProperties error: %@\n", v12];
      }
    }
  }

  else
  {
    [v4 appendString:@"nil"];
  }

  return v4;
}

- (id)descriptionForAestheticsWithManagedAsset:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = [(PHAsset *)self _createPropertyObjectOfClass:objc_opt_class()];
  [v4 appendString:@"\n"];
  [v5 wellFramedSubjectScore];
  [v4 appendFormat:@"wellFramedSubjectScore = %f\n", v6];
  [v5 wellChosenSubjectScore];
  [v4 appendFormat:@"wellChosenSubjectScore = %f\n", v7];
  [v5 tastefullyBlurredScore];
  [v4 appendFormat:@"tastefullyBlurredScore = %f\n", v8];
  [v5 sharplyFocusedSubjectScore];
  [v4 appendFormat:@"sharplyFocusedSubjectScore = %f\n", v9];
  [v5 wellTimedShotScore];
  [v4 appendFormat:@"wellTimedShotScore = %f\n", v10];
  [v5 pleasantLightingScore];
  [v4 appendFormat:@"pleasantLightingScore = %f\n", v11];
  [v5 pleasantReflectionsScore];
  [v4 appendFormat:@"pleasantReflectionsScore = %f\n", v12];
  [v5 harmoniousColorScore];
  [v4 appendFormat:@"harmoniousColorScore = %f\n", v13];
  [v5 livelyColorScore];
  [v4 appendFormat:@"livelyColorScore = %f\n", v14];
  [v5 pleasantSymmetryScore];
  [v4 appendFormat:@"pleasantSymmetryScore = %f\n", v15];
  [v5 pleasantPatternScore];
  [v4 appendFormat:@"pleasantPatternScore = %f\n", v16];
  [v5 immersivenessScore];
  [v4 appendFormat:@"immersivenessScore = %f\n", v17];
  [v5 pleasantPerspectiveScore];
  [v4 appendFormat:@"pleasantPerspectiveScore = %f\n", v18];
  [v5 pleasantPostProcessingScore];
  [v4 appendFormat:@"pleasantPostProcessingScore = %f\n", v19];
  [v5 noiseScore];
  [v4 appendFormat:@"noiseScore = %f\n", v20];
  [v5 failureScore];
  [v4 appendFormat:@"failureScore = %f\n", v21];
  [v5 pleasantCompositionScore];
  [v4 appendFormat:@"pleasantCompositionScore = %f\n", v22];
  [v5 interestingSubjectScore];
  [v4 appendFormat:@"interestingSubjectScore = %f\n", v23];
  [v5 intrusiveObjectPresenceScore];
  [v4 appendFormat:@"intrusiveObjectPresenceScore = %f\n", v24];
  [v5 pleasantCameraTiltScore];
  [v4 appendFormat:@"pleasantCameraTiltScore = %f\n", v25];
  [v5 lowLight];
  [v4 appendFormat:@"lowLight = %f\n", v26];

  return v4;
}

- (id)descriptionForMediaAnalysisWithManagedAsset:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = [(PHAsset *)self _createPropertyObjectOfClass:objc_opt_class()];
  v7 = [v6 mediaAnalysisTimeStamp];
  [v5 appendFormat:@"mediaAnalysisTimeStamp = %@\n", v7];

  [v5 appendFormat:@"mediaAnalysisVersion = %llu\n", objc_msgSend(v6, "mediaAnalysisVersion")];
  [v5 appendFormat:@"mediaAnalysisImageVersion = %hd\n", objc_msgSend(v6, "mediaAnalysisImageVersion")];
  [v5 appendFormat:@"imageCaptionVersion = %hd\n", objc_msgSend(v6, "imageCaptionVersion")];
  [v5 appendFormat:@"videoCaptionVersion = %hd\n", objc_msgSend(v6, "videoCaptionVersion")];
  v49 = 0uLL;
  v50 = 0;
  if (v4 && ([v4 videoKeyFrameTime], (BYTE12(v49) & 0x1D) == 1))
  {
    *&time.start.value = v49;
    time.start.epoch = v50;
    [v5 appendFormat:@"bestKeyFrameTime = %0.3f sec\n", CMTimeGetSeconds(&time.start)];
  }

  else
  {
    [v5 appendFormat:@"bestKeyFrameTime not set\n", v42];
  }

  memset(&time, 0, sizeof(time));
  if (!v6)
  {
    [v5 appendFormat:@"bestVideoTimeRange not set\n"];
    memset(&v47, 0, sizeof(v47));
LABEL_16:
    [v5 appendFormat:@"animatedStickerTimeRange not set\n", *&v43, *&v44];
    goto LABEL_17;
  }

  [v6 bestVideoTimeRange];
  if ((time.start.flags & 1) == 0 || (~time.duration.flags & 0x11) == 0 || (time.start.flags & 0x11) == 0x11 || (time.duration.flags & 1) == 0 || time.duration.epoch || time.duration.value < 0)
  {
    v8 = @"bestVideoTimeRange not set\n";
  }

  else
  {
    *&v47.start.value = *&time.start.value;
    v47.start.epoch = time.start.epoch;
    Seconds = CMTimeGetSeconds(&v47.start);
    v47 = time;
    CMTimeRangeGetEnd(&v45.start, &v47);
    v43 = Seconds;
    v44 = CMTimeGetSeconds(&v45.start);
    v8 = @"bestVideoTimeRange = [ %0.3f .. %0.3f ] sec\n";
  }

  [v5 appendFormat:v8, *&v43, *&v44];
  memset(&v47, 0, sizeof(v47));
  [v6 animatedStickerTimeRange];
  if ((v47.start.flags & 1) == 0 || (~v47.duration.flags & 0x11) == 0 || (v47.start.flags & 0x11) == 0x11 || (v47.duration.flags & 1) == 0 || v47.duration.epoch || v47.duration.value < 0)
  {
    goto LABEL_16;
  }

  *&v45.start.value = *&v47.start.value;
  v45.start.epoch = v47.start.epoch;
  v41 = CMTimeGetSeconds(&v45.start);
  v45 = v47;
  CMTimeRangeGetEnd(&v46, &v45);
  [v5 appendFormat:@"animatedStickerTimeRange = [ %0.3f .. %0.3f ] sec\n", *&v41, CMTimeGetSeconds(&v46)];
LABEL_17:
  [v6 bestPlaybackRect];
  v10 = DCIM_NSStringFromCGRect();
  [v5 appendFormat:@"bestPlaybackRect = %@\n", v10];

  [v6 blurrinessScore];
  [v5 appendFormat:@"blurrinessScore = %0.3f\n", v11];
  [v6 exposureScore];
  [v5 appendFormat:@"exposureScore = %0.3f\n", v12];
  [v6 wallpaperScore];
  [v5 appendFormat:@"wallpaperScore = %0.3f\n", v13];
  [v6 autoplaySuggestionScore];
  [v5 appendFormat:@"autoplaySuggestionScore = %0.3f\n", v14];
  [v6 videoStickerSuggestionScore];
  [v5 appendFormat:@"videoStickerSuggestionScore = %0.3f\n", v15];
  [v6 videoScore];
  [v5 appendFormat:@"videoScore = %0.3f\n", v16];
  [v6 activityScore];
  [v5 appendFormat:@"activityScore = %0.3f\n", v17];
  [v6 audioScore];
  [v5 appendFormat:@"audioScore = %0.3f\n", v18];
  [v6 settlingEffectScore];
  [v5 appendFormat:@"settlingEffectScore = %0.3f\n", v19];
  [v5 appendFormat:@"faceCount = %llu\n", objc_msgSend(v6, "faceCount")];
  v20 = PHAssetMediaAnalysisStringsWithMultipleAudioClassifications([v6 audioClassification]);
  v21 = [v20 componentsJoinedByString:@" | "];
  [v5 appendFormat:@"audioClassification = %@\n", v21];

  [v5 appendFormat:@"probableRotationDirection = %hd\n", objc_msgSend(v6, "probableRotationDirection")];
  [v6 probableRotationDirectionConfidence];
  [v5 appendFormat:@"probableRotationDirectionConfidence = %g\n", v22];
  v23 = [v6 colorNormalizationData];
  [v5 appendFormat:@"colorNormalizationData = %@\n", v23];

  v24 = [(PHAsset *)self _createPropertyObjectOfClass:objc_opt_class()];
  [v5 appendFormat:@"characterRecognitionAlgorithmVersion = %ld\n", objc_msgSend(v24, "algorithmVersion")];
  v25 = [v24 adjustmentVersion];
  [v5 appendFormat:@"characterRecognitionAdjustmentVersion = %@\n", v25];

  v26 = [v24 characterRecognitionData];
  v27 = [v24 characterRecognitionData];
  [v5 appendFormat:@"characterRecognitionData = %p(.characterRecognitionData.length = %lu)\n", v26, objc_msgSend(v27, "length")];

  v28 = [v24 machineReadableCodeData];
  v29 = [v24 machineReadableCodeData];
  [v5 appendFormat:@"machineReadableCodeData = %p(.machineReadableCodeData.length = %lu)\n", v28, objc_msgSend(v29, "length")];

  v30 = [(PHAsset *)self _createPropertyObjectOfClass:objc_opt_class()];
  [v5 appendFormat:@"textUnderstandingAlgorithmVersion = %ld\n", objc_msgSend(v30, "textUnderstandingVersion")];
  v31 = [v30 textUnderstandingData];
  v32 = [v30 textUnderstandingData];
  [v5 appendFormat:@"textUnderstandingData = %p(.textUnderstandingData.length = %lu)\n", v31, objc_msgSend(v32, "length")];

  [v5 appendFormat:@"screenTimeDeviceImageSensitivity = %hd\n", objc_msgSend(v6, "screenTimeDeviceImageSensitivity")];
  v33 = [(PHAsset *)self _createPropertyObjectOfClass:objc_opt_class()];
  [v5 appendFormat:@"visualSearchAlgorithmVersion = %ld\n", objc_msgSend(v33, "algorithmVersion")];
  v34 = [v33 adjustmentVersion];
  [v5 appendFormat:@"visualSearchAdjustmentVersion = %@\n", v34];

  v35 = [v33 visualSearchData];
  v36 = [v33 visualSearchData];
  [v5 appendFormat:@"visualSearchData = %p(.visualSearchData.length = %lu)\n", v35, objc_msgSend(v36, "length")];

  [v33 stickerConfidenceScore];
  [v5 appendFormat:@"stickerConfidenceScore = %0.3f\n", v37];
  [v5 appendFormat:@"stickerAlgorithmVersion = %ld\n", objc_msgSend(v33, "stickerAlgorithmVersion")];
  [v5 appendFormat:@"syndicationProcessingValue = %hu\n", objc_msgSend(v6, "syndicationProcessingValue")];
  v38 = PHAssetSyndicationProcessingVersionDescription([v6 syndicationProcessingVersion]);
  [v5 appendFormat:@"syndicationProcessingVersion = %@\n", v38];

  [v5 appendFormat:@"privateEncryptedComputeAnalysisVersion = %d", objc_msgSend(v6, "privateEncryptedComputeAnalysisVersion")];
  v39 = [v6 privateEncryptedComputeAnalysisTimestamp];
  [v5 appendFormat:@"privateEncryptedComputeAnalysisTimestamp = %@", v39];

  return v5;
}

- (id)detailedDebugDescriptionInLibrary:(id)a3
{
  v107 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PHAsset.m" lineNumber:4530 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v6 = [(PHAsset *)self description];
  v7 = [v6 mutableCopy];

  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__22497;
  v104 = __Block_byref_object_dispose__22498;
  v105 = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x3032000000;
  v97 = __Block_byref_object_copy__22497;
  v98 = __Block_byref_object_dispose__22498;
  v99 = 0;
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy__22497;
  v92 = __Block_byref_object_dispose__22498;
  v93 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__22497;
  v86 = __Block_byref_object_dispose__22498;
  v87 = 0;
  v79 = 0;
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x3032000000;
  v80[3] = __Block_byref_object_copy__22497;
  v80[4] = __Block_byref_object_dispose__22498;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__22497;
  v78 = __Block_byref_object_dispose__22498;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__22497;
  v72 = __Block_byref_object_dispose__22498;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__22497;
  v66 = __Block_byref_object_dispose__22498;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__22497;
  v60 = __Block_byref_object_dispose__22498;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__22497;
  v54 = __Block_byref_object_dispose__22498;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__22497;
  v48 = __Block_byref_object_dispose__22498;
  v49 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __45__PHAsset_detailedDebugDescriptionInLibrary___block_invoke;
  v30[3] = &unk_1E75A70B8;
  v30[4] = self;
  v31 = v5;
  v8 = v7;
  v32 = v8;
  v33 = &v88;
  v34 = &v100;
  v35 = &v94;
  v36 = v80;
  v37 = &v74;
  v38 = &v68;
  v39 = &v62;
  v40 = &v56;
  v41 = &v50;
  v42 = &v44;
  v43 = &v82;
  v25 = v31;
  [v31 performBlockAndWait:v30 completionHandler:0];
  [v8 appendFormat:@"\n\nDate Details: %@", v89[5]];
  [v8 appendFormat:@"\n\nAdjustments Details: %@", v101[5]];
  v9 = [(PHAsset *)self adjustmentsDebugMetadata];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 description];
  }

  else
  {
    v11 = @"<Unsupported Data>";
  }

  if ([(__CFString *)v11 length]>= 0x201)
  {
    v12 = [(__CFString *)v11 substringToIndex:512];
    v13 = [v12 stringByAppendingFormat:@"... [truncated from total length %lu]", -[__CFString length](v11, "length")];

    v11 = v13;
  }

  [v8 appendFormat:@"\n\nAdjustments Data: %@", v11];
  [v8 appendFormat:@"\n\nAdditional Details: %@", v95[5]];
  [v8 appendFormat:@"\n\nAnalysis State Details:\n%@", v75[5]];
  v14 = [(PHAsset *)self variationSuggestionStatesDetails];
  [v8 appendFormat:@"\n\nVariation Suggestion State Details:\n%@", v14];
  [v8 appendFormat:@"\n\nScene Analysis Details: %@", v69[5]];
  [v8 appendFormat:@"\n\nFace Analysis Details: %@", v63[5]];
  [v8 appendFormat:@"\n\nMedia Analysis Details: %@", v57[5]];
  [v8 appendFormat:@"\n\nAesthetics Details: %@", v51[5]];
  [v8 appendFormat:@"\n\nPhotoAnalysis Wallpaper Properties Details: %@", v45[5]];
  v15 = [(PHAsset *)self croppingDebugDescription];
  [v8 appendFormat:@"\n\nCropping Details: %@", v15];
  v16 = [(PHObject *)self uuid];
  v17 = [PHImageManagerRequestTracer recentMessagesSummaryForAssetUUID:v16];
  [v8 appendFormat:@"\n\nRecent Image Manager Requests:\n%@", v17];

  if (v83[5])
  {
    [v8 appendFormat:@"\n\nResources Details: %@", v83[5]];
  }

  [v8 appendFormat:@"\n\nAsset resources: "];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [PHAssetResource assetResourcesForAsset:self includeDerivatives:1];
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v106 count:16];
  if (v19)
  {
    v20 = *v27;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [v8 appendFormat:@"%@\n", *(*(&v26 + 1) + 8 * i)];
      }

      v19 = [v18 countByEnumeratingWithState:&v26 objects:v106 count:16];
    }

    while (v19);
  }

  v22 = v8;
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(v80, 8);

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v88, 8);

  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v100, 8);

  return v22;
}

void __45__PHAsset_detailedDebugDescriptionInLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedAssetForPhotoLibrary:*(a1 + 40)];
  if (v2)
  {
    v73 = v2;
    [v2 willAccessValueForKey:0];
    v3 = [v73 additionalAttributes];
    [v3 willAccessValueForKey:0];

    v4 = [v73 additionalAttributes];
    v5 = [v4 unmanagedAdjustment];
    [v5 willAccessValueForKey:0];

    v6 = *(a1 + 48);
    v7 = [v73 description];
    [v6 appendFormat:@"\n\nBacked by: %@", v7];

    v8 = MEMORY[0x1E696AD60];
    v9 = PLMillisecondDateFormatter();
    v10 = [v73 dateCreated];
    v11 = [v9 stringFromDate:v10];
    v12 = [v8 stringWithFormat:@"\n\tdateCreated(+ms) = %@", v11];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = *(*(*(a1 + 56) + 8) + 40);
    v16 = PLMillisecondDateFormatter();
    v17 = [v73 localDateCreated];
    v18 = [v16 stringFromDate:v17];
    [v15 appendFormat:@"\n\tlocalDateCreated(+ms) = %@", v18];

    v19 = *(*(*(a1 + 56) + 8) + 40);
    v20 = PLMillisecondDateFormatter();
    v21 = [v73 addedDate];
    v22 = [v20 stringFromDate:v21];
    [v19 appendFormat:@"\n\taddedDate(+ms) = %@", v22];

    v23 = [v73 additionalAttributes];
    v24 = [v23 unmanagedAdjustment];
    v25 = [v24 description];
    v26 = *(*(a1 + 64) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    v28 = [v73 additionalAttributes];
    v29 = [v28 description];
    v30 = [v29 mutableCopy];
    v31 = *(*(a1 + 72) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    v33 = [v73 location];

    if (v33)
    {
      v34 = *(*(*(a1 + 72) + 8) + 40);
      v35 = [v73 location];
      [v34 appendFormat:@"\nlocation = %@", v35];
    }

    v36 = [v73 title];

    if (v36)
    {
      v37 = *(*(*(a1 + 72) + 8) + 40);
      v38 = [v73 title];
      [v37 appendFormat:@"\ntitle = %@", v38];
    }

    v39 = [v73 longDescription];

    if (v39)
    {
      v40 = *(*(*(a1 + 72) + 8) + 40);
      v41 = [v73 longDescription];
      [v40 appendFormat:@"\nlongDescription = %@", v41];
    }

    v42 = [v73 descriptionForSidecarFiles];
    v43 = *(*(a1 + 80) + 8);
    v44 = *(v43 + 40);
    *(v43 + 40) = v42;

    if (*(*(*(a1 + 80) + 8) + 40))
    {
      [*(*(*(a1 + 72) + 8) + 40) appendFormat:@"\n%@", *(*(*(a1 + 80) + 8) + 40)];
    }

    v45 = [v73 descriptionForAnalysisStates];
    v46 = *(*(a1 + 88) + 8);
    v47 = *(v46 + 40);
    *(v46 + 40) = v45;

    v48 = [v73 descriptionForSceneAnalysis];
    v49 = *(*(a1 + 96) + 8);
    v50 = *(v49 + 40);
    *(v49 + 40) = v48;

    v51 = [v73 faceDescription];
    v52 = *(*(a1 + 104) + 8);
    v53 = *(v52 + 40);
    *(v52 + 40) = v51;

    v54 = [*(a1 + 32) descriptionForMediaAnalysisWithManagedAsset:v73];
    v55 = *(*(a1 + 112) + 8);
    v56 = *(v55 + 40);
    *(v55 + 40) = v54;

    v57 = [*(a1 + 32) descriptionForAestheticsWithManagedAsset:v73];
    v58 = *(*(a1 + 120) + 8);
    v59 = *(v58 + 40);
    *(v58 + 40) = v57;

    v60 = [*(a1 + 32) descriptionForPhotoAnanlysisWallpaperProeprtiesWithManagedAsset:v73];
    v61 = *(*(a1 + 128) + 8);
    v62 = *(v61 + 40);
    *(v61 + 40) = v60;

    v63 = [*(a1 + 32) photoLibrary];
    v64 = [v63 isCloudPhotoLibraryEnabled];

    v65 = MEMORY[0x1E696AEC0];
    if (v64)
    {
      [v73 descriptionForResources];
    }

    else
    {
      [v73 descriptionForNonCloudResources];
    }
    v66 = ;
    v67 = [v65 stringWithFormat:@"\n%@", v66];
    v68 = *(*(a1 + 136) + 8);
    v69 = *(v68 + 40);
    *(v68 + 40) = v67;

    v70 = [v73 additionalAttributes];
    v71 = [v70 unmanagedAdjustment];
    [v71 didAccessValueForKey:0];

    v72 = [v73 additionalAttributes];
    [v72 didAccessValueForKey:0];

    [v73 didAccessValueForKey:0];
    v2 = v73;
  }
}

- (id)wallpaperCroppingDebugKeyValuePairs
{
  v195[34] = *MEMORY[0x1E69E9840];
  PFDeviceScreenSize();
  v4 = v3;
  v6 = v5;
  PFSizeWithAspectRatioFittingSize();
  v8 = v7;
  v10 = v9;
  PFSizeWithAspectRatioFittingSize();
  v178 = v12;
  v180 = v11;
  v182 = [(PHAsset *)self pixelWidth];
  v115 = [(PHAsset *)self pixelHeight];
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v13 = *MEMORY[0x1E695F050];
  v14 = *(MEMORY[0x1E695F050] + 8);
  v15 = *(MEMORY[0x1E695F050] + 16);
  v16 = *(MEMORY[0x1E695F050] + 24);
  [(PHAsset *)self suggestedCropForTargetSize:&v193 withFocusRegion:v4 andOutputCropScore:v6, *MEMORY[0x1E695F050], v14, v15, v16];
  v168 = v18;
  v170 = v17;
  v166 = v20;
  v167 = v19;
  PFDeviceLockScreenFocusAreaRectNormalized();
  v183 = v4;
  v184 = v6;
  [(PHAsset *)self suggestedCropForTargetSize:&v192 withFocusRegion:v4 andOutputCropScore:v6, v21, v22, v23, v24];
  v161 = v26;
  v163 = v25;
  v159 = v28;
  v160 = v27;
  [(PHAsset *)self suggestedCropForTargetSize:&v191 withFocusRegion:v6 andOutputCropScore:v4, v13, v14, v15, v16];
  v155 = v30;
  v157 = v29;
  v151 = v32;
  v153 = v31;
  v190 = 0;
  v189 = 0;
  v188 = 0;
  [(PHAsset *)self suggestedCropForTargetSize:&v190 withFocusRegion:v8 andOutputCropScore:v10, v13, v14, v15, v16];
  v145 = v34;
  v147 = v33;
  v141 = v36;
  v143 = v35;
  PFDeviceLockScreenFocusAreaRectNormalized();
  [(PHAsset *)self suggestedCropForTargetSize:&v189 withFocusRegion:v8 andOutputCropScore:v10, v37, v38, v39, v40];
  v138 = v42;
  v139 = v41;
  v134 = v44;
  v135 = v43;
  [(PHAsset *)self suggestedCropForTargetSize:&v188 withFocusRegion:v10 andOutputCropScore:v8, v13, v14, v15, v16];
  v132 = v46;
  v133 = v45;
  v130 = v48;
  v131 = v47;
  v187 = 0;
  v185 = 0;
  v186 = 0;
  [(PHAsset *)self suggestedCropForTargetSize:&v187 withFocusRegion:v180 andOutputCropScore:v178, v13, v14, v15, v16];
  v128 = v50;
  v129 = v49;
  v124 = v52;
  v125 = v51;
  PFDeviceLockScreenFocusAreaRectNormalized();
  [(PHAsset *)self suggestedCropForTargetSize:&v186 withFocusRegion:v180 andOutputCropScore:v178, v53, v54, v55, v56];
  v122 = v58;
  v123 = v57;
  v120 = v60;
  v121 = v59;
  [(PHAsset *)self suggestedCropForTargetSize:&v185 withFocusRegion:v178 andOutputCropScore:v180, v13, v14, v15, v16];
  v118 = v62;
  v119 = v61;
  v116 = v64;
  v117 = v63;
  v65 = MEMORY[0x1E696AEC0];
  [(PHAsset *)self faceAreaMinX];
  v67 = v66;
  [(PHAsset *)self faceAreaMaxX];
  v69 = v68;
  [(PHAsset *)self faceAreaMinY];
  v71 = v70;
  [(PHAsset *)self faceAreaMaxY];
  v173 = [v65 stringWithFormat:@"(minX: %.2f, maxX: %.2f, minY: %.2f, maxY: %.2f)", v67, v69, v71, v72];
  [(PHAsset *)self acceptableCropRect];
  v136 = v75 * v182 + 0.0;
  v126 = (1.0 - (v73 + v74)) * v115 + 0.0;
  v113 = v74 * v115;
  v114 = v76 * v182;
  [(PHAsset *)self preferredCropRect];
  v149 = v79 * v182 + 0.0;
  v111 = v80 * v182;
  v112 = (1.0 - (v77 + v78)) * v115 + 0.0;
  v110 = v78 * v115;
  [(PHAsset *)self faceAreaMinX];
  v82 = v81;
  [(PHAsset *)self faceAreaMinY];
  v84 = v83;
  [(PHAsset *)self faceAreaMaxX];
  v86 = v85;
  [(PHAsset *)self faceAreaMaxY];
  v87 = v86 - v82;
  v89 = v88 - v84;
  v90 = 1.0 - (v84 + v88 - v84);
  v194[0] = @"uuid";
  v181 = [(PHObject *)self uuid];
  v195[0] = v181;
  v194[1] = @"width";
  v179 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHAsset pixelWidth](self, "pixelWidth")}];
  v195[1] = v179;
  v194[2] = @"height";
  v177 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHAsset pixelHeight](self, "pixelHeight")}];
  v195[2] = v177;
  v194[3] = @"screenWidth";
  v176 = [MEMORY[0x1E696AD98] numberWithDouble:v183];
  v195[3] = v176;
  v194[4] = @"screenHeight";
  v175 = [MEMORY[0x1E696AD98] numberWithDouble:v184];
  v195[4] = v175;
  v194[5] = @"preferredCrop";
  [(PHAsset *)self preferredCropRect];
  v174 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", v91, v92, v93, v94];
  v195[5] = v174;
  v194[6] = @"acceptableCrop";
  [(PHAsset *)self acceptableCropRect];
  v172 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", v95, v96, v97, v98];
  v195[6] = v172;
  v195[7] = v173;
  v194[7] = @"faceAreaEdges";
  v194[8] = @"faceAreaRect";
  v165 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", *&v82, *&v90, *&v87, *&v89];
  v195[8] = v165;
  v194[9] = @"preferredCropPixels";
  v150 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", *&v149, *&v112, *&v111, *&v110];
  v195[9] = v150;
  v194[10] = @"acceptableCropPixels";
  v137 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", *&v136, *&v126, *&v114, *&v113];
  v195[10] = v137;
  v194[11] = @"faceAreaPixels";
  v127 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", v82 * v182 + 0.0, v90 * v115 + 0.0, v87 * v182, v89 * v115];
  v195[11] = v127;
  v194[12] = @"suggestedCrop";
  v171 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", v170, v168, *&v167, *&v166];
  v195[12] = v171;
  v194[13] = @"suggestedCropWithFocusArea";
  v169 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", v163, v161, *&v160, *&v159];
  v195[13] = v169;
  v194[14] = @"suggestedCropWithScreenTranspose";
  v164 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", v157, v155, v153, v151];
  v195[14] = v164;
  v194[15] = @"estimatedSuggestedCropPad";
  v162 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", v147, v145, v143, v141];
  v195[15] = v162;
  v194[16] = @"estimatedSuggestedCropPadWithFocusArea";
  v158 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", v139, v138, v135, v134];
  v195[16] = v158;
  v194[17] = @"estimatedSuggestedCropPadWithScreenTranspose";
  v156 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", v133, v132, v131, v130];
  v195[17] = v156;
  v194[18] = @"estimatedSuggestedCropPhone";
  v154 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", v129, v128, v125, v124];
  v195[18] = v154;
  v194[19] = @"estimatedSuggestedCropPhoneWithFocusArea";
  v152 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", v123, v122, v121, v120];
  v195[19] = v152;
  v194[20] = @"estimatedSuggestedCropPhoneWithScreenTranspose";
  v148 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.3f, y:%.3f}, {width:%.3f, height:%.3f}}", v119, v118, v117, v116];
  v195[20] = v148;
  v194[21] = @"cropQualityScore";
  v146 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v193];
  v195[21] = v146;
  v194[22] = @"cropQualityScoreWithFocusArea";
  v144 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v192];
  v195[22] = v144;
  v194[23] = @"cropQualityScoreWithScreenTranspose";
  v142 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v191];
  v195[23] = v142;
  v194[24] = @"estimatedCropQualityScorePad";
  v140 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v190];
  v195[24] = v140;
  v194[25] = @"estimatedCropQualityScorePadWithFocusArea";
  v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v189];
  v195[25] = v99;
  v194[26] = @"estimatedCropQualityScorePadWithScreenTranspose";
  v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v188];
  v195[26] = v100;
  v194[27] = @"estimatedCropQualityScorePhone";
  v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v187];
  v195[27] = v101;
  v194[28] = @"estimatedCropQualityScorePhoneWithFocusArea";
  v102 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v186];
  v195[28] = v102;
  v194[29] = @"estimatedCropQualityScorePhoneWithScreenTranspose";
  v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v185];
  v195[29] = v103;
  v194[30] = @"imageAspectRatio";
  v104 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v182 / v115];
  v195[30] = v104;
  v194[31] = @"screenAspectRatio";
  v105 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v183 / v184];
  v195[31] = v105;
  v194[32] = @"cropAspectRatio";
  v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v167 / v166];
  v195[32] = v106;
  v194[33] = @"cropAspectRatioWithFocusArea";
  v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v160 / v159];
  v195[33] = v107;
  v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v195 forKeys:v194 count:34];

  return v108;
}

- (id)adjustmentsDebugMetadata
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__22497;
  v20 = __Block_byref_object_dispose__22498;
  v21 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = objc_alloc_init(PHImageRequestOptions);
  [(PHImageRequestOptions *)v4 setVersion:16];
  [(PHImageRequestOptions *)v4 setSynchronous:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__PHAsset_adjustmentsDebugMetadata__block_invoke;
  aBlock[3] = &unk_1E75A7090;
  aBlock[4] = self;
  v15 = &v16;
  v5 = v3;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  v7 = +[PHImageManager defaultManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__PHAsset_adjustmentsDebugMetadata__block_invoke_2;
  v11[3] = &unk_1E75A7FF0;
  v8 = v6;
  v12 = v8;
  [v7 requestImageForAsset:self targetSize:0 contentMode:v4 options:v11 resultHandler:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __35__PHAsset_adjustmentsDebugMetadata__block_invoke(uint64_t a1, void *a2)
{
  v22 = [a2 objectForKeyedSubscript:@"PHAdjustmentDataKey"];
  if (v22)
  {
    if ([*(a1 + 32) isPhoto])
    {
      v3 = objc_alloc_init(MEMORY[0x1E69BE650]);
      v4 = [v22 data];
      v5 = [v22 formatIdentifier];
      v6 = [v22 formatVersion];
      v7 = [v3 debugDescriptionForPhotoEditData:v4 formatIdentifier:v5 formatVersion:v6];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    else
    {
      if (![*(a1 + 32) isVideo])
      {
        goto LABEL_7;
      }

      v10 = *(a1 + 32);
      v11 = [v22 data];
      v12 = [v10 __dictionaryWithContentsOfData:v11];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        goto LABEL_7;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69BE650]);
      v4 = [v22 data];
      v20 = [v3 debugDescriptionForAdjustmentData:v4];
      v21 = *(*(a1 + 48) + 8);
      v5 = *(v21 + 40);
      *(v21 + 40) = v20;
    }

LABEL_7:
    v15 = [*(*(*(a1 + 48) + 8) + 40) mutableCopy];
    v16 = [v22 formatVersion];
    [v15 setObject:v16 forKeyedSubscript:@"formatVersion"];

    v17 = [v22 formatIdentifier];
    [v15 setObject:v17 forKeyedSubscript:@"formatIdentifier"];

    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v15;
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)evaluationDebugMetadata
{
  if (PFOSVariantHasInternalDiagnostics())
  {
    v3 = objc_opt_new();
    v4 = [(PHAsset *)self mainFileURL];
    v5 = [v4 lastPathComponent];

    v6 = MEMORY[0x1E69BE540];
    v7 = [(PHObject *)self photoLibrary];
    v8 = [v7 photoLibrary];
    v9 = [v5 stringByDeletingPathExtension];
    v10 = [v9 stringByAppendingPathComponent:@"ReframeEvaluation"];
    v11 = [v6 diagnosticFilePathForLibrary:v8 mainFilename:v10 createIfNeeded:0];

    if (v11)
    {
      v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v11];
      if (v12)
      {
        [v3 setObject:v12 forKeyedSubscript:@"ReframeEvaluation"];
      }
    }

    v13 = MEMORY[0x1E69BE540];
    v14 = [(PHObject *)self photoLibrary];
    v15 = [v14 photoLibrary];
    v16 = [v5 stringByDeletingPathExtension];
    v17 = [v16 stringByAppendingPathComponent:@"ReframeSubjects"];
    v18 = [v13 diagnosticFilePathForLibrary:v15 mainFilename:v17 createIfNeeded:0];

    if (v18)
    {
      v19 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v18];
      if (v19)
      {
        [v3 setObject:v19 forKeyedSubscript:@"ReframeSubjects"];
      }
    }

    v35 = v11;
    v20 = MEMORY[0x1E69BE540];
    v21 = [(PHObject *)self photoLibrary];
    v22 = [v21 photoLibrary];
    v23 = [v5 stringByDeletingPathExtension];
    v24 = [v23 stringByAppendingPathComponent:@"CapturePerspectiveEvaluation-txt"];
    v25 = [v20 diagnosticFilePathForLibrary:v22 mainFilename:v24 createIfNeeded:0];

    if (v25)
    {
      v26 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v25];
      if (v26)
      {
        [v3 setObject:v26 forKeyedSubscript:@"CapturePerspectiveEvaluation-txt"];
      }
    }

    v27 = MEMORY[0x1E69BE540];
    v28 = [(PHObject *)self photoLibrary];
    v29 = [v28 photoLibrary];
    v30 = [v5 stringByDeletingPathExtension];
    v31 = [v30 stringByAppendingPathComponent:@"CaptureAutoCropEvaluation-txt"];
    v32 = [v27 diagnosticFilePathForLibrary:v29 mainFilename:v31 createIfNeeded:0];

    if (v32)
    {
      v33 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v32];
      if (v33)
      {
        [v3 setObject:v33 forKeyedSubscript:@"CaptureAutoCropEvaluation-txt"];
      }
    }
  }

  else
  {
    v3 = [MEMORY[0x1E695DF20] dictionary];
  }

  return v3;
}

- (id)gatingDebugMetadata
{
  if (PFOSVariantHasInternalDiagnostics())
  {
    v3 = [(PHAsset *)self pl_managedAsset];
    v4 = [v3 pathForReframeDiagnosticFile];

    if (v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4];
      if (v5)
      {
        v6 = v5;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObject:v5];

        goto LABEL_7;
      }
    }
  }

  v7 = [MEMORY[0x1E695DEC8] array];
LABEL_7:

  return v7;
}

- (id)__dictionaryWithContentsOfData:(id)a3
{
  v3 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a3, 0, 0, 0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v3)
  {
    CFRelease(v3);
    v3 = 0;
  }

  return v3;
}

- (id)fileURLForVideoComplementFile
{
  v3 = [(PHAsset *)self pl_photoLibrary];
  v4 = [v3 pathManager];

  if ([v4 shouldUseFileIdentifierForBundleScope:{-[PHAsset bundleScope](self, "bundleScope")}] && !-[PHAsset isCloudSharedAsset](self, "isCloudSharedAsset"))
  {
    v8 = objc_alloc(MEMORY[0x1E69BF298]);
    v9 = [(PHObject *)self uuid];
    v10 = [(PHAsset *)self bundleScope];
    v11 = [*MEMORY[0x1E6982F80] identifier];
    v6 = [v8 initWithAssetUuid:v9 bundleScope:v10 uti:v11 resourceVersion:0 resourceType:3];

    v7 = [v4 readOnlyUrlWithIdentifier:v6];
  }

  else
  {
    v5 = [(PHAsset *)self mainFileURL];
    v6 = [v5 URLByDeletingPathExtension];
    v7 = [v6 URLByAppendingPathExtension:@"MOV"];
  }

  return v7;
}

- (id)fileURLForFullsizeRenderImage
{
  if ([(PHAsset *)self isCloudSharedAsset])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(PHAsset *)self pl_photoLibrary];
    v5 = [v4 pathManager];

    if ([v5 shouldUseFileIdentifierForBundleScope:{-[PHAsset bundleScope](self, "bundleScope")}])
    {
      v6 = objc_alloc(MEMORY[0x1E69BF298]);
      v7 = [(PHObject *)self uuid];
      v8 = [(PHAsset *)self bundleScope];
      v9 = [*MEMORY[0x1E6982E58] identifier];
      v10 = [v6 initWithAssetUuid:v7 bundleScope:v8 uti:v9 resourceVersion:2 recipeID:65938];

      v3 = [v5 readOnlyUrlWithIdentifier:v10];
    }

    else
    {
      v11 = [(PHAsset *)self directory];
      v12 = [(PHAsset *)self filename];
      v10 = [v5 assetPathForMutationsDirectoryWithDirectory:v11 filename:v12];

      v13 = [MEMORY[0x1E69BE540] pathForAdjustmentDirectoryWithMutationsDirectory:v10];
      if (v13)
      {
        v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:1];
      }

      else
      {
        v14 = 0;
      }

      v3 = [v14 URLByAppendingPathComponent:@"FullSizeRender.jpg" isDirectory:0];
    }
  }

  return v3;
}

- (id)fileURLsForDiagnosticFiles
{
  v111 = *MEMORY[0x1E69E9840];
  if ([(PHAsset *)self isCloudSharedAsset])
  {
    v105 = 0;
  }

  else
  {
    v3 = objc_opt_new();
    v4 = [(PHAsset *)self mainFileURL];
    v5 = [v4 lastPathComponent];

    v6 = MEMORY[0x1E69BE540];
    v7 = [(PHObject *)self photoLibrary];
    v8 = [v7 photoLibrary];
    v9 = [v6 diagnosticFilePathForLibrary:v8 mainFilename:v5 createIfNeeded:0];

    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
    v105 = v3;
    [v3 addObject:v10];

    v104 = v9;
    if (PFOSVariantHasInternalDiagnostics())
    {
      v11 = [(PHAsset *)self pl_managedAsset];
      v12 = [v11 pathForSpatialOverCaptureDiagnosticFile];

      if (v12)
      {
        v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];
        [v3 addObject:v13];
      }

      v103 = v12;
      v14 = [(PHAsset *)self pl_managedAsset];
      v15 = [v14 pathForReframeDiagnosticFile];

      if (v15)
      {
        v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15 isDirectory:0];
        [v3 addObject:v16];
      }

      v17 = MEMORY[0x1E69BE540];
      v18 = [(PHObject *)self photoLibrary];
      v19 = [v18 photoLibrary];
      v20 = [v5 stringByDeletingPathExtension];
      v21 = [v20 stringByAppendingPathComponent:@"ReframeEvaluation"];
      v22 = [v17 diagnosticFilePathForLibrary:v19 mainFilename:v21 createIfNeeded:0];

      if (v22)
      {
        v23 = [MEMORY[0x1E695DFF8] fileURLWithPath:v22 isDirectory:0];
        [v105 addObject:v23];
      }

      v24 = MEMORY[0x1E69BE540];
      v25 = [(PHObject *)self photoLibrary];
      v26 = [v25 photoLibrary];
      v27 = [v5 stringByDeletingPathExtension];
      v28 = [v27 stringByAppendingPathComponent:@"EditPerspectiveEvaluation-txt"];
      v29 = [v24 diagnosticFilePathForLibrary:v26 mainFilename:v28 createIfNeeded:0];

      v30 = v29;
      if (v29)
      {
        v31 = [MEMORY[0x1E695DFF8] fileURLWithPath:v29 isDirectory:0];
        [v105 addObject:v31];
      }

      v99 = v30;
      v32 = MEMORY[0x1E69BE540];
      v33 = [(PHObject *)self photoLibrary];
      v34 = [v33 photoLibrary];
      v35 = [v5 stringByDeletingPathExtension];
      v36 = [v35 stringByAppendingPathComponent:@"EditPerspectiveLineDetection-png"];
      v37 = [v32 diagnosticFilePathForLibrary:v34 mainFilename:v36 createIfNeeded:0];

      v38 = v37;
      if (v37)
      {
        v39 = [MEMORY[0x1E695DFF8] fileURLWithPath:v37 isDirectory:0];
        [v105 addObject:v39];
      }

      v98 = v38;
      v100 = v22;
      v40 = MEMORY[0x1E69BE540];
      v41 = [(PHObject *)self photoLibrary];
      v42 = [v41 photoLibrary];
      v43 = [v5 stringByDeletingPathExtension];
      v44 = [v43 stringByAppendingPathComponent:@"CapturePerspectiveEvaluation-txt"];
      v45 = [v40 diagnosticFilePathForLibrary:v42 mainFilename:v44 createIfNeeded:0];

      if (v45)
      {
        v46 = [MEMORY[0x1E695DFF8] fileURLWithPath:v45 isDirectory:0];
        [v105 addObject:v46];
      }

      v97 = v45;
      v47 = MEMORY[0x1E69BE540];
      v48 = [(PHObject *)self photoLibrary];
      v49 = [v48 photoLibrary];
      v50 = [v5 stringByDeletingPathExtension];
      v51 = [v50 stringByAppendingPathComponent:@"CapturePerspectiveLineDetection-png"];
      v52 = [v47 diagnosticFilePathForLibrary:v49 mainFilename:v51 createIfNeeded:0];

      if (v52)
      {
        v53 = [MEMORY[0x1E695DFF8] fileURLWithPath:v52 isDirectory:0];
        [v105 addObject:v53];
      }

      v96 = v52;
      v101 = v15;
      v54 = MEMORY[0x1E69BE540];
      v55 = [(PHObject *)self photoLibrary];
      v56 = [v55 photoLibrary];
      v57 = [v5 stringByDeletingPathExtension];
      v58 = [v57 stringByAppendingPathComponent:@"CaptureAutoCropEvaluation-txt"];
      v59 = [v54 diagnosticFilePathForLibrary:v56 mainFilename:v58 createIfNeeded:0];

      if (v59)
      {
        v60 = [MEMORY[0x1E695DFF8] fileURLWithPath:v59 isDirectory:0];
        [v105 addObject:v60];
      }

      v61 = MEMORY[0x1E69BE540];
      v62 = [(PHObject *)self photoLibrary];
      v63 = [v62 photoLibrary];
      v64 = v5;
      v65 = [v5 stringByDeletingPathExtension];
      v66 = [v65 stringByAppendingPathComponent:@"ReframeSubjects"];
      v67 = [v61 diagnosticFilePathForLibrary:v63 mainFilename:v66 createIfNeeded:0];

      if (v67)
      {
        v68 = [MEMORY[0x1E695DFF8] fileURLWithPath:v67 isDirectory:0];
        [v105 addObject:v68];
      }

      v69 = MEMORY[0x1E69BE540];
      v70 = [(PHObject *)self photoLibrary];
      v71 = [v70 photoLibrary];
      v72 = [v64 stringByDeletingPathExtension];
      v73 = [v72 stringByAppendingPathComponent:@"ReframeRects"];
      v74 = [v69 diagnosticFilePathForLibrary:v71 mainFilename:v73 createIfNeeded:0];

      if (v74)
      {
        v75 = [MEMORY[0x1E695DFF8] fileURLWithPath:v74 isDirectory:0];
        [v105 addObject:v75];
      }

      v76 = [(PHAsset *)self pl_managedAsset];
      v77 = [v76 pathForCameraMetadataDiagnosticFile];

      if (v77)
      {
        v78 = [MEMORY[0x1E695DFF8] fileURLWithPath:v77 isDirectory:0];
        [v105 addObject:v78];
      }

      v79 = [(PHAsset *)self pl_managedAsset];
      v80 = [v79 pathForCameraSpatialOverCaptureMetadataDiagnosticFile];

      v5 = v64;
      if (v80)
      {
        v81 = [MEMORY[0x1E695DFF8] fileURLWithPath:v80 isDirectory:0];
        [v105 addObject:v81];
      }

      v9 = v104;
    }

    if (PFOSVariantHasInternalDiagnostics())
    {
      v82 = [MEMORY[0x1E696AC08] defaultManager];
      v83 = [(PHObject *)self uuid];
      v102 = v82;
      v84 = [v82 contentsOfDirectoryAtPath:@"/var/mobile/Media/DCIM/" error:0];
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v85 = [v84 countByEnumeratingWithState:&v106 objects:v110 count:16];
      if (v85)
      {
        v86 = v85;
        v87 = *v107;
        do
        {
          for (i = 0; i != v86; ++i)
          {
            if (*v107 != v87)
            {
              objc_enumerationMutation(v84);
            }

            v89 = *(*(&v106 + 1) + 8 * i);
            if ([v89 containsString:v83])
            {
              v90 = [@"/var/mobile/Media/DCIM/" stringByAppendingPathComponent:v89];
              v91 = [v90 stringByAppendingPathComponent:@"Misc"];
              v92 = [v91 stringByAppendingPathComponent:@"CVSInput"];
              v93 = [v92 stringByAppendingPathComponent:@"dump.MOV"];

              v94 = [MEMORY[0x1E695DFF8] fileURLWithPath:v93 isDirectory:0];
              [v105 addObject:v94];
            }
          }

          v86 = [v84 countByEnumeratingWithState:&v106 objects:v110 count:16];
        }

        while (v86);
      }

      v9 = v104;
    }
  }

  return v105;
}

- (id)mainFileURL
{
  v3 = [(PHAsset *)self directory];
  if (v3)
  {
    v4 = [(PHAsset *)self pl_photoLibrary];
    v5 = [v4 pathManager];

    v6 = [(PHAsset *)self filename];
    v7 = [v5 assetMainFilePathWithDirectory:v3 filename:v6 bundleScope:{-[PHAsset bundleScope](self, "bundleScope")}];

    if ([v5 isUBF])
    {
      if ([(PHAsset *)self isStreamedVideo])
      {
        v8 = [v7 pathExtension];
        v9 = [v8 isEqualToString:@"medium.MP4"];

        if ((v9 & 1) == 0)
        {
          v10 = [v7 stringByDeletingPathExtension];
          v11 = [v10 stringByAppendingPathExtension:@"medium.MP4"];

          v7 = v11;
        }
      }
    }

    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)canPerformSharingAction
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(PHAsset *)self complete])
  {
    if ([(PHAsset *)self isTimelapsePlaceholder])
    {
      v3 = @"timelapse placeholder";
    }

    else
    {
      v7 = [(PHAsset *)self isPhotoIrisPlaceholder];
      if (v7)
      {
        v3 = @"photoiris placeholder";
      }

      else
      {
        v3 = 0;
      }

      if (!v7)
      {
        return ![(PHAsset *)self needsSensitivityProtection];
      }
    }
  }

  else
  {
    v3 = @"incomplete";
  }

  v4 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [(PHObject *)self uuid];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Cannot perform sharing for asset %{public}@, reason: %{public}@", &v8, 0x16u);
  }

  return 0;
}

- (BOOL)canPerformEditOperation:(PHAssetEditOperation)editOperation
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  if (editOperation != 100)
  {
    v9 = [(PHObject *)self photoLibrary];
    v10 = [v9 wellKnownPhotoLibraryIdentifier];

    if (v10 == 3)
    {
      v7 = editOperation == PHAssetEditOperationDelete;
LABEL_10:
      v6 = v42;
      goto LABEL_11;
    }

    if (editOperation == 102)
    {
      [MEMORY[0x1E69BF328] maskForAssetsEligibleForCPLTransportWithoutSharedScopesAndPlaceholders];
      [(PHAsset *)self savedAssetType];
      v16 = PLValidatedSavedAssetTypeApplies();
      *(v42 + 24) = v16;
      if (!v16)
      {
        goto LABEL_12;
      }

      [(PHObject *)self fetchPropertySetsIfNeeded];
      if (![(PHAsset *)self participatesInLibraryScope])
      {
        v11 = [objc_opt_class() _isLibraryScopeExiting:self];
        goto LABEL_9;
      }
    }

    else
    {
      if (editOperation != 103)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __35__PHAsset_canPerformEditOperation___block_invoke;
        aBlock[3] = &unk_1E75A6F28;
        aBlock[4] = self;
        v17 = _Block_copy(aBlock);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __35__PHAsset_canPerformEditOperation___block_invoke_2;
        v39[3] = &unk_1E75A9F38;
        v39[4] = self;
        v39[5] = &v41;
        v39[6] = editOperation;
        v18 = _Block_copy(v39);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __35__PHAsset_canPerformEditOperation___block_invoke_3;
        v35[3] = &unk_1E75A6F50;
        v37 = &v41;
        v38 = editOperation;
        v19 = v17;
        v36 = v19;
        v20 = _Block_copy(v35);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __35__PHAsset_canPerformEditOperation___block_invoke_4;
        v31[3] = &unk_1E75A6F50;
        v33 = &v41;
        v34 = editOperation;
        v21 = v19;
        v32 = v21;
        v22 = _Block_copy(v31);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __35__PHAsset_canPerformEditOperation___block_invoke_5;
        v27[3] = &unk_1E75A6F50;
        v29 = &v41;
        v30 = editOperation;
        v23 = v21;
        v28 = v23;
        v24 = _Block_copy(v27);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __35__PHAsset_canPerformEditOperation___block_invoke_6;
        v26[3] = &unk_1E75A8DF0;
        v26[4] = &v41;
        v25 = _Block_copy(v26);
        [MEMORY[0x1E69BF328] executeBlockForSavedAssetType:-[PHAsset savedAssetType](self unknown:"savedAssetType") photoBooth:v20 photoStream:v20 camera:v22 cloudShared:v20 cameraConnectionKit:v18 cloudPhotoLibrary:v20 wallpaper_UNUSED:v20 momentShared:v25 placeholder:v25 referenced:v25 alternate:v20 guest:v20 companionSynced:v22 recovered:v20 legacyImport:v24 collectionShare:v25 unrecognized:{v20, v25}];

        goto LABEL_12;
      }

      [MEMORY[0x1E69BF328] maskForAssetsEligibleForCPLTransportWithoutSharedScopesAndPlaceholders];
      [(PHAsset *)self savedAssetType];
      v14 = PLValidatedSavedAssetTypeApplies();
      *(v42 + 24) = v14;
      if (!v14)
      {
        goto LABEL_12;
      }

      [(PHObject *)self fetchPropertySetsIfNeeded];
      if ([(PHAsset *)self participatesInLibraryScope])
      {
        if ([objc_opt_class() _isLibraryScopeExiting:self])
        {
          v15 = 0;
        }

        else
        {
          v15 = [objc_opt_class() _libraryScopeAssetContributedByCurrentUser:self];
        }

        *(v42 + 24) = v15;
        goto LABEL_12;
      }
    }

    *(v42 + 24) = 0;
    goto LABEL_12;
  }

  if ([(PHAsset *)self isPhotoIris])
  {
    v4 = [objc_opt_class() isOriginalKnownUnsupportedFormatForAsset:self failureInfo:0];
    v5 = [objc_opt_class() isOriginalVideoComplementKnownUnsupportedFormatForAsset:self failureInfo:0];
    v6 = v42;
    v7 = ((v4 | v5) & 1) == 0;
LABEL_11:
    *(v6 + 24) = v7;
    goto LABEL_12;
  }

  if ([(PHAsset *)self isPhoto]|| [(PHAsset *)self isVideo])
  {
    v11 = [objc_opt_class() isOriginalKnownUnsupportedFormatForAsset:self failureInfo:0];
LABEL_9:
    v7 = v11 ^ 1;
    goto LABEL_10;
  }

LABEL_12:
  v12 = *(v42 + 24);
  _Block_object_dispose(&v41, 8);
  return v12;
}

uint64_t __35__PHAsset_canPerformEditOperation___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) participatesInLibraryScope])
  {
    return 1;
  }

  if ([objc_opt_class() _isLibraryScopeExiting:*(a1 + 32)])
  {
    return 0;
  }

  v3 = objc_opt_class();
  v4 = *(a1 + 32);

  return [v3 _libraryScopeAssetContributedByCurrentUser:v4];
}

uint64_t __35__PHAsset_canPerformEditOperation___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) cloudIsDeletable];
  if (result)
  {
    result = [MEMORY[0x1E69BF2F0] isEntitledForPhotoKit];
    if (result)
    {
      *(*(*(a1 + 40) + 8) + 24) = *(a1 + 48) == 1;
    }
  }

  return result;
}

void *__35__PHAsset_canPerformEditOperation___block_invoke_3(void *result)
{
  v1 = result[6];
  v2 = (v1 - 1) < 3 || v1 == 101;
  *(*(result[5] + 8) + 24) = v2;
  if (v1 == 101)
  {
    v3 = result;
    if (*(*(result[5] + 8) + 24))
    {
      result = (*(result[4] + 16))();
      *(*(v3[5] + 8) + 24) = result;
    }
  }

  return result;
}

void *__35__PHAsset_canPerformEditOperation___block_invoke_4(void *result)
{
  v1 = result[6];
  v3 = v1 == 1 || v1 == 101;
  *(*(result[5] + 8) + 24) = v3;
  if (*(*(result[5] + 8) + 24) == 1 && v1 == 101)
  {
    v4 = result;
    result = (*(result[4] + 16))();
    *(*(v4[5] + 8) + 24) = result;
  }

  return result;
}

void *__35__PHAsset_canPerformEditOperation___block_invoke_5(void *result)
{
  v1 = result[6];
  *(*(result[5] + 8) + 24) = v1 == 101;
  if (*(*(result[5] + 8) + 24) == 1 && v1 == 101)
  {
    v2 = result;
    result = (*(result[4] + 16))();
    *(*(v2[5] + 8) + 24) = result;
  }

  return result;
}

- (BOOL)hasPeopleSceneMidOrGreaterConfidence
{
  [(PHObject *)self addFetchPropertyHint:0x4000000000];
  v3 = [(PHAsset *)self StoryPlaybackProperties];
  v4 = [v3 hasPeopleSceneMidOrGreaterConfidence];

  return v4;
}

- (BOOL)isLocalVideoKeyFrameValid
{
  if ([(PHAsset *)self hasAdjustments]|| [(PHAsset *)self bundleScope]== 3)
  {
    return 0;
  }

  [MEMORY[0x1E69BF328] maskForGuestAsset];
  [(PHAsset *)self savedAssetType];
  return PLValidatedSavedAssetTypeApplies() ^ 1;
}

- (BOOL)isWalrusEnabled
{
  v2 = [(PHObject *)self photoLibrary];
  v3 = [v2 isWalrusEnabled];

  return v3;
}

- (BOOL)isIncompleteLivePhotoMissingVideoComplement
{
  v11 = *MEMORY[0x1E69E9840];
  if (![(PHAsset *)self isPhotoIris])
  {
    return 0;
  }

  v3 = [PHAssetResource assetResourcesForAsset:self includeDerivatives:1];
  v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_975];
  v5 = v4 == 0x7FFFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = [(PHObject *)self uuid];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_FAULT, "Live photo asset %{public}@ is missing its video complement", &v9, 0xCu);
    }
  }

  return v5;
}

BOOL __54__PHAsset_isIncompleteLivePhotoMissingVideoComplement__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 backingResourceIdentity];
  v3 = [v2 resourceType] == 3;

  return v3;
}

- (unint64_t)contentChangeFromAsset:(id)a3
{
  v4 = a3;
  v5 = !v4 || ![(PHObject *)self isEqual:v4];
  v6 = [v4 adjustmentTimestamp];
  v7 = [(PHAsset *)self adjustmentTimestamp];
  v8 = v7;
  if (v7 | v6)
  {
    if (v6 && v7)
    {
      [v6 timeIntervalSinceDate:v7];
      if (fabs(v9) > 2.22044605e-16)
      {
        v5 |= 0x10uLL;
      }
    }

    else
    {
      v5 |= 0x10uLL;
    }
  }

  v10 = [v4 thumbnailIndex];
  if (v10 == [(PHAsset *)self thumbnailIndex])
  {
    v11 = v5;
  }

  else
  {
    v11 = v5 | 1;
  }

  [v4 duration];
  v13 = v12;
  [(PHAsset *)self duration];
  if (v13 == v14)
  {
    v15 = v11;
  }

  else
  {
    v15 = v5 | 1;
  }

  v16 = [v4 canPlayPhotoIris];
  if (v16 != [(PHAsset *)self canPlayPhotoIris])
  {
    v15 |= 4uLL;
  }

  v17 = [v4 compactSCSensitivityAnalysis];
  if (v17 != [(PHAsset *)self compactSCSensitivityAnalysis])
  {
    v15 |= 0x40uLL;
  }

  v18 = [v4 sensitivityAnalysisState];
  if (v18 != [(PHAsset *)self sensitivityAnalysisState])
  {
    v15 |= 0x80uLL;
  }

  v19 = [(PHAsset *)self deferredProcessingNeeded];
  v20 = [v4 deferredProcessingNeeded];
  if ((v20 - 4) >= 6 && v20 != 0 && v19 == 0)
  {
    v15 |= 2uLL;
  }

  v23 = [(PHAsset *)self videoDeferredProcessingNeeded];
  if ([v4 videoDeferredProcessingNeeded] == 1 && v23 == 0)
  {
    v15 |= 8uLL;
  }

  v25 = [(PHAsset *)self playbackStyle];
  if (v25 == [v4 playbackStyle])
  {
    v26 = v15;
  }

  else
  {
    v26 = v15 | 0x20;
  }

  v27 = [(PHAsset *)self burstSelectionTypes];
  v28 = (([v4 burstSelectionTypes] ^ v27) >> 1) & 1;
  v29 = [v4 RAWBadgeAttributes];
  v30 = [(PHAsset *)self RAWBadgeAttributes];
  v31 = [v4 syndicationState];
  v32 = [(PHAsset *)self syndicationState];
  if (v29 == v30 && v31 == v32)
  {
    v34 = v28;
  }

  else
  {
    v34 = 1;
  }

  return v34 | v26;
}

- (void)getFingerPrintForAssetType:(int64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(PHObject *)self photoLibrary];
  v8 = [v7 isCloudPhotoLibraryEnabled];

  if (v8)
  {
    v9 = [(PHAsset *)self pl_photoLibrary];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PHAsset_getFingerPrintForAssetType_withCompletionHandler___block_invoke;
    v11[3] = &unk_1E75AAAF0;
    v11[4] = self;
    v12 = v9;
    v14 = a3;
    v13 = v6;
    v10 = v9;
    [v10 performBlock:v11];
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.pkphotosctl" code:200 userInfo:&unk_1F102E668];
    if (v6)
    {
      (*(v6 + 2))(v6, 0, v10);
    }
  }
}

void __60__PHAsset_getFingerPrintForAssetType_withCompletionHandler___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) managedAssetForPhotoLibrary:*(a1 + 40)];
  v2 = [PHExternalAssetResource probableCPLResourceTypeFromAssetResourceType:*(a1 + 56)];
  v3 = [v8 master];
  v4 = [v3 rm_assetAttachedResourcesForResourceType:v2];
  v5 = [v4 firstObject];

  v6 = [v5 fingerprint];
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, 0);
  }
}

- (void)getOriginalStableHashWithCompletionHandler:(id)a3
{
  v4 = a3;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__22497;
  v12[4] = __Block_byref_object_dispose__22498;
  v13 = 0;
  v5 = [(PHAsset *)self pl_photoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PHAsset_getOriginalStableHashWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E75A6F00;
  v8[4] = self;
  v6 = v5;
  v9 = v6;
  v11 = v12;
  v7 = v4;
  v10 = v7;
  [v6 performBlock:v8];

  _Block_object_dispose(v12, 8);
}

void __54__PHAsset_getOriginalStableHashWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedAssetForPhotoLibrary:*(a1 + 40)];
  v7 = 0;
  v3 = [v2 originalStableHashCacheIfNecessaryAndAdjustedStableHash:0 error:&v7];
  v4 = v7;
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  (*(*(a1 + 48) + 16))();
}

- (BOOL)isDeleted
{
  v5.receiver = self;
  v5.super_class = PHAsset;
  return [(PHObject *)&v5 isDeleted]|| self->_trashed;
}

- (BOOL)isTimelapsePlaceholder
{
  if ([(PHAsset *)self isMediaSubtype:0x40000]&& ([(PHAsset *)self duration], v3 == 0.0))
  {
    v4 = [(PHAsset *)self pathForOriginalFile];
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 fileExistsAtPath:v4] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isHighFrameRateVideo
{
  v3 = [(PHAsset *)self isVideo];
  if (v3)
  {

    LOBYTE(v3) = [(PHAsset *)self isMediaSubtype:0x20000];
  }

  return v3;
}

- (BOOL)isStreamedVideo
{
  v3 = [(PHAsset *)self isVideo];
  if (v3)
  {

    LOBYTE(v3) = [(PHAsset *)self isMediaSubtype:0x10000];
  }

  return v3;
}

- (NSString)cloudIdentifier
{
  cloudAssetGUID = self->_cloudAssetGUID;
  if (cloudAssetGUID)
  {
    v3 = [(NSString *)cloudAssetGUID stringByAppendingString:@"/G0/"];
    v4 = [objc_opt_class() identifierCode];
    v5 = [v3 stringByAppendingString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasLargerThanThumbResourceLocal
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([(PHAsset *)self hasAllThumbs])
  {
    v3 = MEMORY[0x1E69BE540];
    v4 = [(PHAsset *)self imageRequestHints];
    v5 = [(PHAsset *)self pixelWidth];
    v6 = [(PHAsset *)self pixelHeight];
    v7 = [(PHAsset *)self libraryID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__PHAsset_hasLargerThanThumbResourceLocal__block_invoke;
    v10[3] = &unk_1E75A6ED8;
    v10[4] = &v11;
    [v3 enumerateImageRequestHintData:v4 assetWidth:v5 assetHeight:v6 libraryID:v7 startingOffset:0 assetID:self block:v10];

    v8 = *(v12 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v8 & 1;
}

uint64_t __42__PHAsset_hasLargerThanThumbResourceLocal__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, _BYTE *a10)
{
  if (!a9 || HIWORD(a9) - 3 >= 2u)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a10 = 1;
  }

  return result;
}

- (BOOL)isCloudPhotoLibraryAsset
{
  [MEMORY[0x1E69BF328] maskForCloudPhotoLibraryAsset];
  [(PHAsset *)self savedAssetType];

  return PLValidatedSavedAssetTypeApplies();
}

- (BOOL)isOffline
{
  if ([(PHAsset *)self isReferencedAsset])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    v3 = [(PHAsset *)self mainFileURL];
    v4 = [(PHAsset *)self pl_photoLibrary];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __20__PHAsset_isOffline__block_invoke;
    v9[3] = &unk_1E75AA3F8;
    v5 = v3;
    v10 = v5;
    v6 = v4;
    v11 = v6;
    v12 = &v13;
    [v6 performBlockAndWait:v9];
    v7 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void __20__PHAsset_isOffline__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE440];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) managedObjectContext];
  v6 = [v2 volumeForURL:v3 context:v4];

  v5 = v6;
  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v6 isOffline];
    v5 = v6;
  }
}

- (BOOL)isSyndicatedAssetSavedToUserLibrary
{
  v3 = [(PHAsset *)self curationProperties];
  v4 = [v3 syndicationIdentifier];

  if (v4)
  {
    v5 = [(PHObject *)self photoLibrary];
    v6 = [v5 wellKnownPhotoLibraryIdentifier];

    if (v6 == 3)
    {
      return ([(PHAsset *)self syndicationState]>> 1) & 1;
    }

    else
    {
      [MEMORY[0x1E69BF328] maskForUserLibrary];
      [(PHAsset *)self savedAssetType];

      LOBYTE(v7) = PLValidatedSavedAssetTypeApplies();
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isRecoveredAsset
{
  [MEMORY[0x1E69BF328] maskForRecoveredAlbum];
  [(PHAsset *)self savedAssetType];

  return PLValidatedSavedAssetTypeApplies();
}

- (BOOL)isReferencedAsset
{
  [MEMORY[0x1E69BF328] maskForReferencedAsset];
  [(PHAsset *)self savedAssetType];

  return PLValidatedSavedAssetTypeApplies();
}

- (BOOL)isMomentSharedAsset
{
  [MEMORY[0x1E69BF328] maskForMomentSharedAsset];
  [(PHAsset *)self savedAssetType];

  return PLValidatedSavedAssetTypeApplies();
}

- (BOOL)isCollectionShareAsset
{
  [MEMORY[0x1E69BF328] maskForCollectionShareAsset];
  [(PHAsset *)self savedAssetType];

  return PLValidatedSavedAssetTypeApplies();
}

- (BOOL)hasPhotoStreamTagID
{
  v2 = [(PHAsset *)self pl_managedAsset];
  v3 = [v2 additionalAttributes];
  v4 = [v3 photoStreamTagId];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PHAssetPhotosSmartStyleExtendedProperties)fetchSmartStyleExtendedProperties
{
  [(PHObject *)self addFetchPropertyHint:0x8000000000];

  return [(PHAsset *)self photosSmartStyleExtendedProperties];
}

- (BOOL)isSpatial3DPresentation
{
  [(PHObject *)self addFetchPropertyHint:16];
  v3 = [(PHAsset *)self photosOneUpProperties];
  v4 = [v3 viewPresentation] == 1000;

  return v4;
}

- (BOOL)isSpatialPresentation
{
  [(PHObject *)self addFetchPropertyHint:16];
  v3 = [(PHAsset *)self photosOneUpProperties];
  if ([v3 viewPresentation])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(PHAsset *)self isSpatialMedia];
  }

  return v4;
}

- (BOOL)isSpatialMedia
{
  [(PHObject *)self addFetchPropertyHint:0x100000000];
  v3 = [(PHAsset *)self spatialMediaProperties];
  v4 = [v3 spatialMediaType] != 0;

  return v4;
}

- (BOOL)isCinematicVideo
{
  if ([(PHAsset *)self mediaType]!= PHAssetMediaTypeVideo)
  {
    return 0;
  }

  return [(PHAsset *)self isMediaSubtype:0x200000];
}

- (BOOL)isPhotoStreamPhoto
{
  [MEMORY[0x1E69BF328] maskForPhotoStreamAsset];
  [(PHAsset *)self savedAssetType];

  return PLValidatedSavedAssetTypeApplies();
}

- (BOOL)isHDR
{
  if ([(PHAsset *)self isMediaSubtype:2])
  {
    return 1;
  }

  return [(PHAsset *)self isMediaSubtype:0x100000];
}

- (BOOL)isHDRVideo
{
  if ([(PHAsset *)self mediaType]!= PHAssetMediaTypeVideo)
  {
    return 0;
  }

  return [(PHAsset *)self isMediaSubtype:0x100000];
}

- (NSString)adjustmentFormatIdentifier
{
  [(PHObject *)self addFetchPropertyHint:0x2000];
  v3 = [(PHAsset *)self adjustmentProperties];
  v4 = [v3 formatIdentifier];

  return v4;
}

- (BOOL)hasPhotoColorAdjustments
{
  v3 = [(PHAsset *)self isPhotoIris];
  if (v3)
  {

    LOBYTE(v3) = [(PHAsset *)self isMediaSubtype:2];
  }

  return v3;
}

- (BOOL)isPhotoIrisPlaceholder
{
  v3 = [(PHAsset *)self isPhoto];
  if (v3)
  {
    v4 = [(PHAsset *)self isPhotoIris];
    v5 = [(PHAsset *)self videoCpDurationValue];
    v6 = [(PHAsset *)self isCloudSharedAsset];
    v7 = MEMORY[0x1E69BE540];

    LOBYTE(v3) = [v7 isPhotoIrisPlaceholderWithPhotoIris:v4 videoCpDuration:v5 isCloudShared:v6 videoCpFilePath:0];
  }

  return v3;
}

- (BOOL)_isPartOfAvalancheWithKind:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHAsset *)self avalanchePickType];
  if (v5)
  {
    LOBYTE(v5) = [(PHAsset *)self avalancheKind]== v3;
  }

  return v5;
}

- (NSString)thumbnailIdentifier
{
  v3 = MEMORY[0x1E69BE848];
  v4 = [(PHObject *)self uuid];
  v5 = [(PHAsset *)self directory];
  v6 = [(PHAsset *)self filename];
  v7 = [(PHAsset *)self bundleScope];
  v8 = [(PHAsset *)self pl_photoLibrary];
  v9 = [v8 pathManager];
  v10 = [v3 thumbnailIdentifierWithAssetUUID:v4 directory:v5 filename:v6 bundleScope:v7 pathManager:v9];

  return v10;
}

- (void)generateLargeThumbnailFileIfNecessary
{
  v3 = [(PHObject *)self photoLibrary];
  v4 = [v3 photoLibrary];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PHAsset_generateLargeThumbnailFileIfNecessary__block_invoke;
  v6[3] = &unk_1E75AAEB0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 performBlockAndWait:v6 completionHandler:0];
}

void __48__PHAsset_generateLargeThumbnailFileIfNecessary__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE540];
  v3 = [*(a1 + 32) objectID];
  v4 = [v2 assetWithObjectID:v3 inLibrary:*(a1 + 40)];

  [v4 generateLargeThumbnailFileIfNecessary];
}

- (id)managedAssetForPhotoLibrary:(id)a3
{
  v4 = MEMORY[0x1E69BE540];
  v5 = a3;
  v6 = [(PHObject *)self objectID];
  v7 = [v4 assetWithObjectID:v6 inLibrary:v5];

  return v7;
}

- (id)pathForAdjustmentDataFile
{
  if ([(PHAsset *)self isCloudSharedAsset])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(PHAsset *)self pl_photoLibrary];
    v5 = [v4 pathManager];

    if ([v5 isUBF])
    {
      v6 = objc_alloc(MEMORY[0x1E69BF298]);
      v7 = [(PHObject *)self uuid];
      v8 = [(PHAsset *)self bundleScope];
      v9 = [*MEMORY[0x1E6982D60] identifier];
      v10 = [v6 initWithAssetUuid:v7 bundleScope:v8 uti:v9 resourceVersion:2 resourceType:6];

      v11 = [v5 readOnlyUrlWithIdentifier:v10];
      [v11 path];
    }

    else
    {
      v12 = [(PHAsset *)self directory];
      v13 = [(PHAsset *)self filename];
      v10 = [v5 assetPathForMutationsDirectoryWithDirectory:v12 filename:v13];

      v11 = [MEMORY[0x1E69BE540] pathForAdjustmentDirectoryWithMutationsDirectory:v10];
      [v11 stringByAppendingPathComponent:@"Adjustments.data"];
    }
    v3 = ;
  }

  return v3;
}

- (id)pathForAdjustmentFile
{
  if ([(PHAsset *)self isCloudSharedAsset])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(PHAsset *)self pl_photoLibrary];
    v5 = [v4 pathManager];

    if ([v5 isUBF])
    {
      v6 = objc_alloc(MEMORY[0x1E69BF298]);
      v7 = [(PHObject *)self uuid];
      v8 = [(PHAsset *)self bundleScope];
      v9 = [*MEMORY[0x1E6982F68] identifier];
      v10 = [v6 initWithAssetUuid:v7 bundleScope:v8 uti:v9 resourceVersion:2 recipeID:0];

      v11 = [v5 readOnlyUrlWithIdentifier:v10];
      [v11 path];
    }

    else
    {
      v12 = [(PHAsset *)self directory];
      v13 = [(PHAsset *)self filename];
      v10 = [v5 assetPathForMutationsDirectoryWithDirectory:v12 filename:v13];

      v11 = [MEMORY[0x1E69BE540] pathForAdjustmentDirectoryWithMutationsDirectory:v10];
      [v11 stringByAppendingPathComponent:@"Adjustments.plist"];
    }
    v3 = ;
  }

  return v3;
}

- (id)pathForOriginalFile
{
  v2 = [(PHAsset *)self mainFileURL];
  v3 = [v2 path];

  return v3;
}

- (NSString)title
{
  if (([(PHObject *)self propertyHint]& 0x800000) != 0)
  {
    [(PHAsset *)self gridMetadataProperties];
  }

  else
  {
    [(PHObject *)self addFetchPropertyHint:64];
    [(PHAsset *)self descriptionProperties];
  }
  v3 = ;
  v4 = [v3 title];

  return v4;
}

- (NSString)originalFilename
{
  if (([(PHObject *)self propertyHint]& 0x800000) != 0)
  {
    [(PHAsset *)self gridMetadataProperties];
  }

  else
  {
    [(PHObject *)self addFetchPropertyHint:8];
    [(PHAsset *)self originalMetadataProperties];
  }
  v3 = ;
  v4 = [v3 originalFilename];

  return v4;
}

- (CGSize)imageSize
{
  pixelWidth = self->_pixelWidth;
  pixelHeight = self->_pixelHeight;
  result.height = pixelHeight;
  result.width = pixelWidth;
  return result;
}

- (signed)kind
{
  mediaType = self->_mediaType;
  if (mediaType >= 4)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0x2000100000003uLL >> (16 * mediaType);
  }

  return v3 & 3;
}

- (BOOL)isOriginalSRGB
{
  v2 = [(PHAsset *)self originalColorSpace];
  v3 = [v2 isEqualToString:*MEMORY[0x1E695F1C0]];

  return v3;
}

- (CGSize)originalUnorientedSize
{
  if ([(PHAsset *)self hasAdjustments])
  {
    [(PHAsset *)self originalImageSize];
    [(PHAsset *)self originalImageOrientation];
    PLExifOrientationFromImageOrientation();
    PLOrientationInverse();

    PLOrientationTransformImageSize();
  }

  else
  {

    [(PHAsset *)self unorientedSize];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)originalImageSize
{
  [(PHObject *)self addFetchPropertyHint:8];
  v3 = [(PHAsset *)self originalMetadataProperties];
  v4 = [v3 originalWidth];
  v5 = [(PHAsset *)self originalMetadataProperties];
  v6 = [v5 originalHeight];

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (int64_t)originalImageOrientation
{
  [(PHObject *)self addFetchPropertyHint:8];
  v3 = [(PHAsset *)self originalMetadataProperties];
  [v3 originalExifOrientation];
  v4 = PLImageOrientationFromExifOrientation();

  return v4;
}

- (NSURL)ALAssetURL
{
  v3 = MEMORY[0x1E69BE540];
  v4 = [(PHObject *)self uuid];
  v5 = [(PHAsset *)self filename];
  v6 = [v5 pathExtension];
  v7 = [v3 assetsLibraryURLWithUUID:v4 extension:v6];

  return v7;
}

- (double)aspectRatio
{
  if (![(PHAsset *)self pixelHeight])
  {
    return 1.0;
  }

  v3 = [(PHAsset *)self pixelWidth];
  return v3 / [(PHAsset *)self pixelHeight];
}

- (id)pl_photoLibrary
{
  v2 = [(PHObject *)self photoLibrary];
  v3 = [v2 photoLibrary];

  return v3;
}

- (id)originalCreationDateWithTimeZone:(id *)a3
{
  v5 = [(PHAsset *)self photosInfoPanelExtendedProperties];
  v6 = [v5 dateCreated];
  if (a3)
  {
    v7 = [v5 timezoneOffset];

    if (v7)
    {
      v8 = MEMORY[0x1E695DFE8];
      v9 = [v5 timezoneOffset];
      *a3 = [v8 timeZoneForSecondsFromGMT:{objc_msgSend(v9, "integerValue")}];
    }
  }

  if (!v6)
  {
    v10 = [(PHObject *)self photoLibrary];
    v11 = [v10 photoLibraryBundle];
    v12 = [v11 timeZoneLookup];

    if ([(PHAsset *)self isVideo])
    {
      v13 = [(PHAsset *)self originalAVAssetOrProxy];
      if (v13)
      {
        v14 = [objc_alloc(MEMORY[0x1E69C0718]) initWithAVAsset:v13 timeZoneLookup:v12];
LABEL_11:

        v6 = [v14 utcCreationDate];
        v18 = [v14 timeZone];
        v19 = v18;
        if (a3)
        {
          v20 = v18;
          *a3 = v19;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v13 = [(PHAsset *)self originalImageProperties];
      if (v13)
      {
        v15 = MEMORY[0x1E69C08F0];
        v16 = [(PHAsset *)self uniformTypeIdentifier];
        v17 = [v15 typeWithIdentifier:v16];

        v14 = [objc_alloc(MEMORY[0x1E69C0718]) initWithImageProperties:v13 contentType:v17 timeZoneLookup:v12];
        goto LABEL_11;
      }
    }

    v14 = 0;
    goto LABEL_11;
  }

LABEL_14:

  return v6;
}

- (id)originalAVAssetCommonMetadata
{
  v2 = [(PHAsset *)self originalAVAssetOrProxy];
  v3 = [v2 commonMetadata];

  return v3;
}

- (id)originalAVAssetOrProxy
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__22497;
  v14 = __Block_byref_object_dispose__22498;
  v15 = 0;
  v3 = [(PHAsset *)self pl_photoLibrary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__PHAsset_originalAVAssetOrProxy__block_invoke;
  v7[3] = &unk_1E75AA3F8;
  v7[4] = self;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __33__PHAsset_originalAVAssetOrProxy__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) managedAssetForPhotoLibrary:*(a1 + 40)];
  v2 = [v5 avAssetProxyForOriginalAllowReadFromFile:1];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)originalImageProperties
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__22497;
  v14 = __Block_byref_object_dispose__22498;
  v15 = 0;
  v3 = [(PHAsset *)self pl_photoLibrary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__PHAsset_originalImageProperties__block_invoke;
  v7[3] = &unk_1E75AA3F8;
  v7[4] = self;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __34__PHAsset_originalImageProperties__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) managedAssetForPhotoLibrary:*(a1 + 40)];
  v2 = [v5 imageProperties];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isLocatedAtCoordinates:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v5 = [(PHAsset *)self location];
  v6 = v5;
  if (v5)
  {
    [v5 coordinate];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E6985CC0];
    v10 = *(MEMORY[0x1E6985CC0] + 8);
  }

  if ([MEMORY[0x1E69BE520] canUseCoordinate:{latitude, longitude}])
  {
    v11 = vabdd_f64(latitude, v8) < 2.22044605e-16;
    LOBYTE(v12) = vabdd_f64(longitude, v10) < 2.22044605e-16 && v11;
  }

  else
  {
    v12 = [MEMORY[0x1E69BE520] canUseCoordinate:{v8, v10}] ^ 1;
  }

  return v12;
}

- (BOOL)isScreenRecording
{
  if ([(PHAsset *)self isMediaSubtype:0x80000])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(PHAsset *)self isVideo];
    if (v3)
    {
      v4 = [(PHAsset *)self originalFilename];
      v5 = [MEMORY[0x1E69BE540] isScreenRecordingFileName:v4];

      LOBYTE(v3) = v5;
    }
  }

  return v3;
}

- (BOOL)isPrimaryImageFormat
{
  v2 = MEMORY[0x1E69BE540];
  v3 = [(PHAsset *)self uniformTypeIdentifier];
  LOBYTE(v2) = [v2 isPrimaryImageFormatForUTI:v3];

  return v2;
}

- (BOOL)isHEICSequence
{
  v2 = [(PHAsset *)self contentType];
  v3 = [MEMORY[0x1E69C08F0] heicSequenceType];
  v4 = [v2 conformsToType:v3];

  return v4;
}

- (BOOL)isAnimatedGIF
{
  v2 = [(PHAsset *)self contentType];
  v3 = [v2 isEqual:*MEMORY[0x1E6982DE8]];

  return v3;
}

- (BOOL)isRAW
{
  v2 = [(PHAsset *)self contentType];
  v3 = [v2 conformsToType:*MEMORY[0x1E6982F88]];

  return v3;
}

- (BOOL)isPSD
{
  v2 = [(PHAsset *)self contentType];
  v3 = [MEMORY[0x1E69C08F0] adobePhotoshopType];
  v4 = [v2 conformsToType:v3];

  return v4;
}

- (BOOL)isPDF
{
  v2 = [(PHAsset *)self contentType];
  v3 = [v2 conformsToType:*MEMORY[0x1E6982F10]];

  return v3;
}

- (BOOL)isPNG
{
  v2 = [(PHAsset *)self contentType];
  v3 = [v2 conformsToType:*MEMORY[0x1E6982F28]];

  return v3;
}

- (BOOL)isTIFF
{
  v2 = [(PHAsset *)self contentType];
  v3 = [v2 conformsToType:*MEMORY[0x1E6983008]];

  return v3;
}

- (BOOL)isHEIF
{
  v2 = [(PHAsset *)self contentType];
  v3 = [v2 conformsToType:*MEMORY[0x1E6983138]];

  return v3;
}

- (BOOL)isJPEG2000
{
  v2 = [(PHAsset *)self contentType];
  v3 = [MEMORY[0x1E69C08F0] jpeg2000Type];
  v4 = [v2 conformsToType:v3];

  return v4;
}

- (BOOL)isJPEG
{
  v2 = [(PHAsset *)self contentType];
  v3 = [v2 conformsToType:*MEMORY[0x1E6982E58]];

  return v3;
}

- (UTType)contentType
{
  v2 = MEMORY[0x1E69C08F0];
  v3 = [(PHAsset *)self uniformTypeIdentifier];
  v4 = [v2 typeWithIdentifier:v3];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x1E6982D60];
  }

  v6 = v5;

  return v5;
}

- (BOOL)isHDVideo
{
  v3 = [(PHAsset *)self isVideo];
  if (v3)
  {
    v4 = [(PHAsset *)self pixelWidth];
    v5 = [(PHAsset *)self pixelHeight];
    LOBYTE(v3) = v4 >= 0x2D0 && v5 > 0x4FF || v4 > 0x4FF && v5 > 0x2CF;
  }

  return v3;
}

- (int)orientation
{
  if (!dyld_program_sdk_at_least())
  {
    return self->_exifOrientation;
  }

  v4 = _PFThrowMethodNotImplemented();
  return [(PHAsset *)v4 _unfetchedPropertySetsFromPropertySets:v5, v6];
}

- (id)_unfetchedPropertySetsFromPropertySets:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (![(PHObject *)self hasLoadedPropertySet:v11, v13])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isVariationSuggestionStatesUnknown
{
  [(PHObject *)self addFetchPropertyHint:16];
  v3 = [(PHAsset *)self photosOneUpProperties];
  v4 = [v3 variationSuggestionStates];

  return v4 == 0;
}

- (unint64_t)variationSuggestionStatesForVariationType:(unint64_t)a3
{
  [(PHObject *)self addFetchPropertyHint:16];
  v5 = [(PHAsset *)self photosOneUpProperties];
  v6 = [v5 variationSuggestionStates];

  if (a3)
  {
    return (v6 >> (6 * a3 - 6)) & 0x3F;
  }

  else
  {
    return 0;
  }
}

- (int)analysisStateForWorkerType:(signed __int16)a3 outLastIgnoreDate:(id *)a4 outIgnoreUntilDate:(id *)a5
{
  v7 = a3;
  [(PHObject *)self fetchPropertySetsIfNeeded];
  v9 = [(PHAsset *)self assetAnalysisStateProperties];
  LODWORD(a5) = [v9 analysisStateForWorkerType:v7 outLastIgnoreDate:a4 outIgnoreUntilDate:a5];

  return a5;
}

- (NSData)distanceIdentity
{
  [(PHObject *)self fetchPropertySetsIfNeeded];
  v3 = [(PHAsset *)self sceneAnalysisProperties];
  v4 = [v3 distanceIdentity];

  return v4;
}

- (id)_sceneClassificationsWithPredicate:(id)a3
{
  v42[7] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v42[0] = @"sceneIdentifier";
  v42[1] = @"confidence";
  v42[2] = @"packedBoundingBoxRect";
  v42[3] = @"startTime";
  v42[4] = @"duration";
  v42[5] = @"classificationType";
  v42[6] = @"thumbnailIdentifier";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:7];
  v6 = [MEMORY[0x1E69BE778] entityName];
  v7 = [(PHObject *)self photoLibrary];
  v8 = +[PHAssetSceneAnalysisProperties propertySetName];
  v9 = [v7 objectFetchingManagedObjectContextForObject:self propertySet:v8];

  v10 = [MEMORY[0x1E695DFA8] set];
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __46__PHAsset__sceneClassificationsWithPredicate___block_invoke;
  v34[3] = &unk_1E75A6EB0;
  v28 = v6;
  v35 = v28;
  v29 = v4;
  v36 = v29;
  v27 = v5;
  v37 = v27;
  v12 = v9;
  v38 = v12;
  v13 = v10;
  v39 = v13;
  v14 = v11;
  v40 = v14;
  [v12 performBlockAndWait:v34];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v30 + 1) + 8 * i);
        v21 = [v15 objectForKeyedSubscript:v20];
        v22 = [v21 copy];
        v23 = ph_objc_setAssociatedObjectIfNotSet(self, v20, v22);
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v41 count:16];
    }

    while (v17);
  }

  v24 = v40;
  v25 = v13;

  return v13;
}

void __46__PHAsset__sceneClassificationsWithPredicate___block_invoke(uint64_t a1)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*(a1 + 32)];
  [v2 setPredicate:*(a1 + 40)];
  [v2 setPropertiesToFetch:*(a1 + 48)];
  v46[0] = @"assetAttributes";
  v46[1] = @"assetAttributesForTemporalSceneClassifications";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  [v2 setRelationshipKeyPathsForPrefetching:v3];

  [v2 setResultType:2];
  v4 = *(a1 + 56);
  v43 = 0;
  v37 = v2;
  v5 = [v4 executeFetchRequest:v2 error:&v43];
  v6 = v43;
  if (!v5)
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Error fetching scene classifications, entity: %@, error: %@", buf, 0x16u);
    }
  }

  v36 = v6;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"sceneIdentifier"];
        v15 = [v14 unsignedLongLongValue];

        v16 = [v13 objectForKeyedSubscript:@"confidence"];
        [v16 doubleValue];
        v18 = v17;

        v19 = [v13 objectForKeyedSubscript:@"startTime"];
        [v19 doubleValue];
        v21 = v20;

        v22 = [v13 objectForKeyedSubscript:@"duration"];
        [v22 doubleValue];
        v24 = v23;

        v25 = [v13 objectForKeyedSubscript:@"classificationType"];
        v26 = [v25 integerValue];

        v27 = [v13 objectForKeyedSubscript:@"packedBoundingBoxRect"];
        [v27 longLongValue];

        v28 = [v13 objectForKeyedSubscript:@"thumbnailIdentifier"];
        memset(buf, 0, sizeof(buf));
        PLSplitToCGRectFromInt64();
        v29 = [PHSceneClassification alloc];
        v30 = [(PHSceneClassification *)v29 initWithExtendedSceneIdentifier:v15 confidence:v26 boundingBox:v28 startTime:v18 duration:*buf classificationType:*&buf[8] thumbnailIdentifier:*&buf[16], v21, v24];
        [*(a1 + 64) addObject:v30];
        v31 = *(a1 + 72);
        v32 = [MEMORY[0x1E696AD98] numberWithInteger:v26];
        v33 = [v31 objectForKeyedSubscript:v32];

        if (!v33)
        {
          v33 = [MEMORY[0x1E695DFA8] set];
          v34 = *(a1 + 72);
          v35 = [MEMORY[0x1E696AD98] numberWithInteger:v26];
          [v34 setObject:v33 forKeyedSubscript:v35];
        }

        [v33 addObject:v30];
      }

      v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v10);
  }
}

- (id)sceneClassificationsOfTypes:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  v42 = [MEMORY[0x1E695DF70] array];
  v41 = [MEMORY[0x1E695DF70] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (!v8)
  {
    v43 = 0;
    v10 = 0;
    goto LABEL_20;
  }

  v9 = v8;
  v40 = a2;
  v43 = 0;
  v10 = 0;
  v11 = *v45;
  do
  {
    v12 = 0;
    do
    {
      if (*v45 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v44 + 1) + 8 * v12);
      v14 = ph_objc_getAssociatedObject(self, v13);
      v15 = v14;
      if (v14)
      {
        v16 = [v14 allObjects];
        [v6 addObjectsFromArray:v16];
LABEL_8:

        goto LABEL_9;
      }

      v17 = [v13 integerValue];
      if (v17 > 7)
      {
        goto LABEL_16;
      }

      v39 = v10;
      if (((1 << v17) & 0xF1) != 0)
      {
        v18 = MEMORY[0x1E696AE18];
        v19 = [(PHObject *)self objectID];
        v10 = [v18 predicateWithFormat:@"%K == %@", @"assetAttributes.asset", v19];

        [v42 addObject:v13];
      }

      else
      {
        if (((1 << v17) & 0xC) == 0)
        {
LABEL_16:
          v16 = [MEMORY[0x1E696AAA8] currentHandler];
          [v16 handleFailureInMethod:v40 object:self file:@"PHAsset.m" lineNumber:2232 description:{@"Invalid parameter not satisfying: %@", @"knownSceneIdentifier"}];
          goto LABEL_8;
        }

        v20 = MEMORY[0x1E696AE18];
        v21 = [(PHObject *)self objectID];
        v22 = [v20 predicateWithFormat:@"%K == %@", @"assetAttributesForTemporalSceneClassifications.asset", v21];

        v10 = v39;
        [v41 addObject:v13];
        v43 = v22;
      }

LABEL_9:

      ++v12;
    }

    while (v9 != v12);
    v23 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
    v9 = v23;
  }

  while (v23);
LABEL_20:

  v24 = [MEMORY[0x1E695DF70] array];
  if (v10)
  {
    v25 = MEMORY[0x1E696AB28];
    v49[0] = v10;
    v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"classificationType", v42];
    v49[1] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v28 = [v25 andPredicateWithSubpredicates:v27];
    [v24 addObject:v28];
  }

  v29 = v43;
  if (v43)
  {
    v30 = MEMORY[0x1E696AB28];
    v48[0] = v43;
    v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"classificationType", v41];
    v48[1] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v33 = [v30 andPredicateWithSubpredicates:v32];
    [v24 addObject:v33];

    v29 = v43;
  }

  if ([v24 count])
  {
    v34 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v24];
    v35 = [(PHAsset *)self _sceneClassificationsWithPredicate:v34];
    v36 = [v35 allObjects];
    [v6 addObjectsFromArray:v36];

    v29 = v43;
  }

  v37 = v6;

  return v6;
}

- (unint64_t)originalResourceChoice
{
  [(PHObject *)self addFetchPropertyHint:0x2000];
  v3 = [(PHAsset *)self adjustmentProperties];
  v4 = [v3 originalResourceChoice];

  return v4;
}

- (id)iconicScoreProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x800000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)ptpProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x2000000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)locationDataProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x400000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)StoryPlaybackProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x4000000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)spatialMediaProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x100000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)montageProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0xFFFFFFFF80000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)cloudLocalStateProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x20000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)libraryScopeProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x4000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)coarseLocationProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x2000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)gridMetadataProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x800000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)keywordProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x400000];

  return [(PHAsset *)self _createKeywordPropertyObject];
}

- (id)destinationAssetCopyProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x80000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)sceneprintProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x40000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)visualSearchProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x40000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)textUnderstandingProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x20000000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)characterRecognitionProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x8000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)photoAnalysisWallpaperProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x200000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)aestheticProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x8000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)curationProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x4000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)adjustmentProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x2000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)assetUserActivityProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:1024];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)assetAnalysisStateProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:512];

  return [(PHAsset *)self _createAnalysisStatePropertyObject];
}

- (id)commentProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:128];
  if ([(PHAsset *)self isCloudSharedAsset])
  {
    v3 = [(PHAsset *)self _createCommentPropertyObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)cloudSharedProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x10000000000];
  if ([(PHAsset *)self isCloudSharedAsset])
  {
    v3 = [(PHAsset *)self _createPropertyObjectOfClass:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)descriptionProperties
{
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)photoIrisProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:32];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)cameraCaptureDeviceProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x10000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)photosSmartStyleExtendedProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x8000000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)photosInfoPanelLocationProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x1000000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)photosInfoPanelExtendedProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x100000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)localDateProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:0x200000];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)photosOneUpProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:16];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)originalMetadataProperties
{
  [(PHObject *)self assertRequiredFetchPropertyHints:8];
  v3 = objc_opt_class();

  return [(PHAsset *)self _createPropertyObjectOfClass:v3];
}

- (id)_createKeywordPropertyObject
{
  v3 = objc_opt_class();
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__22497;
  v21 = __Block_byref_object_dispose__22498;
  v22 = ph_objc_getAssociatedObject(self, v3);
  v4 = v18[5];
  if (!v4)
  {
    v5 = [(PHObject *)self photoLibrary];
    v6 = [v3 propertySetName];
    v7 = [v5 objectFetchingManagedObjectContextForObject:self propertySet:v6];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__PHAsset__createKeywordPropertyObject__block_invoke;
    v13[3] = &unk_1E75A6E88;
    v13[4] = self;
    v8 = v7;
    v14 = v8;
    v15 = &v17;
    v16 = v3;
    [v8 performBlockAndWait:v13];
    v9 = ph_objc_setAssociatedObjectIfNotSet(self, v3, v18[5]);
    v10 = v18[5];
    v18[5] = v9;

    v4 = v18[5];
  }

  v11 = v4;
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __39__PHAsset__createKeywordPropertyObject__block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE560] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x1E696AE18];
  v6 = [*(a1 + 32) objectID];
  v28[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v8 = [v5 predicateWithFormat:@"ANY assetAttributes.asset IN %@", v7];
  [v4 setPredicate:v8];

  [v4 setPropertiesToFetch:&unk_1F102DFD0];
  [v4 setResultType:2];
  v9 = *(a1 + 40);
  v19 = 0;
  v10 = [v9 executeFetchRequest:v4 error:&v19];
  v11 = v19;
  if (v10)
  {
    v12 = [v10 _pl_map:&__block_literal_global_871];
    v20 = @"keywordTitles";
    v21 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = [objc_alloc(*(a1 + 56)) initWithFetchDictionary:v13 asset:*(a1 + 32) prefetched:0];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 56);
      v18 = [*(a1 + 32) uuid];
      *buf = 138412802;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch propert set %@ data for %@: %@", buf, 0x20u);
    }
  }
}

- (id)_createAnalysisStatePropertyObject
{
  v3 = objc_opt_class();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__22497;
  v22 = __Block_byref_object_dispose__22498;
  v23 = ph_objc_getAssociatedObject(self, v3);
  v4 = v19[5];
  if (!v4)
  {
    v5 = [(PHObject *)self photoLibrary];
    v6 = [v3 propertySetName];
    v7 = [v5 objectFetchingManagedObjectContextForObject:self propertySet:v6];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__PHAsset__createAnalysisStatePropertyObject__block_invoke;
    v13[3] = &unk_1E75A6E60;
    v13[4] = self;
    v14 = @"AssetAnalysisState";
    v8 = v7;
    v15 = v8;
    v16 = &v18;
    v17 = v3;
    [v8 performBlockAndWait:v13];
    v9 = ph_objc_setAssociatedObjectIfNotSet(self, v3, v19[5]);
    v10 = v19[5];
    v19[5] = v9;

    v4 = v19[5];
  }

  v11 = v4;
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __45__PHAsset__createAnalysisStatePropertyObject__block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AE18];
  v3 = [*(a1 + 32) objectID];
  v4 = [v2 predicateWithFormat:@"asset == %@", v3];

  v5 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*(a1 + 40)];
  [v5 setPredicate:v4];
  [v5 setResultType:2];
  v6 = *(a1 + 48);
  v15 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v15];
  v8 = v15;
  if (v7)
  {
    v22 = @"assetAnalysisStates";
    v23[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v10 = [objc_alloc(*(a1 + 64)) initWithFetchDictionary:v9 asset:*(a1 + 32) prefetched:0];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 64) description];
      v14 = [*(a1 + 32) uuid];
      *buf = 138412802;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch property set %@ data for %@: %@", buf, 0x20u);
    }
  }
}

- (id)_createCommentPropertyObject
{
  v34[3] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__22497;
  v32 = __Block_byref_object_dispose__22498;
  v33 = ph_objc_getAssociatedObject(self, v3);
  v4 = v29[5];
  if (!v4)
  {
    v34[0] = @"commentDate";
    v34[1] = @"isLike";
    v34[2] = @"isMyComment";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
    v6 = MEMORY[0x1E696AE18];
    v7 = [(PHObject *)self objectID];
    v8 = [(PHObject *)self objectID];
    v9 = [v6 predicateWithFormat:@"likedAsset == %@ OR commentedAsset == %@", v7, v8];

    v10 = [(PHObject *)self photoLibrary];
    v11 = [v3 propertySetName];
    v12 = [v10 objectFetchingManagedObjectContextForObject:self propertySet:v11];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __39__PHAsset__createCommentPropertyObject__block_invoke;
    v20[3] = &unk_1E75A8840;
    v21 = @"CloudSharedComment";
    v13 = v9;
    v22 = v13;
    v14 = v5;
    v23 = v14;
    v15 = v12;
    v26 = &v28;
    v27 = v3;
    v24 = v15;
    v25 = self;
    [v15 performBlockAndWait:v20];
    v16 = ph_objc_setAssociatedObjectIfNotSet(self, v3, v29[5]);
    v17 = v29[5];
    v29[5] = v16;

    v4 = v29[5];
  }

  v18 = v4;
  _Block_object_dispose(&v28, 8);

  return v18;
}

void __39__PHAsset__createCommentPropertyObject__block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*(a1 + 32)];
  [v2 setPredicate:*(a1 + 40)];
  [v2 setPropertiesToFetch:*(a1 + 48)];
  [v2 setResultType:2];
  v3 = *(a1 + 56);
  v12 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v12];
  v5 = v12;
  if (v4)
  {
    v19 = @"comments";
    v20[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v7 = [objc_alloc(*(a1 + 80)) initWithFetchDictionary:v6 asset:*(a1 + 64) prefetched:0];
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 80) description];
      v11 = [*(a1 + 64) uuid];
      *buf = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Failed to fetch property set %@ data for %@: %@", buf, 0x20u);
    }
  }
}

- (id)_createPropertyObjectOfClass:(Class)a3 preFetchedProperties:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v45 = a4;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__22497;
  v64 = __Block_byref_object_dispose__22498;
  aClass = a3;
  v65 = ph_objc_getAssociatedObject(self, a3);
  v6 = v61[5];
  if (!v6)
  {
    if (v45)
    {
      v7 = [[a3 alloc] initWithFetchDictionary:v45 asset:self prefetched:1];
      v8 = v61[5];
      v61[5] = v7;
LABEL_26:

      v31 = ph_objc_setAssociatedObjectIfNotSet(self, aClass, v61[5]);
      v32 = v61[5];
      v61[5] = v31;

      v6 = v61[5];
      goto LABEL_27;
    }

    if (([(objc_class *)a3 inverseIsToMany]& 1) != 0)
    {
      v9 = [MEMORY[0x1E69BE540] entityName];
      v10 = MEMORY[0x1E696AE18];
      v11 = [(PHObject *)self objectID];
      v43 = [v10 predicateWithFormat:@"self == %@", v11];
      v44 = v9;
    }

    else
    {
      v12 = [(objc_class *)a3 entityName];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [MEMORY[0x1E69BE540] entityName];
      }

      v44 = v14;

      v11 = [(objc_class *)a3 keyPathToPrimaryObject];
      v15 = MEMORY[0x1E696AE18];
      v16 = [(PHObject *)self objectID];
      if (v11)
      {
        [v15 predicateWithFormat:@"%K == %@", v11, v16];
      }

      else
      {
        [v15 predicateWithFormat:@"self == %@", v16];
      }
      v43 = ;
    }

    v17 = [(objc_class *)a3 propertiesToFetch];
    v18 = [v17 mutableCopy];

    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v19 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromClass(a3);
        *buf = 138412546;
        v68 = v20;
        v69 = 2112;
        v70 = self;
        _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Missing prefetched properties for %@ on %@. Fetching on demand on the main queue, which may degrade performance.", buf, 0x16u);
      }
    }

    else
    {
      v19 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v21 = NSStringFromClass(a3);
        *buf = 138412546;
        v68 = v21;
        v69 = 2112;
        v70 = self;
        _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEBUG, "Missing prefetched properties for %@ on %@. Fetching on demand.", buf, 0x16u);
      }
    }

    if (([(objc_class *)a3 inverseIsToMany]& 1) != 0)
    {
      [objc_opt_class() extendPropertiesToFetch:v18 withPropertySetClass:a3];
    }

    else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v22 = [(objc_class *)a3 keyPathToPrimaryObject];
      v42 = v22;
      if (v22)
      {
        v23 = [v22 stringByAppendingString:@"."];
      }

      else
      {
        v23 = 0;
      }

      [(objc_class *)a3 additionalPropertiesToFetchOnPrimaryObject];
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v35 = v57 = 0u;
      v36 = [v35 countByEnumeratingWithState:&v56 objects:v66 count:16];
      if (v36)
      {
        v37 = *v57;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v57 != v37)
            {
              objc_enumerationMutation(v35);
            }

            v39 = *(*(&v56 + 1) + 8 * i);
            if (v23)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [MEMORY[0x1E696AEC0] stringWithFormat:@"Trying to create a property path '%@' on '%@' with an unexpected property type: %@", v39, self, objc_opt_class()];
                v41 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
                objc_exception_throw(v41);
              }

              v40 = [v23 stringByAppendingString:v39];

              v39 = v40;
            }

            if ([v18 indexOfObject:v39] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v18 addObject:v39];
            }
          }

          v36 = [v35 countByEnumeratingWithState:&v56 objects:v66 count:16];
        }

        while (v36);
      }

      v24 = 1;
      goto LABEL_25;
    }

    v24 = 0;
LABEL_25:
    v25 = [(PHObject *)self photoLibrary];
    v26 = [(objc_class *)aClass propertySetName];
    v27 = [v25 objectFetchingManagedObjectContextForObject:self propertySet:v26];

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __61__PHAsset__createPropertyObjectOfClass_preFetchedProperties___block_invoke;
    v47[3] = &unk_1E75A6E38;
    v8 = v44;
    v48 = v8;
    v28 = v43;
    v49 = v28;
    v29 = v18;
    v50 = v29;
    v30 = v27;
    v51 = v30;
    v52 = self;
    v55 = v24;
    v53 = &v60;
    v54 = aClass;
    [v30 performBlockAndWait:v47];

    goto LABEL_26;
  }

LABEL_27:
  v33 = v6;
  _Block_object_dispose(&v60, 8);

  return v33;
}

void __61__PHAsset__createPropertyObjectOfClass_preFetchedProperties___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*(a1 + 32)];
  [v2 setPredicate:*(a1 + 40)];
  [v2 setPropertiesToFetch:*(a1 + 48)];
  [v2 setResultType:2];
  v3 = *(a1 + 56);
  v48 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v48];
  v5 = v48;
  if (!v4)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 80) description];
      v8 = [*(a1 + 64) uuid];
      *buf = 138412802;
      v51 = v7;
      v52 = 2112;
      v53 = v8;
      v54 = 2112;
      v55 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Failed to fetch property set %@ data for %@: %@", buf, 0x20u);
    }
  }

  v9 = [v4 firstObject];
  if (v9)
  {
    goto LABEL_24;
  }

  if (*(a1 + 88) != 1)
  {
LABEL_23:
    v9 = MEMORY[0x1E695E0F8];
    goto LABEL_24;
  }

  v10 = [*(a1 + 80) additionalPropertiesToFetchOnPrimaryObject];
  if (![v10 count] || (objc_msgSend(*(a1 + 80), "keyPathToPrimaryObject"), (v42 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_23;
  }

  v11 = MEMORY[0x1E695D5E0];
  v12 = [MEMORY[0x1E69BE540] entityName];
  v13 = [v11 fetchRequestWithEntityName:v12];

  v14 = MEMORY[0x1E696AE18];
  v15 = [*(a1 + 64) objectID];
  v16 = [v14 predicateWithFormat:@"self == %@", v15];
  [v13 setPredicate:v16];

  [v13 setPropertiesToFetch:v10];
  [v13 setResultType:2];
  v17 = *(a1 + 56);
  v47 = 0;
  v18 = [v17 executeFetchRequest:v13 error:&v47];
  v41 = v47;
  if (!v18)
  {
    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [*(a1 + 80) description];
      [*(a1 + 64) uuid];
      v21 = v13;
      v23 = v22 = v4;
      *buf = 138412802;
      v51 = v20;
      v52 = 2112;
      v53 = v23;
      v54 = 2112;
      v55 = v41;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Failed to fetch primary object for property set %@ data for %@: %@", buf, 0x20u);

      v4 = v22;
      v13 = v21;

      v18 = 0;
    }
  }

  v40 = v5;
  v24 = [v18 firstObject];
  if (v24)
  {
    v39 = v2;
    v36 = v13;
    v37 = v10;
    v38 = v4;
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v25 = [v24 allKeys];
    v26 = [v25 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v44;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v44 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v43 + 1) + 8 * i);
          v31 = [v24 objectForKeyedSubscript:v30];
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v42, v30];
          [v9 setObject:v31 forKeyedSubscript:v32];
        }

        v27 = [v25 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v27);
    }

    v2 = v39;
    v10 = v37;
    v4 = v38;
    v13 = v36;
  }

  else
  {
    v9 = 0;
  }

  v5 = v40;
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_24:
  v33 = [objc_alloc(*(a1 + 80)) initWithFetchDictionary:v9 asset:*(a1 + 64) prefetched:{objc_msgSend(*(a1 + 80), "inverseIsToMany")}];
  v34 = *(*(a1 + 72) + 8);
  v35 = *(v34 + 40);
  *(v34 + 40) = v33;
}

- (void)_attachPropertyObjectOfClass:(Class)a3 preFetchedProperties:(id)a4
{
  v8 = a4;
  v6 = objc_autoreleasePoolPush();
  v7 = [(PHAsset *)self _createPropertyObjectOfClass:a3 preFetchedProperties:v8];
  objc_autoreleasePoolPop(v6);
}

- (void)_createExtendedPropertySetsIfNeededWithPropertyHint:(unint64_t)a3 fetchDictionary:(id)a4
{
  v6 = a4;
  if ((a3 & 0xFFFFFFFFFFFFFD78) == 0)
  {
    goto LABEL_38;
  }

  v7 = v6;
  if ((a3 & 0x4000000) != 0)
  {
    [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v6];
    if ((a3 & 8) == 0)
    {
LABEL_4:
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_43;
    }
  }

  else if ((a3 & 8) == 0)
  {
    goto LABEL_4;
  }

  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x10) == 0)
  {
LABEL_5:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x200000) == 0)
  {
LABEL_6:
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x100000) == 0)
  {
LABEL_7:
    if ((a3 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x1000000) == 0)
  {
LABEL_8:
    if ((a3 & 0x8000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x8000000000) == 0)
  {
LABEL_9:
    if ((a3 & 0x10000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x10000000) == 0)
  {
LABEL_10:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x20) == 0)
  {
LABEL_11:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x40) == 0)
  {
LABEL_12:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x400) == 0)
  {
LABEL_13:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x100) == 0)
  {
LABEL_14:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x2000) == 0)
  {
LABEL_15:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x4000) == 0)
  {
LABEL_16:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x8000) == 0)
  {
LABEL_17:
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x10000) == 0)
  {
LABEL_18:
    if ((a3 & 0x200000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x200000000) == 0)
  {
LABEL_19:
    if ((a3 & 0x8000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x8000000) == 0)
  {
LABEL_20:
    if ((a3 & 0x20000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x20000000000) == 0)
  {
LABEL_21:
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x40000000) == 0)
  {
LABEL_22:
    if ((a3 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x20000) == 0)
  {
LABEL_23:
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x40000) == 0)
  {
LABEL_24:
    if ((a3 & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x80000) == 0)
  {
LABEL_25:
    if ((a3 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x800000) == 0)
  {
LABEL_26:
    if ((a3 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x2000000) == 0)
  {
LABEL_27:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_65:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x20000000) != 0)
  {
LABEL_28:
    [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  }

LABEL_29:
  if (a3 >= 0xFFFFFFFF80000000)
  {
    [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  }

  else if ((a3 & 0x100000000) == 0)
  {
    if ((a3 & 0x400000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x400000000) == 0)
  {
LABEL_32:
    if ((a3 & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x2000000000) == 0)
  {
LABEL_33:
    if ((a3 & 0x800000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x800000000) == 0)
  {
LABEL_34:
    if ((a3 & 0x4000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_71:
  [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  if ((a3 & 0x4000000000) != 0)
  {
LABEL_35:
    [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
  }

LABEL_36:
  v6 = v7;
  if ((a3 & 0x10000000000) != 0)
  {
    [(PHAsset *)self _attachPropertyObjectOfClass:objc_opt_class() preFetchedProperties:v7];
    v6 = v7;
  }

LABEL_38:
}

- (NSDate)localCreationDate
{
  localCreationDate = self->_localCreationDate;
  if (!localCreationDate)
  {
    [(PHObject *)self fetchPropertySetsIfNeeded];
    v4 = [(PHAsset *)self creationDate];
    v5 = [(PHAsset *)self localDateProperties];
    v6 = [v5 inferredTimeZoneOffset];

    if (v6)
    {
      v7 = [v6 integerValue];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFE8] localTimeZone];
      v7 = [v8 secondsFromGMTForDate:v4];
    }

    v9 = [v4 dateByAddingTimeInterval:v7];
    v10 = self->_localCreationDate;
    self->_localCreationDate = v9;

    localCreationDate = self->_localCreationDate;
  }

  return localCreationDate;
}

- (id)creationDateAdjustedForTimeZone
{
  [(PHObject *)self fetchPropertySetsIfNeeded];
  v3 = [(PHAsset *)self creationDate];
  v4 = [(PHAsset *)self originalMetadataProperties];
  v5 = [v3 dateByAddingTimeInterval:{objc_msgSend(v4, "timeZoneOffset")}];

  return v5;
}

- (BOOL)isMediaSubtype:(unint64_t)a3
{
  if ((a3 & 0x400) != 0)
  {
    v5 = [(PHAsset *)self spatialMediaProperties];
    v6 = [v5 spatialMediaType];

    if ((v6 - 1) > 1u)
    {
      if (!v6)
      {
        mediaSubtypes = self->_mediaSubtypes;
        if ((mediaSubtypes & 0x400) != 0)
        {
          self->_mediaSubtypes = mediaSubtypes & 0xFFFFFFFFFFFFFBFFLL;
        }
      }
    }

    else
    {
      v7 = self->_mediaSubtypes;
      if ((v7 & 0x400) == 0)
      {
        self->_mediaSubtypes = v7 | 0x400;
      }
    }
  }

  return (a3 & ~self->_mediaSubtypes) == 0;
}

- (void)_setupSmartStyleFromFetchDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"currentSleetCast"];
  v5 = [v4 shortValue];

  if (v5 >= 1 && self->_currentSmartStyleCast != v5)
  {
    self->_currentSmartStyleCast = v5;
  }
}

- (void)_setupBadgeAttributesFromFetchDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"packedBadgeAttributes"];
  self->_packedBadgeAttributes = [v5 intValue];

  v6 = [v4 objectForKeyedSubscript:@"syndicationState"];
  self->_syndicationState = [v6 unsignedShortValue];

  v7 = [v4 objectForKeyedSubscript:@"activeLibraryScopeParticipationState"];

  self->_participatesInLibraryScope = [v7 integerValue] == 1;
}

- (void)_setupSpatialTypeFromFetchDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"spatialType"];
  v5 = [v4 shortValue];

  if ((v5 - 1) <= 1u)
  {
    self->_mediaSubtypes |= 0x400uLL;
  }
}

- (void)_setupHDRAndDepthMediaSubtypesFromFetchDictionary:(id)a3
{
  v17 = a3;
  v4 = [v17 objectForKeyedSubscript:@"hdrType"];
  v5 = [v4 shortValue];

  mediaType = self->_mediaType;
  if (mediaType != 2)
  {
    if (mediaType != 1)
    {
      goto LABEL_19;
    }

    if (v5 - 2 < 2)
    {
      self->_mediaSubtypes |= 2uLL;
      if (v5 != 10)
      {
        goto LABEL_5;
      }
    }

    else if (v5 != 10)
    {
LABEL_5:
      if (v5 != 11)
      {
        goto LABEL_14;
      }

      v7 = 0x800000;
LABEL_13:
      self->_mediaSubtypes |= v7;
LABEL_14:
      v11 = [v17 objectForKeyedSubscript:@"depthType"];
      v12 = [v11 unsignedShortValue];

      if (v12 == 1)
      {
        self->_mediaSubtypes |= 0x10uLL;
      }

      v13 = [v17 objectForKeyedSubscript:@"playbackStyle"];
      v14 = [v13 shortValue];

      if (v14 == 2)
      {
        v10 = 64;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    v7 = 512;
    goto LABEL_13;
  }

  if (v5 == 5)
  {
    self->_mediaSubtypes |= 0x100000uLL;
  }

  v8 = [v17 objectForKeyedSubscript:@"depthType"];
  v9 = [v8 unsignedShortValue];

  if (v9 == 2)
  {
    v10 = 0x200000;
LABEL_18:
    self->_mediaSubtypes |= v10;
  }

LABEL_19:
  v15 = [v17 objectForKeyedSubscript:@"hdrGain"];
  hdrGain = self->_hdrGain;
  self->_hdrGain = v15;
}

- (void)_setupAdjustmentAndDeferredProcessingAttributesFromFetchDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"adjustmentTimestamp"];
  adjustmentTimestamp = self->_adjustmentTimestamp;
  self->_adjustmentTimestamp = v5;

  v7 = [v4 objectForKeyedSubscript:@"adjustmentsState"];
  self->_adjustmentsState = [v7 unsignedShortValue];

  v8 = [v4 objectForKeyedSubscript:@"deferredProcessingNeeded"];
  self->_deferredProcessingNeeded = [v8 intValue];

  v9 = [v4 objectForKeyedSubscript:@"videoDeferredProcessingNeeded"];

  self->_videoDeferredProcessingNeeded = [v9 intValue];
}

- (void)_setupKindSubtypeFromFetchDictionary:(id)a3
{
  v9 = a3;
  v4 = [v9 objectForKeyedSubscript:@"kindSubtype"];
  v5 = [v4 shortValue];

  if (v5 <= 0x63u)
  {
    if (v5 > 1u)
    {
      if (v5 == 2)
      {
        self->_isPhotoIris = 1;
        if (([objc_opt_class() _isLivePhotoWithPhotoIris:self->_isPhotoIris hasAdjustments:-[PHAsset hasAdjustments](self videoCpDuration:"hasAdjustments") videoCPVisibility:self->_videoCpDurationValue sourceType:{self->_videoCpVisibilityState, -[PHAsset sourceType](self, "sourceType")}] & 1) == 0)
        {
          goto LABEL_25;
        }

        v6 = 8;
      }

      else
      {
        if (v5 != 10)
        {
          goto LABEL_25;
        }

        v6 = 4;
      }
    }

    else if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_25;
      }

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_24;
  }

  if (v5 > 0x65u)
  {
    switch(v5)
    {
      case 'f':
        v6 = 0x40000;
        break;
      case 'g':
        v6 = 0x80000;
        break;
      case 'h':
        v6 = 0x400000;
        break;
      default:
        goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v5 == 100)
  {
    v6 = 0x10000;
    goto LABEL_24;
  }

  if (v5 == 101)
  {
    v7 = [v9 objectForKeyedSubscript:@"highFrameRateState"];
    v8 = [v7 integerValue];

    if ((v8 & 2) != 0)
    {
      v6 = 0x20000;
LABEL_24:
      self->_mediaSubtypes = v6;
    }
  }

LABEL_25:
}

- (void)_setupFaceAttributesFromFetchDictionary:(id)a3
{
  v12 = a3;
  if (PLPlatformEagerlyFetchFaceRegions())
  {
    v4 = [v12 objectForKeyedSubscript:@"additionalAttributes.faceRegions"];
    v5 = PLManagedAssetDecodeFaceRegions();
    faceRegions = self->_faceRegions;
    self->_faceRegions = v5;
  }

  v7 = [v12 objectForKeyedSubscript:@"faceAdjustmentVersion"];
  faceAdjustmentVersion = self->_faceAdjustmentVersion;
  self->_faceAdjustmentVersion = v7;

  v9 = [v12 objectForKeyedSubscript:@"additionalAttributes.faceAnalysisVersion"];
  self->_faceAnalysisVersion = [v9 intValue];

  v10 = [v12 objectForKeyedSubscript:@"faceAreaPoints"];
  v11 = [v10 longLongValue];

  if ((v11 & 0x8000000000000000) == 0)
  {
    PLSplitToDoubleFromInt64();
  }
}

- (void)_setupUIStateAndTrashAttributesFromFetchDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"favorite"];
  self->_favorite = [v5 BOOLValue];

  v6 = [v4 objectForKeyedSubscript:@"hidden"];
  self->_hidden = [v6 BOOLValue];

  v7 = [v4 objectForKeyedSubscript:@"trashedState"];
  self->_trashed = [v7 intValue] != 0;

  v8 = [v4 objectForKeyedSubscript:@"trashedDate"];

  trashedDate = self->_trashedDate;
  self->_trashedDate = v8;
}

- (void)_setupAnalysisScoreAttributesFromFetchDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"curationScore"];
  [v5 doubleValue];
  self->_curationScore = v6;

  v7 = [v4 objectForKeyedSubscript:@"overallAestheticScore"];
  [v7 floatValue];
  self->_overallAestheticScore = v8;

  v10 = [v4 objectForKeyedSubscript:@"highlightVisibilityScore"];

  [v10 doubleValue];
  self->_highlightVisibilityScore = v9;
}

- (void)_setupGeometryAttributesFromFetchDictionary:(id)a3
{
  v13 = a3;
  v4 = [v13 objectForKeyedSubscript:@"height"];
  self->_pixelHeight = [v4 unsignedIntegerValue];

  v5 = [v13 objectForKeyedSubscript:@"width"];
  self->_pixelWidth = [v5 unsignedIntegerValue];

  v6 = [v13 objectForKeyedSubscript:@"orientation"];
  self->_exifOrientation = [v6 intValue];

  v7 = [v13 objectForKeyedSubscript:@"packedPreferredCropRect"];
  v8 = [v7 longLongValue];

  if (v8)
  {
    PLSplitToCGRectFromInt64();
  }

  else
  {
    v9 = *(MEMORY[0x1E695F050] + 16);
    self->_preferredCropRect.origin = *MEMORY[0x1E695F050];
    self->_preferredCropRect.size = v9;
  }

  v10 = [v13 objectForKeyedSubscript:@"packedAcceptableCropRect"];
  v11 = [v10 longLongValue];

  if (v11)
  {
    PLSplitToCGRectFromInt64();
  }

  else
  {
    v12 = *(MEMORY[0x1E695F050] + 16);
    self->_acceptableCropRect.origin = *MEMORY[0x1E695F050];
    self->_acceptableCropRect.size = v12;
  }
}

- (void)_setupTypeAndPersistenceStateAttributesFromFetchDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kind"];
  v6 = [v5 shortValue];

  if (v6 < 3)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  self->_mediaType = v7;
  v8 = [v4 objectForKeyedSubscript:@"uniformTypeIdentifier"];
  uniformTypeIdentifier = self->_uniformTypeIdentifier;
  self->_uniformTypeIdentifier = v8;

  v10 = [v4 objectForKeyedSubscript:@"savedAssetType"];
  self->_savedAssetType = [v10 shortValue];

  v11 = [v4 objectForKeyedSubscript:@"bundleScope"];
  self->_bundleScope = [v11 shortValue];

  v12 = [v4 objectForKeyedSubscript:@"complete"];

  self->_complete = [v12 BOOLValue];
}

- (void)_setupLocationAndCreationDateAttributesFromFetchDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"dateCreated"];
  creationDate = self->_creationDate;
  self->_creationDate = v5;

  v11 = [v4 objectForKeyedSubscript:@"latitude"];
  v7 = [v4 objectForKeyedSubscript:@"longitude"];

  if (v11 && v7)
  {
    [v11 doubleValue];
    v9 = v8;
    [v7 doubleValue];
    self->_locationCoordinate = CLLocationCoordinate2DMake(v9, v10);
  }

  else
  {
    self->_locationCoordinate = *MEMORY[0x1E6985CC0];
  }

  [(PHAsset *)self _initializeCachedLocation];
}

- (void)_setupFileSystemAttributesFromFetchDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"directory"];
  directory = self->_directory;
  self->_directory = v5;

  v7 = [v4 objectForKeyedSubscript:@"filename"];

  filename = self->_filename;
  self->_filename = v7;
}

- (void)_setupAuxiliaryIdentifierAttributesFromFetchDictionary:(id)a3
{
  v7 = a3;
  v4 = [(PHAsset *)self isPartOfBurst];
  if (v4)
  {
    v5 = [v7 objectForKeyedSubscript:@"avalancheUUID"];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(&self->_burstIdentifier, v5);
  if (v4)
  {
  }

  v6 = [v7 objectForKeyedSubscript:@"cloudAssetGUID"];
  if ([v6 length])
  {
    objc_storeStrong(&self->_cloudAssetGUID, v6);
  }
}

- (PHAsset)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v37.receiver = self;
  v37.super_class = PHAsset;
  v9 = [(PHObject *)&v37 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  v10 = v9;
  if (v9)
  {
    if ((a4 & 6) == 4)
    {
      [(PHAsset *)v9 _setupLocationAndCreationDateAttributesFromFetchDictionary:v8];
    }

    else
    {
      v11 = [v8 objectForKeyedSubscript:@"avalanchePickType"];
      v10->_avalanchePickType = [v11 intValue];

      v12 = [v8 objectForKeyedSubscript:@"avalancheKind"];
      v10->_avalancheKind = [v12 intValue];

      v13 = [v8 objectForKeyedSubscript:@"thumbnailIndex"];
      v14 = [v13 intValue];

      v10->_persistedThumbnailIndex = v14;
      v15 = [v8 objectForKeyedSubscript:@"duration"];
      [v15 doubleValue];
      v10->_duration = v16;

      v17 = [v8 objectForKeyedSubscript:@"videoCpDurationValue"];
      v10->_videoCpDurationValue = [v17 integerValue];

      v18 = [v8 objectForKeyedSubscript:@"videoCpVisibilityState"];
      v10->_videoCpVisibilityState = [v18 integerValue];

      v19 = [v8 objectForKeyedSubscript:@"playbackStyle"];
      v10->_playbackStyle = [v19 shortValue];

      v20 = [v8 objectForKeyedSubscript:@"playbackVariation"];
      v10->_playbackVariation = [v20 shortValue];

      v21 = [v8 objectForKeyedSubscript:@"modificationDate"];
      modificationDate = v10->_modificationDate;
      v10->_modificationDate = v21;

      v23 = [v8 objectForKeyedSubscript:@"addedDate"];
      addedDate = v10->_addedDate;
      v10->_addedDate = v23;

      v25 = [v8 objectForKeyedSubscript:@"cloudIsDeletable"];
      v10->_cloudIsDeletable = [v25 BOOLValue];

      v26 = [v8 objectForKeyedSubscript:@"originalColorSpace"];
      originalColorSpace = v10->_originalColorSpace;
      v10->_originalColorSpace = v26;

      v28 = [v8 objectForKeyedSubscript:@"imageRequestHints"];
      imageRequestHints = v10->_imageRequestHints;
      v10->_imageRequestHints = v28;

      v30 = [v8 objectForKeyedSubscript:@"generativeMemoryCreationEligibilityState"];
      v10->_generativeMemoryCreationEligibilityState = [v30 intValue];

      v31 = [v8 objectForKeyedSubscript:@"locationData"];
      locationData = v10->_locationData;
      v10->_locationData = v31;

      v33 = [v8 objectForKeyedSubscript:@"compactSCSensitivityAnalysis"];
      v10->_compactSCSensitivityAnalysis = [v33 longLongValue];

      [(PHAsset *)v10 _setupLocationAndCreationDateAttributesFromFetchDictionary:v8];
      [(PHAsset *)v10 _setupAuxiliaryIdentifierAttributesFromFetchDictionary:v8];
      [(PHAsset *)v10 _setupFileSystemAttributesFromFetchDictionary:v8];
      [(PHAsset *)v10 _setupUIStateAndTrashAttributesFromFetchDictionary:v8];
      [(PHAsset *)v10 _setupAdjustmentAndDeferredProcessingAttributesFromFetchDictionary:v8];
      [(PHAsset *)v10 _setupTypeAndPersistenceStateAttributesFromFetchDictionary:v8];
      [(PHAsset *)v10 _setupGeometryAttributesFromFetchDictionary:v8];
      [(PHAsset *)v10 _setupFaceAttributesFromFetchDictionary:v8];
      [(PHAsset *)v10 _setupKindSubtypeFromFetchDictionary:v8];
      [(PHAsset *)v10 _setupSpatialTypeFromFetchDictionary:v8];
      [(PHAsset *)v10 _setupHDRAndDepthMediaSubtypesFromFetchDictionary:v8];
      [(PHAsset *)v10 _setupAnalysisScoreAttributesFromFetchDictionary:v8];
      [(PHAsset *)v10 _setupBadgeAttributesFromFetchDictionary:v8];
      [(PHAsset *)v10 _setupSmartStyleFromFetchDictionary:v8];
      [(PHAsset *)v10 _createExtendedPropertySetsIfNeededWithPropertyHint:a4 fetchDictionary:v8];
      mediaType = v10->_mediaType;
      if (mediaType == 1)
      {
        if (![(PHAsset *)v10 isMediaSubtype:8]&& v10->_playbackStyle == 3)
        {
          v10->_playbackStyle = 1;
        }

        mediaType = v10->_mediaType;
      }

      if (mediaType == 2 && v10->_isPhotoIris)
      {
        v10->_mediaSubtypes &= ~8uLL;
        v10->_isPhotoIris = 0;
      }
    }

    v35 = v10;
  }

  return v10;
}

+ (BOOL)_libraryScopeAssetContributedByCurrentUser:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [v3 pl_photoLibrary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PHAsset__libraryScopeAssetContributedByCurrentUser___block_invoke;
  v7[3] = &unk_1E75AADC0;
  v5 = v3;
  v8 = v5;
  v9 = &v10;
  [v4 performBlockAndWait:v7];

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

void __54__PHAsset__libraryScopeAssetContributedByCurrentUser___block_invoke(uint64_t a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE540] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x1E696AB28];
  v6 = MEMORY[0x1E696AE18];
  v7 = [*(a1 + 32) objectID];
  v8 = [v6 predicateWithFormat:@"self == %@", v7];
  v25[0] = v8;
  v9 = [MEMORY[0x1E69BE540] predicateToIncludeOnlyContentContributedByCurrentUser];
  v25[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v11 = [v5 andPredicateWithSubpredicates:v10];
  [v4 setPredicate:v11];

  [v4 setResultType:4];
  v12 = [*(a1 + 32) pl_photoLibrary];
  v13 = [v12 managedObjectContext];
  v18 = 0;
  v14 = [v13 countForFetchRequest:v4 error:&v18];
  v15 = v18;

  if (v14 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [*(a1 + 32) uuid];
      *buf = 138412802;
      v20 = v17;
      v21 = 2080;
      v22 = "+[PHAsset _libraryScopeAssetContributedByCurrentUser:]_block_invoke";
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Failed to fetch asset %@ for %s: %@", buf, 0x20u);
    }
  }
}

+ (BOOL)_isLibraryScopeExiting:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = [v3 pl_photoLibrary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__PHAsset__isLibraryScopeExiting___block_invoke;
  v9[3] = &unk_1E75AA3F8;
  v5 = v4;
  v10 = v5;
  v6 = v3;
  v11 = v6;
  v12 = &v13;
  [v5 performBlockAndWait:v9];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __34__PHAsset__isLibraryScopeExiting___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 assetWithUUID:v3];

  if (v4)
  {
    v5 = [v4 libraryScope];
    if (v5)
    {
      v6 = v5;
      *(*(*(a1 + 48) + 8) + 24) = [v5 exitState]!= 0;
    }

    else
    {
      v8 = MEMORY[0x1E695D5E0];
      v9 = [MEMORY[0x1E69BE4E8] entityName];
      v10 = [v8 fetchRequestWithEntityName:v9];

      v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"exitState", 0];
      [v10 setPredicate:v11];

      [v10 setResultType:4];
      v12 = [*(a1 + 32) managedObjectContext];
      v16 = 0;
      v13 = [v12 countForFetchRequest:v10 error:&v16];
      v14 = v16;

      if (v13 == 1)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      else if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v18 = "+[PHAsset _isLibraryScopeExiting:]_block_invoke";
          v19 = 2112;
          v20 = v14;
          _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch exit library scope for %s: %@", buf, 0x16u);
        }
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 40) uuid];
      *buf = 138412546;
      v18 = v7;
      v19 = 2080;
      v20 = "+[PHAsset _isLibraryScopeExiting:]_block_invoke";
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Failed to fetch asset %@ for %s", buf, 0x16u);
    }
  }
}

+ (id)originalUniformTypeIdentifierForAsset:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__22497;
  v17 = __Block_byref_object_dispose__22498;
  v18 = 0;
  v4 = [v3 pl_photoLibrary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PHAsset_originalUniformTypeIdentifierForAsset___block_invoke;
  v9[3] = &unk_1E75AA3F8;
  v5 = v3;
  v10 = v5;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  [v6 performBlockAndWait:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __49__PHAsset_originalUniformTypeIdentifierForAsset___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) managedAssetForPhotoLibrary:*(a1 + 40)];
  v2 = [v5 originalUniformTypeIdentifier];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)fetchPredicateFromComparisonPredicate:(id)a3 options:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23.receiver = a1;
  v23.super_class = &OBJC_METACLASS___PHAsset;
  v8 = objc_msgSendSuper2(&v23, sel_fetchPredicateFromComparisonPredicate_options_, v6, v7);
  v9 = [MEMORY[0x1E695DFA8] set];
  if (v8)
  {
    goto LABEL_24;
  }

  v10 = [v6 leftExpression];
  v11 = [v6 rightExpression];
  if ([v10 expressionType] == 3)
  {
    v12 = [v10 keyPath];
    v13 = v11;
LABEL_6:
    v14 = v13;
    goto LABEL_14;
  }

  if ([v11 expressionType] == 3)
  {
    v12 = [v11 keyPath];
    v13 = v10;
    goto LABEL_6;
  }

  if ([v10 expressionType] == 4 || objc_msgSend(v11, "expressionType") == 4)
  {
    v15 = [v6 predicateFormat];
    v16 = [v15 containsString:@"mediaSubtypes"];

    if (v16)
    {
      [v9 addObject:@"mediaSubtypes"];
    }

    else
    {
      v17 = [v6 predicateFormat];
      v18 = [v17 containsString:@"mediaSubtype"];

      if (v18)
      {
        [v9 addObject:@"mediaSubtype"];
      }
    }
  }

  v14 = 0;
  v12 = 0;
LABEL_14:
  if ([v12 isEqualToString:@"mediaSubtypes"])
  {
    [v9 addObject:@"mediaSubtypes"];
  }

  else if ([v12 isEqualToString:@"mediaSubtype"])
  {
    [v9 addObject:@"mediaSubtype"];
  }

  else if ([v12 isEqualToString:@"adjustmentFormatIdentifier"] && !objc_msgSend(v14, "expressionType"))
  {
    v21 = MEMORY[0x1E696AE18];
    v22 = [v14 constantValue];
    v8 = [v21 predicateWithFormat:@"%K = %@", @"additionalAttributes.unmanagedAdjustment.adjustmentFormatIdentifier", v22];

    goto LABEL_21;
  }

  v8 = 0;
LABEL_21:
  if ([v9 count])
  {
    v19 = [a1 _transformMediaSubtypeReferences:v9 inComparisonPredicate:v6 options:v7];

    v8 = v19;
  }

LABEL_24:

  return v8;
}

+ (id)descriptionForMediaSubtypes:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 64; ++i)
  {
    if (((1 << i) & 0x1FF075F) != 0 && ((1 << i) & a3) != 0)
    {
      v7 = [PHAsset _descriptionForMediaSubtype:?];
      [v4 addObject:v7];
    }
  }

  if ([v4 count])
  {
    v8 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v8 = @"none";
  }

  return v8;
}

+ (id)_descriptionForMediaSubtype:(unint64_t)a3
{
  v3 = @"unknown";
  if (a3 <= 1023)
  {
    v13 = @"animated";
    v14 = @"semantic enhance";
    v15 = @"HDR gain map";
    if (a3 != 512)
    {
      v15 = @"unknown";
    }

    if (a3 != 256)
    {
      v14 = v15;
    }

    if (a3 != 64)
    {
      v13 = v14;
    }

    v16 = @"livephoto";
    v17 = @"deptheffect";
    if (a3 != 16)
    {
      v17 = @"unknown";
    }

    if (a3 != 8)
    {
      v16 = v17;
    }

    if (a3 <= 63)
    {
      v13 = v16;
    }

    v18 = @"HDR";
    v19 = @"screenshot";
    if (a3 != 4)
    {
      v19 = @"unknown";
    }

    if (a3 != 2)
    {
      v18 = v19;
    }

    if (a3 == 1)
    {
      v3 = @"panorama";
    }

    if (!a3)
    {
      v3 = @"none";
    }

    if (a3 > 1)
    {
      v3 = v18;
    }

    if (a3 <= 7)
    {
      return v3;
    }

    else
    {
      return v13;
    }
  }

  else
  {
    v4 = @"actioncam";
    v5 = @"high or extended dynamic range";
    v6 = @"smart style";
    if (a3 != 0x1000000)
    {
      v6 = @"unknown";
    }

    if (a3 != 0x800000)
    {
      v5 = v6;
    }

    if (a3 != 0x400000)
    {
      v4 = v5;
    }

    v7 = @"video HDR";
    v8 = @"cinematic video";
    if (a3 != 0x200000)
    {
      v8 = @"unknown";
    }

    if (a3 != 0x100000)
    {
      v7 = v8;
    }

    if (a3 < 0x400000)
    {
      v4 = v7;
    }

    v9 = @"highframerate";
    v10 = @"timelapse";
    v11 = @"screenrecording";
    if (a3 != 0x80000)
    {
      v11 = @"unknown";
    }

    if (a3 != 0x40000)
    {
      v10 = v11;
    }

    if (a3 != 0x20000)
    {
      v9 = v10;
    }

    if (a3 == 0x10000)
    {
      v3 = @"streamedvideo";
    }

    if (a3 == 1024)
    {
      v3 = @"spatial media";
    }

    if (a3 >= 0x20000)
    {
      v3 = v9;
    }

    if (a3 < 0x100000)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }
}

+ (id)descriptionForMediaType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E75A7238[a3 - 1];
  }
}

+ (id)descriptionForPlaybackStyle:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E75A7208[a3];
  }
}

+ (id)_descriptionForVariationSuggestionStates:(unint64_t)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = v4;
  if (v3)
  {
    [v4 addObject:@"suggested"];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 0x20) == 0)
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

  [v5 addObject:@"poor"];
  if ((v3 & 0x20) != 0)
  {
LABEL_4:
    [v5 addObject:@"seen"];
  }

LABEL_5:
  if ([v5 count])
  {
    v6 = [v5 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = @"Unknown";
  }

  return v6;
}

+ (id)_descriptionForVariationSuggestionType:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E75A71E8[a3];
  }
}

+ (id)fetchAssetsForOsMigrationWithOptions:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PHAsset.m" lineNumber:4148 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__PHAsset_fetchAssetsForOsMigrationWithOptions___block_invoke;
  v9[3] = &__block_descriptor_40_e39___PHFetchResult_16__0__PHFetchOptions_8l;
  v9[4] = a1;
  v6 = [PHObject authorizationAwareFetchResultWithOptions:v5 fetchBlock:v9];

  return v6;
}

id __48__PHAsset_fetchAssetsForOsMigrationWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__22497;
  v24[4] = __Block_byref_object_dispose__22498;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__22497;
  v22 = __Block_byref_object_dispose__22498;
  v23 = 0;
  v4 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v3 object:0];
  v5 = [v4 photoLibrary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__PHAsset_fetchAssetsForOsMigrationWithOptions___block_invoke_2;
  v12[3] = &unk_1E75A7068;
  v6 = *(a1 + 32);
  v17 = 0;
  v16 = v6;
  v14 = v24;
  v7 = v5;
  v13 = v7;
  v15 = &v18;
  [v7 performBlockAndWait:v12];
  v26[0] = @"PHAssetPropertySetOriginalMetadata";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v3 setFetchPropertySets:v8];

  v9 = [PHQuery queryForAssetsWithObjectIDs:v19[5] options:v3];
  v10 = [v9 executeQuery];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v24, 8);

  return v10;
}

void __48__PHAsset_fetchAssetsForOsMigrationWithOptions___block_invoke_2(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE4D0] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [*(a1 + 56) predicateForResourcesForOsMigrationIncludeLocalOnly:1 iCPLEnabled:*(a1 + 64)];
  [v4 setPredicate:v5];

  [v4 setResultType:2];
  v16[0] = @"asset";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v4 setPropertiesToFetch:v6];

  v7 = [*(a1 + 32) managedObjectContext];
  v15 = 0;
  v8 = [v7 executeFetchRequest:v4 error:&v15];
  v9 = v15;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  v12 = [*(*(*(a1 + 40) + 8) + 40) _pl_map:&__block_literal_global_1099];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

+ (id)predicateForResourcesForOsMigrationIncludeLocalOnly:(BOOL)a3 iCPLEnabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v25[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AB28];
  v7 = MEMORY[0x1E696AE18];
  v8 = [MEMORY[0x1E69BE4D0] originalCPLResourceTypes];
  v9 = [v7 predicateWithFormat:@"%K in %@", @"dataStoreSubtype", v8];
  v25[0] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"dataStoreClassID", 0];
  v25[1] = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"asset.kind", &unk_1F102E048];
  v25[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v13 = [v6 andPredicateWithSubpredicates:v12];

  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = MEMORY[0x1E696AB28];
  v24[0] = v13;
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"cloudLocalState", 3];
  v24[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v17 = [v14 andPredicateWithSubpredicates:v16];

  v13 = v17;
  if (v5)
  {
LABEL_5:
    v18 = MEMORY[0x1E696AB28];
    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %d", @"localAvailability", 1, v13];
    v23[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v21 = [v18 andPredicateWithSubpredicates:v20];

    v13 = v21;
  }

LABEL_6:

  return v13;
}

+ (id)fetchUserHiddenAssetsWithOptions:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PHAsset.m" lineNumber:4114 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  v11[0] = @"PHAssetPropertySetIdentifier";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v5 setFetchPropertySets:v6];

  [v5 setIncludeHiddenAssets:1];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == YES", @"hidden"];
  [v5 setPredicate:v7];

  v8 = [PHObject authorizationAwareFetchResultWithOptions:v5 fetchBlock:&__block_literal_global_1070];

  return v8;
}

id __44__PHAsset_fetchUserHiddenAssetsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAnyCinematicVideosNeedingDeferredProcessingWithOptions:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PHAsset.m" lineNumber:4106 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  v6 = [PHObject authorizationAwareFetchResultWithOptions:v5 fetchBlock:&__block_literal_global_1065];

  return v6;
}

id __71__PHAsset_fetchAnyCinematicVideosNeedingDeferredProcessingWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAnyCinematicVideosNeedingDeferredProcessingWithOtions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetsForPTPWithOptions:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PHAsset.m" lineNumber:4096 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  v10[0] = @"PHAssetPropertySetIdentifier";
  v10[1] = @"PHAssetPropertySetPTP";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  [v5 setFetchPropertySets:v6];

  [v5 setIncludeHiddenAssets:1];
  v7 = [PHObject authorizationAwareFetchResultWithOptions:v5 fetchBlock:&__block_literal_global_1063];

  return v7;
}

id __40__PHAsset_fetchAssetsForPTPWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsForPTPWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetsForSearchLookupIdentifier:(id)a3 options:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PHAsset.m" lineNumber:4056 description:{@"Invalid parameter not satisfying: %@", @"options"}];

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"PHAsset.m" lineNumber:4057 description:{@"Invalid parameter not satisfying: %@", @"lookupIdentifier"}];

    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  v9 = PLPhotoKitGetLog();
  v10 = os_signpost_id_make_with_pointer(v9, a1);
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 138412290;
    v30 = v7;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "UtilityCollectionFetch", "LookupIdentifier=%@", buf, 0xCu);
  }

  v13 = [v8 photoLibrary];
  v14 = [v13 searchIndex];
  v15 = [v14 unverifiedPsiSearchIndex];

  v16 = [v15 uuidsForLookupIdentifier:v7 resultTypes:1];
  v17 = [v8 photoLibrary];
  v18 = [PHFetchOptions fetchOptionsWithPhotoLibrary:v17 orObject:0];

  [v18 setIncludeHiddenAssets:0];
  [v18 setIncludeTrashedAssets:0];
  [v18 mergeWithFetchOptions:v8];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__PHAsset_fetchAssetsForSearchLookupIdentifier_options___block_invoke;
  v25[3] = &unk_1E75A7040;
  v26 = v16;
  v27 = v12;
  v28 = v10;
  v19 = v12;
  v20 = v16;
  v21 = [PHObject authorizationAwareFetchResultWithOptions:v18 fetchBlock:v25];

  return v21;
}

id __56__PHAsset_fetchAssetsForSearchLookupIdentifier_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = [PHAsset fetchAssetsWithUUIDs:v3 options:a2];
  v5 = *(a1 + 40);
  v6 = v5;
  v7 = *(a1 + 48);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v9 = 134217984;
    v10 = [v4 count];
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v6, OS_SIGNPOST_INTERVAL_END, v7, "UtilityCollectionFetch", "Count=%lu", &v9, 0xCu);
  }

  return v4;
}

+ (id)fetchAssetsForCloudFeedEntry:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__PHAsset_fetchAssetsForCloudFeedEntry_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __48__PHAsset_fetchAssetsForCloudFeedEntry_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsForCloudFeedEntry:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchKeyAssetsForCollectionList:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PHCollection fetchCollectionsInCollectionList:v6 options:v5];
  LOBYTE(v10) = 1;
  v8 = [[PHCollectionListKeyAssetsFetchResult alloc] initWithCollectionList:v6 keyAssets:0 childCollectionsFetchResult:v7 keyAssetFetchByCollectionID:0 identifier:0 options:v5 registerIfNeeded:v10];

  return v8;
}

+ (id)fetchAssetsThroughAssetPersonEdgesForPerson:(id)a3 options:(id)a4
{
  v4 = [PHGraphQuery graphQueryForAssetsForPerson:a3 options:a4];
  v5 = [v4 executeQuery];

  return v5;
}

+ (id)fetchAssetsInPreviewStateWithPhotosOrPhotosDeferredSuggestedByClientTypeWithOptions:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PHAsset_fetchAssetsInPreviewStateWithPhotosOrPhotosDeferredSuggestedByClientTypeWithOptions___block_invoke;
  v7[3] = &unk_1E75AB0E0;
  v8 = v3;
  v4 = v3;
  v5 = [PHObject authorizationAwareFetchResultWithOptions:v4 fetchBlock:v7];

  return v5;
}

id __95__PHAsset_fetchAssetsInPreviewStateWithPhotosOrPhotosDeferredSuggestedByClientTypeWithOptions___block_invoke(uint64_t a1)
{
  v1 = [PHQuery queryForAssetsInPreviewStateWithSuggestedByClientTypes:&unk_1F102E030 options:*(a1 + 32)];
  v2 = [v1 executeQuery];

  return v2;
}

+ (id)fetchAssetsInPreviewStateWithSuggestedByClientType:(signed __int16)a3 options:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PHAsset_fetchAssetsInPreviewStateWithSuggestedByClientType_options___block_invoke;
  v9[3] = &unk_1E75A7018;
  v11 = a3;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:v6 fetchBlock:v9];

  return v7;
}

id __70__PHAsset_fetchAssetsInPreviewStateWithSuggestedByClientType_options___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithShort:*(a1 + 40)];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [PHQuery queryForAssetsInPreviewStateWithSuggestedByClientTypes:v3 options:*(a1 + 32)];

  v5 = [v4 executeQuery];

  return v5;
}

+ (id)fetchAssetsInPreviewStateInLibraryScope:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__PHAsset_fetchAssetsInPreviewStateInLibraryScope_options___block_invoke;
  v11[3] = &unk_1E75AA278;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:v7 fetchBlock:v11];

  return v9;
}

id __59__PHAsset_fetchAssetsInPreviewStateInLibraryScope_options___block_invoke(uint64_t a1)
{
  v1 = [PHQuery queryForAssetsInPreviewStateInLibraryScope:*(a1 + 32) options:*(a1 + 40)];
  v2 = [v1 executeQuery];

  return v2;
}

+ (id)fetchAssetsWithCurrentUserAsLibraryScopeContributor:(BOOL)a3 inLibraryScope:(id)a4 options:(id)a5
{
  v7 = a4;
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__PHAsset_fetchAssetsWithCurrentUserAsLibraryScopeContributor_inLibraryScope_options___block_invoke;
  v13[3] = &unk_1E75A6FF0;
  v16 = a3;
  v14 = v7;
  v15 = v8;
  v9 = v8;
  v10 = v7;
  v11 = [PHObject authorizationAwareFetchResultWithOptions:v9 fetchBlock:v13];

  return v11;
}

id __86__PHAsset_fetchAssetsWithCurrentUserAsLibraryScopeContributor_inLibraryScope_options___block_invoke(uint64_t a1)
{
  v1 = [PHQuery queryForAssetsWithCurrentUserAsLibraryScopeContributor:*(a1 + 48) inLibraryScope:*(a1 + 32) options:*(a1 + 40)];
  v2 = [v1 executeQuery];

  return v2;
}

+ (id)fetchAssetsInLibraryScope:(id)a3 fromAssets:(id)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __48__PHAsset_fetchAssetsInLibraryScope_fromAssets___block_invoke;
  v19 = &unk_1E75A6FC8;
  v20 = v8;
  v9 = v8;
  [v6 enumerateObjectsUsingBlock:&v16];
  v10 = [v6 firstObject];

  v11 = [v10 photoLibrary];
  v12 = [v11 librarySpecificFetchOptions];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v9, v16, v17, v18, v19];
  [v12 setInternalPredicate:v13];

  v14 = [PHAsset fetchAssetsInLibraryScope:v7 options:v12];

  return v14;
}

void __48__PHAsset_fetchAssetsInLibraryScope_fromAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  [v2 addObject:v3];
}

+ (id)fetchAssetsInLibraryScope:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__PHAsset_fetchAssetsInLibraryScope_options___block_invoke;
  v11[3] = &unk_1E75AA278;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:v7 fetchBlock:v11];

  return v9;
}

id __45__PHAsset_fetchAssetsInLibraryScope_options___block_invoke(uint64_t a1)
{
  v1 = [PHQuery queryForAssetsInLibraryScope:*(a1 + 32) options:*(a1 + 40)];
  v2 = [v1 executeQuery];

  return v2;
}

+ (id)fetchAssetsCapturedOrEdited:(BOOL)a3 onThisCameraSinceDate:(id)a4 options:(id)a5
{
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PHAsset_fetchAssetsCapturedOrEdited_onThisCameraSinceDate_options___block_invoke;
  v11[3] = &unk_1E75A6FA0;
  v13 = a3;
  v12 = v7;
  v8 = v7;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:a5 fetchBlock:v11];

  return v9;
}

id __69__PHAsset_fetchAssetsCapturedOrEdited_onThisCameraSinceDate_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    [PHQuery queryForAssetsEditedOnThisCameraSinceDate:v2 options:a2];
  }

  else
  {
    [PHQuery queryForAssetsCapturedOnThisCameraSinceDate:v2 options:a2];
  }
  v3 = ;
  v4 = [v3 executeQuery];

  return v4;
}

+ (id)fetchAssetsFromCameraSinceDate:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-300.0];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__PHAsset_fetchAssetsFromCameraSinceDate_options___block_invoke;
  v11[3] = &unk_1E75AA278;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:v7 fetchBlock:v11];

  return v9;
}

id __50__PHAsset_fetchAssetsFromCameraSinceDate_options___block_invoke(uint64_t a1)
{
  v1 = [PHQuery queryForAssetsFromCameraSinceDate:*(a1 + 32) options:*(a1 + 40)];
  v2 = [v1 executeQuery];

  return v2;
}

+ (id)fetchAllAssetsInYearRepresentedByYearHighlight:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PHAsset_fetchAllAssetsInYearRepresentedByYearHighlight_options___block_invoke;
  v11[3] = &unk_1E75AA278;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:v7 fetchBlock:v11];

  return v9;
}

id __66__PHAsset_fetchAllAssetsInYearRepresentedByYearHighlight_options___block_invoke(uint64_t a1)
{
  v1 = [PHQuery queryForAllAssetsInYearRepresentedByYearHighlight:*(a1 + 32) options:*(a1 + 40)];
  v2 = [v1 executeQuery];

  return v2;
}

id __44__PHAsset_fetchReferencedAssetsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForReferencedAssetsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetsForKeywords:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__PHAsset_fetchAssetsForKeywords_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __42__PHAsset_fetchAssetsForKeywords_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsForKeywords:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetsInAssetCollections:(id)a3 options:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (v8 && [v8 count] == 1)
  {
    v10 = [v9 firstObject];
    v11 = [PHAsset fetchAssetsInAssetCollection:v10 options:v6];

    goto LABEL_22;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v5;
  v11 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v24 = v9;
    v25 = v5;
    v14 = 0;
    v15 = *v27;
    do
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * v16);
        v19 = [PHAsset fetchAssetsInAssetCollection:v18 options:v6, v24];
        v20 = [v19 fetchedObjectIDs];
        [v12 addObjectsFromArray:v20];

        v14 = [v18 photoLibrary];

        v16 = v16 + 1;
        v17 = v14;
      }

      while (v11 != v16);
      v11 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);

    if (!v14)
    {
      v11 = 0;
      v9 = v24;
      v5 = v25;
      goto LABEL_21;
    }

    v21 = [v6 photoLibrary];

    v9 = v24;
    if (v21 != v14)
    {
      v22 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v14];

      v6 = v22;
    }

    v5 = v25;
    v11 = [PHAsset fetchAssetsWithObjectIDs:v12 options:v6];
  }

  else
  {
    v14 = v13;
  }

LABEL_21:
LABEL_22:

  return v11;
}

+ (id)fetchVisibleAssetsWithObjectIDs:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PHAsset_fetchVisibleAssetsWithObjectIDs_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __51__PHAsset_fetchVisibleAssetsWithObjectIDs_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForVisibleAssetsWithObjectIDs:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetsWithObjectIDs:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PHAsset_fetchAssetsWithObjectIDs_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __44__PHAsset_fetchAssetsWithObjectIDs_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsWithObjectIDs:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchKeyAssetForExtendedSceneIdentifier:(unint64_t)a3 aboveConfidenceThreshold:(double)a4 minimumSceneAnalysisVersion:(signed __int16)a5 options:(id)a6
{
  v6 = a5;
  v41[1] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = [v11 photoLibrary];
  v13 = [v12 photoLibrary];

  if (!v13)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"PHAsset.m" lineNumber:3867 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v14 = [v13 managedObjectContext];
  v15 = MEMORY[0x1E695D5E0];
  v16 = [MEMORY[0x1E69BE778] entityName];
  v17 = [v15 fetchRequestWithEntityName:v16];

  v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"confidence" ascending:0];
  v41[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  [v17 setSortDescriptors:v19];

  [v17 setFetchLimit:1];
  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sceneIdentifier == %lld && confidence > %f && assetAttributes.asset.additionalAttributes.sceneAnalysisVersion >= %i && assetAttributes.asset.hidden == NO && assetAttributes.asset.trashedState == %d", a3, *&a4, v6, 0];
  [v17 setPredicate:v20];

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__22497;
  v39 = __Block_byref_object_dispose__22498;
  v40 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__22497;
  v33[4] = __Block_byref_object_dispose__22498;
  v34 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __112__PHAsset_fetchKeyAssetForExtendedSceneIdentifier_aboveConfidenceThreshold_minimumSceneAnalysisVersion_options___block_invoke;
  v28[3] = &unk_1E75A9D58;
  v21 = v14;
  v29 = v21;
  v22 = v17;
  v30 = v22;
  v31 = v33;
  v32 = &v35;
  [v21 performBlockAndWait:v28];
  v23 = v36[5];
  v24 = [v11 photoLibrary];
  v25 = [v23 pl_PHAssetFromPhotoLibrary:v24];

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);

  return v25;
}

void __112__PHAsset_fetchKeyAssetForExtendedSceneIdentifier_aboveConfidenceThreshold_minimumSceneAnalysisVersion_options___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 firstObject];
  v7 = [v6 assetAttributes];

  v8 = [v7 asset];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (id)fetchAssetsForComment:(id)a3 options:(id)a4
{
  v4 = [PHQuery queryForAssetsForComment:a3 options:a4];
  v5 = [v4 executeQuery];

  return v5;
}

+ (id)fetchAssetsForFaceGroups:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PHAsset_fetchAssetsForFaceGroups_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __44__PHAsset_fetchAssetsForFaceGroups_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsForFaceGroups:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetsForFaces:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__PHAsset_fetchAssetsForFaces_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __39__PHAsset_fetchAssetsForFaces_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsForFaces:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchCollageAssetsForDayHighlight:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PHAsset_fetchCollageAssetsForDayHighlight_options___block_invoke;
  v11[3] = &unk_1E75AA278;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:v7 fetchBlock:v11];

  return v9;
}

id __53__PHAsset_fetchCollageAssetsForDayHighlight_options___block_invoke(uint64_t a1)
{
  v1 = [PHQuery queryForCollageAssetsInDayHighlight:*(a1 + 32) options:*(a1 + 40)];
  v2 = [v1 executeQuery];

  return v2;
}

+ (id)fetchKeyAssetForSocialGroup:(id)a3 createIfNeeded:(BOOL)a4 options:(id)a5
{
  v5 = [PHGraphQuery graphQueryForKeyAssetForSocialGroup:a3 createIfNeeded:a4 options:a5];
  v6 = [v5 executeQuery];

  return v6;
}

+ (id)fetchInclusiveAssetsForSocialGroup:(id)a3 options:(id)a4
{
  v4 = [PHGraphQuery graphQueryForInclusiveAssetsForSocialGroup:a3 options:a4];
  v5 = [v4 executeQuery];

  return v5;
}

+ (id)fetchExclusiveSocialGroupAssetsForPersons:(id)a3 minimumNumberOfSharedAssets:(unint64_t)a4 options:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a5;
  if ([v11 count] <= 1)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PHAsset.m" lineNumber:3786 description:{@"Invalid parameter not satisfying: %@", @"personUUIDs.count > 1"}];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__22497;
  v38 = __Block_byref_object_dispose__22498;
  v39 = 0;
  v13 = [v12 photoLibrary];
  v14 = [v13 photoLibraryForCurrentQueueQoS];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__22497;
  v32 = __Block_byref_object_dispose__22498;
  v33 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __95__PHAsset_fetchExclusiveSocialGroupAssetsForPersons_minimumNumberOfSharedAssets_options_error___block_invoke;
  v22[3] = &unk_1E75AA420;
  v15 = v11;
  v23 = v15;
  v16 = v14;
  v24 = v16;
  v25 = &v28;
  v26 = &v34;
  v27 = a4;
  [v16 performBlockAndWait:v22];
  v17 = v35[5];
  if (v17)
  {
    v18 = [v17 allObjects];
    v19 = [PHAsset fetchVisibleAssetsWithObjectIDs:v18 options:v12];
  }

  else
  {
    v19 = 0;
    if (a6)
    {
      *a6 = v29[5];
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v19;
}

void __95__PHAsset_fetchExclusiveSocialGroupAssetsForPersons_minimumNumberOfSharedAssets_options_error___block_invoke(uint64_t a1)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE608] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"personUUID", *(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = MEMORY[0x1E695DFD8];
  v7 = [*(a1 + 40) managedObjectContext];
  v34 = 0;
  v8 = [v7 executeFetchRequest:v4 error:&v34];
  v9 = v34;
  v10 = [v6 setWithArray:v8];

  if (v10)
  {
    v11 = [v10 count];
    if (v11 >= [*(a1 + 32) count])
    {
      v23 = objc_alloc(MEMORY[0x1E69BE800]);
      v24 = [*(a1 + 40) managedObjectContext];
      v12 = [v23 initWithPersons:v10 inContext:v24];

      v25 = *(a1 + 64);
      v33 = 0;
      v26 = [v12 runAssetContainmentWithMinimumNumberOfSharedAssets:v25 error:&v33];
      v27 = v33;
      v28 = [v26 exclusiveAssetIDs];
      v29 = *(*(a1 + 56) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      v31 = *(*(a1 + 48) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v27;
    }

    else
    {
      v12 = [*(a1 + 32) mutableCopy];
      v13 = [v10 valueForKey:@"personUUID"];
      [v12 minusSet:v13];

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fetchAssetsPassingExclusiveContainmentForPersons: persons with these UUIDs not found: %@", v12];
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E69BFF48];
      v35 = *MEMORY[0x1E696A578];
      v36[0] = v14;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v18 = [v15 errorWithDomain:v16 code:3072 userInfo:v17];
      v19 = *(*(a1 + 48) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }

  else
  {
    v21 = *(*(a1 + 48) + 8);
    v22 = v9;
    v12 = *(v21 + 40);
    *(v21 + 40) = v22;
  }
}

+ (id)fetchExclusiveAssetsForSocialGroup:(id)a3 options:(id)a4
{
  v4 = [PHGraphQuery graphQueryForExclusiveAssetsForSocialGroup:a3 options:a4];
  v5 = [v4 executeQuery];

  return v5;
}

+ (id)fetchAssetsForPersons:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__PHAsset_fetchAssetsForPersons_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __41__PHAsset_fetchAssetsForPersons_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsForPersons:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetsForPerson:(id)a3 options:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v12 count:1];

  v10 = [a1 fetchAssetsForPersons:v9 options:{v7, v12, v13}];

  return v10;
}

+ (id)fetchKeyAssetForPerson:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 photoLibrary];
  v8 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v5 photoLibrary:v7];

  v9 = [PHQuery queryForKeyAssetForPerson:v6 options:v8];

  v10 = [v9 executeQuery];

  return v10;
}

+ (id)fetchAssetsForPerson:(id)a3 faceCount:(unint64_t)a4 options:(id)a5
{
  v21[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = MEMORY[0x1E696AE18];
  v10 = a5;
  v11 = [v9 predicateWithFormat:@"%K.@count == %lu", @"detectedFaces", a4];
  v12 = [v8 photoLibrary];
  v13 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v10 photoLibrary:v12];

  v14 = [v13 internalPredicate];
  v15 = v14;
  if (v14)
  {
    v16 = MEMORY[0x1E696AB28];
    v21[0] = v14;
    v21[1] = v11;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v18 = [v16 andPredicateWithSubpredicates:v17];
    [v13 setInternalPredicate:v18];
  }

  else
  {
    [v13 setInternalPredicate:v11];
  }

  v19 = [a1 fetchAssetsForPerson:v8 options:v13];

  return v19;
}

+ (id)fetchGuestAssetsInCollectionContainingAsset:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PHAsset_fetchGuestAssetsInCollectionContainingAsset_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __63__PHAsset_fetchGuestAssetsInCollectionContainingAsset_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForGuestAssetsInCollectionContainingAsset:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

id __39__PHAsset_fetchGuestAssetsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForGuestAssetsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

id __34__PHAsset_fetchAssetsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (PHFetchResult)fetchKeyAssetsInAssetCollection:(PHAssetCollection *)assetCollection options:(PHFetchOptions *)options
{
  v5 = assetCollection;
  v6 = options;
  if (!v5 || [(PHObject *)v5 isTransient]|| [(PHAssetCollection *)v5 isPrivacySensitiveAlbum])
  {
    v7 = 0;
  }

  else
  {
    v9 = [PHQuery queryForKeyAssetsInAssetCollection:v5 options:v6];
    v7 = [v9 executeQuery];
    if (!v7)
    {
      v10 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v5];
      v11 = [PHAssetCollection transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:@"keys" identifier:@"transientkeyassets" photoLibrary:v10];
      v7 = [PHAsset fetchAssetsInAssetCollection:v11 options:v6];
    }
  }

  return v7;
}

+ (PHFetchResult)fetchAssetsWithBurstIdentifier:(NSString *)burstIdentifier options:(PHFetchOptions *)options
{
  v5 = burstIdentifier;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__PHAsset_fetchAssetsWithBurstIdentifier_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __50__PHAsset_fetchAssetsWithBurstIdentifier_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsWithBurstIdentifier:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (PHFetchResult)fetchAssetsWithALAssetURLs:(NSArray *)assetURLs options:(PHFetchOptions *)options
{
  v5 = assetURLs;
  v6 = options;
  if (![(NSArray *)v5 count]|| (v9[0] = MEMORY[0x1E69E9820], v9[1] = 3221225472, v9[2] = __46__PHAsset_fetchAssetsWithALAssetURLs_options___block_invoke, v9[3] = &unk_1E75AB0E0, v10 = v5, [PHObject authorizationAwareFetchResultWithOptions:v6 fetchBlock:v9], v7 = objc_claimAutoreleasedReturnValue(), v10, !v7))
  {
    v7 = objc_alloc_init(PHFetchResult);
  }

  return v7;
}

id __46__PHAsset_fetchAssetsWithALAssetURLs_options___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(a1 + 32);
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

        v10 = [MEMORY[0x1E69BE540] uuidFromAssetURL:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = [PHAsset fetchAssetsWithLocalIdentifiers:v4 options:v3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)fetchAssetsWithCloudIdentifiers:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PHAsset_fetchAssetsWithCloudIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __51__PHAsset_fetchAssetsWithCloudIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsWithCloudIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetsWithUUIDs:(id)a3 options:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__PHAsset_fetchAssetsWithUUIDs_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v9];

  return v7;
}

id __40__PHAsset_fetchAssetsWithUUIDs_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsWithUUIDs:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (PHFetchResult)fetchAssetsWithLocalIdentifiers:(NSArray *)identifiers options:(PHFetchOptions *)options
{
  v5 = identifiers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PHAsset_fetchAssetsWithLocalIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __51__PHAsset_fetchAssetsWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (PHFetchResult)fetchAssetsWithMediaType:(PHAssetMediaType)mediaType options:(PHFetchOptions *)options
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PHAsset_fetchAssetsWithMediaType_options___block_invoke;
  v6[3] = &__block_descriptor_40_e39___PHFetchResult_16__0__PHFetchOptions_8l;
  v6[4] = mediaType;
  v4 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v6];

  return v4;
}

id __44__PHAsset_fetchAssetsWithMediaType_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsWithMediaType:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAssetsWithoutOriginalsInAssetCollection:(id)a3 options:(id)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = [PHFetchOptions fetchOptionsWithPhotoLibrary:0 orObject:v6];
  }

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"master != nil && (SUBQUERY(master.resources, $r, $r.type == %ul AND $r.isLocallyAvailable == NO).@count != 0)", 1];
  v9 = [v7 internalPredicate];
  v10 = v9;
  v11 = v8;
  if (v9)
  {
    v12 = MEMORY[0x1E696AB28];
    v16[0] = v9;
    v16[1] = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v11 = [v12 andPredicateWithSubpredicates:v13];
  }

  [v7 setInternalPredicate:v11];
  v14 = [a1 fetchAssetsInAssetCollection:v6 options:v7];

  return v14;
}

+ (PHFetchResult)fetchAssetsInAssetCollection:(PHAssetCollection *)assetCollection options:(PHFetchOptions *)options
{
  v5 = assetCollection;
  v6 = options;
  v7 = v6;
  if (v5)
  {
    v8 = [(PHFetchOptions *)v6 photoLibrary];

    if (!v8)
    {
      v9 = [(PHObject *)v5 photoLibrary];
      v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v7 photoLibrary:v9];

      v7 = v10;
    }

    if (![(PHObject *)v5 isTransient])
    {
      goto LABEL_17;
    }

    v11 = [(PHAssetCollection *)v5 query];
    if (v11)
    {
      v12 = v11;
      if (v7)
      {
        v13 = [v11 copy];

        v14 = [v13 fetchOptions];
        v15 = v14;
        if (v14)
        {
          [v14 mergeWithFetchOptions:v7];
        }

        else
        {
          [v13 setFetchOptions:v7];
        }
      }

      else
      {
        v13 = v11;
      }

      v16 = [v13 executeQuery];
    }

    else
    {
      v17 = [(PHAssetCollection *)v5 assetOids];
      if (v17)
      {
        v13 = v17;
        v18 = [PHManualFetchResult alloc];
        v19 = [v7 photoLibrary];
        v20 = [v7 fetchPropertySetsAsSet];
        v16 = [(PHManualFetchResult *)v18 initWithOids:v13 photoLibrary:v19 fetchType:@"PHAsset" fetchPropertySets:v20 identifier:0 registerIfNeeded:1];
      }

      else
      {
        v23 = [(PHAssetCollection *)v5 assets];
        v24 = v23;
        v25 = MEMORY[0x1E695E0F0];
        if (v23)
        {
          v25 = v23;
        }

        v26 = v25;

        v27 = objc_opt_class();
        v28 = [v7 fetchPropertySetsAsSet];
        [v27 _batchFetchAdditionalPropertySetsIfNeeded:v28 forAssets:v26];

        v29 = [PHManualFetchResult alloc];
        v13 = [v7 photoLibrary];
        v30 = [v7 fetchPropertySetsAsSet];
        v16 = [(PHManualFetchResult *)v29 initWithObjects:v26 photoLibrary:v13 fetchType:@"PHAsset" fetchPropertySets:v30 identifier:0 registerIfNeeded:1];
      }
    }

    if (!v16)
    {
LABEL_17:
      v21 = [PHQuery queryForAssetsInAssetCollection:v5 options:v7];
      v16 = [v21 executeQuery];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)fetchAssetsInImportSessions:(id)a3 options:(id)a4
{
  v4 = [PHQuery queryForAssetsInImportSessions:a3 options:a4];
  v5 = [v4 executeQuery];

  return v5;
}

+ (id)fetchAssetsInBoundingBoxWithTopLeftLocation:(id)a3 bottomRightLocation:(id)a4 options:(id)a5
{
  v5 = [PHQuery queryForAssetsInBoundingBoxWithTopLeftLocation:a3 bottomRightLocation:a4 options:a5];
  v6 = [v5 executeQuery];

  return v6;
}

+ (id)fetchAssetsContainingAllPersons:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v5 firstObject];
    v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v7];

    v9 = [v8 managedObjectContext];
    v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__PHAsset_fetchAssetsContainingAllPersons_options___block_invoke;
    v14[3] = &unk_1E75AA278;
    v15 = v5;
    v16 = v9;
    v11 = v9;
    v12 = [PHObject authorizationAwareFetchResultWithOptions:v10 fetchBlock:v14];
  }

  else
  {
    v12 = objc_alloc_init(PHFetchResult);
  }

  return v12;
}

PHFetchResult *__51__PHAsset_fetchAssetsContainingAllPersons_options___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v26 + 1) + 8 * i) objectID];
        [v4 addObject:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__22497;
  v24 = __Block_byref_object_dispose__22498;
  v25 = 0;
  v10 = *(a1 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__PHAsset_fetchAssetsContainingAllPersons_options___block_invoke_2;
  v16[3] = &unk_1E75AA3F8;
  v19 = &v20;
  v11 = v4;
  v17 = v11;
  v18 = *(a1 + 40);
  [v10 performBlockAndWait:v16];
  v12 = v21[5];
  if (v12)
  {
    v13 = [PHAsset fetchVisibleAssetsWithObjectIDs:v12 options:v3];
  }

  else
  {
    v13 = objc_alloc_init(PHFetchResult);
  }

  v14 = v13;

  _Block_object_dispose(&v20, 8);

  return v14;
}

uint64_t __51__PHAsset_fetchAssetsContainingAllPersons_options___block_invoke_2(void *a1)
{
  *(*(a1[6] + 8) + 40) = [MEMORY[0x1E69BE3D0] assetIDsWithAllPersonsFromPersonIDs:a1[4] inContext:a1[5]];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)fetchAssetsGroupedByFaceUUIDForFaces:(id)a3 fetchPropertySets:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__22497;
  v34 = __Block_byref_object_dispose__22498;
  v35 = 0;
  v7 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v5;
  v9 = 0;
  v10 = 0;
  v11 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v11)
  {
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 uuid];
        [v7 addObject:v15];

        if (!v9)
        {
          v16 = [v14 photoLibrary];

          v9 = [v16 photoLibrary];
          v10 = v16;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v11);
  }

  v17 = MEMORY[0x1E69BE540];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __66__PHAsset_fetchAssetsGroupedByFaceUUIDForFaces_fetchPropertySets___block_invoke;
  v22[3] = &unk_1E75A8890;
  v18 = v10;
  v23 = v18;
  v19 = v6;
  v24 = v19;
  v25 = &v30;
  if (MEMORY[0x19EAF3390]([v17 batchFetchAssetsByFaceUUIDWithFaceUUIDs:v7 library:v9 completion:v22]))
  {
    plslogGreenTeaReadingPhotosOrVideos();
  }

  v20 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v20;
}

void __66__PHAsset_fetchAssetsGroupedByFaceUUIDForFaces_fetchPropertySets___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__PHAsset_fetchAssetsGroupedByFaceUUIDForFaces_fetchPropertySets___block_invoke_2;
  v10[3] = &unk_1E75A6F78;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v6];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __66__PHAsset_fetchAssetsGroupedByFaceUUIDForFaces_fetchPropertySets___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [(PHObjectPLAdapter *)[PHAssetPLAdapter alloc] initWithPLManagedObject:v5 photoLibrary:*(a1 + 32)];

  v7 = [(PHAssetPLAdapter *)v8 newObjectWithPropertySets:*(a1 + 40)];
  [*(a1 + 48) setObject:v7 forKeyedSubscript:v6];
}

+ (id)fetchAssetsGroupedByFaceUUIDForFaces:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"PHAssetPropertySetCore";
  v9[1] = @"PHAssetPropertySetOriginalMetadata";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v9 count:2];
  v7 = [a1 fetchAssetsGroupedByFaceUUIDForFaces:v5 fetchPropertySets:v6];

  return v7;
}

+ (int64_t)countOfAssetsWithLocationFromUUIDs:(id)a3 photoLibrary:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v6 = [a4 librarySpecificFetchOptions];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"locationData != nil && uuid in %@", v5];

  [v6 setInternalPredicate:v7];
  [v6 setInternalSortDescriptors:MEMORY[0x1E695E0F0]];
  [v6 setShouldPrefetchCount:1];
  [v6 setWantsIncrementalChangeDetails:0];
  v8 = [PHAsset fetchAssetsWithOptions:v6];
  v9 = [v8 count];

  return v9;
}

+ (BOOL)_isLivePhotoWithPhotoIris:(BOOL)a3 hasAdjustments:(BOOL)a4 videoCpDuration:(int64_t)a5 videoCPVisibility:(unsigned __int16)a6 sourceType:(unint64_t)a7
{
  v7 = a6;
  v8 = a4;
  v9 = a3;
  v10 = [MEMORY[0x1E69BE540] isPhotoIrisPlaceholderWithPhotoIris:a3 videoCpDuration:a5 isCloudShared:a7 == 2 videoCpFilePath:0];
  v11 = MEMORY[0x1E69BE540];

  return [v11 canPlayPhotoIrisWithPhotoIris:v9 photoIrisPlaceholder:v10 hasAdjustments:v8 videoCpVisibilityState:v7];
}

+ (void)_batchFetchAdditionalPropertySetsIfNeeded:(id)a3 forAssets:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _unfetchedPropertySetsForAssets:v6 fromPropertySets:v5];
  if ([v7 count])
  {
    v30 = v5;
    v8 = [objc_opt_class() _extendedPropertyFetchHintsForPropertySets:v5];
    v31 = [MEMORY[0x1E695DF70] array];
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
    v28 = v7;
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v38;
      v15 = v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          if (!v13)
          {
            v13 = [*(*(&v37 + 1) + 8 * i) photoLibrary];
          }

          v18 = [v17 objectID];
          [v31 addObject:v18];

          v19 = [v17 uuid];
          [v9 setObject:v17 forKeyedSubscript:v19];
        }

        v12 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
      v15 = v31;
    }

    v27 = [v13 fetchDictionariesByPHClassForOIDs:v15 propertyHint:v8 includeTrash:1 overrideWithPHClass:0];
    [v27 objectForKey:objc_opt_class()];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v36 = 0u;
    v20 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v33 + 1) + 8 * j);
          v25 = [v24 objectForKeyedSubscript:@"uuid"];
          v26 = [v9 objectForKeyedSubscript:v25];
          [v26 _createExtendedPropertySetsIfNeededWithPropertyHint:v8 fetchDictionary:v24];
          [v26 addFetchPropertyHint:v8];
        }

        v21 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);
    }

    v6 = v29;
    v5 = v30;
    v7 = v28;
  }
}

+ (id)_unfetchedPropertySetsForAssets:(id)a3 fromPropertySets:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) _unfetchedPropertySetsFromPropertySets:{v6, v15}];
        [v7 unionSet:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)propertySetAccessorsByPropertySet
{
  pl_dispatch_once();
  v2 = propertySetAccessorsByPropertySet_pl_once_object_21;

  return v2;
}

void __44__PHAsset_propertySetAccessorsByPropertySet__block_invoke()
{
  v4[33] = *MEMORY[0x1E69E9840];
  v3[0] = @"PHAssetPropertySetIdentifier";
  v3[1] = @"PHAssetPropertySetCore";
  v4[0] = @"self";
  v4[1] = @"self";
  v3[2] = @"PHAssetPropertySetPlacesCore";
  v3[3] = @"PHAssetPropertySetOriginalMetadata";
  v4[2] = @"self";
  v4[3] = @"originalMetadataProperties";
  v3[4] = @"PHAssetPropertySetPhotosOneUp";
  v3[5] = @"PHAssetPropertySetLocalDate";
  v4[4] = @"photosOneUpProperties";
  v4[5] = @"localDateProperties";
  v3[6] = @"PHAssetPropertySetPhotosInfoPanelExtended";
  v3[7] = @"PHAssetPropertySetPhotosSmartStyleExtended";
  v4[6] = @"photosInfoPanelExtendedProperties";
  v4[7] = @"photosSmartStyleExtendedProperties";
  v3[8] = @"PHAssetPropertySetPhotoIris";
  v3[9] = @"PHAssetPropertySetDescription";
  v4[8] = @"photoIrisProperties";
  v4[9] = @"descriptionProperties";
  v3[10] = @"PHAssetPropertySetCloudShared";
  v3[11] = @"PHAssetPropertySetComments";
  v4[10] = @"cloudSharedProperties";
  v4[11] = @"commentProperties";
  v3[12] = @"PHAssetPropertySetSceneAnalysis";
  v3[13] = @"PHAssetPropertySetAnalysisState";
  v4[12] = @"sceneAnalysisProperties";
  v4[13] = @"assetAnalysisStateProperties";
  v3[14] = @"PHAssetPropertySetUserActivity";
  v3[15] = @"PHAssetPropertySetFaceWorker";
  v4[14] = @"assetUserActivityProperties";
  v4[15] = @"self";
  v3[16] = @"PHAssetPropertySetImageManager";
  v3[17] = @"PHAssetPropertySetCuration";
  v4[16] = @"self";
  v4[17] = @"curationProperties";
  v3[18] = @"PHAssetPropertySetAesthetic";
  v3[19] = @"PHAssetPropertySetMediaAnalysis";
  v4[18] = @"aestheticProperties";
  v4[19] = @"mediaAnalysisProperties";
  v3[20] = @"PHAssetPropertySetCharacterRecognition";
  v3[21] = @"PHAssetPropertySetTextUnderstanding";
  v4[20] = @"characterRecognitionProperties";
  v4[21] = @"textUnderstandingProperties";
  v3[22] = @"PHAssetPropertySetVisualSearch";
  v3[23] = @"PHAssetPropertySetImport";
  v4[22] = @"visualSearchProperties";
  v4[23] = @"importProperties";
  v3[24] = @"PHAssetPropertySetSceneprint";
  v3[25] = @"PHAssetPropertySetDestinationAssetCopy";
  v4[24] = @"sceneprintProperties";
  v4[25] = @"destinationAssetCopyProperties";
  v3[26] = @"PHAssetPropertySetKeywords";
  v3[27] = @"PHAssetPropertySetGridMetadata";
  v4[26] = @"keywordProperties";
  v4[27] = @"gridMetadataProperties";
  v3[28] = @"PHAssetPropertySetCoarseLocation";
  v3[29] = @"PHAssetPropertySetLibraryScope";
  v4[28] = @"coarseLocationProperties";
  v4[29] = @"libraryScopeProperties";
  v3[30] = @"PHAssetPropertySetCloudLocalState";
  v3[31] = @"PHAssetPropertySetStoryPlayback";
  v4[30] = @"cloudLocalStateProperties";
  v4[31] = @"StoryPlaybackProperties";
  v3[32] = @"PHAssetPropertySetIconicScore";
  v4[32] = @"iconicScoreProperties";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:33];
  v1 = [v0 copy];
  v2 = propertySetAccessorsByPropertySet_pl_once_object_21;
  propertySetAccessorsByPropertySet_pl_once_object_21 = v1;
}

+ (Class)propertySetClassForPropertySet:(id)a3
{
  v3 = a3;
  pl_dispatch_once();
  v4 = [propertySetClassForPropertySet__pl_once_object_20 objectForKey:v3];

  return v4;
}

void __42__PHAsset_propertySetClassForPropertySet___block_invoke()
{
  v4[39] = *MEMORY[0x1E69E9840];
  v3[0] = @"PHAssetPropertySetIdentifier";
  v4[0] = objc_opt_class();
  v3[1] = @"PHAssetPropertySetCore";
  v4[1] = objc_opt_class();
  v3[2] = @"PHAssetPropertySetPlacesCore";
  v4[2] = objc_opt_class();
  v3[3] = @"PHAssetPropertySetOriginalMetadata";
  v4[3] = objc_opt_class();
  v3[4] = @"PHAssetPropertySetPhotosOneUp";
  v4[4] = objc_opt_class();
  v3[5] = @"PHAssetPropertySetLocalDate";
  v4[5] = objc_opt_class();
  v3[6] = @"PHAssetPropertySetPhotosInfoPanelExtended";
  v4[6] = objc_opt_class();
  v3[7] = @"PHAssetPropertySetPhotosSmartStyleExtended";
  v4[7] = objc_opt_class();
  v3[8] = @"PHAssetPropertySetPhotosInfoPanelLocation";
  v4[8] = objc_opt_class();
  v3[9] = @"PHAssetPropertySetPhotoIris";
  v4[9] = objc_opt_class();
  v3[10] = @"PHAssetPropertySetDescription";
  v4[10] = objc_opt_class();
  v3[11] = @"PHAssetPropertySetCloudShared";
  v4[11] = objc_opt_class();
  v3[12] = @"PHAssetPropertySetComments";
  v4[12] = objc_opt_class();
  v3[13] = @"PHAssetPropertySetSceneAnalysis";
  v4[13] = objc_opt_class();
  v3[14] = @"PHAssetPropertySetAnalysisState";
  v4[14] = objc_opt_class();
  v3[15] = @"PHAssetPropertySetUserActivity";
  v4[15] = objc_opt_class();
  v3[16] = @"PHAssetPropertySetFaceWorker";
  v4[16] = objc_opt_class();
  v3[17] = @"PHAssetPropertySetImageManager";
  v4[17] = objc_opt_class();
  v3[18] = @"PHAssetPropertySetCuration";
  v4[18] = objc_opt_class();
  v3[19] = @"PHAssetPropertySetAesthetic";
  v4[19] = objc_opt_class();
  v3[20] = @"PHAssetPropertySetMediaAnalysis";
  v4[20] = objc_opt_class();
  v3[21] = @"PHAssetPropertySetPhotoAnalysisWallpaperProperties";
  v4[21] = objc_opt_class();
  v3[22] = @"PHAssetPropertySetCharacterRecognition";
  v4[22] = objc_opt_class();
  v3[23] = @"PHAssetPropertySetTextUnderstanding";
  v4[23] = objc_opt_class();
  v3[24] = @"PHAssetPropertySetVisualSearch";
  v4[24] = objc_opt_class();
  v3[25] = @"PHAssetPropertySetImport";
  v4[25] = objc_opt_class();
  v3[26] = @"PHAssetPropertySetSceneprint";
  v4[26] = objc_opt_class();
  v3[27] = @"PHAssetPropertySetDestinationAssetCopy";
  v4[27] = objc_opt_class();
  v3[28] = @"PHAssetPropertySetKeywords";
  v4[28] = objc_opt_class();
  v3[29] = @"PHAssetPropertySetGridMetadata";
  v4[29] = objc_opt_class();
  v3[30] = @"PHAssetPropertySetCoarseLocation";
  v4[30] = objc_opt_class();
  v3[31] = @"PHAssetPropertySetLibraryScope";
  v4[31] = objc_opt_class();
  v3[32] = @"PHAssetPropertySetCameraCaptureDevice";
  v4[32] = objc_opt_class();
  v3[33] = @"PHAssetPropertySetCloudLocalState";
  v4[33] = objc_opt_class();
  v3[34] = @"PHAssetPropertySetMontage";
  v4[34] = objc_opt_class();
  v3[35] = @"PHAssetPropertySetLocationData";
  v4[35] = objc_opt_class();
  v3[36] = @"PHAssetPropertySetPTP";
  v4[36] = objc_opt_class();
  v3[37] = @"PHAssetPropertySetIconicScore";
  v4[37] = objc_opt_class();
  v3[38] = @"PHAssetPropertySetStoryPlayback";
  v4[38] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:39];
  v1 = [v0 copy];
  v2 = propertySetClassForPropertySet__pl_once_object_20;
  propertySetClassForPropertySet__pl_once_object_20 = v1;
}

+ (id)_transformMediaSubtypeReferences:(id)a3 inComparisonPredicate:(id)a4 options:(id)a5
{
  v71 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v52 = a4;
  v49 = a5;
  if (_transformMediaSubtypeReferences_inComparisonPredicate_options__onceToken != -1)
  {
    dispatch_once(&_transformMediaSubtypeReferences_inComparisonPredicate_options__onceToken, &__block_literal_global_688);
  }

  v57 = [MEMORY[0x1E695DF70] array];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v7;
  v53 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v53)
  {
    v51 = *v63;
    v8 = 0x1E696A000uLL;
    do
    {
      v9 = 0;
      do
      {
        if (*v63 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v54 = v9;
        v10 = [_transformMediaSubtypeReferences_inComparisonPredicate_options___allSubtypesByMediaSubtypeKey objectForKeyedSubscript:*(*(&v62 + 1) + 8 * v9)];
        v11 = [v10 filteredArrayUsingPredicate:v52];

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v58 objects:v69 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v59;
          v55 = v12;
          v56 = *v59;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v59 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v58 + 1) + 8 * i);
              v18 = [v17 objectForKeyedSubscript:@"mediaSubtypes"];
              if (!v18)
              {
                v18 = [v17 objectForKeyedSubscript:@"mediaSubtype"];
              }

              v19 = [v18 integerValue];
              if (v19 >= 0x10000)
              {
                if (v19 < 0x100000)
                {
                  if (v19 >= 0x40000)
                  {
                    if (v19 == 0x40000)
                    {
                      v25 = *(v8 + 3608);
                      v26 = 102;
                    }

                    else
                    {
                      if (v19 != 0x80000)
                      {
                        goto LABEL_64;
                      }

                      v25 = *(v8 + 3608);
                      v26 = 103;
                    }
                  }

                  else
                  {
                    if (v19 != 0x10000)
                    {
                      if (v19 != 0x20000)
                      {
                        goto LABEL_64;
                      }

                      [*(v8 + 3608) predicateWithFormat:@"%K = %d OR %K = %d", @"highFrameRateState", 2, @"highFrameRateState", 3];
                      goto LABEL_60;
                    }

                    v25 = *(v8 + 3608);
                    v26 = 100;
                  }
                }

                else
                {
                  if (v19 < 0x400000)
                  {
                    if (v19 == 0x100000)
                    {
                      v20 = *(v8 + 3608);
                      v41 = 5;
                      goto LABEL_57;
                    }

                    if (v19 != 0x200000)
                    {
                      goto LABEL_64;
                    }

                    v20 = *(v8 + 3608);
                    v46 = 2;
                    v40 = @"depthType";
                    goto LABEL_58;
                  }

                  if (v19 != 0x400000)
                  {
                    if (v19 != 0x800000)
                    {
                      if (v19 != 0x1000000)
                      {
                        goto LABEL_64;
                      }

                      v20 = *(v8 + 3608);
                      v21 = @"currentSleetCast > 0";
LABEL_59:
                      [v20 predicateWithFormat:v21, v45, v46, v47, v48];
                      v42 = LABEL_60:;
                      goto LABEL_61;
                    }

                    v20 = *(v8 + 3608);
                    v41 = 11;
LABEL_57:
                    v46 = v41;
                    v40 = @"hdrType";
LABEL_58:
                    v45 = v40;
                    v21 = @"%K = %d";
                    goto LABEL_59;
                  }

                  v25 = *(v8 + 3608);
                  v26 = 104;
                }

LABEL_55:
                [v25 predicateWithFormat:@"kindSubtype = %d", v26, v46, v47, v48];
                goto LABEL_60;
              }

              if (v19 <= 15)
              {
                if (v19 > 3)
                {
                  if (v19 != 4)
                  {
                    if (v19 != 8)
                    {
                      goto LABEL_64;
                    }

                    v23 = [*(v8 + 3608) predicateWithFormat:@"%K = %d", @"kindSubtype", 2];
                    v27 = [*(v8 + 3608) predicateWithFormat:@"%K != %d", @"videoCpDurationValue", 0];
                    v28 = [MEMORY[0x1E69BE540] videoComplementVisibilityStatePlayablePredicate];
                    v29 = MEMORY[0x1E696AB28];
                    v68[0] = v23;
                    v68[1] = v27;
                    v68[2] = v28;
                    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:3];
                    v31 = [v29 andPredicateWithSubpredicates:v30];

                    v15 = v56;
                    [v57 addObject:v31];

                    v8 = 0x1E696A000;
                    goto LABEL_63;
                  }

                  v25 = *(v8 + 3608);
                  v26 = 10;
                }

                else
                {
                  if (v19 != 1)
                  {
                    if (v19 != 2)
                    {
                      goto LABEL_64;
                    }

                    v22 = [*(v8 + 3608) predicateWithFormat:@"%K = %d", @"hdrType", 2];
                    [v57 addObject:v22];

                    v15 = v56;
                    v23 = [*(v8 + 3608) predicateWithFormat:@"%K = %d", @"hdrType", 3];
                    v24 = v57;
                    v12 = v55;
                    goto LABEL_62;
                  }

                  v25 = *(v8 + 3608);
                  v26 = 1;
                }

                goto LABEL_55;
              }

              if (v19 > 511)
              {
                if (v19 != 512)
                {
                  if (v19 != 1024)
                  {
                    goto LABEL_64;
                  }

                  v23 = [*(v8 + 3608) predicateWithFormat:@"%K != %d", @"spatialType", 0];
                  v32 = [MEMORY[0x1E69BE540] predicateForUnadjustedAssetsWithKeyPathToAsset:0];
                  v33 = [*(v8 + 3608) predicateWithFormat:@"(%K & %d) != 0", @"additionalAttributes.unmanagedAdjustment.adjustmentRenderTypes", 4096];
                  v34 = MEMORY[0x1E696AB28];
                  v67[0] = v32;
                  v67[1] = v33;
                  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
                  v36 = [v34 orPredicateWithSubpredicates:v35];

                  v37 = MEMORY[0x1E696AB28];
                  v66[0] = v23;
                  v66[1] = v36;
                  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
                  v39 = [v37 andPredicateWithSubpredicates:v38];

                  v12 = v55;
                  [v57 addObject:v39];

                  v15 = v56;
                  v8 = 0x1E696A000;

                  goto LABEL_63;
                }

                v20 = *(v8 + 3608);
                v41 = 10;
                goto LABEL_57;
              }

              if (v19 != 16)
              {
                if (v19 != 64)
                {
                  goto LABEL_64;
                }

                [*(v8 + 3608) predicateWithFormat:@"playbackStyle = %d", 2, v46, v47, v48];
                goto LABEL_60;
              }

              v42 = [MEMORY[0x1E69BE540] predicateForDepthEffectPhotos];
LABEL_61:
              v23 = v42;
              v24 = v57;
LABEL_62:
              [v24 addObject:v23];
LABEL_63:

LABEL_64:
            }

            v14 = [v12 countByEnumeratingWithState:&v58 objects:v69 count:16];
          }

          while (v14);
        }

        v9 = v54 + 1;
      }

      while (v54 + 1 != v53);
      v53 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v53);
  }

  if ([v57 count])
  {
    [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v57];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:0];
  }
  v43 = ;

  return v43;
}

void __74__PHAsset__transformMediaSubtypeReferences_inComparisonPredicate_options___block_invoke()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = [MEMORY[0x1E695DF70] array];
  _PHAllAssetMediaSubtypes();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v17 = 0u;
  v2 = [obj countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      v5 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * v5);
        v22 = @"mediaSubtypes";
        v23 = v6;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        [v1 addObject:v7];

        v20 = @"mediaSubtype";
        v21 = v6;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        [v0 addObject:v8];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v3);
  }

  v18[0] = @"mediaSubtype";
  v9 = [v0 copy];
  v18[1] = @"mediaSubtypes";
  v19[0] = v9;
  v10 = [v1 copy];
  v19[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v12 = _transformMediaSubtypeReferences_inComparisonPredicate_options___allSubtypesByMediaSubtypeKey;
  _transformMediaSubtypeReferences_inComparisonPredicate_options___allSubtypesByMediaSubtypeKey = v11;
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PHAsset_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transformValueExpression_forKeyPath__onceToken_22932 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_22932, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_22933 containsObject:v7])
  {
    v8 = v6;
  }

  else if ([v6 expressionType])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v6 constantValue];
    if (v9)
    {
      if ([v7 isEqualToString:@"mediaType"])
      {
        v10 = PHQueryTransformExpressionConstantValue(v9, &__block_literal_global_648);
        v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v10];
      }

      else
      {
        v8 = 0;
      }

      if ([v7 isEqualToString:@"contentType"])
      {
        v11 = PHQueryTransformExpressionConstantValue(v9, &__block_literal_global_651);
        v12 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v11];

        v8 = v12;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void __47__PHAsset_transformValueExpression_forKeyPath___block_invoke()
{
  v4[16] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"creationDate";
  v4[1] = @"modificationDate";
  v4[2] = @"addedDate";
  v4[3] = @"pixelWidth";
  v4[4] = @"pixelHeight";
  v4[5] = @"duration";
  v4[6] = @"favorite";
  v4[7] = @"isFavorite";
  v4[8] = @"hidden";
  v4[9] = @"isHidden";
  v4[10] = @"burstIdentifier";
  v4[11] = @"playbackStyle";
  v4[12] = @"playbackVariation";
  v4[13] = @"hdrGain";
  v4[14] = @"analysisStateModificationDate";
  v4[15] = @"curationProperties.importedByBundleIdentifier";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:16];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_22933;
  transformValueExpression_forKeyPath___passThroughSet_22933 = v2;
}

id __47__PHAsset_transformValueExpression_forKeyPath___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 identifier];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

id __47__PHAsset_transformValueExpression_forKeyPath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 integerValue];
    v4 = 0x2000100000003uLL >> (16 * v3);
    if (v3 >= 4)
    {
      LOBYTE(v4) = 3;
    }

    v5 = [MEMORY[0x1E696AD98] numberWithShort:v4 & 3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
{
  if (propertiesToFetchWithHint__onceToken_22954 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_22954, &__block_literal_global_593);
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__22497;
  v9 = __Block_byref_object_dispose__22498;
  v10 = 0;
  pl_dispatch_sync();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __37__PHAsset_propertiesToFetchWithHint___block_invoke_596(uint64_t a1)
{
  v2 = propertiesToFetchWithHint__propertiesToFetchByHint_22956;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
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

    v10 = propertiesToFetchWithHint__propertiesToFetchByHint_22956;
    v12 = [MEMORY[0x1E695DEC8] arrayWithArray:*(*(*(a1 + 32) + 8) + 40)];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
    [v10 setObject:v12 forKey:v11];
  }
}

uint64_t __37__PHAsset_propertiesToFetchWithHint___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = propertiesToFetchWithHint__propertiesToFetchByHint_22956;
  propertiesToFetchWithHint__propertiesToFetchByHint_22956 = v0;

  propertiesToFetchWithHint__propertyQueue_22955 = dispatch_queue_create("com.apple.photos.assetpropertyhints", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_composePropertiesToFetchWithHint:(unint64_t)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    v8 = [a1 identifierPropertiesToFetch];
    [a1 extendPropertiesToFetch:v5 withProperties:v8];

    if ((a3 & 2) == 0)
    {
LABEL_3:
      if ((a3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [a1 corePropertiesToFetch];
  [a1 extendPropertiesToFetch:v5 withProperties:v9];

  if ((a3 & 4) == 0)
  {
LABEL_4:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  v10 = [a1 locationPropertiesToFetch];
  [a1 extendPropertiesToFetch:v5 withProperties:v10];

  if ((a3 & 0x1000) == 0)
  {
LABEL_5:
    if ((a3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  v11 = [a1 imageManagerPropertiesToFetch];
  [a1 extendPropertiesToFetch:v5 withProperties:v11];

  if ((a3 & 8) == 0)
  {
LABEL_6:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x10) == 0)
  {
LABEL_7:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x200000) == 0)
  {
LABEL_8:
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x100000) == 0)
  {
LABEL_9:
    if ((a3 & 0x8000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x8000000000) == 0)
  {
LABEL_10:
    if ((a3 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x1000000) == 0)
  {
LABEL_11:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x20) == 0)
  {
LABEL_12:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x40) == 0)
  {
LABEL_13:
    if ((a3 & 0x10000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x10000000000) == 0)
  {
LABEL_14:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x80) == 0)
  {
LABEL_15:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x100) == 0)
  {
LABEL_16:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x200) == 0)
  {
LABEL_17:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x400) == 0)
  {
LABEL_18:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x2000) == 0)
  {
LABEL_19:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x800) == 0)
  {
LABEL_20:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  v12 = [a1 faceWorkerPropertiesToFetch];
  [a1 extendPropertiesToFetch:v5 withProperties:v12];

  if ((a3 & 0x4000) == 0)
  {
LABEL_21:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x8000) == 0)
  {
LABEL_22:
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x10000) == 0)
  {
LABEL_23:
    if ((a3 & 0x200000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x200000000) == 0)
  {
LABEL_24:
    if ((a3 & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x8000000) == 0)
  {
LABEL_25:
    if ((a3 & 0x20000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x20000000000) == 0)
  {
LABEL_26:
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x40000000) == 0)
  {
LABEL_27:
    if ((a3 & 0x20000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x20000) == 0)
  {
LABEL_28:
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x40000) == 0)
  {
LABEL_29:
    if ((a3 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x80000) == 0)
  {
LABEL_30:
    if ((a3 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x400000) == 0)
  {
LABEL_31:
    if ((a3 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x800000) == 0)
  {
LABEL_32:
    if ((a3 & 0x2000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x2000000) == 0)
  {
LABEL_33:
    if ((a3 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x4000000) == 0)
  {
LABEL_34:
    if ((a3 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x10000000) == 0)
  {
LABEL_35:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_78:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x20000000) != 0)
  {
LABEL_36:
    [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  }

LABEL_37:
  if (a3 >= 0xFFFFFFFF80000000)
  {
    [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  }

  else if ((a3 & 0x100000000) == 0)
  {
    if ((a3 & 0x400000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_82;
  }

  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x400000000) == 0)
  {
LABEL_40:
    if ((a3 & 0x2000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_83;
  }

LABEL_82:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x2000000000) == 0)
  {
LABEL_41:
    if ((a3 & 0x800000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_84:
    [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
    if ((a3 & 0x4000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_83:
  [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  if ((a3 & 0x800000000) != 0)
  {
    goto LABEL_84;
  }

LABEL_42:
  if ((a3 & 0x4000000000) != 0)
  {
LABEL_43:
    [a1 extendPropertiesToFetch:v5 withPropertySetClass:objc_opt_class()];
  }

LABEL_44:
  v6 = v5;

  return v5;
}

+ (id)imageManagerPropertiesToFetch
{
  pl_dispatch_once();
  v2 = imageManagerPropertiesToFetch_pl_once_object_17;

  return v2;
}

void __40__PHAsset_imageManagerPropertiesToFetch__block_invoke()
{
  v3[17] = *MEMORY[0x1E69E9840];
  v3[0] = @"savedAssetType";
  v3[1] = @"bundleScope";
  v3[2] = @"avalanchePickType";
  v3[3] = @"avalancheKind";
  v3[4] = @"filename";
  v3[5] = @"adjustmentsState";
  v3[6] = @"width";
  v3[7] = @"height";
  v3[8] = @"uniformTypeIdentifier";
  v3[9] = @"thumbnailIndex";
  v3[10] = @"kind";
  v3[11] = @"kindSubtype";
  v3[12] = @"directory";
  v3[13] = @"complete";
  v3[14] = @"dateCreated";
  v3[15] = @"originalColorSpace";
  v3[16] = @"imageRequestHints";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:17];
  v1 = [v0 copy];
  v2 = imageManagerPropertiesToFetch_pl_once_object_17;
  imageManagerPropertiesToFetch_pl_once_object_17 = v1;
}

+ (id)faceWorkerPropertiesToFetch
{
  pl_dispatch_once();
  v2 = faceWorkerPropertiesToFetch_pl_once_object_16;

  return v2;
}

void __38__PHAsset_faceWorkerPropertiesToFetch__block_invoke()
{
  v3[11] = *MEMORY[0x1E69E9840];
  v3[0] = @"width";
  v3[1] = @"height";
  v3[2] = @"adjustmentTimestamp";
  v3[3] = @"dateCreated";
  v3[4] = @"faceAdjustmentVersion";
  v3[5] = @"additionalAttributes.faceAnalysisVersion";
  v3[6] = @"kind";
  v3[7] = @"uniformTypeIdentifier";
  v3[8] = @"filename";
  v3[9] = @"directory";
  v3[10] = @"adjustmentsState";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:11];
  v1 = [v0 copy];
  v2 = faceWorkerPropertiesToFetch_pl_once_object_16;
  faceWorkerPropertiesToFetch_pl_once_object_16 = v1;
}

+ (id)propertySetsForPropertyFetchHints:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [@"PHAssetPropertySetIdentifier" length];
  if ((a3 & 1) != 0 && v5)
  {
    [v4 addObject:@"PHAssetPropertySetIdentifier"];
  }

  v6 = [@"PHAssetPropertySetCore" length];
  if ((a3 & 2) != 0 && v6)
  {
    [v4 addObject:@"PHAssetPropertySetCore"];
  }

  v7 = [@"PHAssetPropertySetLocalDate" length];
  if ((a3 & 0x200000) != 0 && v7)
  {
    [v4 addObject:@"PHAssetPropertySetLocalDate"];
  }

  v8 = [@"PHAssetPropertySetPlacesCore" length];
  if ((a3 & 4) != 0 && v8)
  {
    [v4 addObject:@"PHAssetPropertySetPlacesCore"];
  }

  v9 = [@"PHAssetPropertySetOriginalMetadata" length];
  if ((a3 & 8) != 0 && v9)
  {
    [v4 addObject:@"PHAssetPropertySetOriginalMetadata"];
  }

  v10 = [@"PHAssetPropertySetPhotosOneUp" length];
  if ((a3 & 0x10) != 0 && v10)
  {
    [v4 addObject:@"PHAssetPropertySetPhotosOneUp"];
  }

  v11 = [@"PHAssetPropertySetPhotosInfoPanelExtended" length];
  if ((a3 & 0x100000) != 0 && v11)
  {
    [v4 addObject:@"PHAssetPropertySetPhotosInfoPanelExtended"];
  }

  v12 = [@"PHAssetPropertySetPhotosSmartStyleExtended" length];
  if ((a3 & 0x8000000000) != 0 && v12)
  {
    [v4 addObject:@"PHAssetPropertySetPhotosSmartStyleExtended"];
  }

  v13 = [@"PHAssetPropertySetPhotosInfoPanelLocation" length];
  if ((a3 & 0x1000000) != 0 && v13)
  {
    [v4 addObject:@"PHAssetPropertySetPhotosInfoPanelLocation"];
  }

  v14 = [@"PHAssetPropertySetPhotoIris" length];
  if ((a3 & 0x20) != 0 && v14)
  {
    [v4 addObject:@"PHAssetPropertySetPhotoIris"];
  }

  v15 = [@"PHAssetPropertySetDescription" length];
  if ((a3 & 0x40) != 0 && v15)
  {
    [v4 addObject:@"PHAssetPropertySetDescription"];
  }

  v16 = [@"PHAssetPropertySetCloudShared" length];
  if ((a3 & 0x10000000000) != 0 && v16)
  {
    [v4 addObject:@"PHAssetPropertySetCloudShared"];
  }

  v17 = [@"PHAssetPropertySetComments" length];
  if ((a3 & 0x80) != 0 && v17)
  {
    [v4 addObject:@"PHAssetPropertySetComments"];
  }

  v18 = [@"PHAssetPropertySetSceneAnalysis" length];
  if ((a3 & 0x100) != 0 && v18)
  {
    [v4 addObject:@"PHAssetPropertySetSceneAnalysis"];
  }

  v19 = [@"PHAssetPropertySetAnalysisState" length];
  if ((a3 & 0x200) != 0 && v19)
  {
    [v4 addObject:@"PHAssetPropertySetAnalysisState"];
  }

  v20 = [@"PHAssetPropertySetUserActivity" length];
  if ((a3 & 0x400) != 0 && v20)
  {
    [v4 addObject:@"PHAssetPropertySetUserActivity"];
  }

  v21 = [@"PHAssetPropertySetFaceWorker" length];
  if ((a3 & 0x800) != 0 && v21)
  {
    [v4 addObject:@"PHAssetPropertySetFaceWorker"];
  }

  v22 = [@"PHAssetPropertySetImageManager" length];
  if ((a3 & 0x1000) != 0 && v22)
  {
    [v4 addObject:@"PHAssetPropertySetImageManager"];
  }

  v23 = [@"PHAssetPropertySetAdjustment" length];
  if ((a3 & 0x2000) != 0 && v23)
  {
    [v4 addObject:@"PHAssetPropertySetAdjustment"];
  }

  v24 = [@"PHAssetPropertySetCuration" length];
  if ((a3 & 0x4000) != 0 && v24)
  {
    [v4 addObject:@"PHAssetPropertySetCuration"];
  }

  v25 = [@"PHAssetPropertySetAesthetic" length];
  if ((a3 & 0x8000) != 0 && v25)
  {
    [v4 addObject:@"PHAssetPropertySetAesthetic"];
  }

  v26 = [@"PHAssetPropertySetMediaAnalysis" length];
  if ((a3 & 0x10000) != 0 && v26)
  {
    [v4 addObject:@"PHAssetPropertySetMediaAnalysis"];
  }

  v27 = [@"PHAssetPropertySetPhotoAnalysisWallpaperProperties" length];
  if ((a3 & 0x200000000) != 0 && v27)
  {
    [v4 addObject:@"PHAssetPropertySetPhotoAnalysisWallpaperProperties"];
  }

  v28 = [@"PHAssetPropertySetCharacterRecognition" length];
  if ((a3 & 0x8000000) != 0 && v28)
  {
    [v4 addObject:@"PHAssetPropertySetCharacterRecognition"];
  }

  v29 = [@"PHAssetPropertySetTextUnderstanding" length];
  if ((a3 & 0x20000000000) != 0 && v29)
  {
    [v4 addObject:@"PHAssetPropertySetTextUnderstanding"];
  }

  v30 = [@"PHAssetPropertySetVisualSearch" length];
  if ((a3 & 0x40000000) != 0 && v30)
  {
    [v4 addObject:@"PHAssetPropertySetVisualSearch"];
  }

  v31 = [@"PHAssetPropertySetImport" length];
  if ((a3 & 0x20000) != 0 && v31)
  {
    [v4 addObject:@"PHAssetPropertySetImport"];
  }

  v32 = [@"PHAssetPropertySetSceneprint" length];
  if ((a3 & 0x40000) != 0 && v32)
  {
    [v4 addObject:@"PHAssetPropertySetSceneprint"];
  }

  v33 = [@"PHAssetPropertySetDestinationAssetCopy" length];
  if ((a3 & 0x80000) != 0 && v33)
  {
    [v4 addObject:@"PHAssetPropertySetDestinationAssetCopy"];
  }

  v34 = [@"PHAssetPropertySetKeywords" length];
  if ((a3 & 0x400000) != 0 && v34)
  {
    [v4 addObject:@"PHAssetPropertySetKeywords"];
  }

  v35 = [@"PHAssetPropertySetGridMetadata" length];
  if ((a3 & 0x800000) != 0 && v35)
  {
    [v4 addObject:@"PHAssetPropertySetGridMetadata"];
  }

  v36 = [@"PHAssetPropertySetCoarseLocation" length];
  if ((a3 & 0x2000000) != 0 && v36)
  {
    [v4 addObject:@"PHAssetPropertySetCoarseLocation"];
  }

  v37 = [@"PHAssetPropertySetLibraryScope" length];
  if ((a3 & 0x4000000) != 0 && v37)
  {
    [v4 addObject:@"PHAssetPropertySetLibraryScope"];
  }

  v38 = [@"PHAssetPropertySetCameraCaptureDevice" length];
  if ((a3 & 0x10000000) != 0 && v38)
  {
    [v4 addObject:@"PHAssetPropertySetCameraCaptureDevice"];
  }

  v39 = [@"PHAssetPropertySetCloudLocalState" length];
  if ((a3 & 0x20000000) != 0 && v39)
  {
    [v4 addObject:@"PHAssetPropertySetCloudLocalState"];
  }

  v40 = [@"PHAssetPropertySetMontage" length];
  if (a3 >= 0xFFFFFFFF80000000 && v40)
  {
    [v4 addObject:@"PHAssetPropertySetMontage"];
  }

  v41 = [@"PHAssetPropertySetSpatialMedia" length];
  if ((a3 & 0x100000000) != 0 && v41)
  {
    [v4 addObject:@"PHAssetPropertySetSpatialMedia"];
  }

  v42 = [@"PHAssetPropertySetLocationData" length];
  if ((a3 & 0x400000000) != 0 && v42)
  {
    [v4 addObject:@"PHAssetPropertySetLocationData"];
  }

  v43 = [@"PHAssetPropertySetPTP" length];
  if ((a3 & 0x2000000000) != 0 && v43)
  {
    [v4 addObject:@"PHAssetPropertySetPTP"];
  }

  v44 = [@"PHAssetPropertySetIconicScore" length];
  if ((a3 & 0x800000000) != 0 && v44)
  {
    [v4 addObject:@"PHAssetPropertySetIconicScore"];
  }

  v45 = [@"PHAssetPropertySetStoryPlayback" length];
  if ((a3 & 0x4000000000) != 0 && v45)
  {
    [v4 addObject:@"PHAssetPropertySetStoryPlayback"];
  }

  v46 = [MEMORY[0x1E695DFD8] setWithSet:v4];

  return v46;
}

+ (unint64_t)propertyFetchHintsForPropertySets:(id)a3
{
  v4 = a3;
  v5 = [a1 _extendedPropertyFetchHintsForPropertySets:v4];
  v6 = [v4 containsObject:@"PHAssetPropertySetIdentifier"];

  if (v6)
  {
    return v5;
  }

  else
  {
    return v5 | 2;
  }
}

+ (unint64_t)_extendedPropertyFetchHintsForPropertySets:(id)a3
{
  v3 = a3;
  if ([@"PHAssetPropertySetIdentifier" length])
  {
    v4 = [v3 containsObject:@"PHAssetPropertySetIdentifier"];
  }

  else
  {
    v4 = 0;
  }

  if ([@"PHAssetPropertySetCore" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetCore"))
  {
    v4 |= 2uLL;
  }

  if ([@"PHAssetPropertySetLocalDate" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetLocalDate"))
  {
    v4 |= 0x200000uLL;
  }

  if ([@"PHAssetPropertySetPlacesCore" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetPlacesCore"))
  {
    v4 |= 4uLL;
  }

  if ([@"PHAssetPropertySetOriginalMetadata" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetOriginalMetadata"))
  {
    v4 |= 8uLL;
  }

  if ([@"PHAssetPropertySetPhotosOneUp" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetPhotosOneUp"))
  {
    v4 |= 0x10uLL;
  }

  if ([@"PHAssetPropertySetPhotosInfoPanelExtended" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetPhotosInfoPanelExtended"))
  {
    v4 |= 0x100000uLL;
  }

  if ([@"PHAssetPropertySetPhotosSmartStyleExtended" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetPhotosSmartStyleExtended"))
  {
    v4 |= 0x8000000000uLL;
  }

  if ([@"PHAssetPropertySetPhotosInfoPanelLocation" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetPhotosInfoPanelLocation"))
  {
    v4 |= 0x1000000uLL;
  }

  if ([@"PHAssetPropertySetPhotoIris" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetPhotoIris"))
  {
    v4 |= 0x20uLL;
  }

  if ([@"PHAssetPropertySetDescription" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetDescription"))
  {
    v4 |= 0x40uLL;
  }

  if ([@"PHAssetPropertySetCloudShared" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetCloudShared"))
  {
    v4 |= 0x10000000000uLL;
  }

  if ([@"PHAssetPropertySetComments" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetComments"))
  {
    v4 |= 0x80uLL;
  }

  if ([@"PHAssetPropertySetSceneAnalysis" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetSceneAnalysis"))
  {
    v4 |= 0x100uLL;
  }

  if ([@"PHAssetPropertySetAnalysisState" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetAnalysisState"))
  {
    v4 |= 0x200uLL;
  }

  if ([@"PHAssetPropertySetUserActivity" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetUserActivity"))
  {
    v4 |= 0x400uLL;
  }

  if ([@"PHAssetPropertySetFaceWorker" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetFaceWorker"))
  {
    v4 |= 0x800uLL;
  }

  if ([@"PHAssetPropertySetImageManager" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetImageManager"))
  {
    v4 |= 0x1000uLL;
  }

  if ([@"PHAssetPropertySetAdjustment" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetAdjustment"))
  {
    v4 |= 0x2000uLL;
  }

  if ([@"PHAssetPropertySetCuration" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetCuration"))
  {
    v4 |= 0x4000uLL;
  }

  if ([@"PHAssetPropertySetAesthetic" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetAesthetic"))
  {
    v4 |= 0x8000uLL;
  }

  if ([@"PHAssetPropertySetMediaAnalysis" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetMediaAnalysis"))
  {
    v4 |= 0x10000uLL;
  }

  if ([@"PHAssetPropertySetPhotoAnalysisWallpaperProperties" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetPhotoAnalysisWallpaperProperties"))
  {
    v4 |= 0x200000000uLL;
  }

  if ([@"PHAssetPropertySetCharacterRecognition" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetCharacterRecognition"))
  {
    v4 |= 0x8000000uLL;
  }

  if ([@"PHAssetPropertySetTextUnderstanding" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetTextUnderstanding"))
  {
    v4 |= 0x20000000000uLL;
  }

  if ([@"PHAssetPropertySetVisualSearch" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetVisualSearch"))
  {
    v4 |= 0x40000000uLL;
  }

  if ([@"PHAssetPropertySetImport" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetImport"))
  {
    v4 |= 0x20000uLL;
  }

  if ([@"PHAssetPropertySetSceneprint" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetSceneprint"))
  {
    v4 |= 0x40000uLL;
  }

  if ([@"PHAssetPropertySetDestinationAssetCopy" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetDestinationAssetCopy"))
  {
    v4 |= 0x80000uLL;
  }

  if ([@"PHAssetPropertySetKeywords" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetKeywords"))
  {
    v4 |= 0x400000uLL;
  }

  if ([@"PHAssetPropertySetGridMetadata" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetGridMetadata"))
  {
    v4 |= 0x800000uLL;
  }

  if ([@"PHAssetPropertySetCoarseLocation" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetCoarseLocation"))
  {
    v4 |= 0x2000000uLL;
  }

  if ([@"PHAssetPropertySetLibraryScope" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetLibraryScope"))
  {
    v4 |= 0x4000000uLL;
  }

  if ([@"PHAssetPropertySetCameraCaptureDevice" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetCameraCaptureDevice"))
  {
    v4 |= 0x10000000uLL;
  }

  if ([@"PHAssetPropertySetCloudLocalState" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetCloudLocalState"))
  {
    v4 |= 0x20000000uLL;
  }

  if ([@"PHAssetPropertySetMontage" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetMontage"))
  {
    v4 |= 0xFFFFFFFF80000000;
  }

  if ([@"PHAssetPropertySetSpatialMedia" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetSpatialMedia"))
  {
    v4 |= 0x100000000uLL;
  }

  if ([@"PHAssetPropertySetLocationData" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetLocationData"))
  {
    v4 |= 0x400000000uLL;
  }

  if ([@"PHAssetPropertySetPTP" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetPTP"))
  {
    v4 |= 0x2000000000uLL;
  }

  if ([@"PHAssetPropertySetIconicScore" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetIconicScore"))
  {
    v4 |= 0x800000000uLL;
  }

  if ([@"PHAssetPropertySetStoryPlayback" length] && objc_msgSend(v3, "containsObject:", @"PHAssetPropertySetStoryPlayback"))
  {
    v4 |= 0x4000000000uLL;
  }

  return v4;
}

- (NSNumber)livePhotoSRLCompensationAmount
{
  if ([(PHAsset *)self hasAdjustments])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(PHAsset *)self originalImageProperties];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
    v6 = [v5 objectForKeyedSubscript:@"58"];

    v7 = [v6 unsignedIntValue];
    if (v7 < 0x80000001)
    {
      v3 = 0;
    }

    else
    {
      *&v8 = vcvts_n_f32_u32(v7, 8uLL);
      v3 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    }
  }

  return v3;
}

- (BOOL)isEligibleForSpatialGenerationIncludingStereo:(BOOL)a3
{
  if (!PLIsAlchemistAllowed() || ![(PHAsset *)self isPhoto]|| !a3 && [(PHAsset *)self isSpatialMedia]|| ([(PHAsset *)self mediaSubtypes]& 1) != 0 && ![(PHAsset *)self isSpatialMedia]|| ![PHAsset isEligibleForSpatialGenerationWithPixelSize:[(PHAsset *)self pixelWidth], [(PHAsset *)self pixelHeight]]|| [(PHAsset *)self playbackVariation])
  {
    return 0;
  }

  v7 = [(PHAsset *)self isCloudSharedAsset];
  v8 = [(PHAsset *)self isCollectionShareAsset];
  v5 = 0;
  if (!v7 && !v8)
  {
    if ([(PHAsset *)self isMomentSharedAsset])
    {
      return 0;
    }

    [(PHObject *)self fetchPropertySetsIfNeeded];
    if ([(PHAsset *)self isDetectedScreenshot])
    {
      return 0;
    }

    v9 = [(PHAsset *)self cameraCaptureDeviceProperties];
    if (v9)
    {
      v10 = [(PHAsset *)self cameraCaptureDeviceProperties];
      v11 = [v10 isFrontRear];

      v5 = v11 ^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

+ (BOOL)isEligibleForSpatialGenerationWithPixelSize:(CGSize)a3
{
  result = 0;
  if (a3.width >= a3.height)
  {
    height = a3.height;
  }

  else
  {
    height = a3.width;
  }

  if (a3.width >= a3.height)
  {
    width = a3.width;
  }

  else
  {
    width = a3.height;
  }

  if (width >= 1024 && height >= 512)
  {
    v6 = a3.width / a3.height;
    return v6 >= 0.454545455 && v6 <= 2.2;
  }

  return result;
}

+ (id)fetchAssetsForReferences:(id)a3 photoLibrary:(id)a4
{
  v6 = a4;
  v7 = PHLocalIdentifierForObjectReferencesAndLibrary(a3, v6);
  v8 = [v6 librarySpecificFetchOptions];

  [v8 setIsExclusivePredicate:1];
  v9 = [a1 fetchAssetsWithLocalIdentifiers:v7 options:v8];

  return v9;
}

- (NSString)syndicatedAppDisplayName
{
  v2 = [(PHAsset *)self curationProperties];
  v3 = [v2 importedByBundleIdentifier];
  v4 = [v2 importedByDisplayName];
  if (PLShouldConstructDisplayNameForAppBundle())
  {
    v5 = PLSyndicatedDisplayNameForAppBundle();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)syndicationEligibility
{
  v3 = [(PHAsset *)self syndicationState];
  if ([(PHAsset *)self thumbnailIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return -6;
  }

  if ((v3 & 0xFFFFFFFD) != 0)
  {
    return -5;
  }

  v5 = [(PHAsset *)self sceneAnalysisProperties];
  v6 = [v5 sceneAnalysisVersion];
  v7 = [MEMORY[0x1E69BE5A0] currentSceneVersion];
  v8 = [v7 intValue];

  if (v8 > v6)
  {
    return -4;
  }

  [(PHAsset *)self curationScore];
  if (v9 == 0.0)
  {
    return -2;
  }

  [(PHAsset *)self curationScore];
  if (v10 < *MEMORY[0x1E69BE8F8])
  {
    return 0;
  }

  v11 = [(PHAsset *)self curationProperties];
  v12 = [v11 importedByBundleIdentifier];
  v13 = [v12 isEqual:*MEMORY[0x1E69BFF00]];

  if (!v13)
  {
    return 0;
  }

  v14 = [(PHAsset *)self faceAdjustmentVersion];

  v15 = [(PHAsset *)self mediaAnalysisProperties];
  v16 = [v15 syndicationProcessingVersion];

  v17 = 65558;
  if (!v14)
  {
    v17 = 22;
  }

  if (v16 != v17)
  {
    return -1;
  }

  v18 = [(PHAsset *)self sourceType];
  v19 = -3;
  if (v14)
  {
    v19 = 1;
  }

  if (v18 == 32)
  {
    return 2;
  }

  else
  {
    return v19;
  }
}

+ (id)senderIdentifierByAssetUUIDForAssets:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v43;
    *&v6 = 138543362;
    v33 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 uuid];
        v14 = [v11 curationProperties];
        if (!v14)
        {
          v19 = [MEMORY[0x1E696AAA8] currentHandler];
          [v19 handleFailureInMethod:a2 object:a1 file:@"PHAsset+Syndicated.m" lineNumber:280 description:@"Expecting PHAsset to have curationProperties pre-loaded"];
        }

        v15 = [v14 syndicationIdentifier];
        if (v15)
        {
          v16 = [v14 importedByBundleIdentifier];
          if (v16)
          {
            v17 = v16;

            [v36 setObject:v13 forKeyedSubscript:v15];
            [v4 addObject:v15];
            v8 = v17;
          }

          else
          {
            v18 = [MEMORY[0x1E696AAA8] currentHandler];
            [v18 handleFailureInMethod:a2 object:a1 file:@"PHAsset+Syndicated.m" lineNumber:290 description:@"Expecting bundle identifier to be non-nil for a syndicated asset"];

            v17 = 0;
          }
        }

        else
        {
          v17 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v33;
            v47 = v13;
            _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "Returning nil CSSearchableItem due to nil syndication identifier for asset: %{public}@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v7 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = [v4 count];
  if (v21)
  {
    v22 = v8 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    goto LABEL_24;
  }

  v23 = v21;
  v24 = *MEMORY[0x1E6963CE8];
  v50[0] = *MEMORY[0x1E6963BA8];
  v50[1] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v26 = PLCoreSpotlightSearchableItemsFromSyndicationIdentifiers();

  v27 = [v26 count];
  if (v23 == v27)
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __60__PHAsset_Syndicated__senderIdentifierByAssetUUIDForAssets___block_invoke;
    v38[3] = &unk_1E75A9590;
    v39 = v36;
    v40 = v26;
    v41 = v20;
    v28 = v26;
    [v4 enumerateObjectsUsingBlock:v38];

LABEL_24:
    v29 = v20;
    goto LABEL_28;
  }

  v30 = v27;
  v31 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v47 = v23;
    v48 = 2048;
    v49 = v30;
    _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_ERROR, "Returning empty senderIdentifierByAssetUUIDForAssets, got a mismatch of syndication identifiers (%tu) and searchable items (%tu)", buf, 0x16u);
  }

  v29 = MEMORY[0x1E695E0F8];
LABEL_28:

  return v29;
}

void __60__PHAsset_Syndicated__senderIdentifierByAssetUUIDForAssets___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v8 = [MEMORY[0x1E695DFB0] null];

  if (v7 == v8)
  {
    v11 = 0;
  }

  else
  {
    v9 = [v7 attributeSet];
    v10 = [v9 authorAddresses];
    v11 = [v10 firstObject];
    if (![(__CFString *)v11 length])
    {
      v12 = [v9 accountIdentifier];

      v11 = v12;
    }
  }

  if ([(__CFString *)v11 length])
  {
    v13 = *(a1 + 48);
    v14 = v11;
  }

  else
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v5;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, "No sender identifier found for syndication identifier %{public}@", &v16, 0xCu);
    }

    v13 = *(a1 + 48);
    v14 = &stru_1F0FC60C8;
  }

  [v13 setObject:v14 forKeyedSubscript:v6];
}

+ (id)fetchAssetsWithSyndicationIdentifiers:(id)a3 options:(id)a4 includeRejected:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 photoLibrary];

  if (!v11)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PHAsset+Syndicated.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"fetchOptions.photoLibrary != nil"}];
  }

  v12 = [v9 internalPredicate];

  if (v12)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PHAsset+Syndicated.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"fetchOptions.internalPredicate == nil"}];
  }

  v13 = [v9 copy];
  v14 = [a1 predicateForSyndicatedAssetIdentifiers:v10 includeRejected:v5];

  [v13 setInternalPredicate:v14];
  v15 = [PHObject authorizationAwareFetchResultWithOptions:v13 fetchBlock:&__block_literal_global_40986];

  return v15;
}

id __85__PHAsset_Syndicated__fetchAssetsWithSyndicationIdentifiers_options_includeRejected___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAssetsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchPreviewAssetsForMomentShareCreationWithAssets:(id)a3 options:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v14[0] = v8;
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v14[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v7 setSortDescriptors:v10];

  [v7 setFetchLimit:10];
  [v7 setIncludeHiddenAssets:1];
  v11 = PFMap();

  v12 = [PHAsset fetchAssetsWithObjectIDs:v11 options:v7];

  return v12;
}

+ (id)fetchCuratedAssetsForMomentShareCreationWithAssets:(id)a3 options:(id)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 fetchLimit])
  {
    v7 = [v6 fetchLimit];
  }

  else
  {
    v7 = 10;
  }

  v8 = [v5 count];
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = [v5 firstObject];
  v11 = [v10 photoLibrary];

  if (v11)
  {
    v45 = v6;
    v46 = v11;
    v12 = [objc_alloc(MEMORY[0x1E69BE4D8]) initWithNumericValueKeypaths:&unk_1F102E390];
    [v12 setK:v9];
    v44 = v12;
    v47 = v5;
    v13 = [v12 performWithDataset:v5 progressBlock:&__block_literal_global_346];
    v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"curationScore" ascending:0];
    v59[0] = v14;
    v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"overallAestheticScore" ascending:0];
    v59[1] = v15;
    v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
    v59[2] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:3];

    v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v9];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v19 = v13;
    v20 = [v19 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v53;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v53 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v52 + 1) + 8 * i) objects];
          v25 = [v24 sortedArrayUsingDescriptors:v17];

          v26 = [v25 firstObject];
          v27 = [v26 uuid];

          if (v27)
          {
            [v18 addObject:v27];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v21);
    }

    if ([v18 count] < v9)
    {
      v28 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_DEFAULT, "fetchCuratedAssetsForMomentShareCreationWithAssets: adding some random assets to clustering assets selection.", buf, 2u);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v29 = v47;
      v30 = [v29 countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v49;
LABEL_22:
        v33 = 0;
        while (1)
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v48 + 1) + 8 * v33) uuid];
          [v18 addObject:v34];

          if ([v18 count] == v9)
          {
            break;
          }

          if (v31 == ++v33)
          {
            v31 = [v29 countByEnumeratingWithState:&v48 objects:v57 count:16];
            if (v31)
            {
              goto LABEL_22;
            }

            break;
          }
        }
      }
    }

    v6 = v45;
    if (v45)
    {
      v35 = [v45 copy];
    }

    else
    {
      v35 = [v46 librarySpecificFetchOptions];
    }

    v38 = v35;
    v5 = v47;
    v39 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v56[0] = v39;
    v40 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
    v56[1] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
    [v38 setSortDescriptors:v41];

    [v38 setFetchLimit:v9];
    v42 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v18];
    [v38 setPredicate:v42];

    [v38 setIncludeHiddenAssets:1];
    v37 = [PHAsset fetchAssetsWithOptions:v38];

    v11 = v46;
    v36 = v44;
  }

  else
  {
    v36 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v5;
      _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_ERROR, "Failed to compute curated assets: No photo library with assets: %@.", buf, 0xCu);
    }

    v37 = 0;
  }

  return v37;
}

+ (id)composabilityScoresOfAssets:(id)a3 options:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v31;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v30 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        v15 = [v14 photoLibrary];

        v11 = v15;
      }
    }

    v10 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  }

  while (v10);
  if (v11)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v26 + 1) + 8 * j) localIdentifier];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v19);
    }

    v23 = [v11 photoAnalysisClient];
    v24 = [v23 requestComposabilityScoresOfAssetsForLocalIdentifiers:v16 options:v8 error:a5];
  }

  else
  {
LABEL_19:
    v24 = MEMORY[0x1E695E0F8];
  }

  return v24;
}

- (id)messagesForRecentImageManagerRequests
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(PHObject *)self uuid];
  v5 = [objc_opt_class() _imageManagerRequestLoggingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PHAsset_ImageManager__messagesForRecentImageManagerRequests__block_invoke;
  block[3] = &unk_1E75AB248;
  block[4] = self;
  v12 = v4;
  v6 = v3;
  v13 = v6;
  v7 = v4;
  dispatch_sync(v5, block);

  v8 = v13;
  v9 = v6;

  return v6;
}

void __62__PHAsset_ImageManager__messagesForRecentImageManagerRequests__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _inq_imageManagerRequestLogsByAssetUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        [*(a1 + 48) appendFormat:@"ID: %@\n", v10];
        v11 = [v3 objectForKeyedSubscript:v10];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [*(a1 + 48) appendString:*(*(&v17 + 1) + 8 * j)];
              [*(a1 + 48) appendString:@"\n"];
            }

            v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v13);
        }

        [*(a1 + 48) appendString:@"\n"];
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }
}

- (void)recordImageManagerMessageForRequestID:(int)a3 message:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PHAsset_ImageManager.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  v23 = &v24;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [objc_opt_class() _currentTimestampString];
  v10 = [v8 stringWithFormat:@"%@: ", v9];

  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v7 arguments:&v24];
  v12 = [v10 stringByAppendingString:v11];

  v13 = [(PHObject *)self uuid];
  v14 = [objc_opt_class() _imageManagerRequestLoggingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PHAsset_ImageManager__recordImageManagerMessageForRequestID_message___block_invoke;
  block[3] = &unk_1E75AA040;
  block[4] = self;
  v19 = v13;
  v22 = a3;
  v20 = v12;
  v21 = a2;
  v15 = v12;
  v16 = v13;
  dispatch_async(v14, block);
}

void __71__PHAsset_ImageManager__recordImageManagerMessageForRequestID_message___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _inq_imageManagerRequestMessagesByRequestIDForAssetUUID:*(a1 + 40) requestID:*(a1 + 64)];
  v4 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PHAsset_ImageManager.m" lineNumber:132 description:@"cannot get messages array"];

    v2 = 0;
  }

  [v2 addObject:*(a1 + 48)];
  [objc_opt_class() _inq_recordRequestID:*(a1 + 64)];
  [objc_opt_class() _inq_trimToMostRecentImageManagerMessages];
}

+ (void)_inq_trimToMostRecentImageManagerMessages
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [a1 _inq_imageManagerRequestLogsByAssetUUID];
  v4 = [a1 _inq_highestImageManagerRequestIDsObserved];
  v5 = [v4 firstIndex];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__PHAsset_ImageManager___inq_trimToMostRecentImageManagerMessages__block_invoke;
  v17[3] = &unk_1E75AA018;
  v19 = v5;
  v7 = v6;
  v18 = v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v17];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v3 removeObjectForKey:{*(*(&v13 + 1) + 8 * v12++), v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v10);
  }
}

void __66__PHAsset_ImageManager___inq_trimToMostRecentImageManagerMessages__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (!v10 || [v10 compare:*(*(&v15 + 1) + 8 * i)] == 1)
        {
          v14 = v13;

          v10 = v14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if ([v10 integerValue] < *(a1 + 40))
  {
    [*(a1 + 32) addObject:v5];
  }
}

+ (id)_currentTimestampString
{
  if (_currentTimestampString_s_onceToken_47546 != -1)
  {
    dispatch_once(&_currentTimestampString_s_onceToken_47546, &__block_literal_global_37_47547);
  }

  v2 = _currentTimestampString_s_formatter_47548;
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v2 stringFromDate:v3];

  return v4;
}

uint64_t __48__PHAsset_ImageManager___currentTimestampString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _currentTimestampString_s_formatter_47548;
  _currentTimestampString_s_formatter_47548 = v0;

  v2 = _currentTimestampString_s_formatter_47548;

  return [v2 setDateFormat:@"yyyy-MM-dd' 'HH:mm:ss.SS"];
}

+ (void)_inq_recordRequestID:(int64_t)a3
{
  v4 = [a1 _inq_highestImageManagerRequestIDsObserved];
  [v4 addIndex:a3];
  if ([v4 count] >= 0x65)
  {
    [v4 removeIndex:{objc_msgSend(v4, "firstIndex")}];
  }
}

+ (id)_inq_imageManagerRequestMessagesByRequestIDForAssetUUID:(id)a3 requestID:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 _inq_imageManagerRequestLogsByAssetUUID];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = [a1 _inq_imageManagerRequestLogsByAssetUUID];
    [v9 setObject:v8 forKeyedSubscript:v6];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v11 = [v8 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v8 setObject:v11 forKeyedSubscript:v12];
  }

  return v11;
}

+ (id)_inq_highestImageManagerRequestIDsObserved
{
  if (_inq_highestImageManagerRequestIDsObserved_s_onceToken != -1)
  {
    dispatch_once(&_inq_highestImageManagerRequestIDsObserved_s_onceToken, &__block_literal_global_32);
  }

  v3 = _inq_highestImageManagerRequestIDsObserved_s_highest;

  return v3;
}

uint64_t __67__PHAsset_ImageManager___inq_highestImageManagerRequestIDsObserved__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v1 = _inq_highestImageManagerRequestIDsObserved_s_highest;
  _inq_highestImageManagerRequestIDsObserved_s_highest = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_inq_imageManagerRequestLogsByAssetUUID
{
  if (_inq_imageManagerRequestLogsByAssetUUID_s_onceToken != -1)
  {
    dispatch_once(&_inq_imageManagerRequestLogsByAssetUUID_s_onceToken, &__block_literal_global_30);
  }

  v3 = _inq_imageManagerRequestLogsByAssetUUID_s_logsByAssetUUID;

  return v3;
}

uint64_t __64__PHAsset_ImageManager___inq_imageManagerRequestLogsByAssetUUID__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _inq_imageManagerRequestLogsByAssetUUID_s_logsByAssetUUID;
  _inq_imageManagerRequestLogsByAssetUUID_s_logsByAssetUUID = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_imageManagerRequestLoggingQueue
{
  if (_imageManagerRequestLoggingQueue_s_onceToken != -1)
  {
    dispatch_once(&_imageManagerRequestLoggingQueue_s_onceToken, &__block_literal_global_27);
  }

  v3 = _imageManagerRequestLoggingQueue_s_queue;

  return v3;
}

void __57__PHAsset_ImageManager___imageManagerRequestLoggingQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.photos.imagemanagerloggingqueue", attr);
  v2 = _imageManagerRequestLoggingQueue_s_queue;
  _imageManagerRequestLoggingQueue_s_queue = v1;
}

@end