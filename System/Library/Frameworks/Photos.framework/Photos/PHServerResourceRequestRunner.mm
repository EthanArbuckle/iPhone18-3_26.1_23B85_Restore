@interface PHServerResourceRequestRunner
- (BOOL)_resourceQualifiesForCacheMetricsCollection:(id)collection isLivePhoto:(BOOL)photo;
- (BOOL)currentSystemSupportsProMotionDisplay;
- (PHServerResourceRequestRunner)initWithTaskIdentifier:(id)identifier;
- (id)_applyCorrectionsToAssetObjectIDURL:(id)l resourceIdentity:(id)identity errorCodes:(id)codes clientBundleID:(id)d library:(id)library reply:(id)reply;
- (id)_assetAndRelatedObjectsFromAssetObjectIDURL:(id)l inManagedObjectContext:(id)context error:(id *)error;
- (id)_avAssetProxyForOutOfBandHintsAboutAssetForResource:(id)resource;
- (id)_urlByAttachingOutOfBandHintsToVideoURL:(id)l assetProxy:(id)proxy signpostId:(unint64_t)id hintsBase64String:(id *)string;
- (id)applyAssetScopeCorrectionsWithRequest:(id)request errorCodes:(id)codes clientBundleID:(id)d library:(id)library reply:(id)reply;
- (id)applyResourceScopeCorrectionsWithRequest:(id)request errorCodes:(id)codes clientBundleID:(id)d library:(id)library reply:(id)reply;
- (id)chooseVideoWithRequest:(id)request library:(id)library clientBundleID:(id)d reply:(id)reply;
- (id)makeResourceAvailableWithRequest:(id)request library:(id)library clientBundleID:(id)d reply:(id)reply;
- (id)mutableStreamingHintsForAVAssetProxy:(id)proxy;
- (id)startDownloadForRequest:(id)request backingResource:(id)resource clientBundleID:(id)d shouldReturnAdjustmentInfo:(BOOL)info needsDownload:(BOOL)download shouldApplyTimeRange:(BOOL)range reply:(id)reply;
- (id)videoResourceChoiceForAsset:(id)asset context:(id)context loadingMode:(int64_t *)mode request:(id)request shouldReturnAdjustmentInfo:(BOOL *)info error:(id *)error;
- (int64_t)state;
- (void)_cancelWithReply:(id)reply;
- (void)_handleLocalAvailabilityChangeWithFileURL:(id)l transientData:(id)data isExpectingOnlyData:(BOOL)onlyData resourceCPLType:(unint64_t)type library:(id)library expectedMasterThumbnailURL:(id)rL assetObjectID:(id)d resourceObjectID:(id)self0 resourceVersion:(unsigned int)self1 resourceUTIString:(id)self2 resourceOrientation:(unsigned int)self3 error:(id)self4 reply:(id)self5;
- (void)_handleProgress:(id)progress;
- (void)_replyToVideoRequestWithURL:(id)l mediaItemMakerData:(id)data mutableInfo:(id)info internalInfo:(id)internalInfo error:(id)error pathForAdjustmentFileIfNeeded:(id)needed reply:(id)reply;
- (void)_safeReply:(id)reply;
- (void)addClientSystemInformationToMutableStreamingHints:(id)hints;
- (void)dealloc;
- (void)makeResourceUnavailableWithRequest:(id)request library:(id)library;
- (void)setState:(int64_t)state;
- (void)startWalrusTimeRangeDownloadForRequest:(id)request backingResource:(id)resource clientBundleID:(id)d shouldReturnAdjustmentInfo:(BOOL)info partialVideoURL:(id)l reply:(id)reply;
@end

@implementation PHServerResourceRequestRunner

- (id)_urlByAttachingOutOfBandHintsToVideoURL:(id)l assetProxy:(id)proxy signpostId:(unint64_t)id hintsBase64String:(id *)string
{
  lCopy = l;
  proxyCopy = proxy;
  v11 = PLImageManagerGetLog();
  v12 = v11;
  if (id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, id, "com.apple.photos.backend.chooseVideo.outOfBandHints", byte_19CB567AE, buf, 2u);
  }

  v13 = lCopy;
  v14 = v13;
  v15 = v13;
  if (v13)
  {
    v15 = v13;
    if (proxyCopy)
    {
      v16 = [objc_alloc(MEMORY[0x1E69C0718]) initWithAVAsset:proxyCopy timeZoneLookup:0];
      outOfBandHintsBase64String = [v16 outOfBandHintsBase64String];
      v18 = outOfBandHintsBase64String;
      if (string)
      {
        v19 = outOfBandHintsBase64String;
        *string = v18;
      }

      v15 = [MEMORY[0x1E69C0708] urlByAttachingOutOfBandHintsBase64String:v18 toVideoURL:v14];
    }
  }

  v20 = PLImageManagerGetLog();
  v21 = v20;
  if (id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *v23 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v21, OS_SIGNPOST_INTERVAL_END, id, "com.apple.photos.backend.chooseVideo.outOfBandHints", byte_19CB567AE, v23, 2u);
  }

  return v15;
}

- (id)_avAssetProxyForOutOfBandHintsAboutAssetForResource:(id)resource
{
  asset = [resource asset];
  if ([asset hasAdjustments])
  {
    [asset avAssetProxyForFullSizeAllowReadFromFile:1];
  }

  else
  {
    [asset avAssetProxyForOriginalAllowReadFromFile:1];
  }
  v4 = ;

  return v4;
}

- (id)mutableStreamingHintsForAVAssetProxy:(id)proxy
{
  proxyCopy = proxy;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(PHServerResourceRequestRunner *)self addClientSystemInformationToMutableStreamingHints:dictionary];
  if (proxyCopy)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C0718]) initWithAVAsset:proxyCopy timeZoneLookup:0];
    if (v6)
    {
      array = [MEMORY[0x1E695DF70] array];
      [dictionary setObject:array forKeyedSubscript:*MEMORY[0x1E69949F8]];
      if ([v6 isSpatialMedia])
      {
        v8 = [MEMORY[0x1E696AD98] numberWithInteger:*MEMORY[0x1E69949F0]];
        [array addObject:v8];
      }

      if ([v6 isHDR])
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInteger:*MEMORY[0x1E69949E8]];
        [array addObject:v9];
      }

      hevcProfileInfo = [v6 hevcProfileInfo];
      v11 = hevcProfileInfo;
      if (hevcProfileInfo)
      {
        profile = [hevcProfileInfo profile];
        [dictionary setObject:profile forKeyedSubscript:*MEMORY[0x1E6994A48]];

        tier = [v11 tier];
        [dictionary setObject:tier forKeyedSubscript:*MEMORY[0x1E6994A50]];

        level = [v11 level];
        [dictionary setObject:level forKeyedSubscript:*MEMORY[0x1E6994A18]];
      }

      cameraMake = [v6 cameraMake];

      if (cameraMake)
      {
        cameraMake2 = [v6 cameraMake];
        [dictionary setObject:cameraMake2 forKeyedSubscript:*MEMORY[0x1E6994A20]];
      }

      cameraModel = [v6 cameraModel];

      if (cameraModel)
      {
        cameraModel2 = [v6 cameraModel];
        [dictionary setObject:cameraModel2 forKeyedSubscript:*MEMORY[0x1E6994A28]];
      }
    }

    apacAudioTrackChannelCount = [v6 apacAudioTrackChannelCount];

    if (apacAudioTrackChannelCount)
    {
      apacAudioTrackChannelCount2 = [v6 apacAudioTrackChannelCount];
      [dictionary setObject:apacAudioTrackChannelCount2 forKeyedSubscript:*MEMORY[0x1E69949C8]];
    }

    apacAudioTrackHoaChannelCount = [v6 apacAudioTrackHoaChannelCount];

    if (apacAudioTrackHoaChannelCount)
    {
      apacAudioTrackHoaChannelCount2 = [v6 apacAudioTrackHoaChannelCount];
      [dictionary setObject:apacAudioTrackHoaChannelCount2 forKeyedSubscript:*MEMORY[0x1E69949D8]];

      apacAudioTrackBedChannelCount = [v6 apacAudioTrackBedChannelCount];
      [dictionary setObject:apacAudioTrackBedChannelCount forKeyedSubscript:*MEMORY[0x1E69949C0]];
    }

    apacAudioTrackCodecProfileLevelDescription = [v6 apacAudioTrackCodecProfileLevelDescription];

    if (apacAudioTrackCodecProfileLevelDescription)
    {
      apacAudioTrackCodecProfileLevelDescription2 = [v6 apacAudioTrackCodecProfileLevelDescription];
      [dictionary setObject:apacAudioTrackCodecProfileLevelDescription2 forKeyedSubscript:*MEMORY[0x1E69949D0]];
    }

    if (v6)
    {
      [v6 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v26 = CMTimeCopyAsDictionary(&time, 0);
    [dictionary setObject:v26 forKeyedSubscript:*MEMORY[0x1E6994A10]];

    nominalFrameRate = [v6 nominalFrameRate];
    [dictionary setObject:nominalFrameRate forKeyedSubscript:*MEMORY[0x1E6994A30]];

    v28 = MEMORY[0x1E696AD98];
    [v6 orientedPixelSize];
    v29 = [v28 numberWithDouble:?];
    [dictionary setObject:v29 forKeyedSubscript:*MEMORY[0x1E6994A40]];

    v30 = MEMORY[0x1E696AD98];
    [v6 orientedPixelSize];
    v32 = [v30 numberWithDouble:v31];
    [dictionary setObject:v32 forKeyedSubscript:*MEMORY[0x1E6994A38]];

    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v6, "firstVideoTrackCodec")}];
    [dictionary setObject:v33 forKeyedSubscript:*MEMORY[0x1E6994A08]];
  }

  return dictionary;
}

- (void)startWalrusTimeRangeDownloadForRequest:(id)request backingResource:(id)resource clientBundleID:(id)d shouldReturnAdjustmentInfo:(BOOL)info partialVideoURL:(id)l reply:(id)reply
{
  infoCopy = info;
  requestCopy = request;
  resourceCopy = resource;
  dCopy = d;
  lCopy = l;
  replyCopy = reply;
  v16 = PLImageManagerGetLog();
  v17 = os_signpost_id_make_with_pointer(v16, requestCopy);

  v18 = PLImageManagerGetLog();
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "com.apple.photos.backend.chooseVideo.adpVideoTimeRangeDownload", byte_19CB567AE, buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __152__PHServerResourceRequestRunner_startWalrusTimeRangeDownloadForRequest_backingResource_clientBundleID_shouldReturnAdjustmentInfo_partialVideoURL_reply___block_invoke;
  aBlock[3] = &unk_1E75A4E70;
  v64 = replyCopy;
  v65 = v17;
  v45 = replyCopy;
  v39 = _Block_copy(aBlock);
  asset = [resourceCopy asset];
  uuid = [asset uuid];
  v44 = asset;
  photoLibrary = [asset photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];
  uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];
  identifier = [uniformTypeIdentifier identifier];

  if (infoCopy)
  {
    asset2 = [resourceCopy asset];
    pathForAdjustmentFile = [asset2 pathForAdjustmentFile];
  }

  else
  {
    pathForAdjustmentFile = 0;
  }

  v47 = requestCopy;
  behaviorSpec = [requestCopy behaviorSpec];
  v41 = [(PHServerResourceRequestRunner *)self _avAssetProxyForOutOfBandHintsAboutAssetForResource:resourceCopy];
  v40 = [(PHServerResourceRequestRunner *)self mutableStreamingHintsForAVAssetProxy:?];
  [v40 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6994A00]];
  v27 = PLImageManagerGetLog();
  v28 = v27;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v17, "com.apple.photos.backend.chooseVideo.adpVideoTimeRangeDownload.streamingUrl", byte_19CB567AE, buf, 2u);
  }

  dataStore = [resourceCopy dataStore];
  streamingVideoIntent = [behaviorSpec streamingVideoIntent];
  if (behaviorSpec)
  {
    [behaviorSpec timeRange];
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
    *buf = 0u;
  }

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __152__PHServerResourceRequestRunner_startWalrusTimeRangeDownloadForRequest_backingResource_clientBundleID_shouldReturnAdjustmentInfo_partialVideoURL_reply___block_invoke_153;
  v50[3] = &unk_1E75A4F38;
  v59 = v17;
  v57 = pathForAdjustmentFile;
  v58 = v39;
  v50[4] = self;
  v51 = lCopy;
  v52 = behaviorSpec;
  v53 = uuid;
  v54 = identifier;
  v55 = photoLibrary;
  v56 = resourceCopy;
  v37 = pathForAdjustmentFile;
  v30 = resourceCopy;
  v35 = photoLibrary;
  v31 = identifier;
  v32 = uuid;
  v33 = behaviorSpec;
  v49 = lCopy;
  v34 = v39;
  [dataStore requestStreamingURLForResource:v30 asset:v44 intent:streamingVideoIntent timeRange:buf streamingHints:v40 inContext:managedObjectContext clientBundleID:dCopy completion:v50];
}

