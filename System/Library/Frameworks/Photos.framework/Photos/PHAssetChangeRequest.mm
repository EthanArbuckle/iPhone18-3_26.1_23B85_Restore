@interface PHAssetChangeRequest
+ (BOOL)performBatchExpungeAndWaitWithAssets:(id)a3 deleteOptions:(id)a4 photoLibrary:(id)a5 error:(id *)a6;
+ (PHAssetChangeRequest)changeRequestForAsset:(PHAsset *)asset;
+ (id)changeRequestForAssetFromVideoFileURL:(id)a3 imageAsset:(id)a4 displayTime:(double)a5;
+ (void)_deleteAssets:(id)a3 withOperation:(int64_t)a4 topLevelSelector:(SEL)a5 deleteOptions:(id)a6;
+ (void)performBatchExpungeWithAssets:(id)a3 deleteOptions:(id)a4 photoLibrary:(id)a5 completionHandler:(id)a6;
+ (void)recoverAssets:(id)a3;
- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)animatedStickerTimeRange;
- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)bestVideoTimeRange;
- (BOOL)_applyCompactSCSensitivityAnalysisUpdateToAsset:(id)a3 error:(id *)a4;
- (BOOL)_applySensitivityAnalysisUpdateToAsset:(id)a3 error:(id *)a4;
- (BOOL)_validateAndGenerateStillImageForLoopingLivePhotoWithContentEditingOutput:(id)a3 error:(id *)a4;
- (BOOL)_validateAsyncContentEditingOutputPreviewRenderURLs:(id)a3 error:(id *)a4;
- (BOOL)_validateImageURLForAssetMutation:(id)a3 error:(id *)a4;
- (BOOL)addAssetResourceWithType:(int64_t)a3 fromFileAtURL:(id)a4;
- (BOOL)applyMutationsToAssetRelationshipWithKey:(id)a3 asset:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)deleteAssetResourceWithType:(int64_t)a3;
- (BOOL)isFavorite;
- (BOOL)isHidden;
- (BOOL)isHiding;
- (BOOL)isRevertingContentToOriginal;
- (BOOL)prepareForPhotoLibraryCheck:(id)a3 error:(id *)a4;
- (BOOL)validateAccessibilityDescription:(id)a3 error:(id *)a4;
- (BOOL)validateAdjustmentDataForAssetMutation:(id)a3 error:(id *)a4;
- (BOOL)validateAssetDescription:(id)a3 error:(id *)a4;
- (BOOL)validateContentEditingOutput:(id)a3 error:(id *)a4;
- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4;
- (BOOL)validateReadAccessForContentURL:(id)a3 assetResource:(id)a4 error:(id *)a5;
- (BOOL)validateVideoURLForAssetMutation:(id)a3 error:(id *)a4;
- (BOOL)validateWriteAccessForContentURL:(id)a3 error:(id *)a4;
- (CLLocation)location;
- (NSDate)addedDate;
- (NSDate)creationDate;
- (NSDate)modificationDate;
- (NSString)accessibilityDescription;
- (NSString)assetDescription;
- (NSString)title;
- (PHAssetChangeRequest)init;
- (PHAssetChangeRequest)initWithCoder:(id)a3;
- (PHAssetChangeRequest)initWithHelper:(id)a3;
- (PHAssetChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHAssetChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (double)curationScore;
- (double)highlightPromotionScore;
- (double)highlightVisibilityScore;
- (double)iconicScore;
- (float)failureScore;
- (float)harmoniousColorScore;
- (float)immersivenessScore;
- (float)interestingSubjectScore;
- (float)intrusiveObjectPresenceScore;
- (float)livelyColorScore;
- (float)lowLight;
- (float)noiseScore;
- (float)overallAestheticScore;
- (float)pleasantCameraTiltScore;
- (float)pleasantCompositionScore;
- (float)pleasantLightingScore;
- (float)pleasantPatternScore;
- (float)pleasantPerspectiveScore;
- (float)pleasantPostProcessingScore;
- (float)pleasantReflectionsScore;
- (float)pleasantSymmetryScore;
- (float)sharplyFocusedSubjectScore;
- (float)tastefullyBlurredScore;
- (float)wellChosenSubjectScore;
- (float)wellFramedSubjectScore;
- (float)wellTimedShotScore;
- (id)_existentCommentObjectIDs;
- (id)_existentKeywordObjectIDs;
- (id)_existentLikeObjectIDs;
- (id)_mutableCommentObjectIDsAndUUIDs;
- (id)_mutableFaceObjectIDsAndUUIDs;
- (id)_mutableKeywordObjectIDsAndUUIDs;
- (id)_mutableLikeObjectIDsAndUUIDs;
- (id)faceAdjustmentVersion;
- (id)getPhotoAnalysisAttributesForAsset:(id)a3;
- (signed)generativeMemoryCreationEligibilityState;
- (void)_addVersion:(signed __int16)a3 withKey:(id)a4 andType:(int64_t)a5 toDictionary:(id)a6;
- (void)_prepareExistingIDsForTemporalFacesIfNeeded;
- (void)_prepareFaceIDsIfNeeded;
- (void)_prepareFacesHelperWithFetchResult:(id)a3;
- (void)_setSavedAssetType:(signed __int16)a3;
- (void)_setSceneClassifications:(id)a3 ofType:(int64_t)a4 timestamp:(id)a5;
- (void)_setSyndicationIdentifier:(id)a3;
- (void)_validateObjectSaliencyRects:(id)a3;
- (void)addComments:(id)a3;
- (void)addFaces:(id)a3;
- (void)addKeywords:(id)a3;
- (void)addLike:(id)a3;
- (void)encodeToXPCDict:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)incrementShareCount;
- (void)promoteToGuestAsset;
- (void)removeComments:(id)a3;
- (void)removeFaces:(id)a3;
- (void)removeKeywords:(id)a3;
- (void)removeLike:(id)a3;
- (void)resetCharacterRecognitionAttributes;
- (void)resetGeneratedAssetDescriptions;
- (void)resetGuestAssetPromotion;
- (void)resetTextUnderstandingAttributes;
- (void)resetVisualSearchAttributes;
- (void)resetWallpaperProperties;
- (void)revertAssetContentToOriginal;
- (void)revertLocationToOriginal;
- (void)setAcceptableCropRectWithNormalizedRect:(CGRect)a3;
- (void)setAccessibilityDescription:(id)a3;
- (void)setActivityScore:(float)a3;
- (void)setAddedDate:(id)a3;
- (void)setAdjustmentData:(id)a3 withRenderedJPEGData:(id)a4 orRenderedContentURL:(id)a5 penultimateRenderedJPEGData:(id)a6 isSubstandardRender:(BOOL)a7 fullSizeRenderSize:(CGSize)a8 renderedVideoComplementURL:(id)a9 penultimateRenderedVideoComplementURL:(id)a10 optionalOriginalResourceChoice:(id)a11;
- (void)setAlternateImportImageDate:(id)a3;
- (void)setAnimatedStickerTimeRange:(id *)a3;
- (void)setAssetDescription:(id)a3;
- (void)setAudioClassification:(signed __int16)a3;
- (void)setAudioScore:(float)a3;
- (void)setAutoplaySuggestionScore:(float)a3;
- (void)setBestKeyFrame:(CGImage *)a3 time:(id *)a4;
- (void)setBestPlaybackRectWithNormalizedRect:(CGRect)a3;
- (void)setBestVideoTimeRange:(id *)a3;
- (void)setBlurrinessScore:(float)a3;
- (void)setCharacterRecognitionData:(id)a3 machineReadableCodeData:(id)a4 algorithmVersion:(int64_t)a5 adjustmentVersion:(id)a6;
- (void)setColorNormalizationData:(id)a3;
- (void)setCompactImageSCSensitivityAnalysis:(int64_t)a3;
- (void)setCompactVideoSCSensitivityAnalysis:(int64_t)a3;
- (void)setCompactVideoSCSensitivityAnalysis:(int64_t)a3 videoSensitivityAnalysisVersion:(signed __int16)a4;
- (void)setComputeSyncMediaAnalysisPayload:(id)a3;
- (void)setContentEditingOutput:(PHContentEditingOutput *)contentEditingOutput;
- (void)setContextualVideoThumbnailImage:(CGImage *)a3 withIdentifier:(id)a4;
- (void)setCreationDate:(NSDate *)creationDate;
- (void)setCurationScore:(double)a3;
- (void)setDuplicateMatchingData:(id)a3 duplicateMatchingAlternateData:(id)a4 processingSucceeded:(BOOL)a5;
- (void)setExposureScore:(float)a3;
- (void)setFaceAdjustmentVersion:(id)a3;
- (void)setFaceAnalysisVersion:(signed __int16)a3;
- (void)setFaceCount:(unint64_t)a3;
- (void)setFailureScore:(float)a3;
- (void)setFavorite:(BOOL)favorite;
- (void)setGeneratedAssetDescription:(id)a3 analysisVersion:(int64_t)a4 sourceType:(int64_t)a5;
- (void)setGenerativeMemoryCreationEligibilityState:(signed __int16)a3;
- (void)setGpsHorizontalAccuracy:(double)a3;
- (void)setHarmoniousColorScore:(float)a3;
- (void)setHidden:(BOOL)hidden;
- (void)setHighlightPromotionScore:(double)a3;
- (void)setHighlightVisibilityScore:(double)a3;
- (void)setIconicScore:(double)a3;
- (void)setImageDisplayTime:(id *)a3;
- (void)setImageEmbeddingVersion:(signed __int16)a3;
- (void)setImmersivenessScore:(float)a3;
- (void)setInterestingSubjectScore:(float)a3;
- (void)setIntrusiveObjectPresenceScore:(float)a3;
- (void)setKeywordTitles:(id)a3;
- (void)setLibraryScopeContributors:(id)a3;
- (void)setLivelyColorScore:(float)a3;
- (void)setLocalAnalysisStage:(signed __int16)a3;
- (void)setLocation:(CLLocation *)location;
- (void)setLocationBasedSceneClassifications:(id)a3 ofType:(int64_t)a4 version:(signed __int16)a5 timestamp:(id)a6;
- (void)setLowLight:(float)a3;
- (void)setMediaAnalysisImageVersion:(signed __int16)a3;
- (void)setMediaAnalysisTimeStamp:(id)a3;
- (void)setMediaAnalysisVersion:(unint64_t)a3;
- (void)setModificationDate:(id)a3;
- (void)setNoiseScore:(float)a3;
- (void)setObjectSaliencyRects:(id)a3;
- (void)setOriginalResourceChoice:(unint64_t)a3;
- (void)setOverallAestheticScore:(float)a3;
- (void)setPhotoIrisVisibilityState:(unsigned __int16)a3;
- (void)setPleasantCameraTiltScore:(float)a3;
- (void)setPleasantCompositionScore:(float)a3;
- (void)setPleasantLightingScore:(float)a3;
- (void)setPleasantPatternScore:(float)a3;
- (void)setPleasantPerspectiveScore:(float)a3;
- (void)setPleasantPostProcessingScore:(float)a3;
- (void)setPleasantReflectionsScore:(float)a3;
- (void)setPleasantSymmetryScore:(float)a3;
- (void)setPreferredCropRectWithNormalizedRect:(CGRect)a3;
- (void)setProbableRotationDirection:(signed __int16)a3;
- (void)setProbableRotationDirectionConfidence:(float)a3;
- (void)setPtpTrashedState:(int64_t)a3;
- (void)setRectWithNormalizedRect:(CGRect)a3 forPackedRect:(int64_t *)a4 forSetFlag:(BOOL *)a5;
- (void)setReverseLocationData:(id)a3;
- (void)setReverseLocationDataIsValid:(BOOL)a3;
- (void)setSceneClassifications:(id)a3 ofType:(int64_t)a4 version:(signed __int16)a5 timestamp:(id)a6;
- (void)setSceneprintData:(id)a3;
- (void)setScreenTimeDeviceImageSensitivity:(signed __int16)a3;
- (void)setSettlingEffectScore:(float)a3;
- (void)setSharplyFocusedSubjectScore:(float)a3;
- (void)setShiftedLocation:(id)a3;
- (void)setStickerConfidenceScore:(float)a3 stickerAlgorithmVersion:(int64_t)a4;
- (void)setSyndicationIdentifierOnMomentSharedAsset:(id)a3;
- (void)setSyndicationProcessingValue:(unsigned __int16)a3;
- (void)setSyndicationProcessingVersion:(unint64_t)a3;
- (void)setTastefullyBlurredScore:(float)a3;
- (void)setTemporalFaces:(id)a3;
- (void)setTextUnderstandingData:(id)a3 version:(int64_t)a4;
- (void)setTimeZone:(id)a3 withDate:(id)a4;
- (void)setTitle:(id)a3;
- (void)setVariationSuggestionStates:(unint64_t)a3 forVariationType:(unint64_t)a4;
- (void)setVideoDuration:(id *)a3;
- (void)setVideoEmbeddingVersion:(signed __int16)a3;
- (void)setVideoScore:(float)a3;
- (void)setVideoStickerSuggestionScore:(float)a3;
- (void)setViewPresentation:(signed __int16)a3;
- (void)setVisualSearchData:(id)a3 algorithmVersion:(int64_t)a4 adjustmentVersion:(id)a5;
- (void)setVisualSearchData:(id)a3 stickerConfidenceScore:(float)a4 algorithmVersion:(int64_t)a5 adjustmentVersion:(id)a6;
- (void)setWallpaperPropertiesData:(id)a3;
- (void)setWallpaperPropertiesTimestamp:(id)a3;
- (void)setWallpaperPropertiesVersion:(unint64_t)a3;
- (void)setWallpaperScore:(float)a3;
- (void)setWellChosenSubjectScore:(float)a3;
- (void)setWellFramedSubjectScore:(float)a3;
- (void)setWellTimedShotScore:(float)a3;
- (void)updateExtendedAttributesUsingOriginalMediaMetadata;
@end

@implementation PHAssetChangeRequest

- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)animatedStickerTimeRange
{
  v3 = *&self[20].var0.var3;
  *&retstr->var0.var0 = *&self[20].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[20].var1.var1;
  return self;
}

- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)bestVideoTimeRange
{
  v3 = *&self[19].var0.var3;
  *&retstr->var0.var0 = *&self[19].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[19].var1.var1;
  return self;
}

- (void)setImageDisplayTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_imageDisplayTime.value = *&a3->var0;
  self->_imageDisplayTime.epoch = var3;
}

- (void)setVideoDuration:(id *)a3
{
  var3 = a3->var3;
  *&self->_videoDuration.value = *&a3->var0;
  self->_videoDuration.epoch = var3;
}

- (BOOL)applyMutationsToAssetRelationshipWithKey:(id)a3 asset:(id)a4 error:(id *)a5
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"cloudComments"])
  {
    v10 = &OBJC_IVAR___PHAssetChangeRequest__commentsHelper;
  }

  else
  {
    if (![v8 isEqualToString:@"likeComments"])
    {
      v42 = 0;
      v43 = 0;
      v11 = 0;
      if (!a5)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v10 = &OBJC_IVAR___PHAssetChangeRequest__likesHelper;
  }

  v11 = *(&self->super.super.isa + *v10);
  if (!v11)
  {
    v42 = 0;
    v43 = 0;
    if (!a5)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v12 = v11;
  v50 = a5;
  [v11 setAllowsInsert:1];
  [v12 setAllowsRemove:1];
  v13 = [MEMORY[0x1E69BE340] entityName];
  [v12 setDestinationEntityName:v13];

  [v12 setDestinationUUIDKeyPath:@"cloudGUID"];
  v14 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  v15 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  v51 = v8;
  [v9 mutableSetValueForKey:v8];
  v63 = v15;
  v64 = v14;
  v62 = 0;
  v47 = v49 = v12;
  v48 = [v12 applyMutationsToManagedObject:v9 unorderedMutableChildren:? inserts:? deletes:? error:?];
  v16 = v64;

  v45 = v63;
  v46 = v62;
  v17 = [v9 collectionShare];
  v53 = [v17 currentUserParticipant];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v16;
  v18 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v59;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v59 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v58 + 1) + 8 * i);
        [v9 addComment:v22];
        v23 = [v22 isMyComment];

        if (v23)
        {
          [v22 setShareParticipant:v53];
        }

        v24 = MEMORY[0x1E69BE358];
        v25 = [v9 collectionShare];
        v26 = [v25 collectionShareKind];
        v27 = [v9 photoLibrary];
        v28 = [v24 syncBackendForKind:v26 photoLibrary:v27];

        if (v28)
        {
          [v28 publishCloudSharedCommentToServer:v22];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v19);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v29 = v45;
  v30 = [v29 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v55;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v55 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v54 + 1) + 8 * j);
        v35 = MEMORY[0x1E69BE358];
        v36 = [v9 collectionShare];
        v37 = [v36 collectionShareKind];
        v38 = [v9 photoLibrary];
        v39 = [v35 syncBackendForKind:v37 photoLibrary:v38];

        if (v39)
        {
          v40 = [v34 cloudGUID];

          if (v40)
          {
            v41 = [v34 cloudGUID];
            [v39 deleteCommentWithGUIDFromServer:v41];
          }
        }

        [v9 deleteComment:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v31);
  }

  a5 = v50;
  v8 = v51;
  v42 = v49;
  v43 = v48;
  v11 = v46;
  if (v50)
  {
LABEL_32:
    if (!v43)
    {
      v11 = v11;
      *a5 = v11;
    }
  }

LABEL_34:

  return v43;
}

- (BOOL)isRevertingContentToOriginal
{
  if (![(PHAssetChangeRequest *)self didChangeAdjustments])
  {
    return 0;
  }

  v3 = [(PHAssetChangeRequest *)self contentEditingOutput];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)isHiding
{
  v2 = [(PHChangeRequest *)self helper];
  v3 = [v2 mutations];
  v4 = [v3 objectForKey:@"hidden"];

  LOBYTE(v2) = [v4 BOOLValue];
  return v2;
}

- (BOOL)_applySensitivityAnalysisUpdateToAsset:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (self->_didSetCompactImageSCSensitivityAnalysis)
  {
    v8 = [v6 sensitivityAnalysisState];
    if ((v8 - 2) < 2)
    {
      v15 = 1;
      goto LABEL_20;
    }

    if (v8 == 4 || !v8)
    {
      [v7 setSensitivityAnalysisState:1];
    }

    goto LABEL_18;
  }

  if ([v6 hasVideoComponent])
  {
    if (!self->_didSetCompactVideoSCSensitivityAnalysis)
    {
LABEL_18:
      v15 = [(PHAssetChangeRequest *)self _applyCompactSCSensitivityAnalysisUpdateToAsset:v7 error:a4];
      goto LABEL_20;
    }

    v9 = [(PHAssetChangeRequest *)self getMediaAnalysisAttributesForAsset:v7];
    [v9 setVideoSensitivityAnalysisVersion:self->_videoSensitivityAnalysisVersion];
    v10 = [v7 sensitivityAnalysisState];
    v11 = 2;
    if (v10 && v10 != 4)
    {
      if (v10 != 1)
      {
LABEL_13:

        goto LABEL_18;
      }

      v11 = 3;
    }

    [v7 setSensitivityAnalysisState:v11];
    goto LABEL_13;
  }

  if (!self->_didSetCompactVideoSCSensitivityAnalysis)
  {
    goto LABEL_18;
  }

  v12 = MEMORY[0x1E696ABC0];
  v17 = *MEMORY[0x1E696A578];
  v18[0] = @"Video SCSensitivityAnalysisData may only be set for assets with video components";
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v14 = [v12 errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v13];
  if (a4)
  {
    v14 = v14;
    *a4 = v14;
  }

  v15 = 0;
LABEL_20:

  return v15;
}

- (BOOL)_applyCompactSCSensitivityAnalysisUpdateToAsset:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 compactSCSensitivityAnalysis])
  {
    v7 = [objc_alloc(getSCSensitivityAnalysisClass_19241()) initFromCompactAnalysis:objc_msgSend(v6 error:{"compactSCSensitivityAnalysis"), a4}];
    v8 = [objc_alloc(getSCSensitivityAnalysisClass_19241()) initFromCompactAnalysis:self->_compactSCSensitivityAnalysis error:a4];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    if (!v10)
    {
      v12 = [v8 transferringStateFromAnalysis:v7];
      self->_compactSCSensitivityAnalysis = [v12 compactAnalysis];
    }
  }

  else
  {
    v11 = 1;
  }

  [v6 setCompactSCSensitivityAnalysis:self->_compactSCSensitivityAnalysis];

  return v11;
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v592 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v491 = a4;
  v8 = [(PHChangeRequest *)self helper];
  v569 = 0;
  v9 = [v8 applyMutationsToManagedObject:v7 error:&v569];
  v10 = v569;

  if (!v9)
  {
    LOBYTE(v30) = 0;
    v31 = a5;
    goto LABEL_526;
  }

  v469 = v10;
  v490 = self;
  v11 = [(PHChangeRequest *)self helper];
  v12 = [v11 mutations];
  v13 = [v12 objectForKey:@"dateCreated"];

  if (v13)
  {
    [v7 didSetCustomDateCreated];
  }

  v492 = v7;
  if ([v7 isAvalancheStackPhoto])
  {
    v14 = [(PHChangeRequest *)self helper];
    v15 = [v14 mutations];
    v16 = [v15 objectForKey:@"hidden"];

    if (v16)
    {
      if ([v7 isFinderSyncedAsset])
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      v18 = objc_alloc(MEMORY[0x1E69BE2B0]);
      v19 = [v7 avalancheUUID];
      v20 = [v18 initWithUUID:v19 sourceType:v17 photoLibrary:v491];

      v21 = [(PHChangeRequest *)self helper];
      v22 = [v21 mutations];
      v23 = [v22 objectForKey:@"hidden"];
      [v20 setHidden:{objc_msgSend(v23, "BOOLValue")}];

      v7 = v492;
    }
  }

  v24 = self->_updatedLocation;
  if (v24)
  {
    v25 = v24;
    v26 = [MEMORY[0x1E695DFB0] null];
    v27 = [(CLLocation *)v25 isEqual:v26];

    v28 = v469;
    if (v27)
    {

      v29 = 0;
    }

    else
    {
      v29 = v25;
    }

    v463 = v29;
    [v7 setLocation:?];
    [v7 didSetCustomLocation];
    v32 = v490;
  }

  else
  {
    v32 = self;
    v463 = 0;
    v28 = v469;
  }

  if (v32->_didSetGpsHorizontalAccuracy)
  {
    v33 = [v7 additionalAttributes];
    [v33 setGpsHorizontalAccuracy:v490->_gpsHorizontalAccuracy];

    v32 = v490;
  }

  v34 = v32->_assetDescription;
  if (v34)
  {
    v35 = v34;
    if ([(NSString *)v34 isEqualToString:&stru_1F0FC60C8])
    {

      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    v462 = v36;
    [v7 setLongDescription:?];
  }

  else
  {
    v462 = 0;
  }

  v37 = v32->_accessibilityDescription;
  if (v37)
  {
    v38 = v37;
    if ([(NSString *)v37 isEqualToString:&stru_1F0FC60C8])
    {

      v39 = 0;
    }

    else
    {
      v39 = v38;
    }

    v461 = v39;
    [v7 setAccessibilityDescription:?];
  }

  else
  {
    v461 = 0;
  }

  if (v32->_didSetTitle)
  {
    v40 = [v7 additionalAttributes];
    [v40 setTitle:v490->_title];

    v32 = v490;
  }

  v41 = [(PHAssetChangeRequest *)v32 videoURLForUpdate];
  v42 = [(PHAssetChangeRequest *)v32 pairingIdentifier];
  LOBYTE(v43) = 1;
  v465 = v42;
  v466 = v41;
  if (v41 && v42)
  {
    memset(buf, 0, 24);
    [(PHAssetChangeRequest *)v32 videoDuration];
    v567 = 0uLL;
    v568 = 0;
    [(PHAssetChangeRequest *)v32 imageDisplayTime];
    v565 = *buf;
    v566 = *&buf[16];
    v563 = v567;
    v564 = v568;
    LOBYTE(v43) = [v7 becomePhotoIrisWithMediaGroupUUID:v465 mainFileMetadata:0 videoURL:v41 videoDuration:&v565 stillDisplayTime:&v563 options:0];
  }

  if (v32->_didSetVisibilityState && [v7 isPhotoIris])
  {
    [v7 setVideoCpVisibilityState:v32->_photoIrisVisibilityState];
    [v7 updatePlaybackStyleWithLivePhotoPlayability:{objc_msgSend(v7, "canPlayPhotoIris")}];
  }

  didSetSceneClassifications = v32->_didSetSceneClassifications;
  if (didSetSceneClassifications == 1)
  {
    v460 = v43;
    v562 = 0u;
    v561 = 0u;
    v560 = 0u;
    v559 = 0u;
    obj = v32->_sceneClassificationDictionariesByType;
    v477 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v559 objects:v591 count:16];
    if (!v477)
    {
      goto LABEL_76;
    }

    v474 = *v560;
    while (1)
    {
      v44 = 0;
      do
      {
        if (*v560 != v474)
        {
          objc_enumerationMutation(obj);
        }

        v480 = v44;
        v45 = *(*(&v559 + 1) + 8 * v44);
        v46 = [(NSMutableDictionary *)v32->_sceneClassificationDictionariesByType objectForKeyedSubscript:v45];
        v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisVersion"];
        v482 = [v46 objectForKeyedSubscript:v47];

        v48 = [(NSMutableDictionary *)v32->_sceneClassificationDictionariesByType objectForKeyedSubscript:v45];
        v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisTimestamp"];
        v487 = [v48 objectForKeyedSubscript:v49];

        v50 = PLAssetAnalysisGetLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v51 = [(PHChangeRequest *)v32 uuid];
          *buf = 138412546;
          *&buf[4] = v51;
          *&buf[12] = 2112;
          *&buf[14] = v487;
          _os_log_impl(&dword_19C86F000, v50, OS_LOG_TYPE_DEBUG, "Applying scene classifications to managed object - uuid: %@, adjustment timestamp: %@", buf, 0x16u);
        }

        v52 = [(NSMutableDictionary *)v32->_sceneClassificationDictionariesByType objectForKeyedSubscript:v45];
        v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneClassifications"];
        v54 = [v52 objectForKeyedSubscript:v53];

        v55 = [MEMORY[0x1E695DFA8] set];
        v555 = 0u;
        v556 = 0u;
        v557 = 0u;
        v558 = 0u;
        v56 = v54;
        v57 = [v56 countByEnumeratingWithState:&v555 objects:v590 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v556;
          do
          {
            for (i = 0; i != v58; ++i)
            {
              if (*v556 != v59)
              {
                objc_enumerationMutation(v56);
              }

              v61 = [[PHSceneClassification alloc] initWithDictionaryRepresentation:*(*(&v555 + 1) + 8 * i)];
              [v55 addObject:v61];
            }

            v58 = [v56 countByEnumeratingWithState:&v555 objects:v590 count:16];
          }

          while (v58);
        }

        v62 = [v45 integerValue];
        if ((v62 - 4) < 4)
        {
          [v7 removeSceneClassificationsOfType:v62];
          v63 = [(NSMutableDictionary *)v32->_sceneClassificationDictionariesByType objectForKeyedSubscript:v45];
          v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisLocationVersion"];
          v65 = [v63 objectForKeyedSubscript:v64];

          v66 = [(PHAssetChangeRequest *)v32 getMediaAnalysisAttributesForAsset:v7];
          if (v482)
          {
            [v66 setVaAnalysisVersion:{objc_msgSend(v482, "integerValue")}];
            goto LABEL_64;
          }

          if (v65)
          {
            [v66 setVaLocationAnalysisVersion:{objc_msgSend(v65, "integerValue")}];
LABEL_64:
            [v66 setVaAnalysisTimestamp:v487];
          }

          goto LABEL_66;
        }

        if ((v62 - 2) >= 2)
        {
          if (v62)
          {
            goto LABEL_67;
          }

          [v7 removeSceneClassificationsOfType:?];
          v67 = [v7 additionalAttributes];
          v68 = [v482 shortValue];
        }

        else
        {
          [v7 removeTemporalSceneClassificationsOfType:v62];
          v67 = [v7 additionalAttributes];
          v68 = [v482 integerValue];
        }

        [v67 setSceneAnalysisVersion:v68];

        v65 = [v7 additionalAttributes];
        [v65 setSceneAnalysisTimestamp:v487];
LABEL_66:

LABEL_67:
        v554 = 0u;
        v553 = 0u;
        v551 = 0u;
        v552 = 0u;
        v69 = v55;
        v70 = [v69 countByEnumeratingWithState:&v551 objects:v589 count:16];
        if (v70)
        {
          v71 = v70;
          v72 = *v552;
          do
          {
            for (j = 0; j != v71; ++j)
            {
              if (*v552 != v72)
              {
                objc_enumerationMutation(v69);
              }

              v74 = *(*(&v551 + 1) + 8 * j);
              v75 = MEMORY[0x1E69BE778];
              v76 = [v74 extendedSceneIdentifier];
              [v74 confidence];
              v78 = v77;
              v79 = [v74 packedBoundingBoxRect];
              [v74 startTime];
              v81 = v80;
              [v74 duration];
              v83 = v82;
              v84 = [v74 classificationType];
              v85 = [v74 thumbnailIdentifier];
              v86 = [v75 insertIntoPhotoLibrary:v491 asset:v492 sceneIdentifier:v76 confidence:v79 packedBoundingBoxRect:v84 startTime:v85 duration:v78 classificationType:v81 thumbnailIdentifier:v83];
            }

            v71 = [v69 countByEnumeratingWithState:&v551 objects:v589 count:16];
          }

          while (v71);
        }

        v44 = v480 + 1;
        v7 = v492;
        v32 = v490;
      }

      while (v480 + 1 != v477);
      v477 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v559 objects:v591 count:16];
      if (!v477)
      {
LABEL_76:

        *buf = 0;
        *&v567 = 0;
        v87 = [v7 uuid];
        PLStringUUIDComponents();

        v32 = v490;
        kdebug_trace();
        v28 = v469;
        LOBYTE(v43) = v460;
        break;
      }
    }
  }

  if (v32->_didSetImageEmbeddingVersion)
  {
    v88 = [(PHAssetChangeRequest *)v32 getMediaAnalysisAttributesForAsset:v7];
    [v88 setImageEmbeddingVersion:v490->_imageEmbeddingVersion];

    v32 = v490;
  }

  if (v32->_didSetVideoEmbeddingVersion)
  {
    v89 = [(PHAssetChangeRequest *)v32 getMediaAnalysisAttributesForAsset:v7];
    [v89 setVideoEmbeddingVersion:v490->_videoEmbeddingVersion];

    v32 = v490;
  }

  if (v32->_incrementPlayCount)
  {
    v90 = [v7 additionalAttributes];
    v91 = [v90 pendingPlayCount];

    v92 = [v7 additionalAttributes];
    [v92 setPendingPlayCount:v91 + 1];

    v32 = v490;
  }

  if (v32->_incrementShareCount)
  {
    v93 = [v7 additionalAttributes];
    v94 = [v93 pendingShareCount];

    v95 = [v7 additionalAttributes];
    [v95 setPendingShareCount:v94 + 1];

    v32 = v490;
  }

  if (v32->_lastSharedDate)
  {
    [v7 setLastSharedDate:?];
  }

  if (v32->_incrementViewCount)
  {
    v96 = [v7 additionalAttributes];
    v97 = [v96 pendingViewCount];

    v98 = [v7 additionalAttributes];
    v99 = [MEMORY[0x1E695DF00] date];
    [v98 setLastViewedDate:v99];

    v28 = v469;
    v100 = [v7 additionalAttributes];
    [v100 setPendingViewCount:v97 + 1];

    v32 = v490;
  }

  if (v32->_clearLastSharedDate)
  {
    [v7 setLastSharedDate:0];
  }

  if (v32->_clearLastViewedDate)
  {
    v101 = [v7 additionalAttributes];
    [v101 setLastViewedDate:0];

    v32 = v490;
  }

  if (v32->_didSetVariationSuggestionStates)
  {
    v102 = [v7 additionalAttributes];
    v103 = [v102 variationSuggestionStates];

    v104 = v103 & ~v490->_variationSuggestionStatesMask;
    variationSuggestionStates = v490->_variationSuggestionStates;
    v106 = [v7 additionalAttributes];
    [v106 setVariationSuggestionStates:variationSuggestionStates | v104];

    v32 = v490;
  }

  if (v32->_didSetTimeZone)
  {
    v107 = [v7 additionalAttributes];
    [v107 setTimeZoneName:v490->_timeZoneName];

    v108 = [v7 additionalAttributes];
    v109 = [MEMORY[0x1E696AD98] numberWithInt:v490->_timeZoneOffsetValue];
    [v108 setTimeZoneOffset:v109];

    v32 = v490;
  }

  v110 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v111 = [(PHAssetChangeRequest *)v32 facesHelper];
  v112 = [v111 mutableObjectIDsAndUUIDs];

  if (v112)
  {
    [v111 setAllowsInsert:1];
    [v111 setAllowsMove:0];
    [v111 setAllowsRemove:1];
    [v111 setDestinationEntityName:@"DetectedFace"];
    v113 = [v7 mutableDetectedFaces];
    v550 = v28;
    v43 = [v111 applyMutationsToManagedObject:v7 unorderedMutableChildren:v113 error:&v550];
    v114 = v550;
    v115 = v28;
    v28 = v114;

    if (v43)
    {
      v116 = [v113 allObjects];
      [v110 addObjectsFromArray:v116];
    }
  }

  v117 = [(PHAssetChangeRequest *)v490 temporalFacesHelper];
  v118 = [v117 mutableObjectIDsAndUUIDs];

  v475 = v110;
  v476 = v111;
  v481 = v117;
  if (v118)
  {
    [v117 setAllowsInsert:1];
    [v117 setAllowsMove:0];
    [v117 setAllowsRemove:1];
    v119 = [MEMORY[0x1E69BE3D0] entityName];
    [v117 setDestinationEntityName:v119];

    v120 = [v7 mutableTemporalDetectedFaces];
    v121 = v7;
    v122 = v120;
    v549 = 0;
    v548 = v28;
    v123 = [v117 applyMutationsToManagedObject:v121 unorderedMutableChildren:v120 inserts:0 deletes:&v549 error:&v548];
    v124 = v549;
    v125 = v548;

    if (!v123)
    {
      v30 = 0;
      goto LABEL_129;
    }

    v126 = [v122 allObjects];
    [v110 addObjectsFromArray:v126];

    v546 = 0u;
    v547 = 0u;
    v544 = 0u;
    v545 = 0u;
    v127 = v124;
    v128 = [v127 countByEnumeratingWithState:&v544 objects:v588 count:16];
    if (v128)
    {
      v129 = v128;
      v130 = *v545;
      do
      {
        for (k = 0; k != v129; ++k)
        {
          if (*v545 != v130)
          {
            objc_enumerationMutation(v127);
          }

          v132 = *(*(&v544 + 1) + 8 * k);
          if ([v132 isOrphan])
          {
            v133 = [v132 managedObjectContext];
            [v133 deleteObject:v132];
          }

          else
          {
            v133 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              v134 = [v132 shortObjectIDURI];
              *buf = 138543362;
              *&buf[4] = v134;
              _os_log_impl(&dword_19C86F000, v133, OS_LOG_TYPE_ERROR, "Unexpected old temporal face is not an orphan: %{public}@", buf, 0xCu);
            }
          }
        }

        v129 = [v127 countByEnumeratingWithState:&v544 objects:v588 count:16];
      }

      while (v129);
    }

    v135 = v490;
    v110 = v475;
    v28 = v125;
  }

  else
  {
    if ((v43 & 1) == 0)
    {
      v470 = v28;
      v30 = 0;
      goto LABEL_131;
    }

    v135 = v490;
  }

  if ([v110 count])
  {
    v542 = 0u;
    v543 = 0u;
    v540 = 0u;
    v541 = 0u;
    v136 = v475;
    v137 = [v136 countByEnumeratingWithState:&v540 objects:v587 count:16];
    if (v137)
    {
      v138 = v137;
      v139 = *v541;
      do
      {
        for (m = 0; m != v138; ++m)
        {
          if (*v541 != v139)
          {
            objc_enumerationMutation(v136);
          }

          [*(*(&v540 + 1) + 8 * m) fixAssetRelationshipsForFaceTorsoOrTemporal];
        }

        v138 = [v136 countByEnumeratingWithState:&v540 objects:v587 count:16];
      }

      while (v138);
    }

    v135 = v490;
  }

  v141 = [(PHRelationshipChangeRequestHelper *)v135->_keywordsHelper mutableObjectIDsAndUUIDs];

  if (v141)
  {
    [(PHRelationshipChangeRequestHelper *)v135->_keywordsHelper setAllowsInsert:1];
    [(PHRelationshipChangeRequestHelper *)v135->_keywordsHelper setAllowsMove:0];
    keywordsHelper = v135->_keywordsHelper;
    v143 = [MEMORY[0x1E69BE560] entityName];
    [(PHRelationshipChangeRequestHelper *)keywordsHelper setDestinationEntityName:v143];

    v122 = [v492 additionalAttributes];
    v124 = [v122 mutableSetValueForKey:@"keywords"];
    v144 = v135->_keywordsHelper;
    v539 = v28;
    v30 = [(PHRelationshipChangeRequestHelper *)v144 applyMutationsToManagedObject:v122 unorderedMutableChildren:v124 error:&v539];
    v125 = v539;

    v111 = v476;
LABEL_129:

    v470 = v125;
    v7 = v492;
LABEL_131:
    v145 = v490;
    goto LABEL_132;
  }

  v30 = 1;
  v470 = v28;
  v7 = v492;
  v145 = v135;
  v111 = v476;
