@interface PHAssetCreationRequestPlaceholderSupport
- (BOOL)_regenerateResourcesWithLocationDataRemoved:(id)a3 sourceExternalResources:(id)a4 photoLibrary:(id)a5 error:(id *)a6;
- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (NSXPCConnection)clientConnection;
- (PHAssetCreationRequestPlaceholderSupport)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (id)_createPlaceholderManagedAssetFromSourceManagedAsset:(id)a3 inPhotoLibrary:(id)a4 error:(id *)a5;
- (id)_fetchOptionsForDuplicateAssetPhotoLibraryType:(id)a3;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObjectWithUUID:(id)a3;
- (unsigned)_bundleScopeForPlaceholderAsset;
- (void)_updateManagedAssetAfterResourceDownload:(id)a3;
- (void)changeFailedOnClientWithLibrary:(id)a3 error:(id)a4;
- (void)changeFailedOnDaemonWithLibrary:(id)a3 error:(id)a4;
- (void)performTransactionCompletionHandlingInPhotoLibrary:(id)a3;
@end

@implementation PHAssetCreationRequestPlaceholderSupport

- (NSXPCConnection)clientConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_clientConnection);

  return WeakRetained;
}

- (void)performTransactionCompletionHandlingInPhotoLibrary:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHChangeRequest *)self uuid];
  v6 = [PHObject uuidFromLocalIdentifier:v5];

  v7 = [MEMORY[0x1E69BE540] assetWithUUID:v6 inLibrary:v4];
  v8 = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
  v9 = [PHObject uuidFromLocalIdentifier:v8];

  v10 = [MEMORY[0x1E69BE540] assetWithUUID:v9 inLibrary:v4];
  v11 = v10;
  if (v7)
  {
    if (self->_placeholderCreationMode == 1)
    {
      if (v10)
      {
        if (!self->_serverTransaction)
        {
          v12 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69BF110]];
          v13 = MEMORY[0x1E69BE300];
          v14 = [v4 pathManager];
          v15 = v13;
          v16 = v12;
          v28 = [v15 beginClientTransactionWithChangeScopes:v12 pathManager:v14 identifier:"-[PHAssetCreationRequestPlaceholderSupport performTransactionCompletionHandlingInPhotoLibrary:]"];

          v27 = MEMORY[0x1E69BE300];
          v17 = [v28 transactionToken];
          v18 = [v4 pathManager];
          v19 = [v27 beginServerTransactionWithToken:v17 changeScopes:v16 pathManager:v18 identifier:"-[PHAssetCreationRequestPlaceholderSupport performTransactionCompletionHandlingInPhotoLibrary:]"];
          serverTransaction = self->_serverTransaction;
          self->_serverTransaction = v19;

          [v28 completeTransaction];
        }

        if ([v11 checkAllResourcesRequiredForCPLDisableWithReachableBlock:0])
        {
          [(PHAssetCreationRequestPlaceholderSupport *)self _updateManagedAssetAfterResourceDownload:v4];
        }

        else
        {
          v25 = [MEMORY[0x1E69BE268] defaultManager];
          v26 = [v11 uuid];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __95__PHAssetCreationRequestPlaceholderSupport_performTransactionCompletionHandlingInPhotoLibrary___block_invoke;
          v29[3] = &unk_1E75A46B8;
          v30 = v4;
          v31 = self;
          [v25 requestRequiredResourcesForManagedAssetObjectUUID:v26 library:v30 completionHandler:v29];
        }
      }

      else
      {
        v23 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = [(PHChangeRequest *)self uuid];
          *buf = 138412546;
          v33 = v9;
          v34 = 2112;
          v35 = v24;
          _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Failed to find source asset %@ for placeholder asset %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    if (v10)
    {
      v21 = [v10 additionalAttributes];
      [v21 setDestinationAssetCopyState:0xFFFFFFFFLL];
    }

    v22 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v6;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Placeholder asset %@ no longer exists in the database", buf, 0xCu);
    }
  }
}

