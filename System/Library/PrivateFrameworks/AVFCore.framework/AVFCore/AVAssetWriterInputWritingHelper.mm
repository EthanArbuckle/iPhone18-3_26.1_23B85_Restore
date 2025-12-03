@interface AVAssetWriterInputWritingHelper
- (AVAssetWriterInputWritingHelper)initWithConfigurationState:(id)state assetWriterTrack:(id)track error:(id *)error;
- (BOOL)_checkIfClientSetProResRAWRequiredMetadataReturningError:(id *)error;
- (BOOL)_checkProResRAWRequiredMetadataForPixelBufferReturningError:(id *)error;
- (BOOL)_checkProResRAWRequiredMetadataForSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
- (BOOL)appendPixelBuffer:(__CVBuffer *)buffer withPresentationTime:(id *)time;
- (BOOL)appendTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)group withPresentationTime:(id *)time;
- (BOOL)canPerformMultiplePasses;
- (BOOL)mediaDataRequesterShouldRequestMediaData;
- (BOOL)prepareToFinishWritingReturningError:(id *)error;
- (__CVPixelBufferPool)pixelBufferPool;
- (id)transitionToAndReturnTerminalHelperWithTerminalStatus:(int64_t)status;
- (int64_t)appendCaption:(id)caption error:(id *)error;
- (int64_t)appendCaptionGroup:(id)group error:(id *)error;
- (int64_t)appendSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
- (void)_nudgeMediaDataRequesterIfAppropriate:(id)appropriate;
- (void)_startObservingReadyForMoreMediaDataKeyPath;
- (void)_stopObservingReadyForMoreMediaDataKeyPath;
- (void)beginPassIfAppropriate;
- (void)dealloc;
- (void)declareKeyPathDependenciesWithRegistry:(id)registry;
- (void)markAsFinishedAndTransitionCurrentHelper:(id)helper;
- (void)markCurrentPassAsFinished;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareToEndSession;
- (void)requestMediaDataWhenReadyOnQueue:(id)queue usingBlock:(id)block;
- (void)stopRequestingMediaData;
@end

@implementation AVAssetWriterInputWritingHelper

