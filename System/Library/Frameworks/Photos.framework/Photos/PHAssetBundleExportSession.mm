@interface PHAssetBundleExportSession
- (PHAssetBundleExportSession)initWithAsset:(id)a3 withAssetExportRequestFileURLs:(id)a4;
- (id)_createAssetBundleFromAsset:(id)a3 withFileURLs:(id)a4 atURL:(id)a5 withError:(id *)a6;
- (id)_filenameBaseForAsset:(id)a3;
- (void)writeToDirectoryURL:(id)a3 completionHandler:(id)a4;
@end

@implementation PHAssetBundleExportSession

- (id)_createAssetBundleFromAsset:(id)a3 withFileURLs:(id)a4 atURL:(id)a5 withError:(id *)a6
{
  v132[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v106 = a5;
  v100 = self;
  v104 = [(PHAssetBundleExportSession *)self _filenameBaseForAsset:v10];
  [v10 fetchPropertySetsIfNeeded];
  v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v104, *MEMORY[0x1E69C09A8]];
  v12 = [v106 URLByAppendingPathComponent:v103];
  v105 = [MEMORY[0x1E696AC08] defaultManager];
  v118 = 0;
  v13 = [v106 path];
  v14 = [v105 fileExistsAtPath:v13 isDirectory:&v118];

  if (!v14 || (v118 & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The output directory URL (%@) is missing or is not a directory.", v106];
    v16 = MEMORY[0x1E696ABC0];
    v131 = *MEMORY[0x1E696A578];
    v132[0] = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:&v131 count:1];
    v18 = [v16 errorWithDomain:@"com.apple.mobileslideshow.sharing" code:1 userInfo:v17];

    if (a6)
    {
      v19 = v18;
      *a6 = v18;

      v20 = 0;
      goto LABEL_64;
    }
  }

  if (!v12)
  {
    v88 = [MEMORY[0x1E696AAA8] currentHandler];
    [v88 handleFailureInMethod:a2 object:v100 file:@"PHAssetBundleExportSession.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"bundleURL"}];
  }

  v117 = 0;
  v21 = [v12 path];
  v22 = [v105 fileExistsAtPath:v21 isDirectory:&v117];

  if ((v22 & 1) != 0 || v117 == 1)
  {
    [v105 removeItemAtURL:v12 error:0];
  }

  v23 = [v10 photoIrisProperties];
  v24 = [v23 photoIrisVisibilityState];

  v25 = [v10 mediaType];
  if (v25 >= 4)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v27 = [v10 playbackStyle];
  if ((v27 - 1) >= 5)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  v98 = v28;
  v29 = [v10 playbackVariation];
  if ((v29 - 1) < 3)
  {
    v30 = (v29 - 1) + 1;
  }

  else
  {
    v30 = 0;
  }

  v97 = v30;
  v31 = [v10 mediaSubtypes];
  v32 = (v31 >> 1) & 0x20 | v31 & 0x3F031F | (((v31 >> 10) & 1) << 22);
  if (v26 != 2)
  {
    if (v26 != 1)
    {
      goto LABEL_63;
    }

    v101 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestPhotoFileURLKey"];
    if (v101)
    {
      v90 = objc_alloc(MEMORY[0x1E69C0668]);
      v99 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestAlternatePhotoURLKey"];
      v95 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestFullSizePhotoURLKey"];
      v94 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentBaseFullSizePhotoURLKey"];
      v92 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestSpatialOvercapturePhotoURLKey"];
      v93 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestVideoFileURLKey"];
      v91 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestFullSizeVideoURLKey"];
      v33 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentBasePairedVideoURLKey"];
      v34 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestSpatialOvercapturePairedVideoURLKey"];
      v35 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentDataFileURLKey"];
      v36 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestOriginalAdjustmentDataFileURLKey"];
      v37 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentSecondaryDataFileURLKey"];
      LOWORD(v89) = v24 & 0xF;
      v38 = [v90 initWithOriginalPhotoURL:v101 alternatePhotoURL:v99 fullSizePhotoURL:v95 adjustmentBaseFullSizePhotoURL:v94 spatialOvercapturePhotoURL:v92 originalPairedVideoURL:v93 fullSizePairedVideoURL:v91 adjustmentBaseFullSizePairedVideoURL:v33 spatialOvercapturePairedVideoURL:v34 fullSizeVideoURL:0 adjustmentsURL:v35 originalAdjustmentsURL:v36 adjustmentsSecondaryDataURL:v37 mediaSubtypes:v32 playbackStyle:v98 playbackVariation:v97 videoComplementVisibilityState:v89];

      goto LABEL_33;
    }

    v47 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = v100->_sessionUUID;
      *buf = 138543618;
      *&buf[4] = sessionUUID;
      *&buf[12] = 2114;
      *&buf[14] = 0;
      _os_log_impl(&dword_19C86F000, v47, OS_LOG_TYPE_DEFAULT, "[AssetBundleExport: %{public}@] Unable to initialize asset bundle. Original Photo URL is: '%{public}@'. Need original photo URL to be non-nil to properly create an asset bundle.", buf, 0x16u);
    }

    if (a6)
    {
      v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The photo URL (%@) was empty.", 0];
      v49 = MEMORY[0x1E696ABC0];
      v129 = *MEMORY[0x1E696A578];
      v130 = v99;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
      v96 = [v49 errorWithDomain:@"com.apple.mobileslideshow.sharing" code:2 userInfo:v50];

      v51 = v96;
      v38 = 0;
      *a6 = v96;

      goto LABEL_33;
    }

LABEL_67:
    v38 = 0;
    goto LABEL_62;
  }

  v101 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestVideoFileURLKey"];
  if (!v101)
  {
    v73 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = v100->_sessionUUID;
      *buf = 138543618;
      *&buf[4] = v74;
      *&buf[12] = 2114;
      *&buf[14] = 0;
      _os_log_impl(&dword_19C86F000, v73, OS_LOG_TYPE_DEFAULT, "[AssetBundleExport: %{public}@] Unable to initialize asset bundle. Original Video URL is: '%{public}@'. Need original video URL to be non-nil to properly create an asset bundle.", buf, 0x16u);
    }

    if (a6)
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The video URL (%@) was empty.", 0];
      v75 = MEMORY[0x1E696ABC0];
      v127 = *MEMORY[0x1E696A578];
      v128 = v66;
      v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
      v77 = [v75 errorWithDomain:@"com.apple.mobileslideshow.sharing" code:3 userInfo:v76];

      v78 = v77;
      v38 = 0;
      *a6 = v77;
LABEL_61:

LABEL_62:
      goto LABEL_63;
    }

    goto LABEL_67;
  }

  v99 = [MEMORY[0x1E696AC08] defaultManager];
  buf[0] = 0;
  v39 = [v12 path];
  v40 = [v99 fileExistsAtPath:v39 isDirectory:buf];

  if ((v40 & 1) != 0 || buf[0] == 1)
  {
    [v99 removeItemAtURL:v12 error:0];
  }

  v41 = objc_alloc(MEMORY[0x1E69C0668]);
  v42 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestFullSizeVideoURLKey"];
  v43 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentBaseVideoURLKey"];
  v44 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestSpatialOvercaptureVideoURLKey"];
  v45 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestAdjustmentDataFileURLKey"];
  v46 = [v11 objectForKeyedSubscript:@"PHAssetExportRequestOriginalAdjustmentDataFileURLKey"];
  v38 = [v41 initWithOriginalVideoURL:v101 fullSizeRenderedVideoURL:v42 adjustmentBaseVideoURL:v43 spatialOvercaptureVideoURL:v44 adjustmentsURL:v45 originalAdjustmentsURL:v46 mediaSubtypes:v32 playbackStyle:v98 playbackVariation:v97];

