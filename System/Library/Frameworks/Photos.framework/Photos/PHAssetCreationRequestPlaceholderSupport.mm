@interface PHAssetCreationRequestPlaceholderSupport
- (BOOL)_regenerateResourcesWithLocationDataRemoved:(id)removed sourceExternalResources:(id)resources photoLibrary:(id)library error:(id *)error;
- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (NSXPCConnection)clientConnection;
- (PHAssetCreationRequestPlaceholderSupport)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (id)_createPlaceholderManagedAssetFromSourceManagedAsset:(id)asset inPhotoLibrary:(id)library error:(id *)error;
- (id)_fetchOptionsForDuplicateAssetPhotoLibraryType:(id)type;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObjectWithUUID:(id)d;
- (unsigned)_bundleScopeForPlaceholderAsset;
- (void)_updateManagedAssetAfterResourceDownload:(id)download;
- (void)changeFailedOnClientWithLibrary:(id)library error:(id)error;
- (void)changeFailedOnDaemonWithLibrary:(id)library error:(id)error;
- (void)performTransactionCompletionHandlingInPhotoLibrary:(id)library;
@end

@implementation PHAssetCreationRequestPlaceholderSupport

- (NSXPCConnection)clientConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_clientConnection);

  return WeakRetained;
}

- (void)performTransactionCompletionHandlingInPhotoLibrary:(id)library
{
  v36 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  uuid = [(PHChangeRequest *)self uuid];
  v6 = [PHObject uuidFromLocalIdentifier:uuid];

  v7 = [MEMORY[0x1E69BE540] assetWithUUID:v6 inLibrary:libraryCopy];
  duplicateAssetIdentifier = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
  v9 = [PHObject uuidFromLocalIdentifier:duplicateAssetIdentifier];

  v10 = [MEMORY[0x1E69BE540] assetWithUUID:v9 inLibrary:libraryCopy];
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
          pathManager = [libraryCopy pathManager];
          v15 = v13;
          v16 = v12;
          v28 = [v15 beginClientTransactionWithChangeScopes:v12 pathManager:pathManager identifier:"-[PHAssetCreationRequestPlaceholderSupport performTransactionCompletionHandlingInPhotoLibrary:]"];

          v27 = MEMORY[0x1E69BE300];
          transactionToken = [v28 transactionToken];
          pathManager2 = [libraryCopy pathManager];
          v19 = [v27 beginServerTransactionWithToken:transactionToken changeScopes:v16 pathManager:pathManager2 identifier:"-[PHAssetCreationRequestPlaceholderSupport performTransactionCompletionHandlingInPhotoLibrary:]"];
          serverTransaction = self->_serverTransaction;
          self->_serverTransaction = v19;

          [v28 completeTransaction];
        }

        if ([v11 checkAllResourcesRequiredForCPLDisableWithReachableBlock:0])
        {
          [(PHAssetCreationRequestPlaceholderSupport *)self _updateManagedAssetAfterResourceDownload:libraryCopy];
        }

        else
        {
          defaultManager = [MEMORY[0x1E69BE268] defaultManager];
          uuid2 = [v11 uuid];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __95__PHAssetCreationRequestPlaceholderSupport_performTransactionCompletionHandlingInPhotoLibrary___block_invoke;
          v29[3] = &unk_1E75A46B8;
          v30 = libraryCopy;
          selfCopy = self;
          [defaultManager requestRequiredResourcesForManagedAssetObjectUUID:uuid2 library:v30 completionHandler:v29];
        }
      }

      else
      {
        v23 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          uuid3 = [(PHChangeRequest *)self uuid];
          *buf = 138412546;
          v33 = v9;
          v34 = 2112;
          v35 = uuid3;
          _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Failed to find source asset %@ for placeholder asset %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    if (v10)
    {
      additionalAttributes = [v10 additionalAttributes];
      [additionalAttributes setDestinationAssetCopyState:0xFFFFFFFFLL];
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

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  duplicateAssetIdentifier = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
  v8 = [PHObject uuidFromLocalIdentifier:duplicateAssetIdentifier];

  v9 = [MEMORY[0x1E69BE540] assetWithUUID:v8 inLibrary:libraryCopy];
  v15 = 0;
  v10 = [(PHAssetCreationRequestPlaceholderSupport *)self _createPlaceholderManagedAssetFromSourceManagedAsset:v9 inPhotoLibrary:libraryCopy error:&v15];

  v11 = v15;
  if (!v10)
  {
    v12 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Failed to create placeholder asset"];

    if (error)
    {
      v13 = v12;
      *error = v12;
    }

    v11 = v12;
  }

  return v10;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
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
  v7 = libraryCopy;
  v11 = v7;
  v12 = &v14;
  v13 = &v18;
  [v7 performBlockAndWait:v10];
  v8 = *(v15 + 24);
  if (error && (v15[3] & 1) == 0)
  {
    *error = v19[5];
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

- (id)_fetchOptionsForDuplicateAssetPhotoLibraryType:(id)type
{
  typeCopy = type;
  v5 = [[PHPhotoLibrary alloc] initWithPLPhotoLibrary:typeCopy type:[(PHAssetCreationRequest *)self duplicateAssetPhotoLibraryType]];

  librarySpecificFetchOptions = [(PHPhotoLibrary *)v5 librarySpecificFetchOptions];

  return librarySpecificFetchOptions;
}

- (BOOL)_regenerateResourcesWithLocationDataRemoved:(id)removed sourceExternalResources:(id)resources photoLibrary:(id)library error:(id *)error
{
  removedCopy = removed;
  resourcesCopy = resources;
  libraryCopy = library;
  if (![resourcesCopy count])
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
  v113 = [resourcesCopy _pl_indexBy:&__block_literal_global_7058];
  errorCopy = error;
  v111 = libraryCopy;
  array = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E69C06D8] policyWithLocation:0];
  [array addObject:v13];
  v114 = array;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = *MEMORY[0x1E69AE990];
  [dictionary setObject:&unk_1F102C4B8 forKeyedSubscript:*MEMORY[0x1E69AE990]];
  v16 = MEMORY[0x1E69C07D0];
  uniformTypeIdentifier = [removedCopy uniformTypeIdentifier];
  LODWORD(v16) = [v16 outputSupportedForTypeIdentifier:uniformTypeIdentifier];

  v18 = MEMORY[0x1E69AE940];
  if (v16)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE940]];
  }

  v19 = [MEMORY[0x1E69C06C8] policyWithPolicies:v114];
  [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x1E69AE968]];

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary2 setObject:&unk_1F102C4B8 forKeyedSubscript:v15];
  [dictionary2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE908]];
  [dictionary2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v18];
  [dictionary2 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69AE910]];
  v21 = MEMORY[0x1E695DFF8];
  v22 = NSTemporaryDirectory();
  v23 = [v21 fileURLWithPath:v22];
  v24 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v27 = [v24 stringWithFormat:@"PHAssetCreationRequestPlaceholderSupport-%@", uUIDString];
  v112 = [v23 URLByAppendingPathComponent:v27];

  v28 = dispatch_group_create();
  if (!v142[5])
  {
    if ([removedCopy isPhoto])
    {
      v29 = [v113 objectForKeyedSubscript:&unk_1F102C4D0];
      v108 = v29;
      if (v29)
      {
        v30 = MEMORY[0x1E69AE880];
        fileURL = [v29 fileURL];
        v106 = [v30 collectionWithMainResourceURL:fileURL];

        v32 = MEMORY[0x1E69C07D0];
        uniformTypeIdentifier2 = [removedCopy uniformTypeIdentifier];
        LODWORD(v32) = [v32 outputSupportedForTypeIdentifier:uniformTypeIdentifier2];

        if (v32)
        {
          v34 = MEMORY[0x1E69AE880];
          fileURL2 = [v108 fileURL];
          lastPathComponent = [fileURL2 lastPathComponent];
          v37 = [v112 URLByAppendingPathComponent:lastPathComponent];
          v38 = [v34 collectionWithMainResourceURL:v37];
        }

        else
        {
          fileURL3 = [v108 fileURL];
          lastPathComponent2 = [fileURL3 lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent2 stringByDeletingPathExtension];
          fileURL2 = [stringByDeletingPathExtension stringByAppendingPathExtensionForType:*MEMORY[0x1E6982E58]];

          v54 = MEMORY[0x1E69AE880];
          lastPathComponent = [v112 URLByAppendingPathComponent:fileURL2];
          v38 = [v54 collectionWithMainResourceURL:lastPathComponent];
        }

        dispatch_group_enter(v28);
        v49 = objc_alloc_init(MEMORY[0x1E69AE870]);
        v135[0] = MEMORY[0x1E69E9820];
        v135[1] = 3221225472;
        v135[2] = __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_78;
        v135[3] = &unk_1E75A4690;
        v140 = &v141;
        v136 = v113;
        v137 = resourcesCopy;
        v138 = v38;
        v139 = v28;
        v104 = v138;
        [v49 convertImageAtSourceURLCollection:v106 toDestinationURLCollection:v138 options:dictionary completionHandler:v135];
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

      if (![removedCopy hasAdjustments])
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
        fileURL4 = [v55 fileURL];
        v58 = [v56 collectionWithMainResourceURL:fileURL4];

        v59 = MEMORY[0x1E69AE880];
        fileURL5 = [v102 fileURL];
        lastPathComponent3 = [fileURL5 lastPathComponent];
        v62 = [v112 URLByAppendingPathComponent:lastPathComponent3];
        v63 = [v59 collectionWithMainResourceURL:v62];

        dispatch_group_enter(v28);
        v64 = v134;
        v134[0] = MEMORY[0x1E69E9820];
        v134[1] = 3221225472;
        v134[2] = __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_82;
        v134[3] = &unk_1E75A4690;
        v134[8] = &v141;
        v134[4] = v113;
        v134[5] = resourcesCopy;
        v65 = v63;
        v134[6] = v65;
        v134[7] = v28;
        [v100 convertImageAtSourceURLCollection:v58 toDestinationURLCollection:v65 options:dictionary completionHandler:v134];
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
      if (v142[5] || ![removedCopy isVideo])
      {
        goto LABEL_31;
      }

      v40 = [v113 objectForKeyedSubscript:&unk_1F102C500];
      v41 = v40;
      if (v40)
      {
        v42 = MEMORY[0x1E69AE880];
        fileURL6 = [v40 fileURL];
        v106 = [v42 collectionWithMainResourceURL:fileURL6];

        v44 = MEMORY[0x1E69AE880];
        fileURL7 = [v41 fileURL];
        lastPathComponent4 = [fileURL7 lastPathComponent];
        v47 = [v112 URLByAppendingPathComponent:lastPathComponent4];
        v48 = [v44 collectionWithMainResourceURL:v47];

        dispatch_group_enter(v28);
        v49 = objc_alloc_init(MEMORY[0x1E69AE888]);
        v128[0] = MEMORY[0x1E69E9820];
        v128[1] = 3221225472;
        v128[2] = __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_86;
        v128[3] = &unk_1E75A4690;
        v133 = &v141;
        v129 = v113;
        v130 = resourcesCopy;
        v131 = v48;
        v132 = v28;
        v104 = v131;
        v50 = [v49 convertVideoAtSourceURLCollection:v106 toDestinationURLCollection:v131 options:dictionary2 completionHandler:v128];
      }

      else
      {
        v49 = 0;
        v104 = 0;
        v106 = 0;
      }

      if (v142[5] || ![removedCopy hasAdjustments])
      {
        goto LABEL_30;
      }

      v100 = v49;
      v67 = [v113 objectForKeyedSubscript:&unk_1F102C518];
      v102 = v67;
      if (v67)
      {
        v68 = MEMORY[0x1E69AE880];
        fileURL8 = [v67 fileURL];
        v99 = [v68 collectionWithMainResourceURL:fileURL8];

        v70 = MEMORY[0x1E69AE880];
        fileURL9 = [v102 fileURL];
        lastPathComponent5 = [fileURL9 lastPathComponent];
        v73 = [v112 URLByAppendingPathComponent:lastPathComponent5];
        v74 = [v70 collectionWithMainResourceURL:v73];

        dispatch_group_enter(v28);
        v64 = v127;
        v127[0] = MEMORY[0x1E69E9820];
        v127[1] = 3221225472;
        v127[2] = __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_89;
        v127[3] = &unk_1E75A4690;
        v127[8] = &v141;
        v127[4] = v113;
        v127[5] = resourcesCopy;
        v65 = v74;
        v127[6] = v65;
        v127[7] = v28;
        v75 = [v100 convertVideoAtSourceURLCollection:v99 toDestinationURLCollection:v65 options:dictionary2 completionHandler:v127];
        v108 = v41;
        goto LABEL_21;
      }
    }

    v66 = 0;
    v49 = v100;
    goto LABEL_29;
  }

LABEL_31:
  if (!v142[5] && [removedCopy isPhotoIris])
  {
    v76 = [v113 objectForKeyedSubscript:&unk_1F102C530];
    v77 = v76;
    if (v76)
    {
      v78 = MEMORY[0x1E69AE880];
      fileURL10 = [v76 fileURL];
      v109 = [v78 collectionWithMainResourceURL:fileURL10];

      v80 = MEMORY[0x1E69AE880];
      fileURL11 = [v77 fileURL];
      lastPathComponent6 = [fileURL11 lastPathComponent];
      v83 = [v112 URLByAppendingPathComponent:lastPathComponent6];
      v84 = [v80 collectionWithMainResourceURL:v83];

      dispatch_group_enter(v28);
      v85 = objc_alloc_init(MEMORY[0x1E69AE888]);
      v121[0] = MEMORY[0x1E69E9820];
      v121[1] = 3221225472;
      v121[2] = __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_92;
      v121[3] = &unk_1E75A4690;
      v126 = &v141;
      v122 = v113;
      v123 = resourcesCopy;
      v86 = v84;
      v124 = v86;
      v125 = v28;
      v87 = [v85 convertVideoAtSourceURLCollection:v109 toDestinationURLCollection:v86 options:dictionary2 completionHandler:v121];
    }

    else
    {
      v85 = 0;
      v109 = 0;
      v86 = 0;
    }

    if (!v142[5] && [removedCopy hasAdjustments])
    {
      v105 = v85;
      v88 = [v113 objectForKeyedSubscript:&unk_1F102C548];
      v107 = v88;
      if (v88)
      {
        v89 = MEMORY[0x1E69AE880];
        fileURL12 = [v88 fileURL];
        v101 = [v89 collectionWithMainResourceURL:fileURL12];

        v91 = MEMORY[0x1E69AE880];
        fileURL13 = [v107 fileURL];
        lastPathComponent7 = [fileURL13 lastPathComponent];
        v93 = [v112 URLByAppendingPathComponent:lastPathComponent7];
        v94 = [v91 collectionWithMainResourceURL:v93];

        dispatch_group_enter(v28);
        v115[0] = MEMORY[0x1E69E9820];
        v115[1] = 3221225472;
        v115[2] = __131__PHAssetCreationRequestPlaceholderSupport__regenerateResourcesWithLocationDataRemoved_sourceExternalResources_photoLibrary_error___block_invoke_95;
        v115[3] = &unk_1E75A4690;
        v120 = &v141;
        v116 = v113;
        v117 = resourcesCopy;
        v95 = v94;
        v118 = v95;
        v119 = v28;
        v96 = [v105 convertVideoAtSourceURLCollection:v101 toDestinationURLCollection:v95 options:dictionary2 completionHandler:v115];

        v88 = v107;
      }

      v85 = v105;
    }

    dispatch_group_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
  }

  v97 = v142;
  if (errorCopy)
  {
    *errorCopy = v142[5];
    v97 = v142;
  }

  v39 = v97[5] == 0;

  _Block_object_dispose(&v141, 8);
  libraryCopy = v111;
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

- (void)_updateManagedAssetAfterResourceDownload:(id)download
{
  downloadCopy = download;
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
  v5 = downloadCopy;
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

- (id)_createPlaceholderManagedAssetFromSourceManagedAsset:(id)asset inPhotoLibrary:(id)library error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  libraryCopy = library;
  LOWORD(v48) = 257;
  v10 = [MEMORY[0x1E69BE540] insertAssetIntoPhotoLibrary:libraryCopy mainFileURL:0 mainFileMetadata:0 savedAssetType:objc_msgSend(MEMORY[0x1E69BF328] bundleScope:"savedAssetTypeForPlaceholder") uuid:-[PHAssetCreationRequestPlaceholderSupport _bundleScopeForPlaceholderAsset](self replacementUUID:"_bundleScopeForPlaceholderAsset") imageSource:0 imageData:0 isPlaceholder:0 deleteFileOnFailure:{0, v48}];
  if (!v10)
  {
    v14 = MEMORY[0x1E696ABC0];
    uuid = [assetCopy uuid];
    v16 = [v14 ph_genericErrorWithLocalizedDescription:{@"Failed to insert placeholder asset for source asset: %@", uuid}];

    goto LABEL_25;
  }

  shareRelationship = [assetCopy shareRelationship];

  errorCopy = error;
  if (shareRelationship)
  {
    shouldCopyLocationData = 1;
    v50 = [MEMORY[0x1E69BE540] shouldPerformServerCopyWithSourceAsset:assetCopy copyingFromShare:1 photoLibrary:libraryCopy] ^ 1;
    v51 = 0;
    v53 = 0;
    shouldCopySpatialOverCaptureResources = 1;
    shouldCopyTitleDescriptionAndKeywords = 1;
  }

  else
  {
    v53 = 0;
    adjustmentBakeInOptions = [(PHAssetCreationRequest *)self adjustmentBakeInOptions];
    if (!adjustmentBakeInOptions)
    {
      adjustmentBakeInOptions = objc_alloc_init(PHAssetCreationAdjustmentBakeInOptions);
    }

    v18 = MEMORY[0x1E69BE540];
    plRepresentation = [(PHAssetCreationAdjustmentBakeInOptions *)adjustmentBakeInOptions plRepresentation];
    v20 = [v18 shouldBakeInAdjustmentsAndFlattenLivePhoto:&v53 forSourceAsset:assetCopy adjustmentBakeInOptions:plRepresentation];

    if ([(PHAssetCreationAdjustmentBakeInOptions *)adjustmentBakeInOptions flattenLivePhotoToStillIfNeeded])
    {
      v20 = 1;
      v53 = 1;
    }

    v51 = v20;
    metadataCopyOptions = [(PHAssetCreationRequest *)self metadataCopyOptions];
    if (!metadataCopyOptions)
    {
      metadataCopyOptions = objc_alloc_init(PHAssetCreationMetadataCopyOptions);
    }

    shouldCopyTitleDescriptionAndKeywords = [(PHAssetCreationMetadataCopyOptions *)metadataCopyOptions shouldCopyTitleDescriptionAndKeywords];
    shouldCopySpatialOverCaptureResources = [(PHAssetCreationMetadataCopyOptions *)metadataCopyOptions shouldCopySpatialOverCaptureResources];
    shouldCopyLocationData = [(PHAssetCreationMetadataCopyOptions *)metadataCopyOptions shouldCopyLocationData];

    v50 = 1;
  }

  momentShareUUID = [(PHAssetCreationRequest *)self momentShareUUID];

  if (momentShareUUID)
  {
    v23 = MEMORY[0x1E69BE5D0];
    momentShareUUID2 = [(PHAssetCreationRequest *)self momentShareUUID];
LABEL_16:
    v26 = momentShareUUID2;
    managedObjectContext = [libraryCopy managedObjectContext];
    v28 = [v23 shareWithUUID:v26 includeTrashed:1 inManagedObjectContext:managedObjectContext];

    goto LABEL_17;
  }

  collectionShareUUID = [(PHAssetCreationRequest *)self collectionShareUUID];

  if (collectionShareUUID)
  {
    v23 = MEMORY[0x1E69BE358];
    momentShareUUID2 = [(PHAssetCreationRequest *)self collectionShareUUID];
    goto LABEL_16;
  }

  v28 = 0;
LABEL_17:
  uuid2 = [(PHChangeRequest *)self uuid];
  _bundleScopeForPlaceholderAsset = [(PHAssetCreationRequestPlaceholderSupport *)self _bundleScopeForPlaceholderAsset];
  importSessionID = [(PHAssetCreationRequest *)self importSessionID];
  BYTE2(v47) = shouldCopySpatialOverCaptureResources;
  BYTE1(v47) = shouldCopyTitleDescriptionAndKeywords;
  LOBYTE(v47) = v53;
  LODWORD(_bundleScopeForPlaceholderAsset) = [v10 setupPlaceholderAssetWithRequiredPropertiesFromSourceAsset:assetCopy placeholderAssetUUID:uuid2 bundleScope:_bundleScopeForPlaceholderAsset share:v28 importSessionID:importSessionID bakeInAdjustmentsFromSourceAsset:v51 flattenLivePhoto:v47 copyTitleDescriptionAndKeywords:libraryCopy copyCameraProcessingAdjustmentResources:? library:?];

  if (!_bundleScopeForPlaceholderAsset)
  {
    v36 = MEMORY[0x1E696ABC0];
    scopedIdentifier = [v10 scopedIdentifier];
    v16 = [v36 ph_genericErrorWithLocalizedDescription:{@"Failed to setup placeholder asset: %@", scopedIdentifier}];

    error = errorCopy;
LABEL_24:

    goto LABEL_25;
  }

  error = errorCopy;
  if (v50)
  {
    self->_placeholderCreationMode = 1;
    self->_downloadSourceMode_shouldBakeInAdjustments = v51;
    self->_downloadSourceMode_shouldFlattenLivePhoto = v53;
    self->_downloadSourceMode_shouldCopyLocationData = shouldCopyLocationData;
    v32 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      scopedIdentifier2 = [v10 scopedIdentifier];
      scopedIdentifier3 = [assetCopy scopedIdentifier];
      *buf = 138412546;
      v55 = scopedIdentifier2;
      v56 = 2112;
      v57 = scopedIdentifier3;
      _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_INFO, "Decided to download source resources on placeholder asset: %@ source asset: %@", buf, 0x16u);
    }

    goto LABEL_22;
  }

  self->_placeholderCreationMode = 0;
  v43 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    scopedIdentifier4 = [v10 scopedIdentifier];
    scopedIdentifier5 = [assetCopy scopedIdentifier];
    *buf = 138412546;
    v55 = scopedIdentifier4;
    v56 = 2112;
    v57 = scopedIdentifier5;
    _os_log_impl(&dword_19C86F000, v43, OS_LOG_TYPE_INFO, "Decided to perform server copy on placeholder asset: %@ source asset: %@", buf, 0x16u);
  }

  v16 = 0;
  if (([MEMORY[0x1E69BE540] createMasterForPlaceholderAsset:v10 withSourceAsset:assetCopy shouldBakeInAdjustments:v51 shouldFlattenLivePhoto:v53 placeholderResourceURLToSourceResourceURLMap:0 photoLibrary:libraryCopy] & 1) == 0)
  {
    goto LABEL_24;
  }

  v46 = [MEMORY[0x1E69BE540] createAssetResourcesForPlaceholderAsset:v10 withSourceAsset:assetCopy shouldBakeInAdjustments:v51 shouldFlattenLivePhoto:v53 placeholderResourceURLToSourceResourceURLMap:0 photoLibrary:libraryCopy];

  v16 = 0;
  if (v46)
  {
LABEL_22:
    additionalAttributes = [assetCopy additionalAttributes];
    [additionalAttributes setDestinationAssetCopyState:1];

    v16 = 0;
    goto LABEL_29;
  }

