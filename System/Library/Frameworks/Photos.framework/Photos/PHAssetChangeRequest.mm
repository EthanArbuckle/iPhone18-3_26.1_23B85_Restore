@interface PHAssetChangeRequest
+ (BOOL)performBatchExpungeAndWaitWithAssets:(id)assets deleteOptions:(id)options photoLibrary:(id)library error:(id *)error;
+ (PHAssetChangeRequest)changeRequestForAsset:(PHAsset *)asset;
+ (id)changeRequestForAssetFromVideoFileURL:(id)l imageAsset:(id)asset displayTime:(double)time;
+ (void)_deleteAssets:(id)assets withOperation:(int64_t)operation topLevelSelector:(SEL)selector deleteOptions:(id)options;
+ (void)performBatchExpungeWithAssets:(id)assets deleteOptions:(id)options photoLibrary:(id)library completionHandler:(id)handler;
+ (void)recoverAssets:(id)assets;
- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)animatedStickerTimeRange;
- ($73DE6CFC58B34F5FFCF9CF852B54AD9C)bestVideoTimeRange;
- (BOOL)_applyCompactSCSensitivityAnalysisUpdateToAsset:(id)asset error:(id *)error;
- (BOOL)_applySensitivityAnalysisUpdateToAsset:(id)asset error:(id *)error;
- (BOOL)_validateAndGenerateStillImageForLoopingLivePhotoWithContentEditingOutput:(id)output error:(id *)error;
- (BOOL)_validateAsyncContentEditingOutputPreviewRenderURLs:(id)ls error:(id *)error;
- (BOOL)_validateImageURLForAssetMutation:(id)mutation error:(id *)error;
- (BOOL)addAssetResourceWithType:(int64_t)type fromFileAtURL:(id)l;
- (BOOL)applyMutationsToAssetRelationshipWithKey:(id)key asset:(id)asset error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)deleteAssetResourceWithType:(int64_t)type;
- (BOOL)isFavorite;
- (BOOL)isHidden;
- (BOOL)isHiding;
- (BOOL)isRevertingContentToOriginal;
- (BOOL)prepareForPhotoLibraryCheck:(id)check error:(id *)error;
- (BOOL)validateAccessibilityDescription:(id)description error:(id *)error;
- (BOOL)validateAdjustmentDataForAssetMutation:(id)mutation error:(id *)error;
- (BOOL)validateAssetDescription:(id)description error:(id *)error;
- (BOOL)validateContentEditingOutput:(id)output error:(id *)error;
- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error;
- (BOOL)validateReadAccessForContentURL:(id)l assetResource:(id)resource error:(id *)error;
- (BOOL)validateVideoURLForAssetMutation:(id)mutation error:(id *)error;
- (BOOL)validateWriteAccessForContentURL:(id)l error:(id *)error;
- (CLLocation)location;
- (NSDate)addedDate;
- (NSDate)creationDate;
- (NSDate)modificationDate;
- (NSString)accessibilityDescription;
- (NSString)assetDescription;
- (NSString)title;
- (PHAssetChangeRequest)init;
- (PHAssetChangeRequest)initWithCoder:(id)coder;
- (PHAssetChangeRequest)initWithHelper:(id)helper;
- (PHAssetChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHAssetChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
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
- (id)getPhotoAnalysisAttributesForAsset:(id)asset;
- (signed)generativeMemoryCreationEligibilityState;
- (void)_addVersion:(signed __int16)version withKey:(id)key andType:(int64_t)type toDictionary:(id)dictionary;
- (void)_prepareExistingIDsForTemporalFacesIfNeeded;
- (void)_prepareFaceIDsIfNeeded;
- (void)_prepareFacesHelperWithFetchResult:(id)result;
- (void)_setSavedAssetType:(signed __int16)type;
- (void)_setSceneClassifications:(id)classifications ofType:(int64_t)type timestamp:(id)timestamp;
- (void)_setSyndicationIdentifier:(id)identifier;
- (void)_validateObjectSaliencyRects:(id)rects;
- (void)addComments:(id)comments;
- (void)addFaces:(id)faces;
- (void)addKeywords:(id)keywords;
- (void)addLike:(id)like;
- (void)encodeToXPCDict:(id)dict;
- (void)encodeWithCoder:(id)coder;
- (void)incrementShareCount;
- (void)promoteToGuestAsset;
- (void)removeComments:(id)comments;
- (void)removeFaces:(id)faces;
- (void)removeKeywords:(id)keywords;
- (void)removeLike:(id)like;
- (void)resetCharacterRecognitionAttributes;
- (void)resetGeneratedAssetDescriptions;
- (void)resetGuestAssetPromotion;
- (void)resetTextUnderstandingAttributes;
- (void)resetVisualSearchAttributes;
- (void)resetWallpaperProperties;
- (void)revertAssetContentToOriginal;
- (void)revertLocationToOriginal;
- (void)setAcceptableCropRectWithNormalizedRect:(CGRect)rect;
- (void)setAccessibilityDescription:(id)description;
- (void)setActivityScore:(float)score;
- (void)setAddedDate:(id)date;
- (void)setAdjustmentData:(id)data withRenderedJPEGData:(id)gData orRenderedContentURL:(id)l penultimateRenderedJPEGData:(id)eGData isSubstandardRender:(BOOL)render fullSizeRenderSize:(CGSize)size renderedVideoComplementURL:(id)rL penultimateRenderedVideoComplementURL:(id)self0 optionalOriginalResourceChoice:(id)self1;
- (void)setAlternateImportImageDate:(id)date;
- (void)setAnimatedStickerTimeRange:(id *)range;
- (void)setAssetDescription:(id)description;
- (void)setAudioClassification:(signed __int16)classification;
- (void)setAudioScore:(float)score;
- (void)setAutoplaySuggestionScore:(float)score;
- (void)setBestKeyFrame:(CGImage *)frame time:(id *)time;
- (void)setBestPlaybackRectWithNormalizedRect:(CGRect)rect;
- (void)setBestVideoTimeRange:(id *)range;
- (void)setBlurrinessScore:(float)score;
- (void)setCharacterRecognitionData:(id)data machineReadableCodeData:(id)codeData algorithmVersion:(int64_t)version adjustmentVersion:(id)adjustmentVersion;
- (void)setColorNormalizationData:(id)data;
- (void)setCompactImageSCSensitivityAnalysis:(int64_t)analysis;
- (void)setCompactVideoSCSensitivityAnalysis:(int64_t)analysis;
- (void)setCompactVideoSCSensitivityAnalysis:(int64_t)analysis videoSensitivityAnalysisVersion:(signed __int16)version;
- (void)setComputeSyncMediaAnalysisPayload:(id)payload;
- (void)setContentEditingOutput:(PHContentEditingOutput *)contentEditingOutput;
- (void)setContextualVideoThumbnailImage:(CGImage *)image withIdentifier:(id)identifier;
- (void)setCreationDate:(NSDate *)creationDate;
- (void)setCurationScore:(double)score;
- (void)setDuplicateMatchingData:(id)data duplicateMatchingAlternateData:(id)alternateData processingSucceeded:(BOOL)succeeded;
- (void)setExposureScore:(float)score;
- (void)setFaceAdjustmentVersion:(id)version;
- (void)setFaceAnalysisVersion:(signed __int16)version;
- (void)setFaceCount:(unint64_t)count;
- (void)setFailureScore:(float)score;
- (void)setFavorite:(BOOL)favorite;
- (void)setGeneratedAssetDescription:(id)description analysisVersion:(int64_t)version sourceType:(int64_t)type;
- (void)setGenerativeMemoryCreationEligibilityState:(signed __int16)state;
- (void)setGpsHorizontalAccuracy:(double)accuracy;
- (void)setHarmoniousColorScore:(float)score;
- (void)setHidden:(BOOL)hidden;
- (void)setHighlightPromotionScore:(double)score;
- (void)setHighlightVisibilityScore:(double)score;
- (void)setIconicScore:(double)score;
- (void)setImageDisplayTime:(id *)time;
- (void)setImageEmbeddingVersion:(signed __int16)version;
- (void)setImmersivenessScore:(float)score;
- (void)setInterestingSubjectScore:(float)score;
- (void)setIntrusiveObjectPresenceScore:(float)score;
- (void)setKeywordTitles:(id)titles;
- (void)setLibraryScopeContributors:(id)contributors;
- (void)setLivelyColorScore:(float)score;
- (void)setLocalAnalysisStage:(signed __int16)stage;
- (void)setLocation:(CLLocation *)location;
- (void)setLocationBasedSceneClassifications:(id)classifications ofType:(int64_t)type version:(signed __int16)version timestamp:(id)timestamp;
- (void)setLowLight:(float)light;
- (void)setMediaAnalysisImageVersion:(signed __int16)version;
- (void)setMediaAnalysisTimeStamp:(id)stamp;
- (void)setMediaAnalysisVersion:(unint64_t)version;
- (void)setModificationDate:(id)date;
- (void)setNoiseScore:(float)score;
- (void)setObjectSaliencyRects:(id)rects;
- (void)setOriginalResourceChoice:(unint64_t)choice;
- (void)setOverallAestheticScore:(float)score;
- (void)setPhotoIrisVisibilityState:(unsigned __int16)state;
- (void)setPleasantCameraTiltScore:(float)score;
- (void)setPleasantCompositionScore:(float)score;
- (void)setPleasantLightingScore:(float)score;
- (void)setPleasantPatternScore:(float)score;
- (void)setPleasantPerspectiveScore:(float)score;
- (void)setPleasantPostProcessingScore:(float)score;
- (void)setPleasantReflectionsScore:(float)score;
- (void)setPleasantSymmetryScore:(float)score;
- (void)setPreferredCropRectWithNormalizedRect:(CGRect)rect;
- (void)setProbableRotationDirection:(signed __int16)direction;
- (void)setProbableRotationDirectionConfidence:(float)confidence;
- (void)setPtpTrashedState:(int64_t)state;
- (void)setRectWithNormalizedRect:(CGRect)rect forPackedRect:(int64_t *)packedRect forSetFlag:(BOOL *)flag;
- (void)setReverseLocationData:(id)data;
- (void)setReverseLocationDataIsValid:(BOOL)valid;
- (void)setSceneClassifications:(id)classifications ofType:(int64_t)type version:(signed __int16)version timestamp:(id)timestamp;
- (void)setSceneprintData:(id)data;
- (void)setScreenTimeDeviceImageSensitivity:(signed __int16)sensitivity;
- (void)setSettlingEffectScore:(float)score;
- (void)setSharplyFocusedSubjectScore:(float)score;
- (void)setShiftedLocation:(id)location;
- (void)setStickerConfidenceScore:(float)score stickerAlgorithmVersion:(int64_t)version;
- (void)setSyndicationIdentifierOnMomentSharedAsset:(id)asset;
- (void)setSyndicationProcessingValue:(unsigned __int16)value;
- (void)setSyndicationProcessingVersion:(unint64_t)version;
- (void)setTastefullyBlurredScore:(float)score;
- (void)setTemporalFaces:(id)faces;
- (void)setTextUnderstandingData:(id)data version:(int64_t)version;
- (void)setTimeZone:(id)zone withDate:(id)date;
- (void)setTitle:(id)title;
- (void)setVariationSuggestionStates:(unint64_t)states forVariationType:(unint64_t)type;
- (void)setVideoDuration:(id *)duration;
- (void)setVideoEmbeddingVersion:(signed __int16)version;
- (void)setVideoScore:(float)score;
- (void)setVideoStickerSuggestionScore:(float)score;
- (void)setViewPresentation:(signed __int16)presentation;
- (void)setVisualSearchData:(id)data algorithmVersion:(int64_t)version adjustmentVersion:(id)adjustmentVersion;
- (void)setVisualSearchData:(id)data stickerConfidenceScore:(float)score algorithmVersion:(int64_t)version adjustmentVersion:(id)adjustmentVersion;
- (void)setWallpaperPropertiesData:(id)data;
- (void)setWallpaperPropertiesTimestamp:(id)timestamp;
- (void)setWallpaperPropertiesVersion:(unint64_t)version;
- (void)setWallpaperScore:(float)score;
- (void)setWellChosenSubjectScore:(float)score;
- (void)setWellFramedSubjectScore:(float)score;
- (void)setWellTimedShotScore:(float)score;
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

- (void)setImageDisplayTime:(id *)time
{
  var3 = time->var3;
  *&self->_imageDisplayTime.value = *&time->var0;
  self->_imageDisplayTime.epoch = var3;
}

- (void)setVideoDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->_videoDuration.value = *&duration->var0;
  self->_videoDuration.epoch = var3;
}

- (BOOL)applyMutationsToAssetRelationshipWithKey:(id)key asset:(id)asset error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  assetCopy = asset;
  if ([keyCopy isEqualToString:@"cloudComments"])
  {
    v10 = &OBJC_IVAR___PHAssetChangeRequest__commentsHelper;
  }

  else
  {
    if (![keyCopy isEqualToString:@"likeComments"])
    {
      v42 = 0;
      v43 = 0;
      v11 = 0;
      if (!error)
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
    if (!error)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v12 = v11;
  errorCopy = error;
  [v11 setAllowsInsert:1];
  [v12 setAllowsRemove:1];
  entityName = [MEMORY[0x1E69BE340] entityName];
  [v12 setDestinationEntityName:entityName];

  [v12 setDestinationUUIDKeyPath:@"cloudGUID"];
  v14 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  v15 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  v51 = keyCopy;
  [assetCopy mutableSetValueForKey:keyCopy];
  v63 = v15;
  v64 = v14;
  v62 = 0;
  v47 = v49 = v12;
  v48 = [v12 applyMutationsToManagedObject:assetCopy unorderedMutableChildren:? inserts:? deletes:? error:?];
  v16 = v64;

  v45 = v63;
  v46 = v62;
  collectionShare = [assetCopy collectionShare];
  currentUserParticipant = [collectionShare currentUserParticipant];

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
        [assetCopy addComment:v22];
        isMyComment = [v22 isMyComment];

        if (isMyComment)
        {
          [v22 setShareParticipant:currentUserParticipant];
        }

        v24 = MEMORY[0x1E69BE358];
        collectionShare2 = [assetCopy collectionShare];
        collectionShareKind = [collectionShare2 collectionShareKind];
        photoLibrary = [assetCopy photoLibrary];
        v28 = [v24 syncBackendForKind:collectionShareKind photoLibrary:photoLibrary];

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
        collectionShare3 = [assetCopy collectionShare];
        collectionShareKind2 = [collectionShare3 collectionShareKind];
        photoLibrary2 = [assetCopy photoLibrary];
        v39 = [v35 syncBackendForKind:collectionShareKind2 photoLibrary:photoLibrary2];

        if (v39)
        {
          cloudGUID = [v34 cloudGUID];

          if (cloudGUID)
          {
            cloudGUID2 = [v34 cloudGUID];
            [v39 deleteCommentWithGUIDFromServer:cloudGUID2];
          }
        }

        [assetCopy deleteComment:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v31);
  }

  error = errorCopy;
  keyCopy = v51;
  v42 = v49;
  v43 = v48;
  v11 = v46;
  if (errorCopy)
  {
LABEL_32:
    if (!v43)
    {
      v11 = v11;
      *error = v11;
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

  contentEditingOutput = [(PHAssetChangeRequest *)self contentEditingOutput];
  v4 = contentEditingOutput == 0;

  return v4;
}

- (BOOL)isHiding
{
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v4 = [mutations objectForKey:@"hidden"];

  LOBYTE(helper) = [v4 BOOLValue];
  return helper;
}

- (BOOL)_applySensitivityAnalysisUpdateToAsset:(id)asset error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v7 = assetCopy;
  if (self->_didSetCompactImageSCSensitivityAnalysis)
  {
    sensitivityAnalysisState = [assetCopy sensitivityAnalysisState];
    if ((sensitivityAnalysisState - 2) < 2)
    {
      v15 = 1;
      goto LABEL_20;
    }

    if (sensitivityAnalysisState == 4 || !sensitivityAnalysisState)
    {
      [v7 setSensitivityAnalysisState:1];
    }

    goto LABEL_18;
  }

  if ([assetCopy hasVideoComponent])
  {
    if (!self->_didSetCompactVideoSCSensitivityAnalysis)
    {
LABEL_18:
      v15 = [(PHAssetChangeRequest *)self _applyCompactSCSensitivityAnalysisUpdateToAsset:v7 error:error];
      goto LABEL_20;
    }

    v9 = [(PHAssetChangeRequest *)self getMediaAnalysisAttributesForAsset:v7];
    [v9 setVideoSensitivityAnalysisVersion:self->_videoSensitivityAnalysisVersion];
    sensitivityAnalysisState2 = [v7 sensitivityAnalysisState];
    v11 = 2;
    if (sensitivityAnalysisState2 && sensitivityAnalysisState2 != 4)
    {
      if (sensitivityAnalysisState2 != 1)
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
  if (error)
  {
    v14 = v14;
    *error = v14;
  }

  v15 = 0;
LABEL_20:

  return v15;
}

- (BOOL)_applyCompactSCSensitivityAnalysisUpdateToAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  if ([assetCopy compactSCSensitivityAnalysis])
  {
    v7 = [objc_alloc(getSCSensitivityAnalysisClass_19241()) initFromCompactAnalysis:objc_msgSend(assetCopy error:{"compactSCSensitivityAnalysis"), error}];
    v8 = [objc_alloc(getSCSensitivityAnalysisClass_19241()) initFromCompactAnalysis:self->_compactSCSensitivityAnalysis error:error];
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

  [assetCopy setCompactSCSensitivityAnalysis:self->_compactSCSensitivityAnalysis];

  return v11;
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v592 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  libraryCopy = library;
  helper = [(PHChangeRequest *)self helper];
  v569 = 0;
  v9 = [helper applyMutationsToManagedObject:objectCopy error:&v569];
  v10 = v569;

  if (!v9)
  {
    LOBYTE(v30) = 0;
    errorCopy2 = error;
    goto LABEL_526;
  }

  v469 = v10;
  selfCopy = self;
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v13 = [mutations objectForKey:@"dateCreated"];

  if (v13)
  {
    [objectCopy didSetCustomDateCreated];
  }

  v492 = objectCopy;
  if ([objectCopy isAvalancheStackPhoto])
  {
    helper3 = [(PHChangeRequest *)self helper];
    mutations2 = [helper3 mutations];
    v16 = [mutations2 objectForKey:@"hidden"];

    if (v16)
    {
      if ([objectCopy isFinderSyncedAsset])
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      v18 = objc_alloc(MEMORY[0x1E69BE2B0]);
      avalancheUUID = [objectCopy avalancheUUID];
      v20 = [v18 initWithUUID:avalancheUUID sourceType:v17 photoLibrary:libraryCopy];

      helper4 = [(PHChangeRequest *)self helper];
      mutations3 = [helper4 mutations];
      v23 = [mutations3 objectForKey:@"hidden"];
      [v20 setHidden:{objc_msgSend(v23, "BOOLValue")}];

      objectCopy = v492;
    }
  }

  v24 = self->_updatedLocation;
  if (v24)
  {
    v25 = v24;
    null = [MEMORY[0x1E695DFB0] null];
    v27 = [(CLLocation *)v25 isEqual:null];

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
    [objectCopy setLocation:?];
    [objectCopy didSetCustomLocation];
    selfCopy2 = selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v463 = 0;
    v28 = v469;
  }

  if (selfCopy2->_didSetGpsHorizontalAccuracy)
  {
    additionalAttributes = [objectCopy additionalAttributes];
    [additionalAttributes setGpsHorizontalAccuracy:selfCopy->_gpsHorizontalAccuracy];

    selfCopy2 = selfCopy;
  }

  v34 = selfCopy2->_assetDescription;
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
    [objectCopy setLongDescription:?];
  }

  else
  {
    v462 = 0;
  }

  v37 = selfCopy2->_accessibilityDescription;
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
    [objectCopy setAccessibilityDescription:?];
  }

  else
  {
    v461 = 0;
  }

  if (selfCopy2->_didSetTitle)
  {
    additionalAttributes2 = [objectCopy additionalAttributes];
    [additionalAttributes2 setTitle:selfCopy->_title];

    selfCopy2 = selfCopy;
  }

  videoURLForUpdate = [(PHAssetChangeRequest *)selfCopy2 videoURLForUpdate];
  pairingIdentifier = [(PHAssetChangeRequest *)selfCopy2 pairingIdentifier];
  LOBYTE(v43) = 1;
  v465 = pairingIdentifier;
  v466 = videoURLForUpdate;
  if (videoURLForUpdate && pairingIdentifier)
  {
    memset(buf, 0, 24);
    [(PHAssetChangeRequest *)selfCopy2 videoDuration];
    v567 = 0uLL;
    v568 = 0;
    [(PHAssetChangeRequest *)selfCopy2 imageDisplayTime];
    v565 = *buf;
    v566 = *&buf[16];
    v563 = v567;
    v564 = v568;
    LOBYTE(v43) = [objectCopy becomePhotoIrisWithMediaGroupUUID:v465 mainFileMetadata:0 videoURL:videoURLForUpdate videoDuration:&v565 stillDisplayTime:&v563 options:0];
  }

  if (selfCopy2->_didSetVisibilityState && [objectCopy isPhotoIris])
  {
    [objectCopy setVideoCpVisibilityState:selfCopy2->_photoIrisVisibilityState];
    [objectCopy updatePlaybackStyleWithLivePhotoPlayability:{objc_msgSend(objectCopy, "canPlayPhotoIris")}];
  }

  didSetSceneClassifications = selfCopy2->_didSetSceneClassifications;
  if (didSetSceneClassifications == 1)
  {
    v460 = v43;
    v562 = 0u;
    v561 = 0u;
    v560 = 0u;
    v559 = 0u;
    obj = selfCopy2->_sceneClassificationDictionariesByType;
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
        v46 = [(NSMutableDictionary *)selfCopy2->_sceneClassificationDictionariesByType objectForKeyedSubscript:v45];
        v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisVersion"];
        v482 = [v46 objectForKeyedSubscript:v47];

        v48 = [(NSMutableDictionary *)selfCopy2->_sceneClassificationDictionariesByType objectForKeyedSubscript:v45];
        v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisTimestamp"];
        v487 = [v48 objectForKeyedSubscript:v49];

        v50 = PLAssetAnalysisGetLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          uuid = [(PHChangeRequest *)selfCopy2 uuid];
          *buf = 138412546;
          *&buf[4] = uuid;
          *&buf[12] = 2112;
          *&buf[14] = v487;
          _os_log_impl(&dword_19C86F000, v50, OS_LOG_TYPE_DEBUG, "Applying scene classifications to managed object - uuid: %@, adjustment timestamp: %@", buf, 0x16u);
        }

        v52 = [(NSMutableDictionary *)selfCopy2->_sceneClassificationDictionariesByType objectForKeyedSubscript:v45];
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

        integerValue = [v45 integerValue];
        if ((integerValue - 4) < 4)
        {
          [objectCopy removeSceneClassificationsOfType:integerValue];
          v63 = [(NSMutableDictionary *)selfCopy2->_sceneClassificationDictionariesByType objectForKeyedSubscript:v45];
          v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisLocationVersion"];
          additionalAttributes4 = [v63 objectForKeyedSubscript:v64];

          v66 = [(PHAssetChangeRequest *)selfCopy2 getMediaAnalysisAttributesForAsset:objectCopy];
          if (v482)
          {
            [v66 setVaAnalysisVersion:{objc_msgSend(v482, "integerValue")}];
            goto LABEL_64;
          }

          if (additionalAttributes4)
          {
            [v66 setVaLocationAnalysisVersion:{objc_msgSend(additionalAttributes4, "integerValue")}];
LABEL_64:
            [v66 setVaAnalysisTimestamp:v487];
          }

          goto LABEL_66;
        }

        if ((integerValue - 2) >= 2)
        {
          if (integerValue)
          {
            goto LABEL_67;
          }

          [objectCopy removeSceneClassificationsOfType:?];
          additionalAttributes3 = [objectCopy additionalAttributes];
          shortValue = [v482 shortValue];
        }

        else
        {
          [objectCopy removeTemporalSceneClassificationsOfType:integerValue];
          additionalAttributes3 = [objectCopy additionalAttributes];
          shortValue = [v482 integerValue];
        }

        [additionalAttributes3 setSceneAnalysisVersion:shortValue];

        additionalAttributes4 = [objectCopy additionalAttributes];
        [additionalAttributes4 setSceneAnalysisTimestamp:v487];
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
              extendedSceneIdentifier = [v74 extendedSceneIdentifier];
              [v74 confidence];
              v78 = v77;
              packedBoundingBoxRect = [v74 packedBoundingBoxRect];
              [v74 startTime];
              v81 = v80;
              [v74 duration];
              v83 = v82;
              classificationType = [v74 classificationType];
              thumbnailIdentifier = [v74 thumbnailIdentifier];
              v86 = [v75 insertIntoPhotoLibrary:libraryCopy asset:v492 sceneIdentifier:extendedSceneIdentifier confidence:packedBoundingBoxRect packedBoundingBoxRect:classificationType startTime:thumbnailIdentifier duration:v78 classificationType:v81 thumbnailIdentifier:v83];
            }

            v71 = [v69 countByEnumeratingWithState:&v551 objects:v589 count:16];
          }

          while (v71);
        }

        v44 = v480 + 1;
        objectCopy = v492;
        selfCopy2 = selfCopy;
      }

      while (v480 + 1 != v477);
      v477 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v559 objects:v591 count:16];
      if (!v477)
      {
LABEL_76:

        *buf = 0;
        *&v567 = 0;
        uuid2 = [objectCopy uuid];
        PLStringUUIDComponents();

        selfCopy2 = selfCopy;
        kdebug_trace();
        v28 = v469;
        LOBYTE(v43) = v460;
        break;
      }
    }
  }

  if (selfCopy2->_didSetImageEmbeddingVersion)
  {
    v88 = [(PHAssetChangeRequest *)selfCopy2 getMediaAnalysisAttributesForAsset:objectCopy];
    [v88 setImageEmbeddingVersion:selfCopy->_imageEmbeddingVersion];

    selfCopy2 = selfCopy;
  }

  if (selfCopy2->_didSetVideoEmbeddingVersion)
  {
    v89 = [(PHAssetChangeRequest *)selfCopy2 getMediaAnalysisAttributesForAsset:objectCopy];
    [v89 setVideoEmbeddingVersion:selfCopy->_videoEmbeddingVersion];

    selfCopy2 = selfCopy;
  }

  if (selfCopy2->_incrementPlayCount)
  {
    additionalAttributes5 = [objectCopy additionalAttributes];
    pendingPlayCount = [additionalAttributes5 pendingPlayCount];

    additionalAttributes6 = [objectCopy additionalAttributes];
    [additionalAttributes6 setPendingPlayCount:pendingPlayCount + 1];

    selfCopy2 = selfCopy;
  }

  if (selfCopy2->_incrementShareCount)
  {
    additionalAttributes7 = [objectCopy additionalAttributes];
    pendingShareCount = [additionalAttributes7 pendingShareCount];

    additionalAttributes8 = [objectCopy additionalAttributes];
    [additionalAttributes8 setPendingShareCount:pendingShareCount + 1];

    selfCopy2 = selfCopy;
  }

  if (selfCopy2->_lastSharedDate)
  {
    [objectCopy setLastSharedDate:?];
  }

  if (selfCopy2->_incrementViewCount)
  {
    additionalAttributes9 = [objectCopy additionalAttributes];
    pendingViewCount = [additionalAttributes9 pendingViewCount];

    additionalAttributes10 = [objectCopy additionalAttributes];
    date = [MEMORY[0x1E695DF00] date];
    [additionalAttributes10 setLastViewedDate:date];

    v28 = v469;
    additionalAttributes11 = [objectCopy additionalAttributes];
    [additionalAttributes11 setPendingViewCount:pendingViewCount + 1];

    selfCopy2 = selfCopy;
  }

  if (selfCopy2->_clearLastSharedDate)
  {
    [objectCopy setLastSharedDate:0];
  }

  if (selfCopy2->_clearLastViewedDate)
  {
    additionalAttributes12 = [objectCopy additionalAttributes];
    [additionalAttributes12 setLastViewedDate:0];

    selfCopy2 = selfCopy;
  }

  if (selfCopy2->_didSetVariationSuggestionStates)
  {
    additionalAttributes13 = [objectCopy additionalAttributes];
    variationSuggestionStates = [additionalAttributes13 variationSuggestionStates];

    v104 = variationSuggestionStates & ~selfCopy->_variationSuggestionStatesMask;
    variationSuggestionStates = selfCopy->_variationSuggestionStates;
    additionalAttributes14 = [objectCopy additionalAttributes];
    [additionalAttributes14 setVariationSuggestionStates:variationSuggestionStates | v104];

    selfCopy2 = selfCopy;
  }

  if (selfCopy2->_didSetTimeZone)
  {
    additionalAttributes15 = [objectCopy additionalAttributes];
    [additionalAttributes15 setTimeZoneName:selfCopy->_timeZoneName];

    additionalAttributes16 = [objectCopy additionalAttributes];
    v109 = [MEMORY[0x1E696AD98] numberWithInt:selfCopy->_timeZoneOffsetValue];
    [additionalAttributes16 setTimeZoneOffset:v109];

    selfCopy2 = selfCopy;
  }

  v110 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  facesHelper = [(PHAssetChangeRequest *)selfCopy2 facesHelper];
  mutableObjectIDsAndUUIDs = [facesHelper mutableObjectIDsAndUUIDs];

  if (mutableObjectIDsAndUUIDs)
  {
    [facesHelper setAllowsInsert:1];
    [facesHelper setAllowsMove:0];
    [facesHelper setAllowsRemove:1];
    [facesHelper setDestinationEntityName:@"DetectedFace"];
    mutableDetectedFaces = [objectCopy mutableDetectedFaces];
    v550 = v28;
    v43 = [facesHelper applyMutationsToManagedObject:objectCopy unorderedMutableChildren:mutableDetectedFaces error:&v550];
    v114 = v550;
    v115 = v28;
    v28 = v114;

    if (v43)
    {
      allObjects = [mutableDetectedFaces allObjects];
      [v110 addObjectsFromArray:allObjects];
    }
  }

  temporalFacesHelper = [(PHAssetChangeRequest *)selfCopy temporalFacesHelper];
  mutableObjectIDsAndUUIDs2 = [temporalFacesHelper mutableObjectIDsAndUUIDs];

  v475 = v110;
  v476 = facesHelper;
  v481 = temporalFacesHelper;
  if (mutableObjectIDsAndUUIDs2)
  {
    [temporalFacesHelper setAllowsInsert:1];
    [temporalFacesHelper setAllowsMove:0];
    [temporalFacesHelper setAllowsRemove:1];
    entityName = [MEMORY[0x1E69BE3D0] entityName];
    [temporalFacesHelper setDestinationEntityName:entityName];

    mutableTemporalDetectedFaces = [objectCopy mutableTemporalDetectedFaces];
    v121 = objectCopy;
    additionalAttributes17 = mutableTemporalDetectedFaces;
    v549 = 0;
    v548 = v28;
    v123 = [temporalFacesHelper applyMutationsToManagedObject:v121 unorderedMutableChildren:mutableTemporalDetectedFaces inserts:0 deletes:&v549 error:&v548];
    v124 = v549;
    v125 = v548;

    if (!v123)
    {
      v30 = 0;
      goto LABEL_129;
    }

    allObjects2 = [additionalAttributes17 allObjects];
    [v110 addObjectsFromArray:allObjects2];

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
            managedObjectContext = [v132 managedObjectContext];
            [managedObjectContext deleteObject:v132];
          }

          else
          {
            managedObjectContext = PLPhotoKitGetLog();
            if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_ERROR))
            {
              shortObjectIDURI = [v132 shortObjectIDURI];
              *buf = 138543362;
              *&buf[4] = shortObjectIDURI;
              _os_log_impl(&dword_19C86F000, managedObjectContext, OS_LOG_TYPE_ERROR, "Unexpected old temporal face is not an orphan: %{public}@", buf, 0xCu);
            }
          }
        }

        v129 = [v127 countByEnumeratingWithState:&v544 objects:v588 count:16];
      }

      while (v129);
    }

    v135 = selfCopy;
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

    v135 = selfCopy;
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

    v135 = selfCopy;
  }

  mutableObjectIDsAndUUIDs3 = [(PHRelationshipChangeRequestHelper *)v135->_keywordsHelper mutableObjectIDsAndUUIDs];

  if (mutableObjectIDsAndUUIDs3)
  {
    [(PHRelationshipChangeRequestHelper *)v135->_keywordsHelper setAllowsInsert:1];
    [(PHRelationshipChangeRequestHelper *)v135->_keywordsHelper setAllowsMove:0];
    keywordsHelper = v135->_keywordsHelper;
    entityName2 = [MEMORY[0x1E69BE560] entityName];
    [(PHRelationshipChangeRequestHelper *)keywordsHelper setDestinationEntityName:entityName2];

    additionalAttributes17 = [v492 additionalAttributes];
    v124 = [additionalAttributes17 mutableSetValueForKey:@"keywords"];
    v144 = v135->_keywordsHelper;
    v539 = v28;
    v30 = [(PHRelationshipChangeRequestHelper *)v144 applyMutationsToManagedObject:additionalAttributes17 unorderedMutableChildren:v124 error:&v539];
    v125 = v539;

    facesHelper = v476;
LABEL_129:

    v470 = v125;
    objectCopy = v492;
LABEL_131:
    v145 = selfCopy;
    goto LABEL_132;
  }

  v30 = 1;
  v470 = v28;
  objectCopy = v492;
  v145 = v135;
  facesHelper = v476;