void __152__PHServerResourceRequestRunner_startWalrusTimeRangeDownloadForRequest_backingResource_clientBundleID_shouldReturnAdjustmentInfo_partialVideoURL_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = PLImageManagerGetLog();
  v18 = v17;
  v19 = *(a1 + 40);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v18, OS_SIGNPOST_INTERVAL_END, v19, "com.apple.photos.backend.chooseVideo.adpVideoTimeRangeDownload", byte_19CB567AE, v20, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __152__PHServerResourceRequestRunner_startWalrusTimeRangeDownloadForRequest_backingResource_clientBundleID_shouldReturnAdjustmentInfo_partialVideoURL_reply___block_invoke_153(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = PLImageManagerGetLog();
  v13 = v12;
  v14 = *(a1 + 104);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v13, OS_SIGNPOST_INTERVAL_END, v14, "com.apple.photos.backend.chooseVideo.adpVideoTimeRangeDownload.streamingUrl", byte_19CB567AE, buf, 2u);
  }

  if (v9)
  {
    v15 = [*(a1 + 40) URLByDeletingLastPathComponent];
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v55 = 0;
    v17 = [v16 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v55];
    v18 = v55;

    if ((v17 & 1) == 0)
    {
      v29 = PLImageManagerGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = *(*(a1 + 32) + 48);
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v30;
        WORD6(buf[0]) = 2112;
        *(buf + 14) = v18;
        _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_ERROR, "[RM]: %{public}@ ADP time range video export failed, unable to create parent directories: %@", buf, 0x16u);
      }

      [*(a1 + 32) _replyToVideoRequestWithURL:0 mediaItemMakerData:0 mutableInfo:0 internalInfo:0 error:v18 pathForAdjustmentFileIfNeeded:0 reply:*(a1 + 96)];
      goto LABEL_22;
    }

    v46 = v10;
    v19 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = *(a1 + 40);
    v54 = v18;
    v21 = [v19 removeItemAtURL:v20 error:&v54];
    v22 = v54;

    if (v21)
    {
      v23 = PLImageManagerGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 40);
        v25 = *(*(a1 + 32) + 48);
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v25;
        WORD6(buf[0]) = 2112;
        *(buf + 14) = v24;
        v26 = "[RM]: %{public}@ ADP time range video export output URL already existed, file was removed before new export: %@";
        v27 = v23;
        v28 = OS_LOG_TYPE_DEFAULT;
LABEL_16:
        _os_log_impl(&dword_19C86F000, v27, v28, v26, buf, 0x16u);
      }
    }

    else
    {
      if (PLIsErrorFileNotFound())
      {
LABEL_18:
        v32 = *(a1 + 48);
        v45 = v15;
        if (v32)
        {
          [v32 timeRange];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v33 = *(a1 + 56);
        v34 = *(a1 + 40);
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __152__PHServerResourceRequestRunner_startWalrusTimeRangeDownloadForRequest_backingResource_clientBundleID_shouldReturnAdjustmentInfo_partialVideoURL_reply___block_invoke_156;
        v47[3] = &unk_1E75A4F10;
        v35 = *(a1 + 104);
        v44 = *(a1 + 32);
        v52 = *(a1 + 96);
        v36 = *(a1 + 40);
        v37 = *(a1 + 64);
        v38 = *(a1 + 72);
        *&v39 = v37;
        *(&v39 + 1) = v38;
        *&v40 = v44;
        *(&v40 + 1) = v36;
        v48 = v40;
        v49 = v39;
        v41 = *(a1 + 80);
        v42 = *(a1 + 104);
        v50 = v41;
        v53 = v42;
        v51 = *(a1 + 88);
        v43 = v33;
        v10 = v46;
        [PHImageManager exportVideoFileForTimeRange:buf fromVideoMediaItemMakerData:v9 forAssetUuid:v43 toOutputFileURL:v34 fingerPrint:v46 signpostId:v35 options:0 completion:v47];

        v18 = v22;
        v15 = v45;
LABEL_22:

        goto LABEL_23;
      }

      v23 = PLImageManagerGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v31 = *(*(a1 + 32) + 48);
        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v31;
        WORD6(buf[0]) = 2112;
        *(buf + 14) = v22;
        v26 = "[RM]: %{public}@ Unexpected error while cleaning up existing ADP time range video export output: %@";
        v27 = v23;
        v28 = OS_LOG_TYPE_ERROR;
        goto LABEL_16;
      }
    }

    goto LABEL_18;
  }

  [*(a1 + 32) _replyToVideoRequestWithURL:0 mediaItemMakerData:0 mutableInfo:0 internalInfo:0 error:v11 pathForAdjustmentFileIfNeeded:0 reply:*(a1 + 96)];
LABEL_23:
}

void __152__PHServerResourceRequestRunner_startWalrusTimeRangeDownloadForRequest_backingResource_clientBundleID_shouldReturnAdjustmentInfo_partialVideoURL_reply___block_invoke_156(uint64_t a1, char a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [MEMORY[0x1E69BE2D8] markPurgeableForFileAtURL:*(a1 + 40) withUrgency:0 outInode:0];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = PLImageManagerGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v10 = *(*(a1 + 32) + 48);
      *buf = 138543618;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_INFO, "[RM]: %{public}@ ADP time range video download complete with url: %@", buf, 0x16u);
    }

    [v7 setObject:*(a1 + 48) forKeyedSubscript:@"PHImageFileUTIKey"];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v24 = __Block_byref_object_copy__10411;
    v25 = __Block_byref_object_dispose__10412;
    v26 = 0;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __152__PHServerResourceRequestRunner_startWalrusTimeRangeDownloadForRequest_backingResource_clientBundleID_shouldReturnAdjustmentInfo_partialVideoURL_reply___block_invoke_157;
    v19 = &unk_1E75AA3F8;
    v11 = *(a1 + 32);
    v22 = buf;
    v20 = v11;
    v12 = *(a1 + 56);
    v21 = *(a1 + 64);
    [v12 performBlockAndWait:&v16];
    v13 = [*(a1 + 32) _urlByAttachingOutOfBandHintsToVideoURL:*(a1 + 40) assetProxy:*(*&buf[8] + 40) signpostId:*(a1 + 88) hintsBase64String:0];
    [*(a1 + 32) _replyToVideoRequestWithURL:v13 mediaItemMakerData:0 mutableInfo:v6 internalInfo:v7 error:v5 pathForAdjustmentFileIfNeeded:*(a1 + 72) reply:{*(a1 + 80), v16, v17, v18, v19, v20}];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = PLImageManagerGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*(a1 + 32) + 48);
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "[RM]: %{public}@ ADP time range video export failed: %@", buf, 0x16u);
    }

    [*(a1 + 32) _replyToVideoRequestWithURL:0 mediaItemMakerData:0 mutableInfo:0 internalInfo:0 error:v5 pathForAdjustmentFileIfNeeded:0 reply:*(a1 + 80)];
  }
}

uint64_t __152__PHServerResourceRequestRunner_startWalrusTimeRangeDownloadForRequest_backingResource_clientBundleID_shouldReturnAdjustmentInfo_partialVideoURL_reply___block_invoke_157(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _avAssetProxyForOutOfBandHintsAboutAssetForResource:*(a1 + 40)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)startDownloadForRequest:(id)request backingResource:(id)resource clientBundleID:(id)d shouldReturnAdjustmentInfo:(BOOL)info needsDownload:(BOOL)download shouldApplyTimeRange:(BOOL)range reply:(id)reply
{
  downloadCopy = download;
  infoCopy = info;
  requestCopy = request;
  resourceCopy = resource;
  replyCopy = reply;
  dCopy = d;
  asset = [resourceCopy asset];
  photoLibrary = [asset photoLibrary];
  uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];
  identifier = [uniformTypeIdentifier identifier];

  v18 = @"generation";
  if (downloadCopy)
  {
    v18 = @"download";
  }

  v43 = v18;
  behaviorSpec = [requestCopy behaviorSpec];
  isNetworkAccessAllowed = [behaviorSpec isNetworkAccessAllowed];
  if (infoCopy)
  {
    asset2 = [resourceCopy asset];
    pathForAdjustmentFile = [asset2 pathForAdjustmentFile];
  }

  else
  {
    pathForAdjustmentFile = 0;
  }

  dataStore = [resourceCopy dataStore];
  v23 = [dataStore supportsTimeRange] & !infoCopy;

  v24 = PLImageManagerGetLog();
  v41 = os_signpost_id_make_with_pointer(v24, requestCopy);

  v25 = objc_alloc_init(MEMORY[0x1E69BE748]);
  [v25 setTaskIdentifier:self->_taskIdentifier];
  [v25 setNetworkAccessAllowed:{objc_msgSend(behaviorSpec, "isNetworkAccessAllowed")}];
  [v25 setWantsProgress:{objc_msgSend(requestCopy, "wantsProgress")}];
  [v25 setClientBundleID:dCopy];

  downloadIntent = [behaviorSpec downloadIntent];
  downloadPriority = [behaviorSpec downloadPriority];
  if ((downloadIntent - 1) > 0xC)
  {
    v28 = 0;
  }

  else
  {
    v28 = qword_19CB296D8[downloadIntent - 1];
  }

  v48 = requestCopy;
  v29 = [objc_alloc(MEMORY[0x1E6994BA8]) initWithIntent:v28 priority:downloadPriority == 1];
  [v25 setDownloadOptions:v29];

  if (v23)
  {
    if (behaviorSpec)
    {
      [behaviorSpec timeRange];
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
    }

    downloadOptions = [v25 downloadOptions];
    v62[0] = v63;
    v62[1] = v64;
    v62[2] = v65;
    [downloadOptions setTimeRange:v62];
  }

  v31 = -[PHServerResourceRequestRunner _resourceQualifiesForCacheMetricsCollection:isLivePhoto:](self, "_resourceQualifiesForCacheMetricsCollection:isLivePhoto:", resourceCopy, [asset isPhotoIris]);
  dataStore2 = [resourceCopy dataStore];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __156__PHServerResourceRequestRunner_startDownloadForRequest_backingResource_clientBundleID_shouldReturnAdjustmentInfo_needsDownload_shouldApplyTimeRange_reply___block_invoke;
  v50[3] = &unk_1E75A4EE8;
  v50[4] = self;
  v51 = v43;
  v58 = v31;
  rangeCopy = range;
  v60 = v23;
  v52 = identifier;
  v53 = photoLibrary;
  v54 = resourceCopy;
  v55 = pathForAdjustmentFile;
  v56 = replyCopy;
  v57 = v41;
  v61 = isNetworkAccessAllowed;
  v33 = replyCopy;
  v34 = pathForAdjustmentFile;
  v35 = resourceCopy;
  v36 = photoLibrary;
  v37 = identifier;
  v38 = v43;
  v39 = [dataStore2 requestLocalAvailabilityChange:1 forResource:v35 options:v25 completion:v50];

  return v39;
}

void __156__PHServerResourceRequestRunner_startDownloadForRequest_backingResource_clientBundleID_shouldReturnAdjustmentInfo_needsDownload_shouldApplyTimeRange_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = PLImageManagerGetLog();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      v13 = *(*(a1 + 32) + 48);
      *buf = 138543874;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      *&buf[22] = 2112;
      v33 = v7;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_INFO, "[RM]: %{public}@ video %{public}@ complete with url: %@", buf, 0x20u);
    }

    [v9 setObject:*(a1 + 48) forKeyedSubscript:@"PHImageFileUTIKey"];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 96)];
    [v9 setObject:v14 forKeyedSubscript:@"PHImageRequestResultEligibleForCacheMetricsLogging"];

    if (*(a1 + 96) == 1)
    {
      [v9 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"PHImageRequestResultIsLocallyAvailableForCacheMetricsLogging"];
    }

    if (*(a1 + 97) == 1)
    {
      if (*(a1 + 98))
      {
        [MEMORY[0x1E69BE2D8] markPurgeableForFileAtURL:v7 withUrgency:0 outInode:0];
      }

      else
      {
        [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PHApplyTimeRangeKey"];
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = __Block_byref_object_copy__10411;
    v34 = __Block_byref_object_dispose__10412;
    v35 = 0;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __156__PHServerResourceRequestRunner_startDownloadForRequest_backingResource_clientBundleID_shouldReturnAdjustmentInfo_needsDownload_shouldApplyTimeRange_reply___block_invoke_152;
    v28 = &unk_1E75AA3F8;
    v22 = *(a1 + 32);
    v31 = buf;
    v29 = v22;
    v23 = *(a1 + 56);
    v30 = *(a1 + 64);
    [v23 performBlockAndWait:&v25];
    v24 = [*(a1 + 32) _urlByAttachingOutOfBandHintsToVideoURL:v7 assetProxy:*(*&buf[8] + 40) signpostId:*(a1 + 88) hintsBase64String:0];

    [*(a1 + 32) _replyToVideoRequestWithURL:v24 mediaItemMakerData:0 mutableInfo:v8 internalInfo:v9 error:v6 pathForAdjustmentFileIfNeeded:*(a1 + 72) reply:{*(a1 + 80), v25, v26, v27, v28, v29}];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 40);
      v16 = *(*(a1 + 32) + 48);
      *buf = 138543874;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      v33 = v6;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "[RM]: %{public}@ video %{public}@ failed with error: %@", buf, 0x20u);
    }

    v17 = [v6 domain];
    if ([v17 isEqualToString:*MEMORY[0x1E6994990]])
    {
      v18 = [v6 code] == 80 || objc_msgSend(v6, "code") == 81 || objc_msgSend(v6, "code") == 82;
    }

    else
    {
      v18 = 0;
    }

    v19 = [v6 domain];
    if ([v19 isEqualToString:*MEMORY[0x1E69BFF70]])
    {
      v20 = [v6 code] == 6;
    }

    else
    {
      v20 = 0;
    }

    if ((v18 || v20) && ([v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PHImageResultIsInCloudKey"], v20))
    {
      if (*(a1 + 99))
      {
        PHStreamingDeniedError();
      }

      else
      {
        PHNetworkAccessAllowedRequiredError();
      }
      v21 = ;
    }

    else
    {
      v21 = v6;
    }

    [*(a1 + 32) _replyToVideoRequestWithURL:0 mediaItemMakerData:0 mutableInfo:v8 internalInfo:v9 error:v21 pathForAdjustmentFileIfNeeded:*(a1 + 72) reply:*(a1 + 80)];
    v6 = v21;
  }
}

uint64_t __156__PHServerResourceRequestRunner_startDownloadForRequest_backingResource_clientBundleID_shouldReturnAdjustmentInfo_needsDownload_shouldApplyTimeRange_reply___block_invoke_152(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _avAssetProxyForOutOfBandHintsAboutAssetForResource:*(a1 + 40)];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)currentSystemSupportsProMotionDisplay
{
  if (currentSystemSupportsProMotionDisplay_onceToken != -1)
  {
    dispatch_once(&currentSystemSupportsProMotionDisplay_onceToken, &__block_literal_global_147_10426);
  }

  return currentSystemSupportsProMotionDisplay_currentSystemSupportsProMotionDisplay;
}