- (AVAssetWriterInputWritingHelper)initWithConfigurationState:(id)state assetWriterTrack:(id)track error:(id *)error
{
  v51.receiver = self;
  v51.super_class = AVAssetWriterInputWritingHelper;
  error = [(AVAssetWriterInputHelper *)&v51 initWithConfigurationState:state, track, error];
  v9 = error;
  if (!track)
  {
    v38 = error;
    v44 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v9 userInfo:{a2, @"invalid parameter not satisfying: %s", v39, v40, v41, v42, v43, "assetWriterTrack != nil"), 0}];
    objc_exception_throw(v44);
  }

  if (error)
  {
    error->_assetWriterTrack = track;
    [state setTrackID:{objc_msgSend(track, "trackID")}];
    if (![state outputSettings])
    {
      if ([objc_msgSend(state "mediaType")])
      {
        sourceFormatHint = [state sourceFormatHint];
        if (sourceFormatHint)
        {
          -[AVFigAssetWriterTrack setFormatDescriptions:](v9->_assetWriterTrack, "setFormatDescriptions:", [MEMORY[0x1E695DEC8] arrayWithObject:sourceFormatHint]);
        }
      }
    }

    metadataItems = [state metadataItems];
    if (metadataItems)
    {
      v12 = metadataItems;
      if ([metadataItems count])
      {
        [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setFigMetadata:[AVMetadataItem _figMetadataPropertyFromMetadataItems:v12]];
        if ([+[AVMetadataItem metadataItemsFromArray:withStringValue:](AVMetadataItem metadataItemsFromArray:-[NSArray arrayByAddingObjectsFromArray:](+[AVMetadataItem metadataItemsFromArray:withKey:keySpace:](AVMetadataItem withStringValue:{"metadataItemsFromArray:withKey:keySpace:", v12, @"tagc", @"uiso", "arrayByAddingObjectsFromArray:", +[AVMetadataItem metadataItemsFromArray:withKey:keySpace:](AVMetadataItem, "metadataItemsFromArray:withKey:keySpace:", v12, @"tagc", @"udta", @"public.auxiliary-content", "count"}])
        {
          [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setExcludeFromAutoSelection:1];
        }
      }
    }

    memset(&v50, 0, sizeof(v50));
    if (state)
    {
      [state transform];
    }

    v49 = v50;
    if (!CGAffineTransformIsIdentity(&v49))
    {
      v49 = v50;
      v13 = FigCreate3x3MatrixArrayFromCGAffineTransform();
      [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setFigTrackMatrix:v13];
      CFRelease(v13);
    }

    mediaTimeScale = [state mediaTimeScale];
    if (mediaTimeScale)
    {
      [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setMediaTimeScale:mediaTimeScale];
    }

    [state naturalSize];
    if (v15 != *MEMORY[0x1E695F060] || v16 != *(MEMORY[0x1E695F060] + 8))
    {
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*&v15);
      [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setFigDimensions:DictionaryRepresentation];
      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }
    }

    languageCode = [state languageCode];
    if (languageCode)
    {
      v19 = languageCode;
      if ([languageCode length])
      {
        [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setLanguageCode:v19];
      }
    }

    extendedLanguageTag = [state extendedLanguageTag];
    if (extendedLanguageTag)
    {
      v21 = extendedLanguageTag;
      if ([extendedLanguageTag length])
      {
        [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setExtendedLanguageTag:v21];
      }
    }

    -[AVFigAssetWriterTrack setMarksOutputTrackAsEnabled:](v9->_assetWriterTrack, "setMarksOutputTrackAsEnabled:", [state marksOutputTrackAsEnabled]);
    [state preferredVolume];
    [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setTrackVolume:?];
    -[AVFigAssetWriterTrack setLayer:](v9->_assetWriterTrack, "setLayer:", [state layer]);
    alternateGroupID = [state alternateGroupID];
    if (alternateGroupID)
    {
      [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setAlternateGroupID:alternateGroupID];
    }

    provisionalAlternateGroupID = [state provisionalAlternateGroupID];
    if (provisionalAlternateGroupID)
    {
      [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setProvisionalAlternateGroupID:provisionalAlternateGroupID];
    }

    v47 = 0uLL;
    v48 = 0.0;
    if (state)
    {
      [state preferredMediaChunkDuration];
      if (BYTE12(v47))
      {
        assetWriterTrack = v9->_assetWriterTrack;
        *&v49.a = v47;
        v49.c = v48;
        [(AVFigAssetWriterTrack *)assetWriterTrack setPreferredChunkDuration:&v49];
      }
    }

    preferredMediaChunkAlignment = [state preferredMediaChunkAlignment];
    if (preferredMediaChunkAlignment)
    {
      [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setPreferredChunkAlignment:preferredMediaChunkAlignment];
    }

    preferredMediaChunkSize = [state preferredMediaChunkSize];
    if (preferredMediaChunkSize)
    {
      [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setPreferredChunkSize:preferredMediaChunkSize];
    }

    mediaType = [state mediaType];
    if (([mediaType isEqualToString:@"meta"] & 1) != 0 || objc_msgSend(mediaType, "isEqualToString:", @"auxv"))
    {
      v28 = @"AVAssetWriterInputMediaDataLocationSparselyInterleavedWithMainMediaData";
    }

    else
    {
      v28 = @"AVAssetWriterInputMediaDataLocationInterleavedWithMainMediaData";
    }

    mediaDataLocation = [state mediaDataLocation];
    if (([(__CFString *)v28 isEqualToString:mediaDataLocation]& 1) == 0)
    {
      [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setMediaDataLocation:mediaDataLocation];
    }

    sampleReferenceBaseURL = [state sampleReferenceBaseURL];
    if (sampleReferenceBaseURL)
    {
      [(AVFigAssetWriterTrack *)v9->_assetWriterTrack setSampleReferenceBaseURL:sampleReferenceBaseURL];
    }

    v31 = [AVAssetWriterInputPassDescription alloc];
    v32 = MEMORY[0x1E695DEC8];
    v33 = MEMORY[0x1E696B098];
    start = **&MEMORY[0x1E6960CC0];
    duration = **&MEMORY[0x1E6960C88];
    CMTimeRangeMake(&v49, &start, &duration);
    v9->_currentPassDescription = -[AVAssetWriterInputPassDescription initWithTimeRanges:](v31, "initWithTimeRanges:", [v32 arrayWithObject:{objc_msgSend(v33, "valueWithCMTimeRange:", &v49)}]);
    v34 = [[AVKeyPathDependencyManager alloc] initWithDependencyHost:v9];
    v9->_keyPathDependencyManager = v34;
    [(AVKeyPathDependencyManager *)v34 dependencyHostIsFullyInitialized];
    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9->_mediaDataRequesterSerialQueue = dispatch_queue_create("AVAssetWriterInputWritingHelperMediaDataRequester", v35);
    v36 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9->_readyForMoreMediaDataObserverSerialQueue = dispatch_queue_create("AVAssetWriterInputWritingHelperReadyForMoreMediaDataObserver", v36);
  }

  return v9;
}

- (void)dealloc
{
  if (self->_observingSelf)
  {
    [(AVAssetWriterInputWritingHelper *)self removeObserver:self forKeyPath:@"readyForMoreMediaData" context:@"AVAssetWriterInputWritingHelperNudgeMediaDataRequesterObservationContext"];
  }

  [(AVKeyPathDependencyManager *)self->_keyPathDependencyManager cancelAllCallbacks];

  mediaDataRequesterSerialQueue = self->_mediaDataRequesterSerialQueue;
  if (mediaDataRequesterSerialQueue)
  {
    dispatch_release(mediaDataRequesterSerialQueue);
  }

  readyForMoreMediaDataObserverSerialQueue = self->_readyForMoreMediaDataObserverSerialQueue;
  if (readyForMoreMediaDataObserverSerialQueue)
  {
    dispatch_release(readyForMoreMediaDataObserverSerialQueue);
  }

  CVPixelBufferPoolRelease(self->_pixelBufferPool);
  v5.receiver = self;
  v5.super_class = AVAssetWriterInputWritingHelper;
  [(AVAssetWriterInputHelper *)&v5 dealloc];
}

- (BOOL)canPerformMultiplePasses
{
  performsMultiPassEncodingIfSupported = [(AVAssetWriterInputHelper *)self performsMultiPassEncodingIfSupported];
  if (performsMultiPassEncodingIfSupported)
  {
    _assetWriterTrack = [(AVAssetWriterInputWritingHelper *)self _assetWriterTrack];

    LOBYTE(performsMultiPassEncodingIfSupported) = [(AVFigAssetWriterTrack *)_assetWriterTrack encoderSupportsMultiPass];
  }

  return performsMultiPassEncodingIfSupported;
}

- (void)declareKeyPathDependenciesWithRegistry:(id)registry
{
  v4 = AVTwoPartKeyPathMake(@"assetWriterTrack", @"aboveHighWaterLevel");

  [registry valueForKey:@"readyForMoreMediaData" dependsOnValueAtKeyPath:v4];
}

- (void)requestMediaDataWhenReadyOnQueue:(id)queue usingBlock:(id)block
{
  if (!queue)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = "queue != NULL";
    goto LABEL_7;
  }

  if (!block)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = "block != nil";
LABEL_7:
    v15 = [v12 exceptionWithName:v13 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", block, v4, v5, v6, v7, v14), 0}];
    objc_exception_throw(v15);
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__12;
  v30 = __Block_byref_object_dispose__12;
  v31 = 0;
  mediaDataRequesterSerialQueue = self->_mediaDataRequesterSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AVAssetWriterInputWritingHelper_requestMediaDataWhenReadyOnQueue_usingBlock___block_invoke;
  block[3] = &unk_1E7463830;
  block[4] = self;
  block[5] = queue;
  block[6] = block;
  block[7] = &v26;
  dispatch_sync(mediaDataRequesterSerialQueue, block);
  v11 = v27[5];
  if (!v11)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = objc_opt_class();
    v23 = [v16 exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithClassAndSelector(v17 userInfo:{a2, @"cannot be called more than once.", v18, v19, v20, v21, v22, v24), 0}];
    objc_exception_throw(v23);
  }

  [v11 setDelegate:self];
  [(AVAssetWriterInputWritingHelper *)self _nudgeMediaDataRequesterIfAppropriate:v27[5]];

  _Block_object_dispose(&v26, 8);
}

