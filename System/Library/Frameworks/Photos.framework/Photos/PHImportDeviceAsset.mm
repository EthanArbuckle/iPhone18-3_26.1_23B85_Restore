@interface PHImportDeviceAsset
+ (id)assetFileForFile:(id)file source:(id)source;
+ (void)validateCameraFile:(id)file;
- (BOOL)canDelete;
- (BOOL)containsDateKey:(id)key;
- (BOOL)hasAudioAttachment;
- (BOOL)isBase;
- (BOOL)isLivePhoto;
- (BOOL)isRender;
- (BOOL)isSloMo;
- (BOOL)isSpatialOverCapture;
- (BOOL)isViewable;
- (BOOL)performAdditionalLivePhotoChecksWithImageAsset:(id)asset;
- (CGSize)exifPixelSize;
- (CGSize)orientedPixelSize;
- (NSArray)cameraFiles;
- (PHImportDeviceAsset)initWithSource:(id)source cameraFile:(id)file type:(id)type supportedMediaType:(unsigned __int8)mediaType;
- (id)burstUUID;
- (id)createMetadataFromProperties:(id)properties;
- (id)creationDate;
- (id)durationTimeInterval;
- (id)livePhotoPairingIdentifier;
- (id)makeImportIdentifier;
- (id)nameKey;
- (id)parentFolderPath;
- (id)securityScopedURL;
- (id)spatialOverCaptureIdentifier;
- (int)burstPickType;
- (unsigned)orientation;
- (void)copyToURL:(id)l completionHandler:(id)handler;
- (void)loadMetadataAsync:(id)async;
- (void)loadMetadataSync;
- (void)thumbnailUsingRequest:(id)request atEnd:(id)end;
@end

@implementation PHImportDeviceAsset

- (id)nameKey
{
  createdFileName = [(PHImportAsset *)self createdFileName];
  v4 = createdFileName;
  if (createdFileName)
  {
    nameKey = createdFileName;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PHImportDeviceAsset;
    nameKey = [(PHImportAsset *)&v8 nameKey];
  }

  v6 = nameKey;

  return v6;
}

- (void)copyToURL:(id)l completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  uRLByDeletingLastPathComponent = [l URLByDeletingLastPathComponent];
  v27 = *MEMORY[0x1E696D190];
  v28[0] = uRLByDeletingLastPathComponent;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v9 = PLImportGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PHImportAsset *)self uuid];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHImportAsset resourceType](self, "resourceType")}];
    v22 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v13 = PHDescriptionsForResourceTypes(v12);
    v14 = [v13 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v24 = uuid;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "REQUESTING DOWNLOAD: asset: %@, %@", buf, 0x16u);
  }

  cameraFile = self->_cameraFile;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__PHImportDeviceAsset_copyToURL_completionHandler___block_invoke;
  v19[3] = &unk_1E75A7628;
  v19[4] = self;
  v20 = uRLByDeletingLastPathComponent;
  v21 = handlerCopy;
  v16 = handlerCopy;
  v17 = uRLByDeletingLastPathComponent;
  v18 = [(ICCameraFile *)cameraFile requestDownloadWithOptions:v8 completion:v19];
}

void __51__PHImportDeviceAsset_copyToURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [PHImportException alloc];
    v8 = MEMORY[0x1E696AEC0];
    v9 = [*(*(a1 + 32) + 384) originalFilename];
    v10 = [*(*(a1 + 32) + 384) name];
    v11 = [v8 stringWithFormat:@"%@ (%@)", v9, v10];
    v12 = [(PHImportException *)v7 initWithType:0 path:v11 underlyingError:v6 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportDeviceAsset.m" line:517];
  }

  else
  {
    if (v5)
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        v14 = [v13 URLByAppendingPathComponent:v5];
        v12 = 0;
        goto LABEL_10;
      }

      v15 = @"ICDownloadsDirectoryURL";
    }

    else
    {
      v15 = @"ICSavedFilename";
    }

    v16 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"Options is missing the '%@' key", v15}];
    v17 = [PHImportException alloc];
    v18 = [*(*(a1 + 32) + 384) name];
    v12 = [(PHImportException *)v17 initWithType:0 path:v18 underlyingError:v16 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportDeviceAsset.m" line:523];
  }

  v14 = 0;
LABEL_10:
  v19 = PLImportGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = [*(a1 + 32) uuid];
    v25 = v5;
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "resourceType")}];
    v26 = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v23 = PHDescriptionsForResourceTypes(v22);
    v24 = [v23 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v28 = v20;
    v29 = 2112;
    v30 = v24;
    _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEBUG, "FINISHED DOWNLOAD: asset: %@, %@", buf, 0x16u);

    v5 = v25;
  }

  (*(*(a1 + 48) + 16))();
}

