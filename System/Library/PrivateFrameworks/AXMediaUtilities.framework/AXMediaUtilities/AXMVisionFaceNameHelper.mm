@interface AXMVisionFaceNameHelper
- (BOOL)_isDeviceUnlocked;
- (BOOL)_loadPersonsModelWithPhotoLibraryURL:(id)a3;
- (BOOL)_shouldReloadPersonsModelWithPhotoLibraryURL:(id)a3;
- (BOOL)prepareForLookupWithPhotoLibraryURL:(id)a3;
- (id)_fetchPersonsForLocalIdentifiers:(id)a3 withPhotoLibraryURL:(id)a4;
- (id)_fileModificationDateForPath:(id)a3;
- (id)_filePathForPersonsModelWithPhotoLibraryURL:(id)a3;
- (id)_photoAuthorizationMessage:(int64_t)a3;
- (id)nameForFaceObservation:(id)a3;
- (id)photoLibraryWithURL:(id)a3;
- (unint64_t)faceprintRequestRevisionForPersonsModel;
- (void)_resetState;
@end

@implementation AXMVisionFaceNameHelper

- (void)_resetState
{
  [(AXMVisionFaceNameHelper *)self set_personsModel:0];
  [(AXMVisionFaceNameHelper *)self set_personsModelFileModifiedDate:0];
  [(AXMVisionFaceNameHelper *)self set_personLocalIdentifierToName:0];

  [(AXMVisionFaceNameHelper *)self set_lastFileModificationCheckTime:0.0];
}

- (unint64_t)faceprintRequestRevisionForPersonsModel
{
  VCPMediaAnalyzerClass = getVCPMediaAnalyzerClass();
  v4 = [(AXMVisionFaceNameHelper *)self _personsModel];
  v5 = [VCPMediaAnalyzerClass faceprintRevisionForPersonModel:v4];

  return v5;
}

- (id)photoLibraryWithURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(getPHPhotoLibraryClass_0()) initWithPhotoLibraryURL:v3];
    v11 = 0;
    v5 = [v4 openAndWaitWithUpgrade:0 error:&v11];
    v6 = v11;
    v7 = v6;
    if (v4 && !v6 && (v5 & 1) != 0)
    {
      v8 = v4;
    }

    else
    {
      v9 = AXMediaLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(AXMVisionFaceNameHelper *)v3 photoLibraryWithURL:v7, v9];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_filePathForPersonsModelWithPhotoLibraryURL:(id)a3
{
  v3 = [(AXMVisionFaceNameHelper *)self photoLibraryWithURL:a3];
  if (v3)
  {
    v4 = [getVCPMediaAnalyzerClass() personModelFilepathForPhotoLibrary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_loadPersonsModelWithPhotoLibraryURL:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [(AXMVisionFaceNameHelper *)self _filePathForPersonsModelWithPhotoLibraryURL:v4];

  if (!v6)
  {
    v10 = AXMediaLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "AXMVisionFaceNameHelper: Could not find filepath of VNPersonsModel";
      v16 = v10;
      v17 = 2;
LABEL_10:
      _os_log_impl(&dword_1AE37B000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    }

LABEL_11:
    v11 = 0;
    goto LABEL_15;
  }

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if ((v8 & 1) == 0)
  {
    v10 = AXMediaLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = *&v6;
      v15 = "AXMVisionFaceNameHelper: VNPersonsModel model path does not exist '%@'. (it may not be created yet)";
      v16 = v10;
      v17 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v20 = 0;
  v9 = [getVCPMediaAnalyzerClass() loadPersonModelAtPath:v6 error:&v20];
  v10 = v20;
  v11 = v9 != 0;
  if (v9)
  {
    [(AXMVisionFaceNameHelper *)self set_personsModel:v9];
    v12 = [(AXMVisionFaceNameHelper *)self _fileModificationDateForPath:v6];
    [(AXMVisionFaceNameHelper *)self set_personsModelFileModifiedDate:v12];

    [(AXMVisionFaceNameHelper *)self set_lastFileModificationCheckTime:CFAbsoluteTimeGetCurrent()];
    v13 = CFAbsoluteTimeGetCurrent();
    v14 = AXMediaLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = v13 - Current;
      _os_log_impl(&dword_1AE37B000, v14, OS_LOG_TYPE_DEFAULT, "AXMVisionFaceNameHelper: VNPersonsModel loadTime: %.3f", buf, 0xCu);
    }
  }

  else
  {
    v14 = AXMediaLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 138412802;
      v22 = *&v6;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_1AE37B000, v14, OS_LOG_TYPE_DEFAULT, "AXMVisionFaceNameHelper: Could not load VNPersonsModel from path %@: %@ %@", buf, 0x20u);
    }
  }

LABEL_15:
  return v11;
}

