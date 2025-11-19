@interface PHPTPFormatConversionManager
- (BOOL)generatePosterFrameExportForVideoURL:(id)a3 outputData:(id *)a4 maximumSize:(CGSize)a5 error:(id *)a6;
- (BOOL)setupTemporaryDirectory;
- (PHPTPFormatConversionManager)init;
- (id)conversionResultForPTPAsset:(id)a3 sourceHints:(id)a4 forceLegacyConversion:(BOOL)a5 assetTypeLabel:(id)a6;
- (id)convertedAssetLivePhotoPairingIdentifierForOriginalIdentifier:(id)a3;
- (id)effectivePeerMediaCapabilites;
- (id)ptpAssetReaderForFormatConvertedPTPAsset:(id)a3 ofPhotosAsset:(id)a4 resourcePath:(id)a5 originalResourcePath:(id)a6;
- (id)requestForOriginalAtPath:(id)a3 isVideo:(BOOL)a4 imageDimensions:(CGSize)a5 originalPairingIdentifier:(id)a6;
- (id)requestForPath:(id)a3 isVideo:(BOOL)a4 imageDimensions:(CGSize)a5;
- (id)requestForRenderImagePath:(id)a3 imageDimensions:(CGSize)a4 outputFilename:(id)a5;
- (id)requestForRenderVideoPath:(id)a3 outputFilename:(id)a4;
- (id)sourceForPath:(id)a3 isVideo:(BOOL)a4 imageDimensions:(CGSize)a5;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PHPTPFormatConversionManager

- (id)effectivePeerMediaCapabilites
{
  v3 = [(PHPTPFormatConversionManager *)self peerSupportsTranscodeChoice];
  v4 = 24;
  if (v3)
  {
    v4 = 8;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (id)conversionResultForPTPAsset:(id)a3 sourceHints:(id)a4 forceLegacyConversion:(BOOL)a5 assetTypeLabel:(id)a6
{
  v7 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v7)
  {
    v13 = self->_legacyCapabilities;
  }

  else
  {
    v13 = [(PHPTPFormatConversionManager *)self effectivePeerMediaCapabilites];
  }

  v14 = v13;
  v15 = [PHPTPConversionHelper conversionResultForPTPAsset:v10 sourceHints:v11 withConversionManager:self->_mediaFormatConversionManager peerCapabilities:v13];
  v16 = PLPTPGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v10 resourceHandle];
    v18 = [v17 localIdentifier];
    v20 = 138543874;
    v21 = v18;
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v15;
    _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEBUG, "Media conversion result for asset %{public}@ (%{public}@): %{public}@", &v20, 0x20u);
  }

  return v15;
}

- (void)invalidate
{
  v2 = [(PHPTPFormatConversionManager *)self mediaFormatConversionManager];
  [v2 invalidate];
}

- (BOOL)generatePosterFrameExportForVideoURL:(id)a3 outputData:(id *)a4 maximumSize:(CGSize)a5 error:(id *)a6
{
  height = a5.height;
  width = a5.width;
  v10 = MEMORY[0x1E69AE878];
  v11 = *MEMORY[0x1E6982E58];
  v12 = a3;
  v13 = [v11 identifier];
  LOBYTE(a6) = [v10 generatePosterFrameExportForVideoURL:v12 outputData:a4 maximumSize:v13 outputFileType:a6 error:{width, height}];

  return a6;
}

- (id)convertedAssetLivePhotoPairingIdentifierForOriginalIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHPTPFormatConversionManager *)self convertedLivePhotoPairingIdentifiersByOriginalIdentifiers];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v7 UUIDString];

    v8 = [(PHPTPFormatConversionManager *)self convertedLivePhotoPairingIdentifiersByOriginalIdentifiers];
    [v8 setObject:v6 forKeyedSubscript:v4];

    v9 = PLPTPGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "Cached converted live photo UUID %@ -> %@", &v12, 0x16u);
    }
  }

  v10 = PLPTPGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "Using converted live photo UUID %@ -> %@", &v12, 0x16u);
  }

  return v6;
}

- (id)sourceForPath:(id)a3 isVideo:(BOOL)a4 imageDimensions:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3 isDirectory:0];
  if (v7)
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

- (id)requestForPath:(id)a3 isVideo:(BOOL)a4 imageDimensions:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [(PHPTPFormatConversionManager *)self sourceForPath:v9 isVideo:v7 imageDimensions:width, height];
  v11 = MEMORY[0x1E69AE8A0];
  v12 = [(PHPTPFormatConversionManager *)self effectivePeerMediaCapabilites];
  v17 = 0;
  v13 = [v11 requestForSource:v10 destinationCapabilities:v12 error:&v17];
  v14 = v17;

  if (!v13)
  {
    v15 = PLPTPGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v9;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Unable to create request for path %@: %{public}@", buf, 0x16u);
    }
  }

  return v13;
}