void *__79__AVAssetWriterInputWritingHelper_requestMediaDataWhenReadyOnQueue_usingBlock___block_invoke(void *result)
{
  if (!*(result[4] + 32))
  {
    v1 = result;
    *(result[4] + 32) = [[AVAssetWriterInputMediaDataRequester alloc] initWithRequestQueue:result[5] requestBlock:result[6]];
    *(*(v1[7] + 8) + 40) = *(v1[4] + 32);
    v2 = v1[4];

    return [v2 _startObservingReadyForMoreMediaDataKeyPath];
  }

  return result;
}

- (void)stopRequestingMediaData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__12;
  v9 = __Block_byref_object_dispose__12;
  v10 = 0;
  mediaDataRequesterSerialQueue = self->_mediaDataRequesterSerialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__AVAssetWriterInputWritingHelper_stopRequestingMediaData__block_invoke;
  v4[3] = &unk_1E7460EE0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(mediaDataRequesterSerialQueue, v4);
  v3 = v6[5];
  if (v3)
  {
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __58__AVAssetWriterInputWritingHelper_stopRequestingMediaData__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 32);
  if (v1)
  {
    *(*(*(result + 40) + 8) + 40) = v1;
    *(*(result + 32) + 32) = 0;
    return [*(result + 32) _stopObservingReadyForMoreMediaDataKeyPath];
  }

  return result;
}