void __70__PHServerResourceRequestRunner_currentSystemSupportsProMotionDisplay__block_invoke()
{
  v0 = MGCopyAnswer();
  currentSystemSupportsProMotionDisplay_currentSystemSupportsProMotionDisplay = [v0 BOOLValue];
}

- (void)addClientSystemInformationToMutableStreamingHints:(id)hints
{
  hintsCopy = hints;
  if (!hintsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHServerResourceRequestRunner.m" lineNumber:1003 description:{@"Invalid parameter not satisfying: %@", @"mutableStreamingHints"}];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHServerResourceRequestRunner currentSystemSupportsProMotionDisplay](self, "currentSystemSupportsProMotionDisplay")}];
  [hintsCopy setObject:v5 forKeyedSubscript:*MEMORY[0x1E69949E0]];
}

- (id)chooseVideoWithRequest:(id)request library:(id)library clientBundleID:(id)d reply:(id)reply
{
  v85 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  libraryCopy = library;
  dCopy = d;
  replyCopy = reply;
  if ([(PHServerResourceRequestRunner *)self state])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHServerResourceRequestRunner.m" lineNumber:742 description:@"Cannot run a video request twice"];
  }

  v13 = PLImageManagerGetLog();
  spid = os_signpost_id_make_with_pointer(v13, requestCopy);

  v14 = PLImageManagerGetLog();
  v15 = v14;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 138543618;
    v68 = requestCopy;
    v69 = 2114;
    v70 = dCopy;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "com.apple.photos.backend.chooseVideo", "Request %{public}@ for client %{public}@", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PHServerResourceRequestRunner_chooseVideoWithRequest_library_clientBundleID_reply___block_invoke;
  aBlock[3] = &unk_1E75A4E70;
  v66 = spid;
  v42 = replyCopy;
  v65 = v42;
  v43 = _Block_copy(aBlock);
  behaviorSpec = [requestCopy behaviorSpec];
  isNetworkAccessAllowed = [behaviorSpec isNetworkAccessAllowed];
  isStreamingAllowed = [behaviorSpec isStreamingAllowed];
  if ([libraryCopy isWalrusEnabled])
  {
    restrictToEncryptedStream = 1;
  }

  else
  {
    restrictToEncryptedStream = [behaviorSpec restrictToEncryptedStream];
  }

  v17 = PLImageManagerGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    taskIdentifier = self->_taskIdentifier;
    if ([requestCopy wantsProgress])
    {
      v18 = @"Y";
    }

    else
    {
      v18 = @"N";
    }

    assetObjectIDURL = [requestCopy assetObjectIDURL];
    v20 = PLShortObjectIDFromURL();
    [requestCopy size];
    v22 = v21;
    [requestCopy size];
    v24 = v23;
    shortDescription = [behaviorSpec shortDescription];
    v26 = shortDescription;
    if (isNetworkAccessAllowed)
    {
      v27 = @"Y";
    }

    else
    {
      v27 = @"N";
    }

    *buf = 138545410;
    if (isStreamingAllowed)
    {
      v28 = @"Y";
    }

    else
    {
      v28 = @"N";
    }

    v68 = taskIdentifier;
    v69 = 2114;
    if (restrictToEncryptedStream)
    {
      v29 = @"Y";
    }

    else
    {
      v29 = @"N";
    }

    v70 = v18;
    v71 = 2114;
    v72 = v20;
    v73 = 2048;
    v74 = v22;
    v75 = 2048;
    v76 = v24;
    v77 = 2114;
    v78 = shortDescription;
    v79 = 2114;
    v80 = v27;
    v81 = 2114;
    v82 = v28;
    v83 = 2114;
    v84 = v29;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ Starting request for video with progress: %{public}@, asset: %{public}@, size (%f, %f), behavior: %{public}@, net-initial: %{public}@, stream-initial: %{public}@, ADP: %{public}@", buf, 0x5Cu);
  }

  [(PHServerResourceRequestRunner *)self setState:1];
  v30 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
  progress = self->_progress;
  self->_progress = v30;

  objc_initWeak(buf, self);
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __85__PHServerResourceRequestRunner_chooseVideoWithRequest_library_clientBundleID_reply___block_invoke_124;
  v61[3] = &unk_1E75A4D08;
  objc_copyWeak(&v63, buf);
  v32 = v43;
  v62 = v32;
  [(NSProgress *)self->_progress setCancellationHandler:v61];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __85__PHServerResourceRequestRunner_chooseVideoWithRequest_library_clientBundleID_reply___block_invoke_3;
  v50[3] = &unk_1E75A4EC0;
  v33 = libraryCopy;
  v51 = v33;
  selfCopy = self;
  v34 = requestCopy;
  v53 = v34;
  v58 = isStreamingAllowed;
  v59 = restrictToEncryptedStream;
  v35 = behaviorSpec;
  v54 = v35;
  v60 = isNetworkAccessAllowed;
  v36 = dCopy;
  v55 = v36;
  v57 = spid;
  v37 = v32;
  v56 = v37;
  [v33 performBlock:v50];
  v38 = self->_progress;

  objc_destroyWeak(&v63);
  objc_destroyWeak(buf);

  return v38;
}

void __85__PHServerResourceRequestRunner_chooseVideoWithRequest_library_clientBundleID_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = PLImageManagerGetLog();
  v18 = v17;
  v19 = *(a1 + 40);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v18, OS_SIGNPOST_INTERVAL_END, v19, "com.apple.photos.backend.chooseVideo", byte_19CB567AE, v20, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __85__PHServerResourceRequestRunner_chooseVideoWithRequest_library_clientBundleID_reply___block_invoke_124(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__PHServerResourceRequestRunner_chooseVideoWithRequest_library_clientBundleID_reply___block_invoke_2;
  v3[3] = &unk_1E75AADE8;
  v4 = *(a1 + 32);
  [WeakRetained _cancelWithReply:v3];
}

void __85__PHServerResourceRequestRunner_chooseVideoWithRequest_library_clientBundleID_reply___block_invoke_3(uint64_t a1)
{
  v142 = *MEMORY[0x1E69E9840];
  v123 = [*(a1 + 32) managedObjectContext];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) assetObjectIDURL];
  v138 = 0;
  v4 = [v2 _assetAndRelatedObjectsFromAssetObjectIDURL:v3 inManagedObjectContext:v123 error:&v138];
  v5 = v138;

  v6 = PLImageManagerGetLog();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(*(a1 + 40) + 48);
      v9 = [v4 uuid];
      if ([v4 hasAdjustments])
      {
        v10 = @"Y";
      }

      else
      {
        v10 = @"N";
      }

      [v4 deferredProcessingNeeded];
      v11 = PLManagedAssetDeferredProcessingNeededDescription();
      *buf = 138544130;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2114;
      *&buf[24] = v10;
      *&buf[32] = 2114;
      *&buf[34] = v11;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ video request found asset: %{public}@, hasAdjustments: %{public}@, deferredProcessingNeeded: %{public}@", buf, 0x2Au);
    }

    v121 = [objc_alloc(MEMORY[0x1E69BE888]) initWithManagedObjectContext:v123 asset:v4];
    if ([v4 videoDeferredProcessingNeeded])
    {
      v12 = *(*(a1 + 40) + 48);
      v137 = 0;
      v13 = [MEMORY[0x1E69BE6D0] bailOutOfVideoFinalizationIfNeededForAsset:v4 taskIdentifier:v12 error:&v137];
      v14 = v137;
      if ((v13 & 1) == 0)
      {
        v15 = PLImageManagerGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = *(*(a1 + 40) + 48);
          v17 = [v4 uuid];
          *buf = 138543874;
          *&buf[4] = v16;
          *&buf[12] = 2114;
          *&buf[14] = v17;
          *&buf[22] = 2112;
          *&buf[24] = v14;
          _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "[RM] %{public}@ Failed to bail out of video finalization for asset with UUID: %{public}@ and error: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v21 = PLImageManagerGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(*(a1 + 40) + 48);
      if ([*(a1 + 48) wantsProgress])
      {
        v23 = @"Y";
      }

      else
      {
        v23 = @"N";
      }

      v24 = [*(a1 + 48) assetObjectIDURL];
      v25 = PLShortObjectIDFromURL();
      v26 = [v4 uuid];
      *buf = 138544130;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v23;
      *&buf[22] = 2114;
      *&buf[24] = v25;
      *&buf[32] = 2114;
      *&buf[34] = v26;
      _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ In library perform for video with progress: %{public}@, asset: %{public}@ %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v18 = *(*(a1 + 40) + 48);
      v19 = [*(a1 + 48) assetObjectIDURL];
      v20 = PLShortObjectIDFromURL();
      *buf = 138543874;
      *&buf[4] = v18;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      *&buf[22] = 2112;
      *&buf[24] = v5;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "[RM] %{public}@ could not load asset: %{public}@ for video request with error: %@", buf, 0x20u);
    }

    [*(a1 + 40) setState:3];
    v121 = 0;
  }

  v136 = 0;
  v135 = 0;
  [MEMORY[0x1E69BF328] maskForAssetsEligibleForCloudKitTransport];
  [v4 savedAssetType];
  v27 = PLValidatedSavedAssetTypeApplies();
  if ([*(a1 + 40) state] != 3 && (*(a1 + 88) & v27 & 1) != 0 && *(a1 + 89) == 1)
  {
    v28 = *(a1 + 40);
    v29 = *(a1 + 48);
    v134 = v5;
    v126 = [v28 videoResourceChoiceForAsset:v4 context:v121 loadingMode:&v136 request:v29 shouldReturnAdjustmentInfo:&v135 error:&v134];
    v30 = v134;

    if (!v126)
    {
      v31 = 0;
      v126 = 0;
LABEL_102:
      v5 = v30;
      goto LABEL_33;
    }

    v31 = [v121 backingResourceForVideoResource:?];
    v32 = [v31 fingerprint];
    if (v32)
    {
      v33 = [*(a1 + 32) fingerprintContext];
      v34 = [v33 fingerprintSchemeForFingerprint:v32];

      if (v34 && ([v34 allowsStreaming] & 1) == 0)
      {
        [*(a1 + 56) setStreamingAllowed:0];
        v35 = *(a1 + 56);
        v36 = *(MEMORY[0x1E6960C98] + 16);
        *buf = *MEMORY[0x1E6960C98];
        *&buf[16] = v36;
        *&buf[32] = *(MEMORY[0x1E6960C98] + 32);
        [v35 setTimeRange:buf];
        if (*(a1 + 90) == 1 && ([*(a1 + 56) streamingIntentAllowsFallbackToDownload] & 1) == 0)
        {
          [*(a1 + 56) setNetworkAccessAllowed:0];
          v37 = 1;
        }

        else
        {
          v37 = 0;
        }

        v115 = PLImageManagerGetLog();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
        {
          v116 = *(*(a1 + 40) + 48);
          v125 = [v4 uuid];
          v117 = [v34 fingerprintSchemeDescription];
          *buf = 138544386;
          *&buf[4] = v116;
          *&buf[12] = 1024;
          *&buf[14] = v37;
          *&buf[18] = 2114;
          *&buf[20] = v125;
          *&buf[28] = 2114;
          *&buf[30] = v31;
          *&buf[38] = 2112;
          *&buf[40] = v117;
          _os_log_impl(&dword_19C86F000, v115, OS_LOG_TYPE_INFO, "[RM]: %{public}@ video chooser overriding streaming with download (didDisableNetworkAccess=%d) for asset %{public}@ / resource %{public}@ because ADP is enabled and fingerprint scheme %@ does not allow streaming", buf, 0x30u);
        }

        v31 = 0;
        v126 = 0;
        v136 = 0;
        v135 = 0;
LABEL_101:

        goto LABEL_102;
      }
    }

    else
    {
      v34 = 0;
    }

    v90 = PLImageManagerGetLog();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      v91 = *(*(a1 + 40) + 48);
      v92 = PLVideoResourceDescription();
      *buf = 138543618;
      *&buf[4] = v91;
      *&buf[12] = 2114;
      *&buf[14] = v92;
      _os_log_impl(&dword_19C86F000, v90, OS_LOG_TYPE_INFO, "[RM]: %{public}@ video chooser selected result: %{public}@", buf, 0x16u);
    }

    goto LABEL_101;
  }

  v31 = 0;
  v126 = 0;