- (BOOL)_shouldReloadPersonsModelWithPhotoLibraryURL:(id)a3
{
  v4 = a3;
  v5 = [(AXMVisionFaceNameHelper *)self _personsModel];

  if (v5 && (Current = CFAbsoluteTimeGetCurrent(), [(AXMVisionFaceNameHelper *)self _lastFileModificationCheckTime], Current - v7 >= 600.0))
  {
    [(AXMVisionFaceNameHelper *)self set_lastFileModificationCheckTime:CFAbsoluteTimeGetCurrent()];
    v9 = [(AXMVisionFaceNameHelper *)self _filePathForPersonsModelWithPhotoLibraryURL:v4];
    v10 = [(AXMVisionFaceNameHelper *)self _fileModificationDateForPath:v9];
    if (v10 && (-[AXMVisionFaceNameHelper _personsModelFileModifiedDate](self, "_personsModelFileModifiedDate"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11) && (-[AXMVisionFaceNameHelper _personsModelFileModifiedDate](self, "_personsModelFileModifiedDate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v10 isEqualToDate:v12], v12, (v13 & 1) == 0))
    {
      v15 = AXMediaLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AE37B000, v15, OS_LOG_TYPE_DEFAULT, "AXMVisionFaceNameHelper: Resetting state for change to personsModel file", v16, 2u);
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_photoAuthorizationMessage:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7A1E480 + a3);
  }
}

- (id)_fileModificationDateForPath:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = 0;
    v5 = [v4 attributesOfItemAtPath:v3 error:&v11];
    v6 = v11;

    if (v5)
    {
      v7 = [v5 fileModificationDate];
    }

    else
    {
      v8 = AXMediaLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 138412802;
        v13 = v3;
        v14 = 2112;
        v15 = v6;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_1AE37B000, v8, OS_LOG_TYPE_DEFAULT, "AXMVisionFaceNameHelper: Could not load get fileModificationDate from path %@: %@ %@", buf, 0x20u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_fetchPersonsForLocalIdentifiers:(id)a3 withPhotoLibraryURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [(AXMVisionFaceNameHelper *)self photoLibraryWithURL:v7];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 librarySpecificFetchOptions];
    [v11 setIncludeGuestAssets:1];
    [v11 setMinimumVerifiedFaceCount:0];
    [v11 setMinimumUnverifiedFaceCount:0];
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType == %d", 1];
    [v11 setPredicate:v12];

    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v13 = getPHPersonClass_softClass;
    v21 = getPHPersonClass_softClass;
    if (!getPHPersonClass_softClass)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __getPHPersonClass_block_invoke;
      v17[3] = &unk_1E7A1C700;
      v17[4] = &v18;
      __getPHPersonClass_block_invoke(v17);
      v13 = v19[3];
    }

    v14 = v13;
    _Block_object_dispose(&v18, 8);
    v15 = [v13 fetchPersonsWithLocalIdentifiers:v8 options:v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)prepareForLookupWithPhotoLibraryURL:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(AXMVisionFaceNameHelper *)self _isDeviceUnlocked])
  {
    v9 = AXMediaLogCommon();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    *buf = 0;
    v10 = "AXMVisionFaceNameHelper: Device is locked so face names should not be available";
LABEL_8:
    _os_log_impl(&dword_1AE37B000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    goto LABEL_9;
  }

  if ([(AXMVisionFaceNameHelper *)self _shouldReloadPersonsModelWithPhotoLibraryURL:v5])
  {
    [(AXMVisionFaceNameHelper *)self _resetState];
  }

  v6 = [(AXMVisionFaceNameHelper *)self _personLocalIdentifierToName];

  if (v6)
  {
    v7 = [(AXMVisionFaceNameHelper *)self _personLocalIdentifierToName];
    v8 = [v7 count] != 0;

    goto LABEL_11;
  }

  if (![(AXMVisionFaceNameHelper *)self _checkPhotoLibraryAuthorization])
  {
    v27 = AXMediaLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = -[AXMVisionFaceNameHelper _photoAuthorizationMessage:](self, "_photoAuthorizationMessage:", [getPHPhotoLibraryClass_0() authorizationStatus]);
      *buf = 138412290;
      v38 = v28;
      _os_log_impl(&dword_1AE37B000, v27, OS_LOG_TYPE_DEFAULT, "AXMVisionFaceNameHelper: PhotoLibrary Authorization Failure - Face names will not be available : %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (![(AXMVisionFaceNameHelper *)self _loadPersonsModelWithPhotoLibraryURL:v5])
  {
    v9 = AXMediaLogCommon();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v10 = "AXMVisionFaceNameHelper: Failed to load VNPersonsModel so face names will not be available";
    goto LABEL_8;
  }

  v12 = [(AXMVisionFaceNameHelper *)self _personsModel];
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(AXMVisionFaceNameHelper *)self set_personLocalIdentifierToName:v13];

  if (![v12 personCount])
  {
    v15 = AXMediaLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE37B000, v15, OS_LOG_TYPE_DEFAULT, "AXMVisionFaceNameHelper: No persons found in VNPersonsModel so face names will not be available", buf, 2u);
    }

    v8 = 0;
    goto LABEL_39;
  }

  v14 = [v12 personUniqueIdentifiers];
  v15 = [(AXMVisionFaceNameHelper *)self _fetchPersonsForLocalIdentifiers:v14 withPhotoLibraryURL:v5];

  if (!v15)
  {
    goto LABEL_30;
  }

  v30 = v12;
  v31 = v5;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v29 = v15;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v17)
  {
    goto LABEL_29;
  }

  v18 = v17;
  v19 = *v33;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v33 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v32 + 1) + 8 * i);
      v22 = [v21 displayName];
      if (v22)
      {
        v3 = [v21 displayName];
        if (([v3 isEqual:&stru_1F23EA908] & 1) == 0)
        {
          v23 = [v21 displayName];
LABEL_26:

          goto LABEL_27;
        }
      }

      v23 = [v21 name];
      if (v22)
      {
        goto LABEL_26;
      }