- (void)_nudgeMediaDataRequesterIfAppropriate:(id)appropriate
{
  if ([(AVAssetWriterInputWritingHelper *)self isReadyForMoreMediaData])
  {
    requestQueue = [appropriate requestQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__AVAssetWriterInputWritingHelper__nudgeMediaDataRequesterIfAppropriate___block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = appropriate;
    dispatch_async(requestQueue, block);
  }
}

- (BOOL)mediaDataRequesterShouldRequestMediaData
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mediaDataRequesterSerialQueue = self->_mediaDataRequesterSerialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__AVAssetWriterInputWritingHelper_mediaDataRequesterShouldRequestMediaData__block_invoke;
  v6[3] = &unk_1E7460EE0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(mediaDataRequesterSerialQueue, v6);
  if (-[AVAssetWriterInputWritingHelper isReadyForMoreMediaData](self, "isReadyForMoreMediaData") && ![-[AVWeakReference referencedObject](-[AVAssetWriterInputHelper weakReferenceToAssetWriterInput](self "weakReferenceToAssetWriterInput")])
  {
    v4 = *(v8 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

uint64_t __75__AVAssetWriterInputWritingHelper_mediaDataRequesterShouldRequestMediaData__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 32))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)_startObservingReadyForMoreMediaDataKeyPath
{
  readyForMoreMediaDataObserverSerialQueue = self->_readyForMoreMediaDataObserverSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AVAssetWriterInputWritingHelper__startObservingReadyForMoreMediaDataKeyPath__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(readyForMoreMediaDataObserverSerialQueue, block);
}

_BYTE *__78__AVAssetWriterInputWritingHelper__startObservingReadyForMoreMediaDataKeyPath__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[40] & 1) == 0)
  {
    result = [result addObserver:result forKeyPath:@"readyForMoreMediaData" options:0 context:@"AVAssetWriterInputWritingHelperNudgeMediaDataRequesterObservationContext"];
    *(*(a1 + 32) + 40) = 1;
  }

  return result;
}

