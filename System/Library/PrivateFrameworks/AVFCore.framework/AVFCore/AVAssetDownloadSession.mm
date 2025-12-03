@interface AVAssetDownloadSession
+ (id)assetDownloadSessionWithAsset:(id)asset destinationURL:(id)l options:(id)options;
+ (id)assetDownloadSessionWithAsset:(id)asset mediaSelections:(id)selections destinationURL:(id)l options:(id)options;
+ (id)assetDownloadSessionWithDownloadToken:(unint64_t)token;
+ (id)assetDownloadSessionWithURL:(id)l destinationURL:(id)rL options:(id)options;
+ (void)registerDownloadLocation:(id)location forURLAsset:(id)asset;
- (AVAssetDownloadSession)init;
- (AVAssetDownloadSession)initWithAsset:(id)asset mediaSelections:(id)selections destinationURL:(id)l options:(id)options;
- (AVAssetDownloadSession)initWithDownloadToken:(unint64_t)token;
- (AVAssetDownloadSession)initWithURL:(id)l destinationURL:(id)rL options:(id)options;
- (BOOL)ensureProgressTimerIsRunningOnQueueWithError:(id *)error;
- (NSError)error;
- (OpaqueFigAsset)_createDuplicateFigAssetFromAVAsset:(id)asset options:(id)options;
- (id)_common_init;
- (id)_errorForFigNotificationPayload:(__CFDictionary *)payload key:(__CFString *)key;
- (id)_errorFromAssetNotificationPayload:(id)payload;
- (id)_setupFigClientObjectForFileDownload:(id)download;
- (id)_setupFigClientObjectForStreaming:(id)streaming;
- (id)_startOnQueue;
- (id)_startOnQueueFirstTime;
- (id)_verifyDownloadConfigurationForAssetType;
- (int)_primeCache;
- (int)_readyForInspection;
- (int64_t)status;
- (unint64_t)availableFileSize;
- (unint64_t)countOfBytesReceived;
- (unint64_t)downloadToken;
- (unint64_t)fileSize;
- (void)_addFigAssetListeners;
- (void)_addFigPlaybackItemListeners;
- (void)_primeCacheOnDispatchQueue;
- (void)_removeFigAssetListeners;
- (void)_removeFigPlaybackItemListeners;
- (void)_sendDidFinishDownloadForMediaSelectionWithMediaSelection:(id)selection;
- (void)_sendDidReceiveMetricEvent:(id)event;
- (void)_sendDidResolveMediaSelectionWithMediaSelection:(id)selection;
- (void)_sendDownloadFailureToDelegateWithError:(id)error;
- (void)_sendDownloadSuccessToDelegate;
- (void)_sendLoadedTimeRangesChangedToDelegateWithNewlyLoadedTimeRange:(id)range currentLoadedTimeRanges:(id)ranges timeRangeExpectedToLoad:(id)load selectedMediaArray:(id)array;
- (void)_sendProgessUpdateWithExpectedBytesToDownload:(unint64_t)download bytesDownloaded:(unint64_t)downloaded;
- (void)_sendWillDownloadVariants:(id)variants;
- (void)_setupFigClientObjectAsync:(id)async;
- (void)_startLoadingMetadataOnQueue;
- (void)_transitionToTerminalStatus:(int64_t)status error:(id)error;
- (void)cancelAndReleaseProgressTimerOnQueue;
- (void)dealloc;
- (void)pause;
- (void)start;
- (void)startLoadingMetadata;
- (void)stop;
@end

@implementation AVAssetDownloadSession

- (id)_common_init
{
  v3 = objc_alloc_init(AVAssetDownloadSessionInternal);
  self->_internal = v3;
  if (v3)
  {
    CFRetain(v3);
    self->_internal->weakReference = [[AVWeakReference alloc] initWithReferencedObject:self];
    self->_internal->delegateStorage = objc_alloc_init(AVWeakReferencingDelegateStorage);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    self->_internal->stateQueue = dispatch_queue_create("com.apple.avfoundation.avassetdownloadsession", v4);
    self->_internal->status = 0;
    self->_internal->error = 0;
    self->_internal->priority = 0;
  }

  else
  {

    return 0;
  }

  return self;
}

- (AVAssetDownloadSession)init
{
  v3.receiver = self;
  v3.super_class = AVAssetDownloadSession;
  result = [(AVAssetDownloadSession *)&v3 init];
  if (result)
  {
    return [(AVAssetDownloadSession *)result _common_init];
  }

  return result;
}

