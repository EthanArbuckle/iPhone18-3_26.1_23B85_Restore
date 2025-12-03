@interface PHPTPFormatConversionManager
- (BOOL)generatePosterFrameExportForVideoURL:(id)l outputData:(id *)data maximumSize:(CGSize)size error:(id *)error;
- (BOOL)setupTemporaryDirectory;
- (PHPTPFormatConversionManager)init;
- (id)conversionResultForPTPAsset:(id)asset sourceHints:(id)hints forceLegacyConversion:(BOOL)conversion assetTypeLabel:(id)label;
- (id)convertedAssetLivePhotoPairingIdentifierForOriginalIdentifier:(id)identifier;
- (id)effectivePeerMediaCapabilites;
- (id)ptpAssetReaderForFormatConvertedPTPAsset:(id)asset ofPhotosAsset:(id)photosAsset resourcePath:(id)path originalResourcePath:(id)resourcePath;
- (id)requestForOriginalAtPath:(id)path isVideo:(BOOL)video imageDimensions:(CGSize)dimensions originalPairingIdentifier:(id)identifier;
- (id)requestForPath:(id)path isVideo:(BOOL)video imageDimensions:(CGSize)dimensions;
- (id)requestForRenderImagePath:(id)path imageDimensions:(CGSize)dimensions outputFilename:(id)filename;
- (id)requestForRenderVideoPath:(id)path outputFilename:(id)filename;
- (id)sourceForPath:(id)path isVideo:(BOOL)video imageDimensions:(CGSize)dimensions;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PHPTPFormatConversionManager

- (id)effectivePeerMediaCapabilites
{
  peerSupportsTranscodeChoice = [(PHPTPFormatConversionManager *)self peerSupportsTranscodeChoice];
  v4 = 24;
  if (peerSupportsTranscodeChoice)
  {
    v4 = 8;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (id)conversionResultForPTPAsset:(id)asset sourceHints:(id)hints forceLegacyConversion:(BOOL)conversion assetTypeLabel:(id)label
{
  conversionCopy = conversion;
  v26 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  hintsCopy = hints;
  labelCopy = label;
  if (conversionCopy)
  {
    effectivePeerMediaCapabilites = self->_legacyCapabilities;
  }

  else
  {
    effectivePeerMediaCapabilites = [(PHPTPFormatConversionManager *)self effectivePeerMediaCapabilites];
  }

  v14 = effectivePeerMediaCapabilites;
  v15 = [PHPTPConversionHelper conversionResultForPTPAsset:assetCopy sourceHints:hintsCopy withConversionManager:self->_mediaFormatConversionManager peerCapabilities:effectivePeerMediaCapabilites];
  v16 = PLPTPGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    resourceHandle = [assetCopy resourceHandle];
    localIdentifier = [resourceHandle localIdentifier];
    v20 = 138543874;
    v21 = localIdentifier;
    v22 = 2114;
    v23 = labelCopy;
    v24 = 2114;
    v25 = v15;
    _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEBUG, "Media conversion result for asset %{public}@ (%{public}@): %{public}@", &v20, 0x20u);
  }

  return v15;
}

- (void)invalidate
{
  mediaFormatConversionManager = [(PHPTPFormatConversionManager *)self mediaFormatConversionManager];
  [mediaFormatConversionManager invalidate];
}

- (BOOL)generatePosterFrameExportForVideoURL:(id)l outputData:(id *)data maximumSize:(CGSize)size error:(id *)error
{
  height = size.height;
  width = size.width;
  v10 = MEMORY[0x1E69AE878];
  v11 = *MEMORY[0x1E6982E58];
  lCopy = l;
  identifier = [v11 identifier];
  LOBYTE(error) = [v10 generatePosterFrameExportForVideoURL:lCopy outputData:data maximumSize:identifier outputFileType:error error:{width, height}];

  return error;
}

- (id)convertedAssetLivePhotoPairingIdentifierForOriginalIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  convertedLivePhotoPairingIdentifiersByOriginalIdentifiers = [(PHPTPFormatConversionManager *)self convertedLivePhotoPairingIdentifiersByOriginalIdentifiers];
  uUIDString = [convertedLivePhotoPairingIdentifiersByOriginalIdentifiers objectForKeyedSubscript:identifierCopy];

  if (!uUIDString)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    convertedLivePhotoPairingIdentifiersByOriginalIdentifiers2 = [(PHPTPFormatConversionManager *)self convertedLivePhotoPairingIdentifiersByOriginalIdentifiers];
    [convertedLivePhotoPairingIdentifiersByOriginalIdentifiers2 setObject:uUIDString forKeyedSubscript:identifierCopy];

    v9 = PLPTPGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = identifierCopy;
      v14 = 2112;
      v15 = uUIDString;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "Cached converted live photo UUID %@ -> %@", &v12, 0x16u);
    }
  }

  v10 = PLPTPGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = uUIDString;
    _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "Using converted live photo UUID %@ -> %@", &v12, 0x16u);
  }

  return uUIDString;
}