LABEL_33:
  if ([*(a1 + 40) state] != 1 || v126)
  {
    v124 = v5;
  }

  else
  {
    v38 = *(a1 + 40);
    v39 = *(a1 + 48);
    v133 = v5;
    v126 = [v38 videoResourceChoiceForAsset:v4 context:v121 loadingMode:&v136 request:v39 shouldReturnAdjustmentInfo:&v135 error:&v133];
    v124 = v133;

    if (v126)
    {
      v40 = [v121 backingResourceForVideoResource:?];

      v41 = PLImageManagerGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = *(*(a1 + 40) + 48);
        v43 = PLVideoResourceDescription();
        *buf = 138543618;
        *&buf[4] = v42;
        *&buf[12] = 2114;
        *&buf[14] = v43;
        _os_log_impl(&dword_19C86F000, v41, OS_LOG_TYPE_INFO, "[RM]: %{public}@ video chooser selected result: %{public}@", buf, 0x16u);
      }

      v31 = v40;
    }

    else
    {
      v126 = 0;
    }
  }

  v118 = [v4 uuid];
  if ([*(a1 + 56) hasValidTimeRange])
  {
    v119 = *(a1 + 88) ^ 1;
  }

  else
  {
    v119 = 0;
  }

  v44 = [v31 dataStore];
  v45 = [v44 supportsTimeRange];
  v46 = v135;

  if (([*(a1 + 40) state] != 1 || (v119 & 1) == 0 || (v45 & 1) == 0) | v46 & 1 || (objc_msgSend(v31, "fingerprint"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v47 == 0, v47, v48))
  {
    v120 = 0;
    v52 = 0;
    v122 = 0;
    v53 = 0;
  }

  else
  {
    v49 = [*(a1 + 32) pathManager];
    v50 = [v31 fingerprint];
    v51 = *(a1 + 56);
    if (v51)
    {
      [v51 timeRange];
    }

    else
    {
      memset(buf, 0, 48);
    }

    v120 = [v49 URLForPartialVideoWithResourceFingerprint:v50 assetUUID:v118 timeRange:buf];

    if ([v120 checkResourceIsReachableAndReturnError:0])
    {
      [*(a1 + 40) setState:4];
      v120 = v120;
      v122 = [*MEMORY[0x1E6982EC8] identifier];

      v52 = 0;
      v119 = 0;
      v124 = 0;
      v53 = v120;
    }

    else
    {
      v122 = 0;
      v53 = 0;
      if (v136 == 2)
      {
        v52 = *(a1 + 89);
      }

      else
      {
        v52 = 0;
      }
    }
  }

  if ([*(a1 + 40) state] != 1)
  {
    v54 = 0;
    goto LABEL_109;
  }

  v54 = 0;
  v55 = v136;
  if (v136 > 2)
  {
    if (v136 == 3)
    {
      v71 = PLImageManagerGetLog();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = *(*(a1 + 40) + 48);
        v73 = [*(a1 + 56) streamingVideoIntent];
        *buf = 138543618;
        *&buf[4] = v72;
        *&buf[12] = 2048;
        *&buf[14] = v73;
        _os_log_impl(&dword_19C86F000, v71, OS_LOG_TYPE_INFO, "[RM]: %{public}@ requesting video streaming url with intent %ld", buf, 0x16u);
      }

      v74 = [*(a1 + 40) _avAssetProxyForOutOfBandHintsAboutAssetForResource:v31];
      v75 = [*(a1 + 40) mutableStreamingHintsForAVAssetProxy:v74];
      v76 = v75;
      if (*(a1 + 89) == 1)
      {
        [v75 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6994A00]];
      }

      v77 = [v31 dataStore];
      v78 = [*(a1 + 56) streamingVideoIntent];
      v79 = *(a1 + 56);
      if (v79)
      {
        [v79 timeRange];
      }

      else
      {
        memset(buf, 0, 48);
      }

      v93 = *(a1 + 40);
      v94 = *(a1 + 64);
      v129[0] = MEMORY[0x1E69E9820];
      v129[1] = 3221225472;
      v129[2] = __85__PHServerResourceRequestRunner_chooseVideoWithRequest_library_clientBundleID_reply___block_invoke_128;
      v129[3] = &unk_1E75A4E98;
      v129[4] = v93;
      v58 = v74;
      v96 = *(a1 + 72);
      v95 = *(a1 + 80);
      v130 = v58;
      v132 = v95;
      v131 = v96;
      [v77 requestStreamingURLForResource:v31 asset:v4 intent:v78 timeRange:buf streamingHints:v76 inContext:v123 clientBundleID:v94 completion:v129];

      os_unfair_lock_lock((*(a1 + 40) + 16));
      v97 = *(a1 + 40);
      if (*(v97 + 40) == 1)
      {
        *(v97 + 40) = 2;
        v97 = *(a1 + 40);
      }

      os_unfair_lock_unlock((v97 + 16));

      goto LABEL_107;
    }

    if (v136 != 4)
    {
      if (v136 != 5)
      {
        goto LABEL_109;
      }

      [*(a1 + 40) setState:4];
      v56 = [v126 fileURLIfLocal];

      v57 = [v126 uniformTypeIdentifier];

      v58 = PLImageManagerGetLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = *(*(a1 + 40) + 48);
        v60 = [v56 path];
        *buf = 138543618;
        *&buf[4] = v59;
        *&buf[12] = 2112;
        *&buf[14] = v60;
        _os_log_impl(&dword_19C86F000, v58, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ returning locally available video at path: %@", buf, 0x16u);
      }

      v54 = 0;
      goto LABEL_108;
    }

LABEL_62:
    v61 = PLImageManagerGetLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v62 = *(*(a1 + 40) + 48);
      v63 = @"generation";
      if (v55 == 2)
      {
        v63 = @"download";
      }

      *buf = 138543874;
      *&buf[4] = v62;
      *&buf[12] = 2114;
      *&buf[14] = v63;
      *&buf[22] = 1024;
      *&buf[24] = v52;
      _os_log_impl(&dword_19C86F000, v61, OS_LOG_TYPE_INFO, "[RM]: %{public}@ requesting video %{public}@, partial ADP download=%d", buf, 0x1Cu);
    }

    v64 = *(a1 + 40);
    v65 = *(a1 + 48);
    v66 = *(a1 + 64);
    if (v52)
    {
      [v64 startWalrusTimeRangeDownloadForRequest:v65 backingResource:v31 clientBundleID:v66 shouldReturnAdjustmentInfo:v135 partialVideoURL:v120 reply:*(a1 + 72)];
      v58 = 0;
    }

    else
    {
      v58 = [v64 startDownloadForRequest:v65 backingResource:v31 clientBundleID:v66 shouldReturnAdjustmentInfo:v135 needsDownload:v55 == 2 shouldApplyTimeRange:v119 & 1 reply:*(a1 + 72)];
    }

    os_unfair_lock_lock((*(a1 + 40) + 16));
    v82 = *(a1 + 40);
    if (*(v82 + 40) == 1)
    {
      objc_initWeak(buf, v82);
      if (v58)
      {
        v83 = objc_alloc(MEMORY[0x1E69BE6E8]);
        v127[0] = MEMORY[0x1E69E9820];
        v127[1] = 3221225472;
        v127[2] = __85__PHServerResourceRequestRunner_chooseVideoWithRequest_library_clientBundleID_reply___block_invoke_136;
        v127[3] = &unk_1E75A9CB0;
        objc_copyWeak(&v128, buf);
        v84 = [v83 initWithSourceProgress:v58 progressHandler:v127];
        v85 = *(a1 + 40);
        v86 = *(v85 + 24);
        *(v85 + 24) = v84;

        objc_destroyWeak(&v128);
      }

      *(*(a1 + 40) + 40) = 2;
      v87 = [v31 dataStore];
      v88 = *(a1 + 40);
      v89 = *(v88 + 32);
      *(v88 + 32) = v87;

      objc_destroyWeak(buf);
      os_unfair_lock_unlock((*(a1 + 40) + 16));
    }

    else
    {
      os_unfair_lock_unlock((v82 + 16));
      [v58 cancel];
    }

LABEL_107:
    v54 = 0;
    v57 = v122;
    v56 = v53;
    goto LABEL_108;
  }

  switch(v136)
  {
    case 0:
      [*(a1 + 40) setState:3];
      v67 = PLImageManagerGetLog();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = *(*(a1 + 40) + 48);
        v69 = [v4 uuid];
        *buf = 138543874;
        *&buf[4] = v68;
        *&buf[12] = 2114;
        *&buf[14] = v69;
        *&buf[22] = 2112;
        *&buf[24] = v124;
        _os_log_impl(&dword_19C86F000, v67, OS_LOG_TYPE_ERROR, "[RM] %{public}@: Video request unable to find video resource for asset with uuid: %{public}@, error: %@", buf, 0x20u);
      }

      v70 = PHErrorFromPLError(v124);
      v54 = 0;
      goto LABEL_96;
    case 1:
      [*(a1 + 40) setState:3];
      v80 = PLImageManagerGetLog();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        v81 = *(*(a1 + 40) + 48);
        *buf = 138543362;
        *&buf[4] = v81;
        _os_log_impl(&dword_19C86F000, v80, OS_LOG_TYPE_DEBUG, "[RM] %{public}@ resource is in the cloud, but network access not allowed", buf, 0xCu);
      }

      if (*(a1 + 90))
      {
        PHStreamingDeniedError();
      }

      else
      {
        PHNetworkAccessAllowedRequiredError();
      }
      v70 = ;
      v54 = 1;
LABEL_96:
      v58 = v124;
      v57 = v122;
      v56 = v53;
      v124 = v70;
LABEL_108:

      v122 = v57;
      v53 = v56;
      break;
    case 2:
      goto LABEL_62;
  }

LABEL_109:
  if ([*(a1 + 40) state] == 1)
  {
    v98 = PLImageManagerGetLog();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v99 = *(*(a1 + 40) + 48);
      *buf = 138543362;
      *&buf[4] = v99;
      _os_log_impl(&dword_19C86F000, v98, OS_LOG_TYPE_ERROR, "[RM] %{public}@ video request failed to complete", buf, 0xCu);
    }

    v100 = MEMORY[0x1E696ABC0];
    v139 = *MEMORY[0x1E696A278];
    v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Video request failed to complete"];
    v140 = v101;
    v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
    v103 = [v100 errorWithDomain:@"PHPhotosErrorDomain" code:4301 userInfo:v102];

    [*(a1 + 40) setState:3];
    v124 = v103;
  }

  if ([*(a1 + 40) state] == 2)
  {
    v104 = v53;
  }

  else
  {
    v105 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v106 = v105;
    if (v54)
    {
      [v105 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PHImageResultIsInCloudKey"];
    }

    v107 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v107 setObject:v122 forKeyedSubscript:@"PHImageFileUTIKey"];
    if ((v54 & 1) == 0)
    {
      v108 = [*(a1 + 40) _resourceQualifiesForCacheMetricsCollection:v31 isLivePhoto:{objc_msgSend(v4, "isPhotoIris")}];
      v109 = [MEMORY[0x1E696AD98] numberWithBool:v108];
      [v107 setObject:v109 forKeyedSubscript:@"PHImageRequestResultEligibleForCacheMetricsLogging"];

      if (v108)
      {
        v110 = MEMORY[0x1E696AD98];
        if (v31)
        {
          v111 = [v31 localAvailability] > 0;
        }

        else
        {
          v111 = 0;
        }

        v112 = [v110 numberWithInt:v111];
        [v107 setObject:v112 forKeyedSubscript:@"PHImageRequestResultIsLocallyAvailableForCacheMetricsLogging"];
      }

      if (v119)
      {
        [v106 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PHApplyTimeRangeKey"];
      }
    }

    if (v135 == 1)
    {
      v113 = [v4 pathForAdjustmentFile];
    }

    else
    {
      v113 = 0;
    }

    v114 = [*(a1 + 40) _avAssetProxyForOutOfBandHintsAboutAssetForResource:v31];
    v104 = [*(a1 + 40) _urlByAttachingOutOfBandHintsToVideoURL:v53 assetProxy:v114 signpostId:*(a1 + 80) hintsBase64String:0];

    [*(a1 + 40) _replyToVideoRequestWithURL:v104 mediaItemMakerData:0 mutableInfo:v106 internalInfo:v107 error:v124 pathForAdjustmentFileIfNeeded:v113 reply:*(a1 + 72)];
  }
}

void __85__PHServerResourceRequestRunner_chooseVideoWithRequest_library_clientBundleID_reply___block_invoke_128(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = MEMORY[0x1E695DF90];
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_alloc_init(v12);
  [v17 setObject:v15 forKeyedSubscript:@"PHImageResultExpirationKey"];

  [v17 setObject:v14 forKeyedSubscript:@"PHImageResultFingerPrintKey"];
  v18 = PLImageManagerGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(*(a1 + 32) + 48);
    *buf = 138543618;
    v28 = v19;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ received streaming url: %@", buf, 0x16u);
  }

  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = *(a1 + 56);
  v26 = 0;
  v23 = [v20 _urlByAttachingOutOfBandHintsToVideoURL:v11 assetProxy:v21 signpostId:v22 hintsBase64String:&v26];
  v24 = v26;

  v25 = [MEMORY[0x1E695DF90] dictionary];
  [v25 setObject:v24 forKeyedSubscript:@"PHImageResultAVAssetOutOfBandPresentationHintsKey"];
  [*(a1 + 32) _replyToVideoRequestWithURL:v23 mediaItemMakerData:v16 mutableInfo:v25 internalInfo:v17 error:v13 pathForAdjustmentFileIfNeeded:0 reply:*(a1 + 48)];
}