void __95__PHAssetCreationRequestPlaceholderSupport_performTransactionCompletionHandlingInPhotoLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryServicesManager];
  v3 = [v2 databaseContext];
  v4 = [v3 newShortLivedLibraryWithName:"-[PHAssetCreationRequestPlaceholderSupport performTransactionCompletionHandlingInPhotoLibrary:]_block_invoke"];

  [*(a1 + 40) _updateManagedAssetAfterResourceDownload:v4];
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
  v8 = [PHObject uuidFromLocalIdentifier:v7];

  v9 = [MEMORY[0x1E69BE540] assetWithUUID:v8 inLibrary:v6];
  v15 = 0;
  v10 = [(PHAssetCreationRequestPlaceholderSupport *)self _createPlaceholderManagedAssetFromSourceManagedAsset:v9 inPhotoLibrary:v6 error:&v15];

  v11 = v15;
  if (!v10)
  {
    v12 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Failed to create placeholder asset"];

    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }

    v11 = v12;
  }

  return v10;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__7051;
  v22 = __Block_byref_object_dispose__7052;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__PHAssetCreationRequestPlaceholderSupport_validateInsertIntoPhotoLibrary_error___block_invoke;
  v10[3] = &unk_1E75A9D58;
  v10[4] = self;
  v7 = v6;
  v11 = v7;
  v12 = &v14;
  v13 = &v18;
  [v7 performBlockAndWait:v10];
  v8 = *(v15 + 24);
  if (a4 && (v15[3] & 1) == 0)
  {
    *a4 = v19[5];
    v8 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v8 & 1;
}

void __81__PHAssetCreationRequestPlaceholderSupport_validateInsertIntoPhotoLibrary_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) duplicateAssetIdentifier];
  v7 = [PHObject uuidFromLocalIdentifier:v2];

  v3 = [MEMORY[0x1E69BE540] assetWithUUID:v7 inLibrary:*(a1 + 40)];
  if (([v3 isCloudSharedAsset] & 1) != 0 || objc_msgSend(v3, "isPhotoStreamPhoto"))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v4 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"+[PHAssetCreationRequest creationRequestForAssetCopyFromAsset:options:] API does not support copying cloud shared or photo stream assets"];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)_fetchOptionsForDuplicateAssetPhotoLibraryType:(id)a3
{
  v4 = a3;
  v5 = [[PHPhotoLibrary alloc] initWithPLPhotoLibrary:v4 type:[(PHAssetCreationRequest *)self duplicateAssetPhotoLibraryType]];

  v6 = [(PHPhotoLibrary *)v5 librarySpecificFetchOptions];

  return v6;
}