LABEL_132:
  if (![(PHAssetChangeRequest *)v145 didChangeAdjustments])
  {
    goto LABEL_168;
  }

  v146 = [(PHAssetChangeRequest *)v145 contentEditingOutput];
  v147 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
  {
    v148 = [v146 debugDescription];
    *buf = 138412290;
    *&buf[4] = v148;
    _os_log_impl(&dword_19C86F000, v147, OS_LOG_TYPE_DEFAULT, "Asset change request applying content editing output:\n%@", buf, 0xCu);
  }

  if ([v146 isOnlyChangingOriginalChoice])
  {
    if ([v7 hasAdjustments])
    {
      v149 = [MEMORY[0x1E69BE258] assetAdjustmentOptionsForRevertingToOriginal];
      [v7 setAdjustments:0 options:v149];
    }

    goto LABEL_167;
  }

  v150 = [v7 cameraProcessingAdjustmentState];
  if ([v7 cameraProcessingAdjustmentState] != v150)
  {
    [v7 setCameraProcessingAdjustmentState:v150];
  }

  if (![v146 isAsyncAdjustment])
  {
    v159 = MEMORY[0x1E69C08F0];
    v160 = [v7 originalUniformTypeIdentifier];
    v151 = [v159 typeWithIdentifier:v160];

    v161 = v490;
    if ([v151 conformsToType:*MEMORY[0x1E6982F88]])
    {
      if ([(PHAssetChangeRequest *)v490 isRevertingContentToOriginal])
      {
        v162 = [v492 additionalAttributes];
        v163 = [v162 originalResourceChoice];
        v164 = v30;
        v165 = [v163 integerValue];

        v161 = v490;
        v166 = v165 == 3;
        v30 = v164;
        if (v166)
        {
          v167 = [v492 additionalAttributes];
          [v167 setOriginalResourceChoice:&unk_1F102CA40];

          v161 = v490;
        }
      }
    }

    if (v161->_didSetVisibilityState || ![v492 isPhotoIris])
    {
      goto LABEL_161;
    }

    if ([(PHAssetChangeRequest *)v161 isRevertingContentToOriginal])
    {
      v168 = 0;
    }

    else
    {
      v169 = [MEMORY[0x1E69BF238] fileManager];
      v170 = [v146 renderedVideoComplementContentURL];
      [v170 path];
      v172 = v171 = v30;
      v173 = [v169 fileExistsAtPath:v172];

      v30 = v171;
      v161 = v490;
      if (v173)
      {
LABEL_161:
        v158 = [v146 assetAdjustmentsWithEditorBundleID:v161->_editorBundleID];
        if ([(PHAssetChangeRequest *)v161 isRevertingContentToOriginal])
        {
          [MEMORY[0x1E69BE258] assetAdjustmentOptionsForRevertingToOriginal];
        }

        else
        {
          [v146 setAdjustmentsOptions];
        }
        v174 = ;
        v117 = v481;
        [v492 setAdjustments:v158 options:v174];

        goto LABEL_165;
      }

      v168 = [v492 videoCpVisibilityState] & 0xFFF4 | 1;
    }

    [v492 setVideoCpVisibilityState:v168];
    goto LABEL_161;
  }

  v151 = [v146 assetAdjustmentsWithEditorBundleID:v490->_editorBundleID];
  v152 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
  {
    v153 = [v151 debugDescription];
    *buf = 138412290;
    *&buf[4] = v153;
    _os_log_impl(&dword_19C86F000, v152, OS_LOG_TYPE_DEBUG, "Asset change request applying async adjustments:\n%@", buf, 0xCu);
  }

  v154 = [v146 setAdjustmentsOptions];
  [v492 setAdjustments:v151 options:v154];

  v155 = [v146 playbackVariation];

  if (v155)
  {
    v156 = [v146 playbackVariation];
    [v492 setPlaybackVariation:{objc_msgSend(v156, "integerValue")}];
  }

  v157 = [v146 videoDuration];

  if (!v157 || ![v492 isVideo])
  {
    goto LABEL_166;
  }

  v158 = [v146 videoDuration];
  [v158 doubleValue];
  [v492 setDuration:?];
LABEL_165:

LABEL_166:
  *buf = 0;
  *&v567 = 0;
  v7 = v492;
  v175 = [v492 uuid];
  PLStringUUIDComponents();

  kdebug_trace();
LABEL_167:

  v145 = v490;
LABEL_168:
  v176 = [(PHAssetChangeRequest *)v145 contentEditingOutput];
  v177 = [v176 isOnlyChangingOriginalChoice];

  v178 = [(PHAssetChangeRequest *)v145 contentEditingOutput];
  v179 = [v178 originalResourceChoice];
  v180 = v179;
  if (!v177)
  {

    if (v180)
    {
      v190 = [(PHAssetChangeRequest *)v490 contentEditingOutput];
      v191 = [v190 originalResourceChoice];
      v192 = [v191 integerValue];

      v193 = [v7 additionalAttributes];
      v194 = [v193 originalResourceChoice];
      v195 = [v194 integerValue];

      v185 = v490;
      v166 = v192 == v195;
      v7 = v492;
      if (v166)
      {
        goto LABEL_227;
      }

      v196 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
      {
        if (v192 > 3)
        {
          v197 = 0;
        }

        else
        {
          v197 = off_1E75A71C8[v192];
        }

        v232 = v197;
        *buf = 138412290;
        *&buf[4] = v232;
        _os_log_impl(&dword_19C86F000, v196, OS_LOG_TYPE_DEBUG, "Applying content editing output also changing original resource choice to %@", buf, 0xCu);
      }

      v230 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v192];
      v213 = [v492 additionalAttributes];
      [v213 setOriginalResourceChoice:v230];
      v185 = v490;
    }

    else
    {
      v185 = v490;
      if (!v490->_didSetOriginalResourceChoice)
      {
        goto LABEL_227;
      }

      originalResourceChoice = v490->_originalResourceChoice;
      v199 = [v7 additionalAttributes];
      v200 = [v199 originalResourceChoice];
      v201 = [v200 integerValue];

      v185 = v490;
      v166 = originalResourceChoice == v201;
      v111 = v476;
      if (v166)
      {
        goto LABEL_227;
      }

      v202 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
      {
        v203 = v490->_originalResourceChoice;
        if (v203 > 3)
        {
          v204 = 0;
        }

        else
        {
          v204 = off_1E75A71C8[v203];
        }

        v233 = v204;
        *buf = 138412290;
        *&buf[4] = v233;
        _os_log_impl(&dword_19C86F000, v202, OS_LOG_TYPE_DEBUG, "Setting original resource choice to %@", buf, 0xCu);
      }

      v185 = v490;
      v230 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v490->_originalResourceChoice];
      v213 = [v7 additionalAttributes];
      [v213 setOriginalResourceChoice:v230];
    }

LABEL_226:

    v7 = v492;
    goto LABEL_227;
  }

  v181 = [v179 integerValue];

  v182 = [v7 additionalAttributes];
  v183 = [v182 originalResourceChoice];
  v184 = [v183 integerValue];

  v166 = v181 == v184;
  v7 = v492;
  v185 = v490;
  if (!v166)
  {
    v186 = [(PHAssetChangeRequest *)v490 contentEditingOutput];
    v187 = [v186 renderedPreviewContentURL];

    v188 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
    {
      if (v181 > 3)
      {
        v189 = 0;
      }

      else
      {
        v189 = off_1E75A71C8[v181];
      }

      v205 = v189;
      *buf = 138412290;
      *&buf[4] = v205;
      _os_log_impl(&dword_19C86F000, v188, OS_LOG_TYPE_DEBUG, "Setting original choice to %@ and mark asset for deferred rendering", buf, 0xCu);
    }

    v478 = v187;
    v483 = v30;

    v206 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v181];
    v207 = [v492 additionalAttributes];
    [v207 setOriginalResourceChoice:v206];

    [v492 setDeferredProcessingNeeded:4];
    v208 = [v492 photoLibrary];
    v209 = [v208 libraryServicesManager];
    v210 = [v209 backgroundJobService];
    v211 = [v492 photoLibrary];
    v212 = [MEMORY[0x1E69BE2B8] typesMaskForDeferredProcessingNeeded:{objc_msgSend(v492, "deferredProcessingNeeded")}];
    [v210 signalBackgroundProcessingNeededOnLibrary:v211 workerTypes:v212];

    v213 = [MEMORY[0x1E69BF238] fileManager];
    [v492 unadjustedDerivativeImageURLs];
    v535 = 0u;
    v536 = 0u;
    v537 = 0u;
    v214 = v538 = 0u;
    v215 = [v214 countByEnumeratingWithState:&v535 objects:v586 count:16];
    if (v215)
    {
      v216 = v215;
      v217 = *v536;
      do
      {
        for (n = 0; n != v216; ++n)
        {
          if (*v536 != v217)
          {
            objc_enumerationMutation(v214);
          }

          v219 = *(*(&v535 + 1) + 8 * n);
          v534 = 0;
          v220 = [v213 removeItemAtURL:v219 error:&v534];
          v221 = v534;
          if (v220)
          {
            v222 = PLPhotoEditGetLog();
            if (os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG))
            {
              v223 = [v219 path];
              *buf = 138412290;
              *&buf[4] = v223;
              _os_log_impl(&dword_19C86F000, v222, OS_LOG_TYPE_DEBUG, "Changing original choice, removed unadjusted derivative file at path: %@", buf, 0xCu);
            }
          }

          else
          {
            if (PLIsErrorFileNotFound())
            {
              goto LABEL_197;
            }

            v222 = PLPhotoEditGetLog();
            if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v221;
              _os_log_impl(&dword_19C86F000, v222, OS_LOG_TYPE_ERROR, "Error removing unadjusted derivative due to changing R+J original choice: %@", buf, 0xCu);
            }
          }

LABEL_197:
        }

        v216 = [v214 countByEnumeratingWithState:&v535 objects:v586 count:16];
      }

      while (v216);
    }

    [v492 setEffectiveThumbnailIndex:0x7FFFFFFFFFFFFFFFLL];
    v532 = 0u;
    v533 = 0u;
    v530 = 0u;
    v531 = 0u;
    v224 = [v492 modernResources];
    v225 = [v224 countByEnumeratingWithState:&v530 objects:v585 count:16];
    if (v225)
    {
      v226 = v225;
      v227 = *v531;
      do
      {
        for (ii = 0; ii != v226; ++ii)
        {
          if (*v531 != v227)
          {
            objc_enumerationMutation(v224);
          }

          v229 = *(*(&v530 + 1) + 8 * ii);
          if (([v229 cplType] == 5 || objc_msgSend(v229, "cplType") == 4 || objc_msgSend(v229, "cplType") == 3 || objc_msgSend(v229, "cplType") == 2) && !objc_msgSend(v229, "version") || objc_msgSend(v229, "recipeID") == 65747)
          {
            [v229 markAsNotLocallyAvailable];
            if ([v229 cplType] == 2 || objc_msgSend(v229, "recipeID") == 65747)
            {
              [v229 setLocalAvailabilityTarget:1];
            }
          }
        }

        v226 = [v224 countByEnumeratingWithState:&v530 objects:v585 count:16];
      }

      while (v226);
    }

    v111 = v476;
    v230 = v478;
    v117 = v481;
    if (v478)
    {
      v231 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v478];
      if (v231)
      {
        [v492 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:v231 forceSRGBConversion:0];
      }
    }

    v185 = v490;
    v30 = v483;
    goto LABEL_226;
  }

LABEL_227:
  if (v185->_didRevertLocationToOriginal && PLPlatformExtendedAttributesSupported())
  {
    v234 = [v7 extendedAttributes];
    v235 = v234;
    if (v234)
    {
      v236 = [v234 latitude];
      if (v236)
      {
        v237 = v236;
        v238 = [v235 longitude];

        if (v238)
        {
          v239 = objc_alloc(MEMORY[0x1E6985C40]);
          v240 = [v235 latitude];
          [v240 doubleValue];
          v242 = v241;
          v243 = [v235 longitude];
          [v243 doubleValue];
          v245 = [v239 initWithLatitude:v242 longitude:v244];

          v7 = v492;
          [v492 setLocation:v245];
          [v492 didSetCustomLocation];
        }
      }
    }

    v185 = v490;
  }

  if (v185->_didUpdateExtendedAttributesUsingOriginalMediaMetadata)
  {
    v246 = v470;
    if (PLPlatformExtendedAttributesSupported())
    {
      v529 = v470;
      v30 = [v7 updateExtendedAttributesWithError:&v529];
      v247 = v529;

      v246 = v247;
      v185 = v490;
    }
  }

  else
  {
    v246 = v470;
  }

  if (v185->_didTrashAllSpatialOverCaptureResources)
  {
    [v7 setTrashedStateOnSpatialOverCaptureResources:1];
  }

  if (v185->_didUntrashAllSpatialOverCaptureResources)
  {
    [v7 setTrashedStateOnSpatialOverCaptureResources:0];
  }

  if (v185->_didExpungeAllSpatialOverCaptureResources)
  {
    [v7 setTrashedStateOnSpatialOverCaptureResources:2];
  }

  if (v185->_didExpungeTrashedSpatialOverCaptureResources)
  {
    [v7 expungeTrashedSpatialOverCaptureResources];
  }

  if (v185->_didPromoteToGuestAsset)
  {
    v528 = v246;
    v30 = [v7 promoteToGuestAsset:&v528];
    v248 = v528;

    v246 = v248;
    v185 = v490;
  }

  if (v185->_didResetGuestAssetPromotion)
  {
    v527 = v246;
    v30 = [v7 resetGuestAssetPromotion:&v527];
    v249 = v527;

    v246 = v249;
    v185 = v490;
  }

  v471 = v246;
  if (v185->_toRetryUpload)
  {
    v250 = [v7 photoLibrary];
    v251 = [v250 isCloudPhotoLibraryEnabled];

    v185 = v490;
    if (v251)
    {
      v252 = [v7 master];
      v253 = v252;
      if (v252)
      {
        v525 = 0u;
        v526 = 0u;
        v523 = 0u;
        v524 = 0u;
        v254 = [v252 assets];
        v255 = [v254 countByEnumeratingWithState:&v523 objects:v584 count:16];
        if (v255)
        {
          v256 = v255;
          v257 = *v524;
          do
          {
            for (jj = 0; jj != v256; ++jj)
            {
              if (*v524 != v257)
              {
                objc_enumerationMutation(v254);
              }

              v259 = *(*(&v523 + 1) + 8 * jj);
              if ([v259 cloudLocalState])
              {
                [v259 setCloudLocalState:0];
              }
            }

            v256 = [v254 countByEnumeratingWithState:&v523 objects:v584 count:16];
          }

          while (v256);
        }

        v7 = v492;
        v185 = v490;
        v111 = v476;
        if (![v253 cloudLocalState])
        {
          goto LABEL_267;
        }

        v260 = v253;
      }

      else
      {
        if (![v7 cloudLocalState])
        {
LABEL_267:

          goto LABEL_268;
        }

        v260 = v7;
      }

      [v260 setCloudLocalState:0];
      goto LABEL_267;
    }
  }

LABEL_268:
  v261 = [(PHAssetChangeRequest *)v185 modificationDate];
  if (v261)
  {
    [v7 setModificationDate:v261];
  }

  obja = v261;
  if (v185->_didModifyComputedAttributes)
  {
    v262 = [v7 computedAttributes];

    if (!v262)
    {
      v263 = [v7 managedObjectContext];
      [MEMORY[0x1E69BE370] entityName];
      v265 = v264 = v7;
      v522 = 0;
      v266 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext();
      v267 = 0;

      if (!v266)
      {
        if (a5)
        {
          v459 = v267;
          *a5 = v267;
        }

        v456 = 0;
        v7 = v492;
        v10 = v471;
        goto LABEL_523;
      }

      [v264 setComputedAttributes:v266];

      v7 = v264;
    }

    v268 = v30;
    v520 = 0u;
    v521 = 0u;
    v518 = 0u;
    v519 = 0u;
    v269 = v490->_computedAttributeMutations;
    v270 = [(NSMutableDictionary *)v269 countByEnumeratingWithState:&v518 objects:v583 count:16];
    if (v270)
    {
      v271 = v270;
      v272 = *v519;
      do
      {
        for (kk = 0; kk != v271; ++kk)
        {
          if (*v519 != v272)
          {
            objc_enumerationMutation(v269);
          }

          v274 = *(*(&v518 + 1) + 8 * kk);
          v275 = [v7 computedAttributes];
          v276 = [(NSMutableDictionary *)v490->_computedAttributeMutations objectForKeyedSubscript:v274];
          [v275 setValue:v276 forKey:v274];

          v7 = v492;
        }

        v271 = [(NSMutableDictionary *)v269 countByEnumeratingWithState:&v518 objects:v583 count:16];
      }

      while (v271);
    }

    didSetSceneClassifications = 1;
    v185 = v490;
    v30 = v268;
  }

  if (v185->_mediaAnalysisTimeStamp)
  {
    v277 = [(PHAssetChangeRequest *)v185 getMediaAnalysisAttributesForAsset:v7];
    [v277 setMediaAnalysisTimeStamp:v490->_mediaAnalysisTimeStamp];

    v185 = v490;
    didSetSceneClassifications = 1;
  }

  didSetMediaAnalysisVersion = v185->_didSetMediaAnalysisVersion;
  if (didSetMediaAnalysisVersion == 1)
  {
    v279 = [(PHAssetChangeRequest *)v185 getMediaAnalysisAttributesForAsset:v7];
    [v279 setMediaAnalysisVersion:v490->_mediaAnalysisVersion];

    v185 = v490;
    didSetSceneClassifications = 1;
  }

  if (v185->_didSetMediaAnalysisImageVersion)
  {
    v280 = [(PHAssetChangeRequest *)v185 getMediaAnalysisAttributesForAsset:v7];
    [v280 setMediaAnalysisImageVersion:v490->_mediaAnalysisImageVersion];

    v185 = v490;
    didSetMediaAnalysisVersion = 1;
    didSetSceneClassifications = 1;
  }

  v479 = didSetMediaAnalysisVersion;
  p_bestVideoTimeRange = &v185->_bestVideoTimeRange;
  if ((v185->_bestVideoTimeRange.start.flags & 1) != 0 && (v185->_bestVideoTimeRange.duration.flags & 1) != 0 && !v185->_bestVideoTimeRange.duration.epoch && (v185->_bestVideoTimeRange.duration.value & 0x8000000000000000) == 0)
  {
    v282 = [(PHAssetChangeRequest *)v185 getMediaAnalysisAttributesForAsset:v7];
    v283 = *&p_bestVideoTimeRange->start.epoch;
    *buf = *&p_bestVideoTimeRange->start.value;
    *&buf[16] = v283;
    v582 = *&p_bestVideoTimeRange->duration.timescale;
    [v282 setBestVideoTimeRange:buf];

    v185 = v490;
  }

  p_animatedStickerTimeRange = &v185->_animatedStickerTimeRange;
  if ((v185->_animatedStickerTimeRange.start.flags & 1) != 0 && (v185->_animatedStickerTimeRange.duration.flags & 1) != 0 && !v185->_animatedStickerTimeRange.duration.epoch && (v185->_animatedStickerTimeRange.duration.value & 0x8000000000000000) == 0)
  {
    v285 = [(PHAssetChangeRequest *)v185 getMediaAnalysisAttributesForAsset:v7];
    v286 = *&p_animatedStickerTimeRange->start.epoch;
    *buf = *&p_animatedStickerTimeRange->start.value;
    *&buf[16] = v286;
    v582 = *&p_animatedStickerTimeRange->duration.timescale;
    [v285 setAnimatedStickerTimeRange:buf];

    v185 = v490;
  }

  p_bestKeyFrameTime = &v185->_bestKeyFrameTime;
  if (v185->_bestKeyFrameTime.flags)
  {
    v288 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v288, OS_LOG_TYPE_DEBUG))
    {
      *buf = *&p_bestKeyFrameTime->value;
      *&buf[16] = p_bestKeyFrameTime->epoch;
      v289 = CMTimeCopyDescription(0, buf);
      v290 = [(NSData *)v490->_bestKeyFrameJPEGData length];
      v291 = [v7 uuid];
      *buf = 138412802;
      *&buf[4] = v289;
      *&buf[12] = 2048;
      *&buf[14] = v290;
      *&buf[22] = 2112;
      *&buf[24] = v291;
      _os_log_impl(&dword_19C86F000, v288, OS_LOG_TYPE_DEBUG, "Setting best key frame time: %@ key frame image length: %lu for asset: %@", buf, 0x20u);

      v7 = v492;
    }

    *buf = *&p_bestKeyFrameTime->value;
    *&buf[16] = p_bestKeyFrameTime->epoch;
    [v7 setVideoKeyFrameTime:buf];
    v185 = v490;
  }

  if (v185->_didUnsetBestKeyFrameTime)
  {
    *buf = *MEMORY[0x1E6960C70];
    *&buf[16] = *(MEMORY[0x1E6960C70] + 16);
    [v7 setVideoKeyFrameTime:buf];
  }

  if (v185->_bestKeyFrameJPEGData)
  {
    if ([v7 isLocalVideoKeyFrameValid])
    {
      v292 = CGImageSourceCreateWithData(v490->_bestKeyFrameJPEGData, 0);
      if (!v292)
      {
        goto LABEL_314;
      }

      v293 = v292;
      v294 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v294, OS_LOG_TYPE_DEBUG))
      {
        v295 = [v7 uuid];
        *buf = 138412290;
        *&buf[4] = v295;
        _os_log_impl(&dword_19C86F000, v294, OS_LOG_TYPE_DEBUG, "Regenerating thumbs for new best key frame for asset: %@", buf, 0xCu);
      }

      v516 = 0;
      v517 = 0;
      [MEMORY[0x1E69BE540] createThumbnailImage:&v517 previewImage:&v516 withToBeReleasedImageSource:v293];
      v296 = v517;
      v297 = v516;
      [v7 generateAndUpdateThumbnailsWithPreviewImage:v297 thumbnailImage:v296 fromImageSource:0 imageData:0 forceSRGBConversion:0];
    }

    else
    {
      v296 = PLThumbnailsGetLog();
      if (!os_log_type_enabled(v296, OS_LOG_TYPE_DEBUG))
      {
LABEL_313:

        goto LABEL_314;
      }

      v297 = [v7 uuid];
      *buf = 138543362;
      *&buf[4] = v297;
      _os_log_impl(&dword_19C86F000, v296, OS_LOG_TYPE_DEBUG, "Video key frame incompatible with asset: %{public}@, skipping thumbnail update", buf, 0xCu);
    }

    goto LABEL_313;
  }

LABEL_314:
  v484 = v30;
  v514 = 0u;
  v515 = 0u;
  v512 = 0u;
  v513 = 0u;
  v298 = v490->_contextualVideoThumbnailImageDataByIdentifier;
  v299 = [(NSDictionary *)v298 countByEnumeratingWithState:&v512 objects:v580 count:16];
  if (v299)
  {
    v300 = v299;
    v301 = *v513;
    do
    {
      for (mm = 0; mm != v300; ++mm)
      {
        if (*v513 != v301)
        {
          objc_enumerationMutation(v298);
        }

        v303 = *(*(&v512 + 1) + 8 * mm);
        v304 = objc_autoreleasePoolPush();
        v305 = [v492 writableFileURLForContextualVideoThumbnailIdentifier:v303];
        if (!v305)
        {
          v310 = [MEMORY[0x1E696AAA8] currentHandler];
          [v310 handleFailureInMethod:a2 object:v490 file:@"PHAssetChangeRequest.m" lineNumber:4466 description:{@"Invalid parameter not satisfying: %@", @"cvtFileURL"}];
        }

        v306 = [(NSDictionary *)v490->_contextualVideoThumbnailImageDataByIdentifier objectForKeyedSubscript:v303];
        v511 = 0;
        v307 = [v306 writeToURL:v305 options:1073741825 error:&v511];
        v308 = v511;

        if ((v307 & 1) == 0)
        {
          v309 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v309, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v308;
            _os_log_impl(&dword_19C86F000, v309, OS_LOG_TYPE_ERROR, "Error writing CVT: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v304);
      }

      v300 = [(NSDictionary *)v298 countByEnumeratingWithState:&v512 objects:v580 count:16];
    }

    while (v300);
  }

  v311 = v490;
  v312 = v492;
  if (v490->_computeSyncMediaAnalysisPayload)
  {
    v313 = MEMORY[0x1E695DFF8];
    v314 = [v492 pathForComputeSyncMediaAnalysisPayloadFile];
    v315 = [v313 fileURLWithPath:v314];

    v316 = [MEMORY[0x1E696AC08] defaultManager];
    v317 = [v315 URLByDeletingLastPathComponent];
    v510 = 0;
    v318 = [v316 createDirectoryAtURL:v317 withIntermediateDirectories:1 attributes:0 error:&v510];
    v319 = v510;

    if ((v318 & 1) == 0)
    {
      v320 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v320, OS_LOG_TYPE_ERROR))
      {
        v321 = [v492 uuid];
        *buf = 138412546;
        *&buf[4] = v321;
        *&buf[12] = 2112;
        *&buf[14] = v319;
        _os_log_impl(&dword_19C86F000, v320, OS_LOG_TYPE_ERROR, "Failed to create pathForMediaAnalysisComputeSyncSidecarPayload for asset %@ error: %@", buf, 0x16u);
      }
    }

    v311 = v490;
    [(NSData *)v490->_computeSyncMediaAnalysisPayload writeToURL:v315 atomically:1];

    v312 = v492;
  }

  if (v311->_didSetPackedPreferredCropRect)
  {
    [v312 setPackedPreferredCropRect:v311->_packedPreferredCropRect];
  }

  if (v311->_didSetPackedAcceptableCropRect)
  {
    [v312 setPackedAcceptableCropRect:v311->_packedAcceptableCropRect];
  }

  if (v311->_didSetPackedBestPlaybackRect)
  {
    v322 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v312];
    [v322 setPackedBestPlaybackRect:v490->_packedBestPlaybackRect];

    v311 = v490;
  }

  if (v311->_didSetWallpaperPropertiesVersion)
  {
    v323 = [(PHAssetChangeRequest *)v311 getPhotoAnalysisAttributesForAsset:v492];
    [v323 setWallpaperPropertiesVersion:v490->_wallpaperPropertiesVersion];

    v311 = v490;
    didSetSceneClassifications = 1;
  }

  if (v311->_didSetWallpaperPropertiesTimestamp)
  {
    v324 = [(PHAssetChangeRequest *)v311 getPhotoAnalysisAttributesForAsset:v492];
    [v324 setWallpaperPropertiesTimestamp:v490->_wallpaperPropertiesTimestamp];

    v311 = v490;
  }

  if (v311->_didSetWallpaperPropertiesData)
  {
    v325 = [(PHAssetChangeRequest *)v311 getPhotoAnalysisAttributesForAsset:v492];
    [v325 setWallpaperPropertiesData:v490->_wallpaperPropertiesData];

    v311 = v490;
  }

  if (v311->_didSetBlurrinessScore)
  {
    v326 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v327 = v490->_blurrinessScore;
    [v326 setBlurrinessScore:v327];

    v311 = v490;
  }

  if (v311->_didSetExposureScore)
  {
    v328 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v329 = v490->_exposureScore;
    [v328 setExposureScore:v329];

    v311 = v490;
  }

  if (v311->_didSetWallpaperScore)
  {
    v330 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v331 = v490->_wallpaperScore;
    [v330 setWallpaperScore:v331];

    v311 = v490;
  }

  if (v311->_didSetAutoplaySuggestionScore)
  {
    v332 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v333 = v490->_autoplaySuggestionScore;
    [v332 setAutoplaySuggestionScore:v333];

    v311 = v490;
  }

  if (v311->_didSetVideoStickerSuggestionScore)
  {
    v334 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v335 = v490->_videoStickerSuggestionScore;
    [v334 setVideoStickerSuggestionScore:v335];

    v311 = v490;
  }

  if (v311->_didSetVideoScore)
  {
    v336 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v337 = v490->_videoScore;
    [v336 setVideoScore:v337];

    v311 = v490;
  }

  if (v311->_didSetActivityScore)
  {
    v338 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v339 = v490->_activityScore;
    [v338 setActivityScore:v339];

    v311 = v490;
  }

  if (v311->_didSetAudioScore)
  {
    v340 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v341 = v490->_audioScore;
    [v340 setAudioScore:v341];

    v311 = v490;
  }

  if (v311->_didSetSettlingEffectScore)
  {
    v342 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v343 = v490->_settlingEffectScore;
    [v342 setSettlingEffectScore:v343];

    v311 = v490;
  }

  if (v311->_didSetFaceCount)
  {
    v344 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    [v344 setFaceCount:v490->_faceCount];

    v311 = v490;
  }

  if (v311->_didSetAudioClassification)
  {
    v345 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    [v345 setAudioClassification:v490->_audioClassification];

    v311 = v490;
    didSetSceneClassifications = 1;
  }

  if (v311->_didSetProbableRotationDirection)
  {
    v346 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    [v346 setProbableRotationDirection:v490->_probableRotationDirection];

    v311 = v490;
  }

  if (v311->_didSetProbableRotationDirectionConfidence)
  {
    v347 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v348 = v490->_probableRotationDirectionConfidence;
    [v347 setProbableRotationDirectionConfidence:v348];

    v311 = v490;
  }

  if (v311->_colorNormalizationData)
  {
    v349 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    [v349 setColorNormalizationData:v490->_colorNormalizationData];

    v311 = v490;
  }

  if (v311->_resetCharacterRecognitionProperties)
  {
    v350 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    [v350 resetCharacterRecognitionAttributes];
  }

  else
  {
    if (!v311->_didSetCharacterRecognitionData)
    {
      goto LABEL_378;
    }

    v350 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    [v350 setCharacterRecognitionData:v311->_characterRecognitionData machineReadableCodeData:v311->_machineReadableCodeData algorithmVersion:SLOWORD(v311->_characterRecognitionAlgorithmVersion) adjustmentVersion:v311->_characterRecognitionAdjustmentVersion];
    didSetSceneClassifications = 1;
  }

  v311 = v490;
LABEL_378:
  if (v311->_resetTextUnderstandingProperties)
  {
    v351 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    [v351 resetTextUnderstandingAttributes];
  }

  else
  {
    if (!v311->_didSetTextUnderstandingProperties)
    {
      goto LABEL_383;
    }

    v351 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    [v351 setTextUnderstandingData:v311->_textUnderstandingData version:v311->_textUnderstandingVersion];
    didSetSceneClassifications = 1;
  }

  v311 = v490;
LABEL_383:
  if (v311->_resetGeneratedAssetDescriptionProperties)
  {
    [MEMORY[0x1E69BE450] resetGeneratedAssetDescriptionsForAsset:v492];
  }

  else if (v311->_didSetGeneratedAssetDescriptionProperties)
  {
    [MEMORY[0x1E69BE450] setGeneratedAssetDescriptionForAsset:v492 fromDictionaries:v311->_generatedAssetDescriptionDictionaries];
    didSetSceneClassifications = 1;
  }

  if (v311->_resetVisualSearchProperties)
  {
    PLResetMediaProcessingStateOnAsset();
  }

  else if (v311->_didSetVisualSearchProperties)
  {
    v352 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    v354 = v352;
    if (v311->_didSetStickerConfidenceScore)
    {
      *&v353 = v311->_stickerConfidenceScore;
      [v352 setStickerConfidenceScore:SLOWORD(v311->_stickerConfidenceScoreAlgorithmVersion) stickerAlgorithmVersion:v353];
    }

    if (v311->_didSetVisualSearchData)
    {
      [v354 setVisualSearchData:v490->_visualSearchData algorithmVersion:SLOWORD(v490->_visualSearchAlgorithmVersion) adjustmentVersion:v490->_visualSearchAdjustmentVersion];
    }

    didSetSceneClassifications = 1;
    v311 = v490;
  }

  if (!v311->_didSetCompactImageSCSensitivityAnalysis)
  {
    didSetCompactVideoSCSensitivityAnalysis = v311->_didSetCompactVideoSCSensitivityAnalysis;
    if ((didSetCompactVideoSCSensitivityAnalysis & v484 & 1) == 0)
    {
      v355 = !didSetCompactVideoSCSensitivityAnalysis & v484;
      goto LABEL_401;
    }

LABEL_399:
    v509 = v471;
    v357 = v492;
    v355 = [(PHAssetChangeRequest *)v311 _applySensitivityAnalysisUpdateToAsset:v492 error:&v509];
    v358 = v509;

    v471 = v358;
    goto LABEL_402;
  }

  if (v484)
  {
    goto LABEL_399;
  }

  v355 = 0;
LABEL_401:
  v357 = v492;
LABEL_402:
  resetWallpaperProperties = v311->_resetWallpaperProperties;
  v360 = [(PHAssetChangeRequest *)v311 getPhotoAnalysisAttributesForAsset:v357];
  v361 = v360;
  if (resetWallpaperProperties)
  {
    [v360 setWallpaperPropertiesTimestamp:0];
    [v361 setWallpaperPropertiesData:0];
    wallpaperPropertiesVersion = 0;
    v7 = v492;
    v117 = v481;
LABEL_410:
    [v361 setWallpaperPropertiesVersion:wallpaperPropertiesVersion];
    v311 = v490;
    goto LABEL_411;
  }

  if (v311->_didSetWallpaperPropertiesTimestamp)
  {
    [v360 setWallpaperPropertiesTimestamp:v311->_wallpaperPropertiesTimestamp];
  }

  if (v311->_didSetWallpaperPropertiesData)
  {
    [v361 setWallpaperPropertiesData:v311->_wallpaperPropertiesData];
  }

  v7 = v492;
  v117 = v481;
  if (v311->_didSetWallpaperPropertiesVersion)
  {
    wallpaperPropertiesVersion = v311->_wallpaperPropertiesVersion;
    didSetSceneClassifications = 1;
    goto LABEL_410;
  }