LABEL_132:
  if (![(PHAssetChangeRequest *)v145 didChangeAdjustments])
  {
    goto LABEL_168;
  }

  contentEditingOutput = [(PHAssetChangeRequest *)v145 contentEditingOutput];
  v147 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
  {
    v148 = [contentEditingOutput debugDescription];
    *buf = 138412290;
    *&buf[4] = v148;
    _os_log_impl(&dword_19C86F000, v147, OS_LOG_TYPE_DEFAULT, "Asset change request applying content editing output:\n%@", buf, 0xCu);
  }

  if ([contentEditingOutput isOnlyChangingOriginalChoice])
  {
    if ([objectCopy hasAdjustments])
    {
      assetAdjustmentOptionsForRevertingToOriginal = [MEMORY[0x1E69BE258] assetAdjustmentOptionsForRevertingToOriginal];
      [objectCopy setAdjustments:0 options:assetAdjustmentOptionsForRevertingToOriginal];
    }

    goto LABEL_167;
  }

  cameraProcessingAdjustmentState = [objectCopy cameraProcessingAdjustmentState];
  if ([objectCopy cameraProcessingAdjustmentState] != cameraProcessingAdjustmentState)
  {
    [objectCopy setCameraProcessingAdjustmentState:cameraProcessingAdjustmentState];
  }

  if (![contentEditingOutput isAsyncAdjustment])
  {
    v159 = MEMORY[0x1E69C08F0];
    originalUniformTypeIdentifier = [objectCopy originalUniformTypeIdentifier];
    v151 = [v159 typeWithIdentifier:originalUniformTypeIdentifier];

    v161 = selfCopy;
    if ([v151 conformsToType:*MEMORY[0x1E6982F88]])
    {
      if ([(PHAssetChangeRequest *)selfCopy isRevertingContentToOriginal])
      {
        additionalAttributes18 = [v492 additionalAttributes];
        originalResourceChoice = [additionalAttributes18 originalResourceChoice];
        v164 = v30;
        integerValue2 = [originalResourceChoice integerValue];

        v161 = selfCopy;
        v166 = integerValue2 == 3;
        v30 = v164;
        if (v166)
        {
          additionalAttributes19 = [v492 additionalAttributes];
          [additionalAttributes19 setOriginalResourceChoice:&unk_1F102CA40];

          v161 = selfCopy;
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
      fileManager = [MEMORY[0x1E69BF238] fileManager];
      renderedVideoComplementContentURL = [contentEditingOutput renderedVideoComplementContentURL];
      [renderedVideoComplementContentURL path];
      v172 = v171 = v30;
      v173 = [fileManager fileExistsAtPath:v172];

      v30 = v171;
      v161 = selfCopy;
      if (v173)
      {
LABEL_161:
        videoDuration2 = [contentEditingOutput assetAdjustmentsWithEditorBundleID:v161->_editorBundleID];
        if ([(PHAssetChangeRequest *)v161 isRevertingContentToOriginal])
        {
          [MEMORY[0x1E69BE258] assetAdjustmentOptionsForRevertingToOriginal];
        }

        else
        {
          [contentEditingOutput setAdjustmentsOptions];
        }
        v174 = ;
        temporalFacesHelper = v481;
        [v492 setAdjustments:videoDuration2 options:v174];

        goto LABEL_165;
      }

      v168 = [v492 videoCpVisibilityState] & 0xFFF4 | 1;
    }

    [v492 setVideoCpVisibilityState:v168];
    goto LABEL_161;
  }

  v151 = [contentEditingOutput assetAdjustmentsWithEditorBundleID:selfCopy->_editorBundleID];
  v152 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
  {
    v153 = [v151 debugDescription];
    *buf = 138412290;
    *&buf[4] = v153;
    _os_log_impl(&dword_19C86F000, v152, OS_LOG_TYPE_DEBUG, "Asset change request applying async adjustments:\n%@", buf, 0xCu);
  }

  setAdjustmentsOptions = [contentEditingOutput setAdjustmentsOptions];
  [v492 setAdjustments:v151 options:setAdjustmentsOptions];

  playbackVariation = [contentEditingOutput playbackVariation];

  if (playbackVariation)
  {
    playbackVariation2 = [contentEditingOutput playbackVariation];
    [v492 setPlaybackVariation:{objc_msgSend(playbackVariation2, "integerValue")}];
  }

  videoDuration = [contentEditingOutput videoDuration];

  if (!videoDuration || ![v492 isVideo])
  {
    goto LABEL_166;
  }

  videoDuration2 = [contentEditingOutput videoDuration];
  [videoDuration2 doubleValue];
  [v492 setDuration:?];
LABEL_165:

LABEL_166:
  *buf = 0;
  *&v567 = 0;
  objectCopy = v492;
  uuid3 = [v492 uuid];
  PLStringUUIDComponents();

  kdebug_trace();
LABEL_167:

  v145 = selfCopy;
LABEL_168:
  contentEditingOutput2 = [(PHAssetChangeRequest *)v145 contentEditingOutput];
  isOnlyChangingOriginalChoice = [contentEditingOutput2 isOnlyChangingOriginalChoice];

  contentEditingOutput3 = [(PHAssetChangeRequest *)v145 contentEditingOutput];
  originalResourceChoice2 = [contentEditingOutput3 originalResourceChoice];
  v180 = originalResourceChoice2;
  if (!isOnlyChangingOriginalChoice)
  {

    if (v180)
    {
      contentEditingOutput4 = [(PHAssetChangeRequest *)selfCopy contentEditingOutput];
      originalResourceChoice3 = [contentEditingOutput4 originalResourceChoice];
      integerValue3 = [originalResourceChoice3 integerValue];

      additionalAttributes20 = [objectCopy additionalAttributes];
      originalResourceChoice4 = [additionalAttributes20 originalResourceChoice];
      integerValue4 = [originalResourceChoice4 integerValue];

      v185 = selfCopy;
      v166 = integerValue3 == integerValue4;
      objectCopy = v492;
      if (v166)
      {
        goto LABEL_227;
      }

      v196 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
      {
        if (integerValue3 > 3)
        {
          v197 = 0;
        }

        else
        {
          v197 = off_1E75A71C8[integerValue3];
        }

        v232 = v197;
        *buf = 138412290;
        *&buf[4] = v232;
        _os_log_impl(&dword_19C86F000, v196, OS_LOG_TYPE_DEBUG, "Applying content editing output also changing original resource choice to %@", buf, 0xCu);
      }

      v230 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:integerValue3];
      additionalAttributes21 = [v492 additionalAttributes];
      [additionalAttributes21 setOriginalResourceChoice:v230];
      v185 = selfCopy;
    }

    else
    {
      v185 = selfCopy;
      if (!selfCopy->_didSetOriginalResourceChoice)
      {
        goto LABEL_227;
      }

      originalResourceChoice = selfCopy->_originalResourceChoice;
      additionalAttributes22 = [objectCopy additionalAttributes];
      originalResourceChoice5 = [additionalAttributes22 originalResourceChoice];
      integerValue5 = [originalResourceChoice5 integerValue];

      v185 = selfCopy;
      v166 = originalResourceChoice == integerValue5;
      facesHelper = v476;
      if (v166)
      {
        goto LABEL_227;
      }

      v202 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
      {
        v203 = selfCopy->_originalResourceChoice;
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

      v185 = selfCopy;
      v230 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:selfCopy->_originalResourceChoice];
      additionalAttributes21 = [objectCopy additionalAttributes];
      [additionalAttributes21 setOriginalResourceChoice:v230];
    }

LABEL_226:

    objectCopy = v492;
    goto LABEL_227;
  }

  integerValue6 = [originalResourceChoice2 integerValue];

  additionalAttributes23 = [objectCopy additionalAttributes];
  originalResourceChoice6 = [additionalAttributes23 originalResourceChoice];
  integerValue7 = [originalResourceChoice6 integerValue];

  v166 = integerValue6 == integerValue7;
  objectCopy = v492;
  v185 = selfCopy;
  if (!v166)
  {
    contentEditingOutput5 = [(PHAssetChangeRequest *)selfCopy contentEditingOutput];
    renderedPreviewContentURL = [contentEditingOutput5 renderedPreviewContentURL];

    v188 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
    {
      if (integerValue6 > 3)
      {
        v189 = 0;
      }

      else
      {
        v189 = off_1E75A71C8[integerValue6];
      }

      v205 = v189;
      *buf = 138412290;
      *&buf[4] = v205;
      _os_log_impl(&dword_19C86F000, v188, OS_LOG_TYPE_DEBUG, "Setting original choice to %@ and mark asset for deferred rendering", buf, 0xCu);
    }

    v478 = renderedPreviewContentURL;
    v483 = v30;

    v206 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:integerValue6];
    additionalAttributes24 = [v492 additionalAttributes];
    [additionalAttributes24 setOriginalResourceChoice:v206];

    [v492 setDeferredProcessingNeeded:4];
    photoLibrary = [v492 photoLibrary];
    libraryServicesManager = [photoLibrary libraryServicesManager];
    backgroundJobService = [libraryServicesManager backgroundJobService];
    photoLibrary2 = [v492 photoLibrary];
    v212 = [MEMORY[0x1E69BE2B8] typesMaskForDeferredProcessingNeeded:{objc_msgSend(v492, "deferredProcessingNeeded")}];
    [backgroundJobService signalBackgroundProcessingNeededOnLibrary:photoLibrary2 workerTypes:v212];

    additionalAttributes21 = [MEMORY[0x1E69BF238] fileManager];
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
          v220 = [additionalAttributes21 removeItemAtURL:v219 error:&v534];
          v221 = v534;
          if (v220)
          {
            v222 = PLPhotoEditGetLog();
            if (os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG))
            {
              path = [v219 path];
              *buf = 138412290;
              *&buf[4] = path;
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
    modernResources = [v492 modernResources];
    v225 = [modernResources countByEnumeratingWithState:&v530 objects:v585 count:16];
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
            objc_enumerationMutation(modernResources);
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

        v226 = [modernResources countByEnumeratingWithState:&v530 objects:v585 count:16];
      }

      while (v226);
    }

    facesHelper = v476;
    v230 = v478;
    temporalFacesHelper = v481;
    if (v478)
    {
      v231 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v478];
      if (v231)
      {
        [v492 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:v231 forceSRGBConversion:0];
      }
    }

    v185 = selfCopy;
    v30 = v483;
    goto LABEL_226;
  }

LABEL_227:
  if (v185->_didRevertLocationToOriginal && PLPlatformExtendedAttributesSupported())
  {
    extendedAttributes = [objectCopy extendedAttributes];
    v235 = extendedAttributes;
    if (extendedAttributes)
    {
      latitude = [extendedAttributes latitude];
      if (latitude)
      {
        v237 = latitude;
        longitude = [v235 longitude];

        if (longitude)
        {
          v239 = objc_alloc(MEMORY[0x1E6985C40]);
          latitude2 = [v235 latitude];
          [latitude2 doubleValue];
          v242 = v241;
          longitude2 = [v235 longitude];
          [longitude2 doubleValue];
          v245 = [v239 initWithLatitude:v242 longitude:v244];

          objectCopy = v492;
          [v492 setLocation:v245];
          [v492 didSetCustomLocation];
        }
      }
    }

    v185 = selfCopy;
  }

  if (v185->_didUpdateExtendedAttributesUsingOriginalMediaMetadata)
  {
    v246 = v470;
    if (PLPlatformExtendedAttributesSupported())
    {
      v529 = v470;
      v30 = [objectCopy updateExtendedAttributesWithError:&v529];
      v247 = v529;

      v246 = v247;
      v185 = selfCopy;
    }
  }

  else
  {
    v246 = v470;
  }

  if (v185->_didTrashAllSpatialOverCaptureResources)
  {
    [objectCopy setTrashedStateOnSpatialOverCaptureResources:1];
  }

  if (v185->_didUntrashAllSpatialOverCaptureResources)
  {
    [objectCopy setTrashedStateOnSpatialOverCaptureResources:0];
  }

  if (v185->_didExpungeAllSpatialOverCaptureResources)
  {
    [objectCopy setTrashedStateOnSpatialOverCaptureResources:2];
  }

  if (v185->_didExpungeTrashedSpatialOverCaptureResources)
  {
    [objectCopy expungeTrashedSpatialOverCaptureResources];
  }

  if (v185->_didPromoteToGuestAsset)
  {
    v528 = v246;
    v30 = [objectCopy promoteToGuestAsset:&v528];
    v248 = v528;

    v246 = v248;
    v185 = selfCopy;
  }

  if (v185->_didResetGuestAssetPromotion)
  {
    v527 = v246;
    v30 = [objectCopy resetGuestAssetPromotion:&v527];
    v249 = v527;

    v246 = v249;
    v185 = selfCopy;
  }

  v471 = v246;
  if (v185->_toRetryUpload)
  {
    photoLibrary3 = [objectCopy photoLibrary];
    isCloudPhotoLibraryEnabled = [photoLibrary3 isCloudPhotoLibraryEnabled];

    v185 = selfCopy;
    if (isCloudPhotoLibraryEnabled)
    {
      master = [objectCopy master];
      v253 = master;
      if (master)
      {
        v525 = 0u;
        v526 = 0u;
        v523 = 0u;
        v524 = 0u;
        assets = [master assets];
        v255 = [assets countByEnumeratingWithState:&v523 objects:v584 count:16];
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
                objc_enumerationMutation(assets);
              }

              v259 = *(*(&v523 + 1) + 8 * jj);
              if ([v259 cloudLocalState])
              {
                [v259 setCloudLocalState:0];
              }
            }

            v256 = [assets countByEnumeratingWithState:&v523 objects:v584 count:16];
          }

          while (v256);
        }

        objectCopy = v492;
        v185 = selfCopy;
        facesHelper = v476;
        if (![v253 cloudLocalState])
        {
          goto LABEL_267;
        }

        v260 = v253;
      }

      else
      {
        if (![objectCopy cloudLocalState])
        {
LABEL_267:

          goto LABEL_268;
        }

        v260 = objectCopy;
      }

      [v260 setCloudLocalState:0];
      goto LABEL_267;
    }
  }

LABEL_268:
  modificationDate = [(PHAssetChangeRequest *)v185 modificationDate];
  if (modificationDate)
  {
    [objectCopy setModificationDate:modificationDate];
  }

  obja = modificationDate;
  if (v185->_didModifyComputedAttributes)
  {
    computedAttributes = [objectCopy computedAttributes];

    if (!computedAttributes)
    {
      managedObjectContext2 = [objectCopy managedObjectContext];
      [MEMORY[0x1E69BE370] entityName];
      v265 = v264 = objectCopy;
      v522 = 0;
      v266 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext();
      v267 = 0;

      if (!v266)
      {
        if (error)
        {
          v459 = v267;
          *error = v267;
        }

        v456 = 0;
        objectCopy = v492;
        v10 = v471;
        goto LABEL_523;
      }

      [v264 setComputedAttributes:v266];

      objectCopy = v264;
    }

    v268 = v30;
    v520 = 0u;
    v521 = 0u;
    v518 = 0u;
    v519 = 0u;
    v269 = selfCopy->_computedAttributeMutations;
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
          computedAttributes2 = [objectCopy computedAttributes];
          v276 = [(NSMutableDictionary *)selfCopy->_computedAttributeMutations objectForKeyedSubscript:v274];
          [computedAttributes2 setValue:v276 forKey:v274];

          objectCopy = v492;
        }

        v271 = [(NSMutableDictionary *)v269 countByEnumeratingWithState:&v518 objects:v583 count:16];
      }

      while (v271);
    }

    didSetSceneClassifications = 1;
    v185 = selfCopy;
    v30 = v268;
  }

  if (v185->_mediaAnalysisTimeStamp)
  {
    v277 = [(PHAssetChangeRequest *)v185 getMediaAnalysisAttributesForAsset:objectCopy];
    [v277 setMediaAnalysisTimeStamp:selfCopy->_mediaAnalysisTimeStamp];

    v185 = selfCopy;
    didSetSceneClassifications = 1;
  }

  didSetMediaAnalysisVersion = v185->_didSetMediaAnalysisVersion;
  if (didSetMediaAnalysisVersion == 1)
  {
    v279 = [(PHAssetChangeRequest *)v185 getMediaAnalysisAttributesForAsset:objectCopy];
    [v279 setMediaAnalysisVersion:selfCopy->_mediaAnalysisVersion];

    v185 = selfCopy;
    didSetSceneClassifications = 1;
  }

  if (v185->_didSetMediaAnalysisImageVersion)
  {
    v280 = [(PHAssetChangeRequest *)v185 getMediaAnalysisAttributesForAsset:objectCopy];
    [v280 setMediaAnalysisImageVersion:selfCopy->_mediaAnalysisImageVersion];

    v185 = selfCopy;
    didSetMediaAnalysisVersion = 1;
    didSetSceneClassifications = 1;
  }

  v479 = didSetMediaAnalysisVersion;
  p_bestVideoTimeRange = &v185->_bestVideoTimeRange;
  if ((v185->_bestVideoTimeRange.start.flags & 1) != 0 && (v185->_bestVideoTimeRange.duration.flags & 1) != 0 && !v185->_bestVideoTimeRange.duration.epoch && (v185->_bestVideoTimeRange.duration.value & 0x8000000000000000) == 0)
  {
    v282 = [(PHAssetChangeRequest *)v185 getMediaAnalysisAttributesForAsset:objectCopy];
    v283 = *&p_bestVideoTimeRange->start.epoch;
    *buf = *&p_bestVideoTimeRange->start.value;
    *&buf[16] = v283;
    v582 = *&p_bestVideoTimeRange->duration.timescale;
    [v282 setBestVideoTimeRange:buf];

    v185 = selfCopy;
  }

  p_animatedStickerTimeRange = &v185->_animatedStickerTimeRange;
  if ((v185->_animatedStickerTimeRange.start.flags & 1) != 0 && (v185->_animatedStickerTimeRange.duration.flags & 1) != 0 && !v185->_animatedStickerTimeRange.duration.epoch && (v185->_animatedStickerTimeRange.duration.value & 0x8000000000000000) == 0)
  {
    v285 = [(PHAssetChangeRequest *)v185 getMediaAnalysisAttributesForAsset:objectCopy];
    v286 = *&p_animatedStickerTimeRange->start.epoch;
    *buf = *&p_animatedStickerTimeRange->start.value;
    *&buf[16] = v286;
    v582 = *&p_animatedStickerTimeRange->duration.timescale;
    [v285 setAnimatedStickerTimeRange:buf];

    v185 = selfCopy;
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
      v290 = [(NSData *)selfCopy->_bestKeyFrameJPEGData length];
      uuid4 = [objectCopy uuid];
      *buf = 138412802;
      *&buf[4] = v289;
      *&buf[12] = 2048;
      *&buf[14] = v290;
      *&buf[22] = 2112;
      *&buf[24] = uuid4;
      _os_log_impl(&dword_19C86F000, v288, OS_LOG_TYPE_DEBUG, "Setting best key frame time: %@ key frame image length: %lu for asset: %@", buf, 0x20u);

      objectCopy = v492;
    }

    *buf = *&p_bestKeyFrameTime->value;
    *&buf[16] = p_bestKeyFrameTime->epoch;
    [objectCopy setVideoKeyFrameTime:buf];
    v185 = selfCopy;
  }

  if (v185->_didUnsetBestKeyFrameTime)
  {
    *buf = *MEMORY[0x1E6960C70];
    *&buf[16] = *(MEMORY[0x1E6960C70] + 16);
    [objectCopy setVideoKeyFrameTime:buf];
  }

  if (v185->_bestKeyFrameJPEGData)
  {
    if ([objectCopy isLocalVideoKeyFrameValid])
    {
      v292 = CGImageSourceCreateWithData(selfCopy->_bestKeyFrameJPEGData, 0);
      if (!v292)
      {
        goto LABEL_314;
      }

      v293 = v292;
      v294 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v294, OS_LOG_TYPE_DEBUG))
      {
        uuid5 = [objectCopy uuid];
        *buf = 138412290;
        *&buf[4] = uuid5;
        _os_log_impl(&dword_19C86F000, v294, OS_LOG_TYPE_DEBUG, "Regenerating thumbs for new best key frame for asset: %@", buf, 0xCu);
      }

      v516 = 0;
      v517 = 0;
      [MEMORY[0x1E69BE540] createThumbnailImage:&v517 previewImage:&v516 withToBeReleasedImageSource:v293];
      v296 = v517;
      uuid6 = v516;
      [objectCopy generateAndUpdateThumbnailsWithPreviewImage:uuid6 thumbnailImage:v296 fromImageSource:0 imageData:0 forceSRGBConversion:0];
    }

    else
    {
      v296 = PLThumbnailsGetLog();
      if (!os_log_type_enabled(v296, OS_LOG_TYPE_DEBUG))
      {
LABEL_313:

        goto LABEL_314;
      }

      uuid6 = [objectCopy uuid];
      *buf = 138543362;
      *&buf[4] = uuid6;
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
  v298 = selfCopy->_contextualVideoThumbnailImageDataByIdentifier;
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
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PHAssetChangeRequest.m" lineNumber:4466 description:{@"Invalid parameter not satisfying: %@", @"cvtFileURL"}];
        }

        v306 = [(NSDictionary *)selfCopy->_contextualVideoThumbnailImageDataByIdentifier objectForKeyedSubscript:v303];
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

  v311 = selfCopy;
  v312 = v492;
  if (selfCopy->_computeSyncMediaAnalysisPayload)
  {
    v313 = MEMORY[0x1E695DFF8];
    pathForComputeSyncMediaAnalysisPayloadFile = [v492 pathForComputeSyncMediaAnalysisPayloadFile];
    v315 = [v313 fileURLWithPath:pathForComputeSyncMediaAnalysisPayloadFile];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    uRLByDeletingLastPathComponent = [v315 URLByDeletingLastPathComponent];
    v510 = 0;
    v318 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v510];
    v319 = v510;

    if ((v318 & 1) == 0)
    {
      v320 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v320, OS_LOG_TYPE_ERROR))
      {
        uuid7 = [v492 uuid];
        *buf = 138412546;
        *&buf[4] = uuid7;
        *&buf[12] = 2112;
        *&buf[14] = v319;
        _os_log_impl(&dword_19C86F000, v320, OS_LOG_TYPE_ERROR, "Failed to create pathForMediaAnalysisComputeSyncSidecarPayload for asset %@ error: %@", buf, 0x16u);
      }
    }

    v311 = selfCopy;
    [(NSData *)selfCopy->_computeSyncMediaAnalysisPayload writeToURL:v315 atomically:1];

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
    [v322 setPackedBestPlaybackRect:selfCopy->_packedBestPlaybackRect];

    v311 = selfCopy;
  }

  if (v311->_didSetWallpaperPropertiesVersion)
  {
    v323 = [(PHAssetChangeRequest *)v311 getPhotoAnalysisAttributesForAsset:v492];
    [v323 setWallpaperPropertiesVersion:selfCopy->_wallpaperPropertiesVersion];

    v311 = selfCopy;
    didSetSceneClassifications = 1;
  }

  if (v311->_didSetWallpaperPropertiesTimestamp)
  {
    v324 = [(PHAssetChangeRequest *)v311 getPhotoAnalysisAttributesForAsset:v492];
    [v324 setWallpaperPropertiesTimestamp:selfCopy->_wallpaperPropertiesTimestamp];

    v311 = selfCopy;
  }

  if (v311->_didSetWallpaperPropertiesData)
  {
    v325 = [(PHAssetChangeRequest *)v311 getPhotoAnalysisAttributesForAsset:v492];
    [v325 setWallpaperPropertiesData:selfCopy->_wallpaperPropertiesData];

    v311 = selfCopy;
  }

  if (v311->_didSetBlurrinessScore)
  {
    v326 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v327 = selfCopy->_blurrinessScore;
    [v326 setBlurrinessScore:v327];

    v311 = selfCopy;
  }

  if (v311->_didSetExposureScore)
  {
    v328 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v329 = selfCopy->_exposureScore;
    [v328 setExposureScore:v329];

    v311 = selfCopy;
  }

  if (v311->_didSetWallpaperScore)
  {
    v330 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v331 = selfCopy->_wallpaperScore;
    [v330 setWallpaperScore:v331];

    v311 = selfCopy;
  }

  if (v311->_didSetAutoplaySuggestionScore)
  {
    v332 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v333 = selfCopy->_autoplaySuggestionScore;
    [v332 setAutoplaySuggestionScore:v333];

    v311 = selfCopy;
  }

  if (v311->_didSetVideoStickerSuggestionScore)
  {
    v334 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v335 = selfCopy->_videoStickerSuggestionScore;
    [v334 setVideoStickerSuggestionScore:v335];

    v311 = selfCopy;
  }

  if (v311->_didSetVideoScore)
  {
    v336 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v337 = selfCopy->_videoScore;
    [v336 setVideoScore:v337];

    v311 = selfCopy;
  }

  if (v311->_didSetActivityScore)
  {
    v338 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v339 = selfCopy->_activityScore;
    [v338 setActivityScore:v339];

    v311 = selfCopy;
  }

  if (v311->_didSetAudioScore)
  {
    v340 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v341 = selfCopy->_audioScore;
    [v340 setAudioScore:v341];

    v311 = selfCopy;
  }

  if (v311->_didSetSettlingEffectScore)
  {
    v342 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v343 = selfCopy->_settlingEffectScore;
    [v342 setSettlingEffectScore:v343];

    v311 = selfCopy;
  }

  if (v311->_didSetFaceCount)
  {
    v344 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    [v344 setFaceCount:selfCopy->_faceCount];

    v311 = selfCopy;
  }

  if (v311->_didSetAudioClassification)
  {
    v345 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    [v345 setAudioClassification:selfCopy->_audioClassification];

    v311 = selfCopy;
    didSetSceneClassifications = 1;
  }

  if (v311->_didSetProbableRotationDirection)
  {
    v346 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    [v346 setProbableRotationDirection:selfCopy->_probableRotationDirection];

    v311 = selfCopy;
  }

  if (v311->_didSetProbableRotationDirectionConfidence)
  {
    v347 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    *&v348 = selfCopy->_probableRotationDirectionConfidence;
    [v347 setProbableRotationDirectionConfidence:v348];

    v311 = selfCopy;
  }

  if (v311->_colorNormalizationData)
  {
    v349 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:v492];
    [v349 setColorNormalizationData:selfCopy->_colorNormalizationData];

    v311 = selfCopy;
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

  v311 = selfCopy;
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

  v311 = selfCopy;
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
      [v354 setVisualSearchData:selfCopy->_visualSearchData algorithmVersion:SLOWORD(selfCopy->_visualSearchAlgorithmVersion) adjustmentVersion:selfCopy->_visualSearchAdjustmentVersion];
    }

    didSetSceneClassifications = 1;
    v311 = selfCopy;
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
    objectCopy = v492;
    temporalFacesHelper = v481;
LABEL_410:
    [v361 setWallpaperPropertiesVersion:wallpaperPropertiesVersion];
    v311 = selfCopy;
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

  objectCopy = v492;
  temporalFacesHelper = v481;
  if (v311->_didSetWallpaperPropertiesVersion)
  {
    wallpaperPropertiesVersion = v311->_wallpaperPropertiesVersion;
    didSetSceneClassifications = 1;
    goto LABEL_410;
  }