- (BOOL)_regenerateResourcesWithLocationDataRemoved:(id)a3 sourceExternalResources:(id)a4 photoLibrary:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![v10 count])
  {
    v39 = 1;
    goto LABEL_45;
  }

  v141 = 0;
  v142 = &v141;
  v143 = 0x3032000000;
  v144 = __Block_byref_object_copy__7051;
  v145 = __Block_byref_object_dispose__7052;
  v146 = 0;
  v113 = [v10 _pl_indexBy:&__block_literal_global_7058];
  v110 = a6;
  v111 = v11;
  v12 = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E69C06D8] policyWithLocation:0];
  [v12 addObject:v13];
  v114 = v12;

  v14 = [MEMORY[0x1E695DF90] dictionary];
  v15 = *MEMORY[0x1E69AE990];
  [v14 setObject:&unk_1F102C4B8 forKeyedSubscript:*MEMORY[0x1E69AE990]];
  v16 = MEMORY[0x1E69C07D0];
  v17 = [v9 uniformTypeIdentifier];
  LODWORD(v16) = [v16 outputSupportedForTypeIdentifier:v17];

  v18 = MEMORY[0x1E69AE940];
  if (v16)
  {
    [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE940]];
  }

  v19 = [MEMORY[0x1E69C06C8] policyWithPolicies:v114];
  [v14 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69AE968]];

  v20 = [MEMORY[0x1E695DF90] dictionary];
  [v20 setObject:&unk_1F102C4B8 forKeyedSubscript:v15];
  [v20 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE908]];
  [v20 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v18];
  [v20 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69AE910]];
  v21 = MEMORY[0x1E695DFF8];
  v22 = NSTemporaryDirectory();
  v23 = [v21 fileURLWithPath:v22];
  v24 = MEMORY[0x1E696AEC0];
  v25 = [MEMORY[0x1E696AFB0] UUID];
  v26 = [v25 UUIDString];
  v27 = [v24 stringWithFormat:@"PHAssetCreationRequestPlaceholderSupport-%@", v26];
  v112 = [v23 URLByAppendingPathComponent:v27];

  v28 = dispatch_group_create();
  if (!v142[5])
  {
    if ([v9 isPhoto])
    {
      v29 = [v113 objectForKeyedSubscript:&unk_1F102C4D0];
      v108 = v29;
      if (v29)
      {
        v30 = MEMORY[0x1E69AE880];
        v31 = [v29 fileURL];
        v106 = [v30 collectionWithMainResourceURL:v31];

        v32 = MEMORY[0x1E69C07D0];
        v33 = [v9 uniformTypeIdentifier];
        LODWORD(v32) = [v32 outputSupportedForTypeIdentifier:v33];

        if (v32)
        {
          v34 = MEMORY[0x1E69AE880];
          v35 = [v108 fileURL];
          v36 = [v35 lastPathComponent];
          v37 = [v112 URLByAppendingPathComponent:v36];
          v38 = [v34 collectionWithMainResourceURL:v37];
        }

        else
        {
          v51 = [v108 fileURL];
          v52 = [v51 lastPathComponent];
          v53 = [v52 stringByDeletingPathExtension];
          v35 = [v53 stringByAppendingPathExtensionForType:*MEMORY[0x1E6982E58]];

          v54 = MEMORY[0x1E69AE880];
          v36 = [v112 URLByAppendingPathComponent:v35];
          v38 = [v54 collectionWithMainResourceURL:v36];
        }

        dispatch_group_enter(v28);
        v49 = objc_alloc_init(MEMORY[0x1E69AE870]);
        v135[0] = MEMORY[0x1E69E9820];
        v135[1] = 3221225472;
        v135[2] = __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_78;
        v135[3] = &unk_1E75A4690;
        v140 = &v141;
        v136 = v113;
        v137 = v10;
        v138 = v38;
        v139 = v28;
        v104 = v138;
        [v49 convertImageAtSourceURLCollection:v106 toDestinationURLCollection:v138 options:v14 completionHandler:v135];
      }

      else
      {
        v104 = 0;
        v106 = 0;
        v49 = 0;
      }

      v41 = v108;
      if (v142[5])
      {
        goto LABEL_30;
      }

      if (![v9 hasAdjustments])
      {
        v41 = v108;
LABEL_30:
        dispatch_group_wait(v28, 0xFFFFFFFFFFFFFFFFLL);

        goto LABEL_31;
      }

      v100 = v49;
      v55 = [v113 objectForKeyedSubscript:&unk_1F102C4E8];
      v102 = v55;
      v41 = v108;
      if (v55)
      {
        v56 = MEMORY[0x1E69AE880];
        v57 = [v55 fileURL];
        v58 = [v56 collectionWithMainResourceURL:v57];

        v59 = MEMORY[0x1E69AE880];
        v60 = [v102 fileURL];
        v61 = [v60 lastPathComponent];
        v62 = [v112 URLByAppendingPathComponent:v61];
        v63 = [v59 collectionWithMainResourceURL:v62];

        dispatch_group_enter(v28);
        v64 = v134;
        v134[0] = MEMORY[0x1E69E9820];
        v134[1] = 3221225472;
        v134[2] = __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_82;
        v134[3] = &unk_1E75A4690;
        v134[8] = &v141;
        v134[4] = v113;
        v134[5] = v10;
        v65 = v63;
        v134[6] = v65;
        v134[7] = v28;
        [v100 convertImageAtSourceURLCollection:v58 toDestinationURLCollection:v65 options:v14 completionHandler:v134];
        v99 = v58;
LABEL_21:

        v41 = v108;
        v49 = v100;
        v66 = v102;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      if (v142[5] || ![v9 isVideo])
      {
        goto LABEL_31;
      }

      v40 = [v113 objectForKeyedSubscript:&unk_1F102C500];
      v41 = v40;
      if (v40)
      {
        v42 = MEMORY[0x1E69AE880];
        v43 = [v40 fileURL];
        v106 = [v42 collectionWithMainResourceURL:v43];

        v44 = MEMORY[0x1E69AE880];
        v45 = [v41 fileURL];
        v46 = [v45 lastPathComponent];
        v47 = [v112 URLByAppendingPathComponent:v46];
        v48 = [v44 collectionWithMainResourceURL:v47];

        dispatch_group_enter(v28);
        v49 = objc_alloc_init(MEMORY[0x1E69AE888]);
        v128[0] = MEMORY[0x1E69E9820];
        v128[1] = 3221225472;
        v128[2] = __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_86;
        v128[3] = &unk_1E75A4690;
        v133 = &v141;
        v129 = v113;
        v130 = v10;
        v131 = v48;
        v132 = v28;
        v104 = v131;
        v50 = [v49 convertVideoAtSourceURLCollection:v106 toDestinationURLCollection:v131 options:v20 completionHandler:v128];
      }

      else
      {
        v49 = 0;
        v104 = 0;
        v106 = 0;
      }

      if (v142[5] || ![v9 hasAdjustments])
      {
        goto LABEL_30;
      }

      v100 = v49;
      v67 = [v113 objectForKeyedSubscript:&unk_1F102C518];
      v102 = v67;
      if (v67)
      {
        v68 = MEMORY[0x1E69AE880];
        v69 = [v67 fileURL];
        v99 = [v68 collectionWithMainResourceURL:v69];

        v70 = MEMORY[0x1E69AE880];
        v71 = [v102 fileURL];
        v72 = [v71 lastPathComponent];
        v73 = [v112 URLByAppendingPathComponent:v72];
        v74 = [v70 collectionWithMainResourceURL:v73];

        dispatch_group_enter(v28);
        v64 = v127;
        v127[0] = MEMORY[0x1E69E9820];
        v127[1] = 3221225472;
        v127[2] = __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_89;
        v127[3] = &unk_1E75A4690;
        v127[8] = &v141;
        v127[4] = v113;
        v127[5] = v10;
        v65 = v74;
        v127[6] = v65;
        v127[7] = v28;
        v75 = [v100 convertVideoAtSourceURLCollection:v99 toDestinationURLCollection:v65 options:v20 completionHandler:v127];
        v108 = v41;
        goto LABEL_21;
      }
    }

    v66 = 0;
    v49 = v100;
    goto LABEL_29;
  }

LABEL_31:
  if (!v142[5] && [v9 isPhotoIris])
  {
    v76 = [v113 objectForKeyedSubscript:&unk_1F102C530];
    v77 = v76;
    if (v76)
    {
      v78 = MEMORY[0x1E69AE880];
      v79 = [v76 fileURL];
      v109 = [v78 collectionWithMainResourceURL:v79];

      v80 = MEMORY[0x1E69AE880];
      v81 = [v77 fileURL];
      v82 = [v81 lastPathComponent];
      v83 = [v112 URLByAppendingPathComponent:v82];
      v84 = [v80 collectionWithMainResourceURL:v83];

      dispatch_group_enter(v28);
      v85 = objc_alloc_init(MEMORY[0x1E69AE888]);
      v121[0] = MEMORY[0x1E69E9820];
      v121[1] = 3221225472;
      v121[2] = __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_92;
      v121[3] = &unk_1E75A4690;
      v126 = &v141;
      v122 = v113;
      v123 = v10;
      v86 = v84;
      v124 = v86;
      v125 = v28;
      v87 = [v85 convertVideoAtSourceURLCollection:v109 toDestinationURLCollection:v86 options:v20 completionHandler:v121];
    }

    else
    {
      v85 = 0;
      v109 = 0;
      v86 = 0;
    }

    if (!v142[5] && [v9 hasAdjustments])
    {
      v105 = v85;
      v88 = [v113 objectForKeyedSubscript:&unk_1F102C548];
      v107 = v88;
      if (v88)
      {
        v89 = MEMORY[0x1E69AE880];
        v90 = [v88 fileURL];
        v101 = [v89 collectionWithMainResourceURL:v90];

        v91 = MEMORY[0x1E69AE880];
        v103 = [v107 fileURL];
        v92 = [v103 lastPathComponent];
        v93 = [v112 URLByAppendingPathComponent:v92];
        v94 = [v91 collectionWithMainResourceURL:v93];

        dispatch_group_enter(v28);
        v115[0] = MEMORY[0x1E69E9820];
        v115[1] = 3221225472;
        v115[2] = __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_95;
        v115[3] = &unk_1E75A4690;
        v120 = &v141;
        v116 = v113;
        v117 = v10;
        v95 = v94;
        v118 = v95;
        v119 = v28;
        v96 = [v105 convertVideoAtSourceURLCollection:v101 toDestinationURLCollection:v95 options:v20 completionHandler:v115];

        v88 = v107;
      }

      v85 = v105;
    }

    dispatch_group_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
  }

  v97 = v142;
  if (v110)
  {
    *v110 = v142[5];
    v97 = v142;
  }

  v39 = v97[5] == 0;

  _Block_object_dispose(&v141, 8);
  v11 = v111;
LABEL_45:

  return v39;
}