- (AVAssetDownloadSession)initWithURL:(id)l destinationURL:(id)rL options:(id)options
{
  v71 = *MEMORY[0x1E69E9840];
  v69.receiver = self;
  v69.super_class = AVAssetDownloadSession;
  v9 = [(AVAssetDownloadSession *)&v69 init];
  if (v9)
  {
    _common_init = [(AVAssetDownloadSession *)v9 _common_init];
    if (l)
    {
      goto LABEL_3;
    }

LABEL_55:
    v47 = _common_init;
    v53 = MEMORY[0x1E695DF30];
    v54 = *MEMORY[0x1E695D940];
    v55 = "URL != nil";
LABEL_57:
    v62 = v55;
    v57 = @"invalid parameter not satisfying: %s";
    v58 = _common_init;
    v59 = a2;
    goto LABEL_58;
  }

  _common_init = 0;
  if (!l)
  {
    goto LABEL_55;
  }

LABEL_3:
  if (([rL isFileURL] & 1) == 0)
  {
    v56 = _common_init;
    v53 = MEMORY[0x1E695DF30];
    v54 = *MEMORY[0x1E695D940];
    v55 = "[destinationURL isFileURL]";
    goto LABEL_57;
  }

  if (!_common_init)
  {
    return _common_init;
  }

  v63 = a2;
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  figAssetCreationFlagsForAssetReferenceRestrictions(2);
  _common_init->_internal->URL = [l copy];
  _common_init->_internal->destinationURL = [rL copy];
  v12 = [options objectForKey:@"AVAssetDownloadSessionPriorityKey"];
  if (v12)
  {
    _common_init->_internal->priority = [v12 intValue];
  }

  _common_init->_internal->cachePrimingDownloadTokenNum = [objc_msgSend(options objectForKey:{@"AVAssetDownloadSessionCachePrimingDownloadTokenKey", "copy"}];
  v13 = [options objectForKey:@"AVAssetDownloadSessionProtectedContentSupportStorageURLKey"];
  v14 = [options objectForKey:@"AVAssetDownloadSessionPurchaseBundleKey"];
  v15 = [options objectForKey:@"AVAssetDownloadSessionAirPlayAuthorizationInfoKey"];
  v16 = v15;
  if (v13 || v14 || v15)
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    v18 = v17;
    if (v13)
    {
      [v17 setValue:v13 forKey:*MEMORY[0x1E6970C10]];
    }

    if (v14)
    {
      [v18 setValue:v14 forKey:*MEMORY[0x1E6970C18]];
    }

    if (v16)
    {
      [v18 setValue:v16 forKey:*MEMORY[0x1E6970C08]];
    }

    [v11 setObject:v18 forKey:*MEMORY[0x1E6970F60]];
  }

  v19 = [options objectForKey:@"AVAssetDownloadSessionHTTPCookiesKey"];
  if ([v19 count])
  {
    v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v21 = [v19 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v66;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v66 != v23)
          {
            objc_enumerationMutation(v19);
          }

          properties = [*(*(&v65 + 1) + 8 * i) properties];
          if (properties)
          {
            [v20 addObject:properties];
          }
        }

        v22 = [v19 countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v22);
    }

    [v11 setObject:v20 forKey:*MEMORY[0x1E6970ED8]];
  }

  v26 = [options objectForKey:@"AVAssetDownloadSessionClientAuditTokenKey"];
  if (v26)
  {
    [v11 setObject:v26 forKey:*MEMORY[0x1E6970F48]];
  }

  v27 = [options objectForKey:@"AVAssetDownloadSessionClientBundleIdentifierKey"];
  if (v27)
  {
    [v11 setObject:v27 forKey:*MEMORY[0x1E6970F50]];
  }

  [v11 setObject:_common_init->_internal->destinationURL forKey:*MEMORY[0x1E6970FB0]];
  if (_common_init->_internal->priority == -1)
  {
    [v11 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6970FB8]];
  }

  v28 = [options objectForKey:@"AVAssetDownloadSessioniTunesStoreContentInfoKey"];
  if (v28)
  {
    v29 = v28;
    v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    v31 = [v29 objectForKey:@"AVAssetDownloadSessioniTunesStoreContentIDKey"];
    v32 = [v29 objectForKey:@"AVAssetDownloadSessioniTunesStoreContentTypeKey"];
    v33 = _common_init;
    v34 = v11;
    v35 = [v29 objectForKey:@"AVAssetDownloadSessioniTunesStoreContentUserAgentKey"];
    v36 = [v29 objectForKey:@"AVAssetDownloadSessioniTunesStoreContentDownloadParametersKey"];
    v37 = [v29 objectForKey:@"AVAssetDownloadSessioniTunesStoreContentDSIDKey"];
    v64 = [v29 objectForKey:@"AVAssetDownloadSessioniTunesStoreContentPurchasedMediaKindKey"];
    v38 = [v29 objectForKey:@"AVURLAssetiTunesStoreContentRentalIDKey"];
    [v30 setValue:v31 forKey:*MEMORY[0x1E6971600]];
    [v30 setValue:v32 forKey:*MEMORY[0x1E6971618]];
    v39 = v35;
    v11 = v34;
    _common_init = v33;
    [v30 setValue:v39 forKey:*MEMORY[0x1E6971620]];
    [v30 setValue:v36 forKey:*MEMORY[0x1E69715F0]];
    [v30 setValue:v37 forKey:*MEMORY[0x1E69715E8]];
    [v30 setValue:v64 forKey:*MEMORY[0x1E6971608]];
    [v30 setValue:v38 forKey:*MEMORY[0x1E6971610]];
    [v11 setObject:v30 forKey:*MEMORY[0x1E6971128]];
  }

  v40 = [options objectForKey:@"AVAssetDownloadSessionHTTPHeaderFieldsKey"];
  if (v40)
  {
    [v11 setObject:v40 forKey:*MEMORY[0x1E6970FE8]];
  }

  v41 = [options objectForKey:@"AVAssetDownloadSessionMaxSizeAllowedForCellularAccessKey"];
  v42 = [options objectForKey:@"AVAssetDownloadSessionAllowsCellularAccessKey"];
  if (v42)
  {
    bOOLValue = [v42 BOOLValue];
    if (!v41 || ((bOOLValue ^ ([v41 longLongValue] == 0)) & 1) != 0)
    {
      if ((bOOLValue & 1) == 0)
      {
        v41 = [MEMORY[0x1E696AD98] numberWithInt:0];
      }

      goto LABEL_43;
    }

    v61 = _common_init;
    v53 = MEMORY[0x1E695DF30];
    v54 = *MEMORY[0x1E695D940];
    v57 = @"AVAssetDownloadSessionMaxSizeAllowedForCellularAccessKey and AVAssetDownloadSessionAllowsCellularAccessKey options are incompatible";
    v58 = _common_init;
    v59 = v63;
LABEL_58:
    v60 = [v53 exceptionWithName:v54 reason:AVMethodExceptionReasonWithObjectAndSelector(v58 userInfo:{v59, v57, v48, v49, v50, v51, v52, v62), 0}];
    objc_exception_throw(v60);
  }

LABEL_43:
  if (v41)
  {
    [v11 setObject:v41 forKey:*MEMORY[0x1E6971018]];
  }

  if ([objc_msgSend(options objectForKey:{@"AVAssetDownloadSessionOptimizeAccessForLinearMoviePlaybackKey", "BOOLValue"}])
  {
    v44 = *MEMORY[0x1E695E4D0];
    [v11 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6971010]];
    [v11 setObject:v44 forKey:*MEMORY[0x1E6970FF8]];
    [v11 setObject:v44 forKey:*MEMORY[0x1E69710C0]];
    [v11 setObject:v44 forKey:*MEMORY[0x1E6970F88]];
    [v11 setObject:v44 forKey:*MEMORY[0x1E6970F90]];
  }

  v45 = [options objectForKey:@"AVAssetDownloadSessionAlternativeConfigurationOptionsKey"];
  if (v45)
  {
    [v11 setObject:v45 forKey:*MEMORY[0x1E6970F10]];
  }

  if (!_common_init->_internal->figAsset)
  {
    FigAssetRemoteCreateWithURL();

    _common_init = 0;
    if ([0 _setFileFigAsset:? options:?])
    {

      _common_init = 0;
    }
  }

  return _common_init;
}

- (AVAssetDownloadSession)initWithDownloadToken:(unint64_t)token
{
  v16.receiver = self;
  v16.super_class = AVAssetDownloadSession;
  v5 = [(AVAssetDownloadSession *)&v16 init];
  if (!v5)
  {
    v7 = 0;
    if (token)
    {
      return v7;
    }

LABEL_7:
    v9 = v7;
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v7 userInfo:{a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, "downloadToken > 0"), 0}];
    objc_exception_throw(v15);
  }

  _common_init = [(AVAssetDownloadSession *)v5 _common_init];
  v7 = _common_init;
  if (!token)
  {
    goto LABEL_7;
  }

  if (_common_init)
  {
    *(*(_common_init + 8) + 120) = token;
    FigAssetRemoteCopyAssetWithDownloadToken();

    return 0;
  }

  return v7;
}

- (AVAssetDownloadSession)initWithAsset:(id)asset mediaSelections:(id)selections destinationURL:(id)l options:(id)options
{
  v27.receiver = self;
  v27.super_class = AVAssetDownloadSession;
  v11 = [(AVAssetDownloadSession *)&v27 init];
  if (v11)
  {
    _common_init = [(AVAssetDownloadSession *)v11 _common_init];
    if (asset)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _common_init = 0;
    if (asset)
    {
LABEL_3:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = _common_init;
        v19 = MEMORY[0x1E695DF30];
        v20 = *MEMORY[0x1E695D940];
        v21 = "(asset != nil && [asset isKindOfClass:[AVURLAsset class]]) || asset == nil";
        goto LABEL_17;
      }

      goto LABEL_7;
    }
  }

  if (![options objectForKeyedSubscript:@"AVAssetDownloadTaskDownloadConfigurationKey"])
  {
    v25 = _common_init;
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = "asset != nil || options[AVAssetDownloadTaskDownloadConfigurationKey] != nil";
LABEL_17:
    v26 = [v19 exceptionWithName:v20 reason:AVMethodExceptionReasonWithObjectAndSelector(_common_init userInfo:{a2, @"invalid parameter not satisfying: %s", v14, v15, v16, v17, v18, v21), 0}];
    objc_exception_throw(v26);
  }