LABEL_411:

  if (v311->_didSetSyndicationProcessingValue)
  {
    v363 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:objectCopy];
    [v363 setSyndicationProcessingValue:v311->_syndicationProcessingValue];
  }

  if (v311->_didSetSyndicationProcessingVersion)
  {
    v364 = [(PHAssetChangeRequest *)v311 getMediaAnalysisAttributesForAsset:objectCopy];
    [v364 setSyndicationProcessingVersion:v311->_syndicationProcessingVersion];
  }

  if (v311->_didSetSyndicationIdentifier)
  {
    syndicationIdentifier = v311->_syndicationIdentifier;
    additionalAttributes25 = [objectCopy additionalAttributes];
    [additionalAttributes25 setSyndicationIdentifier:syndicationIdentifier];
  }

  if (v311->_didSetFaceAnalysisVersion)
  {
    faceAnalysisVersion = v311->_faceAnalysisVersion;
    additionalAttributes26 = [objectCopy additionalAttributes];
    [additionalAttributes26 setFaceAnalysisVersion:faceAnalysisVersion];

    didSetSceneClassifications = 1;
  }

  if (v311->_didSetLocalAnalysisStage)
  {
    localAnalysisStage = v311->_localAnalysisStage;
    computeSyncAttributes = [objectCopy computeSyncAttributes];
    localAnalysisStage = [computeSyncAttributes localAnalysisStage];

    if (localAnalysisStage <= localAnalysisStage)
    {
      v372 = v311->_localAnalysisStage;
      computeSyncAttributes2 = [objectCopy computeSyncAttributes];
      localAnalysisStage2 = [computeSyncAttributes2 localAnalysisStage];

      if (v372 < localAnalysisStage2)
      {
        v375 = PLBackendGetLog();
        if (os_log_type_enabled(v375, OS_LOG_TYPE_INFO))
        {
          computeSyncAttributes3 = [objectCopy computeSyncAttributes];
          localAnalysisStage3 = [computeSyncAttributes3 localAnalysisStage];
          v378 = selfCopy->_localAnalysisStage;
          clientBundleID = [(PHChangeRequest *)selfCopy clientBundleID];
          *buf = 67109634;
          *&buf[4] = localAnalysisStage3;
          objectCopy = v492;
          *&buf[8] = 1024;
          *&buf[10] = v378;
          *&buf[14] = 2114;
          *&buf[16] = clientBundleID;
          _os_log_impl(&dword_19C86F000, v375, OS_LOG_TYPE_INFO, "[CCSS] Quietly dropping attempt to downgrade analysis stage from %d to %d by client: %{public}@", buf, 0x18u);
        }

        v311 = selfCopy;
      }
    }

    else
    {
      [MEMORY[0x1E69BE368] updateLocalComputeSyncStageAfterProcessingForAsset:objectCopy stage:v311->_localAnalysisStage];
    }
  }

  if (v311->_didSetViewPresentation)
  {
    viewPresentation = v311->_viewPresentation;
    additionalAttributes27 = [objectCopy additionalAttributes];
    [additionalAttributes27 setViewPresentation:viewPresentation];
  }

  if (v311->_didSetSceneprintData)
  {
    additionalAttributes28 = [objectCopy additionalAttributes];
    [additionalAttributes28 setSceneprintWithData:v311->_sceneprintData];
  }

  if (v311->_didSetDuplicateMatchingData)
  {
    additionalAttributes29 = [objectCopy additionalAttributes];
    [additionalAttributes29 setDuplicateMatchingData:v311->_duplicateMatchingData duplicateMatchingAlternateData:v311->_duplicateMatchingAlternateData processingSucceeded:v311->_duplicateProcessingSucceeded];

    didSetSceneClassifications = 1;
  }

  if (v311->_didSetReverseLocationData)
  {
    additionalAttributes30 = [objectCopy additionalAttributes];
    [additionalAttributes30 setReverseLocationData:v311->_reverseLocationData];
  }

  if (v311->_didSetReverseLocationDataIsValid)
  {
    additionalAttributes31 = [objectCopy additionalAttributes];
    v386 = [MEMORY[0x1E696AD98] numberWithBool:v311->_reverseLocationDataIsValid];
    [additionalAttributes31 setReverseLocationDataIsValid:v386];
  }

  if (v311->_didSetShiftedLocation)
  {
    additionalAttributes32 = [objectCopy additionalAttributes];
    [additionalAttributes32 setShiftedLocation:v311->_shiftedLocation];

    additionalAttributes33 = [objectCopy additionalAttributes];
    [additionalAttributes33 setShiftedLocationIsValid:1];
  }

  if (v311->_didSetObjectSaliencyRectsData)
  {
    additionalAttributes34 = [objectCopy additionalAttributes];
    [additionalAttributes34 setObjectSaliencyRectsData:v311->_objectSaliencyRectsData];
  }

  if (v311->_alternateImportImageDate)
  {
    additionalAttributes35 = [objectCopy additionalAttributes];
    [additionalAttributes35 setAlternateImportImageDate:v311->_alternateImportImageDate];
  }

  if (v311->_didSetSavedAssetType)
  {
    [objectCopy setSavedAssetType:selfCopy->_savedAssetType];
  }

  if (didSetSceneClassifications)
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [objectCopy setAnalysisStateModificationDate:date2];
  }

  if (v479)
  {
    photoLibrary4 = [objectCopy photoLibrary];
    maskForFeatureAvailability = [MEMORY[0x1E69BE2B8] maskForFeatureAvailability];
    [photoLibrary4 signalBackgroundProcessingNeededForWorkerTypes:maskForFeatureAvailability];
  }

  if (selfCopy->_didSetKeywordTitles)
  {
    keywordManager = [libraryCopy keywordManager];
    v355 = [keywordManager setKeywords:selfCopy->_keywordTitles forAsset:objectCopy];
    if ((v355 & 1) == 0)
    {
      v395 = MEMORY[0x1E696ABC0];
      v578 = *MEMORY[0x1E696A578];
      v579 = @"Setting keywords failed";
      v396 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v579 forKeys:&v578 count:1];
      v397 = [v395 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v396];

      objectCopy = v492;
      v471 = v397;
    }
  }

  v10 = v471;
  if (selfCopy->_didSetScreenTimeDeviceImageSensitivity)
  {
    v398 = [(PHAssetChangeRequest *)selfCopy getMediaAnalysisAttributesForAsset:objectCopy];
    [v398 setScreenTimeDeviceImageSensitivity:selfCopy->_screenTimeDeviceImageSensitivity];
  }

  pathsToNewAssetResourcesByAssetResourceType = selfCopy->_pathsToNewAssetResourcesByAssetResourceType;
  if (pathsToNewAssetResourcesByAssetResourceType)
  {
    v507 = 0u;
    v508 = 0u;
    v505 = 0u;
    v506 = 0u;
    allKeys = [(NSDictionary *)pathsToNewAssetResourcesByAssetResourceType allKeys];
    v400 = [allKeys countByEnumeratingWithState:&v505 objects:v577 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v407 = *(*(&v505 + 1) + 8 * v406);
        if (!PHAssetResourceTypeClientCanAppendToOrDeleteFromAsset([v407 integerValue]))
        {
          v407 = [*(v403 + 3776) stringWithFormat:@"adding asset resource of type %@ is not allowed", v407];
          v415 = *(v405 + 3008);
          v573 = v404;
          v488 = v407;
          v574 = v407;
          v416 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v574 forKeys:&v573 count:1];
          v417 = [v415 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3111 userInfo:v416];
LABEL_473:
          v426 = v417;

          v355 = 0;
          v10 = v426;
          v408 = v488;
          goto LABEL_474;
        }

        v408 = [(NSDictionary *)selfCopy->_pathsToNewAssetResourcesByAssetResourceType objectForKeyedSubscript:v407];
        integerValue8 = [v407 integerValue];
        if (integerValue8 <= 100)
        {
          if ((integerValue8 - 1) < 0x13)
          {
            goto LABEL_471;
          }

          if (integerValue8 == 20)
          {
            v504 = 0;
            v412 = [v492 installExistingAlchemistImageAtPath:v408 error:&v504];
            v413 = v504;
            goto LABEL_479;
          }
        }

        else
        {
          v410 = integerValue8 - 110;
          if ((integerValue8 - 110) <= 9)
          {
            if (((1 << v410) & 0x2F) != 0)
            {
              goto LABEL_471;
            }

            if (((1 << v410) & 0x3C0) != 0)
            {
              v411 = ResourceRecipeIDForDeletableAssetResourceType(integerValue8);
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

          if ((integerValue8 - 101) < 8)
          {
LABEL_471:
            v488 = v408;
            v4072 = [*(v403 + 3776) stringWithFormat:@"adding asset resource type %@ is allowed but not currently supported", v407];
            v419 = *(v405 + 3008);
            v575 = v404;
            v576 = v4072;
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

          if (integerValue8 == 109)
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
      v427 = [allKeys countByEnumeratingWithState:&v505 objects:v577 count:16];
      v401 = v427;
      if (!v427)
      {
LABEL_484:

        objectCopy = v492;
        temporalFacesHelper = v481;
        break;
      }
    }
  }

  assetResourceTypesToDelete = selfCopy->_assetResourceTypesToDelete;
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
          integerValue9 = [v434 integerValue];
          if (PHAssetResourceTypeClientCanAppendToOrDeleteFromAsset(integerValue9))
          {
            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            v437 = PathForDeletableAssetResourceType(v492, integerValue9);
            v496 = 0;
            v438 = [defaultManager2 removeItemAtPath:v437 error:&v496];
            v434 = v496;

            if (v438 & 1) != 0 || (PLIsErrorFileNotFound())
            {
              if (v355)
              {
                [v492 deleteResourcesWithRecipeID:ResourceRecipeIDForDeletableAssetResourceType(integerValue9) andVersion:3];
                v355 = 1;
              }

              else
              {
                v355 = 0;
              }
            }

            else
            {
              v434 = v434;

              v355 = 0;
              v429 = v434;
            }

            temporalFacesHelper = v481;
          }

          else
          {
            v434 = [MEMORY[0x1E696AEC0] stringWithFormat:@"deleting asset resource of type %@ is not allowed", v434];
            v440 = MEMORY[0x1E696ABC0];
            v570 = v486;
            v571 = v434;
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
      objectCopy = v492;
      v10 = v429;
      goto LABEL_517;
    }

    objectCopy = v492;
  }

  else
  {
    if ((v355 & 1) == 0)
    {
      goto LABEL_511;
    }

    v429 = v10;
  }

  p_isa = &selfCopy->super.super.isa;
  if (selfCopy->_deleteContextualVideoThumbnails)
  {
    v495 = v429;
    v444 = [objectCopy deleteContextualVideoThumbnailFilesWithError:&v495];
    v10 = v495;

    if (v444)
    {
      v429 = v10;
      p_isa = &selfCopy->super.super.isa;
      goto LABEL_509;
    }

LABEL_511:
    LOBYTE(v30) = 0;
    goto LABEL_517;
  }

LABEL_509:
  mutableObjectIDsAndUUIDs4 = [p_isa[66] mutableObjectIDsAndUUIDs];

  if (mutableObjectIDsAndUUIDs4)
  {
    v494 = v429;
    v446 = [p_isa applyMutationsToAssetRelationshipWithKey:@"cloudComments" asset:objectCopy error:&v494];
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

  mutableObjectIDsAndUUIDs5 = [(PHRelationshipChangeRequestHelper *)selfCopy->_likesHelper mutableObjectIDsAndUUIDs];

  if (mutableObjectIDsAndUUIDs5)
  {
    v493 = v10;
    LOBYTE(v30) = [(PHAssetChangeRequest *)selfCopy applyMutationsToAssetRelationshipWithKey:@"likeComments" asset:objectCopy error:&v493];
    v448 = v493;

    v10 = v448;
  }

  else
  {
    LOBYTE(v30) = 1;
  }

LABEL_517:
  v449 = selfCopy;
  if (selfCopy->_libraryScopeOriginatorUUIDs)
  {
    libraryScope = [objectCopy libraryScope];
    if (libraryScope)
    {
      v451 = MEMORY[0x1E69BE7D8];
      [(NSSet *)selfCopy->_libraryScopeOriginatorUUIDs allObjects];
      v453 = v452 = v10;
      v454 = [v451 participantsWithUUIDs:v453 inPhotoLibrary:libraryCopy];

      v455 = [MEMORY[0x1E695DFD8] setWithArray:v454];
      [objectCopy setLibraryScope:libraryScope withContributors:v455];

      v10 = v452;
    }

    v449 = selfCopy;
  }

  if (v449->_didSetPtpTrashedState)
  {
    managedObjectContext2 = [objectCopy additionalAttributes];
    [managedObjectContext2 setPtpTrashedState:v449->_ptpTrashedState];
    v456 = 1;
    facesHelper = v476;
LABEL_523:

    goto LABEL_525;
  }

  v456 = 1;
  facesHelper = v476;
LABEL_525:

  errorCopy2 = error;
  if (!v456)
  {
    LOBYTE(v30) = 0;
    goto LABEL_530;
  }

LABEL_526:
  if (errorCopy2 && (v30 & 1) == 0)
  {
    v457 = v10;
    LOBYTE(v30) = 0;
    *errorCopy2 = v10;
  }

LABEL_530:

  return v30;
}

- (BOOL)validateReadAccessForContentURL:(id)l assetResource:(id)resource error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  resourceCopy = resource;
  if ([lCopy isFileURL])
  {
    if (!PLIsAssetsd() || -[PHChangeRequest isClientEntitled](self, "isClientEntitled") || ([resourceCopy duplicateAllowsReadAccess] & 1) != 0)
    {
      goto LABEL_7;
    }

    path = [lCopy path];
    if ([MEMORY[0x1E69BF2E0] processWithID:self->_clientProcessIdentifier canReadSandboxForPath:path])
    {

LABEL_7:
      v11 = 0;
      v12 = 1;
      goto LABEL_12;
    }

    v17 = MEMORY[0x1E696ABC0];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid URL %@", lCopy, *MEMORY[0x1E696A578]];
    v20 = v14;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v11 = [v17 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v18];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    path = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid URL %@", lCopy];
    v22[0] = path;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v11 = [v13 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v14];
  }

  if (error)
  {
    v15 = v11;
    v12 = 0;
    *error = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_12:

  return v12;
}

- (id)getPhotoAnalysisAttributesForAsset:(id)asset
{
  assetCopy = asset;
  photoAnalysisAttributes = [assetCopy photoAnalysisAttributes];

  if (photoAnalysisAttributes)
  {
    photoAnalysisAttributes2 = [assetCopy photoAnalysisAttributes];
  }

  else
  {
    managedObjectContext = [assetCopy managedObjectContext];
    entityName = [MEMORY[0x1E69BE610] entityName];
    photoAnalysisAttributes2 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext();

    if (photoAnalysisAttributes2)
    {
      [assetCopy setPhotoAnalysisAttributes:photoAnalysisAttributes2];
    }
  }

  return photoAnalysisAttributes2;
}

- (BOOL)validateWriteAccessForContentURL:(id)l error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([lCopy isFileURL])
  {
    if (!PLIsAssetsd() || [(PHChangeRequest *)self isClientEntitled])
    {
      goto LABEL_6;
    }

    path = [lCopy path];
    if ([MEMORY[0x1E69BF2E0] processWithID:self->_clientProcessIdentifier canWriteSandboxForPath:path])
    {

LABEL_6:
      v8 = 0;
      v9 = 1;
      goto LABEL_11;
    }

    v14 = MEMORY[0x1E696ABC0];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid URL %@", lCopy, *MEMORY[0x1E696A578]];
    v17 = v11;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v8 = [v14 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v15];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    path = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid URL %@", lCopy];
    v19[0] = path;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v8 = [v10 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v11];
  }

  if (error)
  {
    v12 = v8;
    v9 = 0;
    *error = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (BOOL)validateContentEditingOutput:(id)output error:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  outputCopy = output;
  adjustmentData = [outputCopy adjustmentData];
  if (adjustmentData)
  {
    v43 = 0;
    v8 = [(PHAssetChangeRequest *)self validateAdjustmentDataForAssetMutation:adjustmentData error:&v43];
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

  renderedContentURL = [outputCopy renderedContentURL];
  v13 = renderedContentURL;
  if (v8 && renderedContentURL)
  {
    v42 = v9;
    v14 = [(PHAssetChangeRequest *)self validateWriteAccessForContentURL:renderedContentURL error:&v42];
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
    if (!error)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if ([outputCopy isAsyncAdjustment])
  {
    v41 = v9;
    v16 = [(PHAssetChangeRequest *)self _validateAsyncContentEditingOutputPreviewRenderURLs:outputCopy error:&v41];
    v17 = v41;
LABEL_11:
    v15 = v17;
    goto LABEL_12;
  }

  if (([outputCopy isAsyncAdjustment] & 1) == 0)
  {
    mediaType = [outputCopy mediaType];
    if (mediaType == 2)
    {
      if (v13)
      {
        v38 = v9;
        v19 = [(PHAssetChangeRequest *)self validateVideoURLForAssetMutation:v13 error:&v38];
        v20 = v38;
        goto LABEL_24;
      }

      v29 = objc_alloc(MEMORY[0x1E69C0910]);
      formatIdentifier = [adjustmentData formatIdentifier];
      formatVersion = [adjustmentData formatVersion];
      data = [adjustmentData data];
      v33 = [v29 initWithFormatIdentifier:formatIdentifier formatVersion:formatVersion data:data baseVersion:0 editorBundleID:0 renderTypes:0];

      if ([v33 isRecognizedFormat])
      {

LABEL_26:
        if ([outputCopy isLoopingLivePhoto])
        {
          v37 = v9;
          v16 = [(PHAssetChangeRequest *)self _validateAndGenerateStillImageForLoopingLivePhotoWithContentEditingOutput:outputCopy error:&v37];
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
      if (mediaType == 1)
      {
        if (![outputCopy isLoopingLivePhoto])
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
        if (!error)
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
          *error = v15;
        }

        goto LABEL_33;
      }

      v21 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A578];
      v22 = MEMORY[0x1E696AEC0];
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:mediaType];
      v24 = [v22 stringWithFormat:@"Cannot modify content type %@", v23];
      v45 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v15 = [v21 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v25];

      v16 = 0;
      v9 = v23;
    }

LABEL_12:

    if (!error)
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

- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error
{
  v90[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v78 = 0;
  v8 = [helper validateMutationsToManagedObject:objectCopy error:&v78];
  v9 = v78;

  if (!v8)
  {
    goto LABEL_8;
  }

  assetDescription = [(PHAssetChangeRequest *)self assetDescription];
  v77 = v9;
  v11 = [(PHAssetChangeRequest *)self validateAssetDescription:assetDescription error:&v77];
  v12 = v77;

  if (!v11)
  {
    v9 = v12;
LABEL_8:
    contentEditingOutput = [(PHAssetChangeRequest *)self contentEditingOutput];
    goto LABEL_9;
  }

  accessibilityDescription = [(PHAssetChangeRequest *)self accessibilityDescription];
  v76 = v12;
  v14 = [(PHAssetChangeRequest *)self validateAccessibilityDescription:accessibilityDescription error:&v76];
  v9 = v76;

  contentEditingOutput2 = [(PHAssetChangeRequest *)self contentEditingOutput];
  contentEditingOutput = contentEditingOutput2;
  if (!v14)
  {
    goto LABEL_9;
  }

  if ([contentEditingOutput2 isOnlyChangingOriginalChoice])
  {
    originalResourceChoice = [contentEditingOutput originalResourceChoice];
    integerValue = [originalResourceChoice integerValue];

    if (integerValue >= 2)
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

    if (([objectCopy isRAWPlusJPEG] & 1) == 0)
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

  if (contentEditingOutput && ([contentEditingOutput isOnlyChangingOriginalChoice] & 1) == 0)
  {
    v75 = v9;
    v55 = [(PHAssetChangeRequest *)self validateContentEditingOutput:contentEditingOutput error:&v75];
    v56 = v75;

    originalResourceChoice2 = [contentEditingOutput originalResourceChoice];

    if (!originalResourceChoice2)
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

    originalResourceChoice3 = [contentEditingOutput originalResourceChoice];
    integerValue2 = [originalResourceChoice3 integerValue];

    v60 = objectCopy;
    pathForOriginalFile = [v60 pathForOriginalFile];
    pathExtension = [pathForOriginalFile pathExtension];

    v63 = [MEMORY[0x1E69BE540] uniformTypeIdentifierFromPathExtension:pathExtension assetType:{objc_msgSend(v60, "kind")}];
    v74 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v63];
    if ([v74 conformsToType:*MEMORY[0x1E6982F88]] && (integerValue2 - 1) < 2 || objc_msgSend(v60, "isRAWPlusJPEG") && (integerValue2 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v72 = MEMORY[0x1E696ABC0];
      v85 = *MEMORY[0x1E696A578];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid original resource choice: %ld", integerValue2];
      v73 = v60;
      v64 = v63;
      v66 = v65 = v56;
      v86 = v66;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v68 = v67 = pathExtension;
      v9 = [v72 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v68];

      v63 = v64;
      v60 = v73;

      pathExtension = v67;
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

  photoLibrary = [(PHChangeRequest *)self photoLibrary];
  if (![photoLibrary isCloudPhotoLibraryEnabled])
  {
LABEL_23:

    goto LABEL_24;
  }

  entity = [objectCopy entity];
  v28 = MEMORY[0x1E69BE540];
  managedObjectContext = [objectCopy managedObjectContext];
  v30 = [v28 entityInManagedObjectContext:managedObjectContext];
  v31 = [entity isKindOfEntity:v30];

  if (v31)
  {
    photoLibrary = objectCopy;
    master = [photoLibrary master];
    if (master)
    {
      additionalAttributes = [photoLibrary additionalAttributes];
      originalResourceChoice4 = [additionalAttributes originalResourceChoice];
      v35 = [originalResourceChoice4 integerValue] == 1;

      uuid = [photoLibrary uuid];
      LODWORD(originalResourceChoice4) = [master allOriginalsAreLocallyAvailableForAssetUuid:uuid useOriginalAltInsteadOfOriginal:v35];

      if (!originalResourceChoice4)
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
    v37 = objectCopy;
    [MEMORY[0x1E69BF328] maskForAllowedToPromoteToGuestAsset];
    [v37 savedAssetType];
    if (!PLValidatedSavedAssetTypeApplies())
    {
      v47 = MEMORY[0x1E696AEC0];
      uuid2 = [v37 uuid];
      savedAssetType = [v37 savedAssetType];
      [v37 savedAssetType];
      v50 = PLValidatedSavedAssetTypeDescription();
      v51 = [v47 stringWithFormat:@"Not allowed to promote asset %@ savedAssetType %hd(%@) to Guest", uuid2, savedAssetType, v50];

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

  v38 = objectCopy;
  [MEMORY[0x1E69BF328] maskForAllowedToPromoteToGuestAsset];
  [v38 savedAssetType];
  v23 = PLValidatedSavedAssetTypeApplies();
  if ((v23 & 1) == 0)
  {
    v39 = MEMORY[0x1E696AEC0];
    uuid3 = [v38 uuid];
    savedAssetType2 = [v38 savedAssetType];
    [v38 savedAssetType];
    v42 = PLValidatedSavedAssetTypeDescription();
    v43 = [v39 stringWithFormat:@"Not allowed to reset promote asset %@ savedAssetType %hd(%@) to Guest", uuid3, savedAssetType2, v42];

    v44 = MEMORY[0x1E696ABC0];
    v79 = *MEMORY[0x1E696A278];
    v80 = v43;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    v46 = [v44 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v45];

    v9 = v46;
  }

LABEL_10:
  if (error && (v23 & 1) == 0)
  {
    v24 = v9;
    v23 = 0;
    *error = v9;
  }

LABEL_13:

  return v23;
}

- (BOOL)_validateAsyncContentEditingOutputPreviewRenderURLs:(id)ls error:(id *)error
{
  lsCopy = ls;
  if ([lsCopy mediaType] == 2)
  {
    renderedVideoPosterURL = [lsCopy renderedVideoPosterURL];
    v16 = 0;
    v8 = [(PHAssetChangeRequest *)self _validateImageURLForAssetMutation:renderedVideoPosterURL error:&v16];
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
  renderedPreviewContentURL = [lsCopy renderedPreviewContentURL];
  v15 = v9;
  v10 = [(PHAssetChangeRequest *)self _validateImageURLForAssetMutation:renderedPreviewContentURL error:&v15];
  v9 = v15;

  if (error && !v10)
  {
    v13 = v9;
    v10 = 0;
    *error = v9;
  }

LABEL_8:

  return v10;
}

- (BOOL)validateAccessibilityDescription:(id)description error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (!descriptionCopy || [(PHChangeRequest *)self isClientEntitled]|| [(PHAssetChangeRequest *)self duplicateAllowsPrivateMetadata])
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

    if (error)
    {
      v12 = v7;
      v8 = 0;
      *error = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)validateAssetDescription:(id)description error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (!descriptionCopy || [(PHChangeRequest *)self isClientEntitled]|| [(PHAssetChangeRequest *)self duplicateAllowsPrivateMetadata])
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

    if (error)
    {
      v12 = v7;
      v8 = 0;
      *error = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)validateAdjustmentDataForAssetMutation:(id)mutation error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  mutationCopy = mutation;
  formatIdentifier = [mutationCopy formatIdentifier];
  lowercaseString = [formatIdentifier lowercaseString];
  v9 = [lowercaseString hasPrefix:@"com.apple."];

  if (!v9 || self->_clientEntitled || (-[NSString lowercaseString](self->_editorBundleID, "lowercaseString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 hasPrefix:@"com.apple."], v10, (v11 & 1) != 0))
  {
    data = [mutationCopy data];
    if (![data length])
    {
      v18 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v29 = @"Adjustment data is missing";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v20 = v18;
      v21 = 3303;
      goto LABEL_11;
    }

    v13 = [data length];
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
    data = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid format identifier %@", formatIdentifier];
    v31[0] = data;
    v15 = MEMORY[0x1E695DF20];
    v16 = v31;
    v17 = &v30;
  }

  v19 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
  v20 = v14;
  v21 = 3302;
LABEL_11:
  v22 = [v20 ph_errorWithDomain:@"PHPhotosErrorDomain" code:v21 userInfo:v19];

  if (error)
  {
    v24 = v22;
    v23 = 0;
    *error = v22;
  }

  else
  {
    v23 = 0;
  }

LABEL_14:

  return v23;
}

- (BOOL)validateVideoURLForAssetMutation:(id)mutation error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  mutationCopy = mutation;
  if (mutationCopy)
  {
    v6 = objc_alloc_init(PHValidator);
    LOBYTE(error) = [(PHValidator *)v6 validateURL:mutationCopy withOptions:32 error:error];
  }

  else if (error)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"failed to validate with nil url";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v8];

    LOBYTE(error) = 0;
  }

  return error;
}

- (BOOL)_validateImageURLForAssetMutation:(id)mutation error:(id *)error
{
  v62[1] = *MEMORY[0x1E69E9840];
  mutationCopy = mutation;
  v7 = CGImageSourceCreateWithURL(mutationCopy, 0);
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

  helper = [(PHChangeRequest *)self helper];
  clientLinkedAgainst = [helper clientLinkedAgainst];
  clientLinkedOnOrAfterFall2023OSVersions = [clientLinkedAgainst clientLinkedOnOrAfterFall2023OSVersions];

  if (clientLinkedOnOrAfterFall2023OSVersions)
  {
    v15 = MEMORY[0x1E6982C40];
    pathExtension = [(__CFURL *)mutationCopy pathExtension];
    v9 = [v15 typeWithFilenameExtension:pathExtension];

    if (!v9 || ([v9 isDynamic] & 1) != 0 || (objc_msgSend(v11, "isEqual:", v9) & 1) == 0 && (!objc_msgSend(v11, "isEqual:", *MEMORY[0x1E6982E10]) || (v50 = *MEMORY[0x1E6983138], !objc_msgSend(v11, "conformsToType:", *MEMORY[0x1E6983138])) || !objc_msgSend(v9, "conformsToType:", v50)))
    {
      v17 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A278];
      v18 = MEMORY[0x1E696AEC0];
      path = [(__CFURL *)mutationCopy path];
      v20 = [v18 stringWithFormat:@"Invalid image type (%@) for specified path: (%@)", v11, path];
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
    intValue = [v36 intValue];

    if (intValue != 1)
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

  intValue2 = [v43 intValue];

  if (intValue2 != 1)
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
  if (error)
  {
    v32 = v31;
    v33 = 0;
    *error = v31;
  }

  else
  {
    v33 = 0;
  }

LABEL_19:

  return v33;
}

- (BOOL)_validateAndGenerateStillImageForLoopingLivePhotoWithContentEditingOutput:(id)output error:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  outputCopy = output;
  renderedContentURL = [outputCopy renderedContentURL];
  v8 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:renderedContentURL options:0];
  v9 = [objc_alloc(MEMORY[0x1E69C0718]) initWithAVAsset:v8 timeZoneLookup:0];
  if ([v9 isLoopingVideo])
  {
    shouldPreferHEICForRenderedImages = [outputCopy shouldPreferHEICForRenderedImages];
    v11 = objc_opt_class();
    photoLibrary = [(PHChangeRequest *)self photoLibrary];
    photoLibraryURL = [photoLibrary photoLibraryURL];
    v14 = [v11 imageRenderURLUsingHEICFormat:shouldPreferHEICForRenderedImages appropriateForURL:photoLibraryURL];

    [outputCopy setRenderedContentURL:v14];
    [outputCopy setRenderedVideoComplementContentURL:renderedContentURL];
    v34 = [objc_alloc(MEMORY[0x1E6987E68]) initWithAsset:v8];
    v15 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:? atTime:? actualTime:? error:?];
    v33 = 0;
    if (v15)
    {
      renderedContentURL2 = [outputCopy renderedContentURL];
      v17 = MEMORY[0x1E6982E00];
      if (!shouldPreferHEICForRenderedImages)
      {
        v17 = MEMORY[0x1E6982E58];
      }

      identifier = [*v17 identifier];
      v19 = CGImageDestinationCreateWithURL(renderedContentURL2, identifier, 1uLL, 0);

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
          if (error)
          {
            *error = v22;
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
        if (error)
        {
          *error = v30;
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
      if (error)
      {
        *error = v27;
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
    if (error)
    {
      *error = v24;
    }
  }

  return v20;
}

- (void)setViewPresentation:(signed __int16)presentation
{
  self->_viewPresentation = presentation;
  self->_didSetViewPresentation = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setLocalAnalysisStage:(signed __int16)stage
{
  self->_localAnalysisStage = stage;
  self->_didSetLocalAnalysisStage = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setFaceAnalysisVersion:(signed __int16)version
{
  self->_faceAnalysisVersion = version;
  self->_didSetFaceAnalysisVersion = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)_setSyndicationIdentifier:(id)identifier
{
  self->_didSetSyndicationIdentifier = 1;
  objc_storeStrong(&self->_syndicationIdentifier, identifier);

  [(PHChangeRequest *)self didMutate];
}

- (void)setSyndicationIdentifierOnMomentSharedAsset:(id)asset
{
  v9 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if ([(PHAsset *)self->_originalAsset sourceType]== 8)
  {
    [(PHAssetChangeRequest *)self _setSyndicationIdentifier:assetCopy];
  }

  else
  {
    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      uuid = [(PHObject *)self->_originalAsset uuid];
      v7 = 138412290;
      v8 = uuid;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_FAULT, "syndicationIdentifier can only be set on PHAssetSourceTypeMomentShared assets: %@", &v7, 0xCu);
    }
  }
}

- (void)setSyndicationProcessingVersion:(unint64_t)version
{
  self->_didSetSyndicationProcessingVersion = 1;
  self->_syndicationProcessingVersion = version;
  [(PHChangeRequest *)self didMutate];
}

- (void)setSyndicationProcessingValue:(unsigned __int16)value
{
  self->_didSetSyndicationProcessingValue = 1;
  self->_syndicationProcessingValue = value;
  [(PHChangeRequest *)self didMutate];
}

- (void)setScreenTimeDeviceImageSensitivity:(signed __int16)sensitivity
{
  self->_didSetScreenTimeDeviceImageSensitivity = 1;
  self->_screenTimeDeviceImageSensitivity = sensitivity;
  [(PHChangeRequest *)self didMutate];
}

- (void)setLibraryScopeContributors:(id)contributors
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = [contributors valueForKey:@"uuid"];
  v6 = [v4 setWithArray:v5];
  libraryScopeOriginatorUUIDs = self->_libraryScopeOriginatorUUIDs;
  self->_libraryScopeOriginatorUUIDs = v6;

  [(PHChangeRequest *)self didMutate];
}

- (void)setTimeZone:(id)zone withDate:(id)date
{
  self->_didSetTimeZone = 1;
  dateCopy = date;
  zoneCopy = zone;
  name = [zoneCopy name];
  timeZoneName = self->_timeZoneName;
  self->_timeZoneName = name;

  v10 = [zoneCopy secondsFromGMTForDate:dateCopy];
  self->_timeZoneOffsetValue = v10;

  [(PHChangeRequest *)self didMutate];
}

- (void)resetWallpaperProperties
{
  self->_resetWallpaperProperties = 1;
  if (self->_didSetWallpaperPropertiesData)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3385 description:@"A change request should not have wallpaper proeprties data set if it is being reset."];
  }

  [(PHChangeRequest *)self didMutate];
}

- (void)resetVisualSearchAttributes
{
  self->_resetVisualSearchProperties = 1;
  if (self->_didSetVisualSearchProperties)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3379 description:@"A change request should not have VisualSearch data set if it is being reset."];
  }

  [(PHChangeRequest *)self didMutate];
}

- (void)setStickerConfidenceScore:(float)score stickerAlgorithmVersion:(int64_t)version
{
  self->_didSetVisualSearchProperties = 1;
  self->_didSetStickerConfidenceScore = 1;
  self->_stickerConfidenceScore = score;
  self->_stickerConfidenceScoreAlgorithmVersion = version;
  [(PHChangeRequest *)self didMutate];
}

- (void)setCompactVideoSCSensitivityAnalysis:(int64_t)analysis
{
  self->_compactSCSensitivityAnalysis = analysis;
  currentVideoSensitivityAnalysisVersion = [MEMORY[0x1E69BE5A0] currentVideoSensitivityAnalysisVersion];
  self->_videoSensitivityAnalysisVersion = [currentVideoSensitivityAnalysisVersion shortValue];

  self->_didSetCompactVideoSCSensitivityAnalysis = 1;

  [(PHChangeRequest *)self didMutate];
}

- (void)setCompactVideoSCSensitivityAnalysis:(int64_t)analysis videoSensitivityAnalysisVersion:(signed __int16)version
{
  self->_compactSCSensitivityAnalysis = analysis;
  self->_videoSensitivityAnalysisVersion = version;
  self->_didSetCompactVideoSCSensitivityAnalysis = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setCompactImageSCSensitivityAnalysis:(int64_t)analysis
{
  self->_compactSCSensitivityAnalysis = analysis;
  self->_didSetCompactImageSCSensitivityAnalysis = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setVisualSearchData:(id)data stickerConfidenceScore:(float)score algorithmVersion:(int64_t)version adjustmentVersion:(id)adjustmentVersion
{
  dataCopy = data;
  adjustmentVersionCopy = adjustmentVersion;
  self->_didSetVisualSearchProperties = 1;
  self->_didSetStickerConfidenceScore = 1;
  self->_didSetVisualSearchData = 1;
  if (self->_resetVisualSearchProperties)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3337 description:@"A change request should be resetting VisualSearch data set if it is setting new data."];
  }

  if (version <= 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3339 description:@"Cannot set a zero algorithm version"];

    if (adjustmentVersionCopy)
    {
      goto LABEL_5;
    }
  }

  else if (adjustmentVersionCopy)
  {
    goto LABEL_5;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3340 description:{@"Invalid parameter not satisfying: %@", @"adjustmentVersion"}];

LABEL_5:
  visualSearchData = self->_visualSearchData;
  self->_visualSearchData = dataCopy;
  v14 = dataCopy;

  self->_stickerConfidenceScore = score;
  self->_stickerConfidenceScoreAlgorithmVersion = version;
  self->_visualSearchAlgorithmVersion = version;
  visualSearchAdjustmentVersion = self->_visualSearchAdjustmentVersion;
  self->_visualSearchAdjustmentVersion = adjustmentVersionCopy;

  [(PHChangeRequest *)self didMutate];
}

- (void)setVisualSearchData:(id)data algorithmVersion:(int64_t)version adjustmentVersion:(id)adjustmentVersion
{
  dataCopy = data;
  adjustmentVersionCopy = adjustmentVersion;
  self->_didSetVisualSearchProperties = 1;
  self->_didSetVisualSearchData = 1;
  if (self->_resetVisualSearchProperties)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3323 description:@"A change request should be resetting VisualSearch data set if it is setting new data."];
  }

  if (version <= 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3325 description:@"Cannot set a zero algorithm version"];

    if (adjustmentVersionCopy)
    {
      goto LABEL_5;
    }
  }

  else if (adjustmentVersionCopy)
  {
    goto LABEL_5;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3326 description:{@"Invalid parameter not satisfying: %@", @"adjustmentVersion"}];

LABEL_5:
  visualSearchData = self->_visualSearchData;
  self->_visualSearchData = dataCopy;
  v12 = dataCopy;

  self->_visualSearchAlgorithmVersion = version;
  visualSearchAdjustmentVersion = self->_visualSearchAdjustmentVersion;
  self->_visualSearchAdjustmentVersion = adjustmentVersionCopy;

  [(PHChangeRequest *)self didMutate];
}

- (void)resetTextUnderstandingAttributes
{
  if (self->_didSetTextUnderstandingProperties)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3316 description:@"A change request should not have TU data set if it is being reset."];
  }

  self->_resetTextUnderstandingProperties = 1;
}

- (void)setTextUnderstandingData:(id)data version:(int64_t)version
{
  dataCopy = data;
  if (self->_resetTextUnderstandingProperties)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3308 description:@"A change request should not be resetting OCR data set if it is setting new TU data."];
  }

  self->_didSetTextUnderstandingProperties = 1;
  textUnderstandingData = self->_textUnderstandingData;
  self->_textUnderstandingData = dataCopy;

  self->_textUnderstandingVersion = version;

  [(PHChangeRequest *)self didMutate];
}

- (void)resetCharacterRecognitionAttributes
{
  self->_resetCharacterRecognitionProperties = 1;
  if (self->_didSetCharacterRecognitionData)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3303 description:@"A change request should not have OCR data set if it is being reset."];
  }

  [(PHChangeRequest *)self didMutate];
}