void __85__PHServerResourceRequestRunner_chooseVideoWithRequest_library_clientBundleID_reply___block_invoke_136(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleProgress:v3];
}

void __85__PHServerResourceRequestRunner_chooseVideoWithRequest_library_clientBundleID_reply___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, 0, 0, 0, v2);
}

- (id)videoResourceChoiceForAsset:(id)asset context:(id)context loadingMode:(int64_t *)mode request:(id)request shouldReturnAdjustmentInfo:(BOOL *)info error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  contextCopy = context;
  requestCopy = request;
  v16 = objc_alloc(MEMORY[0x1E69BE878]);
  behaviorSpec = [requestCopy behaviorSpec];
  [requestCopy size];
  v18 = [v16 initWithContext:contextCopy assetInformation:contextCopy options:behaviorSpec size:?];

  v48 = 0;
  v19 = [v18 chooseResourceWithLoadingMode:mode needsAdjustmentData:info error:&v48];
  v20 = v48;
  v21 = v20;
  if (v19)
  {
    goto LABEL_2;
  }

  errorCopy = error;
  userInfo = [v20 userInfo];
  v30 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69BF130]];
  bOOLValue = [v30 BOOLValue];

  if (!bOOLValue)
  {
    goto LABEL_12;
  }

  v32 = PLImageManagerGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    taskIdentifier = self->_taskIdentifier;
    uuid = [assetCopy uuid];
    *buf = 138543618;
    v50 = taskIdentifier;
    v51 = 2114;
    v52 = uuid;
    _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_ERROR, "%{public}@ video request found zero playable videos for asset: %{public}@, retrying, returned video may not be playable", buf, 0x16u);
  }

  behaviorSpec2 = [requestCopy behaviorSpec];
  v36 = [behaviorSpec2 copy];

  [v36 setRestrictToPlayableOnCurrentDevice:0];
  v37 = objc_alloc(MEMORY[0x1E69BE878]);
  [requestCopy size];
  v38 = [v37 initWithContext:contextCopy assetInformation:contextCopy options:v36 size:?];
  v47 = v21;
  v19 = [v38 chooseResourceWithLoadingMode:mode needsAdjustmentData:info error:&v47];
  v39 = v47;

  v21 = v39;
  if (v19)
  {
LABEL_2:
    v22 = assetCopy;
    v23 = PLImageManagerGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_taskIdentifier;
      v25 = PLVideoResourceDescription();
      uuid2 = [v22 uuid];
      *buf = 138543874;
      v50 = v24;
      v51 = 2114;
      v52 = v25;
      v53 = 2114;
      v54 = uuid2;
      _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ video request chose video resource: %{public}@ for asset: %{public}@", buf, 0x20u);
    }

    v27 = v21;
  }

  else
  {
LABEL_12:
    v22 = assetCopy;
    v40 = PLImageManagerGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = self->_taskIdentifier;
      uuid3 = [v22 uuid];
      *buf = 138543618;
      v50 = v41;
      v51 = 2114;
      v52 = uuid3;
      _os_log_impl(&dword_19C86F000, v40, OS_LOG_TYPE_ERROR, "%{public}@ video request found zero videos for asset: %{public}@", buf, 0x16u);
    }

    v43 = v21;
    v27 = v43;
    if (errorCopy)
    {
      v44 = v43;
      v19 = 0;
      *errorCopy = v27;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (void)_replyToVideoRequestWithURL:(id)l mediaItemMakerData:(id)data mutableInfo:(id)info internalInfo:(id)internalInfo error:(id)error pathForAdjustmentFileIfNeeded:(id)needed reply:(id)reply
{
  lCopy = l;
  dataCopy = data;
  infoCopy = info;
  internalInfoCopy = internalInfo;
  errorCopy = error;
  neededCopy = needed;
  replyCopy = reply;
  if (lCopy | dataCopy && neededCopy)
  {
    v22 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:neededCopy];
    if (v22)
    {
      selfCopy = self;
      if (!internalInfoCopy)
      {
        internalInfoCopy = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v23 = *MEMORY[0x1E69BF380];
      v24 = [v22 objectForKeyedSubscript:*MEMORY[0x1E69BF380]];
      [internalInfoCopy setObject:v24 forKeyedSubscript:v23];

      v25 = *MEMORY[0x1E69BF388];
      v26 = [v22 objectForKeyedSubscript:*MEMORY[0x1E69BF388]];
      [internalInfoCopy setObject:v26 forKeyedSubscript:v25];

      v27 = *MEMORY[0x1E69BF370];
      v28 = [v22 objectForKeyedSubscript:*MEMORY[0x1E69BF370]];
      [internalInfoCopy setObject:v28 forKeyedSubscript:v27];

      self = selfCopy;
    }
  }

  if (lCopy)
  {
    scheme = [lCopy scheme];
    v30 = [scheme isEqualToString:@"file"];

    if (v30)
    {
      path = [lCopy path];
      v32 = PLGetSandboxExtensionToken();

      if (v32)
      {
        v33 = [objc_alloc(MEMORY[0x1E69BF2E8]) initWithURL:lCopy sandboxExtensionToken:v32 consume:0];

        lCopy = v33;
      }
    }
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __147__PHServerResourceRequestRunner__replyToVideoRequestWithURL_mediaItemMakerData_mutableInfo_internalInfo_error_pathForAdjustmentFileIfNeeded_reply___block_invoke;
  v41[3] = &unk_1E75A4E48;
  v42 = lCopy;
  v43 = dataCopy;
  v44 = infoCopy;
  v45 = internalInfoCopy;
  v46 = errorCopy;
  v47 = replyCopy;
  v34 = errorCopy;
  v35 = internalInfoCopy;
  v36 = infoCopy;
  v37 = dataCopy;
  v38 = lCopy;
  v39 = replyCopy;
  [(PHServerResourceRequestRunner *)self _safeReply:v41];
}

uint64_t __147__PHServerResourceRequestRunner__replyToVideoRequestWithURL_mediaItemMakerData_mutableInfo_internalInfo_error_pathForAdjustmentFileIfNeeded_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if ([*(a1 + 48) count])
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = 0;
  }

  if ([*(a1 + 56) count])
  {
    v6 = *(a1 + 56);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 64);
  v8 = *(v2 + 16);

  return v8(v2, v3 != 0, v3, v4, v5, v6, v7);
}

- (BOOL)_resourceQualifiesForCacheMetricsCollection:(id)collection isLivePhoto:(BOOL)photo
{
  result = 0;
  if (collection && photo)
  {
    cplType = [collection cplType];
    return cplType == 6 || cplType == 18;
  }

  return result;
}

- (id)applyAssetScopeCorrectionsWithRequest:(id)request errorCodes:(id)codes clientBundleID:(id)d library:(id)library reply:(id)reply
{
  replyCopy = reply;
  libraryCopy = library;
  dCopy = d;
  codesCopy = codes;
  assetObjectIDURL = [request assetObjectIDURL];
  v17 = [(PHServerResourceRequestRunner *)self _applyCorrectionsToAssetObjectIDURL:assetObjectIDURL resourceIdentity:0 errorCodes:codesCopy clientBundleID:dCopy library:libraryCopy reply:replyCopy];

  return v17;
}

- (id)applyResourceScopeCorrectionsWithRequest:(id)request errorCodes:(id)codes clientBundleID:(id)d library:(id)library reply:(id)reply
{
  replyCopy = reply;
  libraryCopy = library;
  dCopy = d;
  codesCopy = codes;
  requestCopy = request;
  assetObjectIDURL = [requestCopy assetObjectIDURL];
  resourceIdentity = [requestCopy resourceIdentity];

  v19 = [(PHServerResourceRequestRunner *)self _applyCorrectionsToAssetObjectIDURL:assetObjectIDURL resourceIdentity:resourceIdentity errorCodes:codesCopy clientBundleID:dCopy library:libraryCopy reply:replyCopy];

  return v19;
}

- (id)_applyCorrectionsToAssetObjectIDURL:(id)l resourceIdentity:(id)identity errorCodes:(id)codes clientBundleID:(id)d library:(id)library reply:(id)reply
{
  v55 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identityCopy = identity;
  codesCopy = codes;
  dCopy = d;
  libraryCopy = library;
  replyCopy = reply;
  if ([(PHServerResourceRequestRunner *)self state])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHServerResourceRequestRunner.m" lineNumber:576 description:@"Cannot run a repair request twice"];
  }

  v21 = PLImageManagerGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    taskIdentifier = self->_taskIdentifier;
    v23 = PLResourceIdentityShortDescription();
    *buf = 138544130;
    *&buf[4] = taskIdentifier;
    *&buf[12] = 2114;
    *&buf[14] = lCopy;
    *&buf[22] = 2114;
    v53 = v23;
    LOWORD(v54) = 2114;
    *(&v54 + 2) = codesCopy;
    _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_INFO, "[RM] %{public}@ Starting request to repair resource with asset: %{public}@, resource: %{public}@, error codes: %{public}@", buf, 0x2Au);
  }

  [(PHServerResourceRequestRunner *)self setState:1];
  v24 = [MEMORY[0x1E69BE830] discreteProgressWithTotalUnitCount:100];
  progress = self->_progress;
  self->_progress = v24;

  objc_initWeak(&location, self);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __126__PHServerResourceRequestRunner__applyCorrectionsToAssetObjectIDURL_resourceIdentity_errorCodes_clientBundleID_library_reply___block_invoke;
  v48[3] = &unk_1E75A4D08;
  objc_copyWeak(&v50, &location);
  v26 = replyCopy;
  v49 = v26;
  [(NSProgress *)self->_progress setCancellationHandler:v48];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v53 = __Block_byref_object_copy__10411;
  *&v54 = __Block_byref_object_dispose__10412;
  *(&v54 + 1) = 0;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __126__PHServerResourceRequestRunner__applyCorrectionsToAssetObjectIDURL_resourceIdentity_errorCodes_clientBundleID_library_reply___block_invoke_3;
  v39[3] = &unk_1E75A4DD0;
  v27 = libraryCopy;
  v40 = v27;
  selfCopy = self;
  v28 = lCopy;
  v42 = v28;
  v47 = buf;
  v29 = codesCopy;
  v43 = v29;
  v30 = identityCopy;
  v44 = v30;
  v31 = dCopy;
  v45 = v31;
  v46 = v26;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __126__PHServerResourceRequestRunner__applyCorrectionsToAssetObjectIDURL_resourceIdentity_errorCodes_clientBundleID_library_reply___block_invoke_3_113;
  v36[3] = &unk_1E75A4E20;
  v36[4] = self;
  v32 = v46;
  v37 = v32;
  v38 = buf;
  [v27 performTransaction:v39 completionHandler:v36 withPriority:1];
  v33 = self->_progress;

  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&location);

  return v33;
}

void __126__PHServerResourceRequestRunner__applyCorrectionsToAssetObjectIDURL_resourceIdentity_errorCodes_clientBundleID_library_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __126__PHServerResourceRequestRunner__applyCorrectionsToAssetObjectIDURL_resourceIdentity_errorCodes_clientBundleID_library_reply___block_invoke_2;
  v3[3] = &unk_1E75AADE8;
  v4 = *(a1 + 32);
  [WeakRetained _cancelWithReply:v3];
}

void __126__PHServerResourceRequestRunner__applyCorrectionsToAssetObjectIDURL_resourceIdentity_errorCodes_clientBundleID_library_reply___block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  if ([*(a1 + 40) state] != 1)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 88) + 8);
  obj = *(v5 + 40);
  v6 = [v3 _assetAndRelatedObjectsFromAssetObjectIDURL:v4 inManagedObjectContext:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!v6)
  {
    [*(a1 + 40) setState:3];
    v7 = PLImageManagerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1 + 40) + 48);
      v9 = *(*(*(a1 + 88) + 8) + 40);
      *buf = 138543618;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "[RM] %{public}@ could not load asset with error: %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