void __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v10 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 64) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v8 = [*(a1 + 32) objectForKey:&unk_1F102C4D0];
    [*(a1 + 40) removeObject:v8];
    v9 = [*(a1 + 48) resourceURLForRole:*MEMORY[0x1E69AE8B8]];
    [v8 setFileURL:v9];

    [*(a1 + 40) addObject:v8];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_82(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v10 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 64) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v8 = [*(a1 + 32) objectForKey:&unk_1F102C4E8];
    [*(a1 + 40) removeObject:v8];
    v9 = [*(a1 + 48) resourceURLForRole:*MEMORY[0x1E69AE8B8]];
    [v8 setFileURL:v9];

    [*(a1 + 40) addObject:v8];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_86(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v10 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 64) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v8 = [*(a1 + 32) objectForKey:&unk_1F102C500];
    [*(a1 + 40) removeObject:v8];
    v9 = [*(a1 + 48) resourceURLForRole:*MEMORY[0x1E69AE8B8]];
    [v8 setFileURL:v9];

    [*(a1 + 40) addObject:v8];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_89(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v10 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 64) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v8 = [*(a1 + 32) objectForKey:&unk_1F102C518];
    [*(a1 + 40) removeObject:v8];
    v9 = [*(a1 + 48) resourceURLForRole:*MEMORY[0x1E69AE8B8]];
    [v8 setFileURL:v9];

    [*(a1 + 40) addObject:v8];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_92(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v10 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 64) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v8 = [*(a1 + 32) objectForKey:&unk_1F102C530];
    [*(a1 + 40) removeObject:v8];
    v9 = [*(a1 + 48) resourceURLForRole:*MEMORY[0x1E69AE8B8]];
    [v8 setFileURL:v9];

    [*(a1 + 40) addObject:v8];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_95(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v10 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 64) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v8 = [*(a1 + 32) objectForKey:&unk_1F102C548];
    [*(a1 + 40) removeObject:v8];
    v9 = [*(a1 + 48) resourceURLForRole:*MEMORY[0x1E69AE8B8]];
    [v8 setFileURL:v9];

    [*(a1 + 40) addObject:v8];
  }

  dispatch_group_leave(*(a1 + 56));
}