- (id)requestForRenderVideoPath:(id)a3 outputFilename:(id)a4
{
  v6 = a4;
  v7 = [(PHPTPFormatConversionManager *)self requestForPath:a3 isVideo:1 imageDimensions:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v8 = v7;
  if (v7)
  {
    [v7 setOutputFilename:v6];
    [v8 setLivePhotoPairingIdentifierBehavior:1];
    [v8 setShouldPadOutputFileToEstimatedLength:1];
  }

  return v8;
}

- (id)requestForRenderImagePath:(id)a3 imageDimensions:(CGSize)a4 outputFilename:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = [(PHPTPFormatConversionManager *)self requestForPath:a3 isVideo:0 imageDimensions:width, height];
  v11 = v10;
  if (v10)
  {
    [v10 setOutputFilename:v9];
    [v11 setLivePhotoPairingIdentifierBehavior:1];
    [v11 setShouldPadOutputFileToEstimatedLength:1];
  }

  return v11;
}

- (id)requestForOriginalAtPath:(id)a3 isVideo:(BOOL)a4 imageDimensions:(CGSize)a5 originalPairingIdentifier:(id)a6
{
  height = a5.height;
  width = a5.width;
  v8 = a4;
  v11 = a6;
  v12 = [(PHPTPFormatConversionManager *)self requestForPath:a3 isVideo:v8 imageDimensions:width, height];
  if (v12)
  {
    if (v11)
    {
      v13 = [(PHPTPFormatConversionManager *)self convertedAssetLivePhotoPairingIdentifierForOriginalIdentifier:v11];
      [v12 setLivePhotoPairingIdentifier:v13];
      [v12 setLivePhotoPairingIdentifierBehavior:4];
    }

    [v12 setShouldPadOutputFileToEstimatedLength:1];
  }

  return v12;
}

- (id)ptpAssetReaderForFormatConvertedPTPAsset:(id)a3 ofPhotosAsset:(id)a4 resourcePath:(id)a5 originalResourcePath:(id)a6
{
  v62 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (![(PHPTPFormatConversionManager *)self initialized])
  {
    v17 = PLPTPGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      *buf = 138543362;
      v57 = v25;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "Ignoring request %{public}@ to conversion manager in failed state", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v15 = [v11 isMovie];
  v16 = [v12 ptpProperties];
  v17 = [v16 livePhotoPairingIdentifier];

  v18 = [v12 ptpProperties];
  v19 = [v18 originalWidth];
  v20 = [v12 ptpProperties];
  v21 = [v20 originalHeight];

  v22 = [v11 resourceHandle];
  v23 = [v22 resourceType];

  if (v23 > 100)
  {
    v24 = v15;
    if ((v23 - 101) >= 0x13)
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
      v59 = v23;
      _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "Ignoring conversion request %{public}@ for unknown asset type %ld", buf, 0x16u);
    }

    v26 = 0;
    goto LABEL_22;
  }

  if (v23 <= 6)
  {
    if ((v23 - 3) < 2)
    {
      goto LABEL_19;
    }

    if (v23 == 5)
    {
      v35 = [(PHPTPFormatConversionManager *)self requestForOriginalAtPath:v14 isVideo:0 imageDimensions:v17 originalPairingIdentifier:v19, v21];
      [v11 imagePixSize];
      v37 = v36;
      v39 = v38;
      v40 = [v11 filename];
      v41 = [(PHPTPFormatConversionManager *)self requestForRenderImagePath:v13 imageDimensions:v40 outputFilename:v37, v39];

      v55 = 0;
      v28 = v35;
      v29 = [MEMORY[0x1E69AE890] chainedRequestForAdjustmentRenderRequest:v41 dependingOnRequest:v35 error:&v55];
      v42 = v55;
      if (!v29)
      {
        v50 = v41;
        v52 = v42;
        v43 = v28;
        v44 = PLPTPGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v57 = v13;
          v58 = 2114;
          v59 = v52;
          _os_log_impl(&dword_19C86F000, v44, OS_LOG_TYPE_ERROR, "Unable to create request for path %@: %{public}@", buf, 0x16u);
        }

        v28 = v43;
        v41 = v50;
        v42 = v52;
      }
    }

    else
    {
      v24 = v15;
      if (v23 != 6)
      {
        goto LABEL_28;
      }

      v28 = [v11 filename];
      v29 = [(PHPTPFormatConversionManager *)self requestForRenderVideoPath:v13 outputFilename:v28];
    }

    goto LABEL_39;
  }

  v24 = v15;
  if (v23 <= 0x14)
  {
    if (((1 << v23) & 0x71D80) == 0)
    {
      if (((1 << v23) & 0x18E000) == 0)
      {
        v24 = v15;
        if (v23 == 9)
        {
          v24 = 1;
        }

        goto LABEL_28;
      }

      v27 = PLPTPGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v57 = v23;
        _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_DEBUG, "Unsupported resource type %ld", buf, 0xCu);
      }
    }

    goto LABEL_19;
  }