LABEL_27:

      v24 = [(AXMVisionFaceNameHelper *)self _personLocalIdentifierToName];
      v25 = [v21 localIdentifier];
      [v24 setObject:v23 forKeyedSubscript:v25];
    }

    v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v18);
LABEL_29:

  v12 = v30;
  v5 = v31;
  v15 = v29;
LABEL_30:
  v26 = [(AXMVisionFaceNameHelper *)self _personLocalIdentifierToName];
  v8 = [v26 count] != 0;

LABEL_39:
LABEL_11:

  return v8;
}

- (id)nameForFaceObservation:(id)a3
{
  v4 = a3;
  v5 = [(AXMVisionFaceNameHelper *)self _checkPhotoLibraryAuthorization];
  v6 = 0;
  if (v4 && v5)
  {
    v7 = [(AXMVisionFaceNameHelper *)self _personLocalIdentifierToName];
    v8 = [v7 count];

    if (!v8)
    {
      v12 = AXMediaLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [AXMVisionFaceNameHelper nameForFaceObservation:v12];
      }

      v6 = 0;
      goto LABEL_15;
    }

    VCPMediaAnalyzerClass = getVCPMediaAnalyzerClass();
    v10 = [(AXMVisionFaceNameHelper *)self _personsModel];
    v15 = 0;
    v11 = [VCPMediaAnalyzerClass classifyFaceObservation:v4 withPersonsModel:v10 error:&v15];
    v12 = v15;

    if (v12)
    {
      v13 = AXMediaLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(AXMVisionFaceNameHelper *)v12 nameForFaceObservation:v13];
      }

      v6 = 0;
    }

    else
    {
      if (!v11)
      {
        v6 = 0;
        goto LABEL_14;
      }

      v13 = [(AXMVisionFaceNameHelper *)self _personLocalIdentifierToName];
      v6 = [v13 objectForKeyedSubscript:v11];
    }

LABEL_14:
LABEL_15:
  }

  return v6;
}

- (BOOL)_isDeviceUnlocked
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  v11 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  if (!getMKBGetDeviceLockStateSymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getMKBGetDeviceLockStateSymbolLoc_block_invoke;
    v7[3] = &unk_1E7A1C700;
    v7[4] = &v8;
    __getMKBGetDeviceLockStateSymbolLoc_block_invoke(v7);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    v6 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  v3 = v2(0);
  return !v3 || v3 == 3;
}

- (void)photoLibraryWithURL:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_1AE37B000, log, OS_LOG_TYPE_FAULT, "AXMVisionFaceNameHelper: Could not fetch Photo Library using the photo library URL : %@ error: %@", &v3, 0x16u);
}

- (void)nameForFaceObservation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AF00] callStackSymbols];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "AXMVisionFaceNameHelper: Error classifying face. Error: %@ %@", &v5, 0x16u);
}

@end