uint64_t __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 type];

  return [v2 numberWithInteger:v3];
}

- (void)_updateManagedAssetAfterResourceDownload:(id)a3
{
  v4 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 1;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__7051;
  v13[4] = __Block_byref_object_dispose__7052;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__7051;
  v11[4] = __Block_byref_object_dispose__7052;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__PHAssetCreationRequestPlaceholderSupport__updateManagedAssetAfterResourceDownload___block_invoke;
  v6[3] = &unk_1E75A9238;
  v8 = v11;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  v9 = v15;
  v10 = v13;
  [v5 performTransactionAndWait:v6];

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);

  _Block_object_dispose(v15, 8);
}

void __85__PHAssetCreationRequestPlaceholderSupport__updateManagedAssetAfterResourceDownload___block_invoke(uint64_t a1)
{
  v78[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) uuid];
  v3 = [PHObject uuidFromLocalIdentifier:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(a1 + 32) setBundleScope:{objc_msgSend(*(a1 + 32), "_bundleScopeForPlaceholderAsset")}];
  v6 = [MEMORY[0x1E69BE540] assetWithUUID:*(*(*(a1 + 48) + 8) + 40) inLibrary:*(a1 + 40)];

  if (!v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v7 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"Placeholder asset %@ no longer exists in the database. Terminating!", *(*(*(a1 + 48) + 8) + 40)}];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    v14 = 0;
LABEL_11:
    v23 = 0;
    goto LABEL_12;
  }

  v10 = [*(a1 + 32) _fetchOptionsForDuplicateAssetPhotoLibraryType:*(a1 + 40)];
  v11 = [*(a1 + 32) duplicateAssetIdentifier];
  v78[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:1];
  v13 = [PHAsset fetchAssetsWithLocalIdentifiers:v12 options:v10];
  v14 = [v13 firstObject];

  if (!v14)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v15 = MEMORY[0x1E696ABC0];
    v16 = [*(a1 + 32) duplicateAssetIdentifier];
    v17 = [v15 ph_genericErrorWithLocalizedDescription:{@"Failed to fetch source asset with duplicate UUID: %@", v16}];
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    goto LABEL_11;
  }

  v20 = *(a1 + 32);
  v21 = v20[1281];
  v22 = v20[1280];
  v76 = 0;
  *buf = *MEMORY[0x1E6960C70];
  *&buf[16] = *(MEMORY[0x1E6960C70] + 16);
  v23 = [v20 duplicatedAssetResourcesFromAsset:v14 stillSourceTime:buf flattenLivePhotoIntoStillPhoto:v21 duplicateAsOriginal:0 duplicateWithAdjustmentsBakedIn:v22 duplicatePhotoAsData:0 error:&v76];
  v24 = v76;
  if (v24)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v25 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"Failed to duplicate asset resources for placeholder asset: %@ error: %@", *(*(*(a1 + 48) + 8) + 40), v24}];
    v26 = *(*(a1 + 64) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

LABEL_12:
  v28 = MEMORY[0x1E69BE540];
  v29 = [v14 uuid];
  v30 = [v28 assetWithUUID:v29 inLibrary:*(a1 + 40)];

  if (*(*(*(a1 + 56) + 8) + 24) == 1 && v30 != 0)
  {
    v32 = *(a1 + 32);
    if (v32[1282])
    {
      goto LABEL_23;
    }

    v33 = *(a1 + 40);
    v75 = 0;
    v34 = [v32 _regenerateResourcesWithLocationDataRemoved:v14 sourceExternalResources:v23 photoLibrary:v33 error:&v75];
    v35 = v75;
    *(*(*(a1 + 56) + 8) + 24) = v34;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v36 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"Failed to regenerate resources with location data removed for placeholder asset: %@ error: %@", *(*(*(a1 + 48) + 8) + 40), v35}];
      v37 = *(*(a1 + 64) + 8);
      v38 = *(v37 + 40);
      *(v37 + 40) = v36;
    }

    if (*(*(*(a1 + 56) + 8) + 24))
    {
      goto LABEL_23;
    }