LABEL_33:
  if (v38)
  {
    v52 = [v10 keywordProperties];
    v53 = [v52 keywordTitles];
    [v38 setKeywordTitles:v53];

    v54 = [v10 descriptionProperties];
    v55 = [v54 assetDescription];
    [v38 setAssetDescription:v55];

    v56 = [v10 descriptionProperties];
    v57 = [v56 accessibilityDescription];
    [v38 setAccessibilityDescription:v57];

    v58 = [v10 title];
    [v38 setAssetTitle:v58];

    v59 = [v10 originalMetadataProperties];
    v60 = [v59 originalFilename];
    [v38 setOriginalFilename:v60];

    v61 = [v10 creationDate];
    v62 = [v10 originalMetadataProperties];
    v63 = [v62 timeZone];
    [v38 setLibraryCreationDate:v61 inTimeZone:v63];

    v64 = [v10 location];
    [v38 setLibraryLocation:v64];

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

          v70 = [v11 objectForKeyedSubscript:*(*(&v113 + 1) + 8 * i)];
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
            v111 = v10;
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
                v80 = v100->_sessionUUID;
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
        v82 = v100->_sessionUUID;
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

      if (a6)
      {
        v86 = v85;
        *a6 = v85;
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

- (id)_filenameBaseForAsset:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHAssetBundleExportSession *)self customFilenameBase];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(PHAssetBundleExportSession *)self customFilenameBase];
  }

  else
  {
    [v4 fetchPropertySetsIfNeeded];
    v8 = [v4 originalMetadataProperties];
    v9 = [v8 originalFilename];

    if ([v9 length])
    {
      v10 = [v9 stringByDeletingPathExtension];
    }

    else
    {
      v11 = [v4 filename];
      v12 = [v11 length];

      v13 = PLPhotoKitGetLog();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          sessionUUID = self->_sessionUUID;
          v16 = [v4 filename];
          v20 = 138543618;
          v21 = sessionUUID;
          v22 = 2114;
          v23 = v16;
          _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEFAULT, "[AssetBundleExport: %{public}@] Asset does not have valid originalFilename, going with library filename: %{public}@", &v20, 0x16u);
        }

        v10 = [v4 filename];
      }

      else
      {
        if (v14)
        {
          v17 = self->_sessionUUID;
          v18 = [v4 uuid];
          v20 = 138543618;
          v21 = v17;
          v22 = 2114;
          v23 = v18;
          _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEFAULT, "[AssetBundleExport: %{public}@] Asset does not have valid originalFilename, going with UUID: %{public}@", &v20, 0x16u);
        }

        v10 = [v4 uuid];
      }
    }

    v7 = v10;
  }

  return v7;
}

- (void)writeToDirectoryURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PHAssetBundleExportSession *)self asset];
  v9 = [(PHAssetBundleExportSession *)self fileURLs];
  v12 = 0;
  v10 = [(PHAssetBundleExportSession *)self _createAssetBundleFromAsset:v8 withFileURLs:v9 atURL:v7 withError:&v12];

  v11 = v12;
  if (v6)
  {
    v6[2](v6, v10, v11);
  }
}

- (PHAssetBundleExportSession)initWithAsset:(id)a3 withAssetExportRequestFileURLs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PHAssetBundleExportSession;
  v9 = [(PHAssetBundleExportSession *)&v14 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    sessionUUID = v9->_sessionUUID;
    v9->_sessionUUID = v11;

    objc_storeStrong(&v9->_asset, a3);
    objc_storeStrong(&v9->_fileURLs, a4);
  }

  return v9;
}

@end