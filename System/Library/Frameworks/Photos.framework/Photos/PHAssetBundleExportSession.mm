@interface PHAssetBundleExportSession
- (PHAssetBundleExportSession)initWithAsset:(id)asset withAssetExportRequestFileURLs:(id)ls;
- (id)_createAssetBundleFromAsset:(id)asset withFileURLs:(id)ls atURL:(id)l withError:(id *)error;
- (id)_filenameBaseForAsset:(id)asset;
- (void)writeToDirectoryURL:(id)l completionHandler:(id)handler;
@end

@implementation PHAssetBundleExportSession

- (id)_createAssetBundleFromAsset:(id)asset withFileURLs:(id)ls atURL:(id)l withError:(id *)error
{
  v132[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  lsCopy = ls;
  lCopy = l;
  selfCopy = self;
  v104 = [(PHAssetBundleExportSession *)self _filenameBaseForAsset:assetCopy];
  [assetCopy fetchPropertySetsIfNeeded];
  v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v104, *MEMORY[0x1E69C09A8]];
  v12 = [lCopy URLByAppendingPathComponent:v103];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v118 = 0;
  path = [lCopy path];
  v14 = [defaultManager fileExistsAtPath:path isDirectory:&v118];

  if (!v14 || (v118 & 1) == 0)
  {
    lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"The output directory URL (%@) is missing or is not a directory.", lCopy];
    v16 = MEMORY[0x1E696ABC0];
    v131 = *MEMORY[0x1E696A578];
    v132[0] = lCopy;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:&v131 count:1];
    v18 = [v16 errorWithDomain:@"com.apple.mobileslideshow.sharing" code:1 userInfo:v17];

    if (error)
    {
      v19 = v18;
      *error = v18;

      v20 = 0;
      goto LABEL_64;
    }
  }

  if (!v12)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PHAssetBundleExportSession.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"bundleURL"}];
  }

  v117 = 0;
  path2 = [v12 path];
  v22 = [defaultManager fileExistsAtPath:path2 isDirectory:&v117];

  if ((v22 & 1) != 0 || v117 == 1)
  {
    [defaultManager removeItemAtURL:v12 error:0];
  }

  photoIrisProperties = [assetCopy photoIrisProperties];
  photoIrisVisibilityState = [photoIrisProperties photoIrisVisibilityState];

  mediaType = [assetCopy mediaType];
  if (mediaType >= 4)
  {
    v26 = 1;
  }

  else
  {
    v26 = mediaType;
  }

  playbackStyle = [assetCopy playbackStyle];
  if ((playbackStyle - 1) >= 5)
  {
    v28 = 0;
  }

  else
  {
    v28 = playbackStyle;
  }

  v98 = v28;
  playbackVariation = [assetCopy playbackVariation];
  if ((playbackVariation - 1) < 3)
  {
    v30 = (playbackVariation - 1) + 1;
  }

  else
  {
    v30 = 0;
  }

  v97 = v30;
  mediaSubtypes = [assetCopy mediaSubtypes];
  v32 = (mediaSubtypes >> 1) & 0x20 | mediaSubtypes & 0x3F031F | (((mediaSubtypes >> 10) & 1) << 22);
  if (v26 != 2)
  {
    if (v26 != 1)
    {
      goto LABEL_63;
    }

    v101 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestPhotoFileURLKey"];
    if (v101)
    {
      v90 = objc_alloc(MEMORY[0x1E69C0668]);
      defaultManager2 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestAlternatePhotoURLKey"];
      v95 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestFullSizePhotoURLKey"];
      v94 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentBaseFullSizePhotoURLKey"];
      v92 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestSpatialOvercapturePhotoURLKey"];
      v93 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestVideoFileURLKey"];
      v91 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestFullSizeVideoURLKey"];
      v33 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentBasePairedVideoURLKey"];
      v34 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestSpatialOvercapturePairedVideoURLKey"];
      v35 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentDataFileURLKey"];
      v36 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestOriginalAdjustmentDataFileURLKey"];
      v37 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentSecondaryDataFileURLKey"];
      LOWORD(v89) = photoIrisVisibilityState & 0xF;
      v38 = [v90 initWithOriginalPhotoURL:v101 alternatePhotoURL:defaultManager2 fullSizePhotoURL:v95 adjustmentBaseFullSizePhotoURL:v94 spatialOvercapturePhotoURL:v92 originalPairedVideoURL:v93 fullSizePairedVideoURL:v91 adjustmentBaseFullSizePairedVideoURL:v33 spatialOvercapturePairedVideoURL:v34 fullSizeVideoURL:0 adjustmentsURL:v35 originalAdjustmentsURL:v36 adjustmentsSecondaryDataURL:v37 mediaSubtypes:v32 playbackStyle:v98 playbackVariation:v97 videoComplementVisibilityState:v89];

      goto LABEL_33;
    }

    v47 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = selfCopy->_sessionUUID;
      *buf = 138543618;
      *&buf[4] = sessionUUID;
      *&buf[12] = 2114;
      *&buf[14] = 0;
      _os_log_impl(&dword_19C86F000, v47, OS_LOG_TYPE_DEFAULT, "[AssetBundleExport: %{public}@] Unable to initialize asset bundle. Original Photo URL is: '%{public}@'. Need original photo URL to be non-nil to properly create an asset bundle.", buf, 0x16u);
    }

    if (error)
    {
      defaultManager2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The photo URL (%@) was empty.", 0];
      v49 = MEMORY[0x1E696ABC0];
      v129 = *MEMORY[0x1E696A578];
      v130 = defaultManager2;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
      v96 = [v49 errorWithDomain:@"com.apple.mobileslideshow.sharing" code:2 userInfo:v50];

      v51 = v96;
      v38 = 0;
      *error = v96;

      goto LABEL_33;
    }