LABEL_7:
  if (selections)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = _common_init;
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D940];
      v21 = "mediaSelections == nil || [mediaSelections isKindOfClass:[NSArray class]]";
      goto LABEL_17;
    }
  }

  if (_common_init)
  {
    if (asset)
    {
      assetCopy = asset;
    }

    else
    {
      assetCopy = [objc_msgSend(options objectForKeyedSubscript:{@"AVAssetDownloadTaskDownloadConfigurationKey", "_asset"}];
    }

    _common_init->_internal->asset = assetCopy;
    _common_init->_internal->URL = [objc_msgSend(asset "URL")];
    _common_init->_internal->destinationURL = [l copy];
    _common_init->_internal->downloadToken = [(AVURLAsset *)_common_init->_internal->asset downloadToken];
    _common_init->_internal->mediaSelections = [selections copy];
    [(AVAssetDownloadSession *)_common_init _setupFigClientObjectAsync:options];
  }

  return _common_init;
}

- (void)dealloc
{
  if (self->_internal)
  {
    [(AVAssetDownloadSession *)self _removeFigAssetListeners];
    [(AVAssetDownloadSession *)self _removeFigPlaybackItemListeners];
    [(AVAssetDownloadSession *)self cancelAndReleaseProgressTimerOnQueue];
    if (self->_internal->playbackItem)
    {
      FigBaseObject = FigPlaybackItemGetFigBaseObject();
      if (FigBaseObject)
      {
        v4 = FigBaseObject;
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v5)
        {
          v5(v4);
        }
      }
    }

    if (self->_internal->player)
    {
      v6 = FigPlayerGetFigBaseObject();
      if (v6)
      {
        v7 = v6;
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v8)
        {
          v8(v7);
        }
      }
    }

    internal = self->_internal;
    stateQueue = internal->stateQueue;
    if (stateQueue)
    {
      dispatch_release(stateQueue);
      internal = self->_internal;
    }

    figAsset = internal->figAsset;
    if (figAsset)
    {
      CFRelease(figAsset);
      internal = self->_internal;
    }

    playbackItem = internal->playbackItem;
    if (playbackItem)
    {
      CFRelease(playbackItem);
      internal = self->_internal;
    }

    player = internal->player;
    if (player)
    {
      CFRelease(player);
      internal = self->_internal;
    }

    assetDownloader = internal->assetDownloader;
    if (assetDownloader)
    {
      CFRelease(assetDownloader);
      internal = self->_internal;
    }

    CFRelease(self->_internal);
  }

  v15.receiver = self;
  v15.super_class = AVAssetDownloadSession;
  [(AVAssetDownloadSession *)&v15 dealloc];
}

+ (id)assetDownloadSessionWithURL:(id)l destinationURL:(id)rL options:(id)options
{
  v5 = [objc_alloc(objc_opt_class()) initWithURL:l destinationURL:rL options:options];

  return v5;
}

+ (id)assetDownloadSessionWithDownloadToken:(unint64_t)token
{
  v3 = [objc_alloc(objc_opt_class()) initWithDownloadToken:token];

  return v3;
}

+ (id)assetDownloadSessionWithAsset:(id)asset destinationURL:(id)l options:(id)options
{
  v5 = [objc_alloc(objc_opt_class()) initWithAsset:asset mediaSelections:0 destinationURL:l options:options];

  return v5;
}

+ (void)registerDownloadLocation:(id)location forURLAsset:(id)asset
{
  _figAsset = [asset _figAsset];

  MEMORY[0x1EEDCD0D8](_figAsset, location);
}

+ (id)assetDownloadSessionWithAsset:(id)asset mediaSelections:(id)selections destinationURL:(id)l options:(id)options
{
  v6 = [objc_alloc(objc_opt_class()) initWithAsset:asset mediaSelections:selections destinationURL:l options:options];

  return v6;
}

- (void)start
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__31;
  v9 = __Block_byref_object_dispose__31;
  v10 = 0;
  [(AVAssetDownloadSession *)self willChangeValueForKey:@"status"];
  stateQueue = self->_internal->stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__AVAssetDownloadSession_start__block_invoke;
  v4[3] = &unk_1E7460E68;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(stateQueue, v4);
  [(AVAssetDownloadSession *)self didChangeValueForKey:@"status"];
  if (v6[5])
  {
    [(AVAssetDownloadSession *)self _transitionToTerminalStatus:4 error:?];
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __31__AVAssetDownloadSession_start__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _startOnQueue];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)pause
{
  [(AVAssetDownloadSession *)self willChangeValueForKey:@"status"];
  stateQueue = self->_internal->stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__AVAssetDownloadSession_pause__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(stateQueue, block);
  [(AVAssetDownloadSession *)self didChangeValueForKey:@"status"];
}

uint64_t __31__AVAssetDownloadSession_pause__block_invoke(uint64_t result)
{
  v5 = *(*(result + 32) + 8);
  if (v5[6] == 1)
  {
    v13 = v2;
    v14 = v1;
    v6 = result;
    v7 = v5[18];
    if (v7)
    {
      VTable = CMBaseObjectGetVTable();
      v9 = *(VTable + 16);
      result = VTable + 16;
      v10 = *(v9 + 16);
      if (v10)
      {
        result = v10(v7);
      }
    }

    else
    {
      result = v5[3];
      if (result)
      {
        FigBaseObject = FigPlaybackItemGetFigBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v12)
        {
          v12(FigBaseObject, *MEMORY[0x1E69728F8], *MEMORY[0x1E695E4C0]);
        }

        result = [*(v6 + 32) cancelAndReleaseProgressTimerOnQueue];
      }
    }

    *(*(*(v6 + 32) + 8) + 48) = 2;
  }

  return result;
}

- (void)stop
{
  [(AVAssetDownloadSession *)self willChangeValueForKey:@"status"];
  stateQueue = self->_internal->stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__AVAssetDownloadSession_stop__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(stateQueue, block);
  [(AVAssetDownloadSession *)self didChangeValueForKey:@"status"];
}

uint64_t __30__AVAssetDownloadSession_stop__block_invoke(uint64_t result)
{
  v5 = *(*(result + 32) + 8);
  if (v5[6] <= 2)
  {
    v13 = v2;
    v14 = v1;
    v6 = result;
    v7 = v5[18];
    if (v7)
    {
      VTable = CMBaseObjectGetVTable();
      v9 = *(VTable + 16);
      result = VTable + 16;
      v10 = *(v9 + 24);
      if (v10)
      {
        result = v10(v7);
      }
    }

    else
    {
      result = v5[3];
      if (result)
      {
        FigBaseObject = FigPlaybackItemGetFigBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v12)
        {
          v12(FigBaseObject, *MEMORY[0x1E69728F8], *MEMORY[0x1E695E4C0]);
        }

        result = [*(v6 + 32) cancelAndReleaseProgressTimerOnQueue];
      }
    }

    *(*(*(v6 + 32) + 8) + 48) = 5;
  }

  return result;
}