- (void)setCharacterRecognitionData:(id)data machineReadableCodeData:(id)codeData algorithmVersion:(int64_t)version adjustmentVersion:(id)adjustmentVersion
{
  dataCopy = data;
  codeDataCopy = codeData;
  adjustmentVersionCopy = adjustmentVersion;
  self->_didSetCharacterRecognitionData = 1;
  if (self->_resetCharacterRecognitionProperties)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3290 description:@"A change request should not be resetting OCR data set if it is setting new data."];
  }

  if (version <= 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3292 description:@"Cannot set a zero algorithm version"];

    if (adjustmentVersionCopy)
    {
      goto LABEL_5;
    }
  }

  else if (adjustmentVersionCopy)
  {
    goto LABEL_5;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3293 description:{@"Invalid parameter not satisfying: %@", @"adjustmentVersion"}];

LABEL_5:
  characterRecognitionData = self->_characterRecognitionData;
  self->_characterRecognitionData = dataCopy;
  v15 = dataCopy;

  machineReadableCodeData = self->_machineReadableCodeData;
  self->_machineReadableCodeData = codeDataCopy;
  v17 = codeDataCopy;

  self->_characterRecognitionAlgorithmVersion = version;
  characterRecognitionAdjustmentVersion = self->_characterRecognitionAdjustmentVersion;
  self->_characterRecognitionAdjustmentVersion = adjustmentVersionCopy;

  [(PHChangeRequest *)self didMutate];
}

- (void)setColorNormalizationData:(id)data
{
  v4 = [data copy];
  colorNormalizationData = self->_colorNormalizationData;
  self->_colorNormalizationData = v4;

  [(PHChangeRequest *)self didMutate];
}

- (void)setProbableRotationDirectionConfidence:(float)confidence
{
  self->_didSetProbableRotationDirectionConfidence = 1;
  self->_probableRotationDirectionConfidence = confidence;
  [(PHChangeRequest *)self didMutate];
}

- (void)setProbableRotationDirection:(signed __int16)direction
{
  self->_didSetProbableRotationDirection = 1;
  self->_probableRotationDirection = direction;
  [(PHChangeRequest *)self didMutate];
}

- (void)setAudioClassification:(signed __int16)classification
{
  self->_didSetAudioClassification = 1;
  self->_audioClassification = classification;
  [(PHChangeRequest *)self didMutate];
}

- (void)setFaceCount:(unint64_t)count
{
  self->_didSetFaceCount = 1;
  self->_faceCount = count;
  [(PHChangeRequest *)self didMutate];
}

- (void)setSettlingEffectScore:(float)score
{
  self->_didSetSettlingEffectScore = 1;
  self->_settlingEffectScore = score;
  [(PHChangeRequest *)self didMutate];
}

- (void)setAudioScore:(float)score
{
  self->_didSetAudioScore = 1;
  self->_audioScore = score;
  [(PHChangeRequest *)self didMutate];
}

- (void)setActivityScore:(float)score
{
  self->_didSetActivityScore = 1;
  self->_activityScore = score;
  [(PHChangeRequest *)self didMutate];
}

- (void)setVideoScore:(float)score
{
  self->_didSetVideoScore = 1;
  self->_videoScore = score;
  [(PHChangeRequest *)self didMutate];
}

- (void)setVideoStickerSuggestionScore:(float)score
{
  self->_didSetVideoStickerSuggestionScore = 1;
  self->_videoStickerSuggestionScore = score;
  [(PHChangeRequest *)self didMutate];
}

- (void)setAutoplaySuggestionScore:(float)score
{
  self->_didSetAutoplaySuggestionScore = 1;
  self->_autoplaySuggestionScore = score;
  [(PHChangeRequest *)self didMutate];
}

- (void)setWallpaperScore:(float)score
{
  self->_didSetWallpaperScore = 1;
  self->_wallpaperScore = score;
  [(PHChangeRequest *)self didMutate];
}

- (void)setExposureScore:(float)score
{
  self->_didSetExposureScore = 1;
  self->_exposureScore = score;
  [(PHChangeRequest *)self didMutate];
}

- (void)setBlurrinessScore:(float)score
{
  self->_didSetBlurrinessScore = 1;
  self->_blurrinessScore = score;
  [(PHChangeRequest *)self didMutate];
}

- (void)setMediaAnalysisTimeStamp:(id)stamp
{
  self->_didSetMediaAnalysisTimeStamp = 1;
  objc_storeStrong(&self->_mediaAnalysisTimeStamp, stamp);

  [(PHChangeRequest *)self didMutate];
}

- (void)setMediaAnalysisImageVersion:(signed __int16)version
{
  self->_didSetMediaAnalysisImageVersion = 1;
  self->_mediaAnalysisImageVersion = version;
  [(PHChangeRequest *)self didMutate];
}

- (void)setMediaAnalysisVersion:(unint64_t)version
{
  self->_didSetMediaAnalysisVersion = 1;
  self->_mediaAnalysisVersion = version;
  [(PHChangeRequest *)self didMutate];
}

- (void)setComputeSyncMediaAnalysisPayload:(id)payload
{
  objc_storeStrong(&self->_computeSyncMediaAnalysisPayload, payload);

  [(PHChangeRequest *)self didMutate];
}

- (void)setBestPlaybackRectWithNormalizedRect:(CGRect)rect
{
  v5 = 0;
  v4 = 0;
  [(PHAssetChangeRequest *)self setRectWithNormalizedRect:&v5 forPackedRect:&v4 forSetFlag:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  self->_packedBestPlaybackRect = v5;
  self->_didSetPackedBestPlaybackRect = v4;
}

- (void)setBestKeyFrame:(CGImage *)frame time:(id *)time
{
  v19 = *MEMORY[0x1E69E9840];
  isVideo = [(PHAsset *)self->_originalAsset isVideo];
  if (frame && isVideo)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF88]);
    identifier = [*MEMORY[0x1E6982E58] identifier];
    v10 = CGImageDestinationCreateWithData(v8, identifier, 1uLL, 0);

    if (v10)
    {
      CGImageDestinationAddImage(v10, frame, 0);
      CGImageDestinationFinalize(v10);
      CFRelease(v10);
    }

    bestKeyFrameJPEGData = self->_bestKeyFrameJPEGData;
    self->_bestKeyFrameJPEGData = v8;
  }

  if (time->var2)
  {
    var3 = time->var3;
    *&self->_bestKeyFrameTime.value = *&time->var0;
    self->_bestKeyFrameTime.epoch = var3;
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      bestKeyFrameTime = self->_bestKeyFrameTime;
      uuid2 = CMTimeCopyDescription(0, &bestKeyFrameTime);
      v15 = [(NSData *)self->_bestKeyFrameJPEGData length];
      uuid = [(PHChangeRequest *)self uuid];
      LODWORD(bestKeyFrameTime.value) = 138412802;
      *(&bestKeyFrameTime.value + 4) = uuid2;
      LOWORD(bestKeyFrameTime.flags) = 2048;
      *(&bestKeyFrameTime.flags + 2) = v15;
      HIWORD(bestKeyFrameTime.epoch) = 2112;
      v18 = uuid;
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
      uuid2 = [(PHChangeRequest *)self uuid];
      LODWORD(bestKeyFrameTime.value) = 138412290;
      *(&bestKeyFrameTime.value + 4) = uuid2;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "Client unsetting best key frame time for asset: %@", &bestKeyFrameTime, 0xCu);
LABEL_11:
    }
  }

  [(PHChangeRequest *)self didMutate];
}

- (void)setAnimatedStickerTimeRange:(id *)range
{
  v4 = *&range->var0.var3;
  v3 = *&range->var1.var1;
  *&self->_animatedStickerTimeRange.start.value = *&range->var0.var0;
  *&self->_animatedStickerTimeRange.start.epoch = v4;
  *&self->_animatedStickerTimeRange.duration.timescale = v3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setBestVideoTimeRange:(id *)range
{
  v4 = *&range->var0.var3;
  v3 = *&range->var1.var1;
  *&self->_bestVideoTimeRange.start.value = *&range->var0.var0;
  *&self->_bestVideoTimeRange.start.epoch = v4;
  *&self->_bestVideoTimeRange.duration.timescale = v3;
  [(PHChangeRequest *)self didMutate];
}

- (void)setWallpaperPropertiesData:(id)data
{
  dataCopy = data;
  if (self->_resetWallpaperProperties)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3127 description:@"A change request should be resetting wallpaper properties data set if it is setting new data."];
  }

  self->_didSetWallpaperPropertiesData = 1;
  wallpaperPropertiesData = self->_wallpaperPropertiesData;
  self->_wallpaperPropertiesData = dataCopy;

  [(PHChangeRequest *)self didMutate];
}

- (void)setWallpaperPropertiesVersion:(unint64_t)version
{
  if (self->_resetWallpaperProperties)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3120 description:@"A change request should be resetting wallpaper properties version set if it is setting new version."];
  }

  self->_didSetWallpaperPropertiesVersion = 1;
  self->_wallpaperPropertiesVersion = version;

  [(PHChangeRequest *)self didMutate];
}

- (void)setWallpaperPropertiesTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  if (self->_resetWallpaperProperties)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:3113 description:@"A change request should be resetting wallpaper properties timestamp set if it is setting new timestamp."];
  }

  self->_didSetWallpaperPropertiesTimestamp = 1;
  wallpaperPropertiesTimestamp = self->_wallpaperPropertiesTimestamp;
  self->_wallpaperPropertiesTimestamp = timestampCopy;

  [(PHChangeRequest *)self didMutate];
}