LABEL_29:
    v46 = 0;
    v39 = 0;
    goto LABEL_36;
  }

  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    goto LABEL_29;
  }

LABEL_23:
  v39 = [[PHAssetResourceBag alloc] initWithAssetResources:v23 assetCreationRequest:*(a1 + 32)];
  v40 = *(a1 + 40);
  v74 = 0;
  [(PHAssetResourceBag *)v39 validateForInsertIntoPhotoLibrary:v40 error:&v74];
  v41 = v74;
  v42 = v74;
  if (v42)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v41);
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v43 = *(a1 + 40);
    v44 = *(*(*(a1 + 48) + 8) + 40);
    v45 = *(a1 + 32);
    v73 = 0;
    v46 = [v45 createAssetFromValidatedResources:v39 withUUID:v44 assetAlreadyExistsAsPlaceholder:1 inPhotoLibrary:v43 error:&v73];
    v47 = v73;
    if (!v46)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v50 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"Failed to fetch destination asset with UUID: %@ error: %@", *(*(*(a1 + 48) + 8) + 40), v47}];
      v51 = *(*(a1 + 64) + 8);
      v52 = *(v51 + 40);
      *(v51 + 40) = v50;

      goto LABEL_35;
    }

    v48 = [v46 momentShare];

    if (v48)
    {
      v49 = [MEMORY[0x1E69BF328] savedAssetTypeForMomentSharedAsset];
    }

    else
    {
      v53 = [v46 collectionShare];

      if (!v53)
      {
        v65 = [v46 fetchSourceAssetForDuplicationIfExists];
        v66 = [v65 additionalAttributes];
        v72 = [v66 originalStableHash];

        v71 = v65;
        v67 = [v65 additionalAttributes];
        v70 = [v67 adjustedStableHash];

        if (v72)
        {
          v68 = [v46 additionalAttributes];
          [v68 setOriginalStableHash:v72];
        }

        if (v70)
        {
          v69 = [v46 additionalAttributes];
          [v69 setAdjustedStableHash:v70];
        }

        [v46 fixupPlaceholderAssetWithSavedAssetType:{objc_msgSend(MEMORY[0x1E69BF328], "defaultSavedAssetTypeForPhotoKitAssetCreationRequest")}];

LABEL_35:
        if (*(*(*(a1 + 56) + 8) + 24))
        {
          goto LABEL_41;
        }

        goto LABEL_36;
      }

      v49 = [MEMORY[0x1E69BF328] savedAssetTypeForCollectionShareAsset];
    }

    [v46 fixupPlaceholderAssetWithSavedAssetType:v49];
    goto LABEL_35;
  }

  v46 = 0;
LABEL_36:
  v54 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    v55 = *(*(*(a1 + 48) + 8) + 40);
    v56 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138412546;
    *&buf[4] = v55;
    *&buf[12] = 2112;
    *&buf[14] = v56;
    _os_log_impl(&dword_19C86F000, v54, OS_LOG_TYPE_ERROR, "Failed to update placeholder asset %@ after source resources download: %@", buf, 0x16u);
  }

  v57 = MEMORY[0x1E69BE540];
  v58 = *(*(*(a1 + 48) + 8) + 40);
  v59 = [*(a1 + 40) managedObjectContext];
  v60 = [v57 assetWithUUID:v58 inManagedObjectContext:v59];

  if (v60)
  {
    [v60 setDestinationAssetCopyStateOnSourceAsset:0xFFFFFFFFLL];
    v61 = [*(a1 + 40) managedObjectContext];
    [v61 deleteObject:v60];
  }

LABEL_41:
  v62 = *(*(a1 + 32) + 1256);
  if (v62)
  {
    [v62 completeTransactionScope:*MEMORY[0x1E69BF110]];
    v63 = *(a1 + 32);
    v64 = *(v63 + 1256);
    *(v63 + 1256) = 0;
  }
}