- (void)startLoadingMetadata
{
  stateQueue = self->_internal->stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AVAssetDownloadSession_startLoadingMetadata__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (int64_t)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_internal->stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__AVAssetDownloadSession_status__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__31;
  v10 = __Block_byref_object_dispose__31;
  v11 = 0;
  stateQueue = self->_internal->stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__AVAssetDownloadSession_error__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __31__AVAssetDownloadSession_error__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 64);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (unint64_t)fileSize
{
  valuePtr = 0;
  result = self->_internal->playbackItem;
  if (result)
  {
    number = 0;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v5 = v4(FigBaseObject, *MEMORY[0x1E6972918], *MEMORY[0x1E695E480], &number);
      v6 = number;
      if (!v5)
      {
        CFNumberGetValue(number, kCFNumberLongLongType, &valuePtr);
        v6 = number;
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    return valuePtr;
  }

  return result;
}

- (unint64_t)availableFileSize
{
  valuePtr = 0;
  result = self->_internal->playbackItem;
  if (result)
  {
    number = 0;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v5 = v4(FigBaseObject, *MEMORY[0x1E6972858], *MEMORY[0x1E695E480], &number);
      v6 = number;
      if (!v5)
      {
        CFNumberGetValue(number, kCFNumberLongLongType, &valuePtr);
        v6 = number;
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    return valuePtr;
  }

  return result;
}

- (unint64_t)countOfBytesReceived
{
  valuePtr = 0;
  if (self->_internal->assetDownloader)
  {
    number = 0;
    CMBaseObject = FigAssetDownloaderGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v4 = v3(CMBaseObject, *MEMORY[0x1E6970CD0], *MEMORY[0x1E695E480], &number);
      v5 = number;
      if (!v4)
      {
        CFNumberGetValue(number, kCFNumberLongLongType, &valuePtr);
        v5 = number;
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }

    return valuePtr;
  }

  else
  {

    return [(AVAssetDownloadSession *)self availableFileSize];
  }
}

- (unint64_t)downloadToken
{
  internal = self->_internal;
  result = internal->downloadToken;
  if (!result)
  {
    result = internal->figAsset;
    if (result)
    {
      number = 0;
      CMBaseObject = FigAssetGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v7 = v6(CMBaseObject, *MEMORY[0x1E6971218], *MEMORY[0x1E695E480], &number);
        v8 = number;
        if (v7)
        {
          v9 = 1;
        }

        else
        {
          v9 = number == 0;
        }

        if (!v9)
        {
          CFNumberGetValue(number, kCFNumberLongLongType, &self->_internal->downloadToken);
          v8 = number;
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }

      return self->_internal->downloadToken;
    }
  }

  return result;
}

- (void)_sendDownloadSuccessToDelegate
{
  delegateStorage = self->_internal->delegateStorage;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __96__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendDownloadSuccessToDelegate__block_invoke;
  v3[3] = &unk_1E7463C50;
  v3[4] = self;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v3];
}

uint64_t __96__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendDownloadSuccessToDelegate__block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v3 + 32);

      return [a2 assetDownloadSessionDidFinishDownload:v4];
    }
  }

  return result;
}

- (void)_sendDownloadFailureToDelegateWithError:(id)error
{
  delegateStorage = self->_internal->delegateStorage;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __106__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendDownloadFailureToDelegateWithError___block_invoke;
  v4[3] = &unk_1E7465620;
  v4[4] = self;
  v4[5] = error;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v4];
}

uint64_t __106__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendDownloadFailureToDelegateWithError___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);

      return [a2 assetDownloadSession:v4 didFailWithError:v5];
    }
  }

  return result;
}

- (void)_sendLoadedTimeRangesChangedToDelegateWithNewlyLoadedTimeRange:(id)range currentLoadedTimeRanges:(id)ranges timeRangeExpectedToLoad:(id)load selectedMediaArray:(id)array
{
  v31 = *MEMORY[0x1E69E9840];
  memset(&v29, 0, sizeof(v29));
  memset(&v28, 0, sizeof(v28));
  array = [MEMORY[0x1E695DF70] array];
  if (range)
  {
    CMTimeRangeMakeFromDictionary(&v29, range);
  }

  if (ranges)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [ranges countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(ranges);
          }

          v15 = *(*(&v24 + 1) + 8 * v14);
          memset(&v23, 0, sizeof(v23));
          CMTimeRangeMakeFromDictionary(&v23, v15);
          v22 = v23;
          [array addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCMTimeRange:", &v22)}];
          ++v14;
        }

        while (v12 != v14);
        v12 = [ranges countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v12);
    }
  }

  if (load)
  {
    CMTimeRangeMakeFromDictionary(&v28, load);
  }

  v16 = [[AVMediaSelection alloc] _initWithAsset:self->_internal->asset selectedMediaArray:array];
  delegateStorage = self->_internal->delegateStorage;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = v29;
  v21 = v28;
  v19[2] = __196__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendLoadedTimeRangesChangedToDelegateWithNewlyLoadedTimeRange_currentLoadedTimeRanges_timeRangeExpectedToLoad_selectedMediaArray___block_invoke;
  v19[3] = &unk_1E7465648;
  v19[4] = self;
  v19[5] = array;
  v19[6] = v16;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v19];
}

uint64_t __196__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendLoadedTimeRangesChangedToDelegateWithNewlyLoadedTimeRange_currentLoadedTimeRanges_timeRangeExpectedToLoad_selectedMediaArray___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);
      v6 = *(v3 + 48);
      v7 = *(v3 + 72);
      v10[0] = *(v3 + 56);
      v10[1] = v7;
      v10[2] = *(v3 + 88);
      v8 = *(v3 + 120);
      v9[0] = *(v3 + 104);
      v9[1] = v8;
      v9[2] = *(v3 + 136);
      return [a2 assetDownloadSession:v4 didLoadTimeRange:v10 totalTimeRangesLoaded:v5 timeRangeExpectedToLoad:v9 forMediaSelection:v6];
    }
  }

  return result;
}

- (void)_sendDidResolveMediaSelectionWithMediaSelection:(id)selection
{
  v4 = [[AVMediaSelection alloc] _initWithAsset:self->_internal->asset selectedMediaArray:selection];
  delegateStorage = self->_internal->delegateStorage;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __114__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendDidResolveMediaSelectionWithMediaSelection___block_invoke;
  v6[3] = &unk_1E7465620;
  v6[4] = self;
  v6[5] = v4;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v6];
}

uint64_t __114__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendDidResolveMediaSelectionWithMediaSelection___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);

      return [a2 assetDownloadSession:v4 didResolveMediaSelection:v5];
    }
  }

  return result;
}

- (void)_sendDidFinishDownloadForMediaSelectionWithMediaSelection:(id)selection
{
  v4 = [[AVMediaSelection alloc] _initWithAsset:self->_internal->asset selectedMediaArray:selection];
  delegateStorage = self->_internal->delegateStorage;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __124__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendDidFinishDownloadForMediaSelectionWithMediaSelection___block_invoke;
  v6[3] = &unk_1E7465620;
  v6[4] = self;
  v6[5] = v4;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v6];
}

uint64_t __124__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendDidFinishDownloadForMediaSelectionWithMediaSelection___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);

      return [a2 assetDownloadSession:v4 didFinishDownloadForMediaSelection:v5];
    }
  }

  return result;
}

- (void)_sendProgessUpdateWithExpectedBytesToDownload:(unint64_t)download bytesDownloaded:(unint64_t)downloaded
{
  delegateStorage = self->_internal->delegateStorage;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __128__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendProgessUpdateWithExpectedBytesToDownload_bytesDownloaded___block_invoke;
  v5[3] = &unk_1E7465670;
  v5[4] = self;
  v5[5] = download;
  v5[6] = downloaded;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v5];
}

uint64_t __128__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendProgessUpdateWithExpectedBytesToDownload_bytesDownloaded___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = v3[4];
      v5 = v3[5];
      v6 = v3[6];

      return [a2 assetDownloadSession:v4 didUpdateProgressWithExpectedBytes:v5 bytesDownloaded:v6];
    }
  }

  return result;
}

- (void)_sendWillDownloadVariants:(id)variants
{
  delegateStorage = self->_internal->delegateStorage;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __92__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendWillDownloadVariants___block_invoke;
  v4[3] = &unk_1E7465620;
  v4[4] = self;
  v4[5] = variants;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v4];
}

uint64_t __92__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendWillDownloadVariants___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);

      return [a2 assetDownloadSession:v4 willDownloadVariants:v5];
    }
  }

  return result;
}