LABEL_411:

  if (v311->_didSetSyndicationProcessingValue)
  {
    v363 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v7];
    [v363 setSyndicationProcessingValue:v311->_syndicationProcessingValue];
  }

  if (v311->_didSetSyndicationProcessingVersion)
  {
    v364 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v7];
    [v364 setSyndicationProcessingVersion:v311->_syndicationProcessingVersion];
  }

  if (v311->_didSetSyndicationIdentifier)
  {
    syndicationIdentifier = v311->_syndicationIdentifier;
    v366 = [v7 additionalAttributes];
    [v366 setSyndicationIdentifier:syndicationIdentifier];
  }

  if (v311->_didSetFaceAnalysisVersion)
  {
    faceAnalysisVersion = v311->_faceAnalysisVersion;
    v368 = [v7 additionalAttributes];
    [v368 setFaceAnalysisVersion:faceAnalysisVersion];

    didSetSceneClassifications = 1;
  }

  if (v311->_didSetLocalAnalysisStage)
  {
    localAnalysisStage = v311->_localAnalysisStage;
    v370 = [v7 computeSyncAttributes];
    v371 = [v370 localAnalysisStage];

    if (localAnalysisStage <= v371)
    {
      v372 = v311->_localAnalysisStage;
      v373 = [v7 computeSyncAttributes];
      v374 = [v373 localAnalysisStage];

      if (v372 < v374)
      {
        v375 = PLBackendGetLog();
        if (os_log_type_enabled(v375, OS_LOG_TYPE_INFO))
        {
          v376 = [v7 computeSyncAttributes];
          v377 = [v376 localAnalysisStage];
          v378 = v490->_localAnalysisStage;
          v379 = [(PHChangeRequest *)v490 clientBundleID];
          *buf = 67109634;
          *&buf[4] = v377;
          v7 = v492;
          *&buf[8] = 1024;
          *&buf[10] = v378;
          *&buf[14] = 2114;
          *&buf[16] = v379;
          _os_log_impl(&dword_19C86F000, v375, OS_LOG_TYPE_INFO, "[CCSS] Quietly dropping attempt to downgrade analysis stage from %d to %d by client: %{public}@", buf, 0x18u);
        }

        v311 = v490;
      }
    }

    else
    {
      [MEMORY[0x1E69BE368] updateLocalComputeSyncStageAfterProcessingForAsset:v7 stage:v311->_localAnalysisStage];
    }
  }

  if (v311->_didSetViewPresentation)
  {
    viewPresentation = v311->_viewPresentation;
    v381 = [v7 additionalAttributes];
    [v381 setViewPresentation:viewPresentation];
  }

  if (v311->_didSetSceneprintData)
  {
    v382 = [v7 additionalAttributes];
    [v382 setSceneprintWithData:v311->_sceneprintData];
  }

  if (v311->_didSetDuplicateMatchingData)
  {
    v383 = [v7 additionalAttributes];
    [v383 setDuplicateMatchingData:v311->_duplicateMatchingData duplicateMatchingAlternateData:v311->_duplicateMatchingAlternateData processingSucceeded:v311->_duplicateProcessingSucceeded];

    didSetSceneClassifications = 1;
  }

  if (v311->_didSetReverseLocationData)
  {
    v384 = [v7 additionalAttributes];
    [v384 setReverseLocationData:v311->_reverseLocationData];
  }

  if (v311->_didSetReverseLocationDataIsValid)
  {
    v385 = [v7 additionalAttributes];
    v386 = [MEMORY[0x1E696AD98] numberWithBool:v311->_reverseLocationDataIsValid];
    [v385 setReverseLocationDataIsValid:v386];
  }

  if (v311->_didSetShiftedLocation)
  {
    v387 = [v7 additionalAttributes];
    [v387 setShiftedLocation:v311->_shiftedLocation];

    v388 = [v7 additionalAttributes];
    [v388 setShiftedLocationIsValid:1];
  }

  if (v311->_didSetObjectSaliencyRectsData)
  {
    v389 = [v7 additionalAttributes];
    [v389 setObjectSaliencyRectsData:v311->_objectSaliencyRectsData];
  }

  if (v311->_alternateImportImageDate)
  {
    v390 = [v7 additionalAttributes];
    [v390 setAlternateImportImageDate:v311->_alternateImportImageDate];
  }

  if (v311->_didSetSavedAssetType)
  {
    [v7 setSavedAssetType:v490->_savedAssetType];
  }

  if (didSetSceneClassifications)
  {
    v391 = [MEMORY[0x1E695DF00] date];
    [v7 setAnalysisStateModificationDate:v391];
  }

  if (v479)
  {
    v392 = [v7 photoLibrary];
    v393 = [MEMORY[0x1E69BE2B8] maskForFeatureAvailability];
    [v392 signalBackgroundProcessingNeededForWorkerTypes:v393];
  }

  if (v490->_didSetKeywordTitles)
  {
    v394 = [v491 keywordManager];
    v355 = [v394 setKeywords:v490->_keywordTitles forAsset:v7];
    if ((v355 & 1) == 0)
    {
      v395 = MEMORY[0x1E696ABC0];
      v578 = *MEMORY[0x1E696A578];
      v579 = @"Setting keywords failed";
      v396 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v579 forKeys:&v578 count:1];
      v397 = [v395 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v396];

      v7 = v492;
      v471 = v397;
    }
  }

  v10 = v471;
  if (v490->_didSetScreenTimeDeviceImageSensitivity)
  {
    v398 = [(PHAssetChangeRequest *)v490 getMediaAnalysisAttributesForAsset:v7];
    [v398 setScreenTimeDeviceImageSensitivity:v490->_screenTimeDeviceImageSensitivity];
  }

  pathsToNewAssetResourcesByAssetResourceType = v490->_pathsToNewAssetResourcesByAssetResourceType;
  if (pathsToNewAssetResourcesByAssetResourceType)
  {
    v507 = 0u;
    v508 = 0u;
    v505 = 0u;
    v506 = 0u;
    v485 = [(NSDictionary *)pathsToNewAssetResourcesByAssetResourceType allKeys];
    v400 = [v485 countByEnumeratingWithState:&v505 objects:v577 count:16];
    if (!v400)
    {
      goto LABEL_484;
    }

    v401 = v400;
    v402 = *v506;
    v403 = 0x1E696A000uLL;
    v404 = *MEMORY[0x1E696A278];
    v405 = 0x1E696A000uLL;
    while (1)
    {
      v406 = 0;
      do
      {
        if (*v506 != v402)
        {
          objc_enumerationMutation(v485);
        }

        v407 = *(*(&v505 + 1) + 8 * v406);
        if (!PHAssetResourceTypeClientCanAppendToOrDeleteFromAsset([v407 integerValue]))
        {
          v414 = [*(v403 + 3776) stringWithFormat:@"adding asset resource of type %@ is not allowed", v407];
          v415 = *(v405 + 3008);
          v573 = v404;
          v488 = v414;
          v574 = v414;
          v416 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v574 forKeys:&v573 count:1];
          v417 = [v415 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3111 userInfo:v416];
LABEL_473:
          v426 = v417;

          v355 = 0;
          v10 = v426;
          v408 = v488;
          goto LABEL_474;
        }

        v408 = [(NSDictionary *)v490->_pathsToNewAssetResourcesByAssetResourceType objectForKeyedSubscript:v407];
        v409 = [v407 integerValue];
        if (v409 <= 100)
        {
          if ((v409 - 1) < 0x13)
          {
            goto LABEL_471;
          }

          if (v409 == 20)
          {
            v504 = 0;
            v412 = [v492 installExistingAlchemistImageAtPath:v408 error:&v504];
            v413 = v504;
            goto LABEL_479;
          }
        }

        else
        {
          v410 = v409 - 110;
          if ((v409 - 110) <= 9)
          {
            if (((1 << v410) & 0x2F) != 0)
            {
              goto LABEL_471;
            }

            if (((1 << v410) & 0x3C0) != 0)
            {
              v411 = ResourceRecipeIDForDeletableAssetResourceType(v409);
              v501 = 0;
              v412 = [v492 installExistingAlchemistV2ResourceFileAtPath:v408 recipeID:v411 error:&v501];
              v413 = v501;
            }

            else
            {
              v502 = 0;
              v412 = [v492 installExistingGenerativePlaygroundFaceResourcesFileAtPath:v408 error:&v502];
              v413 = v502;
            }

LABEL_479:
            v416 = v413;
            if ((v412 & 1) == 0)
            {
              goto LABEL_482;
            }

            goto LABEL_480;
          }

          if ((v409 - 101) < 8)
          {
LABEL_471:
            v488 = v408;
            v418 = [*(v403 + 3776) stringWithFormat:@"adding asset resource type %@ is allowed but not currently supported", v407];
            v419 = *(v405 + 3008);
            v575 = v404;
            v576 = v418;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v576 forKeys:&v575 count:1];
            v420 = v401;
            v421 = v402;
            v422 = v404;
            v423 = v403;
            v425 = v424 = v10;
            v416 = [v419 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3111 userInfo:v425];

            v10 = v424;
            v403 = v423;
            v404 = v422;
            v402 = v421;
            v401 = v420;
            v405 = 0x1E696A000;

LABEL_472:
            v417 = v416;
            v416 = v417;
            goto LABEL_473;
          }

          if (v409 == 109)
          {
            v503 = 0;
            v412 = [v492 installExistingWallpaperComputeResourcesFileAtPath:v408 error:&v503];
            v413 = v503;
            goto LABEL_479;
          }
        }

        v416 = 0;
        if ((v355 & 1) == 0)
        {
LABEL_482:
          v488 = v408;
          goto LABEL_472;
        }

LABEL_480:
        v355 = 1;
LABEL_474:

        ++v406;
      }

      while (v401 != v406);
      v427 = [v485 countByEnumeratingWithState:&v505 objects:v577 count:16];
      v401 = v427;
      if (!v427)
      {
LABEL_484:

        v7 = v492;
        v117 = v481;
        break;
      }
    }
  }

  assetResourceTypesToDelete = v490->_assetResourceTypesToDelete;
  if (assetResourceTypesToDelete)
  {
    v429 = v10;
    v499 = 0u;
    v500 = 0u;
    v497 = 0u;
    v498 = 0u;
    v489 = assetResourceTypesToDelete;
    v430 = [(NSSet *)v489 countByEnumeratingWithState:&v497 objects:v572 count:16];
    if (v430)
    {
      v431 = v430;
      v432 = *v498;
      v486 = *MEMORY[0x1E696A278];
      do
      {
        for (nn = 0; nn != v431; ++nn)
        {
          if (*v498 != v432)
          {
            objc_enumerationMutation(v489);
          }

          v434 = *(*(&v497 + 1) + 8 * nn);
          v435 = [v434 integerValue];
          if (PHAssetResourceTypeClientCanAppendToOrDeleteFromAsset(v435))
          {
            v436 = [MEMORY[0x1E696AC08] defaultManager];
            v437 = PathForDeletableAssetResourceType(v492, v435);
            v496 = 0;
            v438 = [v436 removeItemAtPath:v437 error:&v496];
            v439 = v496;

            if (v438 & 1) != 0 || (PLIsErrorFileNotFound())
            {
              if (v355)
              {
                [v492 deleteResourcesWithRecipeID:ResourceRecipeIDForDeletableAssetResourceType(v435) andVersion:3];
                v355 = 1;
              }

              else
              {
                v355 = 0;
              }
            }

            else
            {
              v439 = v439;

              v355 = 0;
              v429 = v439;
            }

            v117 = v481;
          }

          else
          {
            v439 = [MEMORY[0x1E696AEC0] stringWithFormat:@"deleting asset resource of type %@ is not allowed", v434];
            v440 = MEMORY[0x1E696ABC0];
            v570 = v486;
            v571 = v439;
            v441 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v571 forKeys:&v570 count:1];
            v442 = [v440 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3111 userInfo:v441];

            v355 = 0;
            v429 = v442;
          }
        }

        v431 = [(NSSet *)v489 countByEnumeratingWithState:&v497 objects:v572 count:16];
      }

      while (v431);
    }

    if ((v355 & 1) == 0)
    {
      LOBYTE(v30) = 0;
      v7 = v492;
      v10 = v429;
      goto LABEL_517;
    }

    v7 = v492;
  }

  else
  {
    if ((v355 & 1) == 0)
    {
      goto LABEL_511;
    }

    v429 = v10;
  }

  p_isa = &v490->super.super.isa;
  if (v490->_deleteContextualVideoThumbnails)
  {
    v495 = v429;
    v444 = [v7 deleteContextualVideoThumbnailFilesWithError:&v495];
    v10 = v495;

    if (v444)
    {
      v429 = v10;
      p_isa = &v490->super.super.isa;
      goto LABEL_509;
    }

LABEL_511:
    LOBYTE(v30) = 0;
    goto LABEL_517;
  }

LABEL_509:
  v445 = [p_isa[66] mutableObjectIDsAndUUIDs];

  if (v445)
  {
    v494 = v429;
    v446 = [p_isa applyMutationsToAssetRelationshipWithKey:@"cloudComments" asset:v7 error:&v494];
    v10 = v494;

    if (!v446)
    {
      goto LABEL_511;
    }
  }

  else
  {
    v10 = v429;
  }

  v447 = [(PHRelationshipChangeRequestHelper *)v490->_likesHelper mutableObjectIDsAndUUIDs];

  if (v447)
  {
    v493 = v10;
    LOBYTE(v30) = [(PHAssetChangeRequest *)v490 applyMutationsToAssetRelationshipWithKey:@"likeComments" asset:v7 error:&v493];
    v448 = v493;

    v10 = v448;
  }

  else
  {
    LOBYTE(v30) = 1;
  }

LABEL_517:
  v449 = v490;
  if (v490->_libraryScopeOriginatorUUIDs)
  {
    v450 = [v7 libraryScope];
    if (v450)
    {
      v451 = MEMORY[0x1E69BE7D8];
      [(NSSet *)v490->_libraryScopeOriginatorUUIDs allObjects];
      v453 = v452 = v10;
      v454 = [v451 participantsWithUUIDs:v453 inPhotoLibrary:v491];

      v455 = [MEMORY[0x1E695DFD8] setWithArray:v454];
      [v7 setLibraryScope:v450 withContributors:v455];

      v10 = v452;
    }

    v449 = v490;
  }

  if (v449->_didSetPtpTrashedState)
  {
    v263 = [v7 additionalAttributes];
    [v263 setPtpTrashedState:v449->_ptpTrashedState];
    v456 = 1;
    v111 = v476;
LABEL_523:

    goto LABEL_525;
  }

  v456 = 1;
  v111 = v476;
LABEL_525:

  v31 = a5;
  if (!v456)
  {
    LOBYTE(v30) = 0;
    goto LABEL_530;
  }

LABEL_526:
  if (v31 && (v30 & 1) == 0)
  {
    v457 = v10;
    LOBYTE(v30) = 0;
    *v31 = v10;
  }

LABEL_530:

  return v30;
}

- (BOOL)validateReadAccessForContentURL:(id)a3 assetResource:(id)a4 error:(id *)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 isFileURL])
  {
    if (!PLIsAssetsd() || -[PHChangeRequest isClientEntitled](self, "isClientEntitled") || ([v9 duplicateAllowsReadAccess] & 1) != 0)
    {
      goto LABEL_7;
    }

    v10 = [v8 path];
    if ([MEMORY[0x1E69BF2E0] processWithID:self->_clientProcessIdentifier canReadSandboxForPath:v10])
    {

LABEL_7:
      v11 = 0;
      v12 = 1;
      goto LABEL_12;
    }

    v17 = MEMORY[0x1E696ABC0];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid URL %@", v8, *MEMORY[0x1E696A578]];
    v20 = v14;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v11 = [v17 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v18];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid URL %@", v8];
    v22[0] = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v11 = [v13 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v14];
  }

  if (a5)
  {
    v15 = v11;
    v12 = 0;
    *a5 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_12:

  return v12;
}

- (id)getPhotoAnalysisAttributesForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 photoAnalysisAttributes];

  if (v4)
  {
    v5 = [v3 photoAnalysisAttributes];
  }

  else
  {
    v6 = [v3 managedObjectContext];
    v7 = [MEMORY[0x1E69BE610] entityName];
    v5 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext();

    if (v5)
    {
      [v3 setPhotoAnalysisAttributes:v5];
    }
  }

  return v5;
}

- (BOOL)validateWriteAccessForContentURL:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 isFileURL])
  {
    if (!PLIsAssetsd() || [(PHChangeRequest *)self isClientEntitled])
    {
      goto LABEL_6;
    }

    v7 = [v6 path];
    if ([MEMORY[0x1E69BF2E0] processWithID:self->_clientProcessIdentifier canWriteSandboxForPath:v7])
    {

LABEL_6:
      v8 = 0;
      v9 = 1;
      goto LABEL_11;
    }

    v14 = MEMORY[0x1E696ABC0];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid URL %@", v6, *MEMORY[0x1E696A578]];
    v17 = v11;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v8 = [v14 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v15];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid URL %@", v6];
    v19[0] = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v8 = [v10 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v11];
  }

  if (a4)
  {
    v12 = v8;
    v9 = 0;
    *a4 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (BOOL)validateContentEditingOutput:(id)a3 error:(id *)a4
{
  v49[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 adjustmentData];
  if (v7)
  {
    v43 = 0;
    v8 = [(PHAssetChangeRequest *)self validateAdjustmentDataForAssetMutation:v7 error:&v43];
    v9 = v43;
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A578];
    v49[0] = @"Missing adjustment data";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v9 = [v10 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v11];

    v8 = 0;
  }

  v12 = [v6 renderedContentURL];
  v13 = v12;
  if (v8 && v12)
  {
    v42 = v9;
    v14 = [(PHAssetChangeRequest *)self validateWriteAccessForContentURL:v12 error:&v42];
    v15 = v42;

    if (!v14)
    {
      goto LABEL_30;
    }

    v9 = v15;
  }

  else if (!v8)
  {
    v16 = 0;
    v15 = v9;
    if (!a4)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if ([v6 isAsyncAdjustment])
  {
    v41 = v9;
    v16 = [(PHAssetChangeRequest *)self _validateAsyncContentEditingOutputPreviewRenderURLs:v6 error:&v41];
    v17 = v41;
LABEL_11:
    v15 = v17;
    goto LABEL_12;
  }

  if (([v6 isAsyncAdjustment] & 1) == 0)
  {
    v18 = [v6 mediaType];
    if (v18 == 2)
    {
      if (v13)
      {
        v38 = v9;
        v19 = [(PHAssetChangeRequest *)self validateVideoURLForAssetMutation:v13 error:&v38];
        v20 = v38;
        goto LABEL_24;
      }

      v29 = objc_alloc(MEMORY[0x1E69C0910]);
      v30 = [v7 formatIdentifier];
      v31 = [v7 formatVersion];
      v32 = [v7 data];
      v33 = [v29 initWithFormatIdentifier:v30 formatVersion:v31 data:v32 baseVersion:0 editorBundleID:0 renderTypes:0];

      if ([v33 isRecognizedFormat])
      {

LABEL_26:
        if ([v6 isLoopingLivePhoto])
        {
          v37 = v9;
          v16 = [(PHAssetChangeRequest *)self _validateAndGenerateStillImageForLoopingLivePhotoWithContentEditingOutput:v6 error:&v37];
          v17 = v37;
          goto LABEL_11;
        }

        goto LABEL_17;
      }

      v34 = MEMORY[0x1E696ABC0];
      v46 = *MEMORY[0x1E696A578];
      v47 = @"Missing rendered video content";
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      [v34 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v35];
      v15 = v36 = v33;

      v16 = 0;
      v9 = v36;
    }

    else
    {
      if (v18 == 1)
      {
        if (![v6 isLoopingLivePhoto])
        {
          v39 = v9;
          v26 = [(PHAssetChangeRequest *)self _validateImageURLForAssetMutation:v13 error:&v39];
          v15 = v39;

          if (v26)
          {
            goto LABEL_25;
          }

          goto LABEL_30;
        }

        v40 = v9;
        v19 = [(PHAssetChangeRequest *)self validateVideoURLForAssetMutation:v13 error:&v40];
        v20 = v40;
LABEL_24:
        v15 = v20;

        if (v19)
        {
LABEL_25:
          v9 = v15;
          goto LABEL_26;
        }

LABEL_30:
        v16 = 0;
        if (!a4)
        {
LABEL_33:
          v9 = v15;
          goto LABEL_34;
        }

LABEL_31:
        if (!v16)
        {
          v27 = v15;
          v16 = 0;
          *a4 = v15;
        }

        goto LABEL_33;
      }

      v21 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A578];
      v22 = MEMORY[0x1E696AEC0];
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:v18];
      v24 = [v22 stringWithFormat:@"Cannot modify content type %@", v23];
      v45 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v15 = [v21 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v25];

      v16 = 0;
      v9 = v23;
    }

LABEL_12:

    if (!a4)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

LABEL_17:
  v16 = 1;
LABEL_34:

  return v16;
}

- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4
{
  v90[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PHChangeRequest *)self helper];
  v78 = 0;
  v8 = [v7 validateMutationsToManagedObject:v6 error:&v78];
  v9 = v78;

  if (!v8)
  {
    goto LABEL_8;
  }

  v10 = [(PHAssetChangeRequest *)self assetDescription];
  v77 = v9;
  v11 = [(PHAssetChangeRequest *)self validateAssetDescription:v10 error:&v77];
  v12 = v77;

  if (!v11)
  {
    v9 = v12;
LABEL_8:
    v16 = [(PHAssetChangeRequest *)self contentEditingOutput];
    goto LABEL_9;
  }

  v13 = [(PHAssetChangeRequest *)self accessibilityDescription];
  v76 = v12;
  v14 = [(PHAssetChangeRequest *)self validateAccessibilityDescription:v13 error:&v76];
  v9 = v76;

  v15 = [(PHAssetChangeRequest *)self contentEditingOutput];
  v16 = v15;
  if (!v14)
  {
    goto LABEL_9;
  }

  if ([v15 isOnlyChangingOriginalChoice])
  {
    v17 = [v16 originalResourceChoice];
    v18 = [v17 integerValue];

    if (v18 >= 2)
    {
      v19 = MEMORY[0x1E696ABC0];
      v89 = *MEMORY[0x1E696A578];
      v90[0] = @"Invalid original choice, only valid values are Original or OriginalAlt";
      v20 = MEMORY[0x1E695DF20];
      v21 = v90;
      v22 = &v89;
LABEL_34:
      v37 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
      v54 = [v19 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v37];

      goto LABEL_35;
    }

    if (([v6 isRAWPlusJPEG] & 1) == 0)
    {
      v19 = MEMORY[0x1E696ABC0];
      v87 = *MEMORY[0x1E696A578];
      v88 = @"Can only swap original choice of R+J asset";
      v20 = MEMORY[0x1E695DF20];
      v21 = &v88;
      v22 = &v87;
      goto LABEL_34;
    }
  }

  if (![(PHAssetChangeRequest *)self didChangeAdjustments])
  {
    goto LABEL_24;
  }

  if (v16 && ([v16 isOnlyChangingOriginalChoice] & 1) == 0)
  {
    v75 = v9;
    v55 = [(PHAssetChangeRequest *)self validateContentEditingOutput:v16 error:&v75];
    v56 = v75;

    v57 = [v16 originalResourceChoice];

    if (!v57)
    {
      if (!v55)
      {
        v23 = 0;
        v9 = v56;
        goto LABEL_10;
      }

      v9 = v56;
      goto LABEL_24;
    }

    v58 = [v16 originalResourceChoice];
    v59 = [v58 integerValue];

    v60 = v6;
    v61 = [v60 pathForOriginalFile];
    v62 = [v61 pathExtension];

    v63 = [MEMORY[0x1E69BE540] uniformTypeIdentifierFromPathExtension:v62 assetType:{objc_msgSend(v60, "kind")}];
    v74 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v63];
    if ([v74 conformsToType:*MEMORY[0x1E6982F88]] && (v59 - 1) < 2 || objc_msgSend(v60, "isRAWPlusJPEG") && (v59 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v72 = MEMORY[0x1E696ABC0];
      v85 = *MEMORY[0x1E696A578];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid original resource choice: %ld", v59];
      v73 = v60;
      v64 = v63;
      v66 = v65 = v56;
      v86 = v66;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v68 = v67 = v62;
      v9 = [v72 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v68];

      v63 = v64;
      v60 = v73;

      v62 = v67;
      v55 = 0;
    }

    else
    {
      v9 = v56;
    }

    if (v55)
    {
      goto LABEL_24;
    }

LABEL_9:
    v23 = 0;
    goto LABEL_10;
  }

  v26 = [(PHChangeRequest *)self photoLibrary];
  if (![v26 isCloudPhotoLibraryEnabled])
  {
LABEL_23:

    goto LABEL_24;
  }

  v27 = [v6 entity];
  v28 = MEMORY[0x1E69BE540];
  v29 = [v6 managedObjectContext];
  v30 = [v28 entityInManagedObjectContext:v29];
  v31 = [v27 isKindOfEntity:v30];

  if (v31)
  {
    v26 = v6;
    v32 = [v26 master];
    if (v32)
    {
      v33 = [v26 additionalAttributes];
      v34 = [v33 originalResourceChoice];
      v35 = [v34 integerValue] == 1;

      v36 = [v26 uuid];
      LODWORD(v34) = [v32 allOriginalsAreLocallyAvailableForAssetUuid:v36 useOriginalAltInsteadOfOriginal:v35];

      if (!v34)
      {
        v69 = MEMORY[0x1E696ABC0];
        v83 = *MEMORY[0x1E696A578];
        v84 = @"Missing original resources";
        v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v71 = [v69 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v70];

        v23 = 0;
        v9 = v71;
        goto LABEL_10;
      }
    }

    goto LABEL_23;
  }

LABEL_24:
  if (self->_didPromoteToGuestAsset)
  {
    v37 = v6;
    [MEMORY[0x1E69BF328] maskForAllowedToPromoteToGuestAsset];
    [v37 savedAssetType];
    if (!PLValidatedSavedAssetTypeApplies())
    {
      v47 = MEMORY[0x1E696AEC0];
      v48 = [v37 uuid];
      v49 = [v37 savedAssetType];
      [v37 savedAssetType];
      v50 = PLValidatedSavedAssetTypeDescription();
      v51 = [v47 stringWithFormat:@"Not allowed to promote asset %@ savedAssetType %hd(%@) to Guest", v48, v49, v50];

      v52 = MEMORY[0x1E696ABC0];
      v81 = *MEMORY[0x1E696A278];
      v82 = v51;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v54 = [v52 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v53];

LABEL_35:
      v23 = 0;
      v9 = v54;
      goto LABEL_10;
    }
  }

  if (!self->_didResetGuestAssetPromotion)
  {
    v23 = 1;
    goto LABEL_13;
  }

  v38 = v6;
  [MEMORY[0x1E69BF328] maskForAllowedToPromoteToGuestAsset];
  [v38 savedAssetType];
  v23 = PLValidatedSavedAssetTypeApplies();
  if ((v23 & 1) == 0)
  {
    v39 = MEMORY[0x1E696AEC0];
    v40 = [v38 uuid];
    v41 = [v38 savedAssetType];
    [v38 savedAssetType];
    v42 = PLValidatedSavedAssetTypeDescription();
    v43 = [v39 stringWithFormat:@"Not allowed to reset promote asset %@ savedAssetType %hd(%@) to Guest", v40, v41, v42];

    v44 = MEMORY[0x1E696ABC0];
    v79 = *MEMORY[0x1E696A278];
    v80 = v43;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    v46 = [v44 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v45];

    v9 = v46;
  }

LABEL_10:
  if (a4 && (v23 & 1) == 0)
  {
    v24 = v9;
    v23 = 0;
    *a4 = v9;
  }

LABEL_13:

  return v23;
}

- (BOOL)_validateAsyncContentEditingOutputPreviewRenderURLs:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 mediaType] == 2)
  {
    v7 = [v6 renderedVideoPosterURL];
    v16 = 0;
    v8 = [(PHAssetChangeRequest *)self _validateImageURLForAssetMutation:v7 error:&v16];
    v9 = v16;

    if (v8)
    {
      v10 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  v12 = [v6 renderedPreviewContentURL];
  v15 = v9;
  v10 = [(PHAssetChangeRequest *)self _validateImageURLForAssetMutation:v12 error:&v15];
  v9 = v15;

  if (a4 && !v10)
  {
    v13 = v9;
    v10 = 0;
    *a4 = v9;
  }

LABEL_8:

  return v10;
}

- (BOOL)validateAccessibilityDescription:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6 || [(PHChangeRequest *)self isClientEntitled]|| [(PHAssetChangeRequest *)self duplicateAllowsPrivateMetadata])
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Updating accessibility description is not allowed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v7 = [v10 ph_errorWithDomain:@"PHPhotosErrorDomain" code:5101 userInfo:v11];

    if (a4)
    {
      v12 = v7;
      v8 = 0;
      *a4 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)validateAssetDescription:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6 || [(PHChangeRequest *)self isClientEntitled]|| [(PHAssetChangeRequest *)self duplicateAllowsPrivateMetadata])
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Updating asset description is not allowed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v7 = [v10 ph_errorWithDomain:@"PHPhotosErrorDomain" code:5101 userInfo:v11];

    if (a4)
    {
      v12 = v7;
      v8 = 0;
      *a4 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)validateAdjustmentDataForAssetMutation:(id)a3 error:(id *)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 formatIdentifier];
  v8 = [v7 lowercaseString];
  v9 = [v8 hasPrefix:@"com.apple."];

  if (!v9 || self->_clientEntitled || (-[NSString lowercaseString](self->_editorBundleID, "lowercaseString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 hasPrefix:@"com.apple."], v10, (v11 & 1) != 0))
  {
    v12 = [v6 data];
    if (![v12 length])
    {
      v18 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v29 = @"Adjustment data is missing";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v20 = v18;
      v21 = 3303;
      goto LABEL_11;
    }

    v13 = [v12 length];
    if (v13 <= +[PHContentEditingOutput maximumAdjustmentDataLength])
    {

      v22 = 0;
      v23 = 1;
      goto LABEL_14;
    }

    v14 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27 = @"Adjustment data too large";
    v15 = MEMORY[0x1E695DF20];
    v16 = &v27;
    v17 = &v26;
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid format identifier %@", v7];
    v31[0] = v12;
    v15 = MEMORY[0x1E695DF20];
    v16 = v31;
    v17 = &v30;
  }

  v19 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
  v20 = v14;
  v21 = 3302;
LABEL_11:
  v22 = [v20 ph_errorWithDomain:@"PHPhotosErrorDomain" code:v21 userInfo:v19];

  if (a4)
  {
    v24 = v22;
    v23 = 0;
    *a4 = v22;
  }

  else
  {
    v23 = 0;
  }

LABEL_14:

  return v23;
}

- (BOOL)validateVideoURLForAssetMutation:(id)a3 error:(id *)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(PHValidator);
    LOBYTE(a4) = [(PHValidator *)v6 validateURL:v5 withOptions:32 error:a4];
  }

  else if (a4)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"failed to validate with nil url";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a4 = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v8];

    LOBYTE(a4) = 0;
  }

  return a4;
}

- (BOOL)_validateImageURLForAssetMutation:(id)a3 error:(id *)a4
{
  v62[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = CGImageSourceCreateWithURL(v6, 0);
  if (!v7)
  {
    v23 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A278];
    v62[0] = @"Cannot create image source from given URL";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    v22 = [v23 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v24];

    v11 = 0;
LABEL_15:
    v31 = v22;
    goto LABEL_16;
  }

  v8 = v7;
  v9 = CGImageSourceGetType(v7);
  v10 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v9];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  if (([v10 conformsToType:*MEMORY[0x1E6982E58]] & 1) != 0 || objc_msgSend(v11, "conformsToType:", *MEMORY[0x1E6982E00]))
  {

    goto LABEL_6;
  }

  v25 = [v11 conformsToType:*MEMORY[0x1E6982E10]];

  if (!v25)
  {
LABEL_12:
    v26 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A278];
    v60 = @"Image is not JPEG or HEIF";
    v27 = MEMORY[0x1E695DF20];
    v28 = &v60;
    v29 = &v59;
LABEL_13:
    v30 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
    v22 = [v26 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v30];

    goto LABEL_14;
  }

LABEL_6:

  v12 = [(PHChangeRequest *)self helper];
  v13 = [v12 clientLinkedAgainst];
  v14 = [v13 clientLinkedOnOrAfterFall2023OSVersions];

  if (v14)
  {
    v15 = MEMORY[0x1E6982C40];
    v16 = [(__CFURL *)v6 pathExtension];
    v9 = [v15 typeWithFilenameExtension:v16];

    if (!v9 || ([v9 isDynamic] & 1) != 0 || (objc_msgSend(v11, "isEqual:", v9) & 1) == 0 && (!objc_msgSend(v11, "isEqual:", *MEMORY[0x1E6982E10]) || (v50 = *MEMORY[0x1E6983138], !objc_msgSend(v11, "conformsToType:", *MEMORY[0x1E6983138])) || !objc_msgSend(v9, "conformsToType:", v50)))
    {
      v17 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A278];
      v18 = MEMORY[0x1E696AEC0];
      v19 = [(__CFURL *)v6 path];
      v20 = [v18 stringWithFormat:@"Invalid image type (%@) for specified path: (%@)", v11, v19];
      v58 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v22 = [v17 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v21];

LABEL_14:
      CFRelease(v8);
      goto LABEL_15;
    }
  }

  v9 = CGImageSourceCopyProperties(v8, 0);
  v35 = *MEMORY[0x1E696DE78];
  v36 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 intValue];

    if (v38 != 1)
    {
      v26 = MEMORY[0x1E696ABC0];
      v55 = *MEMORY[0x1E696A278];
      v56 = @"Image is not in up (1) orientation";
      v27 = MEMORY[0x1E695DF20];
      v28 = &v56;
      v29 = &v55;
      goto LABEL_13;
    }
  }

  if (!CGImageSourceGetCount(v8))
  {
    v46 = MEMORY[0x1E696ABC0];
    v53 = *MEMORY[0x1E696A278];
    v54 = @"Empty image source";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v22 = [v46 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v9];
    goto LABEL_14;
  }

  v39 = CGImageSourceCopyPropertiesAtIndex(v8, 0, 0);
  v40 = [(__CFDictionary *)v39 objectForKeyedSubscript:v35];
  v41 = v40;
  if (v40 && [v40 intValue] != 1)
  {

    goto LABEL_33;
  }

  v42 = [(__CFDictionary *)v39 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
  v43 = [v42 objectForKeyedSubscript:v35];
  v44 = v43;
  if (!v43)
  {

    goto LABEL_39;
  }

  v45 = [v43 intValue];

  if (v45 != 1)
  {
LABEL_33:
    v47 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A278];
    v52 = @"Image is not in up (1) orientation";
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v44 = [v47 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v48];

    v49 = 0;
    goto LABEL_40;
  }

  v44 = 0;
LABEL_39:
  v49 = 1;
LABEL_40:

  CFRelease(v8);
  v31 = v44;
  if (v49)
  {
    v33 = 1;
    goto LABEL_19;
  }

LABEL_16:
  if (a4)
  {
    v32 = v31;
    v33 = 0;
    *a4 = v31;
  }

  else
  {
    v33 = 0;
  }

LABEL_19:

  return v33;
}

- (BOOL)_validateAndGenerateStillImageForLoopingLivePhotoWithContentEditingOutput:(id)a3 error:(id *)a4
{
  v42[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 renderedContentURL];
  v8 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v7 options:0];
  v9 = [objc_alloc(MEMORY[0x1E69C0718]) initWithAVAsset:v8 timeZoneLookup:0];
  if ([v9 isLoopingVideo])
  {
    v10 = [v6 shouldPreferHEICForRenderedImages];
    v11 = objc_opt_class();
    v12 = [(PHChangeRequest *)self photoLibrary];
    v13 = [v12 photoLibraryURL];
    v14 = [v11 imageRenderURLUsingHEICFormat:v10 appropriateForURL:v13];

    [v6 setRenderedContentURL:v14];
    [v6 setRenderedVideoComplementContentURL:v7];
    v34 = [objc_alloc(MEMORY[0x1E6987E68]) initWithAsset:v8];
    v15 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:? atTime:? actualTime:? error:?];
    v33 = 0;
    if (v15)
    {
      v16 = [v6 renderedContentURL];
      v17 = MEMORY[0x1E6982E00];
      if (!v10)
      {
        v17 = MEMORY[0x1E6982E58];
      }

      v18 = [*v17 identifier];
      v19 = CGImageDestinationCreateWithURL(v16, v18, 1uLL, 0);

      if (v19)
      {
        CGImageDestinationAddImage(v19, v15, MEMORY[0x1E695E0F8]);
        v20 = CGImageDestinationFinalize(v19);
        if (!v20)
        {
          v32 = MEMORY[0x1E696ABC0];
          v39 = *MEMORY[0x1E696A578];
          v40 = @"Failed to write still image";
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v22 = [v32 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v21];
          if (a4)
          {
            *a4 = v22;
          }
        }

        CFRelease(v19);
      }

      else
      {
        v28 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A578];
        v38 = @"Failed to create still image";
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v30 = [v28 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v29];
        if (a4)
        {
          *a4 = v30;
        }

        v20 = 0;
      }

      CFRelease(v15);
    }

    else
    {
      v25 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A578];
      v36 = @"Failed to generate still image from rendered content";
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v27 = [v25 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v26];
      if (a4)
      {
        *a4 = v27;
      }

      v20 = 0;
    }
  }

  else
  {
    v23 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v42[0] = @"Looping video files must have loop metadata preserved on plugin save";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v24 = [v23 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v14];
    v20 = 0;
    if (a4)
    {
      *a4 = v24;
    }
  }

  return v20;
}

- (void)setViewPresentation:(signed __int16)a3
{
  self->_viewPresentation = a3;
  self->_didSetViewPresentation = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setLocalAnalysisStage:(signed __int16)a3
{
  self->_localAnalysisStage = a3;
  self->_didSetLocalAnalysisStage = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setFaceAnalysisVersion:(signed __int16)a3
{
  self->_faceAnalysisVersion = a3;
  self->_didSetFaceAnalysisVersion = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)_setSyndicationIdentifier:(id)a3
{
  self->_didSetSyndicationIdentifier = 1;
  objc_storeStrong(&self->_syndicationIdentifier, a3);

  [(PHChangeRequest *)self didMutate];
}

- (void)setSyndicationIdentifierOnMomentSharedAsset:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PHAsset *)self->_originalAsset sourceType]== 8)
  {
    [(PHAssetChangeRequest *)self _setSyndicationIdentifier:v4];
  }

  else
  {
    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = [(PHObject *)self->_originalAsset uuid];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_FAULT, "syndicationIdentifier can only be set on PHAssetSourceTypeMomentShared assets: %@", &v7, 0xCu);
    }
  }
}