- (id)_createPlaceholderManagedAssetFromSourceManagedAsset:(id)a3 inPhotoLibrary:(id)a4 error:(id *)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  LOWORD(v48) = 257;
  v10 = [MEMORY[0x1E69BE540] insertAssetIntoPhotoLibrary:v9 mainFileURL:0 mainFileMetadata:0 savedAssetType:objc_msgSend(MEMORY[0x1E69BF328] bundleScope:"savedAssetTypeForPlaceholder") uuid:-[PHAssetCreationRequestPlaceholderSupport _bundleScopeForPlaceholderAsset](self replacementUUID:"_bundleScopeForPlaceholderAsset") imageSource:0 imageData:0 isPlaceholder:0 deleteFileOnFailure:{0, v48}];
  if (!v10)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = [v8 uuid];
    v16 = [v14 ph_genericErrorWithLocalizedDescription:{@"Failed to insert placeholder asset for source asset: %@", v15}];

    goto LABEL_25;
  }

  v11 = [v8 shareRelationship];

  v52 = a5;
  if (v11)
  {
    v49 = 1;
    v50 = [MEMORY[0x1E69BE540] shouldPerformServerCopyWithSourceAsset:v8 copyingFromShare:1 photoLibrary:v9] ^ 1;
    v51 = 0;
    v53 = 0;
    v12 = 1;
    v13 = 1;
  }

  else
  {
    v53 = 0;
    v17 = [(PHAssetCreationRequest *)self adjustmentBakeInOptions];
    if (!v17)
    {
      v17 = objc_alloc_init(PHAssetCreationAdjustmentBakeInOptions);
    }

    v18 = MEMORY[0x1E69BE540];
    v19 = [(PHAssetCreationAdjustmentBakeInOptions *)v17 plRepresentation];
    v20 = [v18 shouldBakeInAdjustmentsAndFlattenLivePhoto:&v53 forSourceAsset:v8 adjustmentBakeInOptions:v19];

    if ([(PHAssetCreationAdjustmentBakeInOptions *)v17 flattenLivePhotoToStillIfNeeded])
    {
      v20 = 1;
      v53 = 1;
    }

    v51 = v20;
    v21 = [(PHAssetCreationRequest *)self metadataCopyOptions];
    if (!v21)
    {
      v21 = objc_alloc_init(PHAssetCreationMetadataCopyOptions);
    }

    v13 = [(PHAssetCreationMetadataCopyOptions *)v21 shouldCopyTitleDescriptionAndKeywords];
    v12 = [(PHAssetCreationMetadataCopyOptions *)v21 shouldCopySpatialOverCaptureResources];
    v49 = [(PHAssetCreationMetadataCopyOptions *)v21 shouldCopyLocationData];

    v50 = 1;
  }

  v22 = [(PHAssetCreationRequest *)self momentShareUUID];

  if (v22)
  {
    v23 = MEMORY[0x1E69BE5D0];
    v24 = [(PHAssetCreationRequest *)self momentShareUUID];
LABEL_16:
    v26 = v24;
    v27 = [v9 managedObjectContext];
    v28 = [v23 shareWithUUID:v26 includeTrashed:1 inManagedObjectContext:v27];

    goto LABEL_17;
  }

  v25 = [(PHAssetCreationRequest *)self collectionShareUUID];

  if (v25)
  {
    v23 = MEMORY[0x1E69BE358];
    v24 = [(PHAssetCreationRequest *)self collectionShareUUID];
    goto LABEL_16;
  }

  v28 = 0;
LABEL_17:
  v29 = [(PHChangeRequest *)self uuid];
  v30 = [(PHAssetCreationRequestPlaceholderSupport *)self _bundleScopeForPlaceholderAsset];
  v31 = [(PHAssetCreationRequest *)self importSessionID];
  BYTE2(v47) = v12;
  BYTE1(v47) = v13;
  LOBYTE(v47) = v53;
  LODWORD(v30) = [v10 setupPlaceholderAssetWithRequiredPropertiesFromSourceAsset:v8 placeholderAssetUUID:v29 bundleScope:v30 share:v28 importSessionID:v31 bakeInAdjustmentsFromSourceAsset:v51 flattenLivePhoto:v47 copyTitleDescriptionAndKeywords:v9 copyCameraProcessingAdjustmentResources:? library:?];

  if (!v30)
  {
    v36 = MEMORY[0x1E696ABC0];
    v37 = [v10 scopedIdentifier];
    v16 = [v36 ph_genericErrorWithLocalizedDescription:{@"Failed to setup placeholder asset: %@", v37}];

    a5 = v52;
LABEL_24:

    goto LABEL_25;
  }

  a5 = v52;
  if (v50)
  {
    self->_placeholderCreationMode = 1;
    self->_downloadSourceMode_shouldBakeInAdjustments = v51;
    self->_downloadSourceMode_shouldFlattenLivePhoto = v53;
    self->_downloadSourceMode_shouldCopyLocationData = v49;
    v32 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = [v10 scopedIdentifier];
      v34 = [v8 scopedIdentifier];
      *buf = 138412546;
      v55 = v33;
      v56 = 2112;
      v57 = v34;
      _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_INFO, "Decided to download source resources on placeholder asset: %@ source asset: %@", buf, 0x16u);
    }

    goto LABEL_22;
  }

  self->_placeholderCreationMode = 0;
  v43 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = [v10 scopedIdentifier];
    v45 = [v8 scopedIdentifier];
    *buf = 138412546;
    v55 = v44;
    v56 = 2112;
    v57 = v45;
    _os_log_impl(&dword_19C86F000, v43, OS_LOG_TYPE_INFO, "Decided to perform server copy on placeholder asset: %@ source asset: %@", buf, 0x16u);
  }

  v16 = 0;
  if (([MEMORY[0x1E69BE540] createMasterForPlaceholderAsset:v10 withSourceAsset:v8 shouldBakeInAdjustments:v51 shouldFlattenLivePhoto:v53 placeholderResourceURLToSourceResourceURLMap:0 photoLibrary:v9] & 1) == 0)
  {
    goto LABEL_24;
  }

  v46 = [MEMORY[0x1E69BE540] createAssetResourcesForPlaceholderAsset:v10 withSourceAsset:v8 shouldBakeInAdjustments:v51 shouldFlattenLivePhoto:v53 placeholderResourceURLToSourceResourceURLMap:0 photoLibrary:v9];

  v16 = 0;
  if (v46)
  {
LABEL_22:
    v35 = [v8 additionalAttributes];
    [v35 setDestinationAssetCopyState:1];

    v16 = 0;
    goto LABEL_29;
  }