- (PHAssetChangeRequest)initWithCoder:(id)coder
{
  v333[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"helper"];
  [v5 setChangeRequest:self];
  [v5 setMutated:1];
  v6 = objc_alloc_init(MEMORY[0x1E69BE298]);
  v7 = [(PHAssetChangeRequest *)self initWithHelper:v5];

  if (v7)
  {
    v331 = v5;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detectedFaces"];
    facesHelper = v7->_facesHelper;
    v7->_facesHelper = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"temporalDetectedFaces"];
    temporalFacesHelper = v7->_temporalFacesHelper;
    v7->_temporalFacesHelper = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keywords"];
    keywordsHelper = v7->_keywordsHelper;
    v7->_keywordsHelper = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudComments"];
    commentsHelper = v7->_commentsHelper;
    v7->_commentsHelper = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"likeComments"];
    likesHelper = v7->_likesHelper;
    v7->_likesHelper = v16;

    v7->_clientProcessIdentifier = [v6 clientProcessIdentifier];
    photoKitEntitled = [v6 photoKitEntitled];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didChangeAdjustments"];
    v20 = [coderCopy decodeBoolForKey:v19];

    if (v20)
    {
      [(PHAssetChangeRequest *)v7 markDidChangeAdjustments];
      v21 = objc_opt_class();
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"contentEditingOutput"];
      v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];

      [(PHAssetChangeRequest *)v7 setContentEditingOutput:v23];
      if (photoKitEntitled)
      {
        v24 = objc_opt_class();
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"editorBundleURL"];
        v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
        editorBundleURL = v7->_editorBundleURL;
        v7->_editorBundleURL = v26;

        if (v7->_editorBundleURL)
        {
          v28 = [MEMORY[0x1E696AAE8] bundleWithURL:?];
          bundleIdentifier = [v28 bundleIdentifier];
          editorBundleID = v7->_editorBundleID;
          v7->_editorBundleID = bundleIdentifier;
        }

        if (!v7->_editorBundleID)
        {
          v31 = objc_opt_class();
          v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"editorBundleID"];
          v33 = [coderCopy decodeObjectOfClass:v31 forKey:v32];
          v34 = v7->_editorBundleID;
          v7->_editorBundleID = v33;
        }
      }
    }

    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"originalResourceChoice"];
    v7->_originalResourceChoice = [coderCopy decodeIntegerForKey:v35];

    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetOriginalResourceChoice"];
    v7->_didSetOriginalResourceChoice = [coderCopy decodeBoolForKey:v36];

    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didRevertLocationToOriginal"];
    v7->_didRevertLocationToOriginal = [coderCopy decodeBoolForKey:v37];

    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didUpdateExtendedAttributesUsingOriginalMediaMetadata"];
    v7->_didUpdateExtendedAttributesUsingOriginalMediaMetadata = [coderCopy decodeBoolForKey:v38];

    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didExpungeAllSpatialOverCaptureResources"];
    v7->_didExpungeAllSpatialOverCaptureResources = [coderCopy decodeBoolForKey:v39];

    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didTrashAllSpatialOverCaptureResources"];
    v7->_didTrashAllSpatialOverCaptureResources = [coderCopy decodeBoolForKey:v40];

    v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didUntrashAllSpatialOverCaptureResources"];
    v7->_didUntrashAllSpatialOverCaptureResources = [coderCopy decodeBoolForKey:v41];

    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didExpungeTrashedSpatialOverCaptureResources"];
    v7->_didExpungeTrashedSpatialOverCaptureResources = [coderCopy decodeBoolForKey:v42];

    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didPromoteToGuestAsset"];
    v7->_didPromoteToGuestAsset = [coderCopy decodeBoolForKey:v43];

    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didResetGuestAssetPromotion"];
    v7->_didResetGuestAssetPromotion = [coderCopy decodeBoolForKey:v44];

    v45 = MEMORY[0x1E695DFD8];
    v46 = objc_opt_class();
    v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"updatedLocation"];
    v49 = [coderCopy decodeObjectOfClasses:v47 forKey:v48];
    updatedLocation = v7->_updatedLocation;
    v7->_updatedLocation = v49;

    v51 = objc_opt_class();
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetDescription"];
    v53 = [coderCopy decodeObjectOfClass:v51 forKey:v52];
    assetDescription = v7->_assetDescription;
    v7->_assetDescription = v53;

    v55 = objc_opt_class();
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"accessibilityDescription"];
    v57 = [coderCopy decodeObjectOfClass:v55 forKey:v56];
    accessibilityDescription = v7->_accessibilityDescription;
    v7->_accessibilityDescription = v57;

    v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetTitle"];
    v7->_didSetTitle = [coderCopy decodeBoolForKey:v59];

    if (v7->_didSetTitle)
    {
      v60 = objc_opt_class();
      v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"title"];
      v62 = [coderCopy decodeObjectOfClass:v60 forKey:v61];
      title = v7->_title;
      v7->_title = v62;
    }

    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetKeywordTitles"];
    v7->_didSetKeywordTitles = [coderCopy decodeBoolForKey:v64];

    if (v7->_didSetKeywordTitles)
    {
      v65 = MEMORY[0x1E695DFD8];
      v66 = objc_opt_class();
      v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
      v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"keywordTitles"];
      v69 = [coderCopy decodeObjectOfClasses:v67 forKey:v68];
      keywordTitles = v7->_keywordTitles;
      v7->_keywordTitles = v69;
    }

    v71 = objc_opt_class();
    v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoURLForUpdate"];
    v73 = [coderCopy decodeObjectOfClass:v71 forKey:v72];
    videoURLForUpdate = v7->_videoURLForUpdate;
    v7->_videoURLForUpdate = v73;

    v75 = objc_opt_class();
    v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"pairingIdentifier"];
    v77 = [coderCopy decodeObjectOfClass:v75 forKey:v76];
    pairingIdentifier = v7->_pairingIdentifier;
    v7->_pairingIdentifier = v77;

    v79 = objc_opt_class();
    v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoDuration"];
    v81 = [coderCopy decodeObjectOfClass:v79 forKey:v80];

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
    v87 = [coderCopy decodeObjectOfClass:v85 forKey:v86];

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
    v7->_photoIrisVisibilityState = [coderCopy decodeIntegerForKey:v91];

    v92 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetVisibilityState"];
    v7->_didSetVisibilityState = [coderCopy decodeBoolForKey:v92];

    v93 = MEMORY[0x1E695DFD8];
    v333[0] = objc_opt_class();
    v333[1] = objc_opt_class();
    v333[2] = objc_opt_class();
    v333[3] = objc_opt_class();
    v333[4] = objc_opt_class();
    v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v333 count:5];
    v95 = [v93 setWithArray:v94];
    v96 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneClassificationsByType"];
    v97 = [coderCopy decodeObjectOfClasses:v95 forKey:v96];

    if (v97)
    {
      v98 = [v97 mutableCopy];
      sceneClassificationDictionariesByType = v7->_sceneClassificationDictionariesByType;
      v7->_sceneClassificationDictionariesByType = v98;

      v7->_didSetSceneClassifications = 1;
    }

    v100 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetImageEmbeddingVersionKey"];
    v7->_didSetImageEmbeddingVersion = [coderCopy decodeBoolForKey:v100];

    if (v7->_didSetImageEmbeddingVersion)
    {
      v101 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"imageEmbeddingVersion"];
      v7->_imageEmbeddingVersion = [coderCopy decodeIntegerForKey:v101];
    }

    v102 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetVideoEmbeddingVersionKey"];
    v7->_didSetVideoEmbeddingVersion = [coderCopy decodeBoolForKey:v102];

    if (v7->_didSetVideoEmbeddingVersion)
    {
      v103 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoEmbeddingVersion"];
      v7->_videoEmbeddingVersion = [coderCopy decodeIntegerForKey:v103];
    }

    v328 = v97;
    v104 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"incrementPlayCount"];
    v7->_incrementPlayCount = [coderCopy decodeBoolForKey:v104];

    v105 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"incrementShareCount"];
    v7->_incrementShareCount = [coderCopy decodeBoolForKey:v105];

    v106 = objc_opt_class();
    v107 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lastSharedDate"];
    v108 = [coderCopy decodeObjectOfClass:v106 forKey:v107];
    lastSharedDate = v7->_lastSharedDate;
    v7->_lastSharedDate = v108;

    v110 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"incrementViewCount"];
    v7->_incrementViewCount = [coderCopy decodeBoolForKey:v110];

    v111 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"variationSuggestionStates"];
    v7->_variationSuggestionStates = [coderCopy decodeInt64ForKey:v111];

    if (v7->_variationSuggestionStates)
    {
      v7->_didSetVariationSuggestionStates = 1;
      v112 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"variationSuggestionStatesMask"];
      v7->_variationSuggestionStatesMask = [coderCopy decodeInt64ForKey:v112];
    }

    v113 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"toRetryUpload"];
    v7->_toRetryUpload = [coderCopy decodeBoolForKey:v113];

    v114 = MEMORY[0x1E695DFD8];
    v115 = objc_opt_class();
    v116 = objc_opt_class();
    v117 = [v114 setWithObjects:{v115, v116, objc_opt_class(), 0}];
    v118 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"pathsToNewAssetResourcesByAssetResourceType"];
    v119 = [coderCopy decodeObjectOfClasses:v117 forKey:v118];
    pathsToNewAssetResourcesByAssetResourceType = v7->_pathsToNewAssetResourcesByAssetResourceType;
    v7->_pathsToNewAssetResourcesByAssetResourceType = v119;

    v121 = MEMORY[0x1E695DFD8];
    v122 = objc_opt_class();
    v123 = [v121 setWithObjects:{v122, objc_opt_class(), 0}];
    v124 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetResourceTypesToDelete"];
    v125 = [coderCopy decodeObjectOfClasses:v123 forKey:v124];
    assetResourceTypesToDelete = v7->_assetResourceTypesToDelete;
    v7->_assetResourceTypesToDelete = v125;

    v127 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"deleteContextualVideoThumbnails"];
    v7->_deleteContextualVideoThumbnails = [coderCopy decodeBoolForKey:v127];

    v128 = MEMORY[0x1E695DFD8];
    v129 = objc_opt_class();
    v130 = [v128 setWithObjects:{v129, objc_opt_class(), 0}];
    v131 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"libraryScopeOriginatorUUIDs"];
    v132 = [coderCopy decodeObjectOfClasses:v130 forKey:v131];
    v133 = [v128 setWithArray:v132];
    libraryScopeOriginatorUUIDs = v7->_libraryScopeOriginatorUUIDs;
    v7->_libraryScopeOriginatorUUIDs = v133;

    v135 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"packedPreferredCropRect"];
    v7->_packedPreferredCropRect = [coderCopy decodeIntegerForKey:v135];

    if (v7->_packedPreferredCropRect)
    {
      v7->_didSetPackedPreferredCropRect = 1;
    }

    v136 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"packedAcceptableCropRect"];
    v7->_packedAcceptableCropRect = [coderCopy decodeIntegerForKey:v136];

    if (v7->_packedAcceptableCropRect)
    {
      v7->_didSetPackedAcceptableCropRect = 1;
    }

    v137 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"packedBestPlaybackRect"];
    v7->_packedBestPlaybackRect = [coderCopy decodeIntegerForKey:v137];

    if (v7->_packedBestPlaybackRect)
    {
      v7->_didSetPackedBestPlaybackRect = 1;
    }

    v138 = objc_opt_class();
    v139 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"computedAttributeMutations"];
    v140 = [coderCopy decodeObjectOfClass:v138 forKey:v139];
    computedAttributeMutations = v7->_computedAttributeMutations;
    v7->_computedAttributeMutations = v140;

    if (v7->_computedAttributeMutations)
    {
      v7->_didModifyComputedAttributes = 1;
    }

    v142 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetWallpaperProperties"];
    v143 = [coderCopy decodeBoolForKey:v142];

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
      v148 = [coderCopy decodeObjectOfClass:v146 forKey:v147];
      v149 = v7->_wallpaperPropertiesTimestamp;
      v7->_wallpaperPropertiesTimestamp = v148;

      if (v7->_wallpaperPropertiesTimestamp)
      {
        v7->_didSetWallpaperPropertiesTimestamp = 1;
      }

      v150 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoAnalysisWallpaperPropertiesVersion"];
      v7->_wallpaperPropertiesVersion = [coderCopy decodeIntegerForKey:v150];

      if (v7->_wallpaperPropertiesVersion)
      {
        v7->_didSetWallpaperPropertiesVersion = 1;
      }

      v151 = objc_opt_class();
      v152 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoAnalysisWallpaperProperties"];
      v153 = [coderCopy decodeObjectOfClass:v151 forKey:v152];
      v154 = v7->_wallpaperPropertiesData;
      v7->_wallpaperPropertiesData = v153;

      if (v7->_wallpaperPropertiesData)
      {
        v7->_didSetWallpaperPropertiesData = 1;
      }
    }

    v155 = objc_opt_class();
    v156 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mediaAnalysisTimeStamp"];
    v157 = [coderCopy decodeObjectOfClass:v155 forKey:v156];
    mediaAnalysisTimeStamp = v7->_mediaAnalysisTimeStamp;
    v7->_mediaAnalysisTimeStamp = v157;

    if (v7->_mediaAnalysisTimeStamp)
    {
      v7->_didSetMediaAnalysisTimeStamp = 1;
    }

    v159 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mediaAnalysisVersion"];
    v7->_mediaAnalysisVersion = [coderCopy decodeIntegerForKey:v159];

    if (v7->_mediaAnalysisVersion)
    {
      v7->_didSetMediaAnalysisVersion = 1;
    }

    v160 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mediaAnalysisImageVersion"];
    v7->_mediaAnalysisImageVersion = [coderCopy decodeIntegerForKey:v160];

    if (v7->_mediaAnalysisImageVersion)
    {
      v7->_didSetMediaAnalysisImageVersion = 1;
    }

    v161 = objc_opt_class();
    v162 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bestKeyFrameTime"];
    v163 = [coderCopy decodeObjectOfClass:v161 forKey:v162];

    if (v163)
    {
      CMTimeMakeFromDictionary(&v332.start, v163);
      v164 = *&v332.start.value;
      v7->_bestKeyFrameTime.epoch = v332.start.epoch;
      *&v7->_bestKeyFrameTime.value = v164;
    }

    v165 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"unsetBestKeyFrameTime"];
    v7->_didUnsetBestKeyFrameTime = [coderCopy decodeBoolForKey:v165];

    v166 = objc_opt_class();
    v167 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bestKeyFrameJPEGData"];
    v168 = [coderCopy decodeObjectOfClass:v166 forKey:v167];
    bestKeyFrameJPEGData = v7->_bestKeyFrameJPEGData;
    v7->_bestKeyFrameJPEGData = v168;

    v170 = objc_opt_class();
    v171 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"contextualVideoThumbnailImageData"];
    v172 = [coderCopy decodeObjectOfClass:v170 forKey:v171];
    contextualVideoThumbnailImageDataByIdentifier = v7->_contextualVideoThumbnailImageDataByIdentifier;
    v7->_contextualVideoThumbnailImageDataByIdentifier = v172;

    v174 = objc_opt_class();
    v175 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"computeSyncMediaAnalysisPayload"];
    v176 = [coderCopy decodeObjectOfClass:v174 forKey:v175];
    computeSyncMediaAnalysisPayload = v7->_computeSyncMediaAnalysisPayload;
    v7->_computeSyncMediaAnalysisPayload = v176;

    v178 = objc_opt_class();
    v179 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bestVideoTimeRange"];
    v180 = [coderCopy decodeObjectOfClass:v178 forKey:v179];

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
    v185 = [coderCopy decodeObjectOfClass:v183 forKey:v184];

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
    [coderCopy decodeFloatForKey:v188];
    v7->_blurrinessScore = v189;

    if (v7->_blurrinessScore != 0.0)
    {
      v7->_didSetBlurrinessScore = 1;
    }

    v190 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"exposureScore"];
    [coderCopy decodeFloatForKey:v190];
    v7->_exposureScore = v191;

    if (v7->_exposureScore != 0.0)
    {
      v7->_didSetExposureScore = 1;
    }

    v192 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"audioScore"];
    [coderCopy decodeFloatForKey:v192];
    v7->_audioScore = v193;

    if (v7->_audioScore != 0.0)
    {
      v7->_didSetAudioScore = 1;
    }

    v194 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"settlingEffectScore"];
    [coderCopy decodeFloatForKey:v194];
    v7->_settlingEffectScore = v195;

    if (v7->_settlingEffectScore != 0.0)
    {
      v7->_didSetSettlingEffectScore = 1;
    }

    v196 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"wallpaperScore"];
    [coderCopy decodeFloatForKey:v196];
    v7->_wallpaperScore = v197;

    if (v7->_wallpaperScore != 0.0)
    {
      v7->_didSetWallpaperScore = 1;
    }

    v198 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"autoplaySuggestionScore"];
    [coderCopy decodeFloatForKey:v198];
    v7->_autoplaySuggestionScore = v199;

    if (v7->_autoplaySuggestionScore != 0.0)
    {
      v7->_didSetAutoplaySuggestionScore = 1;
    }

    v200 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoStickerSuggestionScore"];
    [coderCopy decodeFloatForKey:v200];
    v7->_videoStickerSuggestionScore = v201;

    if (v7->_videoStickerSuggestionScore != 0.0)
    {
      v7->_didSetVideoStickerSuggestionScore = 1;
    }

    v202 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoScore"];
    [coderCopy decodeFloatForKey:v202];
    v7->_videoScore = v203;

    if (v7->_videoScore != 0.0)
    {
      v7->_didSetVideoScore = 1;
    }

    v204 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"activityScore"];
    [coderCopy decodeFloatForKey:v204];
    v7->_activityScore = v205;

    if (v7->_activityScore != 0.0)
    {
      v7->_didSetActivityScore = 1;
    }

    v206 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"faceCount"];
    v7->_faceCount = [coderCopy decodeInt64ForKey:v206];

    if (v7->_faceCount)
    {
      v7->_didSetFaceCount = 1;
    }

    v207 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"audioClassification"];
    v7->_audioClassification = [coderCopy decodeIntegerForKey:v207];

    if (v7->_audioClassification)
    {
      v7->_didSetAudioClassification = 1;
    }

    v208 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"probableRotationDirection"];
    v7->_probableRotationDirection = [coderCopy decodeIntegerForKey:v208];

    if (v7->_probableRotationDirection)
    {
      v7->_didSetProbableRotationDirection = 1;
    }

    v209 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"probableRotationDirectionConfidence"];
    [coderCopy decodeFloatForKey:v209];
    v7->_probableRotationDirectionConfidence = v210;

    if (v7->_probableRotationDirectionConfidence != 0.0)
    {
      v7->_didSetProbableRotationDirectionConfidence = 1;
    }

    v211 = objc_opt_class();
    v212 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"colorNormalizationData"];
    v213 = [coderCopy decodeObjectOfClass:v211 forKey:v212];
    colorNormalizationData = v7->_colorNormalizationData;
    v7->_colorNormalizationData = v213;

    v215 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetCharacterRecognitionProperties"];
    v7->_resetCharacterRecognitionProperties = [coderCopy decodeBoolForKey:v215];

    if (!v7->_resetCharacterRecognitionProperties)
    {
      v216 = MEMORY[0x1E695DFD8];
      v217 = objc_opt_class();
      v218 = [v216 setWithObjects:{v217, objc_opt_class(), 0}];
      v219 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionProperties"];
      v220 = [coderCopy decodeObjectOfClasses:v218 forKey:v219];

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
    v7->_resetTextUnderstandingProperties = [coderCopy decodeBoolForKey:v232];

    if (!v7->_resetTextUnderstandingProperties)
    {
      v233 = MEMORY[0x1E695DFD8];
      v234 = objc_opt_class();
      v235 = [v233 setWithObjects:{v234, objc_opt_class(), 0}];
      v236 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textUnderstandingProperties"];
      v237 = [coderCopy decodeObjectOfClasses:v235 forKey:v236];

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
    v7->_resetVisualSearchProperties = [coderCopy decodeBoolForKey:v243];

    if (!v7->_resetVisualSearchProperties)
    {
      v244 = MEMORY[0x1E695DFD8];
      v245 = objc_opt_class();
      v246 = [v244 setWithObjects:{v245, objc_opt_class(), 0}];
      v247 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchProperties"];
      v248 = [coderCopy decodeObjectOfClasses:v246 forKey:v247];

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
    v7->_compactSCSensitivityAnalysis = [coderCopy decodeIntegerForKey:v266];

    if (v7->_compactSCSensitivityAnalysis)
    {
      v7->_didSetCompactImageSCSensitivityAnalysis = 1;
    }

    v267 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"compactVideoSCSensitivityAnalysis"];
    v7->_compactSCSensitivityAnalysis = [coderCopy decodeIntegerForKey:v267];

    v268 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoSensitivityAnalysisVersion"];
    v7->_videoSensitivityAnalysisVersion = [coderCopy decodeIntegerForKey:v268];

    if (v7->_compactSCSensitivityAnalysis && v7->_videoSensitivityAnalysisVersion)
    {
      v7->_didSetCompactVideoSCSensitivityAnalysis = 1;
    }

    v269 = objc_opt_class();
    v270 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneprintData"];
    v271 = [coderCopy decodeObjectOfClass:v269 forKey:v270];
    sceneprintData = v7->_sceneprintData;
    v7->_sceneprintData = v271;

    if (v7->_sceneprintData)
    {
      v7->_didSetSceneprintData = 1;
    }

    v273 = objc_opt_class();
    v274 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateMatchingData"];
    v275 = [coderCopy decodeObjectOfClass:v273 forKey:v274];
    duplicateMatchingData = v7->_duplicateMatchingData;
    v7->_duplicateMatchingData = v275;

    if (v7->_duplicateMatchingData)
    {
      v7->_didSetDuplicateMatchingData = 1;
      v277 = objc_opt_class();
      v278 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateMatchingAlternateData"];
      v279 = [coderCopy decodeObjectOfClass:v277 forKey:v278];
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
      v7->_duplicateProcessingSucceeded = [coderCopy decodeBoolForKey:v283];
    }

    v284 = objc_opt_class();
    v285 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"reverseLocationData"];
    v286 = [coderCopy decodeObjectOfClass:v284 forKey:v285];
    reverseLocationData = v7->_reverseLocationData;
    v7->_reverseLocationData = v286;

    if (v7->_reverseLocationData)
    {
      v7->_didSetReverseLocationData = 1;
    }

    v288 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"reverseLocationDataIsValid"];
    v7->_reverseLocationDataIsValid = [coderCopy decodeBoolForKey:v288];

    if (v7->_reverseLocationDataIsValid)
    {
      v7->_didSetReverseLocationDataIsValid = 1;
    }

    v289 = objc_opt_class();
    v290 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"objectSaliencyRectsData"];
    v291 = [coderCopy decodeObjectOfClass:v289 forKey:v290];
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
    v297 = [coderCopy decodeObjectOfClasses:v295 forKey:v296];
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
    v303 = [coderCopy decodeObjectOfClass:v301 forKey:v302];
    timeZoneName = v7->_timeZoneName;
    v7->_timeZoneName = v303;

    if (v7->_timeZoneName)
    {
      v7->_didSetTimeZone = 1;
      v305 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"timeZoneOffsetValue"];
      v7->_timeZoneOffsetValue = [coderCopy decodeInt32ForKey:v305];
    }

    v306 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"gpsHorizontalAccuracy"];
    [coderCopy decodeDoubleForKey:v306];
    v7->_gpsHorizontalAccuracy = v307;

    if (v7->_gpsHorizontalAccuracy != 0.0)
    {
      v7->_didSetGpsHorizontalAccuracy = 1;
    }

    v308 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"screenTimeDeviceImageSensitivity"];
    v7->_screenTimeDeviceImageSensitivity = [coderCopy decodeIntegerForKey:v308];

    if (v7->_screenTimeDeviceImageSensitivity)
    {
      v7->_didSetScreenTimeDeviceImageSensitivity = 1;
    }

    v309 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationProcessingValue"];
    v7->_syndicationProcessingValue = [coderCopy decodeIntegerForKey:v309];

    if (v7->_syndicationProcessingValue)
    {
      v7->_didSetSyndicationProcessingValue = 1;
    }

    v310 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationProcessingVersion"];
    v7->_syndicationProcessingVersion = [coderCopy decodeInt64ForKey:v310];

    if (v7->_syndicationProcessingVersion)
    {
      v7->_didSetSyndicationProcessingVersion = 1;
    }

    v311 = objc_opt_class();
    v312 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationIdentifier"];
    v313 = [coderCopy decodeObjectOfClass:v311 forKey:v312];
    syndicationIdentifier = v7->_syndicationIdentifier;
    v7->_syndicationIdentifier = v313;

    if (v7->_syndicationIdentifier)
    {
      v7->_didSetSyndicationIdentifier = 1;
    }

    v315 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"faceAnalysisVersion"];
    v7->_faceAnalysisVersion = [coderCopy decodeIntegerForKey:v315];

    if (v7->_faceAnalysisVersion)
    {
      v7->_didSetFaceAnalysisVersion = 1;
    }

    v316 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"localAnalysisStage"];
    v7->_localAnalysisStage = [coderCopy decodeIntegerForKey:v316];

    if (v7->_localAnalysisStage)
    {
      v7->_didSetLocalAnalysisStage = 1;
    }

    v317 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"viewPresentation"];
    v7->_viewPresentation = [coderCopy decodeIntegerForKey:v317];

    if (v7->_viewPresentation)
    {
      v7->_didSetViewPresentation = 1;
    }

    v318 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ResetGeneratedAssetDescriptionKey"];
    v7->_resetGeneratedAssetDescriptionProperties = [coderCopy decodeBoolForKey:v318];

    if (!v7->_resetGeneratedAssetDescriptionProperties)
    {
      v319 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DidSetGeneratedAssetDescriptionKey"];
      v7->_didSetGeneratedAssetDescriptionProperties = [coderCopy decodeBoolForKey:v319];

      if (v7->_didSetGeneratedAssetDescriptionProperties)
      {
        v320 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"GeneratedAssetDescriptionPropertiesKey"];
        v321 = [coderCopy decodeObjectForKey:v320];
        generatedAssetDescriptionDictionaries = v7->_generatedAssetDescriptionDictionaries;
        v7->_generatedAssetDescriptionDictionaries = v321;
      }
    }

    v323 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PtpTrashedStateKey"];
    v324 = [coderCopy decodeObjectForKey:v323];

    if (v324)
    {
      v7->_ptpTrashedState = [v324 integerValue];
      v7->_didSetPtpTrashedState = 1;
    }

    v325 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"savedAssetType"];
    v7->_savedAssetType = [coderCopy decodeIntegerForKey:v325];

    if (v7->_savedAssetType)
    {
      v7->_didSetSavedAssetType = 1;
    }

    v5 = v331;
  }

  v326 = v7;

  return v326;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->super._helper forKey:@"helper"];
  facesHelper = self->_facesHelper;
  relationshipName = [(PHRelationshipChangeRequestHelper *)facesHelper relationshipName];
  [coderCopy encodeObject:facesHelper forKey:relationshipName];

  temporalFacesHelper = self->_temporalFacesHelper;
  relationshipName2 = [(PHRelationshipChangeRequestHelper *)temporalFacesHelper relationshipName];
  [coderCopy encodeObject:temporalFacesHelper forKey:relationshipName2];

  keywordsHelper = self->_keywordsHelper;
  relationshipName3 = [(PHRelationshipChangeRequestHelper *)keywordsHelper relationshipName];
  [coderCopy encodeObject:keywordsHelper forKey:relationshipName3];

  commentsHelper = self->_commentsHelper;
  relationshipName4 = [(PHRelationshipChangeRequestHelper *)commentsHelper relationshipName];
  [coderCopy encodeObject:commentsHelper forKey:relationshipName4];

  likesHelper = self->_likesHelper;
  relationshipName5 = [(PHRelationshipChangeRequestHelper *)likesHelper relationshipName];
  [coderCopy encodeObject:likesHelper forKey:relationshipName5];

  if (self->_didChangeAdjustments)
  {
    contentEditingOutput = [(PHAssetChangeRequest *)self contentEditingOutput];
    if (contentEditingOutput)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didChangeAdjustments"];
      [coderCopy encodeBool:1 forKey:v16];

      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"contentEditingOutput"];
      [coderCopy encodeObject:contentEditingOutput forKey:v17];

      editorBundleID = self->_editorBundleID;
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"editorBundleID"];
      [coderCopy encodeObject:editorBundleID forKey:v19];

      editorBundleURL = self->_editorBundleURL;
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"editorBundleURL"];
      [coderCopy encodeObject:editorBundleURL forKey:v21];
    }
  }

  didSetOriginalResourceChoice = self->_didSetOriginalResourceChoice;
  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetOriginalResourceChoice"];
  [coderCopy encodeBool:didSetOriginalResourceChoice forKey:v23];

  didRevertLocationToOriginal = self->_didRevertLocationToOriginal;
  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didRevertLocationToOriginal"];
  [coderCopy encodeBool:didRevertLocationToOriginal forKey:v25];

  originalResourceChoice = self->_originalResourceChoice;
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"originalResourceChoice"];
  [coderCopy encodeInteger:originalResourceChoice forKey:v27];

  didUpdateExtendedAttributesUsingOriginalMediaMetadata = self->_didUpdateExtendedAttributesUsingOriginalMediaMetadata;
  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didUpdateExtendedAttributesUsingOriginalMediaMetadata"];
  [coderCopy encodeBool:didUpdateExtendedAttributesUsingOriginalMediaMetadata forKey:v29];

  didExpungeAllSpatialOverCaptureResources = self->_didExpungeAllSpatialOverCaptureResources;
  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didExpungeAllSpatialOverCaptureResources"];
  [coderCopy encodeBool:didExpungeAllSpatialOverCaptureResources forKey:v31];

  didTrashAllSpatialOverCaptureResources = self->_didTrashAllSpatialOverCaptureResources;
  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didTrashAllSpatialOverCaptureResources"];
  [coderCopy encodeBool:didTrashAllSpatialOverCaptureResources forKey:v33];

  didUntrashAllSpatialOverCaptureResources = self->_didUntrashAllSpatialOverCaptureResources;
  v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didUntrashAllSpatialOverCaptureResources"];
  [coderCopy encodeBool:didUntrashAllSpatialOverCaptureResources forKey:v35];

  didExpungeTrashedSpatialOverCaptureResources = self->_didExpungeTrashedSpatialOverCaptureResources;
  v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didExpungeTrashedSpatialOverCaptureResources"];
  [coderCopy encodeBool:didExpungeTrashedSpatialOverCaptureResources forKey:v37];

  didPromoteToGuestAsset = self->_didPromoteToGuestAsset;
  v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didPromoteToGuestAsset"];
  [coderCopy encodeBool:didPromoteToGuestAsset forKey:v39];

  didResetGuestAssetPromotion = self->_didResetGuestAssetPromotion;
  v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didResetGuestAssetPromotion"];
  [coderCopy encodeBool:didResetGuestAssetPromotion forKey:v41];

  updatedLocation = self->_updatedLocation;
  v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"updatedLocation"];
  [coderCopy encodeObject:updatedLocation forKey:v43];

  assetDescription = self->_assetDescription;
  v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetDescription"];
  [coderCopy encodeObject:assetDescription forKey:v45];

  accessibilityDescription = self->_accessibilityDescription;
  v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"accessibilityDescription"];
  [coderCopy encodeObject:accessibilityDescription forKey:v47];

  didSetTitle = self->_didSetTitle;
  v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetTitle"];
  [coderCopy encodeBool:didSetTitle forKey:v49];

  title = self->_title;
  v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"title"];
  [coderCopy encodeObject:title forKey:v51];

  didSetKeywordTitles = self->_didSetKeywordTitles;
  v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetKeywordTitles"];
  [coderCopy encodeBool:didSetKeywordTitles forKey:v53];

  keywordTitles = self->_keywordTitles;
  v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"keywordTitles"];
  [coderCopy encodeObject:keywordTitles forKey:v55];

  videoURLForUpdate = self->_videoURLForUpdate;
  v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoURLForUpdate"];
  [coderCopy encodeObject:videoURLForUpdate forKey:v57];

  pairingIdentifier = self->_pairingIdentifier;
  v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"pairingIdentifier"];
  [coderCopy encodeObject:pairingIdentifier forKey:v59];

  if (self->_videoDuration.flags)
  {
    *&v275.start.value = *&self->_videoDuration.value;
    v275.start.epoch = self->_videoDuration.epoch;
    v60 = CMTimeCopyAsDictionary(&v275.start, 0);
    if (v60)
    {
      v61 = v60;
      v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoDuration"];
      [coderCopy encodeObject:v61 forKey:v62];

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
      [coderCopy encodeObject:v64 forKey:v65];

      CFRelease(v64);
    }
  }

  didSetVisibilityState = self->_didSetVisibilityState;
  v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetVisibilityState"];
  [coderCopy encodeBool:didSetVisibilityState forKey:v67];

  photoIrisVisibilityState = self->_photoIrisVisibilityState;
  v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoIrisVisibilityState"];
  [coderCopy encodeInteger:photoIrisVisibilityState forKey:v69];

  if (self->_didSetSceneClassifications)
  {
    sceneClassificationDictionariesByType = self->_sceneClassificationDictionariesByType;
    v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneClassificationsByType"];
    [coderCopy encodeObject:sceneClassificationDictionariesByType forKey:v71];
  }

  if (self->_didSetImageEmbeddingVersion)
  {
    imageEmbeddingVersion = self->_imageEmbeddingVersion;
    v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"imageEmbeddingVersion"];
    [coderCopy encodeInteger:imageEmbeddingVersion forKey:v73];

    v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetImageEmbeddingVersionKey"];
    [coderCopy encodeBool:1 forKey:v74];
  }

  if (self->_didSetVideoEmbeddingVersion)
  {
    videoEmbeddingVersion = self->_videoEmbeddingVersion;
    v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoEmbeddingVersion"];
    [coderCopy encodeInteger:videoEmbeddingVersion forKey:v76];

    v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetVideoEmbeddingVersionKey"];
    [coderCopy encodeBool:1 forKey:v77];
  }

  incrementPlayCount = self->_incrementPlayCount;
  v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"incrementPlayCount"];
  [coderCopy encodeBool:incrementPlayCount forKey:v79];

  incrementShareCount = self->_incrementShareCount;
  v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"incrementShareCount"];
  [coderCopy encodeBool:incrementShareCount forKey:v81];

  lastSharedDate = self->_lastSharedDate;
  v83 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lastSharedDate"];
  [coderCopy encodeObject:lastSharedDate forKey:v83];

  incrementViewCount = self->_incrementViewCount;
  v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"incrementViewCount"];
  [coderCopy encodeBool:incrementViewCount forKey:v85];

  clearLastViewedDate = self->_clearLastViewedDate;
  v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"clearLastViewedDate"];
  [coderCopy encodeBool:clearLastViewedDate forKey:v87];

  clearLastSharedDate = self->_clearLastSharedDate;
  v89 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"clearLastSharedDate"];
  [coderCopy encodeBool:clearLastSharedDate forKey:v89];

  if (self->_didSetVariationSuggestionStates)
  {
    variationSuggestionStates = self->_variationSuggestionStates;
    v91 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"variationSuggestionStates"];
    [coderCopy encodeInt64:variationSuggestionStates forKey:v91];

    variationSuggestionStatesMask = self->_variationSuggestionStatesMask;
    v93 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"variationSuggestionStatesMask"];
    [coderCopy encodeInt64:variationSuggestionStatesMask forKey:v93];
  }

  toRetryUpload = self->_toRetryUpload;
  v95 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"toRetryUpload"];
  [coderCopy encodeBool:toRetryUpload forKey:v95];

  if (self->_didSetPackedPreferredCropRect)
  {
    packedPreferredCropRect = self->_packedPreferredCropRect;
    v97 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"packedPreferredCropRect"];
    [coderCopy encodeInt64:packedPreferredCropRect forKey:v97];
  }

  if (self->_didSetPackedAcceptableCropRect)
  {
    packedAcceptableCropRect = self->_packedAcceptableCropRect;
    v99 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"packedAcceptableCropRect"];
    [coderCopy encodeInt64:packedAcceptableCropRect forKey:v99];
  }

  if (self->_didSetPackedBestPlaybackRect)
  {
    packedBestPlaybackRect = self->_packedBestPlaybackRect;
    v101 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"packedBestPlaybackRect"];
    [coderCopy encodeInt64:packedBestPlaybackRect forKey:v101];
  }

  if (self->_didModifyComputedAttributes)
  {
    computedAttributeMutations = self->_computedAttributeMutations;
    dictionary = computedAttributeMutations;
    if (!computedAttributeMutations)
    {
      dictionary = [MEMORY[0x1E695DF20] dictionary];
    }

    v104 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"computedAttributeMutations"];
    [coderCopy encodeObject:dictionary forKey:v104];

    if (!computedAttributeMutations)
    {
    }
  }

  if ([(NSDictionary *)self->_pathsToNewAssetResourcesByAssetResourceType count])
  {
    pathsToNewAssetResourcesByAssetResourceType = self->_pathsToNewAssetResourcesByAssetResourceType;
    v106 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"pathsToNewAssetResourcesByAssetResourceType"];
    [coderCopy encodeObject:pathsToNewAssetResourcesByAssetResourceType forKey:v106];
  }

  if ([(NSSet *)self->_assetResourceTypesToDelete count])
  {
    assetResourceTypesToDelete = self->_assetResourceTypesToDelete;
    v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetResourceTypesToDelete"];
    [coderCopy encodeObject:assetResourceTypesToDelete forKey:v108];
  }

  if (self->_deleteContextualVideoThumbnails)
  {
    v109 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"deleteContextualVideoThumbnails"];
    [coderCopy encodeBool:1 forKey:v109];
  }

  if ([(NSSet *)self->_libraryScopeOriginatorUUIDs count])
  {
    allObjects = [(NSSet *)self->_libraryScopeOriginatorUUIDs allObjects];
    v111 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"libraryScopeOriginatorUUIDs"];
    [coderCopy encodeObject:allObjects forKey:v111];
  }

  if (self->_resetWallpaperProperties)
  {
    v112 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetWallpaperProperties"];
    [coderCopy encodeBool:1 forKey:v112];
LABEL_46:

    goto LABEL_47;
  }

  if (self->_didSetWallpaperPropertiesTimestamp)
  {
    wallpaperPropertiesTimestamp = self->_wallpaperPropertiesTimestamp;
    v114 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoAnalysisWallpaperPropertiesTimeStamp"];
    [coderCopy encodeObject:wallpaperPropertiesTimestamp forKey:v114];
  }

  if (self->_didSetWallpaperPropertiesVersion)
  {
    wallpaperPropertiesVersion = self->_wallpaperPropertiesVersion;
    v116 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoAnalysisWallpaperPropertiesVersion"];
    [coderCopy encodeInt64:wallpaperPropertiesVersion forKey:v116];
  }

  if (self->_didSetWallpaperPropertiesData)
  {
    wallpaperPropertiesData = self->_wallpaperPropertiesData;
    v112 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"photoAnalysisWallpaperProperties"];
    [coderCopy encodeObject:wallpaperPropertiesData forKey:v112];
    goto LABEL_46;
  }

LABEL_47:
  mediaAnalysisTimeStamp = self->_mediaAnalysisTimeStamp;
  v119 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mediaAnalysisTimeStamp"];
  [coderCopy encodeObject:mediaAnalysisTimeStamp forKey:v119];

  if (self->_didSetMediaAnalysisVersion)
  {
    mediaAnalysisVersion = self->_mediaAnalysisVersion;
    v121 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mediaAnalysisVersion"];
    [coderCopy encodeInt64:mediaAnalysisVersion forKey:v121];
  }

  if (self->_didSetMediaAnalysisImageVersion)
  {
    mediaAnalysisImageVersion = self->_mediaAnalysisImageVersion;
    v123 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mediaAnalysisImageVersion"];
    [coderCopy encodeInt64:mediaAnalysisImageVersion forKey:v123];
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
      [coderCopy encodeObject:v269 forKey:v270];

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
      [coderCopy encodeObject:v273 forKey:v274];

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
      [coderCopy encodeObject:v125 forKey:v126];

      CFRelease(v125);
    }
  }

  didUnsetBestKeyFrameTime = self->_didUnsetBestKeyFrameTime;
  v128 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"unsetBestKeyFrameTime"];
  [coderCopy encodeBool:didUnsetBestKeyFrameTime forKey:v128];

  bestKeyFrameJPEGData = self->_bestKeyFrameJPEGData;
  v130 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bestKeyFrameJPEGData"];
  [coderCopy encodeObject:bestKeyFrameJPEGData forKey:v130];

  contextualVideoThumbnailImageDataByIdentifier = self->_contextualVideoThumbnailImageDataByIdentifier;
  if (contextualVideoThumbnailImageDataByIdentifier)
  {
    v132 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"contextualVideoThumbnailImageData"];
    [coderCopy encodeObject:contextualVideoThumbnailImageDataByIdentifier forKey:v132];
  }

  computeSyncMediaAnalysisPayload = self->_computeSyncMediaAnalysisPayload;
  v134 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"computeSyncMediaAnalysisPayload"];
  [coderCopy encodeObject:computeSyncMediaAnalysisPayload forKey:v134];

  if (self->_didSetBlurrinessScore)
  {
    blurrinessScore = self->_blurrinessScore;
    v136 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"blurrinessScore"];
    *&v137 = blurrinessScore;
    [coderCopy encodeFloat:v136 forKey:v137];
  }

  if (self->_didSetExposureScore)
  {
    exposureScore = self->_exposureScore;
    v139 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"exposureScore"];
    *&v140 = exposureScore;
    [coderCopy encodeFloat:v139 forKey:v140];
  }

  if (self->_didSetAudioScore)
  {
    audioScore = self->_audioScore;
    v142 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"audioScore"];
    *&v143 = audioScore;
    [coderCopy encodeFloat:v142 forKey:v143];
  }

  if (self->_didSetSettlingEffectScore)
  {
    settlingEffectScore = self->_settlingEffectScore;
    v145 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"settlingEffectScore"];
    *&v146 = settlingEffectScore;
    [coderCopy encodeFloat:v145 forKey:v146];
  }

  if (self->_didSetWallpaperScore)
  {
    wallpaperScore = self->_wallpaperScore;
    v148 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"wallpaperScore"];
    *&v149 = wallpaperScore;
    [coderCopy encodeFloat:v148 forKey:v149];
  }

  if (self->_didSetAutoplaySuggestionScore)
  {
    autoplaySuggestionScore = self->_autoplaySuggestionScore;
    v151 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"autoplaySuggestionScore"];
    *&v152 = autoplaySuggestionScore;
    [coderCopy encodeFloat:v151 forKey:v152];
  }

  if (self->_didSetVideoStickerSuggestionScore)
  {
    videoStickerSuggestionScore = self->_videoStickerSuggestionScore;
    v154 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoStickerSuggestionScore"];
    *&v155 = videoStickerSuggestionScore;
    [coderCopy encodeFloat:v154 forKey:v155];
  }

  if (self->_didSetVideoScore)
  {
    videoScore = self->_videoScore;
    v157 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoScore"];
    *&v158 = videoScore;
    [coderCopy encodeFloat:v157 forKey:v158];
  }

  if (self->_didSetActivityScore)
  {
    activityScore = self->_activityScore;
    v160 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"activityScore"];
    *&v161 = activityScore;
    [coderCopy encodeFloat:v160 forKey:v161];
  }

  if (self->_didSetFaceCount)
  {
    faceCount = self->_faceCount;
    v163 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"faceCount"];
    [coderCopy encodeInt64:faceCount forKey:v163];
  }

  if (self->_didSetAudioClassification)
  {
    audioClassification = self->_audioClassification;
    v165 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"audioClassification"];
    [coderCopy encodeInteger:audioClassification forKey:v165];
  }

  if (self->_didSetProbableRotationDirection)
  {
    probableRotationDirection = self->_probableRotationDirection;
    v167 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"probableRotationDirection"];
    [coderCopy encodeInteger:probableRotationDirection forKey:v167];
  }

  if (self->_didSetProbableRotationDirectionConfidence)
  {
    probableRotationDirectionConfidence = self->_probableRotationDirectionConfidence;
    v169 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"probableRotationDirectionConfidence"];
    *&v170 = probableRotationDirectionConfidence;
    [coderCopy encodeFloat:v169 forKey:v170];
  }

  colorNormalizationData = self->_colorNormalizationData;
  v172 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"colorNormalizationData"];
  [coderCopy encodeObject:colorNormalizationData forKey:v172];

  resetCharacterRecognitionProperties = self->_resetCharacterRecognitionProperties;
  v174 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetCharacterRecognitionProperties"];
  [coderCopy encodeBool:resetCharacterRecognitionProperties forKey:v174];

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
    [coderCopy encodeObject:v175 forKey:v184];
  }

  resetTextUnderstandingProperties = self->_resetTextUnderstandingProperties;
  v186 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetTextUnderstandingProperties"];
  [coderCopy encodeBool:resetTextUnderstandingProperties forKey:v186];

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
    [coderCopy encodeObject:v187 forKey:v192];
  }

  resetVisualSearchProperties = self->_resetVisualSearchProperties;
  v194 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resetVisualSearchProperties"];
  [coderCopy encodeBool:resetVisualSearchProperties forKey:v194];

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
    [coderCopy encodeObject:v195 forKey:v211];
  }

  if (self->_didSetCompactImageSCSensitivityAnalysis)
  {
    compactSCSensitivityAnalysis = self->_compactSCSensitivityAnalysis;
    v213 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"compactImageSCSensitivityAnalysis"];
    [coderCopy encodeInt64:compactSCSensitivityAnalysis forKey:v213];
  }

  if (self->_didSetCompactVideoSCSensitivityAnalysis)
  {
    v214 = self->_compactSCSensitivityAnalysis;
    v215 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"compactVideoSCSensitivityAnalysis"];
    [coderCopy encodeInt64:v214 forKey:v215];

    videoSensitivityAnalysisVersion = self->_videoSensitivityAnalysisVersion;
    v217 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoSensitivityAnalysisVersion"];
    [coderCopy encodeInt64:videoSensitivityAnalysisVersion forKey:v217];
  }

  if (self->_didSetSceneprintData)
  {
    sceneprintData = self->_sceneprintData;
    data = sceneprintData;
    if (!sceneprintData)
    {
      data = [MEMORY[0x1E695DEF0] data];
    }

    v220 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneprintData"];
    [coderCopy encodeObject:data forKey:v220];

    if (!sceneprintData)
    {
    }
  }

  if (self->_didSetDuplicateMatchingData)
  {
    duplicateMatchingData = self->_duplicateMatchingData;
    data2 = duplicateMatchingData;
    if (!duplicateMatchingData)
    {
      data2 = [MEMORY[0x1E695DEF0] data];
    }

    v223 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateMatchingData"];
    [coderCopy encodeObject:data2 forKey:v223];

    if (!duplicateMatchingData)
    {
    }

    duplicateMatchingAlternateData = self->_duplicateMatchingAlternateData;
    data3 = duplicateMatchingAlternateData;
    if (!duplicateMatchingAlternateData)
    {
      data3 = [MEMORY[0x1E695DEF0] data];
    }

    v226 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateMatchingAlternateData"];
    [coderCopy encodeObject:data3 forKey:v226];

    if (!duplicateMatchingAlternateData)
    {
    }

    duplicateProcessingSucceeded = self->_duplicateProcessingSucceeded;
    v228 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateProcessingSucceeded"];
    [coderCopy encodeBool:duplicateProcessingSucceeded forKey:v228];
  }

  if (self->_didSetReverseLocationData)
  {
    reverseLocationData = self->_reverseLocationData;
    data4 = reverseLocationData;
    if (!reverseLocationData)
    {
      data4 = [MEMORY[0x1E695DEF0] data];
    }

    v231 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"reverseLocationData"];
    [coderCopy encodeObject:data4 forKey:v231];

    if (!reverseLocationData)
    {
    }
  }

  if (self->_didSetReverseLocationDataIsValid)
  {
    reverseLocationDataIsValid = self->_reverseLocationDataIsValid;
    v233 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"reverseLocationDataIsValid"];
    [coderCopy encodeBool:reverseLocationDataIsValid forKey:v233];
  }

  if (self->_didSetShiftedLocation)
  {
    shiftedLocation = self->_shiftedLocation;
    data5 = shiftedLocation;
    if (!shiftedLocation)
    {
      data5 = [MEMORY[0x1E695DEF0] data];
    }

    v236 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shiftedLocation"];
    [coderCopy encodeObject:data5 forKey:v236];

    if (!shiftedLocation)
    {
    }
  }

  if (self->_didSetObjectSaliencyRectsData)
  {
    objectSaliencyRectsData = self->_objectSaliencyRectsData;
    data6 = objectSaliencyRectsData;
    if (!objectSaliencyRectsData)
    {
      data6 = [MEMORY[0x1E695DEF0] data];
    }

    v239 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"objectSaliencyRectsData"];
    [coderCopy encodeObject:data6 forKey:v239];

    if (!objectSaliencyRectsData)
    {
    }
  }

  if (self->_didSetTimeZone)
  {
    timeZoneName = self->_timeZoneName;
    v241 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"timeZoneName"];
    [coderCopy encodeObject:timeZoneName forKey:v241];

    timeZoneOffsetValue = self->_timeZoneOffsetValue;
    v243 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"timeZoneOffsetValue"];
    [coderCopy encodeInt32:timeZoneOffsetValue forKey:v243];
  }

  if (self->_didSetGpsHorizontalAccuracy)
  {
    gpsHorizontalAccuracy = self->_gpsHorizontalAccuracy;
    v245 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"gpsHorizontalAccuracy"];
    [coderCopy encodeDouble:v245 forKey:gpsHorizontalAccuracy];
  }

  if (self->_didSetScreenTimeDeviceImageSensitivity)
  {
    screenTimeDeviceImageSensitivity = self->_screenTimeDeviceImageSensitivity;
    v247 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"screenTimeDeviceImageSensitivity"];
    [coderCopy encodeInteger:screenTimeDeviceImageSensitivity forKey:v247];
  }

  if (self->_didSetSyndicationProcessingValue)
  {
    syndicationProcessingValue = self->_syndicationProcessingValue;
    v249 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationProcessingValue"];
    [coderCopy encodeInteger:syndicationProcessingValue forKey:v249];
  }

  if (self->_didSetSyndicationProcessingVersion)
  {
    syndicationProcessingVersion = self->_syndicationProcessingVersion;
    v251 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationProcessingVersion"];
    [coderCopy encodeInt64:syndicationProcessingVersion forKey:v251];
  }

  if (self->_didSetSyndicationIdentifier)
  {
    syndicationIdentifier = self->_syndicationIdentifier;
    v253 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationIdentifier"];
    [coderCopy encodeObject:syndicationIdentifier forKey:v253];
  }

  if (self->_didSetFaceAnalysisVersion)
  {
    faceAnalysisVersion = self->_faceAnalysisVersion;
    v255 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"faceAnalysisVersion"];
    [coderCopy encodeInteger:faceAnalysisVersion forKey:v255];
  }

  if (self->_didSetLocalAnalysisStage)
  {
    localAnalysisStage = self->_localAnalysisStage;
    v257 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"localAnalysisStage"];
    [coderCopy encodeInteger:localAnalysisStage forKey:v257];
  }

  if (self->_didSetViewPresentation)
  {
    viewPresentation = self->_viewPresentation;
    v259 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"viewPresentation"];
    [coderCopy encodeInteger:viewPresentation forKey:v259];
  }

  if (self->_resetGeneratedAssetDescriptionProperties)
  {
    v260 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ResetGeneratedAssetDescriptionKey"];
    [coderCopy encodeBool:1 forKey:v260];
  }

  else
  {
    if (!self->_didSetGeneratedAssetDescriptionProperties)
    {
      goto LABEL_157;
    }

    v261 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"DidSetGeneratedAssetDescriptionKey"];
    [coderCopy encodeBool:1 forKey:v261];

    generatedAssetDescriptionDictionaries = self->_generatedAssetDescriptionDictionaries;
    v260 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"GeneratedAssetDescriptionPropertiesKey"];
    [coderCopy encodeObject:generatedAssetDescriptionDictionaries forKey:v260];
  }