- (NSArray)cameraFiles
{
  v3 = objc_opt_new();
  representedObject = [(PHImportDeviceAsset *)self representedObject];
  [v3 addObject:representedObject];

  largeRender = [(PHImportAsset *)self largeRender];

  if (largeRender)
  {
    largeRender2 = [(PHImportAsset *)self largeRender];
    cameraFiles = [largeRender2 cameraFiles];
    [v3 addObjectsFromArray:cameraFiles];
  }

  rawAsset = [(PHImportAsset *)self rawAsset];

  if (rawAsset)
  {
    rawAsset2 = [(PHImportAsset *)self rawAsset];
  }

  else
  {
    videoComplement = [(PHImportAsset *)self videoComplement];

    if (!videoComplement)
    {
      goto LABEL_8;
    }

    rawAsset2 = [(PHImportAsset *)self videoComplement];
  }

  v11 = rawAsset2;
  cameraFiles2 = [rawAsset2 cameraFiles];
  [v3 addObjectsFromArray:cameraFiles2];

LABEL_8:
  audioAsset = [(PHImportAsset *)self audioAsset];

  if (audioAsset)
  {
    audioAsset2 = [(PHImportAsset *)self audioAsset];
    cameraFiles3 = [audioAsset2 cameraFiles];
    [v3 addObjectsFromArray:cameraFiles3];
  }

  adjustmentSidecar = [(PHImportAsset *)self adjustmentSidecar];
  if (adjustmentSidecar || ([(PHImportAsset *)self slmSidecar], (adjustmentSidecar = objc_claimAutoreleasedReturnValue()) != 0) || ([(PHImportAsset *)self xmpSidecar], (adjustmentSidecar = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = adjustmentSidecar;
    cameraFiles4 = [adjustmentSidecar cameraFiles];
    [v3 addObjectsFromArray:cameraFiles4];
  }

  originalAdjustmentSidecar = [(PHImportAsset *)self originalAdjustmentSidecar];
  v20 = originalAdjustmentSidecar;
  if (originalAdjustmentSidecar)
  {
    cameraFiles5 = [originalAdjustmentSidecar cameraFiles];
    [v3 addObjectsFromArray:cameraFiles5];
  }

  return v3;
}

- (void)thumbnailUsingRequest:(id)request atEnd:(id)end
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  endCopy = end;
  v8 = PLImportGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    redactedFileNameDescription = [(PHImportAsset *)self redactedFileNameDescription];
    *buf = 136315906;
    v17 = "[PHImportDeviceAsset thumbnailUsingRequest:atEnd:]";
    v18 = 2112;
    v19 = redactedFileNameDescription;
    v20 = 2048;
    longestSide = [requestCopy longestSide];
    v22 = 2048;
    v23 = requestCopy;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "%s - %@ (%lu), <%p>", buf, 0x2Au);
  }

  v10 = [(PHImportAsset *)self url];
  path = [v10 path];

  if (path)
  {
    v15.receiver = self;
    v15.super_class = PHImportDeviceAsset;
    [(PHImportAsset *)&v15 thumbnailUsingRequest:requestCopy atEnd:endCopy];
  }

  else
  {
    source = [(PHImportAsset *)self source];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__PHImportDeviceAsset_thumbnailUsingRequest_atEnd___block_invoke;
    v13[3] = &unk_1E75A7600;
    v13[4] = self;
    v14 = endCopy;
    [source fetchThumbnailDataUsingRequest:requestCopy withCompletion:v13];
  }
}