- (void)setSyndicationProcessingVersion:(unint64_t)a3
{
  self->_didSetSyndicationProcessingVersion = 1;
  self->_syndicationProcessingVersion = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setSyndicationProcessingValue:(unsigned __int16)a3
{
  self->_didSetSyndicationProcessingValue = 1;
  self->_syndicationProcessingValue = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setScreenTimeDeviceImageSensitivity:(signed __int16)a3
{
  self->_didSetScreenTimeDeviceImageSensitivity = 1;
  self->_screenTimeDeviceImageSensitivity = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setLibraryScopeContributors:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = [a3 valueForKey:@"uuid"];
  v6 = [v4 setWithArray:v5];
  libraryScopeOriginatorUUIDs = self->_libraryScopeOriginatorUUIDs;
  self->_libraryScopeOriginatorUUIDs = v6;

  [(PHChangeRequest *)self didMutate];
}

- (void)setTimeZone:(id)a3 withDate:(id)a4
{
  self->_didSetTimeZone = 1;
  v6 = a4;
  v7 = a3;
  v8 = [v7 name];
  timeZoneName = self->_timeZoneName;
  self->_timeZoneName = v8;

  v10 = [v7 secondsFromGMTForDate:v6];
  self->_timeZoneOffsetValue = v10;

  [(PHChangeRequest *)self didMutate];
}

- (void)resetWallpaperProperties
{
  self->_resetWallpaperProperties = 1;
  if (self->_didSetWallpaperPropertiesData)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3385 description:@"A change request should not have wallpaper proeprties data set if it is being reset."];
  }

  [(PHChangeRequest *)self didMutate];
}

- (void)resetVisualSearchAttributes
{
  self->_resetVisualSearchProperties = 1;
  if (self->_didSetVisualSearchProperties)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3379 description:@"A change request should not have VisualSearch data set if it is being reset."];
  }

  [(PHChangeRequest *)self didMutate];
}

- (void)setStickerConfidenceScore:(float)a3 stickerAlgorithmVersion:(int64_t)a4
{
  self->_didSetVisualSearchProperties = 1;
  self->_didSetStickerConfidenceScore = 1;
  self->_stickerConfidenceScore = a3;
  self->_stickerConfidenceScoreAlgorithmVersion = a4;
  [(PHChangeRequest *)self didMutate];
}

- (void)setCompactVideoSCSensitivityAnalysis:(int64_t)a3
{
  self->_compactSCSensitivityAnalysis = a3;
  v4 = [MEMORY[0x1E69BE5A0] currentVideoSensitivityAnalysisVersion];
  self->_videoSensitivityAnalysisVersion = [v4 shortValue];

  self->_didSetCompactVideoSCSensitivityAnalysis = 1;

  [(PHChangeRequest *)self didMutate];
}

- (void)setCompactVideoSCSensitivityAnalysis:(int64_t)a3 videoSensitivityAnalysisVersion:(signed __int16)a4
{
  self->_compactSCSensitivityAnalysis = a3;
  self->_videoSensitivityAnalysisVersion = a4;
  self->_didSetCompactVideoSCSensitivityAnalysis = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setCompactImageSCSensitivityAnalysis:(int64_t)a3
{
  self->_compactSCSensitivityAnalysis = a3;
  self->_didSetCompactImageSCSensitivityAnalysis = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setVisualSearchData:(id)a3 stickerConfidenceScore:(float)a4 algorithmVersion:(int64_t)a5 adjustmentVersion:(id)a6
{
  v11 = a3;
  v12 = a6;
  self->_didSetVisualSearchProperties = 1;
  self->_didSetStickerConfidenceScore = 1;
  self->_didSetVisualSearchData = 1;
  if (self->_resetVisualSearchProperties)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3337 description:@"A change request should be resetting VisualSearch data set if it is setting new data."];
  }

  if (a5 <= 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3339 description:@"Cannot set a zero algorithm version"];

    if (v12)
    {
      goto LABEL_5;
    }
  }

  else if (v12)
  {
    goto LABEL_5;
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3340 description:{@"Invalid parameter not satisfying: %@", @"adjustmentVersion"}];

LABEL_5:
  visualSearchData = self->_visualSearchData;
  self->_visualSearchData = v11;
  v14 = v11;

  self->_stickerConfidenceScore = a4;
  self->_stickerConfidenceScoreAlgorithmVersion = a5;
  self->_visualSearchAlgorithmVersion = a5;
  visualSearchAdjustmentVersion = self->_visualSearchAdjustmentVersion;
  self->_visualSearchAdjustmentVersion = v12;

  [(PHChangeRequest *)self didMutate];
}

- (void)setVisualSearchData:(id)a3 algorithmVersion:(int64_t)a4 adjustmentVersion:(id)a5
{
  v9 = a3;
  v10 = a5;
  self->_didSetVisualSearchProperties = 1;
  self->_didSetVisualSearchData = 1;
  if (self->_resetVisualSearchProperties)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3323 description:@"A change request should be resetting VisualSearch data set if it is setting new data."];
  }

  if (a4 <= 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3325 description:@"Cannot set a zero algorithm version"];

    if (v10)
    {
      goto LABEL_5;
    }
  }

  else if (v10)
  {
    goto LABEL_5;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3326 description:{@"Invalid parameter not satisfying: %@", @"adjustmentVersion"}];

LABEL_5:
  visualSearchData = self->_visualSearchData;
  self->_visualSearchData = v9;
  v12 = v9;

  self->_visualSearchAlgorithmVersion = a4;
  visualSearchAdjustmentVersion = self->_visualSearchAdjustmentVersion;
  self->_visualSearchAdjustmentVersion = v10;

  [(PHChangeRequest *)self didMutate];
}

- (void)resetTextUnderstandingAttributes
{
  if (self->_didSetTextUnderstandingProperties)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3316 description:@"A change request should not have TU data set if it is being reset."];
  }

  self->_resetTextUnderstandingProperties = 1;
}

- (void)setTextUnderstandingData:(id)a3 version:(int64_t)a4
{
  v7 = a3;
  if (self->_resetTextUnderstandingProperties)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3308 description:@"A change request should not be resetting OCR data set if it is setting new TU data."];
  }

  self->_didSetTextUnderstandingProperties = 1;
  textUnderstandingData = self->_textUnderstandingData;
  self->_textUnderstandingData = v7;

  self->_textUnderstandingVersion = a4;

  [(PHChangeRequest *)self didMutate];
}

- (void)resetCharacterRecognitionAttributes
{
  self->_resetCharacterRecognitionProperties = 1;
  if (self->_didSetCharacterRecognitionData)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3303 description:@"A change request should not have OCR data set if it is being reset."];
  }

  [(PHChangeRequest *)self didMutate];
}

- (void)setCharacterRecognitionData:(id)a3 machineReadableCodeData:(id)a4 algorithmVersion:(int64_t)a5 adjustmentVersion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  self->_didSetCharacterRecognitionData = 1;
  if (self->_resetCharacterRecognitionProperties)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3290 description:@"A change request should not be resetting OCR data set if it is setting new data."];
  }

  if (a5 <= 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3292 description:@"Cannot set a zero algorithm version"];

    if (v13)
    {
      goto LABEL_5;
    }
  }

  else if (v13)
  {
    goto LABEL_5;
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3293 description:{@"Invalid parameter not satisfying: %@", @"adjustmentVersion"}];

LABEL_5:
  characterRecognitionData = self->_characterRecognitionData;
  self->_characterRecognitionData = v11;
  v15 = v11;

  machineReadableCodeData = self->_machineReadableCodeData;
  self->_machineReadableCodeData = v12;
  v17 = v12;

  self->_characterRecognitionAlgorithmVersion = a5;
  characterRecognitionAdjustmentVersion = self->_characterRecognitionAdjustmentVersion;
  self->_characterRecognitionAdjustmentVersion = v13;

  [(PHChangeRequest *)self didMutate];
}

- (void)setColorNormalizationData:(id)a3
{
  v4 = [a3 copy];
  colorNormalizationData = self->_colorNormalizationData;
  self->_colorNormalizationData = v4;

  [(PHChangeRequest *)self didMutate];
}

- (void)setProbableRotationDirectionConfidence:(float)a3
{
  self->_didSetProbableRotationDirectionConfidence = 1;
  self->_probableRotationDirectionConfidence = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setProbableRotationDirection:(signed __int16)a3
{
  self->_didSetProbableRotationDirection = 1;
  self->_probableRotationDirection = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setAudioClassification:(signed __int16)a3
{
  self->_didSetAudioClassification = 1;
  self->_audioClassification = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setFaceCount:(unint64_t)a3
{
  self->_didSetFaceCount = 1;
  self->_faceCount = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setSettlingEffectScore:(float)a3
{
  self->_didSetSettlingEffectScore = 1;
  self->_settlingEffectScore = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setAudioScore:(float)a3
{
  self->_didSetAudioScore = 1;
  self->_audioScore = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setActivityScore:(float)a3
{
  self->_didSetActivityScore = 1;
  self->_activityScore = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setVideoScore:(float)a3
{
  self->_didSetVideoScore = 1;
  self->_videoScore = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setVideoStickerSuggestionScore:(float)a3
{
  self->_didSetVideoStickerSuggestionScore = 1;
  self->_videoStickerSuggestionScore = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setAutoplaySuggestionScore:(float)a3
{
  self->_didSetAutoplaySuggestionScore = 1;
  self->_autoplaySuggestionScore = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setWallpaperScore:(float)a3
{
  self->_didSetWallpaperScore = 1;
  self->_wallpaperScore = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setExposureScore:(float)a3
{
  self->_didSetExposureScore = 1;
  self->_exposureScore = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setBlurrinessScore:(float)a3
{
  self->_didSetBlurrinessScore = 1;
  self->_blurrinessScore = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setMediaAnalysisTimeStamp:(id)a3
{
  self->_didSetMediaAnalysisTimeStamp = 1;
  objc_storeStrong(&self->_mediaAnalysisTimeStamp, a3);

  [(PHChangeRequest *)self didMutate];
}

- (void)setMediaAnalysisImageVersion:(signed __int16)a3
{
  self->_didSetMediaAnalysisImageVersion = 1;
  self->_mediaAnalysisImageVersion = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setMediaAnalysisVersion:(unint64_t)a3
{
  self->_didSetMediaAnalysisVersion = 1;
  self->_mediaAnalysisVersion = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setComputeSyncMediaAnalysisPayload:(id)a3
{
  objc_storeStrong(&self->_computeSyncMediaAnalysisPayload, a3);

  [(PHChangeRequest *)self didMutate];
}

- (void)setBestPlaybackRectWithNormalizedRect:(CGRect)a3
{
  v5 = 0;
  v4 = 0;
  [(PHAssetChangeRequest *)self setRectWithNormalizedRect:&v5 forPackedRect:&v4 forSetFlag:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  self->_packedBestPlaybackRect = v5;
  self->_didSetPackedBestPlaybackRect = v4;
}

- (void)setBestKeyFrame:(CGImage *)a3 time:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = [(PHAsset *)self->_originalAsset isVideo];
  if (a3 && v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v9 = [*MEMORY[0x1E6982E58] identifier];
    v10 = CGImageDestinationCreateWithData(v8, v9, 1uLL, 0);

    if (v10)
    {
      CGImageDestinationAddImage(v10, a3, 0);
      CGImageDestinationFinalize(v10);
      CFRelease(v10);
    }

    bestKeyFrameJPEGData = self->_bestKeyFrameJPEGData;
    self->_bestKeyFrameJPEGData = v8;
  }

  if (a4->var2)
  {
    var3 = a4->var3;
    *&self->_bestKeyFrameTime.value = *&a4->var0;
    self->_bestKeyFrameTime.epoch = var3;
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      bestKeyFrameTime = self->_bestKeyFrameTime;
      v13 = CMTimeCopyDescription(0, &bestKeyFrameTime);
      v15 = [(NSData *)self->_bestKeyFrameJPEGData length];
      v16 = [(PHChangeRequest *)self uuid];
      LODWORD(bestKeyFrameTime.value) = 138412802;
      *(&bestKeyFrameTime.value + 4) = v13;
      LOWORD(bestKeyFrameTime.flags) = 2048;
      *(&bestKeyFrameTime.flags + 2) = v15;
      HIWORD(bestKeyFrameTime.epoch) = 2112;
      v18 = v16;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "Client setting best key frame time: %@ key frame image length: %lu for asset: %@", &bestKeyFrameTime, 0x20u);

      goto LABEL_11;
    }
  }

  else
  {
    self->_didUnsetBestKeyFrameTime = 1;
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(PHChangeRequest *)self uuid];
      LODWORD(bestKeyFrameTime.value) = 138412290;
      *(&bestKeyFrameTime.value + 4) = v13;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "Client unsetting best key frame time for asset: %@", &bestKeyFrameTime, 0xCu);
LABEL_11:
    }
  }

  [(PHChangeRequest *)self didMutate];
}

- (void)setAnimatedStickerTimeRange:(id *)a3
{
  v4 = *&a3->var0.var3;
  v3 = *&a3->var1.var1;
  *&self->_animatedStickerTimeRange.start.value = *&a3->var0.var0;
  *&self->_animatedStickerTimeRange.start.epoch = v4;
  *&self->_animatedStickerTimeRange.duration.timescale = v3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setBestVideoTimeRange:(id *)a3
{
  v4 = *&a3->var0.var3;
  v3 = *&a3->var1.var1;
  *&self->_bestVideoTimeRange.start.value = *&a3->var0.var0;
  *&self->_bestVideoTimeRange.start.epoch = v4;
  *&self->_bestVideoTimeRange.duration.timescale = v3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setWallpaperPropertiesData:(id)a3
{
  v5 = a3;
  if (self->_resetWallpaperProperties)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3127 description:@"A change request should be resetting wallpaper properties data set if it is setting new data."];
  }

  self->_didSetWallpaperPropertiesData = 1;
  wallpaperPropertiesData = self->_wallpaperPropertiesData;
  self->_wallpaperPropertiesData = v5;

  [(PHChangeRequest *)self didMutate];
}

- (void)setWallpaperPropertiesVersion:(unint64_t)a3
{
  if (self->_resetWallpaperProperties)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3120 description:@"A change request should be resetting wallpaper properties version set if it is setting new version."];
  }

  self->_didSetWallpaperPropertiesVersion = 1;
  self->_wallpaperPropertiesVersion = a3;

  [(PHChangeRequest *)self didMutate];
}

- (void)setWallpaperPropertiesTimestamp:(id)a3
{
  v5 = a3;
  if (self->_resetWallpaperProperties)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3113 description:@"A change request should be resetting wallpaper properties timestamp set if it is setting new timestamp."];
  }

  self->_didSetWallpaperPropertiesTimestamp = 1;
  wallpaperPropertiesTimestamp = self->_wallpaperPropertiesTimestamp;
  self->_wallpaperPropertiesTimestamp = v5;

  [(PHChangeRequest *)self didMutate];
}

- (PHAssetChangeRequest)initWithCoder:(id)a3
{
  v333[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"helper"];
  [v5 setChangeRequest:self];
  [v5 setMutated:1];
  v6 = objc_alloc_init(MEMORY[0x1E69BE298]);
  v7 = [(PHAssetChangeRequest *)self initWithHelper:v5];

  if (v7)
  {
    v331 = v5;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detectedFaces"];
    facesHelper = v7->_facesHelper;
    v7->_facesHelper = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"temporalDetectedFaces"];
    temporalFacesHelper = v7->_temporalFacesHelper;
    v7->_temporalFacesHelper = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keywords"];
    keywordsHelper = v7->_keywordsHelper;
    v7->_keywordsHelper = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudComments"];
    commentsHelper = v7->_commentsHelper;
    v7->_commentsHelper = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"likeComments"];
    likesHelper = v7->_likesHelper;
    v7->_likesHelper = v16;

    v7->_clientProcessIdentifier = [v6 clientProcessIdentifier];
    v18 = [v6 photoKitEntitled];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didChangeAdjustments"];
    v20 = [v4 decodeBoolForKey:v19];

    if (v20)
    {
      [(PHAssetChangeRequest *)v7 markDidChangeAdjustments];
      v21 = objc_opt_class();
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"contentEditingOutput"];
      v23 = [v4 decodeObjectOfClass:v21 forKey:v22];

      [(PHAssetChangeRequest *)v7 setContentEditingOutput:v23];
      if (v18)
      {
        v24 = objc_opt_class();
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"editorBundleURL"];
        v26 = [v4 decodeObjectOfClass:v24 forKey:v25];
        editorBundleURL = v7->_editorBundleURL;
        v7->_editorBundleURL = v26;

        if (v7->_editorBundleURL)
        {
          v28 = [MEMORY[0x1E696AAE8] bundleWithURL:?];
          v29 = [v28 bundleIdentifier];
          editorBundleID = v7->_editorBundleID;
          v7->_editorBundleID = v29;
        }

        if (!v7->_editorBundleID)
        {
          v31 = objc_opt_class();
          v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"editorBundleID"];
          v33 = [v4 decodeObjectOfClass:v31 forKey:v32];
          v34 = v7->_editorBundleID;
          v7->_editorBundleID = v33;
        }
      }
    }

    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"originalResourceChoice"];
    v7->_originalResourceChoice = [v4 decodeIntegerForKey:v35];

    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetOriginalResourceChoice"];
    v7->_didSetOriginalResourceChoice = [v4 decodeBoolForKey:v36];

    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didRevertLocationToOriginal"];
    v7->_didRevertLocationToOriginal = [v4 decodeBoolForKey:v37];

    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didUpdateExtendedAttributesUsingOriginalMediaMetadata"];
    v7->_didUpdateExtendedAttributesUsingOriginalMediaMetadata = [v4 decodeBoolForKey:v38];

    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didExpungeAllSpatialOverCaptureResources"];
    v7->_didExpungeAllSpatialOverCaptureResources = [v4 decodeBoolForKey:v39];

    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didTrashAllSpatialOverCaptureResources"];
    v7->_didTrashAllSpatialOverCaptureResources = [v4 decodeBoolForKey:v40];

    v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didUntrashAllSpatialOverCaptureResources"];
    v7->_didUntrashAllSpatialOverCaptureResources = [v4 decodeBoolForKey:v41];

    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didExpungeTrashedSpatialOverCaptureResources"];
    v7->_didExpungeTrashedSpatialOverCaptureResources = [v4 decodeBoolForKey:v42];

    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didPromoteToGuestAsset"];
    v7->_didPromoteToGuestAsset = [v4 decodeBoolForKey:v43];

    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didResetGuestAssetPromotion"];
    v7->_didResetGuestAssetPromotion = [v4 decodeBoolForKey:v44];

    v45 = MEMORY[0x1E695DFD8];
    v46 = objc_opt_class();
    v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"updatedLocation"];
    v49 = [v4 decodeObjectOfClasses:v47 forKey:v48];
    updatedLocation = v7->_updatedLocation;
    v7->_updatedLocation = v49;

    v51 = objc_opt_class();
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetDescription"];
    v53 = [v4 decodeObjectOfClass:v51 forKey:v52];
    assetDescription = v7->_assetDescription;
    v7->_assetDescription = v53;

    v55 = objc_opt_class();
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"accessibilityDescription"];
    v57 = [v4 decodeObjectOfClass:v55 forKey:v56];
    accessibilityDescription = v7->_accessibilityDescription;
    v7->_accessibilityDescription = v57;

    v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetTitle"];
    v7->_didSetTitle = [v4 decodeBoolForKey:v59];

    if (v7->_didSetTitle)
    {
      v60 = objc_opt_class();
      v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"title"];
      v62 = [v4 decodeObjectOfClass:v60 forKey:v61];
      title = v7->_title;
      v7->_title = v62;
    }

    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetKeywordTitles"];
    v7->_didSetKeywordTitles = [v4 decodeBoolForKey:v64];

    if (v7->_didSetKeywordTitles)
    {
      v65 = MEMORY[0x1E695DFD8];
      v66 = objc_opt_class();
      v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
      v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"keywordTitles"];
      v69 = [v4 decodeObjectOfClasses:v67 forKey:v68];
      keywordTitles = v7->_keywordTitles;
      v7->_keywordTitles = v69;
    }

    v71 = objc_opt_class();
    v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoURLForUpdate"];
    v73 = [v4 decodeObjectOfClass:v71 forKey:v72];
    videoURLForUpdate = v7->_videoURLForUpdate;
    v7->_videoURLForUpdate = v73;

    v75 = objc_opt_class();
    v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"pairingIdentifier"];
    v77 = [v4 decodeObjectOfClass:v75 forKey:v76];
    pairingIdentifier = v7->_pairingIdentifier;
    v7->_pairingIdentifier = v77;

    v79 = objc_opt_class();
    v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoDuration"];
    v81 = [v4 decodeObjectOfClass:v79 forKey:v80];

    p_videoDuration = &v7->_videoDuration;
    v330 = v81;
    if (v81)
    {
      CMTimeMakeFromDictionary(&v332.start, v81);
      v83 = *&v332.start.value;
      v7->_videoDuration.epoch = v332.start.epoch;
      *&p_videoDuration->value = v83;
    }

    else
    {
      v84 = MEMORY[0x1E6960C70];
      *&p_videoDuration->value = *MEMORY[0x1E6960C70];
      v7->_videoDuration.epoch = *(v84 + 16);
    }

    v85 = objc_opt_class();
    v86 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"imageDisplayTime"];
    v87 = [v4 decodeObjectOfClass:v85 forKey:v86];

    p_imageDisplayTime = &v7->_imageDisplayTime;
    v329 = v87;
    if (v87)
    {
      CMTimeMakeFromDictionary(&v332.start, v87);
      v89 = *&v332.start.value;
      v7->_imageDisplayTime.epoch = v332.start.epoch;
      *&p_imageDisplayTime->value = v89;
    }

    else
    {
      v90 = MEMORY[0x1E6960C70];
      *&p_imageDisplayTime->value = *MEMORY[0x1E6960C70];
      v7->_imageDisplayTime.epoch = *(v90 + 16);
    }

    v91 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoIrisVisibilityState"];
    v7->_photoIrisVisibilityState = [v4 decodeIntegerForKey:v91];

    v92 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetVisibilityState"];
    v7->_didSetVisibilityState = [v4 decodeBoolForKey:v92];

    v93 = MEMORY[0x1E695DFD8];
    v333[0] = objc_opt_class();
    v333[1] = objc_opt_class();
    v333[2] = objc_opt_class();
    v333[3] = objc_opt_class();
    v333[4] = objc_opt_class();
    v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v333 count:5];
    v95 = [v93 setWithArray:v94];
    v96 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneClassificationsByType"];
    v97 = [v4 decodeObjectOfClasses:v95 forKey:v96];

    if (v97)
    {
      v98 = [v97 mutableCopy];
      sceneClassificationDictionariesByType = v7->_sceneClassificationDictionariesByType;
      v7->_sceneClassificationDictionariesByType = v98;

      v7->_didSetSceneClassifications = 1;
    }

    v100 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetImageEmbeddingVersionKey"];
    v7->_didSetImageEmbeddingVersion = [v4 decodeBoolForKey:v100];

    if (v7->_didSetImageEmbeddingVersion)
    {
      v101 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"imageEmbeddingVersion"];
      v7->_imageEmbeddingVersion = [v4 decodeIntegerForKey:v101];
    }

    v102 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetVideoEmbeddingVersionKey"];
    v7->_didSetVideoEmbeddingVersion = [v4 decodeBoolForKey:v102];

    if (v7->_didSetVideoEmbeddingVersion)
    {
      v103 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoEmbeddingVersion"];
      v7->_videoEmbeddingVersion = [v4 decodeIntegerForKey:v103];
    }

    v328 = v97;
    v104 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"incrementPlayCount"];
    v7->_incrementPlayCount = [v4 decodeBoolForKey:v104];

    v105 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"incrementShareCount"];
    v7->_incrementShareCount = [v4 decodeBoolForKey:v105];

    v106 = objc_opt_class();
    v107 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lastSharedDate"];
    v108 = [v4 decodeObjectOfClass:v106 forKey:v107];
    lastSharedDate = v7->_lastSharedDate;
    v7->_lastSharedDate = v108;

    v110 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"incrementViewCount"];
    v7->_incrementViewCount = [v4 decodeBoolForKey:v110];

    v111 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"variationSuggestionStates"];
    v7->_variationSuggestionStates = [v4 decodeInt64ForKey:v111];

    if (v7->_variationSuggestionStates)
    {
      v7->_didSetVariationSuggestionStates = 1;
      v112 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"variationSuggestionStatesMask"];
      v7->_variationSuggestionStatesMask = [v4 decodeInt64ForKey:v112];
    }

    v113 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"toRetryUpload"];
    v7->_toRetryUpload = [v4 decodeBoolForKey:v113];

    v114 = MEMORY[0x1E695DFD8];
    v115 = objc_opt_class();
    v116 = objc_opt_class();
    v117 = [v114 setWithObjects:{v115, v116, objc_opt_class(), 0}];
    v118 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"pathsToNewAssetResourcesByAssetResourceType"];
    v119 = [v4 decodeObjectOfClasses:v117 forKey:v118];
    pathsToNewAssetResourcesByAssetResourceType = v7->_pathsToNewAssetResourcesByAssetResourceType;
    v7->_pathsToNewAssetResourcesByAssetResourceType = v119;

    v121 = MEMORY[0x1E695DFD8];
    v122 = objc_opt_class();
    v123 = [v121 setWithObjects:{v122, objc_opt_class(), 0}];
    v124 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetResourceTypesToDelete"];
    v125 = [v4 decodeObjectOfClasses:v123 forKey:v124];
    assetResourceTypesToDelete = v7->_assetResourceTypesToDelete;
    v7->_assetResourceTypesToDelete = v125;

    v127 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"deleteContextualVideoThumbnails"];
    v7->_deleteContextualVideoThumbnails = [v4 decodeBoolForKey:v127];

    v128 = MEMORY[0x1E695DFD8];
    v129 = objc_opt_class();
    v130 = [v128 setWithObjects:{v129, objc_opt_class(), 0}];
    v131 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"libraryScopeOriginatorUUIDs"];
    v132 = [v4 decodeObjectOfClasses:v130 forKey:v131];
    v133 = [v128 setWithArray:v132];
    libraryScopeOriginatorUUIDs = v7->_libraryScopeOriginatorUUIDs;
    v7->_libraryScopeOriginatorUUIDs = v133;

    v135 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"packedPreferredCropRect"];
    v7->_packedPreferredCropRect = [v4 decodeIntegerForKey:v135];

    if (v7->_packedPreferredCropRect)
    {
      v7->_didSetPackedPreferredCropRect = 1;
    }

    v136 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"packedAcceptableCropRect"];
    v7->_packedAcceptableCropRect = [v4 decodeIntegerForKey:v136];

    if (v7->_packedAcceptableCropRect)
    {
      v7->_didSetPackedAcceptableCropRect = 1;
    }

    v137 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"packedBestPlaybackRect"];
    v7->_packedBestPlaybackRect = [v4 decodeIntegerForKey:v137];

    if (v7->_packedBestPlaybackRect)
    {
      v7->_didSetPackedBestPlaybackRect = 1;
    }

    v138 = objc_opt_class();
    v139 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"computedAttributeMutations"];
    v140 = [v4 decodeObjectOfClass:v138 forKey:v139];
    computedAttributeMutations = v7->_computedAttributeMutations;
    v7->_computedAttributeMutations = v140;

    if (v7->_computedAttributeMutations)
    {
      v7->_didModifyComputedAttributes = 1;
    }

    v142 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetWallpaperProperties"];
    v143 = [v4 decodeBoolForKey:v142];

    if (v143)
    {
      v7->_didSetWallpaperPropertiesTimestamp = 1;
      wallpaperPropertiesTimestamp = v7->_wallpaperPropertiesTimestamp;
      v7->_wallpaperPropertiesTimestamp = 0;

      v7->_didSetWallpaperPropertiesVersion = 1;
      v7->_wallpaperPropertiesVersion = 0;
      v7->_didSetWallpaperPropertiesData = 1;
      wallpaperPropertiesData = v7->_wallpaperPropertiesData;
      v7->_wallpaperPropertiesData = 0;
    }

    else
    {
      v146 = objc_opt_class();
      v147 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoAnalysisWallpaperPropertiesTimeStamp"];
      v148 = [v4 decodeObjectOfClass:v146 forKey:v147];
      v149 = v7->_wallpaperPropertiesTimestamp;
      v7->_wallpaperPropertiesTimestamp = v148;

      if (v7->_wallpaperPropertiesTimestamp)
      {
        v7->_didSetWallpaperPropertiesTimestamp = 1;
      }

      v150 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoAnalysisWallpaperPropertiesVersion"];
      v7->_wallpaperPropertiesVersion = [v4 decodeIntegerForKey:v150];

      if (v7->_wallpaperPropertiesVersion)
      {
        v7->_didSetWallpaperPropertiesVersion = 1;
      }

      v151 = objc_opt_class();
      v152 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoAnalysisWallpaperProperties"];
      v153 = [v4 decodeObjectOfClass:v151 forKey:v152];
      v154 = v7->_wallpaperPropertiesData;
      v7->_wallpaperPropertiesData = v153;

      if (v7->_wallpaperPropertiesData)
      {
        v7->_didSetWallpaperPropertiesData = 1;
      }
    }

    v155 = objc_opt_class();
    v156 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mediaAnalysisTimeStamp"];
    v157 = [v4 decodeObjectOfClass:v155 forKey:v156];
    mediaAnalysisTimeStamp = v7->_mediaAnalysisTimeStamp;
    v7->_mediaAnalysisTimeStamp = v157;

    if (v7->_mediaAnalysisTimeStamp)
    {
      v7->_didSetMediaAnalysisTimeStamp = 1;
    }

    v159 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mediaAnalysisVersion"];
    v7->_mediaAnalysisVersion = [v4 decodeIntegerForKey:v159];

    if (v7->_mediaAnalysisVersion)
    {
      v7->_didSetMediaAnalysisVersion = 1;
    }

    v160 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mediaAnalysisImageVersion"];
    v7->_mediaAnalysisImageVersion = [v4 decodeIntegerForKey:v160];

    if (v7->_mediaAnalysisImageVersion)
    {
      v7->_didSetMediaAnalysisImageVersion = 1;
    }

    v161 = objc_opt_class();
    v162 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bestKeyFrameTime"];
    v163 = [v4 decodeObjectOfClass:v161 forKey:v162];

    if (v163)
    {
      CMTimeMakeFromDictionary(&v332.start, v163);
      v164 = *&v332.start.value;
      v7->_bestKeyFrameTime.epoch = v332.start.epoch;
      *&v7->_bestKeyFrameTime.value = v164;
    }

    v165 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"unsetBestKeyFrameTime"];
    v7->_didUnsetBestKeyFrameTime = [v4 decodeBoolForKey:v165];

    v166 = objc_opt_class();
    v167 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bestKeyFrameJPEGData"];
    v168 = [v4 decodeObjectOfClass:v166 forKey:v167];
    bestKeyFrameJPEGData = v7->_bestKeyFrameJPEGData;
    v7->_bestKeyFrameJPEGData = v168;

    v170 = objc_opt_class();
    v171 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"contextualVideoThumbnailImageData"];
    v172 = [v4 decodeObjectOfClass:v170 forKey:v171];
    contextualVideoThumbnailImageDataByIdentifier = v7->_contextualVideoThumbnailImageDataByIdentifier;
    v7->_contextualVideoThumbnailImageDataByIdentifier = v172;

    v174 = objc_opt_class();
    v175 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"computeSyncMediaAnalysisPayload"];
    v176 = [v4 decodeObjectOfClass:v174 forKey:v175];
    computeSyncMediaAnalysisPayload = v7->_computeSyncMediaAnalysisPayload;
    v7->_computeSyncMediaAnalysisPayload = v176;

    v178 = objc_opt_class();
    v179 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bestVideoTimeRange"];
    v180 = [v4 decodeObjectOfClass:v178 forKey:v179];

    if (v180)
    {
      CMTimeRangeMakeFromDictionary(&v332, v180);
      v181 = *&v332.start.value;
      v182 = *&v332.duration.timescale;
      *&v7->_bestVideoTimeRange.start.epoch = *&v332.start.epoch;
      *&v7->_bestVideoTimeRange.duration.timescale = v182;
      *&v7->_bestVideoTimeRange.start.value = v181;
    }

    v183 = objc_opt_class();
    v184 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"animatedStickerTimeRange"];
    v185 = [v4 decodeObjectOfClass:v183 forKey:v184];

    if (v185)
    {
      CMTimeRangeMakeFromDictionary(&v332, v185);
      v186 = *&v332.start.value;
      v187 = *&v332.duration.timescale;
      *&v7->_animatedStickerTimeRange.start.epoch = *&v332.start.epoch;
      *&v7->_animatedStickerTimeRange.duration.timescale = v187;
      *&v7->_animatedStickerTimeRange.start.value = v186;
    }

    v188 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"blurrinessScore"];
    [v4 decodeFloatForKey:v188];
    v7->_blurrinessScore = v189;

    if (v7->_blurrinessScore != 0.0)
    {
      v7->_didSetBlurrinessScore = 1;
    }

    v190 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"exposureScore"];
    [v4 decodeFloatForKey:v190];
    v7->_exposureScore = v191;

    if (v7->_exposureScore != 0.0)
    {
      v7->_didSetExposureScore = 1;
    }

    v192 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"audioScore"];
    [v4 decodeFloatForKey:v192];
    v7->_audioScore = v193;

    if (v7->_audioScore != 0.0)
    {
      v7->_didSetAudioScore = 1;
    }

    v194 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"settlingEffectScore"];
    [v4 decodeFloatForKey:v194];
    v7->_settlingEffectScore = v195;

    if (v7->_settlingEffectScore != 0.0)
    {
      v7->_didSetSettlingEffectScore = 1;
    }

    v196 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"wallpaperScore"];
    [v4 decodeFloatForKey:v196];
    v7->_wallpaperScore = v197;

    if (v7->_wallpaperScore != 0.0)
    {
      v7->_didSetWallpaperScore = 1;
    }

    v198 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"autoplaySuggestionScore"];
    [v4 decodeFloatForKey:v198];
    v7->_autoplaySuggestionScore = v199;

    if (v7->_autoplaySuggestionScore != 0.0)
    {
      v7->_didSetAutoplaySuggestionScore = 1;
    }

    v200 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoStickerSuggestionScore"];
    [v4 decodeFloatForKey:v200];
    v7->_videoStickerSuggestionScore = v201;

    if (v7->_videoStickerSuggestionScore != 0.0)
    {
      v7->_didSetVideoStickerSuggestionScore = 1;
    }

    v202 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoScore"];
    [v4 decodeFloatForKey:v202];
    v7->_videoScore = v203;

    if (v7->_videoScore != 0.0)
    {
      v7->_didSetVideoScore = 1;
    }

    v204 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"activityScore"];
    [v4 decodeFloatForKey:v204];
    v7->_activityScore = v205;

    if (v7->_activityScore != 0.0)
    {
      v7->_didSetActivityScore = 1;
    }

    v206 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"faceCount"];
    v7->_faceCount = [v4 decodeInt64ForKey:v206];

    if (v7->_faceCount)
    {
      v7->_didSetFaceCount = 1;
    }

    v207 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"audioClassification"];
    v7->_audioClassification = [v4 decodeIntegerForKey:v207];

    if (v7->_audioClassification)
    {
      v7->_didSetAudioClassification = 1;
    }

    v208 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"probableRotationDirection"];
    v7->_probableRotationDirection = [v4 decodeIntegerForKey:v208];

    if (v7->_probableRotationDirection)
    {
      v7->_didSetProbableRotationDirection = 1;
    }

    v209 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"probableRotationDirectionConfidence"];
    [v4 decodeFloatForKey:v209];
    v7->_probableRotationDirectionConfidence = v210;

    if (v7->_probableRotationDirectionConfidence != 0.0)
    {
      v7->_didSetProbableRotationDirectionConfidence = 1;
    }

    v211 = objc_opt_class();
    v212 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"colorNormalizationData"];
    v213 = [v4 decodeObjectOfClass:v211 forKey:v212];
    colorNormalizationData = v7->_colorNormalizationData;
    v7->_colorNormalizationData = v213;

    v215 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetCharacterRecognitionProperties"];
    v7->_resetCharacterRecognitionProperties = [v4 decodeBoolForKey:v215];

    if (!v7->_resetCharacterRecognitionProperties)
    {
      v216 = MEMORY[0x1E695DFD8];
      v217 = objc_opt_class();
      v218 = [v216 setWithObjects:{v217, objc_opt_class(), 0}];
      v219 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionProperties"];
      v220 = [v4 decodeObjectOfClasses:v218 forKey:v219];

      if (v220)
      {
        v7->_didSetCharacterRecognitionData = 1;
        v221 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionData"];
        v222 = [v220 objectForKeyedSubscript:v221];
        characterRecognitionData = v7->_characterRecognitionData;
        v7->_characterRecognitionData = v222;

        v224 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"machineReadableCodeData"];
        v225 = [v220 objectForKeyedSubscript:v224];
        machineReadableCodeData = v7->_machineReadableCodeData;
        v7->_machineReadableCodeData = v225;

        v227 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionAlgorithmVersion"];
        v228 = [v220 objectForKeyedSubscript:v227];
        v7->_characterRecognitionAlgorithmVersion = [v228 integerValue];

        v229 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionAdjustmentVersion"];
        v230 = [v220 objectForKeyedSubscript:v229];
        characterRecognitionAdjustmentVersion = v7->_characterRecognitionAdjustmentVersion;
        v7->_characterRecognitionAdjustmentVersion = v230;
      }
    }

    v232 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetTextUnderstandingProperties"];
    v7->_resetTextUnderstandingProperties = [v4 decodeBoolForKey:v232];

    if (!v7->_resetTextUnderstandingProperties)
    {
      v233 = MEMORY[0x1E695DFD8];
      v234 = objc_opt_class();
      v235 = [v233 setWithObjects:{v234, objc_opt_class(), 0}];
      v236 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textUnderstandingProperties"];
      v237 = [v4 decodeObjectOfClasses:v235 forKey:v236];

      if (v237)
      {
        v7->_didSetTextUnderstandingProperties = 1;
        v238 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textUnderstandingData"];
        v239 = [v237 objectForKeyedSubscript:v238];
        textUnderstandingData = v7->_textUnderstandingData;
        v7->_textUnderstandingData = v239;

        v241 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textUnderstandingVersion"];
        v242 = [v237 objectForKeyedSubscript:v241];
        v7->_textUnderstandingVersion = [v242 integerValue];
      }
    }

    v243 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetVisualSearchProperties"];
    v7->_resetVisualSearchProperties = [v4 decodeBoolForKey:v243];

    if (!v7->_resetVisualSearchProperties)
    {
      v244 = MEMORY[0x1E695DFD8];
      v245 = objc_opt_class();
      v246 = [v244 setWithObjects:{v245, objc_opt_class(), 0}];
      v247 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchProperties"];
      v248 = [v4 decodeObjectOfClasses:v246 forKey:v247];

      if (v248)
      {
        v7->_didSetVisualSearchProperties = 1;
        v249 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchData"];
        v250 = [v248 objectForKeyedSubscript:v249];
        visualSearchData = v7->_visualSearchData;
        v7->_visualSearchData = v250;

        v252 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetStickerConfidenceScore"];
        v253 = [v248 objectForKeyedSubscript:v252];
        v7->_didSetStickerConfidenceScore = [v253 BOOLValue];

        v254 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetVisualSearchData"];
        v255 = [v248 objectForKeyedSubscript:v254];
        v7->_didSetVisualSearchData = [v255 BOOLValue];

        v256 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stickerConfidenceScore"];
        v257 = [v248 objectForKeyedSubscript:v256];
        [v257 floatValue];
        v7->_stickerConfidenceScore = v258;

        v259 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stickerConfidenceScoreAlgorithmVersion"];
        v260 = [v248 objectForKeyedSubscript:v259];
        v7->_stickerConfidenceScoreAlgorithmVersion = [v260 integerValue];

        v261 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchAlgorithmVersion"];
        v262 = [v248 objectForKeyedSubscript:v261];
        v7->_visualSearchAlgorithmVersion = [v262 integerValue];

        v263 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchAdjustmentVersion"];
        v264 = [v248 objectForKeyedSubscript:v263];
        visualSearchAdjustmentVersion = v7->_visualSearchAdjustmentVersion;
        v7->_visualSearchAdjustmentVersion = v264;
      }
    }

    v266 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"compactImageSCSensitivityAnalysis"];
    v7->_compactSCSensitivityAnalysis = [v4 decodeIntegerForKey:v266];

    if (v7->_compactSCSensitivityAnalysis)
    {
      v7->_didSetCompactImageSCSensitivityAnalysis = 1;
    }

    v267 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"compactVideoSCSensitivityAnalysis"];
    v7->_compactSCSensitivityAnalysis = [v4 decodeIntegerForKey:v267];

    v268 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoSensitivityAnalysisVersion"];
    v7->_videoSensitivityAnalysisVersion = [v4 decodeIntegerForKey:v268];

    if (v7->_compactSCSensitivityAnalysis && v7->_videoSensitivityAnalysisVersion)
    {
      v7->_didSetCompactVideoSCSensitivityAnalysis = 1;
    }

    v269 = objc_opt_class();
    v270 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneprintData"];
    v271 = [v4 decodeObjectOfClass:v269 forKey:v270];
    sceneprintData = v7->_sceneprintData;
    v7->_sceneprintData = v271;

    if (v7->_sceneprintData)
    {
      v7->_didSetSceneprintData = 1;
    }

    v273 = objc_opt_class();
    v274 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateMatchingData"];
    v275 = [v4 decodeObjectOfClass:v273 forKey:v274];
    duplicateMatchingData = v7->_duplicateMatchingData;
    v7->_duplicateMatchingData = v275;

    if (v7->_duplicateMatchingData)
    {
      v7->_didSetDuplicateMatchingData = 1;
      v277 = objc_opt_class();
      v278 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateMatchingAlternateData"];
      v279 = [v4 decodeObjectOfClass:v277 forKey:v278];
      duplicateMatchingAlternateData = v7->_duplicateMatchingAlternateData;
      v7->_duplicateMatchingAlternateData = v279;

      if (![(NSData *)v7->_duplicateMatchingData length])
      {
        v281 = v7->_duplicateMatchingData;
        v7->_duplicateMatchingData = 0;
      }

      if (![(NSData *)v7->_duplicateMatchingAlternateData length])
      {
        v282 = v7->_duplicateMatchingAlternateData;
        v7->_duplicateMatchingAlternateData = 0;
      }

      v283 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateProcessingSucceeded"];
      v7->_duplicateProcessingSucceeded = [v4 decodeBoolForKey:v283];
    }

    v284 = objc_opt_class();
    v285 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"reverseLocationData"];
    v286 = [v4 decodeObjectOfClass:v284 forKey:v285];
    reverseLocationData = v7->_reverseLocationData;
    v7->_reverseLocationData = v286;

    if (v7->_reverseLocationData)
    {
      v7->_didSetReverseLocationData = 1;
    }

    v288 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"reverseLocationDataIsValid"];
    v7->_reverseLocationDataIsValid = [v4 decodeBoolForKey:v288];

    if (v7->_reverseLocationDataIsValid)
    {
      v7->_didSetReverseLocationDataIsValid = 1;
    }

    v289 = objc_opt_class();
    v290 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"objectSaliencyRectsData"];
    v291 = [v4 decodeObjectOfClass:v289 forKey:v290];
    objectSaliencyRectsData = v7->_objectSaliencyRectsData;
    v7->_objectSaliencyRectsData = v291;

    if (v7->_objectSaliencyRectsData)
    {
      v7->_didSetObjectSaliencyRectsData = 1;
    }

    v293 = MEMORY[0x1E695DFD8];
    v294 = objc_opt_class();
    v295 = [v293 setWithObjects:{v294, objc_opt_class(), 0}];
    v296 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shiftedLocation"];
    v297 = [v4 decodeObjectOfClasses:v295 forKey:v296];
    shiftedLocation = v7->_shiftedLocation;
    v7->_shiftedLocation = v297;

    v299 = v7->_shiftedLocation;
    v7->_didSetShiftedLocation = 1;
    if (!v299)
    {
      v300 = v7->_shiftedLocation;
      v7->_shiftedLocation = 0;
    }

    v301 = objc_opt_class();
    v302 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"timeZoneName"];
    v303 = [v4 decodeObjectOfClass:v301 forKey:v302];
    timeZoneName = v7->_timeZoneName;
    v7->_timeZoneName = v303;

    if (v7->_timeZoneName)
    {
      v7->_didSetTimeZone = 1;
      v305 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"timeZoneOffsetValue"];
      v7->_timeZoneOffsetValue = [v4 decodeInt32ForKey:v305];
    }

    v306 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"gpsHorizontalAccuracy"];
    [v4 decodeDoubleForKey:v306];
    v7->_gpsHorizontalAccuracy = v307;

    if (v7->_gpsHorizontalAccuracy != 0.0)
    {
      v7->_didSetGpsHorizontalAccuracy = 1;
    }

    v308 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"screenTimeDeviceImageSensitivity"];
    v7->_screenTimeDeviceImageSensitivity = [v4 decodeIntegerForKey:v308];

    if (v7->_screenTimeDeviceImageSensitivity)
    {
      v7->_didSetScreenTimeDeviceImageSensitivity = 1;
    }

    v309 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationProcessingValue"];
    v7->_syndicationProcessingValue = [v4 decodeIntegerForKey:v309];

    if (v7->_syndicationProcessingValue)
    {
      v7->_didSetSyndicationProcessingValue = 1;
    }

    v310 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationProcessingVersion"];
    v7->_syndicationProcessingVersion = [v4 decodeInt64ForKey:v310];

    if (v7->_syndicationProcessingVersion)
    {
      v7->_didSetSyndicationProcessingVersion = 1;
    }

    v311 = objc_opt_class();
    v312 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationIdentifier"];
    v313 = [v4 decodeObjectOfClass:v311 forKey:v312];
    syndicationIdentifier = v7->_syndicationIdentifier;
    v7->_syndicationIdentifier = v313;

    if (v7->_syndicationIdentifier)
    {
      v7->_didSetSyndicationIdentifier = 1;
    }

    v315 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"faceAnalysisVersion"];
    v7->_faceAnalysisVersion = [v4 decodeIntegerForKey:v315];

    if (v7->_faceAnalysisVersion)
    {
      v7->_didSetFaceAnalysisVersion = 1;
    }

    v316 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"localAnalysisStage"];
    v7->_localAnalysisStage = [v4 decodeIntegerForKey:v316];

    if (v7->_localAnalysisStage)
    {
      v7->_didSetLocalAnalysisStage = 1;
    }

    v317 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"viewPresentation"];
    v7->_viewPresentation = [v4 decodeIntegerForKey:v317];

    if (v7->_viewPresentation)
    {
      v7->_didSetViewPresentation = 1;
    }

    v318 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ResetGeneratedAssetDescriptionKey"];
    v7->_resetGeneratedAssetDescriptionProperties = [v4 decodeBoolForKey:v318];

    if (!v7->_resetGeneratedAssetDescriptionProperties)
    {
      v319 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DidSetGeneratedAssetDescriptionKey"];
      v7->_didSetGeneratedAssetDescriptionProperties = [v4 decodeBoolForKey:v319];

      if (v7->_didSetGeneratedAssetDescriptionProperties)
      {
        v320 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"GeneratedAssetDescriptionPropertiesKey"];
        v321 = [v4 decodeObjectForKey:v320];
        generatedAssetDescriptionDictionaries = v7->_generatedAssetDescriptionDictionaries;
        v7->_generatedAssetDescriptionDictionaries = v321;
      }
    }

    v323 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PtpTrashedStateKey"];
    v324 = [v4 decodeObjectForKey:v323];

    if (v324)
    {
      v7->_ptpTrashedState = [v324 integerValue];
      v7->_didSetPtpTrashedState = 1;
    }

    v325 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"savedAssetType"];
    v7->_savedAssetType = [v4 decodeIntegerForKey:v325];

    if (v7->_savedAssetType)
    {
      v7->_didSetSavedAssetType = 1;
    }

    v5 = v331;
  }

  v326 = v7;

  return v326;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->super._helper forKey:@"helper"];
  facesHelper = self->_facesHelper;
  v6 = [(PHRelationshipChangeRequestHelper *)facesHelper relationshipName];
  [v4 encodeObject:facesHelper forKey:v6];

  temporalFacesHelper = self->_temporalFacesHelper;
  v8 = [(PHRelationshipChangeRequestHelper *)temporalFacesHelper relationshipName];
  [v4 encodeObject:temporalFacesHelper forKey:v8];

  keywordsHelper = self->_keywordsHelper;
  v10 = [(PHRelationshipChangeRequestHelper *)keywordsHelper relationshipName];
  [v4 encodeObject:keywordsHelper forKey:v10];

  commentsHelper = self->_commentsHelper;
  v12 = [(PHRelationshipChangeRequestHelper *)commentsHelper relationshipName];
  [v4 encodeObject:commentsHelper forKey:v12];

  likesHelper = self->_likesHelper;
  v14 = [(PHRelationshipChangeRequestHelper *)likesHelper relationshipName];
  [v4 encodeObject:likesHelper forKey:v14];

  if (self->_didChangeAdjustments)
  {
    v15 = [(PHAssetChangeRequest *)self contentEditingOutput];
    if (v15)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didChangeAdjustments"];
      [v4 encodeBool:1 forKey:v16];

      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"contentEditingOutput"];
      [v4 encodeObject:v15 forKey:v17];

      editorBundleID = self->_editorBundleID;
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"editorBundleID"];
      [v4 encodeObject:editorBundleID forKey:v19];

      editorBundleURL = self->_editorBundleURL;
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"editorBundleURL"];
      [v4 encodeObject:editorBundleURL forKey:v21];
    }
  }

  didSetOriginalResourceChoice = self->_didSetOriginalResourceChoice;
  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetOriginalResourceChoice"];
  [v4 encodeBool:didSetOriginalResourceChoice forKey:v23];

  didRevertLocationToOriginal = self->_didRevertLocationToOriginal;
  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didRevertLocationToOriginal"];
  [v4 encodeBool:didRevertLocationToOriginal forKey:v25];

  originalResourceChoice = self->_originalResourceChoice;
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"originalResourceChoice"];
  [v4 encodeInteger:originalResourceChoice forKey:v27];

  didUpdateExtendedAttributesUsingOriginalMediaMetadata = self->_didUpdateExtendedAttributesUsingOriginalMediaMetadata;
  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didUpdateExtendedAttributesUsingOriginalMediaMetadata"];
  [v4 encodeBool:didUpdateExtendedAttributesUsingOriginalMediaMetadata forKey:v29];

  didExpungeAllSpatialOverCaptureResources = self->_didExpungeAllSpatialOverCaptureResources;
  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didExpungeAllSpatialOverCaptureResources"];
  [v4 encodeBool:didExpungeAllSpatialOverCaptureResources forKey:v31];

  didTrashAllSpatialOverCaptureResources = self->_didTrashAllSpatialOverCaptureResources;
  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didTrashAllSpatialOverCaptureResources"];
  [v4 encodeBool:didTrashAllSpatialOverCaptureResources forKey:v33];

  didUntrashAllSpatialOverCaptureResources = self->_didUntrashAllSpatialOverCaptureResources;
  v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didUntrashAllSpatialOverCaptureResources"];
  [v4 encodeBool:didUntrashAllSpatialOverCaptureResources forKey:v35];

  didExpungeTrashedSpatialOverCaptureResources = self->_didExpungeTrashedSpatialOverCaptureResources;
  v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didExpungeTrashedSpatialOverCaptureResources"];
  [v4 encodeBool:didExpungeTrashedSpatialOverCaptureResources forKey:v37];

  didPromoteToGuestAsset = self->_didPromoteToGuestAsset;
  v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didPromoteToGuestAsset"];
  [v4 encodeBool:didPromoteToGuestAsset forKey:v39];

  didResetGuestAssetPromotion = self->_didResetGuestAssetPromotion;
  v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didResetGuestAssetPromotion"];
  [v4 encodeBool:didResetGuestAssetPromotion forKey:v41];

  updatedLocation = self->_updatedLocation;
  v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"updatedLocation"];
  [v4 encodeObject:updatedLocation forKey:v43];

  assetDescription = self->_assetDescription;
  v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetDescription"];
  [v4 encodeObject:assetDescription forKey:v45];

  accessibilityDescription = self->_accessibilityDescription;
  v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"accessibilityDescription"];
  [v4 encodeObject:accessibilityDescription forKey:v47];

  didSetTitle = self->_didSetTitle;
  v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetTitle"];
  [v4 encodeBool:didSetTitle forKey:v49];

  title = self->_title;
  v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"title"];
  [v4 encodeObject:title forKey:v51];

  didSetKeywordTitles = self->_didSetKeywordTitles;
  v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetKeywordTitles"];
  [v4 encodeBool:didSetKeywordTitles forKey:v53];

  keywordTitles = self->_keywordTitles;
  v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"keywordTitles"];
  [v4 encodeObject:keywordTitles forKey:v55];

  videoURLForUpdate = self->_videoURLForUpdate;
  v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoURLForUpdate"];
  [v4 encodeObject:videoURLForUpdate forKey:v57];

  pairingIdentifier = self->_pairingIdentifier;
  v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"pairingIdentifier"];
  [v4 encodeObject:pairingIdentifier forKey:v59];

  if (self->_videoDuration.flags)
  {
    *&v275.start.value = *&self->_videoDuration.value;
    v275.start.epoch = self->_videoDuration.epoch;
    v60 = CMTimeCopyAsDictionary(&v275.start, 0);
    if (v60)
    {
      v61 = v60;
      v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoDuration"];
      [v4 encodeObject:v61 forKey:v62];

      CFRelease(v61);
    }
  }

  if (self->_imageDisplayTime.flags)
  {
    *&v275.start.value = *&self->_imageDisplayTime.value;
    v275.start.epoch = self->_imageDisplayTime.epoch;
    v63 = CMTimeCopyAsDictionary(&v275.start, 0);
    if (v63)
    {
      v64 = v63;
      v65 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"imageDisplayTime"];
      [v4 encodeObject:v64 forKey:v65];

      CFRelease(v64);
    }
  }

  didSetVisibilityState = self->_didSetVisibilityState;
  v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetVisibilityState"];
  [v4 encodeBool:didSetVisibilityState forKey:v67];

  photoIrisVisibilityState = self->_photoIrisVisibilityState;
  v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoIrisVisibilityState"];
  [v4 encodeInteger:photoIrisVisibilityState forKey:v69];

  if (self->_didSetSceneClassifications)
  {
    sceneClassificationDictionariesByType = self->_sceneClassificationDictionariesByType;
    v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneClassificationsByType"];
    [v4 encodeObject:sceneClassificationDictionariesByType forKey:v71];
  }

  if (self->_didSetImageEmbeddingVersion)
  {
    imageEmbeddingVersion = self->_imageEmbeddingVersion;
    v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"imageEmbeddingVersion"];
    [v4 encodeInteger:imageEmbeddingVersion forKey:v73];

    v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetImageEmbeddingVersionKey"];
    [v4 encodeBool:1 forKey:v74];
  }

  if (self->_didSetVideoEmbeddingVersion)
  {
    videoEmbeddingVersion = self->_videoEmbeddingVersion;
    v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoEmbeddingVersion"];
    [v4 encodeInteger:videoEmbeddingVersion forKey:v76];

    v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetVideoEmbeddingVersionKey"];
    [v4 encodeBool:1 forKey:v77];
  }

  incrementPlayCount = self->_incrementPlayCount;
  v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"incrementPlayCount"];
  [v4 encodeBool:incrementPlayCount forKey:v79];

  incrementShareCount = self->_incrementShareCount;
  v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"incrementShareCount"];
  [v4 encodeBool:incrementShareCount forKey:v81];

  lastSharedDate = self->_lastSharedDate;
  v83 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lastSharedDate"];
  [v4 encodeObject:lastSharedDate forKey:v83];

  incrementViewCount = self->_incrementViewCount;
  v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"incrementViewCount"];
  [v4 encodeBool:incrementViewCount forKey:v85];

  clearLastViewedDate = self->_clearLastViewedDate;
  v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"clearLastViewedDate"];
  [v4 encodeBool:clearLastViewedDate forKey:v87];

  clearLastSharedDate = self->_clearLastSharedDate;
  v89 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"clearLastSharedDate"];
  [v4 encodeBool:clearLastSharedDate forKey:v89];

  if (self->_didSetVariationSuggestionStates)
  {
    variationSuggestionStates = self->_variationSuggestionStates;
    v91 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"variationSuggestionStates"];
    [v4 encodeInt64:variationSuggestionStates forKey:v91];

    variationSuggestionStatesMask = self->_variationSuggestionStatesMask;
    v93 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"variationSuggestionStatesMask"];
    [v4 encodeInt64:variationSuggestionStatesMask forKey:v93];
  }

  toRetryUpload = self->_toRetryUpload;
  v95 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"toRetryUpload"];
  [v4 encodeBool:toRetryUpload forKey:v95];

  if (self->_didSetPackedPreferredCropRect)
  {
    packedPreferredCropRect = self->_packedPreferredCropRect;
    v97 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"packedPreferredCropRect"];
    [v4 encodeInt64:packedPreferredCropRect forKey:v97];
  }

  if (self->_didSetPackedAcceptableCropRect)
  {
    packedAcceptableCropRect = self->_packedAcceptableCropRect;
    v99 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"packedAcceptableCropRect"];
    [v4 encodeInt64:packedAcceptableCropRect forKey:v99];
  }

  if (self->_didSetPackedBestPlaybackRect)
  {
    packedBestPlaybackRect = self->_packedBestPlaybackRect;
    v101 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"packedBestPlaybackRect"];
    [v4 encodeInt64:packedBestPlaybackRect forKey:v101];
  }

  if (self->_didModifyComputedAttributes)
  {
    computedAttributeMutations = self->_computedAttributeMutations;
    v103 = computedAttributeMutations;
    if (!computedAttributeMutations)
    {
      v103 = [MEMORY[0x1E695DF20] dictionary];
    }

    v104 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"computedAttributeMutations"];
    [v4 encodeObject:v103 forKey:v104];

    if (!computedAttributeMutations)
    {
    }
  }

  if ([(NSDictionary *)self->_pathsToNewAssetResourcesByAssetResourceType count])
  {
    pathsToNewAssetResourcesByAssetResourceType = self->_pathsToNewAssetResourcesByAssetResourceType;
    v106 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"pathsToNewAssetResourcesByAssetResourceType"];
    [v4 encodeObject:pathsToNewAssetResourcesByAssetResourceType forKey:v106];
  }

  if ([(NSSet *)self->_assetResourceTypesToDelete count])
  {
    assetResourceTypesToDelete = self->_assetResourceTypesToDelete;
    v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetResourceTypesToDelete"];
    [v4 encodeObject:assetResourceTypesToDelete forKey:v108];
  }

  if (self->_deleteContextualVideoThumbnails)
  {
    v109 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"deleteContextualVideoThumbnails"];
    [v4 encodeBool:1 forKey:v109];
  }

  if ([(NSSet *)self->_libraryScopeOriginatorUUIDs count])
  {
    v110 = [(NSSet *)self->_libraryScopeOriginatorUUIDs allObjects];
    v111 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"libraryScopeOriginatorUUIDs"];
    [v4 encodeObject:v110 forKey:v111];
  }

  if (self->_resetWallpaperProperties)
  {
    v112 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetWallpaperProperties"];
    [v4 encodeBool:1 forKey:v112];
LABEL_46:

    goto LABEL_47;
  }

  if (self->_didSetWallpaperPropertiesTimestamp)
  {
    wallpaperPropertiesTimestamp = self->_wallpaperPropertiesTimestamp;
    v114 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoAnalysisWallpaperPropertiesTimeStamp"];
    [v4 encodeObject:wallpaperPropertiesTimestamp forKey:v114];
  }

  if (self->_didSetWallpaperPropertiesVersion)
  {
    wallpaperPropertiesVersion = self->_wallpaperPropertiesVersion;
    v116 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoAnalysisWallpaperPropertiesVersion"];
    [v4 encodeInt64:wallpaperPropertiesVersion forKey:v116];
  }

  if (self->_didSetWallpaperPropertiesData)
  {
    wallpaperPropertiesData = self->_wallpaperPropertiesData;
    v112 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoAnalysisWallpaperProperties"];
    [v4 encodeObject:wallpaperPropertiesData forKey:v112];
    goto LABEL_46;
  }