- (id)sourceForPath:(id)path isVideo:(BOOL)video imageDimensions:(CGSize)dimensions
{
  height = dimensions.height;
  width = dimensions.width;
  videoCopy = video;
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:path isDirectory:0];
  if (videoCopy)
  {
    [MEMORY[0x1E69AE8A8] videoSourceForFileURL:v8];
  }

  else
  {
    [MEMORY[0x1E69AE8A8] imageSourceForFileURL:v8 dimensions:{width, height}];
  }
  v9 = ;

  return v9;
}

- (id)requestForPath:(id)path isVideo:(BOOL)video imageDimensions:(CGSize)dimensions
{
  height = dimensions.height;
  width = dimensions.width;
  videoCopy = video;
  v22 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  height = [(PHPTPFormatConversionManager *)self sourceForPath:pathCopy isVideo:videoCopy imageDimensions:width, height];
  v11 = MEMORY[0x1E69AE8A0];
  effectivePeerMediaCapabilites = [(PHPTPFormatConversionManager *)self effectivePeerMediaCapabilites];
  v17 = 0;
  v13 = [v11 requestForSource:height destinationCapabilities:effectivePeerMediaCapabilites error:&v17];
  v14 = v17;

  if (!v13)
  {
    v15 = PLPTPGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = pathCopy;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Unable to create request for path %@: %{public}@", buf, 0x16u);
    }
  }

  return v13;
}

- (id)requestForRenderVideoPath:(id)path outputFilename:(id)filename
{
  filenameCopy = filename;
  v7 = [(PHPTPFormatConversionManager *)self requestForPath:path isVideo:1 imageDimensions:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v8 = v7;
  if (v7)
  {
    [v7 setOutputFilename:filenameCopy];
    [v8 setLivePhotoPairingIdentifierBehavior:1];
    [v8 setShouldPadOutputFileToEstimatedLength:1];
  }

  return v8;
}

- (id)requestForRenderImagePath:(id)path imageDimensions:(CGSize)dimensions outputFilename:(id)filename
{
  height = dimensions.height;
  width = dimensions.width;
  filenameCopy = filename;
  height = [(PHPTPFormatConversionManager *)self requestForPath:path isVideo:0 imageDimensions:width, height];
  v11 = height;
  if (height)
  {
    [height setOutputFilename:filenameCopy];
    [v11 setLivePhotoPairingIdentifierBehavior:1];
    [v11 setShouldPadOutputFileToEstimatedLength:1];
  }

  return v11;
}

- (id)requestForOriginalAtPath:(id)path isVideo:(BOOL)video imageDimensions:(CGSize)dimensions originalPairingIdentifier:(id)identifier
{
  height = dimensions.height;
  width = dimensions.width;
  videoCopy = video;
  identifierCopy = identifier;
  height = [(PHPTPFormatConversionManager *)self requestForPath:path isVideo:videoCopy imageDimensions:width, height];
  if (height)
  {
    if (identifierCopy)
    {
      v13 = [(PHPTPFormatConversionManager *)self convertedAssetLivePhotoPairingIdentifierForOriginalIdentifier:identifierCopy];
      [height setLivePhotoPairingIdentifier:v13];
      [height setLivePhotoPairingIdentifierBehavior:4];
    }

    [height setShouldPadOutputFileToEstimatedLength:1];
  }

  return height;
}

- (id)ptpAssetReaderForFormatConvertedPTPAsset:(id)asset ofPhotosAsset:(id)photosAsset resourcePath:(id)path originalResourcePath:(id)resourcePath
{
  v62 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  photosAssetCopy = photosAsset;
  pathCopy = path;
  resourcePathCopy = resourcePath;
  if (![(PHPTPFormatConversionManager *)self initialized])
  {
    livePhotoPairingIdentifier = PLPTPGetLog();
    if (os_log_type_enabled(livePhotoPairingIdentifier, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      *buf = 138543362;
      v57 = v25;
      _os_log_impl(&dword_19C86F000, livePhotoPairingIdentifier, OS_LOG_TYPE_ERROR, "Ignoring request %{public}@ to conversion manager in failed state", buf, 0xCu);
    }

    goto LABEL_7;
  }

  isMovie = [assetCopy isMovie];
  ptpProperties = [photosAssetCopy ptpProperties];
  livePhotoPairingIdentifier = [ptpProperties livePhotoPairingIdentifier];

  ptpProperties2 = [photosAssetCopy ptpProperties];
  originalWidth = [ptpProperties2 originalWidth];
  ptpProperties3 = [photosAssetCopy ptpProperties];
  originalHeight = [ptpProperties3 originalHeight];

  resourceHandle = [assetCopy resourceHandle];
  resourceType = [resourceHandle resourceType];

  if (resourceType > 100)
  {
    v24 = isMovie;
    if ((resourceType - 101) >= 0x13)
    {
      goto LABEL_28;
    }

LABEL_19:
    v30 = PLPTPGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v57 = 0;
      v58 = 2048;
      v59 = resourceType;
      _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "Ignoring conversion request %{public}@ for unknown asset type %ld", buf, 0x16u);
    }

    v26 = 0;
    goto LABEL_22;
  }

  if (resourceType <= 6)
  {
    if ((resourceType - 3) < 2)
    {
      goto LABEL_19;
    }

    if (resourceType == 5)
    {
      v35 = [(PHPTPFormatConversionManager *)self requestForOriginalAtPath:resourcePathCopy isVideo:0 imageDimensions:livePhotoPairingIdentifier originalPairingIdentifier:originalWidth, originalHeight];
      [assetCopy imagePixSize];
      v37 = v36;
      v39 = v38;
      filename = [assetCopy filename];
      v41 = [(PHPTPFormatConversionManager *)self requestForRenderImagePath:pathCopy imageDimensions:filename outputFilename:v37, v39];

      v55 = 0;
      filename2 = v35;
      v29 = [MEMORY[0x1E69AE890] chainedRequestForAdjustmentRenderRequest:v41 dependingOnRequest:v35 error:&v55];
      v42 = v55;
      if (!v29)
      {
        v50 = v41;
        v52 = v42;
        v43 = filename2;
        v44 = PLPTPGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v57 = pathCopy;
          v58 = 2114;
          v59 = v52;
          _os_log_impl(&dword_19C86F000, v44, OS_LOG_TYPE_ERROR, "Unable to create request for path %@: %{public}@", buf, 0x16u);
        }

        filename2 = v43;
        v41 = v50;
        v42 = v52;
      }
    }

    else
    {
      v24 = isMovie;
      if (resourceType != 6)
      {
        goto LABEL_28;
      }

      filename2 = [assetCopy filename];
      v29 = [(PHPTPFormatConversionManager *)self requestForRenderVideoPath:pathCopy outputFilename:filename2];
    }

    goto LABEL_39;
  }

  v24 = isMovie;
  if (resourceType <= 0x14)
  {
    if (((1 << resourceType) & 0x71D80) == 0)
    {
      if (((1 << resourceType) & 0x18E000) == 0)
      {
        v24 = isMovie;
        if (resourceType == 9)
        {
          v24 = 1;
        }

        goto LABEL_28;
      }

      v27 = PLPTPGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v57 = resourceType;
        _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }
    }

    goto LABEL_19;
  }