- (void)_sendDidReceiveMetricEvent:(id)event
{
  delegateStorage = self->_internal->delegateStorage;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __93__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendDidReceiveMetricEvent___block_invoke;
  v4[3] = &unk_1E7465620;
  v4[4] = self;
  v4[5] = event;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v4];
}

uint64_t __93__AVAssetDownloadSession_AVAssetDownloadSession_DelegateSupport___sendDidReceiveMetricEvent___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);

      return [a2 assetDownloadSession:v4 didReceiveMetricEvent:v5];
    }
  }

  return result;
}

- (BOOL)ensureProgressTimerIsRunningOnQueueWithError:(id *)error
{
  internal = self->_internal;
  if (!internal->fileDownloadProgressTimer)
  {
    self->_internal->fileDownloadProgressTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, internal->stateQueue);
    if (!self->_internal->fileDownloadProgressTimer)
    {
      return AVLocalizedError(@"AVFoundationErrorDomain", -11801, 0) == 0;
    }

    objc_initWeak(&location, self);
    fileDownloadProgressTimer = self->_internal->fileDownloadProgressTimer;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __101__AVAssetDownloadSession_AVAssetDownloadSession_Local__ensureProgressTimerIsRunningOnQueueWithError___block_invoke;
    v7[3] = &unk_1E74636C0;
    objc_copyWeak(&v8, &location);
    dispatch_source_set_event_handler(fileDownloadProgressTimer, v7);
    dispatch_source_set_timer(self->_internal->fileDownloadProgressTimer, 0, 0x1DCD6500uLL, 0x5F5E100uLL);
    dispatch_resume(self->_internal->fileDownloadProgressTimer);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return 1;
}

uint64_t __101__AVAssetDownloadSession_AVAssetDownloadSession_Local__ensureProgressTimerIsRunningOnQueueWithError___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  v2 = [Weak fileSize];
  v3 = [Weak countOfBytesReceived];

  return [Weak _sendProgessUpdateWithExpectedBytesToDownload:v2 bytesDownloaded:v3];
}

- (void)cancelAndReleaseProgressTimerOnQueue
{
  fileDownloadProgressTimer = self->_internal->fileDownloadProgressTimer;
  if (fileDownloadProgressTimer)
  {
    dispatch_source_cancel(fileDownloadProgressTimer);
    v4 = self->_internal->fileDownloadProgressTimer;
    if (v4)
    {
      dispatch_release(v4);
      self->_internal->fileDownloadProgressTimer = 0;
    }
  }
}

- (id)_setupFigClientObjectForFileDownload:(id)download
{
  v5 = [(AVAssetDownloadSession *)self _createDuplicateFigAssetFromAVAsset:self->_internal->asset options:download];
  self->_internal->cachePrimingDownloadTokenNum = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AVURLAsset downloadToken](self->_internal->asset, "downloadToken")}];
  v6 = [(AVAssetDownloadSession *)self _setFileFigAsset:v5 options:download];
  if (!v6)
  {
    v10 = 0;
    if (!v5)
    {
      return v10;
    }

    goto LABEL_8;
  }

  v7 = v6;
  URL = self->_internal->URL;
  if (URL)
  {
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:URL forKey:*MEMORY[0x1E696A998]];
  }

  else
  {
    v9 = 0;
  }

  v10 = AVLocalizedErrorWithUnderlyingOSStatus(v7, v9);
  if (v5)
  {
LABEL_8:
    CFRelease(v5);
  }

  return v10;
}