LABEL_7:
  [*(*(a1 + 40) + 8) setCompletedUnitCount:50];
  if ([*(a1 + 40) state] == 1 && (objc_msgSend(v6, "complete") & 1) == 0)
  {
    v10 = PLImageManagerGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1 + 40) + 48);
      v12 = [v6 objectID];
      v13 = *(a1 + 56);
      *buf = 138543874;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      v29 = 2114;
      v30 = v13;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_INFO, "[RM]: %{public}@ Repair: ignoring correction request for incomplete asset: %{public}@ for error codes: %{public}@.", buf, 0x20u);
    }

    [*(a1 + 40) setState:4];
  }

  if (v6 && [*(a1 + 40) state] == 1)
  {
    if ([*(a1 + 64) recipeID] == 65749)
    {
      v14 = [MEMORY[0x1E69BE750] recipeFromID:65749];
      v15 = [objc_alloc(MEMORY[0x1E69BE758]) initWithVersion:3 taskIdentifier:*(*(a1 + 40) + 48) reason:@"Local video key frame on demand repair" networkAccessAllowed:0 clientBundleID:*(a1 + 72)];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __126__PHServerResourceRequestRunner__applyCorrectionsToAssetObjectIDURL_resourceIdentity_errorCodes_clientBundleID_library_reply___block_invoke_110;
      v22[3] = &unk_1E75A4DA8;
      v22[4] = *(a1 + 40);
      v23 = *(a1 + 80);
      [v14 generateAndStoreForAsset:v6 options:v15 progress:0 completion:v22];
      os_unfair_lock_lock((*(a1 + 40) + 16));
      v16 = *(a1 + 40);
      if (*(v16 + 40) == 1)
      {
        *(v16 + 40) = 2;
        v16 = *(a1 + 40);
      }

      os_unfair_lock_unlock((v16 + 16));
    }

    else
    {
      v17 = *(a1 + 64);
      if (v17 && ([v6 fetchResourceWithIdentity:v17 error:0], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v19 = v18;
        v20 = [v18 repairResourceValidationErrors:*(a1 + 56) managedObjectContext:v2];
      }

      else
      {
        v20 = [v6 repairAssetScopeValidationErrors:*(a1 + 56)];
      }

      if (v20)
      {
        v21 = 4;
      }

      else
      {
        v21 = 3;
      }

      [*(a1 + 40) setState:v21];
    }
  }

  [*(*(a1 + 40) + 8) setCompletedUnitCount:75];
}

void __126__PHServerResourceRequestRunner__applyCorrectionsToAssetObjectIDURL_resourceIdentity_errorCodes_clientBundleID_library_reply___block_invoke_3_113(uint64_t a1)
{
  if ([*(a1 + 32) state] != 2)
  {
    [*(*(a1 + 32) + 8) setCompletedUnitCount:100];
    v2 = [*(a1 + 32) state] == 4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __126__PHServerResourceRequestRunner__applyCorrectionsToAssetObjectIDURL_resourceIdentity_errorCodes_clientBundleID_library_reply___block_invoke_4;
    v6[3] = &unk_1E75A4DF8;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = v2;
    v5 = *(a1 + 48);
    v7 = v4;
    v8 = v5;
    [v3 _safeReply:v6];
  }
}

void __126__PHServerResourceRequestRunner__applyCorrectionsToAssetObjectIDURL_resourceIdentity_errorCodes_clientBundleID_library_reply___block_invoke_110(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __126__PHServerResourceRequestRunner__applyCorrectionsToAssetObjectIDURL_resourceIdentity_errorCodes_clientBundleID_library_reply___block_invoke_2_111;
  v12[3] = &unk_1E75AA870;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v7;
  v10 = v6;
  v11 = v7;
  [v8 _safeReply:v12];
}

uint64_t __126__PHServerResourceRequestRunner__applyCorrectionsToAssetObjectIDURL_resourceIdentity_errorCodes_clientBundleID_library_reply___block_invoke_2_111(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) count] != 0;
  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

void __126__PHServerResourceRequestRunner__applyCorrectionsToAssetObjectIDURL_resourceIdentity_errorCodes_clientBundleID_library_reply___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)makeResourceUnavailableWithRequest:(id)request library:(id)library
{
  v27 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  libraryCopy = library;
  if ([(PHServerResourceRequestRunner *)self state])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHServerResourceRequestRunner.m" lineNumber:545 description:@"Cannot run a resource make available request twice"];
  }

  v9 = PLImageManagerGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    taskIdentifier = self->_taskIdentifier;
    assetObjectIDURL = [requestCopy assetObjectIDURL];
    resourceIdentity = [requestCopy resourceIdentity];
    v13 = PLResourceIdentityShortDescription();
    *buf = 138543874;
    v22 = taskIdentifier;
    v23 = 2114;
    v24 = assetObjectIDURL;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ Starting request to make resource unavailable with asset: %{public}@, resource: %{public}@", buf, 0x20u);
  }

  [(PHServerResourceRequestRunner *)self setState:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__PHServerResourceRequestRunner_makeResourceUnavailableWithRequest_library___block_invoke;
  v17[3] = &unk_1E75AB248;
  v18 = libraryCopy;
  selfCopy = self;
  v20 = requestCopy;
  v14 = requestCopy;
  v15 = libraryCopy;
  [v15 performTransaction:v17];
}

void __76__PHServerResourceRequestRunner_makeResourceUnavailableWithRequest_library___block_invoke(id *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] managedObjectContext];
  v3 = a1[5];
  v4 = [a1[6] assetObjectIDURL];
  v22 = 0;
  v5 = [v3 _assetAndRelatedObjectsFromAssetObjectIDURL:v4 inManagedObjectContext:v2 error:&v22];
  v6 = v22;

  if (!v5)
  {
    [a1[5] setState:3];
    v7 = PLImageManagerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1[5] + 6);
      *buf = 138543618;
      v24 = v8;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "[RM] %{public}@ could not load asset with error: %@", buf, 0x16u);
    }
  }

  if ([a1[5] state] == 1)
  {
    v9 = [a1[6] resourceIdentity];
    v21 = v6;
    v10 = [v5 fetchResourceWithIdentity:v9 error:&v21];
    v11 = v21;

    if (!v10)
    {
      [a1[5] setState:3];
      v12 = PLImageManagerGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1[5] + 6);
        v14 = [a1[6] resourceIdentity];
        v15 = [v14 recipeID];
        *buf = 138543618;
        v24 = v13;
        v25 = 1024;
        LODWORD(v26) = v15;
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "[RM] %{public}@ Unable to fetch resource with recipe %u in database, request failed", buf, 0x12u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v11 = v6;
  }

  if ([a1[5] state] == 1)
  {
    v16 = [v10 dataStore];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__PHServerResourceRequestRunner_makeResourceUnavailableWithRequest_library___block_invoke_101;
    v19[3] = &unk_1E75A4D80;
    v17 = a1[6];
    v19[4] = a1[5];
    v20 = v17;
    v18 = [v16 requestLocalAvailabilityChange:0xFFFFFFFFLL forResource:v10 options:0 completion:v19];
  }
}

void __76__PHServerResourceRequestRunner_makeResourceUnavailableWithRequest_library___block_invoke_101(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (!a4)
  {
    v7 = PLImageManagerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1 + 32) + 48);
      v9 = [*(a1 + 40) resourceIdentity];
      v10 = PLResourceIdentityShortDescription();
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "[RM] %{public}@ failed to make resource unavailable: %{public}@, error: %@", &v11, 0x20u);
    }
  }
}

- (id)makeResourceAvailableWithRequest:(id)request library:(id)library clientBundleID:(id)d reply:(id)reply
{
  v63 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  libraryCopy = library;
  dCopy = d;
  replyCopy = reply;
  if ([(PHServerResourceRequestRunner *)self state])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHServerResourceRequestRunner.m" lineNumber:368 description:@"Cannot run a resource make available request twice"];
  }

  downloadIntent = [requestCopy downloadIntent];
  downloadPriority = [requestCopy downloadPriority];
  if ((downloadIntent - 1) > 0xC)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_19CB296D8[downloadIntent - 1];
  }

  v38 = [objc_alloc(MEMORY[0x1E6994BA8]) initWithIntent:v14 priority:downloadPriority == 1];
  v15 = PLImageManagerGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    taskIdentifier = self->_taskIdentifier;
    v16 = @"Y";
    if ([requestCopy isNetworkAccessAllowed])
    {
      v17 = @"Y";
    }

    else
    {
      v17 = @"N";
    }

    if ([requestCopy wantsProgress])
    {
      v18 = @"Y";
    }

    else
    {
      v18 = @"N";
    }

    if (![requestCopy isTransient])
    {
      v16 = @"N";
    }

    assetObjectIDURL = [requestCopy assetObjectIDURL];
    v20 = PLShortObjectIDFromURL();
    resourceIdentity = [requestCopy resourceIdentity];
    v22 = PLResourceIdentityShortDescription();
    *buf = 138544898;
    v50 = taskIdentifier;
    v51 = 2114;
    v52 = v17;
    v53 = 2114;
    v54 = v18;
    v55 = 2114;
    v56 = v16;
    v57 = 2114;
    v58 = v38;
    v59 = 2114;
    v60 = v20;
    v61 = 2114;
    v62 = v22;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ Starting request to make resource available with network access: %{public}@, progress: %{public}@, transient: %{public}@, downloadOptions: %{public}@, asset: %{public}@, resource: %{public}@", buf, 0x48u);
  }

  [(PHServerResourceRequestRunner *)self setState:1];
  v23 = [MEMORY[0x1E69BE830] discreteProgressWithTotalUnitCount:100];
  progress = self->_progress;
  self->_progress = v23;

  objc_initWeak(buf, self);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke;
  v46[3] = &unk_1E75A4D08;
  objc_copyWeak(&v48, buf);
  v25 = replyCopy;
  v47 = v25;
  [(NSProgress *)self->_progress setCancellationHandler:v46];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke_3;
  v39[3] = &unk_1E75A4E48;
  v26 = libraryCopy;
  v40 = v26;
  selfCopy = self;
  v27 = requestCopy;
  v42 = v27;
  v28 = v25;
  v45 = v28;
  v29 = dCopy;
  v43 = v29;
  v30 = v38;
  v44 = v30;
  [v26 performBlock:v39];
  v31 = self->_progress;

  objc_destroyWeak(&v48);
  objc_destroyWeak(buf);

  return v31;
}

void __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke_2;
  v3[3] = &unk_1E75AADE8;
  v4 = *(a1 + 32);
  [WeakRetained _cancelWithReply:v3];
}

void __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke_3(uint64_t a1)
{
  v162[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v123 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) assetObjectIDURL];
  v149 = 0;
  v124 = [v3 _assetAndRelatedObjectsFromAssetObjectIDURL:v4 inManagedObjectContext:v123 error:&v149];
  v5 = v149;

  v121 = [*v2 libraryID];
  if (v124)
  {
    v6 = PLImageManagerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 40) + 48);
      v8 = [*(a1 + 48) assetObjectIDURL];
      v9 = PLShortObjectIDFromURL();
      v10 = [v124 uuid];
      v11 = [*(a1 + 48) resourceIdentity];
      v12 = PLResourceIdentityShortDescription();
      *buf = 138544130;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2114;
      v155 = v10;
      LOWORD(v156) = 2114;
      *(&v156 + 2) = v12;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ In library perform to make resource available for asset: %{public}@ %{public}@, resource: %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    [*(a1 + 40) setState:3];
    v6 = PLImageManagerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(a1 + 40) + 48);
      v14 = [*(a1 + 48) assetObjectIDURL];
      v15 = PLShortObjectIDFromURL();
      *buf = 138543874;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      v155 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "[RM] %{public}@ could not load asset %{public}@ with error: %@", buf, 0x20u);
    }
  }

  if ([*(a1 + 40) state] == 1)
  {
    v16 = [*(a1 + 48) resourceIdentity];
    if ([v16 resourceType] == 9)
    {
      v17 = [*(a1 + 48) resourceIdentity];
      v18 = [v17 recipeID] == 327685;

      if (!v18)
      {
        goto LABEL_16;
      }

      v19 = [*(a1 + 48) resourceIdentity];
      v148 = 0;
      v20 = [v124 mediaMetadataForResourceVersion:objc_msgSend(v19 mediaMetadataType:{"version"), &v148}];
      v16 = v148;

      if (v20 && v16)
      {
        v21 = PLImageManagerGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(*(a1 + 40) + 48);
          *buf = 138543362;
          *&buf[4] = v22;
          _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "[RM] %{public}@ Found existing media metadata in database", buf, 0xCu);
        }

        v23 = *(a1 + 40);
        v144[0] = MEMORY[0x1E69E9820];
        v144[1] = 3221225472;
        v144[2] = __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke_80;
        v144[3] = &unk_1E75AA870;
        v147 = *(a1 + 72);
        v145 = v20;
        v146 = v16;
        [v23 _safeReply:v144];
      }
    }
  }