void __51__PHImportDeviceAsset_thumbnailUsingRequest_atEnd___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 requestAsset];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  if (v7)
  {
    v12 = v11;
    v44 = *MEMORY[0x1E696E118];
    v13 = [*MEMORY[0x1E6982E58] identifier];
    v45[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v15 = CGImageSourceCreateWithData(v7, v14);

    if (!v15)
    {
      goto LABEL_22;
    }

    v16 = *MEMORY[0x1E696DFF0];
    v42[0] = *MEMORY[0x1E696E000];
    v42[1] = v16;
    v43[0] = MEMORY[0x1E695E118];
    v43[1] = MEMORY[0x1E695E118];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v15, 0, v17);

    if (ThumbnailAtIndex)
    {
      v19 = CFAutorelease(ThumbnailAtIndex);
      [v10 exifPixelSize];
      v22 = v21;
      v23 = v20;
      if (v21 == *MEMORY[0x1E695F060] && v20 == *(MEMORY[0x1E695F060] + 8))
      {
        v24 = PLImportGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [v10 redactedFileNameDescription];
          v36 = 138543362;
          v37 = v25;
          _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_ERROR, "zero image size for %{public}@", &v36, 0xCu);
        }
      }

      [*(a1 + 32) removeBlackBarsFromExifThumbnail:v19 fullSize:{v22, v23}];
      v26 = PLImportGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [v10 redactedFileNameDescription];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v36 = 138543618;
        v37 = v27;
        v38 = 2048;
        v39 = v28 - v12;
        _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEBUG, "Time to make thumbnail for %{public}@: %g", &v36, 0x16u);
      }
    }

    else
    {
      if ([v8 isCanceled])
      {
LABEL_21:
        CFRelease(v15);
        goto LABEL_22;
      }

      v26 = PLImportGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v33 = [v10 redactedFileNameDescription];
        v34 = v33;
        *&v35 = COERCE_DOUBLE(@"Unknown reason");
        if (v9)
        {
          v35 = v9;
        }

        v36 = 138543618;
        v37 = v33;
        v38 = 2112;
        v39 = *&v35;
        _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_ERROR, "Didn't get a thumbnail for %{public}@ (%@).", &v36, 0x16u);
      }
    }

    goto LABEL_21;
  }

  v29 = PLImportGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = [*(a1 + 32) source];
    v31 = [v30 name];
    [v10 redactedFileNameDescription];
    v32 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v36 = 138412802;
    v37 = v31;
    v38 = 2114;
    v39 = v32;
    v40 = 2048;
    v41 = v8;
    _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_ERROR, "%@ returned nil image data for %{public}@ <%p>", &v36, 0x20u);
  }

LABEL_22:
  (*(*(a1 + 40) + 16))();
}

- (void)loadMetadataAsync:(id)async
{
  v19 = *MEMORY[0x1E69E9840];
  asyncCopy = async;
  v5 = PLImportGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    fileName = [(PHImportAsset *)self fileName];
    *buf = 136315394;
    v16 = "[PHImportDeviceAsset loadMetadataAsync:]";
    v17 = 2112;
    v18 = fileName;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "%s - %@", buf, 0x16u);
  }

  metadata = [(PHImportAsset *)self metadata];

  if (metadata)
  {
    if (asyncCopy)
    {
      asyncCopy[2](asyncCopy);
    }
  }

  else
  {
    v8 = [(PHImportAsset *)self url];
    path = [v8 path];

    if (path)
    {
      v14.receiver = self;
      v14.super_class = PHImportDeviceAsset;
      [(PHImportAsset *)&v14 loadMetadataAsync:asyncCopy];
    }

    else
    {
      v10 = [(PHImportAssetDataRequest *)[PHImportAssetMetadataRequest alloc] initWithAsset:self];
      [(PHImportAssetDataRequest *)v10 setAsset:self];
      source = [(PHImportAsset *)self source];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __41__PHImportDeviceAsset_loadMetadataAsync___block_invoke;
      v12[3] = &unk_1E75A75D8;
      v13 = asyncCopy;
      [source fetchMetadataUsingRequest:v10 withCompletion:v12];
    }
  }
}

uint64_t __41__PHImportDeviceAsset_loadMetadataAsync___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadMetadataSync
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__PHImportDeviceAsset_loadMetadataSync__block_invoke;
  v8[3] = &unk_1E75AB270;
  v4 = v3;
  v9 = v4;
  [(PHImportDeviceAsset *)self loadMetadataAsync:v8];
  v5 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    v6 = PLImportGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      redactedFileNameDescription = [(PHImportAsset *)self redactedFileNameDescription];
      *buf = 138543362;
      v11 = redactedFileNameDescription;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Timed out getting metadata for %{public}@ from ImageCapture", buf, 0xCu);
    }
  }
}