LABEL_47:
  mediaAnalysisTimeStamp = self->_mediaAnalysisTimeStamp;
  v119 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mediaAnalysisTimeStamp"];
  [v4 encodeObject:mediaAnalysisTimeStamp forKey:v119];

  if (self->_didSetMediaAnalysisVersion)
  {
    mediaAnalysisVersion = self->_mediaAnalysisVersion;
    v121 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mediaAnalysisVersion"];
    [v4 encodeInt64:mediaAnalysisVersion forKey:v121];
  }

  if (self->_didSetMediaAnalysisImageVersion)
  {
    mediaAnalysisImageVersion = self->_mediaAnalysisImageVersion;
    v123 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mediaAnalysisImageVersion"];
    [v4 encodeInt64:mediaAnalysisImageVersion forKey:v123];
  }

  if ((self->_bestVideoTimeRange.start.flags & 1) != 0 && (self->_bestVideoTimeRange.duration.flags & 1) != 0 && !self->_bestVideoTimeRange.duration.epoch && (self->_bestVideoTimeRange.duration.value & 0x8000000000000000) == 0)
  {
    v267 = *&self->_bestVideoTimeRange.start.epoch;
    *&v275.start.value = *&self->_bestVideoTimeRange.start.value;
    *&v275.start.epoch = v267;
    *&v275.duration.timescale = *&self->_bestVideoTimeRange.duration.timescale;
    v268 = CMTimeRangeCopyAsDictionary(&v275, 0);
    if (v268)
    {
      v269 = v268;
      v270 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bestVideoTimeRange"];
      [v4 encodeObject:v269 forKey:v270];

      CFRelease(v269);
    }
  }

  if ((self->_animatedStickerTimeRange.start.flags & 1) != 0 && (self->_animatedStickerTimeRange.duration.flags & 1) != 0 && !self->_animatedStickerTimeRange.duration.epoch && (self->_animatedStickerTimeRange.duration.value & 0x8000000000000000) == 0)
  {
    v271 = *&self->_animatedStickerTimeRange.start.epoch;
    *&v275.start.value = *&self->_animatedStickerTimeRange.start.value;
    *&v275.start.epoch = v271;
    *&v275.duration.timescale = *&self->_animatedStickerTimeRange.duration.timescale;
    v272 = CMTimeRangeCopyAsDictionary(&v275, 0);
    if (v272)
    {
      v273 = v272;
      v274 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"animatedStickerTimeRange"];
      [v4 encodeObject:v273 forKey:v274];

      CFRelease(v273);
    }
  }

  if (self->_bestKeyFrameTime.flags)
  {
    *&v275.start.value = *&self->_bestKeyFrameTime.value;
    v275.start.epoch = self->_bestKeyFrameTime.epoch;
    v124 = CMTimeCopyAsDictionary(&v275.start, 0);
    if (v124)
    {
      v125 = v124;
      v126 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bestKeyFrameTime"];
      [v4 encodeObject:v125 forKey:v126];

      CFRelease(v125);
    }
  }

  didUnsetBestKeyFrameTime = self->_didUnsetBestKeyFrameTime;
  v128 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"unsetBestKeyFrameTime"];
  [v4 encodeBool:didUnsetBestKeyFrameTime forKey:v128];

  bestKeyFrameJPEGData = self->_bestKeyFrameJPEGData;
  v130 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bestKeyFrameJPEGData"];
  [v4 encodeObject:bestKeyFrameJPEGData forKey:v130];

  contextualVideoThumbnailImageDataByIdentifier = self->_contextualVideoThumbnailImageDataByIdentifier;
  if (contextualVideoThumbnailImageDataByIdentifier)
  {
    v132 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"contextualVideoThumbnailImageData"];
    [v4 encodeObject:contextualVideoThumbnailImageDataByIdentifier forKey:v132];
  }

  computeSyncMediaAnalysisPayload = self->_computeSyncMediaAnalysisPayload;
  v134 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"computeSyncMediaAnalysisPayload"];
  [v4 encodeObject:computeSyncMediaAnalysisPayload forKey:v134];

  if (self->_didSetBlurrinessScore)
  {
    blurrinessScore = self->_blurrinessScore;
    v136 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"blurrinessScore"];
    *&v137 = blurrinessScore;
    [v4 encodeFloat:v136 forKey:v137];
  }

  if (self->_didSetExposureScore)
  {
    exposureScore = self->_exposureScore;
    v139 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"exposureScore"];
    *&v140 = exposureScore;
    [v4 encodeFloat:v139 forKey:v140];
  }

  if (self->_didSetAudioScore)
  {
    audioScore = self->_audioScore;
    v142 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"audioScore"];
    *&v143 = audioScore;
    [v4 encodeFloat:v142 forKey:v143];
  }

  if (self->_didSetSettlingEffectScore)
  {
    settlingEffectScore = self->_settlingEffectScore;
    v145 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"settlingEffectScore"];
    *&v146 = settlingEffectScore;
    [v4 encodeFloat:v145 forKey:v146];
  }

  if (self->_didSetWallpaperScore)
  {
    wallpaperScore = self->_wallpaperScore;
    v148 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"wallpaperScore"];
    *&v149 = wallpaperScore;
    [v4 encodeFloat:v148 forKey:v149];
  }

  if (self->_didSetAutoplaySuggestionScore)
  {
    autoplaySuggestionScore = self->_autoplaySuggestionScore;
    v151 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"autoplaySuggestionScore"];
    *&v152 = autoplaySuggestionScore;
    [v4 encodeFloat:v151 forKey:v152];
  }

  if (self->_didSetVideoStickerSuggestionScore)
  {
    videoStickerSuggestionScore = self->_videoStickerSuggestionScore;
    v154 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoStickerSuggestionScore"];
    *&v155 = videoStickerSuggestionScore;
    [v4 encodeFloat:v154 forKey:v155];
  }

  if (self->_didSetVideoScore)
  {
    videoScore = self->_videoScore;
    v157 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoScore"];
    *&v158 = videoScore;
    [v4 encodeFloat:v157 forKey:v158];
  }

  if (self->_didSetActivityScore)
  {
    activityScore = self->_activityScore;
    v160 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"activityScore"];
    *&v161 = activityScore;
    [v4 encodeFloat:v160 forKey:v161];
  }

  if (self->_didSetFaceCount)
  {
    faceCount = self->_faceCount;
    v163 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"faceCount"];
    [v4 encodeInt64:faceCount forKey:v163];
  }

  if (self->_didSetAudioClassification)
  {
    audioClassification = self->_audioClassification;
    v165 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"audioClassification"];
    [v4 encodeInteger:audioClassification forKey:v165];
  }

  if (self->_didSetProbableRotationDirection)
  {
    probableRotationDirection = self->_probableRotationDirection;
    v167 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"probableRotationDirection"];
    [v4 encodeInteger:probableRotationDirection forKey:v167];
  }

  if (self->_didSetProbableRotationDirectionConfidence)
  {
    probableRotationDirectionConfidence = self->_probableRotationDirectionConfidence;
    v169 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"probableRotationDirectionConfidence"];
    *&v170 = probableRotationDirectionConfidence;
    [v4 encodeFloat:v169 forKey:v170];
  }

  colorNormalizationData = self->_colorNormalizationData;
  v172 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"colorNormalizationData"];
  [v4 encodeObject:colorNormalizationData forKey:v172];

  resetCharacterRecognitionProperties = self->_resetCharacterRecognitionProperties;
  v174 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetCharacterRecognitionProperties"];
  [v4 encodeBool:resetCharacterRecognitionProperties forKey:v174];

  if (!self->_resetCharacterRecognitionProperties && self->_didSetCharacterRecognitionData)
  {
    v175 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
    v176 = [MEMORY[0x1E696AD98] numberWithInteger:self->_characterRecognitionAlgorithmVersion];
    v177 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionAlgorithmVersion"];
    [v175 setObject:v176 forKeyedSubscript:v177];

    characterRecognitionAdjustmentVersion = self->_characterRecognitionAdjustmentVersion;
    v179 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionAdjustmentVersion"];
    [v175 setObject:characterRecognitionAdjustmentVersion forKeyedSubscript:v179];

    characterRecognitionData = self->_characterRecognitionData;
    v181 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionData"];
    [v175 setObject:characterRecognitionData forKeyedSubscript:v181];

    machineReadableCodeData = self->_machineReadableCodeData;
    v183 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"machineReadableCodeData"];
    [v175 setObject:machineReadableCodeData forKeyedSubscript:v183];

    v184 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionProperties"];
    [v4 encodeObject:v175 forKey:v184];
  }

  resetTextUnderstandingProperties = self->_resetTextUnderstandingProperties;
  v186 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetTextUnderstandingProperties"];
  [v4 encodeBool:resetTextUnderstandingProperties forKey:v186];

  if (!self->_resetTextUnderstandingProperties && self->_didSetTextUnderstandingProperties)
  {
    v187 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    textUnderstandingData = self->_textUnderstandingData;
    v189 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textUnderstandingData"];
    [v187 setObject:textUnderstandingData forKeyedSubscript:v189];

    v190 = [MEMORY[0x1E696AD98] numberWithInteger:self->_textUnderstandingVersion];
    v191 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textUnderstandingVersion"];
    [v187 setObject:v190 forKeyedSubscript:v191];

    v192 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textUnderstandingProperties"];
    [v4 encodeObject:v187 forKey:v192];
  }

  resetVisualSearchProperties = self->_resetVisualSearchProperties;
  v194 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetVisualSearchProperties"];
  [v4 encodeBool:resetVisualSearchProperties forKey:v194];

  if (self->_didSetVisualSearchProperties)
  {
    v195 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v196 = [MEMORY[0x1E696AD98] numberWithInteger:self->_visualSearchAlgorithmVersion];
    v197 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchAlgorithmVersion"];
    [v195 setObject:v196 forKeyedSubscript:v197];

    visualSearchAdjustmentVersion = self->_visualSearchAdjustmentVersion;
    v199 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchAdjustmentVersion"];
    [v195 setObject:visualSearchAdjustmentVersion forKeyedSubscript:v199];

    v200 = [MEMORY[0x1E696AD98] numberWithBool:self->_didSetStickerConfidenceScore];
    v201 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetStickerConfidenceScore"];
    [v195 setObject:v200 forKeyedSubscript:v201];

    *&v202 = self->_stickerConfidenceScore;
    v203 = [MEMORY[0x1E696AD98] numberWithFloat:v202];
    v204 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stickerConfidenceScore"];
    [v195 setObject:v203 forKeyedSubscript:v204];

    v205 = [MEMORY[0x1E696AD98] numberWithInteger:self->_stickerConfidenceScoreAlgorithmVersion];
    v206 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stickerConfidenceScoreAlgorithmVersion"];
    [v195 setObject:v205 forKeyedSubscript:v206];

    visualSearchData = self->_visualSearchData;
    if (visualSearchData)
    {
      v208 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchData"];
      [v195 setObject:visualSearchData forKeyedSubscript:v208];
    }

    v209 = [MEMORY[0x1E696AD98] numberWithBool:self->_didSetVisualSearchData];
    v210 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetVisualSearchData"];
    [v195 setObject:v209 forKeyedSubscript:v210];

    v211 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchProperties"];
    [v4 encodeObject:v195 forKey:v211];
  }

  if (self->_didSetCompactImageSCSensitivityAnalysis)
  {
    compactSCSensitivityAnalysis = self->_compactSCSensitivityAnalysis;
    v213 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"compactImageSCSensitivityAnalysis"];
    [v4 encodeInt64:compactSCSensitivityAnalysis forKey:v213];
  }

  if (self->_didSetCompactVideoSCSensitivityAnalysis)
  {
    v214 = self->_compactSCSensitivityAnalysis;
    v215 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"compactVideoSCSensitivityAnalysis"];
    [v4 encodeInt64:v214 forKey:v215];

    videoSensitivityAnalysisVersion = self->_videoSensitivityAnalysisVersion;
    v217 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoSensitivityAnalysisVersion"];
    [v4 encodeInt64:videoSensitivityAnalysisVersion forKey:v217];
  }

  if (self->_didSetSceneprintData)
  {
    sceneprintData = self->_sceneprintData;
    v219 = sceneprintData;
    if (!sceneprintData)
    {
      v219 = [MEMORY[0x1E695DEF0] data];
    }

    v220 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneprintData"];
    [v4 encodeObject:v219 forKey:v220];

    if (!sceneprintData)
    {
    }
  }

  if (self->_didSetDuplicateMatchingData)
  {
    duplicateMatchingData = self->_duplicateMatchingData;
    v222 = duplicateMatchingData;
    if (!duplicateMatchingData)
    {
      v222 = [MEMORY[0x1E695DEF0] data];
    }

    v223 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateMatchingData"];
    [v4 encodeObject:v222 forKey:v223];

    if (!duplicateMatchingData)
    {
    }

    duplicateMatchingAlternateData = self->_duplicateMatchingAlternateData;
    v225 = duplicateMatchingAlternateData;
    if (!duplicateMatchingAlternateData)
    {
      v225 = [MEMORY[0x1E695DEF0] data];
    }

    v226 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateMatchingAlternateData"];
    [v4 encodeObject:v225 forKey:v226];

    if (!duplicateMatchingAlternateData)
    {
    }

    duplicateProcessingSucceeded = self->_duplicateProcessingSucceeded;
    v228 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateProcessingSucceeded"];
    [v4 encodeBool:duplicateProcessingSucceeded forKey:v228];
  }

  if (self->_didSetReverseLocationData)
  {
    reverseLocationData = self->_reverseLocationData;
    v230 = reverseLocationData;
    if (!reverseLocationData)
    {
      v230 = [MEMORY[0x1E695DEF0] data];
    }

    v231 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"reverseLocationData"];
    [v4 encodeObject:v230 forKey:v231];

    if (!reverseLocationData)
    {
    }
  }

  if (self->_didSetReverseLocationDataIsValid)
  {
    reverseLocationDataIsValid = self->_reverseLocationDataIsValid;
    v233 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"reverseLocationDataIsValid"];
    [v4 encodeBool:reverseLocationDataIsValid forKey:v233];
  }

  if (self->_didSetShiftedLocation)
  {
    shiftedLocation = self->_shiftedLocation;
    v235 = shiftedLocation;
    if (!shiftedLocation)
    {
      v235 = [MEMORY[0x1E695DEF0] data];
    }

    v236 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shiftedLocation"];
    [v4 encodeObject:v235 forKey:v236];

    if (!shiftedLocation)
    {
    }
  }

  if (self->_didSetObjectSaliencyRectsData)
  {
    objectSaliencyRectsData = self->_objectSaliencyRectsData;
    v238 = objectSaliencyRectsData;
    if (!objectSaliencyRectsData)
    {
      v238 = [MEMORY[0x1E695DEF0] data];
    }

    v239 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"objectSaliencyRectsData"];
    [v4 encodeObject:v238 forKey:v239];

    if (!objectSaliencyRectsData)
    {
    }
  }

  if (self->_didSetTimeZone)
  {
    timeZoneName = self->_timeZoneName;
    v241 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"timeZoneName"];
    [v4 encodeObject:timeZoneName forKey:v241];

    timeZoneOffsetValue = self->_timeZoneOffsetValue;
    v243 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"timeZoneOffsetValue"];
    [v4 encodeInt32:timeZoneOffsetValue forKey:v243];
  }

  if (self->_didSetGpsHorizontalAccuracy)
  {
    gpsHorizontalAccuracy = self->_gpsHorizontalAccuracy;
    v245 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"gpsHorizontalAccuracy"];
    [v4 encodeDouble:v245 forKey:gpsHorizontalAccuracy];
  }

  if (self->_didSetScreenTimeDeviceImageSensitivity)
  {
    screenTimeDeviceImageSensitivity = self->_screenTimeDeviceImageSensitivity;
    v247 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"screenTimeDeviceImageSensitivity"];
    [v4 encodeInteger:screenTimeDeviceImageSensitivity forKey:v247];
  }

  if (self->_didSetSyndicationProcessingValue)
  {
    syndicationProcessingValue = self->_syndicationProcessingValue;
    v249 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationProcessingValue"];
    [v4 encodeInteger:syndicationProcessingValue forKey:v249];
  }

  if (self->_didSetSyndicationProcessingVersion)
  {
    syndicationProcessingVersion = self->_syndicationProcessingVersion;
    v251 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationProcessingVersion"];
    [v4 encodeInt64:syndicationProcessingVersion forKey:v251];
  }

  if (self->_didSetSyndicationIdentifier)
  {
    syndicationIdentifier = self->_syndicationIdentifier;
    v253 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationIdentifier"];
    [v4 encodeObject:syndicationIdentifier forKey:v253];
  }

  if (self->_didSetFaceAnalysisVersion)
  {
    faceAnalysisVersion = self->_faceAnalysisVersion;
    v255 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"faceAnalysisVersion"];
    [v4 encodeInteger:faceAnalysisVersion forKey:v255];
  }

  if (self->_didSetLocalAnalysisStage)
  {
    localAnalysisStage = self->_localAnalysisStage;
    v257 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"localAnalysisStage"];
    [v4 encodeInteger:localAnalysisStage forKey:v257];
  }

  if (self->_didSetViewPresentation)
  {
    viewPresentation = self->_viewPresentation;
    v259 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"viewPresentation"];
    [v4 encodeInteger:viewPresentation forKey:v259];
  }

  if (self->_resetGeneratedAssetDescriptionProperties)
  {
    v260 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ResetGeneratedAssetDescriptionKey"];
    [v4 encodeBool:1 forKey:v260];
  }

  else
  {
    if (!self->_didSetGeneratedAssetDescriptionProperties)
    {
      goto LABEL_157;
    }

    v261 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DidSetGeneratedAssetDescriptionKey"];
    [v4 encodeBool:1 forKey:v261];

    generatedAssetDescriptionDictionaries = self->_generatedAssetDescriptionDictionaries;
    v260 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"GeneratedAssetDescriptionPropertiesKey"];
    [v4 encodeObject:generatedAssetDescriptionDictionaries forKey:v260];
  }