LABEL_28:
  v51 = [(PHPTPFormatConversionManager *)self requestForOriginalAtPath:v13 isVideo:v24 imageDimensions:v17 originalPairingIdentifier:v19, v21];
  v32 = [v11 resourceHandle];
  v33 = [v32 requiresConversion];

  if (v33)
  {
    [v51 setForceFormatConversion:1];
  }

  if (v15)
  {
    v34 = [(PHPTPFormatConversionManager *)self mediaFormatConversionManager];
    v29 = v51;
    [v34 preflightConversionRequest:v51];

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
  v46 = [(PHPTPFormatConversionManager *)self mediaFormatConversionManager];
  [v46 enqueueConversionRequest:v30 completionHandler:v45];

  if (([v30 requiresSinglePassVideoConversion]& 1) != 0 || (dispatch_block_wait(v45, 0xFFFFFFFFFFFFFFFFLL), [v30 status]== 4))
  {
    v47 = [PHPTPConversionDestinationAssetReader alloc];
    v48 = [v30 destination];
    v26 = [(PHPTPConversionDestinationAssetReader *)v47 initWithDestination:v48];
  }

  else
  {
    v48 = PLPTPGetLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [v30 error];
      *buf = 138543874;
      v57 = v30;
      v58 = 2048;
      v59 = v23;
      v60 = 2114;
      v61 = v49;
      _os_log_impl(&dword_19C86F000, v48, OS_LOG_TYPE_ERROR, "Conversion request %{public}@ for asset type %ld failed: %{public}@", buf, 0x20u);
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
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
  v10 = 0;
  v5 = [v3 removeItemAtURL:v4 error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    v7 = PLPTPGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
      *buf = 138412546;
      v12 = v8;
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

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v27 = 0;
  v11 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
  v12 = [v11 path];
  v13 = [v10 fileExistsAtPath:v12 isDirectory:&v27];

  if (v13)
  {
    LODWORD(v14) = v27;
    v15 = PLPTPGetLog();
    v16 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
        *buf = 138412290;
        v29 = v17;
        LOBYTE(v14) = 1;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_INFO, "Conversion manager temporary directory path already exists: %@", buf, 0xCu);
      }

      goto LABEL_15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
      *buf = 138412290;
      v29 = v23;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Conversion manager temporary directory path exists but is not directory %@", buf, 0xCu);
    }

LABEL_14:
    LOBYTE(v14) = 0;
    goto LABEL_15;
  }

  v18 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
  v26 = 0;
  v19 = [v10 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v26];
  v16 = v26;

  v20 = PLPTPGetLog();
  v14 = v20;
  if (!v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
      *buf = 138412546;
      v29 = v24;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "Unable to create conversion manager temporary directory %@: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = [(PHPTPFormatConversionManager *)self temporaryDirectoryURL];
    v22 = [v21 path];
    *buf = 138412290;
    v29 = v22;
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
    v3 = [MEMORY[0x1E695DF90] dictionary];
    [(PHPTPFormatConversionManager *)v2 setConvertedLivePhotoPairingIdentifiersByOriginalIdentifiers:v3];

    v4 = objc_opt_new();
    [(PHPTPFormatConversionManager *)v2 setMediaFormatConversionManager:v4];

    if ([(PHPTPFormatConversionManager *)v2 setupTemporaryDirectory])
    {
      temporaryDirectoryURL = v2->_temporaryDirectoryURL;
      v6 = [(PHPTPFormatConversionManager *)v2 mediaFormatConversionManager];
      [v6 setDirectoryForTemporaryFiles:temporaryDirectoryURL];

      [(PHPTPFormatConversionManager *)v2 setInitialized:1];
      v2->_penultimateIsPublic = 0;
    }

    v7 = [MEMORY[0x1E69C0700] legacyCapabilities];
    legacyCapabilities = v2->_legacyCapabilities;
    v2->_legacyCapabilities = v7;
  }

  return v2;
}

@end