- (id)createMetadataFromProperties:(id)properties
{
  v22 = *MEMORY[0x1E69E9840];
  if (properties)
  {
    v4 = [properties mutableCopy];
    if (![(PHImportDeviceAsset *)self containsDateKey:v4])
    {
      exifCreationDate = [(ICCameraFile *)self->_cameraFile exifCreationDate];
      fileCreationDate = exifCreationDate;
      if (!exifCreationDate)
      {
        fileCreationDate = [(ICCameraFile *)self->_cameraFile fileCreationDate];
      }

      localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
      v8 = PFStringFromDateTimeZoneFormat();

      if (!exifCreationDate)
      {
      }

      if (v8)
      {
        [v4 setObject:v8 forKey:*MEMORY[0x1E696DF20]];
      }
    }

    if ([(PHImportAsset *)self isImage])
    {
      v9 = objc_alloc(MEMORY[0x1E69C0718]);
      contentType = [(PHImportAsset *)self contentType];
      source = [(PHImportAsset *)self source];
      timeZoneLookup = [source timeZoneLookup];
      v13 = [v9 initWithImageProperties:v4 contentType:contentType timeZoneLookup:timeZoneLookup];
LABEL_16:
      v16 = v13;

      goto LABEL_21;
    }

    if ([(PHImportAsset *)self isMovie])
    {
      v15 = objc_alloc(MEMORY[0x1E69C0718]);
      contentType = [(PHImportAsset *)self contentType];
      source = [(PHImportAsset *)self source];
      timeZoneLookup = [source timeZoneLookup];
      v13 = [v15 initWithImageCaptureMovieProperties:v4 contentType:contentType timeZoneLookup:timeZoneLookup];
      goto LABEL_16;
    }

    v17 = PLImportGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      redactedFileNameDescription = [(PHImportAsset *)self redactedFileNameDescription];
      v20 = 138543362;
      v21 = redactedFileNameDescription;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "Unexpected asset type for ICC properties (%{public}@)", &v20, 0xCu);
    }
  }

  else
  {
    v4 = PLImportGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      redactedFileNameDescription2 = [(PHImportAsset *)self redactedFileNameDescription];
      v20 = 138543362;
      v21 = redactedFileNameDescription2;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Didn't get metadata for %{public}@", &v20, 0xCu);
    }
  }

  v16 = 0;
LABEL_21:

  return v16;
}

- (id)durationTimeInterval
{
  [(ICCameraFile *)self->_cameraFile duration];
  if (v3 == 0.0)
  {
    v7.receiver = self;
    v7.super_class = PHImportDeviceAsset;
    durationTimeInterval = [(PHImportAsset *)&v7 durationTimeInterval];
  }

  else
  {
    v4 = MEMORY[0x1E696AD98];
    [(ICCameraFile *)self->_cameraFile duration];
    durationTimeInterval = [v4 numberWithDouble:?];
  }

  return durationTimeInterval;
}

- (id)spatialOverCaptureIdentifier
{
  spatialOverCaptureGroupID = [(ICCameraFile *)self->_cameraFile spatialOverCaptureGroupID];
  if (!spatialOverCaptureGroupID)
  {
    v5.receiver = self;
    v5.super_class = PHImportDeviceAsset;
    spatialOverCaptureGroupID = [(PHImportAsset *)&v5 spatialOverCaptureIdentifier];
  }

  return spatialOverCaptureGroupID;
}

- (id)livePhotoPairingIdentifier
{
  groupUUID = [(ICCameraFile *)self->_cameraFile groupUUID];
  if (!groupUUID)
  {
    v5.receiver = self;
    v5.super_class = PHImportDeviceAsset;
    groupUUID = [(PHImportAsset *)&v5 livePhotoPairingIdentifier];
  }

  return groupUUID;
}

- (int)burstPickType
{
  result = [(PHImportAsset *)self isBurst];
  if (result)
  {
    if ([(ICCameraFile *)self->_cameraFile burstFavorite])
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    if ([(ICCameraFile *)self->_cameraFile burstPicked])
    {
      v4 |= 4u;
    }

    firstPicked = [(ICCameraFile *)self->_cameraFile firstPicked];
    v6 = v4 | 0x20;
    if (!firstPicked)
    {
      v6 = v4;
    }

    if (v6)
    {
      return v6;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (id)burstUUID
{
  if ([(PHImportAsset *)self isImage])
  {
    v5.receiver = self;
    v5.super_class = PHImportDeviceAsset;
    burstUUID = [(PHImportAsset *)&v5 burstUUID];
    if (!burstUUID)
    {
      burstUUID = [(ICCameraFile *)self->_cameraFile burstUUID];
    }
  }

  else
  {
    burstUUID = 0;
  }

  return burstUUID;
}

- (CGSize)orientedPixelSize
{
  orientation = [(PHImportDeviceAsset *)self orientation];
  [(PHImportDeviceAsset *)self exifPixelSize];

  MEMORY[0x1EEE29960](orientation);
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)exifPixelSize
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(ICCameraFile *)self->_cameraFile width]&& [(ICCameraFile *)self->_cameraFile height])
  {
    orientation = [(ICCameraFile *)self->_cameraFile orientation];
    cameraFile = self->_cameraFile;
    if (orientation < ICEXIFOrientation5)
    {
      width = [(ICCameraFile *)cameraFile width];
      height = [(ICCameraFile *)self->_cameraFile height];
    }

    else
    {
      width = [(ICCameraFile *)cameraFile height];
      height = [(ICCameraFile *)self->_cameraFile width];
    }

    v9 = height;
  }

  else
  {
    v7 = PLImportGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      redactedFileNameDescription = [(PHImportAsset *)self redactedFileNameDescription];
      *buf = 138543362;
      v14 = redactedFileNameDescription;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "ICCameraFile for %{public}@ has a zero width/height", buf, 0xCu);
    }

    v12.receiver = self;
    v12.super_class = PHImportDeviceAsset;
    [(PHImportAsset *)&v12 exifPixelSize];
    width = v10;
  }

  v11 = width;
  result.height = v9;
  result.width = v11;
  return result;
}