LABEL_67:
    v38 = 0;
    goto LABEL_62;
  }

  v101 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestVideoFileURLKey"];
  if (!v101)
  {
    v73 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = selfCopy->_sessionUUID;
      *buf = 138543618;
      *&buf[4] = v74;
      *&buf[12] = 2114;
      *&buf[14] = 0;
      _os_log_impl(&dword_19C86F000, v73, OS_LOG_TYPE_DEFAULT, "[AssetBundleExport: %{public}@] Unable to initialize asset bundle. Original Video URL is: '%{public}@'. Need original video URL to be non-nil to properly create an asset bundle.", buf, 0x16u);
    }

    if (error)
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The video URL (%@) was empty.", 0];
      v75 = MEMORY[0x1E696ABC0];
      v127 = *MEMORY[0x1E696A578];
      v128 = v66;
      v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
      v77 = [v75 errorWithDomain:@"com.apple.mobileslideshow.sharing" code:3 userInfo:v76];

      v78 = v77;
      v38 = 0;
      *error = v77;
LABEL_61:

LABEL_62:
      goto LABEL_63;
    }

    goto LABEL_67;
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  buf[0] = 0;
  path3 = [v12 path];
  v40 = [defaultManager2 fileExistsAtPath:path3 isDirectory:buf];

  if ((v40 & 1) != 0 || buf[0] == 1)
  {
    [defaultManager2 removeItemAtURL:v12 error:0];
  }

  v41 = objc_alloc(MEMORY[0x1E69C0668]);
  v42 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestFullSizeVideoURLKey"];
  v43 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentBaseVideoURLKey"];
  v44 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestSpatialOvercaptureVideoURLKey"];
  v45 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentDataFileURLKey"];
  v46 = [lsCopy objectForKeyedSubscript:@"PHAssetExportRequestOriginalAdjustmentDataFileURLKey"];
  v38 = [v41 initWithOriginalVideoURL:v101 fullSizeRenderedVideoURL:v42 adjustmentBaseVideoURL:v43 spatialOvercaptureVideoURL:v44 adjustmentsURL:v45 originalAdjustmentsURL:v46 mediaSubtypes:v32 playbackStyle:v98 playbackVariation:v97];