LABEL_157:
  if (self->_didSetPtpTrashedState)
  {
    ptpTrashedState = self->_ptpTrashedState;
    v264 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PtpTrashedStateKey"];
    [coderCopy encodeInt64:ptpTrashedState forKey:v264];
  }

  if (self->_didSetSavedAssetType)
  {
    savedAssetType = self->_savedAssetType;
    v266 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"savedAssetType"];
    [coderCopy encodeInteger:savedAssetType forKey:v266];
  }
}

- (void)encodeToXPCDict:(id)dict
{
  v78 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];

  facesHelper = [(PHAssetChangeRequest *)self facesHelper];
  [facesHelper encodeToXPCDict:dictCopy];

  temporalFacesHelper = [(PHAssetChangeRequest *)self temporalFacesHelper];
  [temporalFacesHelper encodeToXPCDict:dictCopy];

  [(PHRelationshipChangeRequestHelper *)self->_keywordsHelper encodeToXPCDict:dictCopy];
  [(PHRelationshipChangeRequestHelper *)self->_commentsHelper encodeToXPCDict:dictCopy];
  [(PHRelationshipChangeRequestHelper *)self->_likesHelper encodeToXPCDict:dictCopy];
  if ([(PHAssetChangeRequest *)self didChangeAdjustments])
  {
    contentEditingOutput = [(PHAssetChangeRequest *)self contentEditingOutput];
    if (contentEditingOutput)
    {
      v76 = 0;
      v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:contentEditingOutput requiringSecureCoding:1 error:&v76];
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

    xpc_dictionary_set_BOOL(dictCopy, "didChangeAdjustments", 1);
    PLXPCDictionarySetData();
    PLXPCDictionarySetString();
    PLXPCDictionarySetURL();
  }

  xpc_dictionary_set_BOOL(dictCopy, "didSetOriginalResourceChoice", self->_didSetOriginalResourceChoice);
  xpc_dictionary_set_BOOL(dictCopy, "didRevertLocationToOriginal", self->_didRevertLocationToOriginal);
  xpc_dictionary_set_uint64(dictCopy, "originalResourceChoice", self->_originalResourceChoice);
  xpc_dictionary_set_BOOL(dictCopy, "didUpdateExtendedAttributesUsingOriginalMediaMetadata", self->_didUpdateExtendedAttributesUsingOriginalMediaMetadata);
  xpc_dictionary_set_BOOL(dictCopy, "didExpungeAllSpatialOverCaptureResources", self->_didExpungeAllSpatialOverCaptureResources);
  xpc_dictionary_set_BOOL(dictCopy, "didTrashAllSpatialOverCaptureResources", self->_didTrashAllSpatialOverCaptureResources);
  xpc_dictionary_set_BOOL(dictCopy, "didUntrashAllSpatialOverCaptureResources", self->_didUntrashAllSpatialOverCaptureResources);
  xpc_dictionary_set_BOOL(dictCopy, "didExpungeTrashedSpatialOverCaptureResources", self->_didExpungeTrashedSpatialOverCaptureResources);
  if (self->_didPromoteToGuestAsset)
  {
    xpc_dictionary_set_BOOL(dictCopy, "didPromoteToGuestAsset", 1);
  }

  if (self->_didResetGuestAssetPromotion)
  {
    xpc_dictionary_set_BOOL(dictCopy, "didResetGuestAssetPromotion", 1);
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
    xpc_dictionary_set_BOOL(dictCopy, "didSetTitle", 1);
    if (self->_title)
    {
      PLXPCDictionarySetString();
    }
  }

  if (self->_didSetKeywordTitles)
  {
    xpc_dictionary_set_BOOL(dictCopy, "didSetKeywordTitles", 1);
    keywordTitles = self->_keywordTitles;
    if (keywordTitles)
    {
      allObjects = [(NSSet *)keywordTitles allObjects];
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

  xpc_dictionary_set_BOOL(dictCopy, "didSetVisibilityState", self->_didSetVisibilityState);
  xpc_dictionary_set_uint64(dictCopy, "photoIrisVisibilityState", self->_photoIrisVisibilityState);
  if (self->_didSetSceneClassifications)
  {
    PLXPCDictionarySetDictionary();
  }

  if (self->_didSetImageEmbeddingVersion)
  {
    xpc_dictionary_set_BOOL(dictCopy, "didSetImageEmbeddingVersionKey", 1);
    xpc_dictionary_set_int64(dictCopy, "imageEmbeddingVersion", self->_imageEmbeddingVersion);
  }

  if (self->_didSetVideoEmbeddingVersion)
  {
    xpc_dictionary_set_BOOL(dictCopy, "didSetVideoEmbeddingVersionKey", 1);
    xpc_dictionary_set_int64(dictCopy, "videoEmbeddingVersion", self->_videoEmbeddingVersion);
  }

  if (self->_incrementPlayCount)
  {
    xpc_dictionary_set_BOOL(dictCopy, "incrementPlayCount", 1);
  }

  if (self->_incrementShareCount)
  {
    xpc_dictionary_set_BOOL(dictCopy, "incrementShareCount", 1);
  }

  lastSharedDate = self->_lastSharedDate;
  if (lastSharedDate)
  {
    [(NSDate *)lastSharedDate timeIntervalSinceReferenceDate];
    xpc_dictionary_set_date(dictCopy, "lastSharedDate", v23);
  }

  if (self->_incrementViewCount)
  {
    xpc_dictionary_set_BOOL(dictCopy, "incrementViewCount", 1);
  }

  if (self->_clearLastSharedDate)
  {
    xpc_dictionary_set_BOOL(dictCopy, "clearLastSharedDate", 1);
  }

  if (self->_clearLastViewedDate)
  {
    xpc_dictionary_set_BOOL(dictCopy, "clearLastViewedDate", 1);
  }

  if (self->_didSetVariationSuggestionStates)
  {
    xpc_dictionary_set_uint64(dictCopy, "variationSuggestionStates", self->_variationSuggestionStates);
    xpc_dictionary_set_uint64(dictCopy, "variationSuggestionStatesMask", self->_variationSuggestionStatesMask);
  }

  if (self->_toRetryUpload)
  {
    xpc_dictionary_set_BOOL(dictCopy, "toRetryUpload", 1);
  }

  if (self->_didSetPackedPreferredCropRect)
  {
    xpc_dictionary_set_int64(dictCopy, "packedPreferredCropRect", self->_packedPreferredCropRect);
  }

  if (self->_didSetPackedAcceptableCropRect)
  {
    xpc_dictionary_set_int64(dictCopy, "packedAcceptableCropRect", self->_packedAcceptableCropRect);
  }

  if (self->_didSetPackedBestPlaybackRect)
  {
    xpc_dictionary_set_int64(dictCopy, "packedBestPlaybackRect", self->_packedBestPlaybackRect);
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
      xpc_dictionary_set_value(dictCopy, "computedAttributeMutations", v24);
    }
  }

  if ([(NSDictionary *)self->_pathsToNewAssetResourcesByAssetResourceType count])
  {
    PLXPCDictionarySetDictionary();
  }

  if ([(NSSet *)self->_assetResourceTypesToDelete count])
  {
    allObjects2 = [(NSSet *)self->_assetResourceTypesToDelete allObjects];
    PLXPCDictionarySetArray();
  }

  if (self->_deleteContextualVideoThumbnails)
  {
    xpc_dictionary_set_BOOL(dictCopy, "deleteContextualVideoThumbnails", 1);
  }

  if ([(NSSet *)self->_libraryScopeOriginatorUUIDs count])
  {
    allObjects3 = [(NSSet *)self->_libraryScopeOriginatorUUIDs allObjects];
    PLXPCDictionarySetArray();
  }

  if (self->_resetWallpaperProperties)
  {
    xpc_dictionary_set_BOOL(dictCopy, "resetWallpaperProperties", 1);
  }

  else
  {
    if (self->_didSetWallpaperPropertiesTimestamp)
    {
      PLXPCDictionarySetDate();
    }

    if (self->_didSetWallpaperPropertiesVersion)
    {
      xpc_dictionary_set_uint64(dictCopy, "photoAnalysisWallpaperPropertiesVersion", self->_wallpaperPropertiesVersion);
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
    xpc_dictionary_set_uint64(dictCopy, "mediaAnalysisVersion", self->_mediaAnalysisVersion);
  }

  if (self->_didSetMediaAnalysisImageVersion)
  {
    xpc_dictionary_set_int64(dictCopy, "mediaAnalysisImageVersion", self->_mediaAnalysisImageVersion);
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

  xpc_dictionary_set_BOOL(dictCopy, "unsetBestKeyFrameTime", self->_didUnsetBestKeyFrameTime);
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
    xpc_dictionary_set_double(dictCopy, "blurrinessScore", self->_blurrinessScore);
  }

  if (self->_didSetExposureScore)
  {
    xpc_dictionary_set_double(dictCopy, "exposureScore", self->_exposureScore);
  }

  if (self->_didSetAudioScore)
  {
    xpc_dictionary_set_double(dictCopy, "audioScore", self->_audioScore);
  }

  if (self->_didSetSettlingEffectScore)
  {
    xpc_dictionary_set_double(dictCopy, "settlingEffectScore", self->_settlingEffectScore);
  }

  if (self->_didSetWallpaperScore)
  {
    xpc_dictionary_set_double(dictCopy, "wallpaperScore", self->_wallpaperScore);
  }

  if (self->_didSetAutoplaySuggestionScore)
  {
    xpc_dictionary_set_double(dictCopy, "autoplaySuggestionScore", self->_autoplaySuggestionScore);
  }

  if (self->_didSetVideoStickerSuggestionScore)
  {
    xpc_dictionary_set_double(dictCopy, "videoStickerSuggestionScore", self->_videoStickerSuggestionScore);
  }

  if (self->_didSetVideoScore)
  {
    xpc_dictionary_set_double(dictCopy, "videoScore", self->_videoScore);
  }

  if (self->_didSetActivityScore)
  {
    xpc_dictionary_set_double(dictCopy, "activityScore", self->_activityScore);
  }

  if (self->_didSetFaceCount)
  {
    xpc_dictionary_set_uint64(dictCopy, "faceCount", self->_faceCount);
  }

  if (self->_didSetAudioClassification)
  {
    xpc_dictionary_set_int64(dictCopy, "audioClassification", self->_audioClassification);
  }

  if (self->_didSetProbableRotationDirection)
  {
    xpc_dictionary_set_int64(dictCopy, "probableRotationDirection", self->_probableRotationDirection);
  }

  if (self->_didSetProbableRotationDirectionConfidence)
  {
    xpc_dictionary_set_double(dictCopy, "probableRotationDirectionConfidence", self->_probableRotationDirectionConfidence);
  }

  if (self->_colorNormalizationData)
  {
    PLXPCDictionarySetData();
  }

  if (self->_resetCharacterRecognitionProperties)
  {
    xpc_dictionary_set_BOOL(dictCopy, "resetCharacterRecognitionProperties", 1);
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
    xpc_dictionary_set_BOOL(dictCopy, "resetTextUnderstandingProperties", 1);
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
    xpc_dictionary_set_BOOL(dictCopy, "resetVisualSearchProperties", 1);
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
    xpc_dictionary_set_int64(dictCopy, "compactImageSCSensitivityAnalysis", self->_compactSCSensitivityAnalysis);
  }

  if (self->_didSetCompactVideoSCSensitivityAnalysis)
  {
    xpc_dictionary_set_int64(dictCopy, "compactVideoSCSensitivityAnalysis", self->_compactSCSensitivityAnalysis);
    xpc_dictionary_set_int64(dictCopy, "videoSensitivityAnalysisVersion", self->_videoSensitivityAnalysisVersion);
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
      xpc_dictionary_set_value(dictCopy, "sceneprintData", v59);
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
      xpc_dictionary_set_value(dictCopy, "duplicateMatchingData", v60);
    }

    if (self->_duplicateMatchingAlternateData)
    {
      PLXPCDictionarySetData();
    }

    else
    {
      v61 = xpc_null_create();
      xpc_dictionary_set_value(dictCopy, "duplicateMatchingAlternateData", v61);
    }

    xpc_dictionary_set_BOOL(dictCopy, "duplicateProcessingSucceeded", self->_duplicateProcessingSucceeded);
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
      xpc_dictionary_set_value(dictCopy, "reverseLocationData", v62);
    }
  }

  if (self->_didSetReverseLocationDataIsValid)
  {
    xpc_dictionary_set_BOOL(dictCopy, "reverseLocationDataIsValid", self->_reverseLocationDataIsValid);
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
      xpc_dictionary_set_value(dictCopy, "shiftedLocation", v65);
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
      xpc_dictionary_set_value(dictCopy, "objectSaliencyRectsData", v67);
    }
  }

  if (self->_didSetTimeZone)
  {
    PLXPCDictionarySetString();
    xpc_dictionary_set_int64(dictCopy, "timeZoneOffsetValue", self->_timeZoneOffsetValue);
  }

  if (self->_didSetGpsHorizontalAccuracy)
  {
    xpc_dictionary_set_double(dictCopy, "gpsHorizontalAccuracy", self->_gpsHorizontalAccuracy);
  }

  if (self->_didSetScreenTimeDeviceImageSensitivity)
  {
    xpc_dictionary_set_int64(dictCopy, "screenTimeDeviceImageSensitivity", self->_screenTimeDeviceImageSensitivity);
  }

  if (self->_didSetSyndicationProcessingValue)
  {
    xpc_dictionary_set_uint64(dictCopy, "syndicationProcessingValue", self->_syndicationProcessingValue);
  }

  if (self->_didSetSyndicationProcessingVersion)
  {
    xpc_dictionary_set_uint64(dictCopy, "syndicationProcessingVersion", self->_syndicationProcessingVersion);
  }

  if (self->_didSetSyndicationIdentifier)
  {
    PLXPCDictionarySetString();
  }

  if (self->_didSetFaceAnalysisVersion)
  {
    xpc_dictionary_set_int64(dictCopy, "faceAnalysisVersion", self->_faceAnalysisVersion);
  }

  if (self->_didSetLocalAnalysisStage)
  {
    xpc_dictionary_set_int64(dictCopy, "localAnalysisStage", self->_localAnalysisStage);
  }

  if (self->_didSetViewPresentation)
  {
    xpc_dictionary_set_int64(dictCopy, "viewPresentation", self->_viewPresentation);
  }

  if (self->_resetGeneratedAssetDescriptionProperties)
  {
    xpc_dictionary_set_BOOL(dictCopy, "ResetGeneratedAssetDescriptionKey", 1);
  }

  else if (self->_didSetGeneratedAssetDescriptionProperties)
  {
    xpc_dictionary_set_BOOL(dictCopy, "DidSetGeneratedAssetDescriptionKey", 1);
    PLXPCDictionarySetDictionary();
  }

  if (self->_didSetPtpTrashedState)
  {
    xpc_dictionary_set_int64(dictCopy, "PtpTrashedStateKey", self->_ptpTrashedState);
  }

  if (self->_didSetSavedAssetType)
  {
    xpc_dictionary_set_int64(dictCopy, "savedAssetType", self->_savedAssetType);
  }
}

- (void)revertAssetContentToOriginal
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(PHChangeRequest *)self uuid];
    v5 = 138543362;
    v6 = uuid;
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
    uuid = [(PHObject *)self->_originalAsset uuid];
    v5 = 138543362;
    v6 = uuid;
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
    uuid = [(PHObject *)self->_originalAsset uuid];
    v5 = 138543362;
    v6 = uuid;
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
    photoLibrary = [(PHChangeRequest *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    originalAsset = [PHQuery queryForLikesForAsset:originalAsset options:librarySpecificFetchOptions];
  }

  v5 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:originalAsset];

  return v5;
}

- (id)_mutableLikeObjectIDsAndUUIDs
{
  likesHelper = self->_likesHelper;
  _existentLikeObjectIDs = [(PHAssetChangeRequest *)self _existentLikeObjectIDs];
  [(PHRelationshipChangeRequestHelper *)likesHelper prepareIfNeededWithExistentObjectIDs:_existentLikeObjectIDs];

  v5 = self->_likesHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (void)removeLike:(id)like
{
  v10 = *MEMORY[0x1E69E9840];
  likeCopy = like;
  v4 = MEMORY[0x1E695DEC8];
  likeCopy2 = like;
  v6 = [v4 arrayWithObjects:&likeCopy count:1];
  v7 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:v6, likeCopy, v10];

  if (v7)
  {
    _mutableLikeObjectIDsAndUUIDs = [(PHAssetChangeRequest *)self _mutableLikeObjectIDsAndUUIDs];
    [_mutableLikeObjectIDsAndUUIDs removeObjectsInArray:v7];

    [(PHChangeRequest *)self didMutate];
  }
}

- (void)addLike:(id)like
{
  v10 = *MEMORY[0x1E69E9840];
  likeCopy = like;
  v4 = MEMORY[0x1E695DEC8];
  likeCopy2 = like;
  v6 = [v4 arrayWithObjects:&likeCopy count:1];
  v7 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:v6, likeCopy, v10];

  if (v7)
  {
    _mutableLikeObjectIDsAndUUIDs = [(PHAssetChangeRequest *)self _mutableLikeObjectIDsAndUUIDs];
    [_mutableLikeObjectIDsAndUUIDs addObjectsFromArray:v7];

    [(PHChangeRequest *)self didMutate];
  }

  [(PHChangeRequest *)self didMutate];
}

- (id)_existentCommentObjectIDs
{
  originalAsset = self->_originalAsset;
  if (originalAsset)
  {
    photoLibrary = [(PHChangeRequest *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    originalAsset = [PHQuery queryForCommentsForAsset:originalAsset options:librarySpecificFetchOptions];
  }

  v5 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:originalAsset];

  return v5;
}

- (id)_mutableCommentObjectIDsAndUUIDs
{
  commentsHelper = self->_commentsHelper;
  _existentCommentObjectIDs = [(PHAssetChangeRequest *)self _existentCommentObjectIDs];
  [(PHRelationshipChangeRequestHelper *)commentsHelper prepareIfNeededWithExistentObjectIDs:_existentCommentObjectIDs];

  v5 = self->_commentsHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (void)removeComments:(id)comments
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:comments];
  if (v4)
  {
    v6 = v4;
    _mutableCommentObjectIDsAndUUIDs = [(PHAssetChangeRequest *)self _mutableCommentObjectIDsAndUUIDs];
    [_mutableCommentObjectIDsAndUUIDs removeObjectsInArray:v6];

    [(PHChangeRequest *)self didMutate];
    v4 = v6;
  }
}

- (void)addComments:(id)comments
{
  v5 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:comments];
  if (v5)
  {
    _mutableCommentObjectIDsAndUUIDs = [(PHAssetChangeRequest *)self _mutableCommentObjectIDsAndUUIDs];
    [_mutableCommentObjectIDsAndUUIDs addObjectsFromArray:v5];

    [(PHChangeRequest *)self didMutate];
  }

  [(PHChangeRequest *)self didMutate];
}

- (BOOL)deleteAssetResourceWithType:(int64_t)type
{
  v5 = PHAssetResourceTypeClientCanAppendToOrDeleteFromAsset(type);
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if ([(NSSet *)self->_assetResourceTypesToDelete count])
    {
      [v6 unionSet:self->_assetResourceTypesToDelete];
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [v6 addObject:v7];

    objc_storeStrong(&self->_assetResourceTypesToDelete, v6);
    [(PHChangeRequest *)self didMutate];
    pathsToNewAssetResourcesByAssetResourceType = self->_pathsToNewAssetResourcesByAssetResourceType;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v10 = [(NSDictionary *)pathsToNewAssetResourcesByAssetResourceType objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [(NSDictionary *)self->_pathsToNewAssetResourcesByAssetResourceType mutableCopy];
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:type];
      [(NSDictionary *)v11 setObject:0 forKeyedSubscript:v12];

      v13 = self->_pathsToNewAssetResourcesByAssetResourceType;
      self->_pathsToNewAssetResourcesByAssetResourceType = v11;
    }
  }

  return v5;
}

- (BOOL)addAssetResourceWithType:(int64_t)type fromFileAtURL:(id)l
{
  v37 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (PHAssetResourceTypeClientCanAppendToOrDeleteFromAsset(type))
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    photoLibrary = [(PHChangeRequest *)self photoLibrary];
    pathManager = [photoLibrary pathManager];
    v34 = 0;
    v11 = [pathManager externalDirectoryWithSubType:3 createIfNeeded:1 error:&v34];
    v12 = v34;

    if (v11)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:type];
      v15 = [v13 stringWithFormat:@"ResourceType-%@-%@", v14, uUIDString];
      v16 = [v11 stringByAppendingPathComponent:v15];

      v17 = MEMORY[0x1E69BF238];
      v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:v16];
      v33 = 0;
      v19 = [v17 copyItemAtURL:lCopy toURL:v18 error:&v33];
      v20 = v33;

      if (v19)
      {
        v30 = v20;
        v31 = v12;
        v32 = uUIDString;
        v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v22 = v21;
        if (self->_pathsToNewAssetResourcesByAssetResourceType)
        {
          [v21 addEntriesFromDictionary:?];
        }

        v23 = [MEMORY[0x1E696AD98] numberWithInteger:type];
        [v22 setObject:v16 forKeyedSubscript:v23];

        objc_storeStrong(&self->_pathsToNewAssetResourcesByAssetResourceType, v22);
        [(PHChangeRequest *)self didMutate];
        assetResourceTypesToDelete = self->_assetResourceTypesToDelete;
        v25 = [MEMORY[0x1E696AD98] numberWithInteger:type];
        LODWORD(assetResourceTypesToDelete) = [(NSSet *)assetResourceTypesToDelete containsObject:v25];

        if (assetResourceTypesToDelete)
        {
          v26 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_assetResourceTypesToDelete];
          v27 = [MEMORY[0x1E696AD98] numberWithInteger:type];
          [(NSSet *)v26 removeObject:v27];

          v28 = self->_assetResourceTypesToDelete;
          self->_assetResourceTypesToDelete = v26;
        }

        v12 = v31;
        uUIDString = v32;
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

- (void)setOriginalResourceChoice:(unint64_t)choice
{
  self->_originalResourceChoice = choice;
  self->_didSetOriginalResourceChoice = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setContentEditingOutput:(PHContentEditingOutput *)contentEditingOutput
{
  v17 = contentEditingOutput;
  supportedEditOperations = [(PHAssetChangeRequest *)self supportedEditOperations];
  v7 = [supportedEditOperations containsIndex:2];

  if (v7)
  {
    [(PHChangeRequest *)self didMutate];
    [(PHAssetChangeRequest *)self markDidChangeAdjustments];
    objc_storeStrong(&self->_contentEditingOutput, contentEditingOutput);
    editorBundleURL = [(PHContentEditingOutput *)v17 editorBundleURL];
    editorBundleURL = self->_editorBundleURL;
    self->_editorBundleURL = editorBundleURL;
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

- (void)setAdjustmentData:(id)data withRenderedJPEGData:(id)gData orRenderedContentURL:(id)l penultimateRenderedJPEGData:(id)eGData isSubstandardRender:(BOOL)render fullSizeRenderSize:(CGSize)size renderedVideoComplementURL:(id)rL penultimateRenderedVideoComplementURL:(id)self0 optionalOriginalResourceChoice:(id)self1
{
  height = size.height;
  width = size.width;
  renderCopy = render;
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  gDataCopy = gData;
  lCopy = l;
  eGDataCopy = eGData;
  rLCopy = rL;
  uRLCopy = uRL;
  choiceCopy = choice;
  originalAsset = self->_originalAsset;
  v24 = eGDataCopy;
  v25 = gDataCopy;
  if (originalAsset)
  {
    mediaType = [(PHAsset *)originalAsset mediaType];
  }

  else
  {
    mediaType = 1;
  }

  v27 = [PHContentEditingOutput alloc];
  photoLibrary = [(PHChangeRequest *)self photoLibrary];
  photoLibraryURL = [photoLibrary photoLibraryURL];
  v30 = [(PHContentEditingOutput *)v27 initWithAdjustmentBaseVersion:0 mediaType:mediaType appropriateForURL:photoLibraryURL];

  -[PHContentEditingOutput setBaseVersion:](v30, "setBaseVersion:", [dataCopy baseVersion]);
  [(PHContentEditingOutput *)v30 setAdjustmentData:dataCopy];
  v31 = lCopy;
  if (lCopy)
  {
    [(PHContentEditingOutput *)v30 setRenderedContentURL:lCopy];
    v32 = v25;
    v33 = v24;
LABEL_8:
    v34 = uRLCopy;
    v35 = rLCopy;
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
  v34 = uRLCopy;
  v35 = rLCopy;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v41 = dataCopy;
    _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_ERROR, "No rendered content provided for %@", buf, 0xCu);
  }

LABEL_9:
  [(PHContentEditingOutput *)v30 setPenultimateRenderedJPEGData:v33];
  [(PHContentEditingOutput *)v30 setIsSubstandardRender:renderCopy];
  [(PHContentEditingOutput *)v30 setFullSizeRenderWidth:width];
  [(PHContentEditingOutput *)v30 setFullSizeRenderHeight:height];
  [(PHContentEditingOutput *)v30 setRenderedVideoComplementContentURL:v35];
  [(PHContentEditingOutput *)v30 setPenultimateRenderedVideoComplementContentURL:v34];
  if (choiceCopy)
  {
    [(PHContentEditingOutput *)v30 setOriginalResourceChoice:choiceCopy];
  }

  [(PHAssetChangeRequest *)self setContentEditingOutput:v30];
}

- (void)_prepareExistingIDsForTemporalFacesIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_temporalFacesHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    if (self->_originalAsset)
    {
      photoLibrary = [(PHChangeRequest *)self photoLibrary];
      v5 = [PHFetchOptions fetchOptionsWithPhotoLibrary:photoLibrary orObject:0];

      [v5 setIncludeMediaAnalysisProcessingRangeTypes:2];
      [v5 setIncludedDetectionTypes:&unk_1F102DFB8];
      v6 = [PHQuery queryForFacesInAsset:self->_originalAsset options:v5];
      executeQuery = [v6 executeQuery];
      temporalFacesHelper = self->_temporalFacesHelper;
      fetchedObjectIDs = [executeQuery fetchedObjectIDs];
      [(PHRelationshipChangeRequestHelper *)temporalFacesHelper setOriginalObjectIDs:fetchedObjectIDs];
    }

    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)self->_temporalFacesHelper originalObjectIDs];

    if (!originalObjectIDs2)
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
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_facesHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    originalAsset = self->_originalAsset;
    if (originalAsset)
    {
      v5 = [PHQuery queryForFacesInAsset:originalAsset options:0];
      executeQuery = [v5 executeQuery];
      [(PHAssetChangeRequest *)self _prepareFacesHelperWithFetchResult:executeQuery];
    }

    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)self->_facesHelper originalObjectIDs];

    if (!originalObjectIDs2)
    {
      [(PHRelationshipChangeRequestHelper *)self->_facesHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
    }
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_facesHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    facesHelper = self->_facesHelper;
    originalObjectIDs3 = [(PHRelationshipChangeRequestHelper *)facesHelper originalObjectIDs];
    v10 = [originalObjectIDs3 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)facesHelper setMutableObjectIDsAndUUIDs:v10];
  }
}

- (void)_prepareFacesHelperWithFetchResult:(id)result
{
  resultCopy = result;
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_facesHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    facesHelper = self->_facesHelper;
    fetchedObjectIDs = [resultCopy fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)facesHelper setOriginalObjectIDs:fetchedObjectIDs];
  }
}

- (id)_existentKeywordObjectIDs
{
  originalAsset = self->_originalAsset;
  if (originalAsset)
  {
    photoLibrary = [(PHChangeRequest *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    originalAsset = [PHQuery queryForKeywordsForAsset:originalAsset options:librarySpecificFetchOptions];
  }

  v5 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:originalAsset];

  return v5;
}

- (id)_mutableKeywordObjectIDsAndUUIDs
{
  keywordsHelper = self->_keywordsHelper;
  _existentKeywordObjectIDs = [(PHAssetChangeRequest *)self _existentKeywordObjectIDs];
  [(PHRelationshipChangeRequestHelper *)keywordsHelper prepareIfNeededWithExistentObjectIDs:_existentKeywordObjectIDs];

  v5 = self->_keywordsHelper;

  return [(PHRelationshipChangeRequestHelper *)v5 mutableObjectIDsAndUUIDs];
}

- (void)removeKeywords:(id)keywords
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:keywords];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    _mutableKeywordObjectIDsAndUUIDs = [(PHAssetChangeRequest *)self _mutableKeywordObjectIDsAndUUIDs];
    [_mutableKeywordObjectIDsAndUUIDs removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)addKeywords:(id)keywords
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:keywords];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    _mutableKeywordObjectIDsAndUUIDs = [(PHAssetChangeRequest *)self _mutableKeywordObjectIDsAndUUIDs];
    [_mutableKeywordObjectIDsAndUUIDs addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)setKeywordTitles:(id)titles
{
  titlesCopy = titles;
  [(PHChangeRequest *)self didMutate];
  self->_didSetKeywordTitles = 1;
  v5 = [titlesCopy copy];

  keywordTitles = self->_keywordTitles;
  self->_keywordTitles = v5;
}