LABEL_157:
  if (self->_didSetPtpTrashedState)
  {
    ptpTrashedState = self->_ptpTrashedState;
    v264 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PtpTrashedStateKey"];
    [v4 encodeInt64:ptpTrashedState forKey:v264];
  }

  if (self->_didSetSavedAssetType)
  {
    savedAssetType = self->_savedAssetType;
    v266 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"savedAssetType"];
    [v4 encodeInteger:savedAssetType forKey:v266];
  }
}

- (void)encodeToXPCDict:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 encodeToXPCDict:v4];

  v6 = [(PHAssetChangeRequest *)self facesHelper];
  [v6 encodeToXPCDict:v4];

  v7 = [(PHAssetChangeRequest *)self temporalFacesHelper];
  [v7 encodeToXPCDict:v4];

  [(PHRelationshipChangeRequestHelper *)self->_keywordsHelper encodeToXPCDict:v4];
  [(PHRelationshipChangeRequestHelper *)self->_commentsHelper encodeToXPCDict:v4];
  [(PHRelationshipChangeRequestHelper *)self->_likesHelper encodeToXPCDict:v4];
  if ([(PHAssetChangeRequest *)self didChangeAdjustments])
  {
    v8 = [(PHAssetChangeRequest *)self contentEditingOutput];
    if (v8)
    {
      v76 = 0;
      v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v76];
      v10 = v76;
      if (!v9)
      {
        v11 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = v10;
          _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEFAULT, "Failed to archive contentEditingOutput, error: %@", &buf, 0xCu);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    xpc_dictionary_set_BOOL(v4, "didChangeAdjustments", 1);
    PLXPCDictionarySetData();
    PLXPCDictionarySetString();
    PLXPCDictionarySetURL();
  }

  xpc_dictionary_set_BOOL(v4, "didSetOriginalResourceChoice", self->_didSetOriginalResourceChoice);
  xpc_dictionary_set_BOOL(v4, "didRevertLocationToOriginal", self->_didRevertLocationToOriginal);
  xpc_dictionary_set_uint64(v4, "originalResourceChoice", self->_originalResourceChoice);
  xpc_dictionary_set_BOOL(v4, "didUpdateExtendedAttributesUsingOriginalMediaMetadata", self->_didUpdateExtendedAttributesUsingOriginalMediaMetadata);
  xpc_dictionary_set_BOOL(v4, "didExpungeAllSpatialOverCaptureResources", self->_didExpungeAllSpatialOverCaptureResources);
  xpc_dictionary_set_BOOL(v4, "didTrashAllSpatialOverCaptureResources", self->_didTrashAllSpatialOverCaptureResources);
  xpc_dictionary_set_BOOL(v4, "didUntrashAllSpatialOverCaptureResources", self->_didUntrashAllSpatialOverCaptureResources);
  xpc_dictionary_set_BOOL(v4, "didExpungeTrashedSpatialOverCaptureResources", self->_didExpungeTrashedSpatialOverCaptureResources);
  if (self->_didPromoteToGuestAsset)
  {
    xpc_dictionary_set_BOOL(v4, "didPromoteToGuestAsset", 1);
  }

  if (self->_didResetGuestAssetPromotion)
  {
    xpc_dictionary_set_BOOL(v4, "didResetGuestAssetPromotion", 1);
  }

  updatedLocation = self->_updatedLocation;
  if (updatedLocation)
  {
    v75 = 0;
    v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:updatedLocation requiringSecureCoding:1 error:&v75];
    v14 = v75;
    if (v13)
    {
      PLXPCDictionarySetData();
    }

    else
    {
      v15 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.start.value) = 138412290;
        *(&buf.start.value + 4) = v14;
        _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, "Failed to archive updatedLocation, error: %@", &buf, 0xCu);
      }
    }
  }

  if (self->_assetDescription)
  {
    PLXPCDictionarySetString();
  }

  if (self->_accessibilityDescription)
  {
    PLXPCDictionarySetString();
  }

  if (self->_didSetTitle)
  {
    xpc_dictionary_set_BOOL(v4, "didSetTitle", 1);
    if (self->_title)
    {
      PLXPCDictionarySetString();
    }
  }

  if (self->_didSetKeywordTitles)
  {
    xpc_dictionary_set_BOOL(v4, "didSetKeywordTitles", 1);
    keywordTitles = self->_keywordTitles;
    if (keywordTitles)
    {
      v17 = [(NSSet *)keywordTitles allObjects];
      PLXPCDictionarySetArray();
    }
  }

  if (self->_videoURLForUpdate)
  {
    PLXPCDictionarySetURL();
  }

  if (self->_pairingIdentifier)
  {
    PLXPCDictionarySetString();
  }

  if (self->_videoDuration.flags)
  {
    *&buf.start.value = *&self->_videoDuration.value;
    buf.start.epoch = self->_videoDuration.epoch;
    v18 = CMTimeCopyAsDictionary(&buf.start, 0);
    if (v18)
    {
      v19 = v18;
      PLXPCDictionarySetDictionary();
      CFRelease(v19);
    }
  }

  if (self->_imageDisplayTime.flags)
  {
    *&buf.start.value = *&self->_imageDisplayTime.value;
    buf.start.epoch = self->_imageDisplayTime.epoch;
    v20 = CMTimeCopyAsDictionary(&buf.start, 0);
    if (v20)
    {
      v21 = v20;
      PLXPCDictionarySetDictionary();
      CFRelease(v21);
    }
  }

  xpc_dictionary_set_BOOL(v4, "didSetVisibilityState", self->_didSetVisibilityState);
  xpc_dictionary_set_uint64(v4, "photoIrisVisibilityState", self->_photoIrisVisibilityState);
  if (self->_didSetSceneClassifications)
  {
    PLXPCDictionarySetDictionary();
  }

  if (self->_didSetImageEmbeddingVersion)
  {
    xpc_dictionary_set_BOOL(v4, "didSetImageEmbeddingVersionKey", 1);
    xpc_dictionary_set_int64(v4, "imageEmbeddingVersion", self->_imageEmbeddingVersion);
  }

  if (self->_didSetVideoEmbeddingVersion)
  {
    xpc_dictionary_set_BOOL(v4, "didSetVideoEmbeddingVersionKey", 1);
    xpc_dictionary_set_int64(v4, "videoEmbeddingVersion", self->_videoEmbeddingVersion);
  }

  if (self->_incrementPlayCount)
  {
    xpc_dictionary_set_BOOL(v4, "incrementPlayCount", 1);
  }

  if (self->_incrementShareCount)
  {
    xpc_dictionary_set_BOOL(v4, "incrementShareCount", 1);
  }

  lastSharedDate = self->_lastSharedDate;
  if (lastSharedDate)
  {
    [(NSDate *)lastSharedDate timeIntervalSinceReferenceDate];
    xpc_dictionary_set_date(v4, "lastSharedDate", v23);
  }

  if (self->_incrementViewCount)
  {
    xpc_dictionary_set_BOOL(v4, "incrementViewCount", 1);
  }

  if (self->_clearLastSharedDate)
  {
    xpc_dictionary_set_BOOL(v4, "clearLastSharedDate", 1);
  }

  if (self->_clearLastViewedDate)
  {
    xpc_dictionary_set_BOOL(v4, "clearLastViewedDate", 1);
  }

  if (self->_didSetVariationSuggestionStates)
  {
    xpc_dictionary_set_uint64(v4, "variationSuggestionStates", self->_variationSuggestionStates);
    xpc_dictionary_set_uint64(v4, "variationSuggestionStatesMask", self->_variationSuggestionStatesMask);
  }

  if (self->_toRetryUpload)
  {
    xpc_dictionary_set_BOOL(v4, "toRetryUpload", 1);
  }

  if (self->_didSetPackedPreferredCropRect)
  {
    xpc_dictionary_set_int64(v4, "packedPreferredCropRect", self->_packedPreferredCropRect);
  }

  if (self->_didSetPackedAcceptableCropRect)
  {
    xpc_dictionary_set_int64(v4, "packedAcceptableCropRect", self->_packedAcceptableCropRect);
  }

  if (self->_didSetPackedBestPlaybackRect)
  {
    xpc_dictionary_set_int64(v4, "packedBestPlaybackRect", self->_packedBestPlaybackRect);
  }

  if (self->_didModifyComputedAttributes)
  {
    if (self->_computedAttributeMutations)
    {
      PLXPCDictionarySetDictionary();
    }

    else
    {
      v24 = xpc_null_create();
      xpc_dictionary_set_value(v4, "computedAttributeMutations", v24);
    }
  }

  if ([(NSDictionary *)self->_pathsToNewAssetResourcesByAssetResourceType count])
  {
    PLXPCDictionarySetDictionary();
  }

  if ([(NSSet *)self->_assetResourceTypesToDelete count])
  {
    v25 = [(NSSet *)self->_assetResourceTypesToDelete allObjects];
    PLXPCDictionarySetArray();
  }

  if (self->_deleteContextualVideoThumbnails)
  {
    xpc_dictionary_set_BOOL(v4, "deleteContextualVideoThumbnails", 1);
  }

  if ([(NSSet *)self->_libraryScopeOriginatorUUIDs count])
  {
    v26 = [(NSSet *)self->_libraryScopeOriginatorUUIDs allObjects];
    PLXPCDictionarySetArray();
  }

  if (self->_resetWallpaperProperties)
  {
    xpc_dictionary_set_BOOL(v4, "resetWallpaperProperties", 1);
  }

  else
  {
    if (self->_didSetWallpaperPropertiesTimestamp)
    {
      PLXPCDictionarySetDate();
    }

    if (self->_didSetWallpaperPropertiesVersion)
    {
      xpc_dictionary_set_uint64(v4, "photoAnalysisWallpaperPropertiesVersion", self->_wallpaperPropertiesVersion);
    }

    if (self->_didSetWallpaperPropertiesData)
    {
      PLXPCDictionarySetData();
    }
  }

  if (self->_didSetMediaAnalysisTimeStamp)
  {
    PLXPCDictionarySetDate();
  }

  if (self->_didSetMediaAnalysisVersion)
  {
    xpc_dictionary_set_uint64(v4, "mediaAnalysisVersion", self->_mediaAnalysisVersion);
  }

  if (self->_didSetMediaAnalysisImageVersion)
  {
    xpc_dictionary_set_int64(v4, "mediaAnalysisImageVersion", self->_mediaAnalysisImageVersion);
  }

  if ((self->_bestVideoTimeRange.start.flags & 1) != 0 && (self->_bestVideoTimeRange.duration.flags & 1) != 0 && !self->_bestVideoTimeRange.duration.epoch && (self->_bestVideoTimeRange.duration.value & 0x8000000000000000) == 0)
  {
    v68 = *&self->_bestVideoTimeRange.start.epoch;
    *&buf.start.value = *&self->_bestVideoTimeRange.start.value;
    *&buf.start.epoch = v68;
    *&buf.duration.timescale = *&self->_bestVideoTimeRange.duration.timescale;
    v69 = CMTimeRangeCopyAsDictionary(&buf, 0);
    if (v69)
    {
      v70 = v69;
      PLXPCDictionarySetDictionary();
      CFRelease(v70);
    }
  }

  if ((self->_animatedStickerTimeRange.start.flags & 1) != 0 && (self->_animatedStickerTimeRange.duration.flags & 1) != 0 && !self->_animatedStickerTimeRange.duration.epoch && (self->_animatedStickerTimeRange.duration.value & 0x8000000000000000) == 0)
  {
    v71 = *&self->_animatedStickerTimeRange.start.epoch;
    *&buf.start.value = *&self->_animatedStickerTimeRange.start.value;
    *&buf.start.epoch = v71;
    *&buf.duration.timescale = *&self->_animatedStickerTimeRange.duration.timescale;
    v72 = CMTimeRangeCopyAsDictionary(&buf, 0);
    if (v72)
    {
      v73 = v72;
      PLXPCDictionarySetDictionary();
      CFRelease(v73);
    }
  }

  if (self->_bestKeyFrameTime.flags)
  {
    *&buf.start.value = *&self->_bestKeyFrameTime.value;
    buf.start.epoch = self->_bestKeyFrameTime.epoch;
    v27 = CMTimeCopyAsDictionary(&buf.start, 0);
    if (v27)
    {
      v28 = v27;
      PLXPCDictionarySetDictionary();
      CFRelease(v28);
    }
  }

  xpc_dictionary_set_BOOL(v4, "unsetBestKeyFrameTime", self->_didUnsetBestKeyFrameTime);
  if (self->_bestKeyFrameJPEGData)
  {
    PLXPCDictionarySetData();
  }

  if (self->_contextualVideoThumbnailImageDataByIdentifier)
  {
    PLXPCDictionarySetDictionary();
  }

  if (self->_computeSyncMediaAnalysisPayload)
  {
    PLXPCDictionarySetData();
  }

  if (self->_didSetBlurrinessScore)
  {
    xpc_dictionary_set_double(v4, "blurrinessScore", self->_blurrinessScore);
  }

  if (self->_didSetExposureScore)
  {
    xpc_dictionary_set_double(v4, "exposureScore", self->_exposureScore);
  }

  if (self->_didSetAudioScore)
  {
    xpc_dictionary_set_double(v4, "audioScore", self->_audioScore);
  }

  if (self->_didSetSettlingEffectScore)
  {
    xpc_dictionary_set_double(v4, "settlingEffectScore", self->_settlingEffectScore);
  }

  if (self->_didSetWallpaperScore)
  {
    xpc_dictionary_set_double(v4, "wallpaperScore", self->_wallpaperScore);
  }

  if (self->_didSetAutoplaySuggestionScore)
  {
    xpc_dictionary_set_double(v4, "autoplaySuggestionScore", self->_autoplaySuggestionScore);
  }

  if (self->_didSetVideoStickerSuggestionScore)
  {
    xpc_dictionary_set_double(v4, "videoStickerSuggestionScore", self->_videoStickerSuggestionScore);
  }

  if (self->_didSetVideoScore)
  {
    xpc_dictionary_set_double(v4, "videoScore", self->_videoScore);
  }

  if (self->_didSetActivityScore)
  {
    xpc_dictionary_set_double(v4, "activityScore", self->_activityScore);
  }

  if (self->_didSetFaceCount)
  {
    xpc_dictionary_set_uint64(v4, "faceCount", self->_faceCount);
  }

  if (self->_didSetAudioClassification)
  {
    xpc_dictionary_set_int64(v4, "audioClassification", self->_audioClassification);
  }

  if (self->_didSetProbableRotationDirection)
  {
    xpc_dictionary_set_int64(v4, "probableRotationDirection", self->_probableRotationDirection);
  }

  if (self->_didSetProbableRotationDirectionConfidence)
  {
    xpc_dictionary_set_double(v4, "probableRotationDirectionConfidence", self->_probableRotationDirectionConfidence);
  }

  if (self->_colorNormalizationData)
  {
    PLXPCDictionarySetData();
  }

  if (self->_resetCharacterRecognitionProperties)
  {
    xpc_dictionary_set_BOOL(v4, "resetCharacterRecognitionProperties", 1);
  }

  else if (self->_didSetCharacterRecognitionData)
  {
    v29 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:self->_characterRecognitionAlgorithmVersion];
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionAlgorithmVersion"];
    [v29 setObject:v30 forKeyedSubscript:v31];

    characterRecognitionAdjustmentVersion = self->_characterRecognitionAdjustmentVersion;
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionAdjustmentVersion"];
    [v29 setObject:characterRecognitionAdjustmentVersion forKeyedSubscript:v33];

    characterRecognitionData = self->_characterRecognitionData;
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionData"];
    [v29 setObject:characterRecognitionData forKeyedSubscript:v35];

    machineReadableCodeData = self->_machineReadableCodeData;
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"machineReadableCodeData"];
    [v29 setObject:machineReadableCodeData forKeyedSubscript:v37];

    PLXPCDictionarySetDictionary();
  }

  if (self->_resetTextUnderstandingProperties)
  {
    xpc_dictionary_set_BOOL(v4, "resetTextUnderstandingProperties", 1);
  }

  else if (self->_didSetTextUnderstandingProperties)
  {
    v38 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    textUnderstandingData = self->_textUnderstandingData;
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textUnderstandingData"];
    [v38 setObject:textUnderstandingData forKeyedSubscript:v40];

    v41 = [MEMORY[0x1E696AD98] numberWithInteger:self->_textUnderstandingVersion];
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textUnderstandingVersion"];
    [v38 setObject:v41 forKeyedSubscript:v42];

    PLXPCDictionarySetDictionary();
  }

  if (self->_resetVisualSearchProperties)
  {
    xpc_dictionary_set_BOOL(v4, "resetVisualSearchProperties", 1);
  }

  if (self->_didSetVisualSearchProperties)
  {
    v43 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
    v44 = [MEMORY[0x1E696AD98] numberWithInteger:self->_visualSearchAlgorithmVersion];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchAlgorithmVersion"];
    [v43 setObject:v44 forKeyedSubscript:v45];

    visualSearchAdjustmentVersion = self->_visualSearchAdjustmentVersion;
    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchAdjustmentVersion"];
    [v43 setObject:visualSearchAdjustmentVersion forKeyedSubscript:v47];

    v48 = [MEMORY[0x1E696AD98] numberWithBool:self->_didSetStickerConfidenceScore];
    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetStickerConfidenceScore"];
    [v43 setObject:v48 forKeyedSubscript:v49];

    *&v50 = self->_stickerConfidenceScore;
    v51 = [MEMORY[0x1E696AD98] numberWithFloat:v50];
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stickerConfidenceScore"];
    [v43 setObject:v51 forKeyedSubscript:v52];

    v53 = [MEMORY[0x1E696AD98] numberWithInteger:self->_stickerConfidenceScoreAlgorithmVersion];
    v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stickerConfidenceScoreAlgorithmVersion"];
    [v43 setObject:v53 forKeyedSubscript:v54];

    visualSearchData = self->_visualSearchData;
    if (visualSearchData)
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchData"];
      [v43 setObject:visualSearchData forKeyedSubscript:v56];
    }

    v57 = [MEMORY[0x1E696AD98] numberWithBool:self->_didSetVisualSearchData];
    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetVisualSearchData"];
    [v43 setObject:v57 forKeyedSubscript:v58];

    PLXPCDictionarySetDictionary();
  }

  if (self->_didSetCompactImageSCSensitivityAnalysis)
  {
    xpc_dictionary_set_int64(v4, "compactImageSCSensitivityAnalysis", self->_compactSCSensitivityAnalysis);
  }

  if (self->_didSetCompactVideoSCSensitivityAnalysis)
  {
    xpc_dictionary_set_int64(v4, "compactVideoSCSensitivityAnalysis", self->_compactSCSensitivityAnalysis);
    xpc_dictionary_set_int64(v4, "videoSensitivityAnalysisVersion", self->_videoSensitivityAnalysisVersion);
  }

  if (self->_didSetSceneprintData)
  {
    if (self->_sceneprintData)
    {
      PLXPCDictionarySetData();
    }

    else
    {
      v59 = xpc_null_create();
      xpc_dictionary_set_value(v4, "sceneprintData", v59);
    }
  }

  if (self->_didSetDuplicateMatchingData)
  {
    if (self->_duplicateMatchingData)
    {
      PLXPCDictionarySetData();
    }

    else
    {
      v60 = xpc_null_create();
      xpc_dictionary_set_value(v4, "duplicateMatchingData", v60);
    }

    if (self->_duplicateMatchingAlternateData)
    {
      PLXPCDictionarySetData();
    }

    else
    {
      v61 = xpc_null_create();
      xpc_dictionary_set_value(v4, "duplicateMatchingAlternateData", v61);
    }

    xpc_dictionary_set_BOOL(v4, "duplicateProcessingSucceeded", self->_duplicateProcessingSucceeded);
  }

  if (self->_didSetReverseLocationData)
  {
    if (self->_reverseLocationData)
    {
      PLXPCDictionarySetData();
    }

    else
    {
      v62 = xpc_null_create();
      xpc_dictionary_set_value(v4, "reverseLocationData", v62);
    }
  }

  if (self->_didSetReverseLocationDataIsValid)
  {
    xpc_dictionary_set_BOOL(v4, "reverseLocationDataIsValid", self->_reverseLocationDataIsValid);
  }

  if (self->_didSetShiftedLocation)
  {
    shiftedLocation = self->_shiftedLocation;
    if (shiftedLocation)
    {
      v74 = 0;
      v64 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:shiftedLocation requiringSecureCoding:1 error:&v74];
      v65 = v74;
      if (v64)
      {
        PLXPCDictionarySetData();
      }

      else
      {
        v66 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = v65;
          _os_log_impl(&dword_19C86F000, v66, OS_LOG_TYPE_DEFAULT, "Failed to archive shiftedLocation, error: %@", &buf, 0xCu);
        }
      }
    }

    else
    {
      v65 = xpc_null_create();
      xpc_dictionary_set_value(v4, "shiftedLocation", v65);
    }
  }

  if (self->_didSetObjectSaliencyRectsData)
  {
    if (self->_objectSaliencyRectsData)
    {
      PLXPCDictionarySetData();
    }

    else
    {
      v67 = xpc_null_create();
      xpc_dictionary_set_value(v4, "objectSaliencyRectsData", v67);
    }
  }

  if (self->_didSetTimeZone)
  {
    PLXPCDictionarySetString();
    xpc_dictionary_set_int64(v4, "timeZoneOffsetValue", self->_timeZoneOffsetValue);
  }

  if (self->_didSetGpsHorizontalAccuracy)
  {
    xpc_dictionary_set_double(v4, "gpsHorizontalAccuracy", self->_gpsHorizontalAccuracy);
  }

  if (self->_didSetScreenTimeDeviceImageSensitivity)
  {
    xpc_dictionary_set_int64(v4, "screenTimeDeviceImageSensitivity", self->_screenTimeDeviceImageSensitivity);
  }

  if (self->_didSetSyndicationProcessingValue)
  {
    xpc_dictionary_set_uint64(v4, "syndicationProcessingValue", self->_syndicationProcessingValue);
  }

  if (self->_didSetSyndicationProcessingVersion)
  {
    xpc_dictionary_set_uint64(v4, "syndicationProcessingVersion", self->_syndicationProcessingVersion);
  }

  if (self->_didSetSyndicationIdentifier)
  {
    PLXPCDictionarySetString();
  }

  if (self->_didSetFaceAnalysisVersion)
  {
    xpc_dictionary_set_int64(v4, "faceAnalysisVersion", self->_faceAnalysisVersion);
  }

  if (self->_didSetLocalAnalysisStage)
  {
    xpc_dictionary_set_int64(v4, "localAnalysisStage", self->_localAnalysisStage);
  }

  if (self->_didSetViewPresentation)
  {
    xpc_dictionary_set_int64(v4, "viewPresentation", self->_viewPresentation);
  }

  if (self->_resetGeneratedAssetDescriptionProperties)
  {
    xpc_dictionary_set_BOOL(v4, "ResetGeneratedAssetDescriptionKey", 1);
  }

  else if (self->_didSetGeneratedAssetDescriptionProperties)
  {
    xpc_dictionary_set_BOOL(v4, "DidSetGeneratedAssetDescriptionKey", 1);
    PLXPCDictionarySetDictionary();
  }

  if (self->_didSetPtpTrashedState)
  {
    xpc_dictionary_set_int64(v4, "PtpTrashedStateKey", self->_ptpTrashedState);
  }

  if (self->_didSetSavedAssetType)
  {
    xpc_dictionary_set_int64(v4, "savedAssetType", self->_savedAssetType);
  }
}

- (void)revertAssetContentToOriginal
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PHChangeRequest *)self uuid];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "Reverting content to original for asset %{public}@", &v5, 0xCu);
  }

  [(PHAssetChangeRequest *)self setContentEditingOutput:0];
}

- (void)resetGuestAssetPromotion
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLSyndicationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(PHObject *)self->_originalAsset uuid];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_INFO, "reset guest asset promotion on %{public}@", &v5, 0xCu);
  }

  self->_didPromoteToGuestAsset = 0;
  self->_didResetGuestAssetPromotion = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)promoteToGuestAsset
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLSyndicationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(PHObject *)self->_originalAsset uuid];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_INFO, "promote to guest asset: %{public}@", &v5, 0xCu);
  }

  self->_didResetGuestAssetPromotion = 0;
  self->_didPromoteToGuestAsset = 1;
  [(PHChangeRequest *)self didMutate];
}

- (id)_existentLikeObjectIDs
{
  originalAsset = self->_originalAsset;
  if (originalAsset)
  {
    v3 = [(PHChangeRequest *)self photoLibrary];
    v4 = [v3 librarySpecificFetchOptions];
    originalAsset = [PHQuery queryForLikesForAsset:originalAsset options:v4];
  }

  v5 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:originalAsset];

  return v5;
}

- (id)_mutableLikeObjectIDsAndUUIDs
{
  likesHelper = self->_likesHelper;
  v4 = [(PHAssetChangeRequest *)self _existentLikeObjectIDs];
  [(PHRelationshipChangeRequestHelper *)likesHelper prepareIfNeededWithExistentObjectIDs:v4];

  v5 = self->_likesHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (void)removeLike:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  v7 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:v6, v9, v10];

  if (v7)
  {
    v8 = [(PHAssetChangeRequest *)self _mutableLikeObjectIDsAndUUIDs];
    [v8 removeObjectsInArray:v7];

    [(PHChangeRequest *)self didMutate];
  }
}

- (void)addLike:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  v7 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:v6, v9, v10];

  if (v7)
  {
    v8 = [(PHAssetChangeRequest *)self _mutableLikeObjectIDsAndUUIDs];
    [v8 addObjectsFromArray:v7];

    [(PHChangeRequest *)self didMutate];
  }

  [(PHChangeRequest *)self didMutate];
}

- (id)_existentCommentObjectIDs
{
  originalAsset = self->_originalAsset;
  if (originalAsset)
  {
    v3 = [(PHChangeRequest *)self photoLibrary];
    v4 = [v3 librarySpecificFetchOptions];
    originalAsset = [PHQuery queryForCommentsForAsset:originalAsset options:v4];
  }

  v5 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:originalAsset];

  return v5;
}

- (id)_mutableCommentObjectIDsAndUUIDs
{
  commentsHelper = self->_commentsHelper;
  v4 = [(PHAssetChangeRequest *)self _existentCommentObjectIDs];
  [(PHRelationshipChangeRequestHelper *)commentsHelper prepareIfNeededWithExistentObjectIDs:v4];

  v5 = self->_commentsHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (void)removeComments:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    v5 = [(PHAssetChangeRequest *)self _mutableCommentObjectIDsAndUUIDs];
    [v5 removeObjectsInArray:v6];

    [(PHChangeRequest *)self didMutate];
    v4 = v6;
  }
}

- (void)addComments:(id)a3
{
  v5 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v5)
  {
    v4 = [(PHAssetChangeRequest *)self _mutableCommentObjectIDsAndUUIDs];
    [v4 addObjectsFromArray:v5];

    [(PHChangeRequest *)self didMutate];
  }

  [(PHChangeRequest *)self didMutate];
}

- (BOOL)deleteAssetResourceWithType:(int64_t)a3
{
  v5 = PHAssetResourceTypeClientCanAppendToOrDeleteFromAsset(a3);
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if ([(NSSet *)self->_assetResourceTypesToDelete count])
    {
      [v6 unionSet:self->_assetResourceTypesToDelete];
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v6 addObject:v7];

    objc_storeStrong(&self->_assetResourceTypesToDelete, v6);
    [(PHChangeRequest *)self didMutate];
    pathsToNewAssetResourcesByAssetResourceType = self->_pathsToNewAssetResourcesByAssetResourceType;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v10 = [(NSDictionary *)pathsToNewAssetResourcesByAssetResourceType objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [(NSDictionary *)self->_pathsToNewAssetResourcesByAssetResourceType mutableCopy];
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      [(NSDictionary *)v11 setObject:0 forKeyedSubscript:v12];

      v13 = self->_pathsToNewAssetResourcesByAssetResourceType;
      self->_pathsToNewAssetResourcesByAssetResourceType = v11;
    }
  }

  return v5;
}

- (BOOL)addAssetResourceWithType:(int64_t)a3 fromFileAtURL:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (PHAssetResourceTypeClientCanAppendToOrDeleteFromAsset(a3))
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];

    v9 = [(PHChangeRequest *)self photoLibrary];
    v10 = [v9 pathManager];
    v34 = 0;
    v11 = [v10 externalDirectoryWithSubType:3 createIfNeeded:1 error:&v34];
    v12 = v34;

    if (v11)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v15 = [v13 stringWithFormat:@"ResourceType-%@-%@", v14, v8];
      v16 = [v11 stringByAppendingPathComponent:v15];

      v17 = MEMORY[0x1E69BF238];
      v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:v16];
      v33 = 0;
      v19 = [v17 copyItemAtURL:v6 toURL:v18 error:&v33];
      v20 = v33;

      if (v19)
      {
        v30 = v20;
        v31 = v12;
        v32 = v8;
        v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v22 = v21;
        if (self->_pathsToNewAssetResourcesByAssetResourceType)
        {
          [v21 addEntriesFromDictionary:?];
        }

        v23 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
        [v22 setObject:v16 forKeyedSubscript:v23];

        objc_storeStrong(&self->_pathsToNewAssetResourcesByAssetResourceType, v22);
        [(PHChangeRequest *)self didMutate];
        assetResourceTypesToDelete = self->_assetResourceTypesToDelete;
        v25 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
        LODWORD(assetResourceTypesToDelete) = [(NSSet *)assetResourceTypesToDelete containsObject:v25];

        if (assetResourceTypesToDelete)
        {
          v26 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_assetResourceTypesToDelete];
          v27 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
          [(NSSet *)v26 removeObject:v27];

          v28 = self->_assetResourceTypesToDelete;
          self->_assetResourceTypesToDelete = v26;
        }

        v12 = v31;
        v8 = v32;
        v20 = v30;
      }
    }

    else
    {
      v11 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v12;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "Unable to get external add resources directory; %@", buf, 0xCu);
      }

      LOBYTE(v19) = 0;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (void)updateExtendedAttributesUsingOriginalMediaMetadata
{
  if (PLPlatformExtendedAttributesSupported())
  {
    self->_didUpdateExtendedAttributesUsingOriginalMediaMetadata = 1;

    [(PHChangeRequest *)self didMutate];
  }
}

- (void)revertLocationToOriginal
{
  if (PLPlatformExtendedAttributesSupported())
  {
    self->_didRevertLocationToOriginal = 1;

    [(PHChangeRequest *)self didMutate];
  }
}