LABEL_16:
  if ([*(a1 + 40) state] != 1)
  {
    v25 = 0;
    v122 = v5;
    goto LABEL_23;
  }

  v24 = [*(a1 + 48) resourceIdentity];
  v143 = v5;
  v25 = [v124 fetchResourceWithIdentity:v24 error:&v143];
  v122 = v143;

  if (v25)
  {
    goto LABEL_23;
  }

  v26 = [*(a1 + 48) resourceIdentity];
  v27 = [v26 recipeID] == 65944;

  if (v27)
  {
    v28 = PLImageManagerGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(*(a1 + 40) + 48);
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_DEBUG, "[RM] %{public}@ PLImageRecipeID_Pri_EditorColorSpace_DeferredProcessingFinalImage resource is no longer available, requesting original image", buf, 0xCu);
    }

    v30 = [v124 persistedOriginalImageResource];
    goto LABEL_38;
  }

  v42 = [*(a1 + 48) resourceIdentity];
  v43 = [v42 recipeID] == 131280;

  if (v43)
  {
    v44 = PLImageManagerGetLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v45 = *(*(a1 + 40) + 48);
      *buf = 138543362;
      *&buf[4] = v45;
      _os_log_impl(&dword_19C86F000, v44, OS_LOG_TYPE_DEBUG, "[RM] %{public}@ PLVideoRecipeID_VidCmp_Pri_DeferredProcessingFinalVideo resource is no longer available, requesting original video", buf, 0xCu);
    }

    v30 = [v124 persistedOriginalVideoComplementResource];
    goto LABEL_38;
  }

  v70 = [*(a1 + 48) resourceIdentity];
  [v70 recipeID];
  v71 = PLResourceRecipeIDIsValidForFullSizeRenderVirtualResource();

  if (v71)
  {
    if (![v124 adjustmentsState])
    {
      v87 = PLImageManagerGetLog();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        v88 = *(*(a1 + 40) + 48);
        v89 = [*(a1 + 48) resourceIdentity];
        [v89 recipeID];
        v90 = PLResourceRecipeIDDescription();
        v91 = [v124 uuid];
        *buf = 138543874;
        *&buf[4] = v88;
        *&buf[12] = 2114;
        *&buf[14] = v90;
        *&buf[22] = 2114;
        v155 = v91;
        _os_log_impl(&dword_19C86F000, v87, OS_LOG_TYPE_ERROR, "[RM] %{public}@ request for %{public}@ but no matching persisted resource found and asset %{public}@ is unadjusted", buf, 0x20u);
      }

      v92 = MEMORY[0x1E696ABC0];
      v161 = *MEMORY[0x1E696A278];
      v93 = MEMORY[0x1E696AEC0];
      v81 = [v124 uuid];
      v82 = [*(a1 + 48) resourceIdentity];
      [v82 recipeID];
      v83 = PLResourceRecipeIDDescription();
      v84 = [v93 stringWithFormat:@"Unadjusted asset %@ incompatible with resource recipeID %@", v81, v83];
      v162[0] = v84;
      v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v162 forKeys:&v161 count:1];
      v86 = [v92 errorWithDomain:@"PHPhotosErrorDomain" code:3307 userInfo:v85];
      goto LABEL_66;
    }

    v72 = [v124 isDefaultAdjustedSlomo];
    v73 = PLImageManagerGetLog();
    v74 = v73;
    if (v72)
    {
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v75 = *(*(a1 + 40) + 48);
        v76 = [*(a1 + 48) resourceIdentity];
        [v76 recipeID];
        v77 = PLResourceRecipeIDDescription();
        v78 = [v124 uuid];
        *buf = 138543874;
        *&buf[4] = v75;
        *&buf[12] = 2114;
        *&buf[14] = v77;
        *&buf[22] = 2114;
        v155 = v78;
        _os_log_impl(&dword_19C86F000, v74, OS_LOG_TYPE_ERROR, "[RM] %{public}@ request for %{public}@ but asset %{public}@ has legacy slomo adjustment", buf, 0x20u);
      }

      v79 = MEMORY[0x1E696ABC0];
      v159 = *MEMORY[0x1E696A278];
      v80 = MEMORY[0x1E696AEC0];
      v81 = [v124 uuid];
      v82 = [*(a1 + 48) resourceIdentity];
      [v82 recipeID];
      v83 = PLResourceRecipeIDDescription();
      v84 = [v80 stringWithFormat:@"Legacy slomo asset %@ incompatible with resource recipeID %@", v81, v83];
      v160 = v84;
      v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
      v86 = [v79 errorWithDomain:@"PHPhotosErrorDomain" code:3307 userInfo:v85];
LABEL_66:
      v94 = v86;

      v122 = v94;
      goto LABEL_67;
    }

    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v104 = *(*(a1 + 40) + 48);
      v105 = [*(a1 + 48) resourceIdentity];
      [v105 recipeID];
      v106 = PLResourceRecipeIDDescription();
      v107 = [v124 uuid];
      *buf = 138543874;
      *&buf[4] = v104;
      *&buf[12] = 2114;
      *&buf[14] = v106;
      *&buf[22] = 2114;
      v155 = v107;
      _os_log_impl(&dword_19C86F000, v74, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ installing full size render %{public}@ resource because a persisted resource was not found for adjusted asset: %{public}@", buf, 0x20u);
    }

    v108 = [*(a1 + 48) resourceIdentity];
    v109 = [v108 recipeID] == 65938;

    if (v109)
    {
      v110 = MEMORY[0x1E69BE740];
      v111 = [v124 pathForFullsizeRenderImageFile];
      v25 = [v110 onDemand_installAdjustedFullSizeRenderResourceAtFilePath:v111 forAsset:v124];

      goto LABEL_39;
    }

    v112 = [*(a1 + 48) resourceIdentity];
    v113 = [v112 recipeID] == 131272;

    if (v113)
    {
      v30 = [MEMORY[0x1E69BE740] onDemand_installAdjustedDeferredFullSizeVideoComplementResourceForAsset:v124];
LABEL_38:
      v25 = v30;
      goto LABEL_39;
    }

    v114 = [*(a1 + 48) resourceIdentity];
    v115 = [v114 recipeID] == 0x20000;

    if (v115)
    {
      v116 = MEMORY[0x1E69BE740];
      v117 = [*(a1 + 48) resourceIdentity];
      v25 = [v116 onDemand_installResourceWithResourceIdentity:v117 forAsset:v124];

LABEL_39:
      if (v25)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_67:
  [*(a1 + 40) setState:3];
  v95 = PLImageManagerGetLog();
  if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
  {
    v96 = *(*(a1 + 40) + 48);
    v97 = [*(a1 + 48) resourceIdentity];
    v98 = [v97 recipeID];
    *buf = 138543618;
    *&buf[4] = v96;
    *&buf[12] = 1024;
    *&buf[14] = v98;
    _os_log_impl(&dword_19C86F000, v95, OS_LOG_TYPE_ERROR, "[RM] %{public}@ Unable to fetch resource with recipe %u in database, request failed", buf, 0x12u);
  }

  if (!v122)
  {
    v99 = MEMORY[0x1E696ABC0];
    v157 = *MEMORY[0x1E696A278];
    v100 = MEMORY[0x1E696AEC0];
    v101 = [v124 uuid];
    v102 = [v100 stringWithFormat:@"Unable to find resource for asset: %@", v101];
    v158 = v102;
    v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
    v122 = [v99 errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v103];
  }

  v25 = 0;
LABEL_23:
  if ([*(a1 + 40) state] == 1)
  {
    v31 = objc_alloc_init(MEMORY[0x1E69BE748]);
    [v31 setTaskIdentifier:*(*(a1 + 40) + 48)];
    [v31 setNetworkAccessAllowed:{objc_msgSend(*(a1 + 48), "isNetworkAccessAllowed")}];
    [v31 setTransient:{objc_msgSend(*(a1 + 48), "isTransient")}];
    [v31 setWantsProgress:{objc_msgSend(*(a1 + 48), "wantsProgress")}];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v155 = __Block_byref_object_copy__10411;
    *&v156 = __Block_byref_object_dispose__10412;
    *(&v156 + 1) = 0;
    v142[0] = MEMORY[0x1E69E9820];
    v142[1] = 3221225472;
    v142[2] = __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke_92;
    v142[3] = &unk_1E75A4D30;
    v142[4] = buf;
    [v31 setDataHandler:v142];
    [v31 setClientBundleID:*(a1 + 56)];
    [v31 setDownloadOptions:*(a1 + 64)];
    if ([v25 localAvailability] == -1)
    {
      [v124 deferredProcessingNeeded];
      if ((PLManagedAssetDeferredProcessingNeededRequiresImmediateProcessing() & 1) == 0 && ([*(a1 + 48) isNetworkAccessAllowed] & 1) == 0)
      {
        v32 = PLImageManagerGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = *(*(a1 + 40) + 48);
          *v150 = 138543362;
          v151 = v33;
          _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_INFO, "[RM] %{public}@ Request for resource that is not locally available but network access is not allowed", v150, 0xCu);
        }
      }
    }

    v34 = [v25 version];
    v35 = [v25 cplType];
    v119 = [v25 orientation];
    v120 = v34;
    v36 = [v25 uniformTypeIdentifier];
    v37 = [v36 identifier];

    if (v35 == 5)
    {
      v38 = PLDataStoreForClassIDAndLibraryID();
      v39 = [v38 thumbnailManager];
      v40 = [v39 thumbnailJPEGPathForPhoto:v124];
      if (v40)
      {
        v41 = [MEMORY[0x1E695DFF8] fileURLWithPath:v40];
      }

      else
      {
        v46 = PLImageManagerGetLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = *(*(a1 + 40) + 48);
          v48 = [v124 uuid];
          *v150 = 138543618;
          v151 = v47;
          v152 = 2114;
          v153 = v48;
          v49 = v48;
          _os_log_impl(&dword_19C86F000, v46, OS_LOG_TYPE_ERROR, "[RM] %{public}@ Unable to resolve thumbnail path for asset %{public}@", v150, 0x16u);
        }

        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }

    if ([*(a1 + 48) isTransient])
    {
      v50 = 1;
    }

    else
    {
      v51 = [v25 dataStore];
      v50 = [objc_opt_class() storeClassID] == 3;
    }

    v52 = [v124 objectID];
    v53 = [v25 objectID];
    v54 = [v25 dataStore];
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke_95;
    v130[3] = &unk_1E75A4D58;
    v141 = v50;
    v137 = buf;
    v138 = v35;
    v118 = *(a1 + 32);
    v55 = v118.i64[0];
    v131 = vextq_s8(v118, v118, 8uLL);
    v56 = v41;
    v132 = v56;
    v57 = v52;
    v133 = v57;
    v58 = v53;
    v134 = v58;
    v139 = v120;
    v59 = v37;
    v135 = v59;
    v140 = v119;
    v136 = *(a1 + 72);
    v60 = [v54 requestLocalAvailabilityChange:1 forResource:v25 options:v31 completion:v130];

    os_unfair_lock_lock((*(a1 + 40) + 16));
    v61 = *(a1 + 40);
    if (*(v61 + 40) == 1)
    {
      objc_initWeak(v150, v61);
      v62 = [v25 dataStore];
      v63 = *(a1 + 40);
      v64 = *(v63 + 32);
      *(v63 + 32) = v62;

      if (v60)
      {
        v65 = objc_alloc(MEMORY[0x1E69BE6E8]);
        v128[0] = MEMORY[0x1E69E9820];
        v128[1] = 3221225472;
        v128[2] = __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke_2_98;
        v128[3] = &unk_1E75A9CB0;
        objc_copyWeak(&v129, v150);
        v66 = [v65 initWithSourceProgress:v60 progressHandler:v128];
        v67 = *(a1 + 40);
        v68 = *(v67 + 24);
        *(v67 + 24) = v66;

        objc_destroyWeak(&v129);
      }

      *(*(a1 + 40) + 40) = 2;
      objc_destroyWeak(v150);
      os_unfair_lock_unlock((*(a1 + 40) + 16));
    }

    else
    {
      os_unfair_lock_unlock((v61 + 16));
      [v60 cancel];
    }

    _Block_object_dispose(buf, 8);
  }

  if ([*(a1 + 40) state] != 2)
  {
    v69 = *(a1 + 40);
    v125[0] = MEMORY[0x1E69E9820];
    v125[1] = 3221225472;
    v125[2] = __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke_3_100;
    v125[3] = &unk_1E75AA820;
    v127 = *(a1 + 72);
    v126 = v122;
    [v69 _safeReply:v125];
  }
}

void __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke_80(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v5 = @"PHMediaMetadataTypeKey";
  v6[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  (*(v3 + 16))(v3, 1, 0, v1, v4, 0);
}

uint64_t __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v6) = *(a1 + 108);
  LODWORD(v5) = *(a1 + 104);
  return [*(a1 + 32) _handleLocalAvailabilityChangeWithFileURL:a4 transientData:*(*(*(a1 + 88) + 8) + 40) isExpectingOnlyData:*(a1 + 112) resourceCPLType:*(a1 + 96) library:*(a1 + 40) expectedMasterThumbnailURL:*(a1 + 48) assetObjectID:*(a1 + 56) resourceObjectID:*(a1 + 64) resourceVersion:v5 resourceUTIString:*(a1 + 72) resourceOrientation:v6 error:a2 reply:*(a1 + 80)];
}

void __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke_2_98(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleProgress:v3];
}

void __95__PHServerResourceRequestRunner_makeResourceAvailableWithRequest_library_clientBundleID_reply___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, 0, 0, v2);
}