LABEL_33:
  if (v38)
  {
    keywordProperties = [assetCopy keywordProperties];
    keywordTitles = [keywordProperties keywordTitles];
    [v38 setKeywordTitles:keywordTitles];

    descriptionProperties = [assetCopy descriptionProperties];
    assetDescription = [descriptionProperties assetDescription];
    [v38 setAssetDescription:assetDescription];

    descriptionProperties2 = [assetCopy descriptionProperties];
    accessibilityDescription = [descriptionProperties2 accessibilityDescription];
    [v38 setAccessibilityDescription:accessibilityDescription];

    title = [assetCopy title];
    [v38 setAssetTitle:title];

    originalMetadataProperties = [assetCopy originalMetadataProperties];
    originalFilename = [originalMetadataProperties originalFilename];
    [v38 setOriginalFilename:originalFilename];

    creationDate = [assetCopy creationDate];
    originalMetadataProperties2 = [assetCopy originalMetadataProperties];
    timeZone = [originalMetadataProperties2 timeZone];
    [v38 setLibraryCreationDate:creationDate inTimeZone:timeZone];

    location = [assetCopy location];
    [v38 setLibraryLocation:location];

    v126[0] = @"PHAssetExportRequestSpatialOvercapturePhotoURLKey";
    v126[1] = @"PHAssetExportRequestSpatialOvercapturePairedVideoURLKey";
    v126[2] = @"PHAssetExportRequestSpatialOvercaptureVideoURLKey";
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:3];
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v66 = v65;
    v67 = [v66 countByEnumeratingWithState:&v113 objects:v125 count:16];
    if (v67)
    {
      v68 = *v114;
      while (2)
      {
        for (i = 0; i != v67; ++i)
        {
          if (*v114 != v68)
          {
            objc_enumerationMutation(v66);
          }

          v70 = [lsCopy objectForKeyedSubscript:*(*(&v113 + 1) + 8 * i)];
          v71 = v70 == 0;

          if (!v71)
          {

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(v124) = 0;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __87__PHAssetBundleExportSession__createAssetBundleFromAsset_withFileURLs_atURL_withError___block_invoke;
            aBlock[3] = &unk_1E75AADC0;
            v111 = assetCopy;
            v112 = buf;
            v72 = _Block_copy(aBlock);
            if ([MEMORY[0x1E696AF00] isMainThread])
            {
              v72[2](v72);
            }

            else
            {
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __87__PHAssetBundleExportSession__createAssetBundleFromAsset_withFileURLs_atURL_withError___block_invoke_68;
              block[3] = &unk_1E75AADE8;
              v109 = v72;
              dispatch_sync(MEMORY[0x1E69E96A0], block);
            }

            if (*(*&buf[8] + 24) == 1)
            {
              v79 = PLPhotoKitGetLog();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                v80 = selfCopy->_sessionUUID;
                *v121 = 138543362;
                v122 = v80;
                _os_log_impl(&dword_19C86F000, v79, OS_LOG_TYPE_DEFAULT, "[AssetBundleExport: %{public}@] Marking SOC resource(s) as purgeable in asset bundle.", v121, 0xCu);
              }

              [v38 setSpatialOvercaptureResourcesPurgeable:1];
            }

            _Block_object_dispose(buf, 8);
            goto LABEL_55;
          }
        }

        v67 = [v66 countByEnumeratingWithState:&v113 objects:v125 count:16];
        if (v67)
        {
          continue;
        }

        break;
      }
    }