- (id)_setupFigClientObjectForStreaming:(id)streaming
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v63[0] = 4;
  v63[1] = avad_downloadSuccessCallback;
  v63[2] = avad_downloadFailureCallback;
  v63[3] = avad_loadedTimeRangeChangedCallback;
  v63[4] = avad_didResolveMediaSelection;
  v63[5] = avad_didFinishDownloadForMediaSelection;
  v63[6] = 0;
  v63[7] = avad_progressUpdate;
  v63[8] = avad_willDownloadAlternates;
  v63[9] = 0;
  v63[10] = 0;
  v63[11] = avad_didReceiveMetricEvent;
  _figAsset = [(AVAsset *)self->_internal->asset _figAsset];
  if (_figAsset)
  {
    _figAsset = CFRetain(_figAsset);
  }

  self->_internal->figAsset = _figAsset;
  v8 = [streaming objectForKey:@"AVMediaCharacteristicAudible"];
  if (v8)
  {
    [v5 setObject:objc_msgSend(v8 forKey:{"figDictionary"), AVTranslateAVMediaCharacteristicToFigMediaCharacteristic(@"AVMediaCharacteristicAudible")}];
  }

  v9 = [streaming objectForKey:@"AVMediaCharacteristicLegible"];
  if (v9)
  {
    [v5 setObject:objc_msgSend(v9 forKey:{"figDictionary"), AVTranslateAVMediaCharacteristicToFigMediaCharacteristic(@"AVMediaCharacteristicLegible")}];
  }

  v10 = [streaming objectForKey:@"AVMediaCharacteristicVisual"];
  if (v10)
  {
    [v5 setObject:objc_msgSend(v10 forKey:{"figDictionary"), AVTranslateAVMediaCharacteristicToFigMediaCharacteristic(@"AVMediaCharacteristicVisual")}];
  }

  if (v5)
  {
    [v6 setObject:v5 forKey:*MEMORY[0x1E6970C80]];
  }

  v11 = [objc_msgSend(streaming objectForKey:{@"AVAssetDownloadSessionDeleteDownloadWhenAssetFinalizesKey", "BOOLValue"}];
  v12 = MEMORY[0x1E695E4D0];
  if (v11)
  {
    [v6 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6970C50]];
  }

  if ([objc_msgSend(streaming objectForKey:{@"AVAssetDownloadSessionLinkAssetURLToDestinationURLKey", "BOOLValue"}])
  {
    [v6 setObject:*v12 forKey:*MEMORY[0x1E6970C70]];
  }

  v13 = [streaming objectForKey:@"AVAssetDownloadSessionMinimumRequiredMediaBitrateKey"];
  if (v13 || (v13 = [streaming objectForKey:@"AVAssetDownloadTaskMinimumRequiredMediaBitrateKey"]) != 0)
  {
    [v6 setObject:v13 forKey:*MEMORY[0x1E6970C88]];
  }

  v14 = [streaming objectForKey:@"AVAssetDownloadTaskMinimumRequiredPresentationSizeKey"];
  if (v14)
  {
    v62 = *MEMORY[0x1E695F060];
    if (AVCGSizeFromNSValue(v14, &v62))
    {
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v62);
      [v6 setObject:DictionaryRepresentation forKey:*MEMORY[0x1E6970C98]];
    }
  }

  if (([objc_msgSend(streaming objectForKey:{@"AVAssetDownloadSessionShouldStoreEligibleContentKeysKey", "BOOLValue"}] & 1) != 0 || objc_msgSend(objc_msgSend(streaming, "objectForKey:", @"AVAssetDownloadTaskShouldStoreEligibleContentKeysKey"), "BOOLValue"))
  {
    [v6 setObject:*v12 forKey:*MEMORY[0x1E6970CC8]];
  }

  v16 = [streaming objectForKey:@"AVAssetDownloadSessionClientBundleIdentifierKey"];
  if (v16)
  {
    [v6 setObject:v16 forKey:*MEMORY[0x1E6970C38]];
  }

  v17 = [streaming objectForKey:@"AVAssetDownloadSessionAssetNameKey"];
  if (v17)
  {
    [v6 setObject:v17 forKey:*MEMORY[0x1E6970C30]];
  }

  v18 = [streaming objectForKey:@"AVAssetDownloadSessionAssetImageDataKey"];
  if (v18)
  {
    [v6 setObject:v18 forKey:*MEMORY[0x1E6970C28]];
  }

  v19 = [streaming objectForKey:@"AVAssetDownloadTaskClientIsCatalyst"];
  if (v19)
  {
    [v6 setObject:v19 forKey:*MEMORY[0x1E6970C40]];
  }

  v20 = [streaming objectForKey:@"AVAssetDownloadTaskPrefersHDRKey"];
  if (v20 || (v20 = [streaming objectForKey:@"AVAssetDownloadTaskAllowHighDynamicRangeKey"]) != 0)
  {
    [v6 setObject:v20 forKey:*MEMORY[0x1E6970C20]];
  }

  v21 = [streaming objectForKey:@"AVAssetDownloadTaskMediaSelectionPrefersMultichannelOnlyKey"];
  if (v21)
  {
    v22 = v21;
    v23 = MEMORY[0x1E6970CB8];
LABEL_40:
    [v6 setObject:v22 forKey:*v23];
    goto LABEL_41;
  }

  v24 = [streaming objectForKey:@"AVAssetDownloadSessionMediaSelectionPrefersMultichannelKey"];
  if (v24 || (v24 = [streaming objectForKey:@"AVAssetDownloadTaskMediaSelectionPrefersMultichannelKey"]) != 0)
  {
    v22 = v24;
    v23 = MEMORY[0x1E6970CB0];
    goto LABEL_40;
  }

LABEL_41:
  v25 = [streaming objectForKey:@"AVAssetDownloadTaskPrefersLosslessAudioKey"];
  if (v25)
  {
    [v6 setObject:v25 forKey:*MEMORY[0x1E6970CA0]];
  }

  v26 = [streaming objectForKey:@"AVAssetDownloadTaskMaximumAudioSampleRateKey"];
  if (v26)
  {
    [v6 setObject:v26 forKey:*MEMORY[0x1E6970C78]];
  }

  v27 = [streaming objectForKey:@"AVAssetDownloadSessionAllowsExpensiveNetworkAccessKey"];
  if (v27 && ([v27 BOOLValue] & 1) == 0)
  {
    [v6 setObject:*v12 forKey:*MEMORY[0x1E6970C60]];
  }

  v28 = [streaming objectForKey:@"AVAssetDownloadSessionAllowsConstrainedNetworkAccessKey"];
  if (v28 && ([v28 BOOLValue] & 1) == 0)
  {
    [v6 setObject:*v12 forKey:*MEMORY[0x1E6970C58]];
  }

  v29 = [streaming objectForKey:@"AVAssetDownloadSessionDebugIdentifierKey"];
  if (v29)
  {
    [v6 setObject:v29 forKey:*MEMORY[0x1E6970C48]];
  }

  if ([streaming objectForKey:@"AVAssetDownloadSessionDownloadInterstitials"])
  {
    [v6 setObject:*v12 forKey:*MEMORY[0x1E6970C68]];
  }

  v30 = [streaming objectForKey:@"AVAssetDownloadSessionRetryErrorKey"];
  if (v30)
  {
    [v6 setObject:v30 forKey:*MEMORY[0x1E6970CC0]];
  }

  v31 = [streaming objectForKey:@"AVAssetDownloadTaskMinimumRequiredMediaBitrateForHEVCKey"];
  if (v31)
  {
    [v6 setObject:v31 forKey:*MEMORY[0x1E6970C90]];
  }

  v32 = [streaming objectForKey:@"AVAssetDownloadTaskPrefersMostCompatibleRenditionKey"];
  if (v32)
  {
    [v6 setObject:v32 forKey:*MEMORY[0x1E6970CA8]];
  }

  if (![v6 count])
  {

    v6 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v34 = [streaming objectForKey:@"AVAssetDownloadSessionMediaSelectionKey"];
  if (v34)
  {
    [array addObject:{objc_msgSend(v34, "_selectedMediaArray")}];
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  mediaSelections = self->_internal->mediaSelections;
  v36 = [(NSArray *)mediaSelections countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v59;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(mediaSelections);
        }

        [array addObject:{objc_msgSend(*(*(&v58 + 1) + 8 * i), "_selectedMediaArray")}];
      }

      v37 = [(NSArray *)mediaSelections countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v37);
  }

  v40 = [streaming objectForKey:@"AVAssetDownloadTaskMediaSelectionsForMultichannelKey"];
  if (v40)
  {
    v41 = v40;
    array2 = [MEMORY[0x1E695DF70] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v43 = [v41 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v55;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v55 != v45)
          {
            objc_enumerationMutation(v41);
          }

          [array2 addObject:{objc_msgSend(*(*(&v54 + 1) + 8 * j), "_selectedMediaArray")}];
        }

        v44 = [v41 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v44);
    }
  }

  v47 = [objc_msgSend(streaming objectForKeyedSubscript:{@"AVAssetDownloadTaskDownloadConfigurationKey", "_copyFigDownloadConfig"}];
  internal = self->_internal;
  p_assetDownloader = &internal->assetDownloader;
  stateQueue = internal->stateQueue;
  v49 = FigRemoteStreamingAssetDownloadOrchestratorCreate();
  if (v49)
  {
    v50 = AVLocalizedErrorWithUnderlyingOSStatus(v49, 0);
  }

  else
  {
    v50 = 0;
  }

  [(AVAssetDownloadSession *)self _addFigAssetListeners:stateQueue];

  if (v47)
  {
    CFRelease(v47);
  }

  return v50;
}

- (void)_setupFigClientObjectAsync:(id)async
{
  asset = self->_internal->asset;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__AVAssetDownloadSession_AVAssetDownloadSession_Local___setupFigClientObjectAsync___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = async;
  [(AVAsset *)asset loadValuesAsynchronouslyForKeys:&unk_1F0AD3838 completionHandler:v4];
}

void __83__AVAssetDownloadSession_AVAssetDownloadSession_Local___setupFigClientObjectAsync___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 32) + 8) + 80);
  v3[1] = 3221225472;
  v3[2] = __83__AVAssetDownloadSession_AVAssetDownloadSession_Local___setupFigClientObjectAsync___block_invoke_2;
  v3[3] = &unk_1E7460DF0;
  v4 = v1;
  dispatch_async(v2, v3);
}

void *__83__AVAssetDownloadSession_AVAssetDownloadSession_Local___setupFigClientObjectAsync___block_invoke_2(uint64_t a1)
{
  v7 = 0;
  *(*(*(a1 + 32) + 8) + 40) = [*(*(*(a1 + 32) + 8) + 136) statusOfValueForKey:@"streaming" error:&v7];
  v2 = [*(*(*(a1 + 32) + 8) + 136) _isStreaming];
  result = *(a1 + 32);
  if (*(result[1] + 40) != 2)
  {
    goto LABEL_10;
  }

  v4 = *(a1 + 40);
  v5 = v2 ? [result _setupFigClientObjectForStreaming:v4] : objc_msgSend(result, "_setupFigClientObjectForFileDownload:", v4);
  v7 = v5;
  result = *(a1 + 32);
  v6 = result[1];
  if (*(v6 + 56) == 1)
  {
    [result _startLoadingMetadataOnQueue];
    result = *(a1 + 32);
    v6 = result[1];
  }

  if (*(v6 + 48) != 1)
  {
LABEL_10:
    if (!v7)
    {
      return result;
    }

    return [*(a1 + 32) _transitionToTerminalStatus:4 error:?];
  }

  result = [result _startOnQueueFirstTime];
  v7 = result;
  if (result)
  {
    return [*(a1 + 32) _transitionToTerminalStatus:4 error:?];
  }

  return result;
}