- (void)_stopObservingReadyForMoreMediaDataKeyPath
{
  readyForMoreMediaDataObserverSerialQueue = self->_readyForMoreMediaDataObserverSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__AVAssetWriterInputWritingHelper__stopObservingReadyForMoreMediaDataKeyPath__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(readyForMoreMediaDataObserverSerialQueue, block);
}

_BYTE *__77__AVAssetWriterInputWritingHelper__stopObservingReadyForMoreMediaDataKeyPath__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[40] == 1)
  {
    result = [result removeObserver:result forKeyPath:@"readyForMoreMediaData" context:@"AVAssetWriterInputWritingHelperNudgeMediaDataRequesterObservationContext"];
    *(*(a1 + 32) + 40) = 0;
  }

  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"AVAssetWriterInputWritingHelperNudgeMediaDataRequesterObservationContext")
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__12;
    v14 = __Block_byref_object_dispose__12;
    v15 = 0;
    mediaDataRequesterSerialQueue = self->_mediaDataRequesterSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__AVAssetWriterInputWritingHelper_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7460EE0;
    block[4] = self;
    block[5] = &v10;
    dispatch_sync(mediaDataRequesterSerialQueue, block);
    if (v11[5])
    {
      [(AVAssetWriterInputWritingHelper *)self _nudgeMediaDataRequesterIfAppropriate:?];
    }

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVAssetWriterInputWritingHelper;
    [(AVAssetWriterInputWritingHelper *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

void *__82__AVAssetWriterInputWritingHelper_observeValueForKeyPath_ofObject_change_context___block_invoke(void *result)
{
  v1 = *(result[4] + 32);
  if (v1)
  {
    v2 = result;
    result = v1;
    *(*(v2[5] + 8) + 40) = result;
  }

  return result;
}

- (void)beginPassIfAppropriate
{
  if ([(AVAssetWriterInputWritingHelper *)self canPerformMultiplePasses])
  {
    v3 = 0;
    if (![(AVFigAssetWriterTrack *)[(AVAssetWriterInputWritingHelper *)self _assetWriterTrack] beginPassReturningError:&v3])
    {
      [(AVAssetWriterInputHelper *)self transitionAssetWriterAndAllInputsToFailedStatusWithError:v3];
    }
  }
}

- (BOOL)_checkIfClientSetProResRAWRequiredMetadataReturningError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_msgSend(-[AVWeakReference referencedObject](-[AVAssetWriterInputHelper weakReferenceToAssetWriterInput](self "weakReferenceToAssetWriterInput")];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [&unk_1F0AD36E8 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  errorCopy = error;
  array = 0;
  v8 = *v16;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(&unk_1F0AD36E8);
      }

      v10 = *(*(&v15 + 1) + 8 * i);
      if (![(NSArray *)[AVMetadataItem metadataItemsFromArray:? withKey:? keySpace:?]
      {
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        [array addObject:v10];
      }
    }

    v6 = [&unk_1F0AD36E8 countByEnumeratingWithState:&v15 objects:v21 count:16];
  }

  while (v6);
  if (!array)
  {
    return 1;
  }

  if (!errorCopy)
  {
    return 0;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The required metadata for ProResRAW movie are not set. Missing movie level metadata keys {%@}.", array];
  v19 = *MEMORY[0x1E696A278];
  v20 = v11;
  v12 = AVLocalizedError(@"AVFoundationErrorDomain", -11875, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1]);
  result = 0;
  *errorCopy = v12;
  return result;
}

- (BOOL)appendPixelBuffer:(__CVBuffer *)buffer withPresentationTime:(id *)time
{
  v21 = 0;
  if (![(AVAssetWriterInputWritingHelper *)self isReadyForMoreMediaData])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D930];
    v12 = objc_opt_class();
    v18 = [v10 exceptionWithName:v11 reason:AVMethodExceptionReasonWithClassAndSelector(v12 userInfo:{a2, @"A pixel buffer cannot be appended when readyForMoreMediaData is NO.", v13, v14, v15, v16, v17, v19), 0}];
    objc_exception_throw(v18);
  }

  if (![(AVAssetWriterInputHelper *)self expectsMediaDataInRealTime]|| [(AVAssetWriterInputWritingHelper *)self _checkProResRAWRequiredMetadataForPixelBufferReturningError:&v21])
  {
    _assetWriterTrack = [(AVAssetWriterInputWritingHelper *)self _assetWriterTrack];
    v19 = *&time->var0;
    var3 = time->var3;
    if ([(AVFigAssetWriterTrack *)_assetWriterTrack addPixelBuffer:buffer atPresentationTime:&v19 error:&v21])
    {
      return 1;
    }
  }

  [(AVAssetWriterInputHelper *)self transitionAssetWriterAndAllInputsToFailedStatusWithError:v21];
  return 0;
}