LABEL_25:
  if (error)
  {
    v38 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      scopedIdentifier6 = [v10 scopedIdentifier];
      scopedIdentifier7 = [assetCopy scopedIdentifier];
      *buf = 138412802;
      v55 = scopedIdentifier6;
      v56 = 2112;
      v57 = scopedIdentifier7;
      v58 = 2112;
      v59 = v16;
      _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_INFO, "Failed to create placeholder asset %@ with source asset %@ returning error: %@", buf, 0x20u);
    }

    v41 = v16;
    *error = v16;
  }

LABEL_29:

  return v10;
}

- (unsigned)_bundleScopeForPlaceholderAsset
{
  momentShareUUID = [(PHAssetCreationRequest *)self momentShareUUID];

  if (momentShareUUID)
  {
    return 1;
  }

  collectionShareUUID = [(PHAssetCreationRequest *)self collectionShareUUID];

  if (collectionShareUUID)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (void)changeFailedOnDaemonWithLibrary:(id)library error:(id)error
{
  libraryCopy = library;
  v6 = libraryCopy;
  if (!self->_placeholderCreationMode)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__PHAssetCreationRequestPlaceholderSupport_changeFailedOnDaemonWithLibrary_error___block_invoke;
    v7[3] = &unk_1E75AAEB0;
    v7[4] = self;
    v8 = libraryCopy;
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

- (void)changeFailedOnClientWithLibrary:(id)library error:(id)error
{
  libraryCopy = library;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PHAssetCreationRequestPlaceholderSupport_changeFailedOnClientWithLibrary_error___block_invoke;
  v7[3] = &unk_1E75AAEB0;
  v7[4] = self;
  v8 = libraryCopy;
  v6 = libraryCopy;
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

- (PHAssetCreationRequestPlaceholderSupport)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  v8.receiver = self;
  v8.super_class = PHAssetCreationRequestPlaceholderSupport;
  v5 = [(PHAssetCreationRequest *)&v8 initWithXPCDict:dict request:request clientAuthorization:authorization];
  if (v5)
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    objc_storeWeak(&v5->_clientConnection, currentConnection);
  }

  return v5;
}

- (id)initForNewObjectWithUUID:(id)d
{
  dCopy = d;
  v5 = [[PHChangeRequestHelper alloc] initForNewObjectWithUUID:dCopy changeRequest:self];

  v6 = [(PHAssetCreationRequest *)self initWithHelper:v5];
  return v6;
}

@end