- (void)_startLoadingMetadataOnQueue
{
  assetDownloader = self->_internal->assetDownloader;
  if (assetDownloader)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v4)
    {
      v4(assetDownloader);
    }
  }

  self->_internal->didStartLoadingMetadata = 1;
}

- (id)_startOnQueueFirstTime
{
  v26 = 0;
  valuePtr = 0;
  cf = 0;
  internal = self->_internal;
  assetDownloader = internal->assetDownloader;
  if (assetDownloader)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v6 = v5(assetDownloader);
    }

    else
    {
      v6 = -12782;
    }

    result = 0;
    goto LABEL_6;
  }

  if (!internal->playbackItem || (figAsset = internal->figAsset) == 0)
  {
    result = 0;
    goto LABEL_25;
  }

  v23 = 0;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v11)
  {
    _readyForInspection = v11(figAsset, *MEMORY[0x1E6971180], &v23);
    valuePtr = _readyForInspection;
    if (_readyForInspection)
    {
      goto LABEL_44;
    }

    if (v23)
    {
      result = [(AVAssetDownloadSession *)self _verifyDownloadConfigurationForAssetType];
      v26 = result;
      if (result)
      {
        v6 = 0;
        goto LABEL_7;
      }
    }

    v13 = self->_internal;
    if (!v13->cachePrimingDownloadTokenNum)
    {
      v22 = 0;
      FigBaseObject = FigPlaybackItemGetFigBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v17)
      {
        v17(FigBaseObject, *MEMORY[0x1E69728F8], *MEMORY[0x1E695E4D0]);
      }

      playbackItem = self->_internal->playbackItem;
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v19)
      {
        v6 = -12782;
        valuePtr = -12782;
LABEL_42:
        result = 0;
        goto LABEL_7;
      }

      _readyForInspection = v19(playbackItem, 0, &v22);
      valuePtr = _readyForInspection;
      if (!_readyForInspection)
      {
        if (!v22)
        {
          goto LABEL_36;
        }

        _readyForInspection = [(AVAssetDownloadSession *)self _readyForInspection];
LABEL_35:
        valuePtr = _readyForInspection;
        if (!_readyForInspection)
        {
LABEL_36:
          CMBaseObject = FigAssetGetCMBaseObject();
          v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v21)
          {
            v21(CMBaseObject, *MEMORY[0x1E6971210], *MEMORY[0x1E695E480], &cf);
            if (cf)
            {
              CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
              if (!valuePtr)
              {
                [(AVAssetDownloadSession *)self _transitionToTerminalStatus:3 error:0];
              }
            }
          }

          [(AVAssetDownloadSession *)self ensureProgressTimerIsRunningOnQueueWithError:&v26];
          v6 = valuePtr;
          result = v26;
          goto LABEL_7;
        }
      }

LABEL_44:
      v6 = _readyForInspection;
      goto LABEL_42;
    }

    v14 = v13->figAsset;
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v15)
    {
      _readyForInspection = v15(v14, *MEMORY[0x1E69711D0], &v23);
      valuePtr = _readyForInspection;
      if (!_readyForInspection)
      {
        if (!v23)
        {
          goto LABEL_36;
        }

        _readyForInspection = [(AVAssetDownloadSession *)self _primeCache];
        goto LABEL_35;
      }

      goto LABEL_44;
    }
  }

  result = 0;
  v6 = -12782;
LABEL_6:
  valuePtr = v6;
LABEL_7:
  if (v6 && !result)
  {
    URL = self->_internal->URL;
    if (URL)
    {
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:URL forKey:*MEMORY[0x1E696A998]];
    }

    else
    {
      v9 = 0;
    }

    result = AVLocalizedErrorWithUnderlyingOSStatus(v6, v9);
    v26 = result;
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
    return v26;
  }

  return result;
}

- (id)_startOnQueue
{
  v12 = 0;
  p_internal = &self->_internal;
  internal = self->_internal;
  status = internal->status;
  if (status == 2)
  {
    assetDownloader = internal->assetDownloader;
    if (assetDownloader)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v8)
      {
        v9 = v8(assetDownloader);
        if (!v9)
        {
LABEL_7:
          result = 0;
          goto LABEL_8;
        }
      }

      else
      {
        v9 = -12782;
      }

      [(AVAssetDownloadSession(AVAssetDownloadSession_Local) *)v9 _startOnQueue];
      return v13;
    }

    result = internal->playbackItem;
    if (!result)
    {
      goto LABEL_8;
    }

    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v11(FigBaseObject, *MEMORY[0x1E69728F8], *MEMORY[0x1E695E4D0]);
    }

    goto LABEL_7;
  }

  result = 0;
  if (status)
  {
    goto LABEL_9;
  }

  result = [(AVAssetDownloadSession *)self _startOnQueueFirstTime];
  v12 = result;
LABEL_8:
  (*p_internal)->status = 1;
LABEL_9:
  if ((*p_internal)->playbackItem)
  {
    [(AVAssetDownloadSession *)self ensureProgressTimerIsRunningOnQueueWithError:&v12];
    return v12;
  }

  return result;
}

- (void)_transitionToTerminalStatus:(int64_t)status error:(id)error
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  stateQueue = self->_internal->stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90__AVAssetDownloadSession_AVAssetDownloadSession_Local___transitionToTerminalStatus_error___block_invoke;
  v5[3] = &unk_1E7465698;
  v5[4] = self;
  v5[5] = error;
  v5[6] = v6;
  v5[7] = status;
  dispatch_async(stateQueue, v5);
  _Block_object_dispose(v6, 8);
}

uint64_t __90__AVAssetDownloadSession_AVAssetDownloadSession_Local___transitionToTerminalStatus_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"status"];
  result = [*(a1 + 32) willChangeValueForKey:@"error"];
  if (*(a1 + 56) >= 3)
  {
    v3 = *(*(a1 + 32) + 8);
    if (*(v3 + 48) <= 2)
    {
      v4 = *(v3 + 64);
      *(*(*(a1 + 32) + 8) + 64) = *(a1 + 40);

      v5 = *(a1 + 56);
      *(*(*(a1 + 32) + 8) + 48) = v5;
      if ((v5 - 3) <= 1)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }

    [*(a1 + 32) cancelAndReleaseProgressTimerOnQueue];
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      if ([*(*(*(a1 + 32) + 8) + 72) delegate])
      {
        v6 = *(a1 + 32);
        if (*(a1 + 40))
        {
          [v6 _sendDownloadFailureToDelegateWithError:?];
        }

        else
        {
          [v6 _sendDownloadSuccessToDelegate];
        }
      }

      else
      {
        if (*(a1 + 56) == 3)
        {
          v7 = @"AVAssetDownloadSessionDownloadSucceededNotification";
        }

        else
        {
          v7 = @"AVAssetDownloadSessionDownloadFailedNotification";
        }

        v8 = [MEMORY[0x1E696AD80] notificationWithName:v7 object:*(a1 + 32) userInfo:0];
        global_queue = dispatch_get_global_queue(21, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __90__AVAssetDownloadSession_AVAssetDownloadSession_Local___transitionToTerminalStatus_error___block_invoke_2;
        block[3] = &unk_1E7460C00;
        block[4] = v8;
        dispatch_async(global_queue, block);
      }
    }

    [*(a1 + 32) didChangeValueForKey:@"error"];
    return [*(a1 + 32) didChangeValueForKey:@"status"];
  }

  return result;
}