- (BOOL)appendTaggedPixelBufferGroup:(OpaqueCMTaggedBufferGroup *)group withPresentationTime:(id *)time
{
  if (![(AVAssetWriterInputWritingHelper *)self isReadyForMoreMediaData])
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v13 = objc_opt_class();
    v19 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithClassAndSelector(v13 userInfo:{a2, @"A tagged buffer group cannot be appended when readyForMoreMediaData is NO.", v14, v15, v16, v17, v18, v20), 0}];
    objc_exception_throw(v19);
  }

  v22 = 0;
  _assetWriterTrack = [(AVAssetWriterInputWritingHelper *)self _assetWriterTrack];
  v20 = *&time->var0;
  var3 = time->var3;
  v9 = [(AVFigAssetWriterTrack *)_assetWriterTrack addTaggedPixelBufferGroup:group atPresentationTime:&v20 error:&v22];
  if (!v9)
  {
    [(AVAssetWriterInputHelper *)self transitionAssetWriterAndAllInputsToFailedStatusWithError:v22];
  }

  return v9;
}

- (int64_t)appendCaption:(id)caption error:(id *)error
{
  v9 = 0;
  if (![(AVAssetWriterInputWritingHelper *)self isReadyForMoreMediaData])
  {
    [AVAssetWriterInputWritingHelper appendCaption:? error:?];
    if (!error)
    {
      return 1;
    }

    goto LABEL_7;
  }

  _assetWriterTrack = [(AVAssetWriterInputWritingHelper *)self _assetWriterTrack];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([(AVFigAssetWriterTrack *)_assetWriterTrack addCaption:caption error:&v9]& 1) != 0)
    {
      return 0;
    }

    [(AVAssetWriterInputHelper *)self transitionAssetWriterAndAllInputsToFailedStatusWithError:v9];
  }

  if (error)
  {
LABEL_7:
    *error = v9;
  }

  return 1;
}

- (int64_t)appendCaptionGroup:(id)group error:(id *)error
{
  v9 = 0;
  if (![(AVAssetWriterInputWritingHelper *)self isReadyForMoreMediaData])
  {
    [AVAssetWriterInputWritingHelper appendCaption:? error:?];
    if (!error)
    {
      return 1;
    }

    goto LABEL_7;
  }

  _assetWriterTrack = [(AVAssetWriterInputWritingHelper *)self _assetWriterTrack];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([(AVFigAssetWriterTrack *)_assetWriterTrack addCaptionGroup:group error:&v9]& 1) != 0)
    {
      return 0;
    }

    [(AVAssetWriterInputHelper *)self transitionAssetWriterAndAllInputsToFailedStatusWithError:v9];
  }

  if (error)
  {
LABEL_7:
    *error = v9;
  }

  return 1;
}

- (void)prepareToEndSession
{
  _assetWriterTrack = [(AVAssetWriterInputWritingHelper *)self _assetWriterTrack];

  [(AVFigAssetWriterTrack *)_assetWriterTrack prepareToEndSession];
}

- (BOOL)prepareToFinishWritingReturningError:(id *)error
{
  _assetWriterTrack = [(AVAssetWriterInputWritingHelper *)self _assetWriterTrack];

  return [(AVFigAssetWriterTrack *)_assetWriterTrack markEndOfDataReturningError:error];
}