- (void)setOriginalResourceChoice:(unint64_t)a3
{
  self->_originalResourceChoice = a3;
  self->_didSetOriginalResourceChoice = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setContentEditingOutput:(PHContentEditingOutput *)contentEditingOutput
{
  v17 = contentEditingOutput;
  v6 = [(PHAssetChangeRequest *)self supportedEditOperations];
  v7 = [v6 containsIndex:2];

  if (v7)
  {
    [(PHChangeRequest *)self didMutate];
    [(PHAssetChangeRequest *)self markDidChangeAdjustments];
    objc_storeStrong(&self->_contentEditingOutput, contentEditingOutput);
    v8 = [(PHContentEditingOutput *)v17 editorBundleURL];
    editorBundleURL = self->_editorBundleURL;
    self->_editorBundleURL = v8;
  }

  else if ((PLIsAssetsd() & 1) == 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = MEMORY[0x1E696AEC0];
    v13 = NSStringFromSelector(a2);
    v14 = [v12 stringWithFormat:@"%@ cannot be used on a non-editable asset", v13];
    v15 = [v10 exceptionWithName:v11 reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }
}

- (void)setAdjustmentData:(id)a3 withRenderedJPEGData:(id)a4 orRenderedContentURL:(id)a5 penultimateRenderedJPEGData:(id)a6 isSubstandardRender:(BOOL)a7 fullSizeRenderSize:(CGSize)a8 renderedVideoComplementURL:(id)a9 penultimateRenderedVideoComplementURL:(id)a10 optionalOriginalResourceChoice:(id)a11
{
  height = a8.height;
  width = a8.width;
  v37 = a7;
  v42 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v39 = a9;
  v38 = a10;
  v22 = a11;
  originalAsset = self->_originalAsset;
  v24 = v21;
  v25 = v19;
  if (originalAsset)
  {
    v26 = [(PHAsset *)originalAsset mediaType];
  }

  else
  {
    v26 = 1;
  }

  v27 = [PHContentEditingOutput alloc];
  v28 = [(PHChangeRequest *)self photoLibrary];
  v29 = [v28 photoLibraryURL];
  v30 = [(PHContentEditingOutput *)v27 initWithAdjustmentBaseVersion:0 mediaType:v26 appropriateForURL:v29];

  -[PHContentEditingOutput setBaseVersion:](v30, "setBaseVersion:", [v18 baseVersion]);
  [(PHContentEditingOutput *)v30 setAdjustmentData:v18];
  v31 = v20;
  if (v20)
  {
    [(PHContentEditingOutput *)v30 setRenderedContentURL:v20];
    v32 = v25;
    v33 = v24;
LABEL_8:
    v34 = v38;
    v35 = v39;
    goto LABEL_9;
  }

  v32 = v25;
  v33 = v24;
  if (v25)
  {
    [(PHContentEditingOutput *)v30 setRenderedJPEGData:v25];
    goto LABEL_8;
  }

  v36 = PLPhotoKitGetLog();
  v34 = v38;
  v35 = v39;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v41 = v18;
    _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_ERROR, "No rendered content provided for %@", buf, 0xCu);
  }

LABEL_9:
  [(PHContentEditingOutput *)v30 setPenultimateRenderedJPEGData:v33];
  [(PHContentEditingOutput *)v30 setIsSubstandardRender:v37];
  [(PHContentEditingOutput *)v30 setFullSizeRenderWidth:width];
  [(PHContentEditingOutput *)v30 setFullSizeRenderHeight:height];
  [(PHContentEditingOutput *)v30 setRenderedVideoComplementContentURL:v35];
  [(PHContentEditingOutput *)v30 setPenultimateRenderedVideoComplementContentURL:v34];
  if (v22)
  {
    [(PHContentEditingOutput *)v30 setOriginalResourceChoice:v22];
  }

  [(PHAssetChangeRequest *)self setContentEditingOutput:v30];
}

- (void)_prepareExistingIDsForTemporalFacesIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHRelationshipChangeRequestHelper *)self->_temporalFacesHelper originalObjectIDs];

  if (!v3)
  {
    if (self->_originalAsset)
    {
      v4 = [(PHChangeRequest *)self photoLibrary];
      v5 = [PHFetchOptions fetchOptionsWithPhotoLibrary:v4 orObject:0];

      [v5 setIncludeMediaAnalysisProcessingRangeTypes:2];
      [v5 setIncludedDetectionTypes:&unk_1F102DFB8];
      v6 = [PHQuery queryForFacesInAsset:self->_originalAsset options:v5];
      v7 = [v6 executeQuery];
      temporalFacesHelper = self->_temporalFacesHelper;
      v9 = [v7 fetchedObjectIDs];
      [(PHRelationshipChangeRequestHelper *)temporalFacesHelper setOriginalObjectIDs:v9];
    }

    v10 = [(PHRelationshipChangeRequestHelper *)self->_temporalFacesHelper originalObjectIDs];

    if (!v10)
    {
      v11 = self->_temporalFacesHelper;
      v12 = MEMORY[0x1E695E0F0];

      [(PHRelationshipChangeRequestHelper *)v11 setOriginalObjectIDs:v12];
    }
  }
}

- (id)_mutableFaceObjectIDsAndUUIDs
{
  [(PHAssetChangeRequest *)self _prepareFaceIDsIfNeeded];
  facesHelper = self->_facesHelper;

  return [(PHRelationshipChangeRequestHelper *)facesHelper mutableObjectIDsAndUUIDs];
}

- (void)_prepareFaceIDsIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHRelationshipChangeRequestHelper *)self->_facesHelper originalObjectIDs];

  if (!v3)
  {
    originalAsset = self->_originalAsset;
    if (originalAsset)
    {
      v5 = [PHQuery queryForFacesInAsset:originalAsset options:0];
      v6 = [v5 executeQuery];
      [(PHAssetChangeRequest *)self _prepareFacesHelperWithFetchResult:v6];
    }

    v7 = [(PHRelationshipChangeRequestHelper *)self->_facesHelper originalObjectIDs];

    if (!v7)
    {
      [(PHRelationshipChangeRequestHelper *)self->_facesHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
    }
  }

  v8 = [(PHRelationshipChangeRequestHelper *)self->_facesHelper mutableObjectIDsAndUUIDs];

  if (!v8)
  {
    facesHelper = self->_facesHelper;
    v11 = [(PHRelationshipChangeRequestHelper *)facesHelper originalObjectIDs];
    v10 = [v11 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)facesHelper setMutableObjectIDsAndUUIDs:v10];
  }
}

- (void)_prepareFacesHelperWithFetchResult:(id)a3
{
  v7 = a3;
  +[PHPhotoLibrary assertTransaction];
  v4 = [(PHRelationshipChangeRequestHelper *)self->_facesHelper originalObjectIDs];

  if (!v4)
  {
    facesHelper = self->_facesHelper;
    v6 = [v7 fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)facesHelper setOriginalObjectIDs:v6];
  }
}

- (id)_existentKeywordObjectIDs
{
  originalAsset = self->_originalAsset;
  if (originalAsset)
  {
    v3 = [(PHChangeRequest *)self photoLibrary];
    v4 = [v3 librarySpecificFetchOptions];
    originalAsset = [PHQuery queryForKeywordsForAsset:originalAsset options:v4];
  }

  v5 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:originalAsset];

  return v5;
}

- (id)_mutableKeywordObjectIDsAndUUIDs
{
  keywordsHelper = self->_keywordsHelper;
  v4 = [(PHAssetChangeRequest *)self _existentKeywordObjectIDs];
  [(PHRelationshipChangeRequestHelper *)keywordsHelper prepareIfNeededWithExistentObjectIDs:v4];

  v5 = self->_keywordsHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (void)removeKeywords:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    v5 = [(PHAssetChangeRequest *)self _mutableKeywordObjectIDsAndUUIDs];
    [v5 removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)addKeywords:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    v5 = [(PHAssetChangeRequest *)self _mutableKeywordObjectIDsAndUUIDs];
    [v5 addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)setKeywordTitles:(id)a3
{
  v4 = a3;
  [(PHChangeRequest *)self didMutate];
  self->_didSetKeywordTitles = 1;
  v5 = [v4 copy];

  keywordTitles = self->_keywordTitles;
  self->_keywordTitles = v5;
}

- (void)setVariationSuggestionStates:(unint64_t)a3 forVariationType:(unint64_t)a4
{
  v5 = a3;
  [(PHChangeRequest *)self didMutate];
  self->_didSetVariationSuggestionStates = 1;
  v7 = 6 * a4 - 6;
  v8 = (v5 & 0x3F) << v7;
  if (!a4)
  {
    v8 = 0;
  }

  v9 = 63 << v7;
  if (!a4)
  {
    v9 = 0;
  }

  self->_variationSuggestionStates |= v8;
  self->_variationSuggestionStatesMask |= v9;
}

- (void)incrementShareCount
{
  [(PHChangeRequest *)self didMutate];
  v3 = [MEMORY[0x1E695DF00] date];
  lastSharedDate = self->_lastSharedDate;
  self->_lastSharedDate = v3;

  self->_incrementShareCount = 1;
}

- (void)setFaceAdjustmentVersion:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"faceAdjustmentVersion"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"faceAdjustmentVersion"];
  }

  else
  {
    [v6 removeObjectForKey:@"faceAdjustmentVersion"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"faceAdjustmentVersion"];
  }
}

- (id)faceAdjustmentVersion
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"faceAdjustmentVersion"];

  return v5;
}

- (void)setContextualVideoThumbnailImage:(CGImage *)a3 withIdentifier:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (![(PHAsset *)self->_originalAsset isVideo])
  {
    v7 = PLPhotoKitGetLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    LOWORD(v17) = 0;
    v13 = "Setting contextual video thumbnail on a non-video asset - ignoring";
    v14 = v7;
    v15 = 2;
LABEL_12:
    _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, v13, &v17, v15);
    goto LABEL_13;
  }

  if (!a3 || !v6)
  {
    v7 = PLPhotoKitGetLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v17 = 136315650;
    v18 = "[PHAssetChangeRequest setContextualVideoThumbnailImage:withIdentifier:]";
    v19 = 2048;
    v20 = a3;
    v21 = 2114;
    v22 = v6;
    v13 = "Invalid parameter in %s image:%p identifier:%{public}@";
    v14 = v7;
    v15 = 32;
    goto LABEL_12;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v8 = [*MEMORY[0x1E6982E58] identifier];
  v9 = CGImageDestinationCreateWithData(v7, v8, 1uLL, 0);

  if (v9)
  {
    CGImageDestinationAddImage(v9, a3, 0);
    CGImageDestinationFinalize(v9);
    CFRelease(v9);
    v10 = [(NSDictionary *)self->_contextualVideoThumbnailImageDataByIdentifier mutableCopy];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v10 setObject:v7 forKeyedSubscript:v6];
    v11 = [v10 copy];
    contextualVideoThumbnailImageDataByIdentifier = self->_contextualVideoThumbnailImageDataByIdentifier;
    self->_contextualVideoThumbnailImageDataByIdentifier = v11;

    [(PHChangeRequest *)self didMutate];
  }

  else
  {
    v16 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[PHAssetChangeRequest setContextualVideoThumbnailImage:withIdentifier:]";
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Unable to create CGImageDestination in %s", &v17, 0xCu);
    }
  }

LABEL_13:
}

- (void)setTemporalFaces:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  v5 = [v4 mutableCopy];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v9 = v6;
  [(PHChangeRequest *)self didMutate];
  [(PHAssetChangeRequest *)self _prepareExistingIDsForTemporalFacesIfNeeded];
  temporalFacesHelper = self->_temporalFacesHelper;
  v8 = [v9 mutableCopy];
  [(PHRelationshipChangeRequestHelper *)temporalFacesHelper setMutableObjectIDsAndUUIDs:v8];
}

- (void)removeFaces:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    v5 = [(PHAssetChangeRequest *)self _mutableFaceObjectIDsAndUUIDs];
    [v5 removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)addFaces:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    v5 = [(PHAssetChangeRequest *)self _mutableFaceObjectIDsAndUUIDs];
    [v5 addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)_setSavedAssetType:(signed __int16)a3
{
  self->_didSetSavedAssetType = 1;
  self->_savedAssetType = a3;
  [(PHChangeRequest *)self didMutate];
}

- (void)resetGeneratedAssetDescriptions
{
  [(PHChangeRequest *)self didMutate];
  if (self->_didSetGeneratedAssetDescriptionProperties)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1482 description:@"Attempting to set and reset generated asset description in same change request."];
  }

  self->_resetGeneratedAssetDescriptionProperties = 1;
}

- (void)setGeneratedAssetDescription:(id)a3 analysisVersion:(int64_t)a4 sourceType:(int64_t)a5
{
  v21[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1466 description:{@"Invalid parameter not satisfying: %@", @"description"}];
  }

  if (a4 <= 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1467 description:{@"Invalid parameter not satisfying: %@", @"version > 0"}];
  }

  if (a5 >= 3)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1468 description:{@"Invalid parameter not satisfying: %@", @"sourceType >= 0 && sourceType <= PHGeneratedAssetDescriptionSourceTypeMovie"}];
  }

  if (self->_resetGeneratedAssetDescriptionProperties)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1469 description:@"Attempting to set and reset generated asset description in same change request."];
  }

  [(PHChangeRequest *)self didMutate];
  if (!self->_generatedAssetDescriptionDictionaries)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    generatedAssetDescriptionDictionaries = self->_generatedAssetDescriptionDictionaries;
    self->_generatedAssetDescriptionDictionaries = v10;
  }

  v20[0] = @"descriptionText";
  v20[1] = @"analysisVersion";
  v21[0] = v9;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v21[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v14 = self->_generatedAssetDescriptionDictionaries;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];

  self->_didSetGeneratedAssetDescriptionProperties = 1;
}

- (void)setAlternateImportImageDate:(id)a3
{
  v4 = a3;
  [(PHChangeRequest *)self didMutate];
  alternateImportImageDate = self->_alternateImportImageDate;
  self->_alternateImportImageDate = v4;
}

- (void)_validateObjectSaliencyRects:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        MEMORY[0x19EAF15F0](*(*(&v16 + 1) + 8 * i));
        if ((PLCGRectIsNormalized() & 1) == 0)
        {
          v9 = MEMORY[0x1E695DF30];
          v10 = *MEMORY[0x1E695D940];
          v11 = MEMORY[0x1E696AEC0];
          v12 = NSStringFromSelector(a2);
          v13 = [v11 stringWithFormat:@"Invalid CGRect passed to %@, rect must be non-zero normalized or CGRectNull", v12];
          v14 = [v9 exceptionWithName:v10 reason:v13 userInfo:0];
          v15 = v14;

          objc_exception_throw(v14);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)setObjectSaliencyRects:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(PHChangeRequest *)self didMutate];
  self->_didSetObjectSaliencyRectsData = 1;
  if ([v6 count] <= 3 && objc_msgSend(v6, "count"))
  {
    [(PHAssetChangeRequest *)self _validateObjectSaliencyRects:v6];
    objc_storeStrong(&self->_objectSaliencyRects, a3);
    v18 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v18];
    v8 = v18;
    objectSaliencyRectsData = self->_objectSaliencyRectsData;
    self->_objectSaliencyRectsData = v7;

    if (!self->_objectSaliencyRectsData)
    {
      v10 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "Failed to archive objectSaliencyRects, error: %@", buf, 0xCu);
      }
    }
  }

  else if ([v6 count] >= 4)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = MEMORY[0x1E696AEC0];
    v14 = NSStringFromSelector(a2);
    v15 = [v13 stringWithFormat:@"Invalid CGRect passed to %@, rect must be non-zero normalized or CGRectNull", v14];
    v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
    v17 = v16;

    objc_exception_throw(v16);
  }
}

- (void)setShiftedLocation:(id)a3
{
  v4 = a3;
  [(PHChangeRequest *)self didMutate];
  self->_didSetShiftedLocation = 1;
  shiftedLocation = self->_shiftedLocation;
  self->_shiftedLocation = v4;
}

- (void)setReverseLocationDataIsValid:(BOOL)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didSetReverseLocationDataIsValid = 1;
  self->_reverseLocationDataIsValid = a3;
}

- (void)setReverseLocationData:(id)a3
{
  v4 = a3;
  [(PHChangeRequest *)self didMutate];
  self->_didSetReverseLocationData = 1;
  reverseLocationData = self->_reverseLocationData;
  self->_reverseLocationData = v4;
}

- (void)setDuplicateMatchingData:(id)a3 duplicateMatchingAlternateData:(id)a4 processingSucceeded:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  [(PHChangeRequest *)self didMutate];
  self->_didSetDuplicateMatchingData = 1;
  duplicateMatchingData = self->_duplicateMatchingData;
  self->_duplicateMatchingData = v8;
  v11 = v8;

  duplicateMatchingAlternateData = self->_duplicateMatchingAlternateData;
  self->_duplicateMatchingAlternateData = v9;

  self->_duplicateProcessingSucceeded = a5;
}

- (void)setSceneprintData:(id)a3
{
  v4 = a3;
  [(PHChangeRequest *)self didMutate];
  self->_didSetSceneprintData = 1;
  sceneprintData = self->_sceneprintData;
  self->_sceneprintData = v4;
}

- (void)setRectWithNormalizedRect:(CGRect)a3 forPackedRect:(int64_t *)a4 forSetFlag:(BOOL *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsNull(a3))
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  if (!PLCGRectIsNormalized())
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = MEMORY[0x1E696AEC0];
    v16 = NSStringFromSelector(a2);
    v17 = [v15 stringWithFormat:@"Invalid CGRect passed to %@, rect must be non-zero normalized or CGRectNull", v16];
    v18 = [v13 exceptionWithName:v14 reason:v17 userInfo:0];
    v19 = v18;

    objc_exception_throw(v18);
  }

  *a4 = MEMORY[0x19EAF2080](x, y, width, height);
  *a5 = 1;

  [(PHChangeRequest *)self didMutate];
}

- (void)setAcceptableCropRectWithNormalizedRect:(CGRect)a3
{
  v5 = 0;
  v4 = 0;
  [(PHAssetChangeRequest *)self setRectWithNormalizedRect:&v5 forPackedRect:&v4 forSetFlag:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  self->_packedAcceptableCropRect = v5;
  self->_didSetPackedAcceptableCropRect = v4;
}

- (void)setPreferredCropRectWithNormalizedRect:(CGRect)a3
{
  v5 = 0;
  v4 = 0;
  [(PHAssetChangeRequest *)self setRectWithNormalizedRect:&v5 forPackedRect:&v4 forSetFlag:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  self->_packedPreferredCropRect = v5;
  self->_didSetPackedPreferredCropRect = v4;
}

- (void)setPhotoIrisVisibilityState:(unsigned __int16)a3
{
  self->_photoIrisVisibilityState = a3;
  self->_didSetVisibilityState = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setVideoEmbeddingVersion:(signed __int16)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  self->_videoEmbeddingVersion = a3;
  self->_didSetVideoEmbeddingVersion = 1;
  [(PHChangeRequest *)self didMutate];
  v5 = PLAssetAnalysisGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(PHChangeRequest *)self uuid];
    v7 = 138412546;
    v8 = v6;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "Set video embedding version - uuid: %@, version: %d", &v7, 0x12u);
  }
}

- (void)setImageEmbeddingVersion:(signed __int16)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  self->_imageEmbeddingVersion = a3;
  self->_didSetImageEmbeddingVersion = 1;
  [(PHChangeRequest *)self didMutate];
  v5 = PLAssetAnalysisGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(PHChangeRequest *)self uuid];
    v7 = 138412546;
    v8 = v6;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "Set image embedding version - uuid: %@, version: %d", &v7, 0x12u);
  }
}

- (void)setSceneClassifications:(id)a3 ofType:(int64_t)a4 version:(signed __int16)a5 timestamp:(id)a6
{
  v21 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  sceneClassificationDictionariesByType = self->_sceneClassificationDictionariesByType;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v13 = [(NSMutableDictionary *)sceneClassificationDictionariesByType objectForKeyedSubscript:v12];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisLocationVersion"];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (v15)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1338 description:@"Attempting to set normal and location analysis scene classifications in same change request."];
  }

  [(PHAssetChangeRequest *)self _setSceneClassifications:v9 ofType:a4 timestamp:v10, a2];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisVersion"];
  [(PHAssetChangeRequest *)self _addVersion:v21 withKey:v16 andType:a4 toDictionary:self->_sceneClassificationDictionariesByType];

  [(PHChangeRequest *)self didMutate];
  self->_didSetSceneClassifications = 1;
  v17 = PLAssetAnalysisGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(PHChangeRequest *)self uuid];
    *buf = 138412546;
    v23 = v18;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "Set scene classifications - uuid: %@, adjustment timestamp: %@", buf, 0x16u);
  }
}

- (void)setLocationBasedSceneClassifications:(id)a3 ofType:(int64_t)a4 version:(signed __int16)a5 timestamp:(id)a6
{
  v21 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  sceneClassificationDictionariesByType = self->_sceneClassificationDictionariesByType;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v13 = [(NSMutableDictionary *)sceneClassificationDictionariesByType objectForKeyedSubscript:v12];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisVersion"];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (v15)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1329 description:@"Attempting to set normal and location analysis scene classifications in same change request."];
  }

  [(PHAssetChangeRequest *)self _setSceneClassifications:v9 ofType:a4 timestamp:v10, a2];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisLocationVersion"];
  [(PHAssetChangeRequest *)self _addVersion:v21 withKey:v16 andType:a4 toDictionary:self->_sceneClassificationDictionariesByType];

  [(PHChangeRequest *)self didMutate];
  self->_didSetSceneClassifications = 1;
  v17 = PLAssetAnalysisGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(PHChangeRequest *)self uuid];
    *buf = 138412546;
    v23 = v18;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "Set scene classifications - uuid: %@, adjustment timestamp: %@", buf, 0x16u);
  }
}

- (void)_addVersion:(signed __int16)a3 withKey:(id)a4 andType:(int64_t)a5 toDictionary:(id)a6
{
  v8 = a3;
  v9 = MEMORY[0x1E696AD98];
  v10 = a6;
  v11 = a4;
  v12 = [v9 numberWithInteger:a5];
  v13 = [v10 objectForKeyedSubscript:v12];
  v16 = [v13 mutableCopy];

  v14 = [MEMORY[0x1E696AD98] numberWithShort:v8];
  [v16 setObject:v14 forKeyedSubscript:v11];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [v10 setObject:v16 forKeyedSubscript:v15];
}

- (void)_setSceneClassifications:(id)a3 ofType:(int64_t)a4 timestamp:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"adjustmentVersion must be a valid NSDate on iOS" userInfo:0];
      objc_exception_throw(v33);
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        if ([v15 classificationType] != a4)
        {
          v28 = MEMORY[0x1E695DF30];
          v29 = *MEMORY[0x1E695D930];
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: Classification type (%ld) does not match expected type (%ld). PHSceneClassification.type should equal expected type in 'ofType' parameter.", "-[PHAssetChangeRequest _setSceneClassifications:ofType:timestamp:]", objc_msgSend(v15, "classificationType"), a4];
          v31 = [v28 exceptionWithName:v29 reason:v30 userInfo:0];
          v32 = v31;

          objc_exception_throw(v31);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v12);
  }

  if (!self->_sceneClassificationDictionariesByType)
  {
    v16 = [MEMORY[0x1E695DF90] dictionary];
    sceneClassificationDictionariesByType = self->_sceneClassificationDictionariesByType;
    self->_sceneClassificationDictionariesByType = v16;
  }

  v34 = self;
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneClassifications"];
  v43[0] = v18;
  v19 = [v10 count];
  if (v19)
  {
    v20 = [v10 valueForKey:@"dictionaryRepresentation"];
  }

  else
  {
    v20 = MEMORY[0x1E695E0F0];
  }

  v44[0] = v20;
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisTimestamp"];
  v43[1] = v21;
  v22 = v9;
  if (!v9)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v44[1] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v24 = v34->_sceneClassificationDictionariesByType;
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)v24 setObject:v23 forKeyedSubscript:v25];

  if (!v9)
  {
  }

  if (v19)
  {
  }

  v34->_didSetSceneClassifications = 1;
  v26 = PLAssetAnalysisGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = [(PHChangeRequest *)v34 uuid];
    *buf = 138412546;
    v40 = v27;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEBUG, "Set scene classifications - uuid: %@, adjustment timestamp: %@", buf, 0x16u);
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  [(PHChangeRequest *)self didMutate];
  self->_didSetTitle = 1;
  v5 = [v4 copy];

  title = self->_title;
  self->_title = v5;
}

- (void)setAccessibilityDescription:(id)a3
{
  v4 = a3;
  [(PHChangeRequest *)self didMutate];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1F0FC60C8;
  }

  v6 = [(__CFString *)v5 copy];

  accessibilityDescription = self->_accessibilityDescription;
  self->_accessibilityDescription = v6;
}

- (void)setAssetDescription:(id)a3
{
  v4 = a3;
  [(PHChangeRequest *)self didMutate];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1F0FC60C8;
  }

  v6 = [(__CFString *)v5 copy];

  assetDescription = self->_assetDescription;
  self->_assetDescription = v6;
}

- (void)setLowLight:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"lowLight"];
}

- (float)lowLight
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"lowLight"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setPleasantCameraTiltScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"pleasantCameraTiltScore"];
}

- (float)pleasantCameraTiltScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"pleasantCameraTiltScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setIntrusiveObjectPresenceScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"intrusiveObjectPresenceScore"];
}

- (float)intrusiveObjectPresenceScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"intrusiveObjectPresenceScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setInterestingSubjectScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"interestingSubjectScore"];
}

- (float)interestingSubjectScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"interestingSubjectScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setPleasantCompositionScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"pleasantCompositionScore"];
}

- (float)pleasantCompositionScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"pleasantCompositionScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setFailureScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"failureScore"];
}

- (float)failureScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"failureScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setNoiseScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"noiseScore"];
}

- (float)noiseScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"noiseScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setPleasantPostProcessingScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"pleasantPostProcessingScore"];
}

- (float)pleasantPostProcessingScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"pleasantPostProcessingScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setPleasantPerspectiveScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"pleasantPerspectiveScore"];
}

- (float)pleasantPerspectiveScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"pleasantPerspectiveScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setImmersivenessScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"immersivenessScore"];
}

- (float)immersivenessScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"immersivenessScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setPleasantPatternScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"pleasantPatternScore"];
}

- (float)pleasantPatternScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"pleasantPatternScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setPleasantSymmetryScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"pleasantSymmetryScore"];
}

- (float)pleasantSymmetryScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"pleasantSymmetryScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setLivelyColorScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"livelyColorScore"];
}

- (float)livelyColorScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"livelyColorScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setHarmoniousColorScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"harmoniousColorScore"];
}

- (float)harmoniousColorScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"harmoniousColorScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setPleasantReflectionsScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"pleasantReflectionsScore"];
}

- (float)pleasantReflectionsScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"pleasantReflectionsScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setPleasantLightingScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"pleasantLightingScore"];
}

- (float)pleasantLightingScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"pleasantLightingScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setWellTimedShotScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"wellTimedShotScore"];
}

- (float)wellTimedShotScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"wellTimedShotScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setSharplyFocusedSubjectScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"sharplyFocusedSubjectScore"];
}

- (float)sharplyFocusedSubjectScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"sharplyFocusedSubjectScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setTastefullyBlurredScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"tastefullyBlurredScore"];
}

- (float)tastefullyBlurredScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"tastefullyBlurredScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setWellChosenSubjectScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"wellChosenSubjectScore"];
}

- (float)wellChosenSubjectScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"wellChosenSubjectScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setWellFramedSubjectScore:(float)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [(NSMutableDictionary *)self->_computedAttributeMutations setObject:v8 forKeyedSubscript:@"wellFramedSubjectScore"];
}

- (float)wellFramedSubjectScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(NSMutableDictionary *)self->_computedAttributeMutations objectForKey:@"wellFramedSubjectScore"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setPtpTrashedState:(int64_t)a3
{
  [(PHChangeRequest *)self didMutate];
  self->_ptpTrashedState = a3;
  self->_didSetPtpTrashedState = 1;
}

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  title = self->_title;

  return title;
}

- (NSString)accessibilityDescription
{
  +[PHPhotoLibrary assertTransaction];
  accessibilityDescription = self->_accessibilityDescription;

  return accessibilityDescription;
}

- (NSString)assetDescription
{
  +[PHPhotoLibrary assertTransaction];
  assetDescription = self->_assetDescription;

  return assetDescription;
}

- (void)setGpsHorizontalAccuracy:(double)a3
{
  self->_gpsHorizontalAccuracy = a3;
  self->_didSetGpsHorizontalAccuracy = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setLocation:(CLLocation *)location
{
  obj = location;
  [(PHChangeRequest *)self didMutate];
  v4 = obj;
  if (!obj)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  objc_storeStrong(&self->_updatedLocation, v4);
  v5 = obj;
  if (!obj)
  {

    v5 = 0;
  }
}

- (CLLocation)location
{
  +[PHPhotoLibrary assertTransaction];
  v3 = self->_updatedLocation;
  v4 = [MEMORY[0x1E695DFB0] null];
  v5 = [(CLLocation *)v3 isEqual:v4];

  if (v5)
  {

    v3 = 0;
  }

  return v3;
}

- (void)setGenerativeMemoryCreationEligibilityState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"generativeMemoryCreationEligibilityState"];
}

- (signed)generativeMemoryCreationEligibilityState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"generativeMemoryCreationEligibilityState"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setIconicScore:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"iconicScore"];
}

- (double)iconicScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"iconicScore"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setOverallAestheticScore:(float)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  *&v6 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v7 = [(PHChangeRequest *)self helper];
  v8 = [v7 mutations];
  [v8 setObject:v9 forKeyedSubscript:@"overallAestheticScore"];
}

- (float)overallAestheticScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"overallAestheticScore"];

  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (void)setHighlightPromotionScore:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"highlightPromotionScore"];
}

- (double)highlightPromotionScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"highlightPromotionScore"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setHighlightVisibilityScore:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"highlightVisibilityScore"];
}

- (double)highlightVisibilityScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"highlightVisibilityScore"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setCurationScore:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"curationScore"];
}

- (double)curationScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"curationScore"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setHidden:(BOOL)hidden
{
  v3 = hidden;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"hidden"];
}

- (BOOL)isHidden
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"hidden"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setFavorite:(BOOL)favorite
{
  v3 = favorite;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"favorite"];
}

- (BOOL)isFavorite
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"favorite"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setAddedDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"addedDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"addedDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"addedDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"addedDate"];
  }
}

- (NSDate)addedDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"addedDate"];

  return v5;
}

- (void)setModificationDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"modificationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"modificationDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"modificationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"modificationDate"];
  }
}

- (NSDate)modificationDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"modificationDate"];

  return v5;
}

- (void)setCreationDate:(NSDate *)creationDate
{
  v10 = creationDate;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"dateCreated"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"dateCreated"];
  }

  else
  {
    [v6 removeObjectForKey:@"dateCreated"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"dateCreated"];
  }
}

- (NSDate)creationDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"dateCreated"];

  return v5;
}

- (BOOL)prepareForPhotoLibraryCheck:(id)a3 error:(id *)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 type] && objc_msgSend(v5, "type") != 1)
  {
    if (a4)
    {
      v6 = MEMORY[0x1E696ABC0];
      v9 = *MEMORY[0x1E696A578];
      v10[0] = @"Change must be performed within the sharedPhotoLibrary or sharedMomentSharePhotoLibrary";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      *a4 = [v6 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v7];

      LOBYTE(a4) = 0;
    }
  }

  else
  {
    LOBYTE(a4) = 1;
  }

  return a4;
}