LABEL_55:
    v107 = 0;
    [v38 writeToBundleAtURL:v12 error:&v107];
    v77 = v107;
    if (v77)
    {
      v81 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        v82 = selfCopy->_sessionUUID;
        *buf = 138543874;
        *&buf[4] = v82;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        v124 = v77;
        _os_log_impl(&dword_19C86F000, v81, OS_LOG_TYPE_ERROR, "[AssetBundleExport: %{public}@] Unable to create '%@' bundle due to following error '%@'", buf, 0x20u);
      }

      v83 = MEMORY[0x1E696ABC0];
      v119 = *MEMORY[0x1E696AA08];
      v120 = v77;
      v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v85 = [v83 errorWithDomain:@"com.apple.mobileslideshow.sharing" code:4 userInfo:v84];

      if (error)
      {
        v86 = v85;
        *error = v85;
      }

      v12 = 0;
    }

    goto LABEL_61;
  }

LABEL_63:
  v12 = v12;
  v20 = v12;
LABEL_64:

  return v20;
}

void __87__PHAssetBundleExportSession__createAssetBundleFromAsset_withFileURLs_atURL_withError___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) pl_managedAsset];
  v2 = [v5 modernResources];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"resourceType IN %@ AND trashedState = 1", &unk_1F102E450];
  v4 = [v2 filteredSetUsingPredicate:v3];
  *(*(*(a1 + 40) + 8) + 24) = [v4 count] != 0;
}

- (id)_filenameBaseForAsset:(id)asset
{
  v24 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  customFilenameBase = [(PHAssetBundleExportSession *)self customFilenameBase];
  v6 = [customFilenameBase length];

  if (v6)
  {
    customFilenameBase2 = [(PHAssetBundleExportSession *)self customFilenameBase];
  }

  else
  {
    [assetCopy fetchPropertySetsIfNeeded];
    originalMetadataProperties = [assetCopy originalMetadataProperties];
    originalFilename = [originalMetadataProperties originalFilename];

    if ([originalFilename length])
    {
      stringByDeletingPathExtension = [originalFilename stringByDeletingPathExtension];
    }

    else
    {
      filename = [assetCopy filename];
      v12 = [filename length];

      v13 = PLPhotoKitGetLog();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          sessionUUID = self->_sessionUUID;
          filename2 = [assetCopy filename];
          v20 = 138543618;
          v21 = sessionUUID;
          v22 = 2114;
          v23 = filename2;
          _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEFAULT, "[AssetBundleExport: %{public}@] Asset does not have valid originalFilename, going with library filename: %{public}@", &v20, 0x16u);
        }

        stringByDeletingPathExtension = [assetCopy filename];
      }

      else
      {
        if (v14)
        {
          v17 = self->_sessionUUID;
          uuid = [assetCopy uuid];
          v20 = 138543618;
          v21 = v17;
          v22 = 2114;
          v23 = uuid;
          _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEFAULT, "[AssetBundleExport: %{public}@] Asset does not have valid originalFilename, going with UUID: %{public}@", &v20, 0x16u);
        }

        stringByDeletingPathExtension = [assetCopy uuid];
      }
    }

    customFilenameBase2 = stringByDeletingPathExtension;
  }

  return customFilenameBase2;
}

- (void)writeToDirectoryURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  asset = [(PHAssetBundleExportSession *)self asset];
  fileURLs = [(PHAssetBundleExportSession *)self fileURLs];
  v12 = 0;
  v10 = [(PHAssetBundleExportSession *)self _createAssetBundleFromAsset:asset withFileURLs:fileURLs atURL:lCopy withError:&v12];

  v11 = v12;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v10, v11);
  }
}

- (PHAssetBundleExportSession)initWithAsset:(id)asset withAssetExportRequestFileURLs:(id)ls
{
  assetCopy = asset;
  lsCopy = ls;
  v14.receiver = self;
  v14.super_class = PHAssetBundleExportSession;
  v9 = [(PHAssetBundleExportSession *)&v14 init];
  if (v9)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    sessionUUID = v9->_sessionUUID;
    v9->_sessionUUID = uUIDString;

    objc_storeStrong(&v9->_asset, asset);
    objc_storeStrong(&v9->_fileURLs, ls);
  }

  return v9;
}

@end