- (unsigned)orientation
{
  result = [(ICCameraFile *)self->_cameraFile orientation];
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = PHImportDeviceAsset;
    return [(PHImportAsset *)&v4 orientation];
  }

  return result;
}

- (id)creationDate
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = PLImportGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    redactedFileNameDescription = [(PHImportAsset *)self redactedFileNameDescription];
    metadata = [(PHImportAsset *)self metadata];
    v14.receiver = self;
    v14.super_class = PHImportDeviceAsset;
    creationDate = [(PHImportAsset *)&v14 creationDate];
    creationDate2 = [(ICCameraFile *)self->_cameraFile creationDate];
    *buf = 138413058;
    v16 = redactedFileNameDescription;
    v17 = 2048;
    v18 = metadata;
    v19 = 2112;
    v20 = creationDate;
    v21 = 2112;
    v22 = creationDate2;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "Getting creation date from ICCameraFile for '%@': super.creationDate (_metadata == %p): %@, creationDate: %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = PHImportDeviceAsset;
  creationDate3 = [(PHImportAsset *)&v13 creationDate];
  v9 = creationDate3;
  if (creationDate3)
  {
    creationDate4 = creationDate3;
  }

  else
  {
    creationDate4 = [(ICCameraFile *)self->_cameraFile creationDate];
  }

  v11 = creationDate4;

  return v11;
}

- (id)securityScopedURL
{
  v35 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__25210;
  v29 = __Block_byref_object_dispose__25211;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__25210;
  v23 = __Block_byref_object_dispose__25211;
  v24 = 0;
  if (objc_opt_respondsToSelector())
  {
    v3 = dispatch_semaphore_create(0);
    cameraFile = self->_cameraFile;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __40__PHImportDeviceAsset_securityScopedURL__block_invoke;
    v15[3] = &unk_1E75A8040;
    v17 = &v25;
    v18 = &v19;
    v5 = v3;
    v16 = v5;
    [(ICCameraFile *)cameraFile requestSecurityScopedURLWithCompletion:v15];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (!v26[5] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = [(ICCameraFile *)self->_cameraFile valueForKey:@"fileSystemPath"];
    v8 = [v6 fileURLWithPath:v7];
    v9 = v26[5];
    v26[5] = v8;
  }

  v10 = v26[5];
  if (!v10)
  {
    v11 = PLImportGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = v20[5];
      *buf = 138412546;
      selfCopy = self;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "Failed to get a security-scoped URL for %@ (Error: %@)", buf, 0x16u);
    }

    v10 = v26[5];
  }

  v13 = v10;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v13;
}

void __40__PHImportDeviceAsset_securityScopedURL__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)isViewable
{
  if ([(PHImportAsset *)self isImage])
  {
    return 1;
  }

  v3 = [(PHImportAsset *)self url];
  path = [v3 path];

  if (!path)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = PHImportDeviceAsset;
  return [(PHImportAsset *)&v6 isViewable];
}