LABEL_28:
  v51 = [(PHPTPFormatConversionManager *)self requestForOriginalAtPath:pathCopy isVideo:v24 imageDimensions:livePhotoPairingIdentifier originalPairingIdentifier:originalWidth, originalHeight];
  resourceHandle2 = [assetCopy resourceHandle];
  requiresConversion = [resourceHandle2 requiresConversion];

  if (requiresConversion)
  {
    [v51 setForceFormatConversion:1];
  }

  if (isMovie)
  {
    mediaFormatConversionManager = [(PHPTPFormatConversionManager *)self mediaFormatConversionManager];
    v29 = v51;
    [mediaFormatConversionManager preflightConversionRequest:v51];

    [v51 enableSinglePassVideoEncodingWithUpdateHandler:&__block_literal_global_3587];
  }

  else
  {
    v29 = v51;
  }

LABEL_39:
  if (!v29)
  {
LABEL_7:
    v26 = 0;
    goto LABEL_23;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__PHPTPFormatConversionManager_ptpAssetReaderForFormatConvertedPTPAsset_ofPhotosAsset_resourcePath_originalResourcePath___block_invoke_64;
  block[3] = &unk_1E75AB270;
  v30 = v29;
  v54 = v30;
  v45 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  mediaFormatConversionManager2 = [(PHPTPFormatConversionManager *)self mediaFormatConversionManager];
  [mediaFormatConversionManager2 enqueueConversionRequest:v30 completionHandler:v45];

  if (([v30 requiresSinglePassVideoConversion]& 1) != 0 || (dispatch_block_wait(v45, 0xFFFFFFFFFFFFFFFFLL), [v30 status]== 4))
  {
    v47 = [PHPTPConversionDestinationAssetReader alloc];
    destination = [v30 destination];
    v26 = [(PHPTPConversionDestinationAssetReader *)v47 initWithDestination:destination];
  }

  else
  {
    destination = PLPTPGetLog();
    if (os_log_type_enabled(destination, OS_LOG_TYPE_ERROR))
    {
      error = [v30 error];
      *buf = 138543874;
      v57 = v30;
      v58 = 2048;
      v59 = resourceType;
      v60 = 2114;
      v61 = error;
      _os_log_impl(&dword_19C86F000, destination, OS_LOG_TYPE_ERROR, "Conversion request %{public}@ for asset type %ld failed: %{public}@", buf, 0x20u);
    }

    v26 = 0;
  }

LABEL_22:
LABEL_23:

  return v26;
}