- (void)_handleLocalAvailabilityChangeWithFileURL:(id)l transientData:(id)data isExpectingOnlyData:(BOOL)onlyData resourceCPLType:(unint64_t)type library:(id)library expectedMasterThumbnailURL:(id)rL assetObjectID:(id)d resourceObjectID:(id)self0 resourceVersion:(unsigned int)self1 resourceUTIString:(id)self2 resourceOrientation:(unsigned int)self3 error:(id)self4 reply:(id)self5
{
  v114 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dataCopy = data;
  libraryCopy = library;
  rLCopy = rL;
  dCopy = d;
  iDCopy = iD;
  stringCopy = string;
  errorCopy = error;
  replyCopy = reply;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  if (lCopy)
  {
    onlyDataCopy = 1;
  }

  else if (dataCopy)
  {
    onlyDataCopy = onlyData;
  }

  else
  {
    onlyDataCopy = 0;
  }

  v105 = onlyDataCopy;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy__10411;
  v100 = __Block_byref_object_dispose__10412;
  v101 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__10411;
  v94 = __Block_byref_object_dispose__10412;
  v24 = errorCopy;
  v95 = v24;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((v103[3] & 1) == 0)
  {
    domain = [v91[5] domain];
    if (![domain isEqualToString:*MEMORY[0x1E69BFF70]])
    {
LABEL_11:

      goto LABEL_12;
    }

    v27 = [v91[5] code] == 7;

    if (!v27)
    {
      goto LABEL_12;
    }

    userInfo = [v91[5] userInfo];
    v29 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69BFF78]];

    if (v29)
    {
      libraryServicesManager = [libraryCopy libraryServicesManager];
      databaseContext = [libraryServicesManager databaseContext];
      name = [libraryCopy name];
      v33 = name;
      v34 = [databaseContext newShortLivedLibraryWithName:{objc_msgSend(name, "UTF8String")}];

      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __257__PHServerResourceRequestRunner__handleLocalAvailabilityChangeWithFileURL_transientData_isExpectingOnlyData_resourceCPLType_library_expectedMasterThumbnailURL_assetObjectID_resourceObjectID_resourceVersion_resourceUTIString_resourceOrientation_error_reply___block_invoke;
      v85[3] = &unk_1E75A9E40;
      domain = v34;
      v86 = domain;
      v87 = iDCopy;
      selfCopy = self;
      lCopy = v29;
      v89 = lCopy;
      [domain performTransaction:v85];
      *(v103 + 24) = 1;
      v35 = v91[5];
      v91[5] = 0;

      goto LABEL_11;
    }

    lCopy = 0;
  }

LABEL_12:
  if (*(v103 + 24) == 1)
  {
    v36 = PLImageManagerGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      taskIdentifier = self->_taskIdentifier;
      v38 = [dataCopy length];
      *buf = 138543874;
      v109 = taskIdentifier;
      v110 = 2114;
      v111 = lCopy;
      v112 = 2048;
      v113 = v38;
      _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ Resource made available. (fileURL: %{public}@ / transientData len: %lu", buf, 0x20u);
    }

    if (type == 27 || type == 10)
    {
      libraryServicesManager2 = [libraryCopy libraryServicesManager];
      databaseContext2 = [libraryServicesManager2 databaseContext];
      name2 = [libraryCopy name];
      v49 = name2;
      v50 = [databaseContext2 newShortLivedLibraryWithName:{objc_msgSend(name2, "UTF8String")}];

      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __257__PHServerResourceRequestRunner__handleLocalAvailabilityChangeWithFileURL_transientData_isExpectingOnlyData_resourceCPLType_library_expectedMasterThumbnailURL_assetObjectID_resourceObjectID_resourceVersion_resourceUTIString_resourceOrientation_error_reply___block_invoke_62;
      v76[3] = &unk_1E75A4CB8;
      replyCopy = v50;
      v77 = replyCopy;
      v78 = dCopy;
      v80 = &v90;
      v81 = &v96;
      versionCopy = version;
      v79 = dictionary;
      v82 = &v102;
      typeCopy = type;
      [replyCopy performBlockAndWait:v76];
    }

    else if (type == 5)
    {
      if (rLCopy)
      {
        v39 = rLCopy;

        identifier = [*MEMORY[0x1E6982E58] identifier];
        [dictionary setObject:identifier forKeyedSubscript:@"PHImageFileUTIKey"];

        replyCopy = [MEMORY[0x1E696AD98] numberWithInteger:PLImageOrientationFromExifOrientation()];
        [dictionary setObject:replyCopy forKeyedSubscript:@"PHImageFileOrientationKey"];
        lCopy = v39;
      }

      else
      {
        *(v103 + 24) = 0;
        v52 = MEMORY[0x1E696ABC0];
        v106 = *MEMORY[0x1E696A578];
        replyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot determine thumbnail path for asset: %@", dCopy, replyCopy];
        v107 = replyCopy;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
        v54 = [v52 errorWithDomain:@"PHPhotosErrorDomain" code:3110 userInfo:v53];
        v55 = v91[5];
        v91[5] = v54;
      }
    }

    else
    {
      [dictionary setObject:stringCopy forKeyedSubscript:@"PHImageFileUTIKey"];
      replyCopy = [MEMORY[0x1E696AD98] numberWithInteger:PLImageOrientationFromExifOrientation()];
      [dictionary setObject:replyCopy forKeyedSubscript:@"PHImageFileOrientationKey"];
    }

    goto LABEL_35;
  }

  domain2 = [v91[5] domain];
  if ([domain2 isEqualToString:*MEMORY[0x1E6994990]])
  {
    v43 = [v91[5] code] == 80 || objc_msgSend(v91[5], "code") == 81 || objc_msgSend(v91[5], "code") == 82;
  }

  else
  {
    v43 = 0;
  }

  domain3 = [v91[5] domain];
  if ([domain3 isEqualToString:*MEMORY[0x1E69BFF70]])
  {
    v45 = [v91[5] code] == 6;
  }

  else
  {
    v45 = 0;
  }

  if (v43 || v45)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PHImageResultIsInCloudKey"];
    if (v45)
    {
      v51 = PHNetworkAccessAllowedRequiredError();
      replyCopy = v91[5];
      v91[5] = v51;
LABEL_35:
    }
  }

  v56 = dataCopy;
  if (!dataCopy)
  {
    v56 = v97[5];
  }

  v57 = v56;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __257__PHServerResourceRequestRunner__handleLocalAvailabilityChangeWithFileURL_transientData_isExpectingOnlyData_resourceCPLType_library_expectedMasterThumbnailURL_assetObjectID_resourceObjectID_resourceVersion_resourceUTIString_resourceOrientation_error_reply___block_invoke_2;
  v69[3] = &unk_1E75A4CE0;
  v58 = dictionary;
  v70 = v58;
  v59 = replyCopy;
  v73 = v59;
  v74 = &v102;
  v60 = lCopy;
  v71 = v60;
  v61 = v57;
  v72 = v61;
  v75 = &v90;
  [(PHServerResourceRequestRunner *)self _safeReply:v69];

  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v96, 8);

  _Block_object_dispose(&v102, 8);
}

void __257__PHServerResourceRequestRunner__handleLocalAvailabilityChangeWithFileURL_transientData_isExpectingOnlyData_resourceCPLType_library_expectedMasterThumbnailURL_assetObjectID_resourceObjectID_resourceVersion_resourceUTIString_resourceOrientation_error_reply___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v12 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v12];
  v5 = v12;

  v6 = PLImageManagerGetLog();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 56);
      v9 = *(*(a1 + 48) + 48);
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "[RM] %@ Repairing inconsistent resource with fileURL: %@", buf, 0x16u);
    }

    v7 = [objc_alloc(MEMORY[0x1E69BE6E0]) initWithResourceType:{objc_msgSend(v4, "resourceType")}];
    v10 = [v7 keyData];
    [v4 setDataStoreKeyData:v10];

    [v4 setLocalAvailability:1];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = *(*(a1 + 48) + 48);
    *buf = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "[RM] %@ Failed to load existing resource to repair data store key, non-fatal error: %@", buf, 0x16u);
  }
}

void __257__PHServerResourceRequestRunner__handleLocalAvailabilityChangeWithFileURL_transientData_isExpectingOnlyData_resourceCPLType_library_expectedMasterThumbnailURL_assetObjectID_resourceObjectID_resourceVersion_resourceUTIString_resourceOrientation_error_reply___block_invoke_62(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 existingObjectWithID:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  if (v5)
  {
    v6 = *(a1 + 88);
    v18 = 0;
    v7 = [v5 mediaMetadataForResourceVersion:v6 mediaMetadataType:&v18];
    v8 = v18;
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      [*(a1 + 48) setObject:v8 forKeyedSubscript:@"PHMediaMetadataTypeKey"];
    }

    else
    {
      v11 = *(a1 + 80);
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v12 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No media metadata present for CPL metadata download with cpl type %ld", v11];
      v21[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v15 = [v12 errorWithDomain:@"PHPhotosErrorDomain" code:3110 userInfo:v14];
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }
}

void __257__PHServerResourceRequestRunner__handleLocalAvailabilityChangeWithFileURL_transientData_isExpectingOnlyData_resourceCPLType_library_expectedMasterThumbnailURL_assetObjectID_resourceObjectID_resourceVersion_resourceUTIString_resourceOrientation_error_reply___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) count];
  (*(*(a1 + 56) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)_handleProgress:(id)progress
{
  progress = self->_progress;
  progressCopy = progress;
  totalUnitCount = [(NSProgress *)progress totalUnitCount];
  [progressCopy fractionCompleted];
  v8 = v7;

  v9 = self->_progress;

  [(NSProgress *)v9 setCompletedUnitCount:(v8 * totalUnitCount)];
}

- (void)_cancelWithReply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  os_unfair_lock_lock(&self->_lock);
  v5 = PLImageManagerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    taskIdentifier = self->_taskIdentifier;
    v10 = 138543362;
    v11 = taskIdentifier;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ Cancellation handler called", &v10, 0xCu);
  }

  sourceProgress = [(PLProgressFollower *)self->_dataStoreFollower sourceProgress];
  if (self->_state == 5)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else if (([(PLResourceDataStore *)self->_dataStore canMarkAsynchronousLocalRenderAsOptionalForProgress:sourceProgress]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
    v8 = PLImageManagerGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_taskIdentifier;
      v10 = 138543618;
      v11 = v9;
      v12 = 2114;
      v13 = sourceProgress;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_INFO, "[RM]: %{public}@ cancellation for async local render translated into deprioritization for progress %{public}@", &v10, 0x16u);
    }

    [(PLResourceDataStore *)self->_dataStore markAsynchronousLocalRenderAsOptionalForProgress:sourceProgress];
  }

  else
  {
    self->_state = 5;
    os_unfair_lock_unlock(&self->_lock);
    [sourceProgress cancel];
    replyCopy[2](replyCopy);
  }
}

- (void)_safeReply:(id)reply
{
  replyCopy = reply;
  os_unfair_lock_lock(&self->_lock);
  if (self->_state == 5)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_state = 5;
    os_unfair_lock_unlock(&self->_lock);
    replyCopy[2]();
  }
}

- (id)_assetAndRelatedObjectsFromAssetObjectIDURL:(id)l inManagedObjectContext:(id)context error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  v10 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:lCopy];

  if (!v10)
  {
    persistentStoreCoordinator2 = [contextCopy persistentStoreCoordinator];
    persistentStores = [persistentStoreCoordinator2 persistentStores];
    v13 = [persistentStores _pl_map:&__block_literal_global_10545];

    v26 = PLImageManagerGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v13 componentsJoinedByString:{@", "}];
      *buf = 138543618;
      v50 = lCopy;
      v51 = 2114;
      v52 = v27;
      _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_ERROR, "Cannot cannot create asset object id from url: %{public}@, persistent store IDs: %{public}@", buf, 0x16u);
    }

    v28 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A278];
    v29 = MEMORY[0x1E696AEC0];
    v16 = [v13 componentsJoinedByString:{@", "}];
    v19 = [v29 stringWithFormat:@"Cannot cannot create asset object id from url: %@, persistent store IDs: %@", lCopy, v16];
    v48 = v19;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v17 = [v28 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v30];
LABEL_16:

    goto LABEL_17;
  }

  v11 = MEMORY[0x1E695D5E0];
  entityName = [MEMORY[0x1E69BE540] entityName];
  v13 = [v11 fetchRequestWithEntityName:entityName];

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self = %@", v10];
  [v13 setPredicate:v14];

  v46[0] = @"modernResources";
  v46[1] = @"master";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  [v13 setRelationshipKeyPathsForPrefetching:v15];

  [v13 setReturnsObjectsAsFaults:0];
  v41 = 0;
  v16 = [contextCopy executeFetchRequest:v13 error:&v41];
  v17 = v41;
  if (v16)
  {
    firstObject = [v16 firstObject];
    if (firstObject)
    {
      v19 = firstObject;
      errorCopy = error;
      uuid = [firstObject uuid];
      if (uuid)
      {
        v21 = uuid;
        uuid2 = [v19 uuid];
        v23 = [uuid2 length];

        if (v23)
        {
          error = errorCopy;
          goto LABEL_18;
        }
      }

      v31 = PLImageManagerGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v50 = v10;
        _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_ERROR, "Asset has no uuid, object ID: %{public}@", buf, 0xCu);
      }

      v32 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A278];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset has no uuid, object ID: %@", v10];
      v43 = v30;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v34 = [v32 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v33];

      v17 = v34;
      error = errorCopy;
    }

    else
    {
      v35 = PLImageManagerGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v50 = v10;
        _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_ERROR, "Cannot find asset with object ID: %{public}@", buf, 0xCu);
      }

      v36 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A278];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot find asset with object ID: %@", v10];
      v45 = v19;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v37 = [v36 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v30];

      v17 = v37;
    }

    goto LABEL_16;
  }

LABEL_17:
  v19 = 0;
LABEL_18:

  if (error)
  {
    v38 = v17;
    *error = v17;
  }

  return v19;
}

- (void)setState:(int64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_state != 5)
  {
    self->_state = state;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)dealloc
{
  [(PLProgressFollower *)self->_dataStoreFollower invalidate];
  v3.receiver = self;
  v3.super_class = PHServerResourceRequestRunner;
  [(PHServerResourceRequestRunner *)&v3 dealloc];
}

- (PHServerResourceRequestRunner)initWithTaskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PHServerResourceRequestRunner;
  v5 = [(PHServerResourceRequestRunner *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    taskIdentifier = v5->_taskIdentifier;
    v5->_taskIdentifier = v6;
  }

  return v5;
}

@end