- (BOOL)performAdditionalLivePhotoChecksWithImageAsset:(id)asset
{
  assetCopy = asset;
  device = [(ICCameraFile *)self->_cameraFile device];
  isAppleDevice = [device isAppleDevice];

  if (isAppleDevice)
  {
    representedObject = [assetCopy representedObject];
    sidecarFiles = [representedObject sidecarFiles];
    if ([sidecarFiles containsObject:self->_cameraFile])
    {
      v9 = 1;
    }

    else
    {
      sidecarFiles2 = [(ICCameraFile *)self->_cameraFile sidecarFiles];
      representedObject2 = [assetCopy representedObject];
      v9 = [sidecarFiles2 containsObject:representedObject2];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isBase
{
  v3.receiver = self;
  v3.super_class = PHImportDeviceAsset;
  return [(PHImportAsset *)&v3 isBase];
}

- (BOOL)isSpatialOverCapture
{
  spatialOverCaptureGroupID = [(ICCameraFile *)self->_cameraFile spatialOverCaptureGroupID];
  if (spatialOverCaptureGroupID)
  {
    v6.receiver = self;
    v6.super_class = PHImportDeviceAsset;
    isSpatialOverCapture = [(PHImportAsset *)&v6 isSpatialOverCapture];
  }

  else
  {
    isSpatialOverCapture = 0;
  }

  return isSpatialOverCapture;
}

- (BOOL)isRender
{
  source = [(PHImportAsset *)self source];
  isAppleDevice = [source isAppleDevice];
  if (isAppleDevice && ([(ICCameraFile *)self->_cameraFile relatedUUID], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    isRender = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PHImportDeviceAsset;
    isRender = [(PHImportAsset *)&v8 isRender];
    if (!isAppleDevice)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  return isRender;
}

- (BOOL)isSloMo
{
  if (![(PHImportAsset *)self isMovie])
  {
    return 0;
  }

  highFramerate = [(ICCameraFile *)self->_cameraFile highFramerate];
  device = [(ICCameraFile *)self->_cameraFile device];
  productVersion = [device productVersion];

  if (!highFramerate && productVersion)
  {
    if ([productVersion intValue] > 7)
    {
      highFramerate = 0;
    }

    else
    {
      [(PHImportAsset *)self loadSidecarFiles];
      slmSidecar = [(PHImportAsset *)self slmSidecar];
      highFramerate = slmSidecar != 0;
    }
  }

  return highFramerate;
}

- (BOOL)hasAudioAttachment
{
  [(PHImportAsset *)self loadSidecarFiles];
  v4.receiver = self;
  v4.super_class = PHImportDeviceAsset;
  return [(PHImportAsset *)&v4 hasAudioAttachment];
}

- (BOOL)isLivePhoto
{
  [(PHImportAsset *)self loadSidecarFiles];
  v4.receiver = self;
  v4.super_class = PHImportDeviceAsset;
  return [(PHImportAsset *)&v4 isLivePhoto];
}

- (BOOL)canDelete
{
  if (([(ICCameraFile *)self->_cameraFile isLocked]& 1) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    device = [(ICCameraFile *)self->_cameraFile device];
    v3 = [device iCloudPhotosEnabled] ^ 1;
  }

  return v3;
}

- (id)parentFolderPath
{
  parentFolder = [(ICCameraFile *)self->_cameraFile parentFolder];
  name = [parentFolder name];

  return name;
}

- (BOOL)containsDateKey:(id)key
{
  keyCopy = key;
  v4 = [keyCopy objectForKey:*MEMORY[0x1E696D9B0]];
  v5 = [keyCopy objectForKey:*MEMORY[0x1E696DF28]];
  v6 = v5;
  v7 = *MEMORY[0x1E696DF20];
  if (v4)
  {
    v8 = [v4 objectForKey:*MEMORY[0x1E696DF20]];
    if (!v8)
    {
      v9 = [v4 objectForKey:v7];
      if (!v9)
      {
        v10 = [v4 objectForKey:*MEMORY[0x1E696D998]];
        if (!v10)
        {
          v11 = *MEMORY[0x1E696D990];
          v12 = v4;
LABEL_18:
          v14 = [v12 objectForKey:v11];
          v13 = v14 != 0;

          v10 = 0;
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  else if (v5)
  {
    v8 = [v5 objectForKey:*MEMORY[0x1E696DF20]];
    if (!v8)
    {
      v9 = [v6 objectForKey:v7];
      if (!v9)
      {
        v10 = [v6 objectForKey:*MEMORY[0x1E696D998]];
        if (!v10)
        {
          v11 = *MEMORY[0x1E696D990];
          v12 = v6;
          goto LABEL_18;
        }

LABEL_16:
        v13 = 1;
LABEL_19:

        v9 = 0;
        goto LABEL_20;
      }

LABEL_14:
      v13 = 1;
LABEL_20:

      v8 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v8 = [keyCopy objectForKey:*MEMORY[0x1E696DF20]];
    if (!v8)
    {
      v9 = [keyCopy objectForKey:v7];
      if (!v9)
      {
        v10 = [keyCopy objectForKey:*MEMORY[0x1E696D998]];
        if (!v10)
        {
          v11 = *MEMORY[0x1E696D990];
          v12 = keyCopy;
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  v13 = 1;
LABEL_21:

  return v13;
}

- (id)makeImportIdentifier
{
  relatedUUID = [(ICCameraFile *)self->_cameraFile relatedUUID];
  if (!relatedUUID)
  {
    fileName = [(PHImportAsset *)self fileName];
    relatedUUID = [fileName stringByDeletingPathExtension];

    if ([(PHImportAsset *)self isRepresentation]|| [(PHImportAsset *)self isOriginalAdjustmentData]|| [(PHImportAsset *)self isAdjustmentSecondaryData])
    {
      v5 = [(PHImportAsset *)self stripMarkerFromName:relatedUUID markerLocation:4];

      relatedUUID = v5;
    }

    parentFolderPath = [(PHImportDeviceAsset *)self parentFolderPath];

    if (parentFolderPath)
    {
      parentFolderPath2 = [(PHImportDeviceAsset *)self parentFolderPath];
      v8 = [parentFolderPath2 stringByAppendingPathComponent:relatedUUID];

      relatedUUID = v8;
    }
  }

  return relatedUUID;
}

- (PHImportDeviceAsset)initWithSource:(id)source cameraFile:(id)file type:(id)type supportedMediaType:(unsigned __int8)mediaType
{
  mediaTypeCopy = mediaType;
  fileCopy = file;
  typeCopy = type;
  v30.receiver = self;
  v30.super_class = PHImportDeviceAsset;
  v13 = [(PHImportAsset *)&v30 initWithSource:source];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_cameraFile, file);
    name = [fileCopy name];
    [(PHImportAsset *)v14 setFileName:name];

    createdFilename = [fileCopy createdFilename];
    [(PHImportAsset *)v14 setCreatedFileName:createdFilename];

    -[PHImportAsset setFileSize:](v14, "setFileSize:", [fileCopy fileSize]);
    fileCreationDate = [fileCopy fileCreationDate];
    if (fileCreationDate)
    {
      [(PHImportAsset *)v14 setFileCreationDate:fileCreationDate];
    }

    else
    {
      creationDate = [fileCopy creationDate];
      [(PHImportAsset *)v14 setFileCreationDate:creationDate];
    }

    fileModificationDate = [fileCopy fileModificationDate];
    if (fileModificationDate)
    {
      [(PHImportAsset *)v14 setFileModificationDate:fileModificationDate];
    }

    else
    {
      modificationDate = [fileCopy modificationDate];
      [(PHImportAsset *)v14 setFileModificationDate:modificationDate];
    }

    name2 = [fileCopy name];
    pathExtension = [name2 pathExtension];
    [(PHImportAsset *)v14 setFileExtension:pathExtension];

    v23 = [fileCopy UTI];
    v24 = [MEMORY[0x1E6982C40] typeWithIdentifier:v23];
    v25 = v24;
    if (typeCopy)
    {
      v26 = typeCopy;
    }

    else
    {
      v26 = v24;
    }

    if ([(PHImportAsset *)v14 configureWithContentType:v26 supportedMediaType:mediaTypeCopy])
    {
      uuid = [(PHImportAsset *)v14 uuid];
      userData = [fileCopy userData];
      [userData setObject:uuid forKeyedSubscript:@"uuid"];
    }

    else
    {
      uuid = v14;
      v14 = 0;
    }
  }

  return v14;
}

+ (void)validateCameraFile:(id)file
{
  v65 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v4 = PLImportGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v48 = "+[PHImportDeviceAsset validateCameraFile:]";
    v49 = 2112;
    v50 = fileCopy;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEBUG, "%s - %@", buf, 0x16u);
  }

  name = [fileCopy name];

  if (!name)
  {
    v16 = PLImportGetLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
LABEL_33:

      goto LABEL_34;
    }

    *buf = 0;
    v19 = "ERROR: name == nil";
    v20 = v16;
    v21 = 2;
LABEL_32:
    _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_DEBUG, v19, buf, v21);
    goto LABEL_33;
  }

  name2 = [fileCopy name];
  v7 = [PHValidator isSupportedImageAtPath:name2];

  if (v7)
  {
    if (![fileCopy width])
    {
      v8 = PLImportGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "ERROR: width == 0", buf, 2u);
      }
    }

    if (![fileCopy height])
    {
      v9 = PLImportGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "ERROR: height == 0", buf, 2u);
      }
    }
  }

  name3 = [fileCopy name];
  v11 = [PHValidator isSupportedMovieAtPath:name3];

  if (v11)
  {
    if (![fileCopy width])
    {
      v12 = PLImportGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "ERROR: width == 0", buf, 2u);
      }
    }

    if (![fileCopy height])
    {
      v13 = PLImportGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "ERROR: height == 0", buf, 2u);
      }
    }

    [fileCopy duration];
    if (v14 == 0.0)
    {
      v15 = PLImportGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "ERROR: duration == 0", buf, 2u);
      }
    }

    v16 = PLImportGetLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_33;
    }

    highFramerate = [fileCopy highFramerate];
    v18 = @"NO";
    if (highFramerate)
    {
      v18 = @"YES";
    }

    *buf = 138412290;
    v48 = v18;
    v19 = "highFramerate: %@";
    v20 = v16;
    v21 = 12;
    goto LABEL_32;
  }