void __121__PHPTPFormatConversionManager_ptpAssetReaderForFormatConvertedPTPAsset_ofPhotosAsset_resourcePath_originalResourcePath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = PLPTPGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134218242;
    v9 = a2;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "Single pass video conversion update, status: %ld, error: %{public}@", &v8, 0x16u);
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectoryURL = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
  v10 = 0;
  v5 = [defaultManager removeItemAtURL:temporaryDirectoryURL error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    v7 = PLPTPGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      temporaryDirectoryURL2 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
      *buf = 138412546;
      v12 = temporaryDirectoryURL2;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Unable to remove temporary directory %@: %{public}@", buf, 0x16u);
    }
  }

  v9.receiver = self;
  v9.super_class = PHPTPFormatConversionManager;
  [(PHPTPFormatConversionManager *)&v9 dealloc];
}

- (BOOL)setupTemporaryDirectory
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@-%d", v5, getpid()];

  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:v6];

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:1];
  [(PHPTPFormatConversionManager *)self setTemporaryDirectoryURL:v9];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v27 = 0;
  temporaryDirectoryURL = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
  path = [temporaryDirectoryURL path];
  v13 = [defaultManager fileExistsAtPath:path isDirectory:&v27];

  if (v13)
  {
    LODWORD(v14) = v27;
    v15 = PLPTPGetLog();
    v16 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        temporaryDirectoryURL2 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
        *buf = 138412290;
        v29 = temporaryDirectoryURL2;
        LOBYTE(v14) = 1;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_INFO, "Conversion manager temporary directory path already exists: %@", buf, 0xCu);
      }

      goto LABEL_15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      temporaryDirectoryURL3 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
      *buf = 138412290;
      v29 = temporaryDirectoryURL3;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Conversion manager temporary directory path exists but is not directory %@", buf, 0xCu);
    }

LABEL_14:
    LOBYTE(v14) = 0;
    goto LABEL_15;
  }

  temporaryDirectoryURL4 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
  v26 = 0;
  v19 = [defaultManager createDirectoryAtURL:temporaryDirectoryURL4 withIntermediateDirectories:1 attributes:0 error:&v26];
  v16 = v26;

  v20 = PLPTPGetLog();
  v14 = v20;
  if (!v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      temporaryDirectoryURL5 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
      *buf = 138412546;
      v29 = temporaryDirectoryURL5;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "Unable to create conversion manager temporary directory %@: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    temporaryDirectoryURL6 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
    path2 = [temporaryDirectoryURL6 path];
    *buf = 138412290;
    v29 = path2;
    _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_INFO, "Created conversion manager temporary directory %@", buf, 0xCu);
  }

  LOBYTE(v14) = 1;
LABEL_15:

  return v14;
}

- (PHPTPFormatConversionManager)init
{
  v10.receiver = self;
  v10.super_class = PHPTPFormatConversionManager;
  v2 = [(PHPTPFormatConversionManager *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(PHPTPFormatConversionManager *)v2 setConvertedLivePhotoPairingIdentifiersByOriginalIdentifiers:dictionary];

    v4 = objc_opt_new();
    [(PHPTPFormatConversionManager *)v2 setMediaFormatConversionManager:v4];

    if ([(PHPTPFormatConversionManager *)v2 setupTemporaryDirectory])
    {
      temporaryDirectoryURL = v2->_temporaryDirectoryURL;
      mediaFormatConversionManager = [(PHPTPFormatConversionManager *)v2 mediaFormatConversionManager];
      [mediaFormatConversionManager setDirectoryForTemporaryFiles:temporaryDirectoryURL];

      [(PHPTPFormatConversionManager *)v2 setInitialized:1];
      v2->_penultimateIsPublic = 0;
    }

    legacyCapabilities = [MEMORY[0x1E69C0700] legacyCapabilities];
    legacyCapabilities = v2->_legacyCapabilities;
    v2->_legacyCapabilities = legacyCapabilities;
  }

  return v2;
}

@end