- (void)setVariationSuggestionStates:(unint64_t)states forVariationType:(unint64_t)type
{
  statesCopy = states;
  [(PHChangeRequest *)self didMutate];
  self->_didSetVariationSuggestionStates = 1;
  v7 = 6 * type - 6;
  v8 = (statesCopy & 0x3F) << v7;
  if (!type)
  {
    v8 = 0;
  }

  v9 = 63 << v7;
  if (!type)
  {
    v9 = 0;
  }

  self->_variationSuggestionStates |= v8;
  self->_variationSuggestionStatesMask |= v9;
}

- (void)incrementShareCount
{
  [(PHChangeRequest *)self didMutate];
  date = [MEMORY[0x1E695DF00] date];
  lastSharedDate = self->_lastSharedDate;
  self->_lastSharedDate = date;

  self->_incrementShareCount = 1;
}

- (void)setFaceAdjustmentVersion:(id)version
{
  versionCopy = version;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (versionCopy)
  {
    [mutations setObject:versionCopy forKeyedSubscript:@"faceAdjustmentVersion"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"faceAdjustmentVersion"];
  }

  else
  {
    [mutations removeObjectForKey:@"faceAdjustmentVersion"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"faceAdjustmentVersion"];
  }
}

- (id)faceAdjustmentVersion
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"faceAdjustmentVersion"];

  return v5;
}

- (void)setContextualVideoThumbnailImage:(CGImage *)image withIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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

  if (!image || !identifierCopy)
  {
    v7 = PLPhotoKitGetLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v17 = 136315650;
    v18 = "[PHAssetChangeRequest setContextualVideoThumbnailImage:withIdentifier:]";
    v19 = 2048;
    imageCopy = image;
    v21 = 2114;
    v22 = identifierCopy;
    v13 = "Invalid parameter in %s image:%p identifier:%{public}@";
    v14 = v7;
    v15 = 32;
    goto LABEL_12;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  identifier = [*MEMORY[0x1E6982E58] identifier];
  v9 = CGImageDestinationCreateWithData(v7, identifier, 1uLL, 0);

  if (v9)
  {
    CGImageDestinationAddImage(v9, image, 0);
    CGImageDestinationFinalize(v9);
    CFRelease(v9);
    v10 = [(NSDictionary *)self->_contextualVideoThumbnailImageDataByIdentifier mutableCopy];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v10 setObject:v7 forKeyedSubscript:identifierCopy];
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

- (void)setTemporalFaces:(id)faces
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:faces];
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

- (void)removeFaces:(id)faces
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:faces];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    _mutableFaceObjectIDsAndUUIDs = [(PHAssetChangeRequest *)self _mutableFaceObjectIDsAndUUIDs];
    [_mutableFaceObjectIDsAndUUIDs removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)addFaces:(id)faces
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:faces];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    _mutableFaceObjectIDsAndUUIDs = [(PHAssetChangeRequest *)self _mutableFaceObjectIDsAndUUIDs];
    [_mutableFaceObjectIDsAndUUIDs addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)_setSavedAssetType:(signed __int16)type
{
  self->_didSetSavedAssetType = 1;
  self->_savedAssetType = type;
  [(PHChangeRequest *)self didMutate];
}

- (void)resetGeneratedAssetDescriptions
{
  [(PHChangeRequest *)self didMutate];
  if (self->_didSetGeneratedAssetDescriptionProperties)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1482 description:@"Attempting to set and reset generated asset description in same change request."];
  }

  self->_resetGeneratedAssetDescriptionProperties = 1;
}

- (void)setGeneratedAssetDescription:(id)description analysisVersion:(int64_t)version sourceType:(int64_t)type
{
  v21[2] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1466 description:{@"Invalid parameter not satisfying: %@", @"description"}];
  }

  if (version <= 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1467 description:{@"Invalid parameter not satisfying: %@", @"version > 0"}];
  }

  if (type >= 3)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1468 description:{@"Invalid parameter not satisfying: %@", @"sourceType >= 0 && sourceType <= PHGeneratedAssetDescriptionSourceTypeMovie"}];
  }

  if (self->_resetGeneratedAssetDescriptionProperties)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1469 description:@"Attempting to set and reset generated asset description in same change request."];
  }

  [(PHChangeRequest *)self didMutate];
  if (!self->_generatedAssetDescriptionDictionaries)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    generatedAssetDescriptionDictionaries = self->_generatedAssetDescriptionDictionaries;
    self->_generatedAssetDescriptionDictionaries = dictionary;
  }

  v20[0] = @"descriptionText";
  v20[1] = @"analysisVersion";
  v21[0] = descriptionCopy;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:version];
  v21[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v14 = self->_generatedAssetDescriptionDictionaries;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];

  self->_didSetGeneratedAssetDescriptionProperties = 1;
}

- (void)setAlternateImportImageDate:(id)date
{
  dateCopy = date;
  [(PHChangeRequest *)self didMutate];
  alternateImportImageDate = self->_alternateImportImageDate;
  self->_alternateImportImageDate = dateCopy;
}

- (void)_validateObjectSaliencyRects:(id)rects
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  rectsCopy = rects;
  v5 = [rectsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(rectsCopy);
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

      v6 = [rectsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)setObjectSaliencyRects:(id)rects
{
  v21 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  [(PHChangeRequest *)self didMutate];
  self->_didSetObjectSaliencyRectsData = 1;
  if ([rectsCopy count] <= 3 && objc_msgSend(rectsCopy, "count"))
  {
    [(PHAssetChangeRequest *)self _validateObjectSaliencyRects:rectsCopy];
    objc_storeStrong(&self->_objectSaliencyRects, rects);
    v18 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:rectsCopy requiringSecureCoding:1 error:&v18];
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

  else if ([rectsCopy count] >= 4)
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

- (void)setShiftedLocation:(id)location
{
  locationCopy = location;
  [(PHChangeRequest *)self didMutate];
  self->_didSetShiftedLocation = 1;
  shiftedLocation = self->_shiftedLocation;
  self->_shiftedLocation = locationCopy;
}

- (void)setReverseLocationDataIsValid:(BOOL)valid
{
  [(PHChangeRequest *)self didMutate];
  self->_didSetReverseLocationDataIsValid = 1;
  self->_reverseLocationDataIsValid = valid;
}

- (void)setReverseLocationData:(id)data
{
  dataCopy = data;
  [(PHChangeRequest *)self didMutate];
  self->_didSetReverseLocationData = 1;
  reverseLocationData = self->_reverseLocationData;
  self->_reverseLocationData = dataCopy;
}

- (void)setDuplicateMatchingData:(id)data duplicateMatchingAlternateData:(id)alternateData processingSucceeded:(BOOL)succeeded
{
  dataCopy = data;
  alternateDataCopy = alternateData;
  [(PHChangeRequest *)self didMutate];
  self->_didSetDuplicateMatchingData = 1;
  duplicateMatchingData = self->_duplicateMatchingData;
  self->_duplicateMatchingData = dataCopy;
  v11 = dataCopy;

  duplicateMatchingAlternateData = self->_duplicateMatchingAlternateData;
  self->_duplicateMatchingAlternateData = alternateDataCopy;

  self->_duplicateProcessingSucceeded = succeeded;
}

- (void)setSceneprintData:(id)data
{
  dataCopy = data;
  [(PHChangeRequest *)self didMutate];
  self->_didSetSceneprintData = 1;
  sceneprintData = self->_sceneprintData;
  self->_sceneprintData = dataCopy;
}

- (void)setRectWithNormalizedRect:(CGRect)rect forPackedRect:(int64_t *)packedRect forSetFlag:(BOOL *)flag
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsNull(rect))
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

  *packedRect = MEMORY[0x19EAF2080](x, y, width, height);
  *flag = 1;

  [(PHChangeRequest *)self didMutate];
}

- (void)setAcceptableCropRectWithNormalizedRect:(CGRect)rect
{
  v5 = 0;
  v4 = 0;
  [(PHAssetChangeRequest *)self setRectWithNormalizedRect:&v5 forPackedRect:&v4 forSetFlag:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  self->_packedAcceptableCropRect = v5;
  self->_didSetPackedAcceptableCropRect = v4;
}

- (void)setPreferredCropRectWithNormalizedRect:(CGRect)rect
{
  v5 = 0;
  v4 = 0;
  [(PHAssetChangeRequest *)self setRectWithNormalizedRect:&v5 forPackedRect:&v4 forSetFlag:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  self->_packedPreferredCropRect = v5;
  self->_didSetPackedPreferredCropRect = v4;
}

- (void)setPhotoIrisVisibilityState:(unsigned __int16)state
{
  self->_photoIrisVisibilityState = state;
  self->_didSetVisibilityState = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setVideoEmbeddingVersion:(signed __int16)version
{
  versionCopy = version;
  v11 = *MEMORY[0x1E69E9840];
  self->_videoEmbeddingVersion = version;
  self->_didSetVideoEmbeddingVersion = 1;
  [(PHChangeRequest *)self didMutate];
  v5 = PLAssetAnalysisGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PHChangeRequest *)self uuid];
    v7 = 138412546;
    v8 = uuid;
    v9 = 1024;
    v10 = versionCopy;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "Set video embedding version - uuid: %@, version: %d", &v7, 0x12u);
  }
}

- (void)setImageEmbeddingVersion:(signed __int16)version
{
  versionCopy = version;
  v11 = *MEMORY[0x1E69E9840];
  self->_imageEmbeddingVersion = version;
  self->_didSetImageEmbeddingVersion = 1;
  [(PHChangeRequest *)self didMutate];
  v5 = PLAssetAnalysisGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PHChangeRequest *)self uuid];
    v7 = 138412546;
    v8 = uuid;
    v9 = 1024;
    v10 = versionCopy;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "Set image embedding version - uuid: %@, version: %d", &v7, 0x12u);
  }
}

- (void)setSceneClassifications:(id)classifications ofType:(int64_t)type version:(signed __int16)version timestamp:(id)timestamp
{
  versionCopy = version;
  v26 = *MEMORY[0x1E69E9840];
  classificationsCopy = classifications;
  timestampCopy = timestamp;
  sceneClassificationDictionariesByType = self->_sceneClassificationDictionariesByType;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v13 = [(NSMutableDictionary *)sceneClassificationDictionariesByType objectForKeyedSubscript:v12];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisLocationVersion"];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (v15)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1338 description:@"Attempting to set normal and location analysis scene classifications in same change request."];
  }

  [(PHAssetChangeRequest *)self _setSceneClassifications:classificationsCopy ofType:type timestamp:timestampCopy, a2];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisVersion"];
  [(PHAssetChangeRequest *)self _addVersion:versionCopy withKey:v16 andType:type toDictionary:self->_sceneClassificationDictionariesByType];

  [(PHChangeRequest *)self didMutate];
  self->_didSetSceneClassifications = 1;
  v17 = PLAssetAnalysisGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PHChangeRequest *)self uuid];
    *buf = 138412546;
    v23 = uuid;
    v24 = 2112;
    v25 = timestampCopy;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "Set scene classifications - uuid: %@, adjustment timestamp: %@", buf, 0x16u);
  }
}

- (void)setLocationBasedSceneClassifications:(id)classifications ofType:(int64_t)type version:(signed __int16)version timestamp:(id)timestamp
{
  versionCopy = version;
  v26 = *MEMORY[0x1E69E9840];
  classificationsCopy = classifications;
  timestampCopy = timestamp;
  sceneClassificationDictionariesByType = self->_sceneClassificationDictionariesByType;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v13 = [(NSMutableDictionary *)sceneClassificationDictionariesByType objectForKeyedSubscript:v12];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisVersion"];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (v15)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:1329 description:@"Attempting to set normal and location analysis scene classifications in same change request."];
  }

  [(PHAssetChangeRequest *)self _setSceneClassifications:classificationsCopy ofType:type timestamp:timestampCopy, a2];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sceneAnalysisLocationVersion"];
  [(PHAssetChangeRequest *)self _addVersion:versionCopy withKey:v16 andType:type toDictionary:self->_sceneClassificationDictionariesByType];

  [(PHChangeRequest *)self didMutate];
  self->_didSetSceneClassifications = 1;
  v17 = PLAssetAnalysisGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PHChangeRequest *)self uuid];
    *buf = 138412546;
    v23 = uuid;
    v24 = 2112;
    v25 = timestampCopy;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "Set scene classifications - uuid: %@, adjustment timestamp: %@", buf, 0x16u);
  }
}

- (void)_addVersion:(signed __int16)version withKey:(id)key andType:(int64_t)type toDictionary:(id)dictionary
{
  versionCopy = version;
  v9 = MEMORY[0x1E696AD98];
  dictionaryCopy = dictionary;
  keyCopy = key;
  v12 = [v9 numberWithInteger:type];
  v13 = [dictionaryCopy objectForKeyedSubscript:v12];
  v16 = [v13 mutableCopy];

  v14 = [MEMORY[0x1E696AD98] numberWithShort:versionCopy];
  [v16 setObject:v14 forKeyedSubscript:keyCopy];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [dictionaryCopy setObject:v16 forKeyedSubscript:v15];
}

- (void)_setSceneClassifications:(id)classifications ofType:(int64_t)type timestamp:(id)timestamp
{
  v46 = *MEMORY[0x1E69E9840];
  classificationsCopy = classifications;
  timestampCopy = timestamp;
  if (timestampCopy)
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
  v10 = classificationsCopy;
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
        if ([v15 classificationType] != type)
        {
          v28 = MEMORY[0x1E695DF30];
          v29 = *MEMORY[0x1E695D930];
          type = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: Classification type (%ld) does not match expected type (%ld). PHSceneClassification.type should equal expected type in 'ofType' parameter.", "-[PHAssetChangeRequest _setSceneClassifications:ofType:timestamp:]", objc_msgSend(v15, "classificationType"), type];
          v31 = [v28 exceptionWithName:v29 reason:type userInfo:0];
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    sceneClassificationDictionariesByType = self->_sceneClassificationDictionariesByType;
    self->_sceneClassificationDictionariesByType = dictionary;
  }

  selfCopy = self;
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
  null = timestampCopy;
  if (!timestampCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v44[1] = null;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v24 = selfCopy->_sceneClassificationDictionariesByType;
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(NSMutableDictionary *)v24 setObject:v23 forKeyedSubscript:v25];

  if (!timestampCopy)
  {
  }

  if (v19)
  {
  }

  selfCopy->_didSetSceneClassifications = 1;
  v26 = PLAssetAnalysisGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PHChangeRequest *)selfCopy uuid];
    *buf = 138412546;
    v40 = uuid;
    v41 = 2112;
    v42 = timestampCopy;
    _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEBUG, "Set scene classifications - uuid: %@, adjustment timestamp: %@", buf, 0x16u);
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  [(PHChangeRequest *)self didMutate];
  self->_didSetTitle = 1;
  v5 = [titleCopy copy];

  title = self->_title;
  self->_title = v5;
}

- (void)setAccessibilityDescription:(id)description
{
  descriptionCopy = description;
  [(PHChangeRequest *)self didMutate];
  if (descriptionCopy)
  {
    v5 = descriptionCopy;
  }

  else
  {
    v5 = &stru_1F0FC60C8;
  }

  v6 = [(__CFString *)v5 copy];

  accessibilityDescription = self->_accessibilityDescription;
  self->_accessibilityDescription = v6;
}

- (void)setAssetDescription:(id)description
{
  descriptionCopy = description;
  [(PHChangeRequest *)self didMutate];
  if (descriptionCopy)
  {
    v5 = descriptionCopy;
  }

  else
  {
    v5 = &stru_1F0FC60C8;
  }

  v6 = [(__CFString *)v5 copy];

  assetDescription = self->_assetDescription;
  self->_assetDescription = v6;
}

- (void)setLowLight:(float)light
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = light;
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

- (void)setPleasantCameraTiltScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setIntrusiveObjectPresenceScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setInterestingSubjectScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setPleasantCompositionScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setFailureScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setNoiseScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setPleasantPostProcessingScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setPleasantPerspectiveScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setImmersivenessScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setPleasantPatternScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setPleasantSymmetryScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setLivelyColorScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setHarmoniousColorScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setPleasantReflectionsScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setPleasantLightingScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setWellTimedShotScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setSharplyFocusedSubjectScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setTastefullyBlurredScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setWellChosenSubjectScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setWellFramedSubjectScore:(float)score
{
  [(PHChangeRequest *)self didMutate];
  self->_didModifyComputedAttributes = 1;
  if (!self->_computedAttributeMutations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    computedAttributeMutations = self->_computedAttributeMutations;
    self->_computedAttributeMutations = v6;
  }

  *&v5 = score;
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

- (void)setPtpTrashedState:(int64_t)state
{
  [(PHChangeRequest *)self didMutate];
  self->_ptpTrashedState = state;
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

- (void)setGpsHorizontalAccuracy:(double)accuracy
{
  self->_gpsHorizontalAccuracy = accuracy;
  self->_didSetGpsHorizontalAccuracy = 1;
  [(PHChangeRequest *)self didMutate];
}

- (void)setLocation:(CLLocation *)location
{
  obj = location;
  [(PHChangeRequest *)self didMutate];
  null = obj;
  if (!obj)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  objc_storeStrong(&self->_updatedLocation, null);
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
  null = [MEMORY[0x1E695DFB0] null];
  v5 = [(CLLocation *)v3 isEqual:null];

  if (v5)
  {

    v3 = 0;
  }

  return v3;
}

- (void)setGenerativeMemoryCreationEligibilityState:(signed __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"generativeMemoryCreationEligibilityState"];
}

- (signed)generativeMemoryCreationEligibilityState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"generativeMemoryCreationEligibilityState"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setIconicScore:(double)score
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:score];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"iconicScore"];
}

- (double)iconicScore
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"iconicScore"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setOverallAestheticScore:(float)score
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  *&v6 = score;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v9 forKeyedSubscript:@"overallAestheticScore"];
}

- (float)overallAestheticScore
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"overallAestheticScore"];

  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (void)setHighlightPromotionScore:(double)score
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:score];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"highlightPromotionScore"];
}

- (double)highlightPromotionScore
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"highlightPromotionScore"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setHighlightVisibilityScore:(double)score
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:score];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"highlightVisibilityScore"];
}

- (double)highlightVisibilityScore
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"highlightVisibilityScore"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setCurationScore:(double)score
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:score];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"curationScore"];
}

- (double)curationScore
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"curationScore"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setHidden:(BOOL)hidden
{
  v3 = hidden;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"hidden"];
}

- (BOOL)isHidden
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"hidden"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setFavorite:(BOOL)favorite
{
  v3 = favorite;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"favorite"];
}

- (BOOL)isFavorite
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"favorite"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setAddedDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"addedDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"addedDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"addedDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"addedDate"];
  }
}

- (NSDate)addedDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"addedDate"];

  return v5;
}

- (void)setModificationDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"modificationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"modificationDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"modificationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"modificationDate"];
  }
}

- (NSDate)modificationDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"modificationDate"];

  return v5;
}

- (void)setCreationDate:(NSDate *)creationDate
{
  v10 = creationDate;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (v10)
  {
    [mutations setObject:v10 forKeyedSubscript:@"dateCreated"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"dateCreated"];
  }

  else
  {
    [mutations removeObjectForKey:@"dateCreated"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"dateCreated"];
  }
}

- (NSDate)creationDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"dateCreated"];

  return v5;
}

- (BOOL)prepareForPhotoLibraryCheck:(id)check error:(id *)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  checkCopy = check;
  if ([checkCopy type] && objc_msgSend(checkCopy, "type") != 1)
  {
    if (error)
    {
      v6 = MEMORY[0x1E696ABC0];
      v9 = *MEMORY[0x1E696A578];
      v10[0] = @"Change must be performed within the sharedPhotoLibrary or sharedMomentSharePhotoLibrary";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      *error = [v6 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v7];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 1;
  }

  return error;
}

- (PHAssetChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  v273 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v11 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:self request:requestCopy clientAuthorization:authorizationCopy];
  if (!v11 || (self = [(PHAssetChangeRequest *)self initWithHelper:v11], self, !self))
  {

    selfCopy = 0;
    goto LABEL_227;
  }

  v262 = v11;
  v12 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"detectedFaces" xpcDict:dictCopy changeRequestHelper:self->super._helper];
  facesHelper = self->_facesHelper;
  self->_facesHelper = v12;

  v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"temporalDetectedFaces" xpcDict:dictCopy changeRequestHelper:self->super._helper];
  temporalFacesHelper = self->_temporalFacesHelper;
  self->_temporalFacesHelper = v14;

  v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keywords" xpcDict:dictCopy changeRequestHelper:self->super._helper];
  keywordsHelper = self->_keywordsHelper;
  self->_keywordsHelper = v16;

  v18 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"cloudComments" xpcDict:dictCopy changeRequestHelper:self->super._helper];
  commentsHelper = self->_commentsHelper;
  self->_commentsHelper = v18;

  v20 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"likeComments" xpcDict:dictCopy changeRequestHelper:self->super._helper];
  likesHelper = self->_likesHelper;
  self->_likesHelper = v20;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PHAssetChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke;
  aBlock[3] = &unk_1E75AAEB0;
  selfCopy = self;
  v270 = selfCopy;
  v263 = requestCopy;
  v271 = requestCopy;
  v23 = _Block_copy(aBlock);
  selfCopy->_clientProcessIdentifier = [authorizationCopy clientProcessIdentifier];
  photoKitEntitled = [authorizationCopy photoKitEntitled];
  v264 = authorizationCopy;
  if (xpc_dictionary_get_BOOL(dictCopy, "didChangeAdjustments"))
  {
    [(PHAssetChangeRequest *)selfCopy markDidChangeAdjustments];
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

        authorizationCopy = v264;
      }
    }

    else
    {
      v25 = 0;
    }

    [(PHAssetChangeRequest *)selfCopy setContentEditingOutput:v25];
    if (photoKitEntitled)
    {
      v28 = PLURLFromXPCDictionary();
      editorBundleURL = selfCopy->_editorBundleURL;
      selfCopy->_editorBundleURL = v28;

      if (selfCopy->_editorBundleURL)
      {
        v30 = [MEMORY[0x1E696AAE8] bundleWithURL:?];
        bundleIdentifier = [v30 bundleIdentifier];
        editorBundleID = selfCopy->_editorBundleID;
        selfCopy->_editorBundleID = bundleIdentifier;
      }

      if (!selfCopy->_editorBundleID)
      {
        v33 = PLStringFromXPCDictionary();
        v34 = selfCopy->_editorBundleID;
        selfCopy->_editorBundleID = v33;
      }
    }

    if (!selfCopy->_editorBundleID)
    {
      trustedCallerBundleID = [authorizationCopy trustedCallerBundleID];
      v36 = selfCopy->_editorBundleID;
      selfCopy->_editorBundleID = trustedCallerBundleID;
    }
  }

  if ([(PHAssetChangeRequest *)selfCopy didChangeAdjustments])
  {
    v23[2](v23);
  }

  selfCopy->_originalResourceChoice = xpc_dictionary_get_uint64(dictCopy, "originalResourceChoice");
  v37 = xpc_dictionary_get_BOOL(dictCopy, "didSetOriginalResourceChoice");
  selfCopy->_didSetOriginalResourceChoice = v37;
  if (v37)
  {
    v23[2](v23);
  }

  v38 = xpc_dictionary_get_BOOL(dictCopy, "didRevertLocationToOriginal");
  selfCopy->_didRevertLocationToOriginal = v38;
  if (v38)
  {
    v23[2](v23);
  }

  v39 = xpc_dictionary_get_BOOL(dictCopy, "didUpdateExtendedAttributesUsingOriginalMediaMetadata");
  selfCopy->_didUpdateExtendedAttributesUsingOriginalMediaMetadata = v39;
  if (v39)
  {
    v23[2](v23);
  }

  v40 = xpc_dictionary_get_BOOL(dictCopy, "didExpungeAllSpatialOverCaptureResources");
  selfCopy->_didExpungeAllSpatialOverCaptureResources = v40;
  if (v40)
  {
    v23[2](v23);
  }

  v41 = xpc_dictionary_get_BOOL(dictCopy, "didTrashAllSpatialOverCaptureResources");
  selfCopy->_didTrashAllSpatialOverCaptureResources = v41;
  if (v41)
  {
    v23[2](v23);
  }

  v42 = xpc_dictionary_get_BOOL(dictCopy, "didUntrashAllSpatialOverCaptureResources");
  selfCopy->_didUntrashAllSpatialOverCaptureResources = v42;
  if (v42)
  {
    v23[2](v23);
  }

  v43 = xpc_dictionary_get_BOOL(dictCopy, "didExpungeTrashedSpatialOverCaptureResources");
  selfCopy->_didExpungeTrashedSpatialOverCaptureResources = v43;
  if (v43)
  {
    v23[2](v23);
  }

  v44 = xpc_dictionary_get_BOOL(dictCopy, "didPromoteToGuestAsset");
  selfCopy->_didPromoteToGuestAsset = v44;
  if (v44)
  {
    v23[2](v23);
  }

  v45 = xpc_dictionary_get_BOOL(dictCopy, "didResetGuestAssetPromotion");
  selfCopy->_didResetGuestAssetPromotion = v45;
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
    updatedLocation = selfCopy->_updatedLocation;
    selfCopy->_updatedLocation = v51;

    if (selfCopy->_updatedLocation)
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
  assetDescription = selfCopy->_assetDescription;
  selfCopy->_assetDescription = v55;

  if (selfCopy->_assetDescription)
  {
    v23[2](v23);
  }

  v57 = PLStringFromXPCDictionary();
  accessibilityDescription = selfCopy->_accessibilityDescription;
  selfCopy->_accessibilityDescription = v57;

  if (selfCopy->_accessibilityDescription)
  {
    v23[2](v23);
  }

  v59 = xpc_dictionary_get_BOOL(dictCopy, "didSetTitle");
  selfCopy->_didSetTitle = v59;
  if (v59)
  {
    v60 = PLStringFromXPCDictionary();
    title = selfCopy->_title;
    selfCopy->_title = v60;

    v23[2](v23);
  }

  v62 = xpc_dictionary_get_BOOL(dictCopy, "didSetKeywordTitles");
  selfCopy->_didSetKeywordTitles = v62;
  if (v62)
  {
    v63 = PLArrayFromXPCDictionary();
    v64 = [MEMORY[0x1E695DFD8] setWithArray:v63];
    keywordTitles = selfCopy->_keywordTitles;
    selfCopy->_keywordTitles = v64;

    v23[2](v23);
  }

  v66 = PLURLFromXPCDictionary();
  videoURLForUpdate = selfCopy->_videoURLForUpdate;
  selfCopy->_videoURLForUpdate = v66;

  v68 = PLStringFromXPCDictionary();
  pairingIdentifier = selfCopy->_pairingIdentifier;
  selfCopy->_pairingIdentifier = v68;

  v70 = PLDictionaryFromXPCDictionary();
  p_videoDuration = &selfCopy->_videoDuration;
  if (v70)
  {
    CMTimeMakeFromDictionary(&buf.start, v70);
    v72 = *&buf.start.value;
    selfCopy->_videoDuration.epoch = buf.start.epoch;
    *&p_videoDuration->value = v72;
  }

  else
  {
    v73 = MEMORY[0x1E6960C70];
    *&p_videoDuration->value = *MEMORY[0x1E6960C70];
    selfCopy->_videoDuration.epoch = *(v73 + 16);
  }

  v74 = PLDictionaryFromXPCDictionary();
  p_imageDisplayTime = &selfCopy->_imageDisplayTime;
  if (v74)
  {
    CMTimeMakeFromDictionary(&buf.start, v74);
    v76 = *&buf.start.value;
    selfCopy->_imageDisplayTime.epoch = buf.start.epoch;
    *&p_imageDisplayTime->value = v76;
  }

  else
  {
    v77 = MEMORY[0x1E6960C70];
    *&p_imageDisplayTime->value = *MEMORY[0x1E6960C70];
    selfCopy->_imageDisplayTime.epoch = *(v77 + 16);
  }

  if (selfCopy->_videoURLForUpdate && selfCopy->_pairingIdentifier)
  {
    v23[2](v23);
  }

  selfCopy->_photoIrisVisibilityState = xpc_dictionary_get_uint64(dictCopy, "photoIrisVisibilityState");
  v78 = xpc_dictionary_get_BOOL(dictCopy, "didSetVisibilityState");
  selfCopy->_didSetVisibilityState = v78;
  if (v78)
  {
    v23[2](v23);
  }

  v79 = PLDictionaryFromXPCDictionary();
  v80 = v79;
  if (v79)
  {
    v81 = [v79 mutableCopy];
    sceneClassificationDictionariesByType = selfCopy->_sceneClassificationDictionariesByType;
    selfCopy->_sceneClassificationDictionariesByType = v81;

    selfCopy->_didSetSceneClassifications = 1;
    v23[2](v23);
  }

  v83 = xpc_dictionary_get_BOOL(dictCopy, "didSetImageEmbeddingVersionKey");
  selfCopy->_didSetImageEmbeddingVersion = v83;
  if (v83)
  {
    selfCopy->_imageEmbeddingVersion = xpc_dictionary_get_int64(dictCopy, "imageEmbeddingVersion");
    v23[2](v23);
  }

  v260 = v80;
  v84 = xpc_dictionary_get_BOOL(dictCopy, "didSetVideoEmbeddingVersionKey");
  selfCopy->_didSetVideoEmbeddingVersion = v84;
  if (v84)
  {
    selfCopy->_videoEmbeddingVersion = xpc_dictionary_get_int64(dictCopy, "videoEmbeddingVersion");
    v23[2](v23);
  }

  selfCopy->_incrementPlayCount = xpc_dictionary_get_BOOL(dictCopy, "incrementPlayCount");
  selfCopy->_incrementShareCount = xpc_dictionary_get_BOOL(dictCopy, "incrementShareCount");
  date = xpc_dictionary_get_date(dictCopy, "lastSharedDate");
  if (date)
  {
    v86 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:date];
    lastSharedDate = selfCopy->_lastSharedDate;
    selfCopy->_lastSharedDate = v86;
  }

  v88 = xpc_dictionary_get_BOOL(dictCopy, "incrementViewCount");
  selfCopy->_incrementViewCount = v88;
  if (selfCopy->_incrementPlayCount || selfCopy->_incrementShareCount || v88)
  {
    v23[2](v23);
  }

  selfCopy->_clearLastViewedDate = xpc_dictionary_get_BOOL(dictCopy, "clearLastViewedDate");
  v89 = xpc_dictionary_get_BOOL(dictCopy, "clearLastSharedDate");
  selfCopy->_clearLastSharedDate = v89;
  if (selfCopy->_clearLastViewedDate || v89)
  {
    v23[2](v23);
  }

  v90 = xpc_dictionary_get_value(dictCopy, "variationSuggestionStates");
  v91 = v90;
  if (v90)
  {
    selfCopy->_didSetVariationSuggestionStates = 1;
    selfCopy->_variationSuggestionStates = xpc_uint64_get_value(v90);
    selfCopy->_variationSuggestionStatesMask = xpc_dictionary_get_uint64(dictCopy, "variationSuggestionStatesMask");
    v23[2](v23);
  }

  v92 = xpc_dictionary_get_BOOL(dictCopy, "toRetryUpload");
  selfCopy->_toRetryUpload = v92;
  if (v92)
  {
    v23[2](v23);
  }

  v93 = xpc_dictionary_get_value(dictCopy, "pathsToNewAssetResourcesByAssetResourceType");

  if (v93)
  {
    v94 = PLDictionaryFromXPCObject();
    pathsToNewAssetResourcesByAssetResourceType = selfCopy->_pathsToNewAssetResourcesByAssetResourceType;
    selfCopy->_pathsToNewAssetResourcesByAssetResourceType = v94;

    v23[2](v23);
  }

  v96 = xpc_dictionary_get_value(dictCopy, "assetResourceTypesToDelete");

  if (v96)
  {
    v97 = MEMORY[0x1E695DFD8];
    v98 = PLArrayFromXPCObject();
    v99 = [v97 setWithArray:v98];
    assetResourceTypesToDelete = selfCopy->_assetResourceTypesToDelete;
    selfCopy->_assetResourceTypesToDelete = v99;

    v23[2](v23);
  }

  v101 = xpc_dictionary_get_BOOL(dictCopy, "deleteContextualVideoThumbnails");
  selfCopy->_deleteContextualVideoThumbnails = v101;
  if (v101)
  {
    v23[2](v23);
  }

  v102 = xpc_dictionary_get_value(dictCopy, "libraryScopeOriginatorUUIDs");

  if (v102)
  {
    v103 = MEMORY[0x1E695DFD8];
    v104 = PLArrayFromXPCObject();
    v105 = [v103 setWithArray:v104];
    libraryScopeOriginatorUUIDs = selfCopy->_libraryScopeOriginatorUUIDs;
    selfCopy->_libraryScopeOriginatorUUIDs = v105;

    v23[2](v23);
  }

  v107 = xpc_dictionary_get_value(dictCopy, "packedPreferredCropRect");

  if (v107)
  {
    selfCopy->_didSetPackedPreferredCropRect = 1;
    selfCopy->_packedPreferredCropRect = xpc_int64_get_value(v107);
    v23[2](v23);
  }

  v261 = v46;
  v108 = xpc_dictionary_get_value(dictCopy, "packedAcceptableCropRect");

  if (v108)
  {
    selfCopy->_didSetPackedAcceptableCropRect = 1;
    selfCopy->_packedAcceptableCropRect = xpc_int64_get_value(v108);
    v23[2](v23);
  }

  v109 = xpc_dictionary_get_value(dictCopy, "packedBestPlaybackRect");

  if (v109)
  {
    selfCopy->_didSetPackedBestPlaybackRect = 1;
    selfCopy->_packedBestPlaybackRect = xpc_int64_get_value(v109);
    v23[2](v23);
  }

  v110 = xpc_dictionary_get_value(dictCopy, "computedAttributeMutations");

  if (v110)
  {
    selfCopy->_didModifyComputedAttributes = 1;
    v111 = PLDictionaryFromXPCObject();
    v112 = [v111 mutableCopy];
    computedAttributeMutations = selfCopy->_computedAttributeMutations;
    selfCopy->_computedAttributeMutations = v112;

    v23[2](v23);
  }

  v114 = xpc_dictionary_get_BOOL(dictCopy, "resetWallpaperProperties");
  selfCopy->_resetWallpaperProperties = v114;
  if (v114)
  {
    selfCopy->_didSetWallpaperPropertiesTimestamp = 1;
    wallpaperPropertiesTimestamp = selfCopy->_wallpaperPropertiesTimestamp;
    selfCopy->_wallpaperPropertiesTimestamp = 0;

    selfCopy->_didSetWallpaperPropertiesVersion = 1;
    selfCopy->_wallpaperPropertiesVersion = 0;
    selfCopy->_didSetWallpaperPropertiesData = 1;
    wallpaperPropertiesData = selfCopy->_wallpaperPropertiesData;
    selfCopy->_wallpaperPropertiesData = 0;
LABEL_109:

    v23[2](v23);
    goto LABEL_110;
  }

  v117 = xpc_dictionary_get_value(dictCopy, "photoAnalysisWallpaperPropertiesTimeStamp");

  if (v117)
  {
    selfCopy->_didSetWallpaperPropertiesTimestamp = 1;
    v118 = PLDateFromXPCObject();
    v119 = selfCopy->_wallpaperPropertiesTimestamp;
    selfCopy->_wallpaperPropertiesTimestamp = v118;

    v23[2](v23);
  }

  v120 = xpc_dictionary_get_value(dictCopy, "photoAnalysisWallpaperPropertiesVersion");

  if (v120)
  {
    selfCopy->_didSetWallpaperPropertiesVersion = 1;
    selfCopy->_wallpaperPropertiesVersion = xpc_uint64_get_value(v120);
    v23[2](v23);
  }

  v110 = xpc_dictionary_get_value(dictCopy, "photoAnalysisWallpaperProperties");

  if (v110)
  {
    selfCopy->_didSetWallpaperPropertiesData = 1;
    buf.start.value = 0;
    data = xpc_dictionary_get_data(dictCopy, "photoAnalysisWallpaperProperties", &buf);
    v122 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:buf.start.value];
    wallpaperPropertiesData = selfCopy->_wallpaperPropertiesData;
    selfCopy->_wallpaperPropertiesData = v122;
    goto LABEL_109;
  }