LABEL_34:
  originalFilename = [fileCopy originalFilename];

  if (!originalFilename)
  {
    v23 = PLImportGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_DEBUG, "ERROR: originalFilename == nil", buf, 2u);
    }
  }

  createdFilename = [fileCopy createdFilename];

  if (!createdFilename)
  {
    v25 = PLImportGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEBUG, "INFO: createdFilename == nil", buf, 2u);
    }
  }

  if (![fileCopy fileSize])
  {
    v26 = PLImportGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEBUG, "ERROR: fileSize == 0", buf, 2u);
    }
  }

  creationDate = [fileCopy creationDate];

  if (!creationDate)
  {
    v28 = PLImportGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_DEBUG, "ERROR: creationDate == nil", buf, 2u);
    }
  }

  modificationDate = [fileCopy modificationDate];

  if (!modificationDate)
  {
    v30 = PLImportGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEBUG, "ERROR: modificationDate == nil", buf, 2u);
    }
  }

  v31 = [fileCopy UTI];

  if (!v31)
  {
    v32 = PLImportGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_DEBUG, "ERROR: UTI == nil", buf, 2u);
    }
  }

  parentFolder = [fileCopy parentFolder];

  if (!parentFolder)
  {
    v34 = PLImportGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_DEBUG, "ERROR: parentFolder == nil", buf, 2u);
    }
  }

  device = [fileCopy device];

  if (!device)
  {
    v36 = PLImportGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_DEBUG, "ERROR: device == nil", buf, 2u);
    }
  }

  v37 = PLImportGetLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    orientation = [fileCopy orientation];
    burstUUID = [fileCopy burstUUID];
    if ([fileCopy burstFavorite])
    {
      v39 = @"YES";
    }

    else
    {
      v39 = @"NO";
    }

    if ([fileCopy burstPicked])
    {
      v40 = @"YES";
    }

    else
    {
      v40 = @"NO";
    }

    if ([fileCopy firstPicked])
    {
      v41 = @"YES";
    }

    else
    {
      v41 = @"NO";
    }

    if ([fileCopy timeLapse])
    {
      v42 = @"YES";
    }

    else
    {
      v42 = @"NO";
    }

    originatingAssetID = [fileCopy originatingAssetID];
    groupUUID = [fileCopy groupUUID];
    relatedUUID = [fileCopy relatedUUID];
    *buf = 134220034;
    v48 = orientation;
    v49 = 2112;
    v50 = burstUUID;
    v51 = 2112;
    v52 = v39;
    v53 = 2112;
    v54 = v40;
    v55 = 2112;
    v56 = v41;
    v57 = 2112;
    v58 = v42;
    v59 = 2112;
    v60 = originatingAssetID;
    v61 = 2112;
    v62 = groupUUID;
    v63 = 2112;
    v64 = relatedUUID;
    _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_DEBUG, "orientation: %lu, burstUUID: %@, burstFavorite: %@, burstPicked: %@, firstPicked: %@, timeLapse: %@, originatingAssetID: %@, groupUUID: %@, relatedUUID: %@", buf, 0x5Cu);
  }
}

+ (id)assetFileForFile:(id)file source:(id)source
{
  fileCopy = file;
  sourceCopy = source;
  v7 = MEMORY[0x1E69C08F0];
  name = [fileCopy name];
  pathExtension = [name pathExtension];
  v10 = [v7 resourceModelTypeForFilenameExtension:pathExtension];

  v11 = [PHValidator mediaTypeForContentType:v10];
  if (v11 != 1)
  {
    v12 = v11;
    if (v11)
    {
LABEL_5:
      v15 = [[PHImportDeviceAsset alloc] initWithSource:sourceCopy cameraFile:fileCopy type:v10 supportedMediaType:v12];
      goto LABEL_7;
    }

    name2 = [fileCopy name];
    v14 = [PHImportAsset isValidAsSidecar:name2];

    if (v14)
    {
      v12 = 64;
      goto LABEL_5;
    }
  }

  v15 = 0;
LABEL_7:

  return v15;
}

@end