- (void)markCurrentPassAsFinished
{
  referencedObject = [(AVWeakReference *)[(AVAssetWriterInputHelper *)self weakReferenceToAssetWriterInput] referencedObject];
  mediaDataRequester = self->_mediaDataRequester;
  if (mediaDataRequester)
  {
    [(AVAssetWriterInputWritingHelper *)self _stopObservingReadyForMoreMediaDataKeyPath];
    [(AVAssetWriterInputMediaDataRequester *)mediaDataRequester setDelegate:0];
    self->_mediaDataRequester = 0;
    requestQueue = [(AVAssetWriterInputMediaDataRequester *)mediaDataRequester requestQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__AVAssetWriterInputWritingHelper_markCurrentPassAsFinished__block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = mediaDataRequester;
    dispatch_async(requestQueue, block);
  }

  if ([(AVAssetWriterInputWritingHelper *)self canPerformMultiplePasses])
  {
    v6 = [[AVAssetWriterInputInterPassAnalysisHelper alloc] initWithWritingHelper:self];
    [referencedObject _setHelper:v6];
    [(AVAssetWriterInputInterPassAnalysisHelper *)v6 startPassAnalysis];
  }

  else
  {
    v6 = [[AVAssetWriterInputNoMorePassesHelper alloc] initWithWritingHelper:self];
    [referencedObject _setHelper:v6];
  }
}

- (void)markAsFinishedAndTransitionCurrentHelper:(id)helper
{
  v4 = 0;
  if ([(AVFigAssetWriterTrack *)[(AVAssetWriterInputWritingHelper *)self _assetWriterTrack] markEndOfDataReturningError:&v4])
  {
    [helper transitionToAndReturnTerminalHelperWithTerminalStatus:2];
  }

  else
  {
    [helper transitionAssetWriterAndAllInputsToFailedStatusWithError:v4];
  }
}

- (id)transitionToAndReturnTerminalHelperWithTerminalStatus:(int64_t)status
{
  if (self->_mediaDataRequester)
  {
    [(AVAssetWriterInputWritingHelper *)self _stopObservingReadyForMoreMediaDataKeyPath];
    [(AVAssetWriterInputMediaDataRequester *)self->_mediaDataRequester setDelegate:0];
  }

  v8.receiver = self;
  v8.super_class = AVAssetWriterInputWritingHelper;
  v5 = [(AVAssetWriterInputHelper *)&v8 transitionToAndReturnTerminalHelperWithTerminalStatus:status];
  v6 = v5;
  if (self->_mediaDataRequester)
  {
    [v5 requestMediaDataOnceIfNecessaryWithMediaDataRequester:?];
  }

  return v6;
}

- (__CVPixelBufferPool)pixelBufferPool
{
  result = self->_pixelBufferPool;
  if (!result)
  {
    result = [(AVFigAssetWriterTrack *)[(AVAssetWriterInputWritingHelper *)self _assetWriterTrack] pixelBufferPool];
    if (!result)
    {
      result = self->_pixelBufferPool;
      if (!result)
      {
        [(AVAssetWriterInputHelper *)self sourcePixelBufferAttributes];
        if (FigCreatePixelBufferAttributesWithIOSurfaceSupport())
        {
          return 0;
        }

        else
        {
          v5 = 0;
          if (CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, v5, &self->_pixelBufferPool) == -6682)
          {
            v6 = MEMORY[0x1E695DF30];
            v7 = *MEMORY[0x1E695D930];
            v8 = objc_opt_class();
            v14 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector(v8 userInfo:{a2, @"A pixel buffer pool cannot be created with the receiver's sourcePixelBufferAttributes. The pixel buffer attributes must specify a width, height, and either a pixel format or a pixel format description.", v9, v10, v11, v12, v13, v15), 0}];
            objc_exception_throw(v14);
          }

          return self->_pixelBufferPool;
        }
      }
    }
  }

  return result;
}