LABEL_25:
  if (a5)
  {
    v38 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = [v10 scopedIdentifier];
      v40 = [v8 scopedIdentifier];
      *buf = 138412802;
      v55 = v39;
      v56 = 2112;
      v57 = v40;
      v58 = 2112;
      v59 = v16;
      _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_INFO, "Failed to create placeholder asset %@ with source asset %@ returning error: %@", buf, 0x20u);
    }

    v41 = v16;
    *a5 = v16;
  }

LABEL_29:

  return v10;
}

- (unsigned)_bundleScopeForPlaceholderAsset
{
  v3 = [(PHAssetCreationRequest *)self momentShareUUID];

  if (v3)
  {
    return 1;
  }

  v5 = [(PHAssetCreationRequest *)self collectionShareUUID];

  if (v5)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (void)changeFailedOnDaemonWithLibrary:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (!self->_placeholderCreationMode)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__PHAssetCreationRequestPlaceholderSupport_changeFailedOnDaemonWithLibrary_error___block_invoke;
    v7[3] = &unk_1E75AAEB0;
    v7[4] = self;
    v8 = v5;
    [v8 performBlockAndWait:v7];
  }
}

void __82__PHAssetCreationRequestPlaceholderSupport_changeFailedOnDaemonWithLibrary_error___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE540];
  v3 = [*(a1 + 32) uuid];
  v5 = [v2 assetWithUUID:v3 inLibrary:*(a1 + 40)];

  v4 = v5;
  if (v5)
  {
    [v5 setDestinationAssetCopyStateOnSourceAsset:0xFFFFFFFFLL];
    v4 = v5;
  }
}

- (void)changeFailedOnClientWithLibrary:(id)a3 error:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PHAssetCreationRequestPlaceholderSupport_changeFailedOnClientWithLibrary_error___block_invoke;
  v7[3] = &unk_1E75AAEB0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [v6 performBlockAndWait:v7];
}

void __82__PHAssetCreationRequestPlaceholderSupport_changeFailedOnClientWithLibrary_error___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE540];
  v3 = [*(a1 + 32) uuid];
  v5 = [v2 assetWithUUID:v3 inLibrary:*(a1 + 40)];

  v4 = v5;
  if (v5)
  {
    [v5 setDestinationAssetCopyStateOnSourceAsset:0xFFFFFFFFLL];
    v4 = v5;
  }
}

- (PHAssetCreationRequestPlaceholderSupport)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8.receiver = self;
  v8.super_class = PHAssetCreationRequestPlaceholderSupport;
  v5 = [(PHAssetCreationRequest *)&v8 initWithXPCDict:a3 request:a4 clientAuthorization:a5];
  if (v5)
  {
    v6 = [MEMORY[0x1E696B0B8] currentConnection];
    objc_storeWeak(&v5->_clientConnection, v6);
  }

  return v5;
}

- (id)initForNewObjectWithUUID:(id)a3
{
  v4 = a3;
  v5 = [[PHChangeRequestHelper alloc] initForNewObjectWithUUID:v4 changeRequest:self];

  v6 = [(PHAssetCreationRequest *)self initWithHelper:v5];
  return v6;
}

@end