LABEL_110:
  v123 = xpc_dictionary_get_value(dictCopy, "mediaAnalysisTimeStamp");
  if (v123)
  {
    selfCopy->_didSetMediaAnalysisTimeStamp = 1;
    v124 = PLDateFromXPCObject();
    mediaAnalysisTimeStamp = selfCopy->_mediaAnalysisTimeStamp;
    selfCopy->_mediaAnalysisTimeStamp = v124;

    v23[2](v23);
  }

  v126 = xpc_dictionary_get_value(dictCopy, "mediaAnalysisVersion");

  if (v126)
  {
    selfCopy->_didSetMediaAnalysisVersion = 1;
    selfCopy->_mediaAnalysisVersion = xpc_uint64_get_value(v126);
    v23[2](v23);
  }

  v127 = xpc_dictionary_get_value(dictCopy, "mediaAnalysisImageVersion");

  if (v127)
  {
    selfCopy->_didSetMediaAnalysisImageVersion = 1;
    selfCopy->_mediaAnalysisImageVersion = xpc_int64_get_value(v127);
    v23[2](v23);
  }

  v128 = PLDictionaryFromXPCDictionary();
  if (v128)
  {
    CMTimeMakeFromDictionary(&buf.start, v128);
    v129 = *&buf.start.value;
    selfCopy->_bestKeyFrameTime.epoch = buf.start.epoch;
    *&selfCopy->_bestKeyFrameTime.value = v129;
    v23[2](v23);
  }

  v130 = xpc_dictionary_get_BOOL(dictCopy, "unsetBestKeyFrameTime");
  selfCopy->_didUnsetBestKeyFrameTime = v130;
  if (v130)
  {
    v23[2](v23);
  }

  v131 = PLDataFromXPCDictionary();
  if (v131)
  {
    objc_storeStrong(&selfCopy->_bestKeyFrameJPEGData, v131);
    v23[2](v23);
  }

  v132 = PLDictionaryFromXPCDictionary();
  if (v132)
  {
    objc_storeStrong(&selfCopy->_contextualVideoThumbnailImageDataByIdentifier, v132);
    v23[2](v23);
  }

  v133 = PLDataFromXPCDictionary();
  if (v133)
  {
    objc_storeStrong(&selfCopy->_computeSyncMediaAnalysisPayload, v133);
    v23[2](v23);
  }

  v134 = PLDictionaryFromXPCDictionary();
  if (v134)
  {
    CMTimeRangeMakeFromDictionary(&buf, v134);
    v135 = *&buf.start.value;
    v136 = *&buf.duration.timescale;
    *&selfCopy->_bestVideoTimeRange.start.epoch = *&buf.start.epoch;
    *&selfCopy->_bestVideoTimeRange.duration.timescale = v136;
    *&selfCopy->_bestVideoTimeRange.start.value = v135;
    v23[2](v23);
  }

  v258 = v133;
  v137 = PLDictionaryFromXPCDictionary();
  if (v137)
  {
    CMTimeRangeMakeFromDictionary(&buf, v137);
    v138 = *&buf.start.value;
    v139 = *&buf.duration.timescale;
    *&selfCopy->_animatedStickerTimeRange.start.epoch = *&buf.start.epoch;
    *&selfCopy->_animatedStickerTimeRange.duration.timescale = v139;
    *&selfCopy->_animatedStickerTimeRange.start.value = v138;
    v23[2](v23);
  }

  v140 = xpc_dictionary_get_value(dictCopy, "blurrinessScore");

  if (v140)
  {
    selfCopy->_didSetBlurrinessScore = 1;
    value = xpc_double_get_value(v140);
    selfCopy->_blurrinessScore = value;
    v23[2](v23);
  }

  v142 = xpc_dictionary_get_value(dictCopy, "exposureScore");

  if (v142)
  {
    selfCopy->_didSetExposureScore = 1;
    v143 = xpc_double_get_value(v142);
    selfCopy->_exposureScore = v143;
    v23[2](v23);
  }

  v144 = xpc_dictionary_get_value(dictCopy, "audioScore");

  if (v144)
  {
    selfCopy->_didSetAudioScore = 1;
    v145 = xpc_double_get_value(v144);
    selfCopy->_audioScore = v145;
    v23[2](v23);
  }

  v146 = xpc_dictionary_get_value(dictCopy, "settlingEffectScore");

  if (v146)
  {
    selfCopy->_didSetSettlingEffectScore = 1;
    v147 = xpc_double_get_value(v146);
    selfCopy->_settlingEffectScore = v147;
    v23[2](v23);
  }

  v148 = xpc_dictionary_get_value(dictCopy, "wallpaperScore");

  if (v148)
  {
    selfCopy->_didSetWallpaperScore = 1;
    v149 = xpc_double_get_value(v148);
    selfCopy->_wallpaperScore = v149;
    v23[2](v23);
  }

  v150 = xpc_dictionary_get_value(dictCopy, "autoplaySuggestionScore");

  if (v150)
  {
    selfCopy->_didSetAutoplaySuggestionScore = 1;
    v151 = xpc_double_get_value(v150);
    selfCopy->_autoplaySuggestionScore = v151;
    v23[2](v23);
  }

  v152 = xpc_dictionary_get_value(dictCopy, "videoStickerSuggestionScore");

  if (v152)
  {
    selfCopy->_didSetVideoStickerSuggestionScore = 1;
    v153 = xpc_double_get_value(v152);
    selfCopy->_videoStickerSuggestionScore = v153;
    v23[2](v23);
  }

  v154 = xpc_dictionary_get_value(dictCopy, "videoScore");

  if (v154)
  {
    selfCopy->_didSetVideoScore = 1;
    v155 = xpc_double_get_value(v154);
    selfCopy->_videoScore = v155;
    v23[2](v23);
  }

  v156 = xpc_dictionary_get_value(dictCopy, "activityScore");

  if (v156)
  {
    selfCopy->_didSetActivityScore = 1;
    v157 = xpc_double_get_value(v156);
    selfCopy->_activityScore = v157;
    v23[2](v23);
  }

  v158 = xpc_dictionary_get_value(dictCopy, "faceCount");

  if (v158)
  {
    selfCopy->_didSetFaceCount = 1;
    selfCopy->_faceCount = xpc_uint64_get_value(v158);
    v23[2](v23);
  }

  v159 = xpc_dictionary_get_value(dictCopy, "audioClassification");

  if (v159)
  {
    selfCopy->_didSetAudioClassification = 1;
    selfCopy->_audioClassification = xpc_int64_get_value(v159);
    v23[2](v23);
  }

  v259 = v132;
  v160 = xpc_dictionary_get_value(dictCopy, "probableRotationDirection");

  if (v160)
  {
    selfCopy->_probableRotationDirection = xpc_int64_get_value(v160);
    selfCopy->_didSetProbableRotationDirection = 1;
  }

  v161 = xpc_dictionary_get_value(dictCopy, "probableRotationDirectionConfidence");

  if (v161)
  {
    v162 = xpc_double_get_value(v161);
    selfCopy->_probableRotationDirectionConfidence = v162;
    selfCopy->_didSetProbableRotationDirectionConfidence = 1;
  }

  v163 = xpc_dictionary_get_value(dictCopy, "colorNormalizationData");

  if (v163)
  {
    v164 = PLDataFromXPCDataObject();
    colorNormalizationData = selfCopy->_colorNormalizationData;
    selfCopy->_colorNormalizationData = v164;
  }

  if (xpc_dictionary_get_BOOL(dictCopy, "resetCharacterRecognitionProperties"))
  {
    selfCopy->_resetCharacterRecognitionProperties = 1;
    v23[2](v23);
  }

  else
  {
    v166 = xpc_dictionary_get_value(dictCopy, "characterRecognitionProperties");

    if (v166)
    {
      selfCopy->_didSetCharacterRecognitionData = 1;
      v167 = PLDictionaryFromXPCObject();
      v168 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionData"];
      v169 = [v167 objectForKeyedSubscript:v168];
      characterRecognitionData = selfCopy->_characterRecognitionData;
      selfCopy->_characterRecognitionData = v169;

      v171 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"machineReadableCodeData"];
      v172 = [v167 objectForKeyedSubscript:v171];
      machineReadableCodeData = selfCopy->_machineReadableCodeData;
      selfCopy->_machineReadableCodeData = v172;

      v174 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionAlgorithmVersion"];
      v175 = [v167 objectForKeyedSubscript:v174];
      selfCopy->_characterRecognitionAlgorithmVersion = [v175 integerValue];

      v176 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"characterRecognitionAdjustmentVersion"];
      v177 = [v167 objectForKeyedSubscript:v176];
      characterRecognitionAdjustmentVersion = selfCopy->_characterRecognitionAdjustmentVersion;
      selfCopy->_characterRecognitionAdjustmentVersion = v177;

      v23[2](v23);
      v163 = v166;
    }

    else
    {
      v163 = 0;
    }
  }

  if (xpc_dictionary_get_BOOL(dictCopy, "resetTextUnderstandingProperties"))
  {
    selfCopy->_resetTextUnderstandingProperties = 1;
    v23[2](v23);
  }

  else
  {
    v179 = xpc_dictionary_get_value(dictCopy, "textUnderstandingProperties");

    if (v179)
    {
      selfCopy->_didSetTextUnderstandingProperties = 1;
      v180 = PLDictionaryFromXPCObject();
      v181 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textUnderstandingData"];
      v182 = [v180 objectForKeyedSubscript:v181];
      textUnderstandingData = selfCopy->_textUnderstandingData;
      selfCopy->_textUnderstandingData = v182;

      v184 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textUnderstandingVersion"];
      v185 = [v180 objectForKeyedSubscript:v184];
      selfCopy->_textUnderstandingVersion = [v185 integerValue];

      v23[2](v23);
      v163 = v179;
    }

    else
    {
      v163 = 0;
    }
  }

  if (xpc_dictionary_get_BOOL(dictCopy, "resetVisualSearchProperties"))
  {
    selfCopy->_resetVisualSearchProperties = 1;
    v23[2](v23);
  }

  else
  {
    v186 = xpc_dictionary_get_value(dictCopy, "visualSearchProperties");

    if (!v186)
    {
      goto LABEL_173;
    }

    selfCopy->_didSetVisualSearchProperties = 1;
    v187 = PLDictionaryFromXPCObject();
    v188 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchData"];
    v189 = [v187 objectForKeyedSubscript:v188];
    visualSearchData = selfCopy->_visualSearchData;
    selfCopy->_visualSearchData = v189;

    v191 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetVisualSearchData"];
    v192 = [v187 objectForKeyedSubscript:v191];
    selfCopy->_didSetVisualSearchData = [v192 BOOLValue];

    v193 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didSetStickerConfidenceScore"];
    v194 = [v187 objectForKeyedSubscript:v193];
    selfCopy->_didSetStickerConfidenceScore = [v194 BOOLValue];

    v195 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stickerConfidenceScore"];
    v196 = [v187 objectForKeyedSubscript:v195];
    [v196 floatValue];
    selfCopy->_stickerConfidenceScore = v197;

    v198 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchAlgorithmVersion"];
    v199 = [v187 objectForKeyedSubscript:v198];
    selfCopy->_visualSearchAlgorithmVersion = [v199 integerValue];

    v200 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stickerConfidenceScoreAlgorithmVersion"];
    v201 = [v187 objectForKeyedSubscript:v200];
    selfCopy->_stickerConfidenceScoreAlgorithmVersion = [v201 integerValue];

    v202 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualSearchAdjustmentVersion"];
    v203 = [v187 objectForKeyedSubscript:v202];
    visualSearchAdjustmentVersion = selfCopy->_visualSearchAdjustmentVersion;
    selfCopy->_visualSearchAdjustmentVersion = v203;

    v23[2](v23);
    v163 = v186;
  }

LABEL_173:
  v205 = xpc_dictionary_get_value(dictCopy, "compactImageSCSensitivityAnalysis");
  v206 = v205;
  if (v205)
  {
    selfCopy->_didSetCompactImageSCSensitivityAnalysis = 1;
    selfCopy->_compactSCSensitivityAnalysis = xpc_int64_get_value(v205);
    v23[2](v23);
  }

  v207 = xpc_dictionary_get_value(dictCopy, "compactVideoSCSensitivityAnalysis");

  v208 = xpc_dictionary_get_value(dictCopy, "videoSensitivityAnalysisVersion");
  v209 = v208;
  if (v207 && v208)
  {
    selfCopy->_didSetCompactVideoSCSensitivityAnalysis = 1;
    selfCopy->_compactSCSensitivityAnalysis = xpc_int64_get_value(v207);
    selfCopy->_videoSensitivityAnalysisVersion = xpc_int64_get_value(v209);
    v23[2](v23);
  }

  v210 = xpc_dictionary_get_value(dictCopy, "sceneprintData");

  if (v210)
  {
    selfCopy->_didSetSceneprintData = 1;
    v211 = PLDataFromXPCDataObject();
    sceneprintData = selfCopy->_sceneprintData;
    selfCopy->_sceneprintData = v211;

    v23[2](v23);
  }

  v213 = xpc_dictionary_get_value(dictCopy, "duplicateMatchingData");

  if (v213)
  {
    selfCopy->_didSetDuplicateMatchingData = 1;
    v214 = PLDataFromXPCDictionary();
    duplicateMatchingData = selfCopy->_duplicateMatchingData;
    selfCopy->_duplicateMatchingData = v214;

    if (![(NSData *)selfCopy->_duplicateMatchingData length])
    {
      v216 = selfCopy->_duplicateMatchingData;
      selfCopy->_duplicateMatchingData = 0;
    }

    v217 = PLDataFromXPCDictionary();
    duplicateMatchingAlternateData = selfCopy->_duplicateMatchingAlternateData;
    selfCopy->_duplicateMatchingAlternateData = v217;

    if (![(NSData *)selfCopy->_duplicateMatchingAlternateData length])
    {
      v219 = selfCopy->_duplicateMatchingAlternateData;
      selfCopy->_duplicateMatchingAlternateData = 0;
    }

    selfCopy->_duplicateProcessingSucceeded = xpc_dictionary_get_BOOL(dictCopy, "duplicateProcessingSucceeded");
    v23[2](v23);
  }

  v220 = xpc_dictionary_get_value(dictCopy, "reverseLocationData");

  if (v220)
  {
    selfCopy->_didSetReverseLocationData = 1;
    v221 = PLDataFromXPCDataObject();
    reverseLocationData = selfCopy->_reverseLocationData;
    selfCopy->_reverseLocationData = v221;

    v23[2](v23);
  }

  v223 = xpc_dictionary_get_value(dictCopy, "objectSaliencyRectsData");

  if (v223)
  {
    selfCopy->_didSetObjectSaliencyRectsData = 1;
    v224 = PLDataFromXPCDataObject();
    objectSaliencyRectsData = selfCopy->_objectSaliencyRectsData;
    selfCopy->_objectSaliencyRectsData = v224;

    v23[2](v23);
  }

  v226 = xpc_dictionary_get_value(dictCopy, "reverseLocationDataIsValid");

  if (v226)
  {
    selfCopy->_didSetReverseLocationDataIsValid = 1;
    selfCopy->_reverseLocationDataIsValid = xpc_BOOL_get_value(v226);
    v23[2](v23);
  }

  v227 = xpc_dictionary_get_value(dictCopy, "shiftedLocation");

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
      shiftedLocation = selfCopy->_shiftedLocation;
      selfCopy->_shiftedLocation = v233;

      if (selfCopy->_shiftedLocation)
      {
        selfCopy->_didSetShiftedLocation = 1;
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
      selfCopy->_didSetShiftedLocation = 1;
      v236 = selfCopy->_shiftedLocation;
      selfCopy->_shiftedLocation = 0;

      v23[2](v23);
    }
  }

  v238 = xpc_dictionary_get_value(dictCopy, "timeZoneName");

  if (v238)
  {
    selfCopy->_didSetTimeZone = 1;
    v239 = PLStringFromXPCDictionary();
    timeZoneName = selfCopy->_timeZoneName;
    selfCopy->_timeZoneName = v239;

    selfCopy->_timeZoneOffsetValue = xpc_dictionary_get_int64(dictCopy, "timeZoneOffsetValue");
    v23[2](v23);
  }

  selfCopy->_clientEntitled = photoKitEntitled;
  selfCopy->_gpsHorizontalAccuracy = xpc_dictionary_get_double(dictCopy, "gpsHorizontalAccuracy");
  selfCopy->_didSetGpsHorizontalAccuracy = 1;
  v23[2](v23);
  v241 = xpc_dictionary_get_value(dictCopy, "screenTimeDeviceImageSensitivity");

  if (v241)
  {
    selfCopy->_didSetScreenTimeDeviceImageSensitivity = 1;
    selfCopy->_screenTimeDeviceImageSensitivity = xpc_int64_get_value(v241);
    v23[2](v23);
  }

  v242 = xpc_dictionary_get_value(dictCopy, "syndicationProcessingValue");

  if (v242)
  {
    selfCopy->_syndicationProcessingValue = xpc_uint64_get_value(v242);
    selfCopy->_didSetSyndicationProcessingValue = 1;
    v23[2](v23);
  }

  v243 = xpc_dictionary_get_value(dictCopy, "syndicationProcessingVersion");

  if (v243)
  {
    selfCopy->_syndicationProcessingVersion = xpc_uint64_get_value(v243);
    selfCopy->_didSetSyndicationProcessingVersion = 1;
    v23[2](v23);
  }

  v244 = xpc_dictionary_get_value(dictCopy, "syndicationIdentifier");

  if (v244)
  {
    v245 = PLStringFromXPCDictionary();
    syndicationIdentifier = selfCopy->_syndicationIdentifier;
    selfCopy->_syndicationIdentifier = v245;

    selfCopy->_didSetSyndicationIdentifier = 1;
    v23[2](v23);
  }

  v247 = xpc_dictionary_get_value(dictCopy, "faceAnalysisVersion");

  if (v247)
  {
    selfCopy->_didSetFaceAnalysisVersion = 1;
    selfCopy->_faceAnalysisVersion = xpc_int64_get_value(v247);
    v23[2](v23);
  }

  v248 = xpc_dictionary_get_value(dictCopy, "localAnalysisStage");

  if (v248)
  {
    selfCopy->_didSetLocalAnalysisStage = 1;
    selfCopy->_localAnalysisStage = xpc_int64_get_value(v248);
    v23[2](v23);
  }

  v249 = xpc_dictionary_get_value(dictCopy, "viewPresentation");

  if (v249)
  {
    selfCopy->_didSetViewPresentation = 1;
    selfCopy->_viewPresentation = xpc_int64_get_value(v249);
    v23[2](v23);
  }

  selfCopy->_resetGeneratedAssetDescriptionProperties = xpc_dictionary_get_BOOL(dictCopy, "ResetGeneratedAssetDescriptionKey");
  v250 = xpc_dictionary_get_BOOL(dictCopy, "DidSetGeneratedAssetDescriptionKey");
  selfCopy->_didSetGeneratedAssetDescriptionProperties = v250;
  authorizationCopy = v264;
  if (selfCopy->_resetGeneratedAssetDescriptionProperties)
  {
    goto LABEL_221;
  }

  if (v250)
  {
    v251 = PLDictionaryFromXPCDictionary();
    v252 = [v251 mutableCopy];
    generatedAssetDescriptionDictionaries = selfCopy->_generatedAssetDescriptionDictionaries;
    selfCopy->_generatedAssetDescriptionDictionaries = v252;

LABEL_221:
    v23[2](v23);
  }

  v254 = xpc_dictionary_get_value(dictCopy, "PtpTrashedStateKey");

  if (v254)
  {
    selfCopy->_ptpTrashedState = xpc_int64_get_value(v254);
    selfCopy->_didSetPtpTrashedState = 1;
    v23[2](v23);
  }

  v255 = xpc_dictionary_get_value(dictCopy, "savedAssetType");

  if (v255)
  {
    selfCopy->_didSetSavedAssetType = 1;
    selfCopy->_savedAssetType = xpc_int64_get_value(v255);
    v23[2](v23);
  }

  v11 = v262;
  requestCopy = v263;
LABEL_227:
  v256 = selfCopy;

  return v256;
}

uint64_t __68__PHAssetChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setMutated:1];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 recordUpdateRequest:v3];
}

- (PHAssetChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:self];

  v9 = [(PHAssetChangeRequest *)self initWithHelper:v8];
  if (v9)
  {
    _allAssetEditOperations = [objc_opt_class() _allAssetEditOperations];
    [(PHAssetChangeRequest *)v9 setSupportedEditOperations:_allAssetEditOperations];
  }

  return v9;
}

- (PHAssetChangeRequest)initWithHelper:(id)helper
{
  helperCopy = helper;
  if (!helperCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:479 description:{@"Invalid parameter not satisfying: %@", @"helper"}];
  }

  v22.receiver = self;
  v22.super_class = PHAssetChangeRequest;
  v7 = [(PHChangeRequest *)&v22 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->super._helper, helper);
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

    _allAssetEditOperations = [objc_opt_class() _allAssetEditOperations];
    [(PHAssetChangeRequest *)v8 setSupportedEditOperations:_allAssetEditOperations];
  }

  return v8;
}

- (PHAssetChangeRequest)init
{
  [(PHAssetChangeRequest *)self doesNotRecognizeSelector:a2];

  return [(PHAssetChangeRequest *)self initWithHelper:0];
}

+ (void)recoverAssets:(id)assets
{
  v29 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  [PHObject assertAllObjects:assetsCopy forSelector:a2 areOfType:objc_opt_class()];
  +[PHPhotoLibrary assertTransaction];
  if (recoverAssets__s_onceToken != -1)
  {
    dispatch_once(&recoverAssets__s_onceToken, &__block_literal_global_348_19687);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = assetsCopy;
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
        defaultSavedAssetTypeForUnknownFilesystemImportAssets = [MEMORY[0x1E69BF328] defaultSavedAssetTypeForUnknownFilesystemImportAssets];
        photoLibrary = [v10 photoLibrary];
        pathManager = [photoLibrary pathManager];
        isDCIM = [pathManager isDCIM];

        if (isDCIM)
        {
          pathForOriginalFile = [v10 pathForOriginalFile];
          if ([pathForOriginalFile length])
          {
            v16 = MEMORY[0x1E695DFF8];
            stringByDeletingLastPathComponent = [pathForOriginalFile stringByDeletingLastPathComponent];
            v18 = [v16 fileURLWithPath:stringByDeletingLastPathComponent isDirectory:1];

            v23 = 0;
            if (v18 && [MEMORY[0x1E69BE5B8] shouldImportAssetsFromDCIMSubDirectoryAtURL:v18 assetsKind:&v23] && v23 <= 7)
            {
              if (((1 << v23) & 0x8D) != 0)
              {
                directory = [v10 directory];
                v20 = [directory hasPrefix:recoverAssets__s_cplAssetDirectoryPrefix];

                if (v20)
                {
                  savedAssetTypeForAssetsInCPLAssetsDirectory = [MEMORY[0x1E69BF328] savedAssetTypeForAssetsInCPLAssetsDirectory];
                }

                else
                {
                  savedAssetTypeForAssetsInCPLAssetsDirectory = [MEMORY[0x1E69BF328] defaultSavedAssetTypeForUnknownFilesystemImportAssets];
                }

LABEL_22:
                defaultSavedAssetTypeForUnknownFilesystemImportAssets = savedAssetTypeForAssetsInCPLAssetsDirectory;
              }

              else
              {
                if (v23 == 1)
                {
                  savedAssetTypeForAssetsInCPLAssetsDirectory = [MEMORY[0x1E69BF328] savedAssetTypeForImportedByCameraConnectionKit];
                  goto LABEL_22;
                }

                if (v23 == 4)
                {
                  savedAssetTypeForAssetsInCPLAssetsDirectory = [MEMORY[0x1E69BF328] savedAssetTypeForFinderSyncedAsset];
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
        [v22 _setSavedAssetType:defaultSavedAssetTypeForUnknownFilesystemImportAssets];
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

+ (BOOL)performBatchExpungeAndWaitWithAssets:(id)assets deleteOptions:(id)options photoLibrary:(id)library error:(id *)error
{
  v7 = [PHBatchAssetExpunger batchAssetExpungerWithAssets:assets deleteOptions:options library:library topLevelSelector:a2];
  LOBYTE(error) = [v7 performChangesAndWait:error];

  return error;
}

+ (void)performBatchExpungeWithAssets:(id)assets deleteOptions:(id)options photoLibrary:(id)library completionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = [PHBatchAssetExpunger batchAssetExpungerWithAssets:assets deleteOptions:options library:library topLevelSelector:a2];
  [v11 performChangesWithCompletionHandler:handlerCopy];
}

+ (void)_deleteAssets:(id)assets withOperation:(int64_t)operation topLevelSelector:(SEL)selector deleteOptions:(id)options
{
  v22 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  optionsCopy = options;
  [PHObject assertAllObjects:assetsCopy forSelector:selector areOfType:objc_opt_class()];
  +[PHPhotoLibrary assertTransaction];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = assetsCopy;
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

        v16 = [(PHTrashableObjectDeleteRequest *)PHAssetDeleteRequest deleteRequestForObject:*(*(&v17 + 1) + 8 * v15) operation:operation, v17];
        [v16 setDeleteOptions:optionsCopy];

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

    indexSet = [MEMORY[0x1E696AD50] indexSet];
    _allAssetEditOperations = [objc_opt_class() _allAssetEditOperations];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__PHAssetChangeRequest_changeRequestForAsset___block_invoke;
    v10[3] = &unk_1E75A9568;
    v11 = indexSet;
    v7 = indexSet;
    [_allAssetEditOperations enumerateIndexesUsingBlock:v10];

    v8 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexSet:v7];
    [v4 setSupportedEditOperations:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)changeRequestForAssetFromVideoFileURL:(id)l imageAsset:(id)asset displayTime:(double)time
{
  lCopy = l;
  assetCopy = asset;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"videoFileURL"}];
  }

  if (([assetCopy isPhoto] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetChangeRequest.m" lineNumber:445 description:@"require photo when updating to iris"];
  }

  v11 = [self changeRequestForAsset:assetCopy];
  path = [lCopy path];
  v13 = PFVideoComplementMetadataForVideoAtPath();

  pairingIdentifier = [v13 pairingIdentifier];
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
    CMTimeMakeWithSeconds(&v22, time, 60000);
  }

  memset(&v21, 0, sizeof(v21));
  if (![v13 hasValidVideoDuration])
  {
    v21 = **&MEMORY[0x1E6960C70];
    if (pairingIdentifier)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v13)
  {
    [v13 videoDuration];
    if (pairingIdentifier)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  memset(&v21, 0, sizeof(v21));
  if (!pairingIdentifier)
  {
LABEL_15:
    uUID = [MEMORY[0x1E696AFB0] UUID];
    pairingIdentifier = [uUID UUIDString];
  }

LABEL_16:
  [v11 setVideoURLForUpdate:lCopy];
  v20 = v21;
  [v11 setVideoDuration:&v20];
  v20 = v22;
  [v11 setImageDisplayTime:&v20];
  [v11 setPairingIdentifier:pairingIdentifier];
  _allAssetEditOperations = [objc_opt_class() _allAssetEditOperations];
  [v11 setSupportedEditOperations:_allAssetEditOperations];

  [v11 didMutate];

  return v11;
}

@end