uint64_t __90__AVAssetDownloadSession_AVAssetDownloadSession_Local___transitionToTerminalStatus_error___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotification:v3];
}

- (id)_errorForFigNotificationPayload:(__CFDictionary *)payload key:(__CFString *)key
{
  if (!payload)
  {
    return 0;
  }

  v6 = CFGetTypeID(payload);
  if (v6 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(payload, key);
  valuePtr = 0;
  if (!Value)
  {
    return 0;
  }

  v8 = Value;
  v9 = CFGetTypeID(Value);
  if (v9 != CFNumberGetTypeID())
  {
    return 0;
  }

  CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
  return AVLocalizedErrorWithUnderlyingOSStatus(valuePtr, 0);
}

- (void)_primeCacheOnDispatchQueue
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  stateQueue = self->_internal->stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__AVAssetDownloadSession_AVAssetDownloadSession_Local___primeCacheOnDispatchQueue__block_invoke;
  v7[3] = &unk_1E7460EE0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(stateQueue, v7);
  v4 = *(v9 + 6);
  if (v4)
  {
    URL = self->_internal->URL;
    if (URL)
    {
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:URL forKey:*MEMORY[0x1E696A998]];
    }

    else
    {
      v6 = 0;
    }

    [(AVAssetDownloadSession *)self _transitionToTerminalStatus:4 error:AVLocalizedErrorWithUnderlyingOSStatus(v4, v6)];
  }

  _Block_object_dispose(&v8, 8);
}

void *__82__AVAssetDownloadSession_AVAssetDownloadSession_Local___primeCacheOnDispatchQueue__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result[1] + 48) == 1)
  {
    result = [result _primeCache];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (int)_primeCache
{
  internal = self->_internal;
  cachePrimingDownloadTokenNum = internal->cachePrimingDownloadTokenNum;
  if (cachePrimingDownloadTokenNum)
  {
    if (internal->playbackItem)
    {
      FigBaseObject = FigPlaybackItemGetFigBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v6)
      {
        LODWORD(cachePrimingDownloadTokenNum) = v6(FigBaseObject, *MEMORY[0x1E6972880], cachePrimingDownloadTokenNum);
      }

      else
      {
        LODWORD(cachePrimingDownloadTokenNum) = -12782;
      }

      self->_internal->cachePrimingDownloadTokenNum = 0;
    }

    else
    {
      LODWORD(cachePrimingDownloadTokenNum) = 0;
    }
  }

  return cachePrimingDownloadTokenNum;
}

- (int)_readyForInspection
{
  v2 = [MEMORY[0x1E696AD80] notificationWithName:@"AVAssetDownloadSessionFileSizeAvailableNotification" object:self userInfo:0];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  return 0;
}

- (id)_verifyDownloadConfigurationForAssetType
{
  cf = 0;
  CMBaseObject = FigAssetGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    v5 = -12782;
    goto LABEL_7;
  }

  v5 = v4(CMBaseObject, *MEMORY[0x1E6971180], *MEMORY[0x1E695E480], &cf);
  if (v5)
  {
LABEL_7:
    v7 = AVLocalizedErrorWithUnderlyingOSStatus(v5, 0);
    goto LABEL_8;
  }

  if (!FigCFEqual() || self->_internal->assetDownloader)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v7 = AVLocalizedError(@"AVFoundationErrorDomain", -11838, 0);
LABEL_8:
  v6 = v7;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

- (OpaqueFigAsset)_createDuplicateFigAssetFromAVAsset:(id)asset options:(id)options
{
  _figAsset = [asset _figAsset];
  v14 = 0;
  v15 = 0;
  figAssetCreationFlagsForAssetReferenceRestrictions(2);
  v7 = MEMORY[0x1E695E480];
  if (_figAsset && (CMBaseObject = FigAssetGetCMBaseObject(), (v9 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v9(CMBaseObject, *MEMORY[0x1E69711F0], *v7, &v14), v14))
  {
    v10 = [v14 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11 = v10;
  [v10 setObject:self->_internal->destinationURL forKey:{*MEMORY[0x1E6970FB0], v14}];
  v12 = [options objectForKey:@"AVAssetDownloadSessionClientBundleIdentifierKey"];
  if (v12)
  {
    [v11 setObject:v12 forKey:*MEMORY[0x1E6970F50]];
  }

  FigAssetRemoteCreateWithURL();

  return v15;
}

- (id)_errorFromAssetNotificationPayload:(id)payload
{
  v5 = [payload objectForKey:*MEMORY[0x1E6971138]];
  if (v5)
  {
    v6 = v5;
    code = [v5 code];

    return AVErrorWithNSErrorAndOSStatus(v6, code, 0);
  }

  else
  {
    v9 = *MEMORY[0x1E6971168];

    return [(AVAssetDownloadSession *)self _errorForFigNotificationPayload:payload key:v9];
  }
}

- (void)_addFigAssetListeners
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(AVAssetDownloadSession *)self _figAsset])
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVAssetDownloadSession *)self _weakReference];
    CFRetain(_weakReference);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    _figAssetNotificationNames = [(AVAssetDownloadSession *)self _figAssetNotificationNames];
    v6 = [_figAssetNotificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(_figAssetNotificationNames);
          }

          [v3 addListenerWithWeakReference:_weakReference callback:avAssetDownloadSession_figAssetNotificationCallback name:*(*(&v10 + 1) + 8 * v9++) object:-[AVAssetDownloadSession _figAsset](self flags:{"_figAsset"), 0}];
        }

        while (v7 != v9);
        v7 = [_figAssetNotificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_removeFigAssetListeners
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(AVAssetDownloadSession *)self _figAsset])
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVAssetDownloadSession *)self _weakReference];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    _figAssetNotificationNames = [(AVAssetDownloadSession *)self _figAssetNotificationNames];
    v6 = [_figAssetNotificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(_figAssetNotificationNames);
          }

          [v3 removeListenerWithWeakReference:_weakReference callback:avAssetDownloadSession_figAssetNotificationCallback name:*(*(&v10 + 1) + 8 * v9++) object:{-[AVAssetDownloadSession _figAsset](self, "_figAsset")}];
        }

        while (v7 != v9);
        v7 = [_figAssetNotificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    CFRelease(_weakReference);
  }
}

- (void)_addFigPlaybackItemListeners
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_internal->playbackItem)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVAssetDownloadSession *)self _weakReference];
    CFRetain(_weakReference);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    _figPlaybackItemNotificationNames = [(AVAssetDownloadSession *)self _figPlaybackItemNotificationNames];
    v6 = [_figPlaybackItemNotificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(_figPlaybackItemNotificationNames);
          }

          [v3 addListenerWithWeakReference:_weakReference callback:avAssetDownloadSession_figPlaybackItemNotificationCallback name:*(*(&v10 + 1) + 8 * v9++) object:self->_internal->playbackItem flags:0];
        }

        while (v7 != v9);
        v7 = [_figPlaybackItemNotificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_removeFigPlaybackItemListeners
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_internal->playbackItem)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVAssetDownloadSession *)self _weakReference];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    _figPlaybackItemNotificationNames = [(AVAssetDownloadSession *)self _figPlaybackItemNotificationNames];
    v6 = [_figPlaybackItemNotificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(_figPlaybackItemNotificationNames);
          }

          [v3 removeListenerWithWeakReference:_weakReference callback:avAssetDownloadSession_figPlaybackItemNotificationCallback name:*(*(&v10 + 1) + 8 * v9++) object:self->_internal->playbackItem];
        }

        while (v7 != v9);
        v7 = [_figPlaybackItemNotificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    CFRelease(_weakReference);
  }
}

@end