- (PHAssetChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v273 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:self request:v9 clientAuthorization:v10];
  if (!v11 || (self = [(PHAssetChangeRequest *)self initWithHelper:v11], self, !self))
  {

    v22 = 0;
    goto LABEL_227;
  }

  v262 = v11;
  v12 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"detectedFaces" xpcDict:v8 changeRequestHelper:self->super._helper];
  facesHelper = self->_facesHelper;
  self->_facesHelper = v12;

  v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"temporalDetectedFaces" xpcDict:v8 changeRequestHelper:self->super._helper];
  temporalFacesHelper = self->_temporalFacesHelper;
  self->_temporalFacesHelper = v14;

  v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keywords" xpcDict:v8 changeRequestHelper:self->super._helper];
  keywordsHelper = self->_keywordsHelper;
  self->_keywordsHelper = v16;

  v18 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"cloudComments" xpcDict:v8 changeRequestHelper:self->super._helper];
  commentsHelper = self->_commentsHelper;
  self->_commentsHelper = v18;

  v20 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"likeComments" xpcDict:v8 changeRequestHelper:self->super._helper];
  likesHelper = self->_likesHelper;
  self->_likesHelper = v20;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PHAssetChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke;
  aBlock[3] = &unk_1E75AAEB0;
  v22 = self;
  v270 = v22;
  v263 = v9;
  v271 = v9;
  v23 = _Block_copy(aBlock);
  v22->_clientProcessIdentifier = [v10 clientProcessIdentifier];
  v265 = [v10 photoKitEntitled];
  v264 = v10;
  if (xpc_dictionary_get_BOOL(v8, "didChangeAdjustments"))
  {
    [(PHAssetChangeRequest *)v22 markDidChangeAdjustments];
    v24 = PLDataFromXPCDictionary();
    if (v24)
    {
      v268 = 0;
      v25 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v24 error:&v268];
      v26 = v268;
      if (!v25)
      {
        v27 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = v26;
          _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_DEFAULT, "Failed to unarchive contentEditingOutputData, error: %@", &buf, 0xCu);
        }

        v10 = v264;
      }
    }

    else
    {
      v25 = 0;
    }

    [(PHAssetChangeRequest *)v22 setContentEditingOutput:v25];
    if (v265)
    {
      v28 = PLURLFromXPCDictionary();
      editorBundleURL = v22->_editorBundleURL;
      v22->_editorBundleURL = v28;

      if (v22->_editorBundleURL)
      {
        v30 = [MEMORY[0x1E696AAE8] bundleWithURL:?];
        v31 = [v30 bundleIdentifier];
        editorBundleID = v22->_editorBundleID;
        v22->_editorBundleID = v31;
      }

      if (!v22->_editorBundleID)
      {
        v33 = PLStringFromXPCDictionary();
        v34 = v22->_editorBundleID;
        v22->_editorBundleID = v33;
      }
    }

    if (!v22->_editorBundleID)
    {
      v35 = [v10 trustedCallerBundleID];
      v36 = v22->_editorBundleID;
      v22->_editorBundleID = v35;
    }
  }

  if ([(PHAssetChangeRequest *)v22 didChangeAdjustments])
  {
    v23[2](v23);
  }

  v22->_originalResourceChoice = xpc_dictionary_get_uint64(v8, "originalResourceChoice");
  v37 = xpc_dictionary_get_BOOL(v8, "didSetOriginalResourceChoice");
  v22->_didSetOriginalResourceChoice = v37;
  if (v37)
  {
    v23[2](v23);
  }

  v38 = xpc_dictionary_get_BOOL(v8, "didRevertLocationToOriginal");
  v22->_didRevertLocationToOriginal = v38;
  if (v38)
  {
    v23[2](v23);
  }

  v39 = xpc_dictionary_get_BOOL(v8, "didUpdateExtendedAttributesUsingOriginalMediaMetadata");
  v22->_didUpdateExtendedAttributesUsingOriginalMediaMetadata = v39;
  if (v39)
  {
    v23[2](v23);
  }

  v40 = xpc_dictionary_get_BOOL(v8, "didExpungeAllSpatialOverCaptureResources");
  v22->_didExpungeAllSpatialOverCaptureResources = v40;
  if (v40)
  {
    v23[2](v23);
  }

  v41 = xpc_dictionary_get_BOOL(v8, "didTrashAllSpatialOverCaptureResources");
  v22->_didTrashAllSpatialOverCaptureResources = v41;
  if (v41)
  {
    v23[2](v23);
  }

  v42 = xpc_dictionary_get_BOOL(v8, "didUntrashAllSpatialOverCaptureResources");
  v22->_didUntrashAllSpatialOverCaptureResources = v42;
  if (v42)
  {
    v23[2](v23);
  }

  v43 = xpc_dictionary_get_BOOL(v8, "didExpungeTrashedSpatialOverCaptureResources");
  v22->_didExpungeTrashedSpatialOverCaptureResources = v43;
  if (v43)
  {
    v23[2](v23);
  }

  v44 = xpc_dictionary_get_BOOL(v8, "didPromoteToGuestAsset");
  v22->_didPromoteToGuestAsset = v44;
  if (v44)
  {
    v23[2](v23);
  }

  v45 = xpc_dictionary_get_BOOL(v8, "didResetGuestAssetPromotion");
  v22->_didResetGuestAssetPromotion = v45;
  if (v45)
  {
    v23[2](v23);
  }

  v46 = PLDataFromXPCDictionary();
  if (v46)
  {
    v47 = MEMORY[0x1E696ACD0];
    v48 = MEMORY[0x1E695DFD8];
    v49 = objc_opt_class();
    v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
    v267 = 0;
    v51 = [v47 unarchivedObjectOfClasses:v50 fromData:v46 error:&v267];
    v52 = v267;
    updatedLocation = v22->_updatedLocation;
    v22->_updatedLocation = v51;

    if (v22->_updatedLocation)
    {
      v23[2](v23);
    }

    else
    {
      v54 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.start.value) = 138412290;
        *(&buf.start.value + 4) = v52;
        _os_log_impl(&dword_19C86F000, v54, OS_LOG_TYPE_DEFAULT, "Failed to unarchive locationData, error: %@", &buf, 0xCu);
      }
    }
  }

  v55 = PLStringFromXPCDictionary();
  assetDescription = v22->_assetDescription;
  v22->_assetDescription = v55;

  if (v22->_assetDescription)
  {
    v23[2](v23);
  }

  v57 = PLStringFromXPCDictionary();
  accessibilityDescription = v22->_accessibilityDescription;
  v22->_accessibilityDescription = v57;

  if (v22->_accessibilityDescription)
  {
    v23[2](v23);
  }

  v59 = xpc_dictionary_get_BOOL(v8, "didSetTitle");
  v22->_didSetTitle = v59;
  if (v59)
  {
    v60 = PLStringFromXPCDictionary();
    title = v22->_title;
    v22->_title = v60;

    v23[2](v23);
  }

  v62 = xpc_dictionary_get_BOOL(v8, "didSetKeywordTitles");
  v22->_didSetKeywordTitles = v62;
  if (v62)
  {
    v63 = PLArrayFromXPCDictionary();
    v64 = [MEMORY[0x1E695DFD8] setWithArray:v63];
    keywordTitles = v22->_keywordTitles;
    v22->_keywordTitles = v64;

    v23[2](v23);
  }

  v66 = PLURLFromXPCDictionary();
  videoURLForUpdate = v22->_videoURLForUpdate;
  v22->_videoURLForUpdate = v66;

  v68 = PLStringFromXPCDictionary();
  pairingIdentifier = v22->_pairingIdentifier;
  v22->_pairingIdentifier = v68;

  v70 = PLDictionaryFromXPCDictionary();
  p_videoDuration = &v22->_videoDuration;
  if (v70)
  {
    CMTimeMakeFromDictionary(&buf.start, v70);
    v72 = *&buf.start.value;
    v22->_videoDuration.epoch = buf.start.epoch;
    *&p_videoDuration->value = v72;
  }

  else
  {
    v73 = MEMORY[0x1E6960C70];
    *&p_videoDuration->value = *MEMORY[0x1E6960C70];
    v22->_videoDuration.epoch = *(v73 + 16);
  }

  v74 = PLDictionaryFromXPCDictionary();
  p_imageDisplayTime = &v22->_imageDisplayTime;
  if (v74)
  {
    CMTimeMakeFromDictionary(&buf.start, v74);
    v76 = *&buf.start.value;
    v22->_imageDisplayTime.epoch = buf.start.epoch;
    *&p_imageDisplayTime->value = v76;
  }

  else
  {
    v77 = MEMORY[0x1E6960C70];
    *&p_imageDisplayTime->value = *MEMORY[0x1E6960C70];
    v22->_imageDisplayTime.epoch = *(v77 + 16);
  }

  if (v22->_videoURLForUpdate && v22->_pairingIdentifier)
  {
    v23[2](v23);
  }

  v22->_photoIrisVisibilityState = xpc_dictionary_get_uint64(v8, "photoIrisVisibilityState");
  v78 = xpc_dictionary_get_BOOL(v8, "didSetVisibilityState");
  v22->_didSetVisibilityState = v78;
  if (v78)
  {
    v23[2](v23);
  }

  v79 = PLDictionaryFromXPCDictionary();
  v80 = v79;
  if (v79)
  {
    v81 = [v79 mutableCopy];
    sceneClassificationDictionariesByType = v22->_sceneClassificationDictionariesByType;
    v22->_sceneClassificationDictionariesByType = v81;

    v22->_didSetSceneClassifications = 1;
    v23[2](v23);
  }

  v83 = xpc_dictionary_get_BOOL(v8, "didSetImageEmbeddingVersionKey");
  v22->_didSetImageEmbeddingVersion = v83;
  if (v83)
  {
    v22->_imageEmbeddingVersion = xpc_dictionary_get_int64(v8, "imageEmbeddingVersion");
    v23[2](v23);
  }

  v260 = v80;
  v84 = xpc_dictionary_get_BOOL(v8, "didSetVideoEmbeddingVersionKey");
  v22->_didSetVideoEmbeddingVersion = v84;
  if (v84)
  {
    v22->_videoEmbeddingVersion = xpc_dictionary_get_int64(v8, "videoEmbeddingVersion");
    v23[2](v23);
  }

  v22->_incrementPlayCount = xpc_dictionary_get_BOOL(v8, "incrementPlayCount");
  v22->_incrementShareCount = xpc_dictionary_get_BOOL(v8, "incrementShareCount");
  date = xpc_dictionary_get_date(v8, "lastSharedDate");
  if (date)
  {
    v86 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:date];
    lastSharedDate = v22->_lastSharedDate;
    v22->_lastSharedDate = v86;
  }

  v88 = xpc_dictionary_get_BOOL(v8, "incrementViewCount");
  v22->_incrementViewCount = v88;
  if (v22->_incrementPlayCount || v22->_incrementShareCount || v88)
  {
    v23[2](v23);
  }

  v22->_clearLastViewedDate = xpc_dictionary_get_BOOL(v8, "clearLastViewedDate");
  v89 = xpc_dictionary_get_BOOL(v8, "clearLastSharedDate");
  v22->_clearLastSharedDate = v89;
  if (v22->_clearLastViewedDate || v89)
  {
    v23[2](v23);
  }

  v90 = xpc_dictionary_get_value(v8, "variationSuggestionStates");
  v91 = v90;
  if (v90)
  {
    v22->_didSetVariationSuggestionStates = 1;
    v22->_variationSuggestionStates = xpc_uint64_get_value(v90);
    v22->_variationSuggestionStatesMask = xpc_dictionary_get_uint64(v8, "variationSuggestionStatesMask");
    v23[2](v23);
  }

  v92 = xpc_dictionary_get_BOOL(v8, "toRetryUpload");
  v22->_toRetryUpload = v92;
  if (v92)
  {
    v23[2](v23);
  }

  v93 = xpc_dictionary_get_value(v8, "pathsToNewAssetResourcesByAssetResourceType");

  if (v93)
  {
    v94 = PLDictionaryFromXPCObject();
    pathsToNewAssetResourcesByAssetResourceType = v22->_pathsToNewAssetResourcesByAssetResourceType;
    v22->_pathsToNewAssetResourcesByAssetResourceType = v94;

    v23[2](v23);
  }

  v96 = xpc_dictionary_get_value(v8, "assetResourceTypesToDelete");

  if (v96)
  {
    v97 = MEMORY[0x1E695DFD8];
    v98 = PLArrayFromXPCObject();
    v99 = [v97 setWithArray:v98];
    assetResourceTypesToDelete = v22->_assetResourceTypesToDelete;
    v22->_assetResourceTypesToDelete = v99;

    v23[2](v23);
  }

  v101 = xpc_dictionary_get_BOOL(v8, "deleteContextualVideoThumbnails");
  v22->_deleteContextualVideoThumbnails = v101;
  if (v101)
  {
    v23[2](v23);
  }

  v102 = xpc_dictionary_get_value(v8, "libraryScopeOriginatorUUIDs");

  if (v102)
  {
    v103 = MEMORY[0x1E695DFD8];
    v104 = PLArrayFromXPCObject();
    v105 = [v103 setWithArray:v104];
    libraryScopeOriginatorUUIDs = v22->_libraryScopeOriginatorUUIDs;
    v22->_libraryScopeOriginatorUUIDs = v105;

    v23[2](v23);
  }

  v107 = xpc_dictionary_get_value(v8, "packedPreferredCropRect");

  if (v107)
  {
    v22->_didSetPackedPreferredCropRect = 1;
    v22->_packedPreferredCropRect = xpc_int64_get_value(v107);
    v23[2](v23);
  }

  v261 = v46;
  v108 = xpc_dictionary_get_value(v8, "packedAcceptableCropRect");

  if (v108)
  {
    v22->_didSetPackedAcceptableCropRect = 1;
    v22->_packedAcceptableCropRect = xpc_int64_get_value(v108);
    v23[2](v23);
  }

  v109 = xpc_dictionary_get_value(v8, "packedBestPlaybackRect");

  if (v109)
  {
    v22->_didSetPackedBestPlaybackRect = 1;
    v22->_packedBestPlaybackRect = xpc_int64_get_value(v109);
    v23[2](v23);
  }

  v110 = xpc_dictionary_get_value(v8, "computedAttributeMutations");

  if (v110)
  {
    v22->_didModifyComputedAttributes = 1;
    v111 = PLDictionaryFromXPCObject();
    v112 = [v111 mutableCopy];
    computedAttributeMutations = v22->_computedAttributeMutations;
    v22->_computedAttributeMutations = v112;

    v23[2](v23);
  }

  v114 = xpc_dictionary_get_BOOL(v8, "resetWallpaperProperties");
  v22->_resetWallpaperProperties = v114;
  if (v114)
  {
    v22->_didSetWallpaperPropertiesTimestamp = 1;
    wallpaperPropertiesTimestamp = v22->_wallpaperPropertiesTimestamp;
    v22->_wallpaperPropertiesTimestamp = 0;

    v22->_didSetWallpaperPropertiesVersion = 1;
    v22->_wallpaperPropertiesVersion = 0;
    v22->_didSetWallpaperPropertiesData = 1;
    wallpaperPropertiesData = v22->_wallpaperPropertiesData;
    v22->_wallpaperPropertiesData = 0;
LABEL_109:

    v23[2](v23);
    goto LABEL_110;
  }

  v117 = xpc_dictionary_get_value(v8, "photoAnalysisWallpaperPropertiesTimeStamp");

  if (v117)
  {
    v22->_didSetWallpaperPropertiesTimestamp = 1;
    v118 = PLDateFromXPCObject();
    v119 = v22->_wallpaperPropertiesTimestamp;
    v22->_wallpaperPropertiesTimestamp = v118;

    v23[2](v23);
  }

  v120 = xpc_dictionary_get_value(v8, "photoAnalysisWallpaperPropertiesVersion");

  if (v120)
  {
    v22->_didSetWallpaperPropertiesVersion = 1;
    v22->_wallpaperPropertiesVersion = xpc_uint64_get_value(v120);
    v23[2](v23);
  }

  v110 = xpc_dictionary_get_value(v8, "photoAnalysisWallpaperProperties");

  if (v110)
  {
    v22->_didSetWallpaperPropertiesData = 1;
    buf.start.value = 0;
    data = xpc_dictionary_get_data(v8, "photoAnalysisWallpaperProperties", &buf);
    v122 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:buf.start.value];
    wallpaperPropertiesData = v22->_wallpaperPropertiesData;
    v22->_wallpaperPropertiesData = v122;
    goto LABEL_109;
  }

LABEL_110:
  v123 = xpc_dictionary_get_value(v8, "mediaAnalysisTimeStamp");
  if (v123)
  {
    v22->_didSetMediaAnalysisTimeStamp = 1;
    v124 = PLDateFromXPCObject();
    mediaAnalysisTimeStamp = v22->_mediaAnalysisTimeStamp;
    v22->_mediaAnalysisTimeStamp = v124;

    v23[2](v23);
  }

  v126 = xpc_dictionary_get_value(v8, "mediaAnalysisVersion");

  if (v126)
  {
    v22->_didSetMediaAnalysisVersion = 1;
    v22->_mediaAnalysisVersion = xpc_uint64_get_value(v126);
    v23[2](v23);
  }

  v127 = xpc_dictionary_get_value(v8, "mediaAnalysisImageVersion");

  if (v127)
  {
    v22->_didSetMediaAnalysisImageVersion = 1;
    v22->_mediaAnalysisImageVersion = xpc_int64_get_value(v127);
    v23[2](v23);
  }

  v128 = PLDictionaryFromXPCDictionary();
  if (v128)
  {
    CMTimeMakeFromDictionary(&buf.start, v128);
    v129 = *&buf.start.value;
    v22->_bestKeyFrameTime.epoch = buf.start.epoch;
    *&v22->_bestKeyFrameTime.value = v129;
    v23[2](v23);
  }

  v130 = xpc_dictionary_get_BOOL(v8, "unsetBestKeyFrameTime");
  v22->_didUnsetBestKeyFrameTime = v130;
  if (v130)
  {
    v23[2](v23);
  }

  v131 = PLDataFromXPCDictionary();
  if (v131)
  {
    objc_storeStrong(&v22->_bestKeyFrameJPEGData, v131);
    v23[2](v23);
  }

  v132 = PLDictionaryFromXPCDictionary();
  if (v132)
  {
    objc_storeStrong(&v22->_contextualVideoThumbnailImageDataByIdentifier, v132);
    v23[2](v23);
  }

  v133 = PLDataFromXPCDictionary();
  if (v133)
  {
    objc_storeStrong(&v22->_computeSyncMediaAnalysisPayload, v133);
    v23[2](v23);
  }

  v134 = PLDictionaryFromXPCDictionary();
  if (v134)
  {
    CMTimeRangeMakeFromDictionary(&buf, v134);
    v135 = *&buf.start.value;
    v136 = *&buf.duration.timescale;
    *&v22->_bestVideoTimeRange.start.epoch = *&buf.start.epoch;
    *&v22->_bestVideoTimeRange.duration.timescale = v136;
    *&v22->_bestVideoTimeRange.start.value = v135;
    v23[2](v23);
  }

  v258 = v133;
  v137 = PLDictionaryFromXPCDictionary();
  if (v137)
  {
    CMTimeRangeMakeFromDictionary(&buf, v137);
    v138 = *&buf.start.value;
    v139 = *&buf.duration.timescale;
    *&v22->_animatedStickerTimeRange.start.epoch = *&buf.start.epoch;
    *&v22->_animatedStickerTimeRange.duration.timescale = v139;
    *&v22->_animatedStickerTimeRange.start.value = v138;
    v23[2](v23);
  }

  v140 = xpc_dictionary_get_value(v8, "blurrinessScore");

  if (v140)
  {
    v22->_didSetBlurrinessScore = 1;
    value = xpc_double_get_value(v140);
    v22->_blurrinessScore = value;
    v23[2](v23);
  }

  v142 = xpc_dictionary_get_value(v8, "exposureScore");

  if (v142)
  {
    v22->_didSetExposureScore = 1;
    v143 = xpc_double_get_value(v142);
    v22->_exposureScore = v143;
    v23[2](v23);
  }

  v144 = xpc_dictionary_get_value(v8, "audioScore");

  if (v144)
  {
    v22->_didSetAudioScore = 1;
    v145 = xpc_double_get_value(v144);
    v22->_audioScore = v145;
    v23[2](v23);
  }

  v146 = xpc_dictionary_get_value(v8, "settlingEffectScore");

  if (v146)
  {
    v22->_didSetSettlingEffectScore = 1;
    v147 = xpc_double_get_value(v146);
    v22->_settlingEffectScore = v147;
    v23[2](v23);
  }

  v148 = xpc_dictionary_get_value(v8, "wallpaperScore");

  if (v148)
  {
    v22->_didSetWallpaperScore = 1;
    v149 = xpc_double_get_value(v148);
    v22->_wallpaperScore = v149;
    v23[2](v23);
  }

  v150 = xpc_dictionary_get_value(v8, "autoplaySuggestionScore");

  if (v150)
  {
    v22->_didSetAutoplaySuggestionScore = 1;
    v151 = xpc_double_get_value(v150);
    v22->_autoplaySuggestionScore = v151;
    v23[2](v23);
  }

  v152 = xpc_dictionary_get_value(v8, "videoStickerSuggestionScore");

  if (v152)
  {
    v22->_didSetVideoStickerSuggestionScore = 1;
    v153 = xpc_double_get_value(v152);
    v22->_videoStickerSuggestionScore = v153;
    v23[2](v23);
  }

  v154 = xpc_dictionary_get_value(v8, "videoScore");

  if (v154)
  {
    v22->_didSetVideoScore = 1;
    v155 = xpc_double_get_value(v154);
    v22->_videoScore = v155;
    v23[2](v23);
  }

  v156 = xpc_dictionary_get_value(v8, "activityScore");

  if (v156)
  {
    v22->_didSetActivityScore = 1;
    v157 = xpc_double_get_value(v156);
    v22->_activityScore = v157;
    v23[2](v23);
  }

  v158 = xpc_dictionary_get_value(v8, "faceCount");

  if (v158)
  {
    v22->_didSetFaceCount = 1;
    v22->_faceCount = xpc_uint64_get_value(v158);
    v23[2](v23);
  }

  v159 = xpc_dictionary_get_value(v8, "audioClassification");

  if (v159)
  {
    v22->_didSetAudioClassification = 1;
    v22->_audioClassification = xpc_int64_get_value(v159);
    v23[2](v23);
  }

  v259 = v132;
  v160 = xpc_dictionary_get_value(v8, "probableRotationDirection");

  if (v160)
  {
    v22->_probableRotationDirection = xpc_int64_get_value(v160);
    v22->_didSetProbableRotationDirection = 1;
  }

  v161 = xpc_dictionary_get_value(v8, "probableRotationDirectionConfidence");

  if (v161)
  {
    v162 = xpc_double_get_value(v161);
    v22->_probableRotationDirectionConfidence = v162;
    v22->_didSetProbableRotationDirectionConfidence = 1;
  }

  v163 = xpc_dictionary_get_value(v8, "colorNormalizationData");

  if (v163)
  {
    v164 = PLDataFromXPCDataObject();
    colorNormalizationData = v22->_colorNormalizationData;
    v22->_colorNormalizationData = v164;
  }

  if (xpc_dictionary_get_BOOL(v8, "resetCharacterRecognitionProperties"))
  {
    v22->_resetCharacterRecognitionProperties = 1;
    v23[2](v23);
  }

  else
  {
    v166 = xpc_dictionary_get_value(v8, "characterRecognitionProperties");

    if (v166)
    {
      v22->_didSetCharacterRecognitionData = 1;
      v167 = PLDictionaryFromXPCObject();
      v168 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionData"];
      v169 = [v167 objectForKeyedSubscript:v168];
      characterRecognitionData = v22->_characterRecognitionData;
      v22->_characterRecognitionData = v169;

      v171 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"machineReadableCodeData"];
      v172 = [v167 objectForKeyedSubscript:v171];
      machineReadableCodeData = v22->_machineReadableCodeData;
      v22->_machineReadableCodeData = v172;

      v174 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionAlgorithmVersion"];
      v175 = [v167 objectForKeyedSubscript:v174];
      v22->_characterRecognitionAlgorithmVersion = [v175 integerValue];

      v176 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionAdjustmentVersion"];
      v177 = [v167 objectForKeyedSubscript:v176];
      characterRecognitionAdjustmentVersion = v22->_characterRecognitionAdjustmentVersion;
      v22->_characterRecognitionAdjustmentVersion = v177;

      v23[2](v23);
      v163 = v166;
    }

    else
    {
      v163 = 0;
    }
  }

  if (xpc_dictionary_get_BOOL(v8, "resetTextUnderstandingProperties"))
  {
    v22->_resetTextUnderstandingProperties = 1;
    v23[2](v23);
  }

  else
  {
    v179 = xpc_dictionary_get_value(v8, "textUnderstandingProperties");

    if (v179)
    {
      v22->_didSetTextUnderstandingProperties = 1;
      v180 = PLDictionaryFromXPCObject();
      v181 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textUnderstandingData"];
      v182 = [v180 objectForKeyedSubscript:v181];
      textUnderstandingData = v22->_textUnderstandingData;
      v22->_textUnderstandingData = v182;

      v184 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textUnderstandingVersion"];
      v185 = [v180 objectForKeyedSubscript:v184];
      v22->_textUnderstandingVersion = [v185 integerValue];

      v23[2](v23);
      v163 = v179;
    }

    else
    {
      v163 = 0;
    }
  }

  if (xpc_dictionary_get_BOOL(v8, "resetVisualSearchProperties"))
  {
    v22->_resetVisualSearchProperties = 1;
    v23[2](v23);
  }

  else
  {
    v186 = xpc_dictionary_get_value(v8, "visualSearchProperties");

    if (!v186)
    {
      goto LABEL_173;
    }

    v22->_didSetVisualSearchProperties = 1;
    v187 = PLDictionaryFromXPCObject();
    v188 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchData"];
    v189 = [v187 objectForKeyedSubscript:v188];
    visualSearchData = v22->_visualSearchData;
    v22->_visualSearchData = v189;

    v191 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetVisualSearchData"];
    v192 = [v187 objectForKeyedSubscript:v191];
    v22->_didSetVisualSearchData = [v192 BOOLValue];

    v193 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetStickerConfidenceScore"];
    v194 = [v187 objectForKeyedSubscript:v193];
    v22->_didSetStickerConfidenceScore = [v194 BOOLValue];

    v195 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stickerConfidenceScore"];
    v196 = [v187 objectForKeyedSubscript:v195];
    [v196 floatValue];
    v22->_stickerConfidenceScore = v197;

    v198 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchAlgorithmVersion"];
    v199 = [v187 objectForKeyedSubscript:v198];
    v22->_visualSearchAlgorithmVersion = [v199 integerValue];

    v200 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stickerConfidenceScoreAlgorithmVersion"];
    v201 = [v187 objectForKeyedSubscript:v200];
    v22->_stickerConfidenceScoreAlgorithmVersion = [v201 integerValue];

    v202 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchAdjustmentVersion"];
    v203 = [v187 objectForKeyedSubscript:v202];
    visualSearchAdjustmentVersion = v22->_visualSearchAdjustmentVersion;
    v22->_visualSearchAdjustmentVersion = v203;

    v23[2](v23);
    v163 = v186;
  }

LABEL_173:
  v205 = xpc_dictionary_get_value(v8, "compactImageSCSensitivityAnalysis");
  v206 = v205;
  if (v205)
  {
    v22->_didSetCompactImageSCSensitivityAnalysis = 1;
    v22->_compactSCSensitivityAnalysis = xpc_int64_get_value(v205);
    v23[2](v23);
  }

  v207 = xpc_dictionary_get_value(v8, "compactVideoSCSensitivityAnalysis");

  v208 = xpc_dictionary_get_value(v8, "videoSensitivityAnalysisVersion");
  v209 = v208;
  if (v207 && v208)
  {
    v22->_didSetCompactVideoSCSensitivityAnalysis = 1;
    v22->_compactSCSensitivityAnalysis = xpc_int64_get_value(v207);
    v22->_videoSensitivityAnalysisVersion = xpc_int64_get_value(v209);
    v23[2](v23);
  }

  v210 = xpc_dictionary_get_value(v8, "sceneprintData");

  if (v210)
  {
    v22->_didSetSceneprintData = 1;
    v211 = PLDataFromXPCDataObject();
    sceneprintData = v22->_sceneprintData;
    v22->_sceneprintData = v211;

    v23[2](v23);
  }

  v213 = xpc_dictionary_get_value(v8, "duplicateMatchingData");

  if (v213)
  {
    v22->_didSetDuplicateMatchingData = 1;
    v214 = PLDataFromXPCDictionary();
    duplicateMatchingData = v22->_duplicateMatchingData;
    v22->_duplicateMatchingData = v214;

    if (![(NSData *)v22->_duplicateMatchingData length])
    {
      v216 = v22->_duplicateMatchingData;
      v22->_duplicateMatchingData = 0;
    }

    v217 = PLDataFromXPCDictionary();
    duplicateMatchingAlternateData = v22->_duplicateMatchingAlternateData;
    v22->_duplicateMatchingAlternateData = v217;

    if (![(NSData *)v22->_duplicateMatchingAlternateData length])
    {
      v219 = v22->_duplicateMatchingAlternateData;
      v22->_duplicateMatchingAlternateData = 0;
    }

    v22->_duplicateProcessingSucceeded = xpc_dictionary_get_BOOL(v8, "duplicateProcessingSucceeded");
    v23[2](v23);
  }

  v220 = xpc_dictionary_get_value(v8, "reverseLocationData");

  if (v220)
  {
    v22->_didSetReverseLocationData = 1;
    v221 = PLDataFromXPCDataObject();
    reverseLocationData = v22->_reverseLocationData;
    v22->_reverseLocationData = v221;

    v23[2](v23);
  }

  v223 = xpc_dictionary_get_value(v8, "objectSaliencyRectsData");

  if (v223)
  {
    v22->_didSetObjectSaliencyRectsData = 1;
    v224 = PLDataFromXPCDataObject();
    objectSaliencyRectsData = v22->_objectSaliencyRectsData;
    v22->_objectSaliencyRectsData = v224;

    v23[2](v23);
  }

  v226 = xpc_dictionary_get_value(v8, "reverseLocationDataIsValid");

  if (v226)
  {
    v22->_didSetReverseLocationDataIsValid = 1;
    v22->_reverseLocationDataIsValid = xpc_BOOL_get_value(v226);
    v23[2](v23);
  }

  v227 = xpc_dictionary_get_value(v8, "shiftedLocation");

  if (v227)
  {
    v228 = PLDataFromXPCDataObject();
    if (v228)
    {
      v229 = MEMORY[0x1E696ACD0];
      v230 = MEMORY[0x1E695DFD8];
      v231 = objc_opt_class();
      v232 = [v230 setWithObjects:{v231, objc_opt_class(), 0}];
      v266 = 0;
      v233 = [v229 unarchivedObjectOfClasses:v232 fromData:v228 error:&v266];
      v234 = v266;
      shiftedLocation = v22->_shiftedLocation;
      v22->_shiftedLocation = v233;

      if (v22->_shiftedLocation)
      {
        v22->_didSetShiftedLocation = 1;
        v23[2](v23);
      }

      else
      {
        v237 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = v234;
          _os_log_impl(&dword_19C86F000, v237, OS_LOG_TYPE_DEFAULT, "Failed to unarchive locationData, error: %@", &buf, 0xCu);
        }
      }
    }

    else
    {
      v22->_didSetShiftedLocation = 1;
      v236 = v22->_shiftedLocation;
      v22->_shiftedLocation = 0;

      v23[2](v23);
    }
  }

  v238 = xpc_dictionary_get_value(v8, "timeZoneName");

  if (v238)
  {
    v22->_didSetTimeZone = 1;
    v239 = PLStringFromXPCDictionary();
    timeZoneName = v22->_timeZoneName;
    v22->_timeZoneName = v239;

    v22->_timeZoneOffsetValue = xpc_dictionary_get_int64(v8, "timeZoneOffsetValue");
    v23[2](v23);
  }

  v22->_clientEntitled = v265;
  v22->_gpsHorizontalAccuracy = xpc_dictionary_get_double(v8, "gpsHorizontalAccuracy");
  v22->_didSetGpsHorizontalAccuracy = 1;
  v23[2](v23);
  v241 = xpc_dictionary_get_value(v8, "screenTimeDeviceImageSensitivity");

  if (v241)
  {
    v22->_didSetScreenTimeDeviceImageSensitivity = 1;
    v22->_screenTimeDeviceImageSensitivity = xpc_int64_get_value(v241);
    v23[2](v23);
  }

  v242 = xpc_dictionary_get_value(v8, "syndicationProcessingValue");

  if (v242)
  {
    v22->_syndicationProcessingValue = xpc_uint64_get_value(v242);
    v22->_didSetSyndicationProcessingValue = 1;
    v23[2](v23);
  }

  v243 = xpc_dictionary_get_value(v8, "syndicationProcessingVersion");

  if (v243)
  {
    v22->_syndicationProcessingVersion = xpc_uint64_get_value(v243);
    v22->_didSetSyndicationProcessingVersion = 1;
    v23[2](v23);
  }

  v244 = xpc_dictionary_get_value(v8, "syndicationIdentifier");

  if (v244)
  {
    v245 = PLStringFromXPCDictionary();
    syndicationIdentifier = v22->_syndicationIdentifier;
    v22->_syndicationIdentifier = v245;

    v22->_didSetSyndicationIdentifier = 1;
    v23[2](v23);
  }

  v247 = xpc_dictionary_get_value(v8, "faceAnalysisVersion");

  if (v247)
  {
    v22->_didSetFaceAnalysisVersion = 1;
    v22->_faceAnalysisVersion = xpc_int64_get_value(v247);
    v23[2](v23);
  }

  v248 = xpc_dictionary_get_value(v8, "localAnalysisStage");

  if (v248)
  {
    v22->_didSetLocalAnalysisStage = 1;
    v22->_localAnalysisStage = xpc_int64_get_value(v248);
    v23[2](v23);
  }

  v249 = xpc_dictionary_get_value(v8, "viewPresentation");

  if (v249)
  {
    v22->_didSetViewPresentation = 1;
    v22->_viewPresentation = xpc_int64_get_value(v249);
    v23[2](v23);
  }

  v22->_resetGeneratedAssetDescriptionProperties = xpc_dictionary_get_BOOL(v8, "ResetGeneratedAssetDescriptionKey");
  v250 = xpc_dictionary_get_BOOL(v8, "DidSetGeneratedAssetDescriptionKey");
  v22->_didSetGeneratedAssetDescriptionProperties = v250;
  v10 = v264;
  if (v22->_resetGeneratedAssetDescriptionProperties)
  {
    goto LABEL_221;
  }

  if (v250)
  {
    v251 = PLDictionaryFromXPCDictionary();
    v252 = [v251 mutableCopy];
    generatedAssetDescriptionDictionaries = v22->_generatedAssetDescriptionDictionaries;
    v22->_generatedAssetDescriptionDictionaries = v252;

LABEL_221:
    v23[2](v23);
  }

  v254 = xpc_dictionary_get_value(v8, "PtpTrashedStateKey");

  if (v254)
  {
    v22->_ptpTrashedState = xpc_int64_get_value(v254);
    v22->_didSetPtpTrashedState = 1;
    v23[2](v23);
  }

  v255 = xpc_dictionary_get_value(v8, "savedAssetType");

  if (v255)
  {
    v22->_didSetSavedAssetType = 1;
    v22->_savedAssetType = xpc_int64_get_value(v255);
    v23[2](v23);
  }

  v11 = v262;
  v9 = v263;
LABEL_227:
  v256 = v22;

  return v256;
}

uint64_t __68__PHAssetChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setMutated:1];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 recordUpdateRequest:v3];
}

- (PHAssetChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PHChangeRequestHelper alloc] initWithUUID:v7 objectID:v6 changeRequest:self];

  v9 = [(PHAssetChangeRequest *)self initWithHelper:v8];
  if (v9)
  {
    v10 = [objc_opt_class() _allAssetEditOperations];
    [(PHAssetChangeRequest *)v9 setSupportedEditOperations:v10];
  }

  return v9;
}

- (PHAssetChangeRequest)initWithHelper:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"helper"}];
  }

  v22.receiver = self;
  v22.super_class = PHAssetChangeRequest;
  v7 = [(PHChangeRequest *)&v22 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->super._helper, a3);
    v9 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"detectedFaces" changeRequestHelper:v8->super._helper];
    facesHelper = v8->_facesHelper;
    v8->_facesHelper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"temporalDetectedFaces" changeRequestHelper:v8->super._helper];
    temporalFacesHelper = v8->_temporalFacesHelper;
    v8->_temporalFacesHelper = v11;

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keywords" changeRequestHelper:v8->super._helper];
    keywordsHelper = v8->_keywordsHelper;
    v8->_keywordsHelper = v13;

    v15 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"cloudComments" changeRequestHelper:v8->super._helper];
    commentsHelper = v8->_commentsHelper;
    v8->_commentsHelper = v15;

    v17 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"likeComments" changeRequestHelper:v8->super._helper];
    likesHelper = v8->_likesHelper;
    v8->_likesHelper = v17;

    v19 = [objc_opt_class() _allAssetEditOperations];
    [(PHAssetChangeRequest *)v8 setSupportedEditOperations:v19];
  }

  return v8;
}

- (PHAssetChangeRequest)init
{
  [(PHAssetChangeRequest *)self doesNotRecognizeSelector:a2];

  return [(PHAssetChangeRequest *)self initWithHelper:0];
}

+ (void)recoverAssets:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [PHObject assertAllObjects:v4 forSelector:a2 areOfType:objc_opt_class()];
  +[PHPhotoLibrary assertTransaction];
  if (recoverAssets__s_onceToken != -1)
  {
    dispatch_once(&recoverAssets__s_onceToken, &__block_literal_global_348_19687);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [MEMORY[0x1E69BF328] defaultSavedAssetTypeForUnknownFilesystemImportAssets];
        v12 = [v10 photoLibrary];
        v13 = [v12 pathManager];
        v14 = [v13 isDCIM];

        if (v14)
        {
          v15 = [v10 pathForOriginalFile];
          if ([v15 length])
          {
            v16 = MEMORY[0x1E695DFF8];
            v17 = [v15 stringByDeletingLastPathComponent];
            v18 = [v16 fileURLWithPath:v17 isDirectory:1];

            v23 = 0;
            if (v18 && [MEMORY[0x1E69BE5B8] shouldImportAssetsFromDCIMSubDirectoryAtURL:v18 assetsKind:&v23] && v23 <= 7)
            {
              if (((1 << v23) & 0x8D) != 0)
              {
                v19 = [v10 directory];
                v20 = [v19 hasPrefix:recoverAssets__s_cplAssetDirectoryPrefix];

                if (v20)
                {
                  v21 = [MEMORY[0x1E69BF328] savedAssetTypeForAssetsInCPLAssetsDirectory];
                }

                else
                {
                  v21 = [MEMORY[0x1E69BF328] defaultSavedAssetTypeForUnknownFilesystemImportAssets];
                }

LABEL_22:
                v11 = v21;
              }

              else
              {
                if (v23 == 1)
                {
                  v21 = [MEMORY[0x1E69BF328] savedAssetTypeForImportedByCameraConnectionKit];
                  goto LABEL_22;
                }

                if (v23 == 4)
                {
                  v21 = [MEMORY[0x1E69BF328] savedAssetTypeForFinderSyncedAsset];
                  goto LABEL_22;
                }
              }
            }
          }

          else
          {
            v18 = 0;
          }
        }

        v22 = [PHAssetChangeRequest changeRequestForAsset:v10];
        [v22 _setSavedAssetType:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }
}

uint64_t __38__PHAssetChangeRequest_recoverAssets___block_invoke()
{
  recoverAssets__s_cplAssetDirectoryPrefix = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"PhotoData", @"CPLAssets"];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)performBatchExpungeAndWaitWithAssets:(id)a3 deleteOptions:(id)a4 photoLibrary:(id)a5 error:(id *)a6
{
  v7 = [PHBatchAssetExpunger batchAssetExpungerWithAssets:a3 deleteOptions:a4 library:a5 topLevelSelector:a2];
  LOBYTE(a6) = [v7 performChangesAndWait:a6];

  return a6;
}

+ (void)performBatchExpungeWithAssets:(id)a3 deleteOptions:(id)a4 photoLibrary:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = [PHBatchAssetExpunger batchAssetExpungerWithAssets:a3 deleteOptions:a4 library:a5 topLevelSelector:a2];
  [v11 performChangesWithCompletionHandler:v10];
}

+ (void)_deleteAssets:(id)a3 withOperation:(int64_t)a4 topLevelSelector:(SEL)a5 deleteOptions:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  [PHObject assertAllObjects:v9 forSelector:a5 areOfType:objc_opt_class()];
  +[PHPhotoLibrary assertTransaction];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(PHTrashableObjectDeleteRequest *)PHAssetDeleteRequest deleteRequestForObject:*(*(&v17 + 1) + 8 * v15) operation:a4, v17];
        [v16 setDeleteOptions:v10];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

+ (PHAssetChangeRequest)changeRequestForAsset:(PHAsset *)asset
{
  if (asset)
  {
    v3 = asset;
    v4 = [PHChangeRequestHelper changeRequestForObject:v3];
    [v4 _setOriginalAsset:v3];

    v5 = [MEMORY[0x1E696AD50] indexSet];
    v6 = [objc_opt_class() _allAssetEditOperations];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__PHAssetChangeRequest_changeRequestForAsset___block_invoke;
    v10[3] = &unk_1E75A9568;
    v11 = v5;
    v7 = v5;
    [v6 enumerateIndexesUsingBlock:v10];

    v8 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexSet:v7];
    [v4 setSupportedEditOperations:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)changeRequestForAssetFromVideoFileURL:(id)a3 imageAsset:(id)a4 displayTime:(double)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PHAssetChangeRequest.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"videoFileURL"}];
  }

  if (([v10 isPhoto] & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PHAssetChangeRequest.m" lineNumber:445 description:@"require photo when updating to iris"];
  }

  v11 = [a1 changeRequestForAsset:v10];
  v12 = [v9 path];
  v13 = PFVideoComplementMetadataForVideoAtPath();

  v14 = [v13 pairingIdentifier];
  memset(&v22, 0, sizeof(v22));
  if ([v13 hasValidImageDisplayTime])
  {
    if (v13)
    {
      [v13 imageDisplayTime];
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
    }
  }

  else
  {
    CMTimeMakeWithSeconds(&v22, a5, 60000);
  }

  memset(&v21, 0, sizeof(v21));
  if (![v13 hasValidVideoDuration])
  {
    v21 = **&MEMORY[0x1E6960C70];
    if (v14)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v13)
  {
    [v13 videoDuration];
    if (v14)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  memset(&v21, 0, sizeof(v21));
  if (!v14)
  {
LABEL_15:
    v15 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v15 UUIDString];
  }

LABEL_16:
  [v11 setVideoURLForUpdate:v9];
  v20 = v21;
  [v11 setVideoDuration:&v20];
  v20 = v22;
  [v11 setImageDisplayTime:&v20];
  [v11 setPairingIdentifier:v14];
  v16 = [objc_opt_class() _allAssetEditOperations];
  [v11 setSupportedEditOperations:v16];

  [v11 didMutate];

  return v11;
}

@end