- (BOOL)_checkProResRAWRequiredMetadataForSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  outputSettings = [(AVAssetWriterInputHelper *)self outputSettings];
  if (!outputSettings || (v8 = outputSettings, ![(AVOutputSettings *)outputSettings willYieldCompressedSamples]))
  {
    FormatDescription = CMSampleBufferGetFormatDescription(buffer);
    if (FormatDescription)
    {
      CMFormatDescriptionGetMediaSubType(FormatDescription);
      OUTLINED_FUNCTION_2_6();
      if (v10 || v14 == 1634759272)
      {
        p_didCheckProResRAWRequiredMetadata = &self->_didCheckProResRAWRequiredMetadata;
        if (!self->_didCheckProResRAWRequiredMetadata)
        {
          v12 = [(AVAssetWriterInputWritingHelper *)self _checkIfClientSetProResRAWRequiredMetadataReturningError:error];
          if (!v12)
          {
            return v12;
          }

LABEL_20:
          LOBYTE(v12) = 1;
          *p_didCheckProResRAWRequiredMetadata = 1;
          return v12;
        }
      }
    }

LABEL_18:
    LOBYTE(v12) = 1;
    return v12;
  }

  [(AVOutputSettings *)v8 videoCodecType];
  OUTLINED_FUNCTION_2_6();
  v10 = v10 || v9 == 1634759272;
  if (!v10)
  {
    goto LABEL_18;
  }

  p_didCheckProResRAWRequiredMetadata = &self->_didCheckProResRAWRequiredMetadata;
  if (self->_didCheckProResRAWRequiredMetadata)
  {
    goto LABEL_18;
  }

  if ([(AVAssetWriterInputWritingHelper *)self _checkIfClientSetProResRAWRequiredMetadataReturningError:error])
  {
    goto LABEL_20;
  }

  LOBYTE(v12) = 0;
  return v12;
}

- (BOOL)_checkProResRAWRequiredMetadataForPixelBufferReturningError:(id *)error
{
  outputSettings = [(AVAssetWriterInputHelper *)self outputSettings];
  if (outputSettings && (v6 = outputSettings, [(AVOutputSettings *)outputSettings willYieldCompressedSamples]) && (([(AVOutputSettings *)v6 videoCodecType], OUTLINED_FUNCTION_2_6(), !v8) ? (v8 = v7 == 1634759272) : (v8 = 1), v8 && !self->_didCheckProResRAWRequiredMetadata))
  {
    v9 = [(AVAssetWriterInputWritingHelper *)self _checkIfClientSetProResRAWRequiredMetadataReturningError:error];
    if (v9)
    {
      LOBYTE(v9) = 1;
      self->_didCheckProResRAWRequiredMetadata = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (int64_t)appendSampleBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  v10 = 0;
  if ([(AVAssetWriterInputWritingHelper *)self isReadyForMoreMediaData])
  {
    if ((!CMGetAttachment(buffer, *MEMORY[0x1E6960530], 0) || (v7 = [objc_msgSend(objc_msgSend(-[AVWeakReference referencedObject](-[AVAssetWriterInputHelper weakReferenceToAssetWriterInput](self "weakReferenceToAssetWriterInput")]) != 0) && (!-[NSString isEqual:](-[AVAssetWriterInputHelper mediaType](self, "mediaType"), "isEqual:", @"vide") || !-[AVAssetWriterInputHelper expectsMediaDataInRealTime](self, "expectsMediaDataInRealTime") || (v7 = -[AVAssetWriterInputWritingHelper _checkProResRAWRequiredMetadataForSampleBuffer:error:](self, "_checkProResRAWRequiredMetadataForSampleBuffer:error:", buffer, &v10)) != 0))
    {
      v7 = [(AVFigAssetWriterTrack *)[(AVAssetWriterInputWritingHelper *)self _assetWriterTrack] addSampleBuffer:buffer error:&v10];
    }
  }

  else
  {
    v8 = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"readyForMoreMediaData is NO." userInfo:0]);
    v7 = 0;
    v10 = v8;
  }

  if (error && (v7 & 1) == 0)
  {
    *error = v10;
  }

  return v7 ^ 1u;
}

- (uint64_t)appendCaption:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  result = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"readyForMoreMediaData is NO." userInfo:0]);
  *a1 = result;
  return result;
}

@end