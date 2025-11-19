@interface PHChangeValidationController
- (BOOL)_promptForUserConfirmationWithTitle:(id)a3 message:(id)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6 extensionItem:(id)a7;
- (BOOL)_recordObjectID:(id)a3 withSimpleDeleteValidators:(id)a4;
- (BOOL)promptForUserConfirmationWithTitle:(id)a3 message:(id)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6 previewAssetLocalIdentifiers:(id)a7;
- (PHChangeValidationController)initWithInsertRequests:(id)a3 updateRequests:(id)a4 deleteRequests:(id)a5 context:(id)a6 photoLibrary:(id)a7;
- (id)_prepare;
- (id)_simpleDeleteValidatorsWithManagedObjectContext:(id)a3;
- (id)_validateSimpleDeletionsWithValidators:(id)a3 requestsByObjectID:(id)a4;
- (id)validate;
@end

@implementation PHChangeValidationController

- (BOOL)_promptForUserConfirmationWithTitle:(id)a3 message:(id)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6 extensionItem:(id)a7
{
  v36[7] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = &stru_1F0FC60C8;
  }

  v17 = *MEMORY[0x1E695EE60];
  v35[0] = *MEMORY[0x1E695EE58];
  v35[1] = v17;
  if (v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = &stru_1F0FC60C8;
  }

  v36[0] = v16;
  v36[1] = v18;
  v19 = *MEMORY[0x1E695EE70];
  v35[2] = *MEMORY[0x1E695EE78];
  v35[3] = v19;
  v36[2] = v13;
  v36[3] = v14;
  v20 = *MEMORY[0x1E69D44D0];
  v35[4] = *MEMORY[0x1E695EE68];
  v35[5] = v20;
  v36[4] = MEMORY[0x1E695E118];
  v36[5] = MEMORY[0x1E695E118];
  v35[6] = *MEMORY[0x1E69D44E8];
  v36[6] = MEMORY[0x1E695E118];
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:7];
  v22 = v21;
  if (v15)
  {
    v23 = [v21 mutableCopy];
    [v23 setObject:@"com.apple.mobileslideshow.DestructiveChangeConfirmation" forKeyedSubscript:*MEMORY[0x1E69D44F0]];
    v24 = MEMORY[0x1E696ACC8];
    v34 = v15;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    v26 = [v24 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:0];
    [v23 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69D44F8]];

    v27 = [v23 copy];
    v22 = v27;
  }

  v28 = PLBackendGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *v33 = 138412290;
    *&v33[4] = v22;
    _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_INFO, "Prompting for user confirmation %@", v33, 0xCu);
  }

  v29 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, 0, v22);
  if (v29)
  {
    v30 = v29;
    *v33 = 0;
    CFUserNotificationReceiveResponse(v29, 0.0, v33);
    v31 = (v33[0] & 3) == 0;
    CFRelease(v30);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)promptForUserConfirmationWithTitle:(id)a3 message:(id)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6 previewAssetLocalIdentifiers:(id)a7
{
  v31[3] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a7)
  {
    v16 = MEMORY[0x1E696ABE0];
    v17 = a7;
    a7 = objc_alloc_init(v16);
    v30[0] = @"previewStyle";
    v30[1] = @"assetLocalIdentifiers";
    v31[0] = @"currentAssets";
    v31[1] = v17;
    v30[2] = @"photoLibraryURLString";
    v28 = [(PHChangeValidationController *)self photoLibrary];
    v18 = [v28 pathManager];
    v19 = [v18 libraryURL];
    [v19 absoluteString];
    v20 = v29 = self;
    v31[2] = v20;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
    v21 = v15;
    v22 = v14;
    v23 = v13;
    v25 = v24 = v12;

    [a7 setUserInfo:v25];
    v12 = v24;
    v13 = v23;
    v14 = v22;
    v15 = v21;

    self = v29;
  }

  v26 = [(PHChangeValidationController *)self _promptForUserConfirmationWithTitle:v12 message:v13 defaultButtonTitle:v14 alternateButtonTitle:v15 extensionItem:a7];

  return v26;
}

- (id)validate
{
  v115[1] = *MEMORY[0x1E69E9840];
  v3 = [(PHChangeValidationController *)self _prepare];
  if ([v3 isSuccess] && -[PHChangeValidationController confirmationRequired](self, "confirmationRequired"))
  {
    v4 = [(PHChangeValidationController *)self assetsToHide];
    v5 = [(PHChangeValidationController *)self assetsToDelete];
    v6 = [(PHChangeValidationController *)self albumsToDelete];
    v7 = [(PHChangeValidationController *)self foldersToDelete];
    v8 = [v4 count];
    v39 = [v5 count];
    *&v38 = [v6 count];
    *(&v38 + 1) = [v7 count];
    v36 = [(PHChangeValidationController *)self clientName];
    v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:v8];
    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:v39];
    v31 = v3;
    v108 = 0;
    v109 = &v108;
    v110 = 0x3032000000;
    v111 = __Block_byref_object_copy__1949;
    v112 = __Block_byref_object_dispose__1950;
    v113 = 0;
    v102 = 0;
    v103 = &v102;
    v104 = 0x3032000000;
    v105 = __Block_byref_object_copy__1949;
    v106 = __Block_byref_object_dispose__1950;
    v107 = 0;
    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy__1949;
    v100 = __Block_byref_object_dispose__1950;
    v101 = 0;
    v90 = 0;
    v91 = &v90;
    v92 = 0x3032000000;
    v93 = __Block_byref_object_copy__1949;
    v94 = __Block_byref_object_dispose__1950;
    v95 = 0;
    v84 = 0;
    v85 = &v84;
    v86 = 0x3032000000;
    v87 = __Block_byref_object_copy__1949;
    v88 = __Block_byref_object_dispose__1950;
    v89 = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x3032000000;
    v81 = __Block_byref_object_copy__1949;
    v82 = __Block_byref_object_dispose__1950;
    v83 = 0;
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__1949;
    v76 = __Block_byref_object_dispose__1950;
    v77 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__1949;
    v70 = __Block_byref_object_dispose__1950;
    v71 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__1949;
    v64 = __Block_byref_object_dispose__1950;
    v65 = 0;
    photoLibrary = self->_photoLibrary;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __40__PHChangeValidationController_validate__block_invoke;
    v40[3] = &unk_1E75A3A88;
    v40[4] = self;
    v29 = v4;
    v41 = v29;
    v57 = v8;
    v10 = v34;
    v42 = v10;
    v48 = &v108;
    v49 = &v102;
    v50 = &v96;
    v37 = v36;
    v43 = v37;
    v30 = v5;
    v44 = v30;
    v11 = v32;
    v45 = v11;
    v51 = &v90;
    v52 = &v84;
    v53 = &v78;
    v54 = &v72;
    v59 = v38;
    v55 = &v66;
    v56 = &v60;
    v58 = v39;
    v12 = v6;
    v46 = v12;
    v35 = v7;
    v47 = v35;
    [(PLPhotoLibrary *)photoLibrary performBlockAndWait:v40];
    if (!v8 && !v39 && v38 == 0)
    {
      v13 = v10;
      v3 = v31;
LABEL_20:

      _Block_object_dispose(&v60, 8);
      _Block_object_dispose(&v66, 8);

      _Block_object_dispose(&v72, 8);
      _Block_object_dispose(&v78, 8);

      _Block_object_dispose(&v84, 8);
      _Block_object_dispose(&v90, 8);

      _Block_object_dispose(&v96, 8);
      _Block_object_dispose(&v102, 8);

      _Block_object_dispose(&v108, 8);
      goto LABEL_21;
    }

    v14 = objc_opt_class();
    objc_sync_enter(v14);
    v33 = PLServicesLocalizedFrameworkString();
    v13 = v10;
    v3 = v31;
    if (v8)
    {
      v15 = [(PHChangeValidationController *)self promptForUserConfirmationWithTitle:v109[5] message:v103[5] defaultButtonTitle:v97[5] alternateButtonTitle:v33 previewAssetLocalIdentifiers:v13, v29, v30];
    }

    else
    {
      v15 = 1;
    }

    if (v15 && v38 != 0)
    {
      v16 = v73[5];
      v17 = v67[5];
      v18 = v61[5];
      v19 = PLServicesLocalizedFrameworkString();
      v15 = [(PHChangeValidationController *)self promptForUserConfirmationWithTitle:v16 message:v17 defaultButtonTitle:v18 alternateButtonTitle:v19];
    }

    if (v15 && v39)
    {
      v20 = v91[5];
      v21 = v85[5];
      v22 = v79[5];
      v23 = PLServicesLocalizedFrameworkString();
      LOBYTE(v20) = [(PHChangeValidationController *)self promptForUserConfirmationWithTitle:v20 message:v21 defaultButtonTitle:v22 alternateButtonTitle:v23 previewAssetLocalIdentifiers:v11];

      if (v20)
      {
        goto LABEL_19;
      }
    }

    else if (v15)
    {
LABEL_19:

      objc_sync_exit(v14);
      goto LABEL_20;
    }

    v24 = MEMORY[0x1E696ABC0];
    v114 = *MEMORY[0x1E696A578];
    v115[0] = @"Change request denied by user";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:&v114 count:{1, v29}];
    v26 = [v24 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:v25];

    v27 = [(PHChangeValidationController *)self _failureWithError:v26];

    v3 = v27;
    goto LABEL_19;
  }

LABEL_21:

  return v3;
}

void __40__PHChangeValidationController_validate__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69BE898]) initWithPhotoLibrary:*(*(a1 + 32) + 48)];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v43;
    do
    {
      v7 = 0;
      do
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v42 + 1) + 8 * v7) uuid];
        v9 = [(PHObject *)PHAsset localIdentifierWithUUID:v8];

        [*(a1 + 48) addObject:v9];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v5);
  }

  if (*(a1 + 168))
  {
    v10 = *(*(a1 + 96) + 8);
    v11 = *(v10 + 40);
    v12 = *(*(a1 + 104) + 8);
    v40 = *(v12 + 40);
    obj = v11;
    v13 = *(*(a1 + 112) + 8);
    v39 = *(v13 + 40);
    [v2 getWarningTitle:&obj message:&v40 buttonTitle:&v39 forAssets:*(a1 + 40) operation:0 clientName:*(a1 + 56)];
    objc_storeStrong((v10 + 40), obj);
    objc_storeStrong((v12 + 40), v40);
    objc_storeStrong((v13 + 40), v39);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = *(a1 + 64);
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      v18 = 0;
      do
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v35 + 1) + 8 * v18) uuid];
        v20 = [(PHObject *)PHAsset localIdentifierWithUUID:v19];

        [*(a1 + 72) addObject:v20];
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v16);
  }

  if (*(a1 + 176))
  {
    v21 = *(*(a1 + 120) + 8);
    v22 = *(v21 + 40);
    v23 = *(*(a1 + 128) + 8);
    v33 = *(v23 + 40);
    v34 = v22;
    v24 = *(*(a1 + 136) + 8);
    v32 = *(v24 + 40);
    [v2 getDeletionWarningTitle:&v34 message:&v33 buttonTitle:&v32 forAssets:*(a1 + 64) syndicationAssetCount:0 clientName:*(a1 + 56) style:1];
    objc_storeStrong((v21 + 40), v34);
    objc_storeStrong((v23 + 40), v33);
    objc_storeStrong((v24 + 40), v32);
  }

  if (*(a1 + 184) || *(a1 + 192))
  {
    v25 = *(*(a1 + 144) + 8);
    v26 = *(v25 + 40);
    v27 = *(*(a1 + 152) + 8);
    v30 = *(v27 + 40);
    v31 = v26;
    v28 = *(*(a1 + 160) + 8);
    v29 = *(v28 + 40);
    [v2 getDeletionWarningTitle:&v31 message:&v30 buttonTitle:&v29 forAlbums:*(a1 + 80) folders:*(a1 + 88) clientName:*(a1 + 56) style:1];
    objc_storeStrong((v25 + 40), v31);
    objc_storeStrong((v27 + 40), v30);
    objc_storeStrong((v28 + 40), v29);
  }
}

- (id)_validateSimpleDeletionsWithValidators:(id)a3 requestsByObjectID:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E69BF2D0];
  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 successWithResult:v9];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v22 = 0;
        v17 = [v16 validateForDeleteWithRequestsByObjectID:v7 error:&v22];
        v18 = v22;
        v19 = v18;
        if ((v17 & 1) == 0)
        {
          v20 = [(PHChangeValidationController *)self _failureWithError:v18];

          v10 = v20;
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (BOOL)_recordObjectID:(id)a3 withSimpleDeleteValidators:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if ([*(*(&v12 + 1) + 8 * v10) recordObjectID:{v5, v12}])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  LOBYTE(v8) = 1;
LABEL_11:

  return v8;
}

- (id)_simpleDeleteValidatorsWithManagedObjectContext:(id)a3
{
  v3 = a3;
  pl_dispatch_once();
  v4 = _simpleDeleteValidatorsWithManagedObjectContext__pl_once_object_16;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PHChangeValidationController__simpleDeleteValidatorsWithManagedObjectContext___block_invoke_2;
  v9[3] = &unk_1E75A3A60;
  v10 = v3;
  v5 = v3;
  v6 = v4;
  v7 = [v6 _pl_map:v9];

  return v7;
}

PHObjectDeleteValidator *__80__PHChangeValidationController__simpleDeleteValidatorsWithManagedObjectContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PHObjectDeleteValidator alloc] initWithEntityName:v3 managedObjectContext:*(a1 + 32)];

  return v4;
}

void __80__PHChangeValidationController__simpleDeleteValidatorsWithManagedObjectContext___block_invoke()
{
  v5[16] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE278] entityName];
  v5[0] = v0;
  v1 = [MEMORY[0x1E69BE270] entityName];
  v5[1] = v1;
  v5[2] = @"DetectedFace";
  v5[3] = @"DetectedFaceGroup";
  v5[4] = @"Person";
  v5[5] = @"Memory";
  v5[6] = @"FaceCrop";
  v5[7] = @"MomentShare";
  v5[8] = @"LibraryScope";
  v5[9] = @"CollectionShare";
  v5[10] = @"ShareParticipant";
  v5[11] = @"PhotosHighlight";
  v5[12] = @"Suggestion";
  v5[13] = @"Keyword";
  v5[14] = @"Question";
  v5[15] = @"GraphNode";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:16];
  v3 = [v2 copy];
  v4 = _simpleDeleteValidatorsWithManagedObjectContext__pl_once_object_16;
  _simpleDeleteValidatorsWithManagedObjectContext__pl_once_object_16 = v3;
}

- (id)_prepare
{
  v2 = self;
  v207 = *MEMORY[0x1E69E9840];
  if (self->_didPrepare)
  {
    v91 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = self;
    [v91 handleFailureInMethod:a2 object:self file:@"PHChangeValidationController.m" lineNumber:101 description:@"_prepare can only be called once"];
  }

  v2->_didPrepare = 1;
  v194 = 0;
  v195 = &v194;
  v196 = 0x3032000000;
  v197 = __Block_byref_object_copy__1949;
  v198 = __Block_byref_object_dispose__1950;
  v3 = MEMORY[0x1E69BF2D0];
  v4 = [MEMORY[0x1E695DFB0] null];
  v5 = [v3 successWithResult:v4];

  v199 = v5;
  v188 = 0;
  v189 = &v188;
  v190 = 0x3032000000;
  v191 = __Block_byref_object_copy__1949;
  v192 = __Block_byref_object_dispose__1950;
  v193 = 0;
  v114 = [(PHChangeValidationController *)self managedObjectContext];
  v104 = [(PHChangeValidationController *)self photoLibrary];
  v122 = [MEMORY[0x1E695DFA8] set];
  v118 = [MEMORY[0x1E695DFA8] set];
  v119 = [MEMORY[0x1E695DFA8] set];
  v117 = [MEMORY[0x1E695DFA8] set];
  v120 = [MEMORY[0x1E695DFA8] set];
  v112 = [MEMORY[0x1E695DFA8] set];
  v108 = [MEMORY[0x1E695DFA8] set];
  v106 = [MEMORY[0x1E695DFA8] set];
  v103 = [MEMORY[0x1E695DFA8] set];
  v105 = [MEMORY[0x1E695DFA8] set];
  v102 = [MEMORY[0x1E695DFA8] set];
  v113 = [MEMORY[0x1E695DFA8] set];
  v107 = [MEMORY[0x1E695DFA8] set];
  v121 = [MEMORY[0x1E695DFA8] set];
  v111 = [MEMORY[0x1E695DFA8] set];
  v123 = objc_opt_new();
  v101 = objc_opt_new();
  v100 = objc_opt_new();
  v99 = objc_opt_new();
  v98 = objc_opt_new();
  v97 = objc_opt_new();
  v96 = objc_opt_new();
  v95 = objc_opt_new();
  v6 = [MEMORY[0x1E69BE540] entityName];
  v7 = (v189 + 5);
  obj = v189[5];
  v127 = PLSafeEntityForNameInManagedObjectContext();
  objc_storeStrong(v7, obj);

  if (!v127)
  {
    v22 = [(PHChangeValidationController *)self _failureWithError:v189[5]];
    goto LABEL_127;
  }

  v8 = [MEMORY[0x1E69BE458] entityName];
  v9 = (v189 + 5);
  v186 = v189[5];
  v109 = PLSafeEntityForNameInManagedObjectContext();
  objc_storeStrong(v9, v186);

  v10 = (v189 + 5);
  if (!v109)
  {
    v22 = [(PHChangeValidationController *)self _failureWithError:v189[5]];
    goto LABEL_126;
  }

  v185 = v189[5];
  v94 = PLSafeEntityForNameInManagedObjectContext();
  objc_storeStrong(v10, v185);
  v11 = (v189 + 5);
  if (!v94)
  {
    v22 = [(PHChangeValidationController *)self _failureWithError:v189[5]];
    goto LABEL_125;
  }

  v184 = v189[5];
  v110 = PLSafeEntityForNameInManagedObjectContext();
  objc_storeStrong(v11, v184);
  v12 = (v189 + 5);
  if (!v110)
  {
    v22 = [(PHChangeValidationController *)self _failureWithError:v189[5]];
    goto LABEL_124;
  }

  v183 = v189[5];
  v116 = PLSafeEntityForNameInManagedObjectContext();
  objc_storeStrong(v12, v183);
  if (!v116)
  {
    v22 = [(PHChangeValidationController *)self _failureWithError:v189[5]];
    goto LABEL_123;
  }

  v125 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v93 = [(PHChangeValidationController *)self _simpleDeleteValidatorsWithManagedObjectContext:v114];
  v179 = 0;
  v180 = &v179;
  v181 = 0x2020000000;
  v182 = 0;
  v13 = [MEMORY[0x1E695DFA8] set];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PHChangeValidationController__prepare__block_invoke;
  aBlock[3] = &unk_1E75A3A10;
  v178 = &v179;
  v92 = v13;
  v177 = v92;
  v126 = _Block_copy(aBlock);
  v14 = self;
  if (![v195[5] isSuccess])
  {
    goto LABEL_31;
  }

  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v15 = [(PHChangeValidationController *)self insertRequests];
  v16 = [v15 countByEnumeratingWithState:&v172 objects:v206 count:16];
  if (!v16)
  {
    goto LABEL_30;
  }

  v17 = *v173;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v173 != v17)
      {
        objc_enumerationMutation(v15);
      }

      v19 = *(*(&v172 + 1) + 8 * i);
      if (([v19 conformsToProtocol:&unk_1F1032E38] & 1) == 0)
      {
        v23 = [v19 clientName];
        if ([v23 length])
        {
          v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid PHInsertChangeRequest from client: %@", v23];
          __WriteStackshot(v24);
        }

        else
        {
          __WriteStackshot(@"Invalid PHInsertChangeRequest");
        }

        v26 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Invalid insert request"];
        v27 = v189[5];
        v189[5] = v26;

        v28 = [(PHChangeValidationController *)self _failureWithError:v189[5]];
        v29 = v195[5];
        v195[5] = v28;

        goto LABEL_29;
      }

      v20 = (v189 + 5);
      v171 = v189[5];
      v21 = [v19 validateInsertIntoPhotoLibrary:v104 error:&v171];
      objc_storeStrong(v20, v171);
      if ((v21 & 1) == 0)
      {
        v25 = [(PHChangeValidationController *)self _failureWithError:v189[5]];
        v23 = v195[5];
        v195[5] = v25;
LABEL_29:

        goto LABEL_30;
      }
    }

    v16 = [v15 countByEnumeratingWithState:&v172 objects:v206 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_30:

  v14 = self;
LABEL_31:
  if (![v195[5] isSuccess])
  {
    goto LABEL_57;
  }

  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v30 = [(PHChangeValidationController *)v14 updateRequests];
  v31 = [v30 countByEnumeratingWithState:&v167 objects:v205 count:16];
  if (!v31)
  {
    goto LABEL_56;
  }

  v32 = *v168;
  v124 = v30;
  while (2)
  {
    v33 = 0;
    while (2)
    {
      if (*v168 != v32)
      {
        objc_enumerationMutation(v124);
      }

      v34 = *(*(&v167 + 1) + 8 * v33);
      v35 = [v34 objectID];
      v36 = [v35 entity];
      if ([v36 isKindOfEntity:v127] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v37 = v34;
        v38 = [v37 contentEditingOutput];
        v39 = [v37 isHiding];
        if (v39)
        {
          [v119 addObject:v35];
        }

        if ([v37 isRevertingContentToOriginal])
        {
          [v118 addObject:v35];
          v40 = v122;
          if (!v38)
          {
            goto LABEL_51;
          }

LABEL_50:
          [v40 addObject:v35];
          goto LABEL_51;
        }

        if (v38)
        {
          v40 = v122;
        }

        else
        {
          v40 = v117;
        }

        if (((v38 == 0) & v39) == 0)
        {
          goto LABEL_50;
        }

LABEL_51:
      }

      else if (objc_opt_respondsToSelector())
      {
        [v123 addObject:v35];
      }

      if (v35)
      {
        [v125 setObject:v34 forKey:v35];
      }

      v126[2](v126, v34);

      if (v31 != ++v33)
      {
        continue;
      }

      break;
    }

    v30 = v124;
    v31 = [v124 countByEnumeratingWithState:&v167 objects:v205 count:16];
    if (v31)
    {
      continue;
    }

    break;
  }

LABEL_56:

  v14 = self;
LABEL_57:
  if (![v195[5] isSuccess])
  {
    goto LABEL_117;
  }

  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v41 = [(PHChangeValidationController *)v14 deleteRequests];
  v42 = [v41 countByEnumeratingWithState:&v163 objects:v204 count:16];
  if (!v42)
  {
    goto LABEL_116;
  }

  v43 = *v164;
  while (2)
  {
    v44 = 0;
    while (2)
    {
      if (*v164 != v43)
      {
        objc_enumerationMutation(v41);
      }

      v45 = *(*(&v163 + 1) + 8 * v44);
      v46 = [v45 objectID];
      v47 = [v46 entity];
      if (![v47 isKindOfEntity:v127])
      {
        if ([v47 isKindOfEntity:v116])
        {
          objc_opt_class();
          v53 = v45;
          if (objc_opt_isKindOfClass())
          {
            v54 = v53;
          }

          else
          {
            v54 = 0;
          }

          v50 = v54;

          v55 = v121;
          if (v50)
          {
            if ([v50 operation] == 2)
            {
              v55 = v111;
            }

            else
            {
              v55 = v121;
            }
          }
        }

        else if ([v47 isKindOfEntity:v110])
        {
          objc_opt_class();
          v56 = v45;
          if (objc_opt_isKindOfClass())
          {
            v57 = v56;
          }

          else
          {
            v57 = 0;
          }

          v50 = v57;

          v55 = v113;
          if (v50)
          {
            if ([v50 operation] == 2)
            {
              v55 = v107;
            }

            else
            {
              v55 = v113;
            }
          }
        }

        else
        {
          if (![v47 isKindOfEntity:v109])
          {
            if (![(PHChangeValidationController *)self _recordObjectID:v46 withSimpleDeleteValidators:v93])
            {
              v63 = MEMORY[0x1E696ABC0];
              if (v46)
              {
                v202 = *MEMORY[0x1E696A578];
                v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown type %@", v46];
                v203 = v64;
                [MEMORY[0x1E695DF20] dictionaryWithObjects:&v203 forKeys:&v202 count:1];
              }

              else
              {
                v200 = *MEMORY[0x1E696A578];
                v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown type"];
                v201 = v64;
                [MEMORY[0x1E695DF20] dictionaryWithObjects:&v201 forKeys:&v200 count:1];
              }
              v65 = ;
              v66 = [v63 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v65];
              v67 = v189[5];
              v189[5] = v66;

              v68 = [(PHChangeValidationController *)self _failureWithError:v189[5]];
              v69 = v195[5];
              v195[5] = v68;

              goto LABEL_116;
            }

            goto LABEL_107;
          }

          objc_opt_class();
          v58 = v45;
          if (objc_opt_isKindOfClass())
          {
            v59 = v58;
          }

          else
          {
            v59 = 0;
          }

          v50 = v59;

          if (v50 && [v50 operation] == 2)
          {
            v60 = [v47 isKindOfEntity:v94] == 0;
            v62 = v102;
            v61 = v103;
          }

          else
          {
            v60 = [v47 isKindOfEntity:v94] == 0;
            v62 = v105;
            v61 = v106;
          }

          if (v60)
          {
            v55 = v61;
          }

          else
          {
            v55 = v62;
          }
        }

        [v55 addObject:v46];
        goto LABEL_106;
      }

      objc_opt_class();
      v48 = v45;
      if (objc_opt_isKindOfClass())
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v50 = v49;

      if (v50)
      {
        v51 = [v50 operation];
        v52 = v120;
        if (v51)
        {
          if (v51 == 1)
          {
            [v120 addObject:v46];
            v52 = v108;
          }

          else
          {
            v52 = v112;
            if (v51 != 2)
            {
              goto LABEL_106;
            }
          }
        }

        [v52 addObject:v46];
      }

LABEL_106:

LABEL_107:
      if (v46)
      {
        [v125 setObject:v45 forKey:v46];
      }

      v126[2](v126, v45);

      if (v42 != ++v44)
      {
        continue;
      }

      break;
    }

    v42 = [v41 countByEnumeratingWithState:&v163 objects:v204 count:16];
    if (v42)
    {
      continue;
    }

    break;
  }

LABEL_116:

  v14 = self;
LABEL_117:
  if ([v195[5] isSuccess])
  {
    photoLibrary = v14->_photoLibrary;
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __40__PHChangeValidationController__prepare__block_invoke_2;
    v128[3] = &unk_1E75A3A38;
    v161 = &v194;
    v129 = v122;
    v130 = v127;
    v131 = v114;
    v132 = v125;
    v133 = v14;
    v162 = &v188;
    v134 = v100;
    v135 = v101;
    v136 = v118;
    v137 = v99;
    v138 = v119;
    v139 = v98;
    v140 = v117;
    v141 = v112;
    v142 = v120;
    v143 = v97;
    v144 = v108;
    v145 = v107;
    v146 = v110;
    v147 = v113;
    v148 = v95;
    v149 = v103;
    v150 = v109;
    v151 = v106;
    v152 = v96;
    v153 = v102;
    v154 = v94;
    v155 = v105;
    v156 = v121;
    v157 = v116;
    v158 = v111;
    v159 = v123;
    v160 = v93;
    [(PLPhotoLibrary *)photoLibrary performBlockAndWait:v128];

    v14 = self;
  }

  if ([v92 count] == 1)
  {
    v71 = [v92 anyObject];
  }

  else
  {
    v72 = [v92 allObjects];
    v71 = [v72 componentsJoinedByString:{@", "}];

    v14 = self;
  }

  v73 = [v101 copy];
  renderedContentURLs = v14->_renderedContentURLs;
  v14->_renderedContentURLs = v73;

  v75 = [v100 copy];
  assetsToChangeContent = self->_assetsToChangeContent;
  self->_assetsToChangeContent = v75;

  v77 = [v99 copy];
  assetsToRevert = self->_assetsToRevert;
  self->_assetsToRevert = v77;

  v79 = [v98 copy];
  assetsToHide = self->_assetsToHide;
  self->_assetsToHide = v79;

  v81 = [v97 copy];
  assetsToDelete = self->_assetsToDelete;
  self->_assetsToDelete = v81;

  v83 = [v96 copy];
  albumsToDelete = self->_albumsToDelete;
  self->_albumsToDelete = v83;

  v85 = [v95 copy];
  foldersToDelete = self->_foldersToDelete;
  self->_foldersToDelete = v85;

  clientName = self->_clientName;
  self->_clientName = v71;
  v88 = v71;

  self->_confirmationRequired = *(v180 + 24);
  v22 = v195[5];

  _Block_object_dispose(&v179, 8);
LABEL_123:

LABEL_124:
LABEL_125:

LABEL_126:
LABEL_127:

  _Block_object_dispose(&v188, 8);
  _Block_object_dispose(&v194, 8);

  return v22;
}

void __40__PHChangeValidationController__prepare__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 clientName];
  v4 = [v3 isClientEntitled];

  if ((v4 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
    v5 = v6;
  }
}

void __40__PHChangeValidationController__prepare__block_invoke_2(uint64_t a1)
{
  v444 = *MEMORY[0x1E69E9840];
  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 32), "count"))
  {
    v2 = MEMORY[0x1E695D5E0];
    v3 = [*(a1 + 40) name];
    v4 = [v2 fetchRequestWithEntityName:v3];

    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 32)];
    [v4 setPredicate:v5];

    [*(a1 + 48) executeFetchRequest:v4 error:0];
    v419 = 0u;
    v420 = 0u;
    v421 = 0u;
    v6 = v422 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v419 objects:v443 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v420;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v420 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v419 + 1) + 8 * i);
          v12 = *(a1 + 56);
          v13 = [v11 objectID];
          v14 = [v12 objectForKey:v13];

          if (v14)
          {
            v15 = *(*(a1 + 296) + 8);
            obj = *(v15 + 40);
            v16 = [v14 validateMutationsToManagedObject:v11 error:&obj];
            objc_storeStrong((v15 + 40), obj);
            if (!v16)
            {
              v21 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
              v22 = *(*(a1 + 288) + 8);
              v23 = *(v22 + 40);
              *(v22 + 40) = v21;

              goto LABEL_18;
            }

            v17 = [v14 contentEditingOutput];
            v18 = [v17 renderedContentURL];
            if (v18)
            {
              [*(a1 + 72) addObject:v11];
              [*(a1 + 80) addObject:v18];
            }
          }

          else
          {
            v19 = [*(a1 + 64) _failureWithError:0];
            v20 = *(*(a1 + 288) + 8);
            v17 = *(v20 + 40);
            *(v20 + 40) = v19;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v419 objects:v443 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 88), "count"))
  {
    v24 = MEMORY[0x1E695D5E0];
    v25 = [*(a1 + 40) name];
    v26 = [v24 fetchRequestWithEntityName:v25];

    v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 88)];
    [v26 setPredicate:v27];

    [*(a1 + 48) executeFetchRequest:v26 error:0];
    v414 = 0u;
    v415 = 0u;
    v416 = 0u;
    v28 = v417 = 0u;
    v29 = [v28 countByEnumeratingWithState:&v414 objects:v442 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v415;
      while (2)
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v415 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v414 + 1) + 8 * j);
          v34 = *(a1 + 56);
          v35 = [v33 objectID];
          v36 = [v34 objectForKey:v35];

          if (v36)
          {
            v37 = *(*(a1 + 296) + 8);
            v413 = *(v37 + 40);
            v38 = [v36 validateMutationsToManagedObject:v33 error:&v413];
            objc_storeStrong((v37 + 40), v413);
            if (!v38)
            {
              v42 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
              v43 = *(*(a1 + 288) + 8);
              v44 = *(v43 + 40);
              *(v43 + 40) = v42;

              goto LABEL_34;
            }

            [*(a1 + 96) addObject:v33];
          }

          else
          {
            v39 = [*(a1 + 64) _failureWithError:0];
            v40 = *(*(a1 + 288) + 8);
            v41 = *(v40 + 40);
            *(v40 + 40) = v39;
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v414 objects:v442 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_34:
  }

  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 104), "count"))
  {
    v45 = MEMORY[0x1E695D5E0];
    v46 = [*(a1 + 40) name];
    v47 = [v45 fetchRequestWithEntityName:v46];

    v48 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 104)];
    [v47 setPredicate:v48];

    [*(a1 + 48) executeFetchRequest:v47 error:0];
    v409 = 0u;
    v410 = 0u;
    v411 = 0u;
    v49 = v412 = 0u;
    v50 = [v49 countByEnumeratingWithState:&v409 objects:v441 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v410;
      while (2)
      {
        for (k = 0; k != v51; ++k)
        {
          if (*v410 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v409 + 1) + 8 * k);
          v55 = *(a1 + 56);
          v56 = [v54 objectID];
          v57 = [v55 objectForKey:v56];

          if (v57)
          {
            v58 = *(*(a1 + 296) + 8);
            v408 = *(v58 + 40);
            v59 = [v57 validateMutationsToManagedObject:v54 error:&v408];
            objc_storeStrong((v58 + 40), v408);
            if (!v59)
            {
              v63 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
              v64 = *(*(a1 + 288) + 8);
              v65 = *(v64 + 40);
              *(v64 + 40) = v63;

              goto LABEL_50;
            }

            [*(a1 + 112) addObject:v54];
          }

          else
          {
            v60 = [*(a1 + 64) _failureWithError:0];
            v61 = *(*(a1 + 288) + 8);
            v62 = *(v61 + 40);
            *(v61 + 40) = v60;
          }
        }

        v51 = [v49 countByEnumeratingWithState:&v409 objects:v441 count:16];
        if (v51)
        {
          continue;
        }

        break;
      }
    }

LABEL_50:
  }

  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 120), "count"))
  {
    v66 = MEMORY[0x1E695D5E0];
    v67 = [*(a1 + 40) name];
    v68 = [v66 fetchRequestWithEntityName:v67];

    v69 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 120)];
    [v68 setPredicate:v69];

    [*(a1 + 48) executeFetchRequest:v68 error:0];
    v404 = 0u;
    v405 = 0u;
    v406 = 0u;
    v70 = v407 = 0u;
    v71 = [v70 countByEnumeratingWithState:&v404 objects:v440 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v405;
      do
      {
        for (m = 0; m != v72; ++m)
        {
          if (*v405 != v73)
          {
            objc_enumerationMutation(v70);
          }

          v75 = *(*(&v404 + 1) + 8 * m);
          v76 = *(a1 + 56);
          v77 = [v75 objectID];
          v78 = [v76 objectForKey:v77];

          if (v78)
          {
            v79 = *(*(a1 + 296) + 8);
            v403 = *(v79 + 40);
            v80 = [v78 validateMutationsToManagedObject:v75 error:&v403];
            objc_storeStrong((v79 + 40), v403);
            if ((v80 & 1) == 0)
            {
              v84 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
              v85 = *(*(a1 + 288) + 8);
              v86 = *(v85 + 40);
              *(v85 + 40) = v84;

              goto LABEL_64;
            }
          }

          else
          {
            v81 = [*(a1 + 64) _failureWithError:0];
            v82 = *(*(a1 + 288) + 8);
            v83 = *(v82 + 40);
            *(v82 + 40) = v81;
          }
        }

        v72 = [v70 countByEnumeratingWithState:&v404 objects:v440 count:16];
      }

      while (v72);
    }

LABEL_64:
  }

  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 128), "count"))
  {
    v87 = MEMORY[0x1E695D5E0];
    v88 = [*(a1 + 40) name];
    v89 = [v87 fetchRequestWithEntityName:v88];

    v90 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 128)];
    [v89 setPredicate:v90];

    [*(a1 + 48) executeFetchRequest:v89 error:0];
    v399 = 0u;
    v400 = 0u;
    v401 = 0u;
    v91 = v402 = 0u;
    v92 = [v91 countByEnumeratingWithState:&v399 objects:v439 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v400;
      do
      {
        for (n = 0; n != v93; ++n)
        {
          if (*v400 != v94)
          {
            objc_enumerationMutation(v91);
          }

          v96 = *(*(&v399 + 1) + 8 * n);
          v97 = *(a1 + 56);
          v98 = [v96 objectID];
          v99 = [v97 objectForKey:v98];

          if (v99)
          {
            v100 = *(*(a1 + 296) + 8);
            v398 = *(v100 + 40);
            v101 = [v99 validateForDeleteManagedObject:v96 error:&v398];
            objc_storeStrong((v100 + 40), v398);
            if ((v101 & 1) == 0)
            {
              v105 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
              v106 = *(*(a1 + 288) + 8);
              v107 = *(v106 + 40);
              *(v106 + 40) = v105;

              goto LABEL_78;
            }
          }

          else
          {
            v102 = [*(a1 + 64) _failureWithError:0];
            v103 = *(*(a1 + 288) + 8);
            v104 = *(v103 + 40);
            *(v103 + 40) = v102;
          }
        }

        v93 = [v91 countByEnumeratingWithState:&v399 objects:v439 count:16];
      }

      while (v93);
    }

LABEL_78:
  }

  if (![*(*(*(a1 + 288) + 8) + 40) isSuccess] || !objc_msgSend(*(a1 + 136), "count"))
  {
    goto LABEL_98;
  }

  v108 = MEMORY[0x1E695D5E0];
  v109 = [*(a1 + 40) name];
  v110 = [v108 fetchRequestWithEntityName:v109];

  v111 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 136)];
  [v110 setPredicate:v111];

  [*(a1 + 48) executeFetchRequest:v110 error:0];
  v394 = 0u;
  v395 = 0u;
  v396 = 0u;
  v112 = v397 = 0u;
  v113 = [v112 countByEnumeratingWithState:&v394 objects:v438 count:16];
  v114 = v112;
  if (v113)
  {
    v115 = v113;
    v345 = v110;
    v116 = 0;
    v117 = *v395;
    while (2)
    {
      for (ii = 0; ii != v115; ++ii)
      {
        if (*v395 != v117)
        {
          objc_enumerationMutation(v112);
        }

        v119 = *(*(&v394 + 1) + 8 * ii);
        v120 = *(a1 + 56);
        v121 = [v119 objectID];
        v122 = [v120 objectForKey:v121];

        if (v122)
        {
          v123 = *(*(a1 + 296) + 8);
          v393 = *(v123 + 40);
          v124 = [v122 validateForDeleteManagedObject:v119 error:&v393];
          objc_storeStrong((v123 + 40), v393);
          if (!v124)
          {
            v130 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
            v131 = *(*(a1 + 288) + 8);
            v132 = *(v131 + 40);
            *(v131 + 40) = v130;

            goto LABEL_94;
          }

          [*(a1 + 144) addObject:v119];
          v125 = *(a1 + 152);
          v126 = [v119 objectID];
          LODWORD(v125) = [v125 containsObject:v126];

          v116 += v125;
        }

        else
        {
          v127 = [*(a1 + 64) _failureWithError:0];
          v128 = *(*(a1 + 288) + 8);
          v129 = *(v128 + 40);
          *(v128 + 40) = v127;
        }
      }

      v115 = [v112 countByEnumeratingWithState:&v394 objects:v438 count:16];
      if (v115)
      {
        continue;
      }

      break;
    }

LABEL_94:

    v110 = v345;
    if (v116 < 0xC9)
    {
      goto LABEL_97;
    }

    v133 = MEMORY[0x1E696ABC0];
    v436 = *MEMORY[0x1E696A278];
    v134 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expunging too may assets: %tu, limit %zd", v116, 200];
    v437 = v134;
    v135 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v437 forKeys:&v436 count:1];
    v136 = [v133 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v135];
    v137 = *(*(a1 + 296) + 8);
    v138 = *(v137 + 40);
    *(v137 + 40) = v136;

    v139 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
    v140 = *(*(a1 + 288) + 8);
    v114 = *(v140 + 40);
    *(v140 + 40) = v139;
  }

LABEL_97:
LABEL_98:
  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 160), "count"))
  {
    v141 = MEMORY[0x1E695D5E0];
    v142 = [*(a1 + 168) name];
    v143 = [v141 fetchRequestWithEntityName:v142];

    v144 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 160)];
    [v143 setPredicate:v144];

    [*(a1 + 48) executeFetchRequest:v143 error:0];
    v389 = 0u;
    v390 = 0u;
    v391 = 0u;
    v145 = v392 = 0u;
    v146 = [v145 countByEnumeratingWithState:&v389 objects:v435 count:16];
    if (v146)
    {
      v147 = v146;
      v148 = *v390;
      do
      {
        for (jj = 0; jj != v147; ++jj)
        {
          if (*v390 != v148)
          {
            objc_enumerationMutation(v145);
          }

          v150 = *(*(&v389 + 1) + 8 * jj);
          v151 = *(a1 + 56);
          v152 = [v150 objectID];
          v153 = [v151 objectForKey:v152];

          if (v153)
          {
            v154 = *(*(a1 + 296) + 8);
            v388 = *(v154 + 40);
            v155 = [v153 validateForDeleteManagedObject:v150 error:&v388];
            objc_storeStrong((v154 + 40), v388);
            if ((v155 & 1) == 0)
            {
              v159 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
              v160 = *(*(a1 + 288) + 8);
              v161 = *(v160 + 40);
              *(v160 + 40) = v159;

              goto LABEL_111;
            }
          }

          else
          {
            v156 = [*(a1 + 64) _failureWithError:0];
            v157 = *(*(a1 + 288) + 8);
            v158 = *(v157 + 40);
            *(v157 + 40) = v156;
          }
        }

        v147 = [v145 countByEnumeratingWithState:&v389 objects:v435 count:16];
      }

      while (v147);
    }

LABEL_111:
  }

  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 176), "count"))
  {
    v162 = MEMORY[0x1E695D5E0];
    v163 = [*(a1 + 168) name];
    v164 = [v162 fetchRequestWithEntityName:v163];

    v165 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 176)];
    [v164 setPredicate:v165];

    [*(a1 + 48) executeFetchRequest:v164 error:0];
    v384 = 0u;
    v385 = 0u;
    v386 = 0u;
    v166 = v387 = 0u;
    v167 = [v166 countByEnumeratingWithState:&v384 objects:v434 count:16];
    if (v167)
    {
      v168 = v167;
      v169 = *v385;
      while (2)
      {
        for (kk = 0; kk != v168; ++kk)
        {
          if (*v385 != v169)
          {
            objc_enumerationMutation(v166);
          }

          v171 = *(*(&v384 + 1) + 8 * kk);
          v172 = *(a1 + 56);
          v173 = [v171 objectID];
          v174 = [v172 objectForKey:v173];

          if (v174)
          {
            v175 = *(*(a1 + 296) + 8);
            v383 = *(v175 + 40);
            v176 = [v174 validateForDeleteManagedObject:v171 error:&v383];
            objc_storeStrong((v175 + 40), v383);
            if (!v176)
            {
              v180 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
              v181 = *(*(a1 + 288) + 8);
              v182 = *(v181 + 40);
              *(v181 + 40) = v180;

              goto LABEL_127;
            }

            [*(a1 + 184) addObject:v171];
          }

          else
          {
            v177 = [*(a1 + 64) _failureWithError:0];
            v178 = *(*(a1 + 288) + 8);
            v179 = *(v178 + 40);
            *(v178 + 40) = v177;
          }
        }

        v168 = [v166 countByEnumeratingWithState:&v384 objects:v434 count:16];
        if (v168)
        {
          continue;
        }

        break;
      }
    }

LABEL_127:
  }

  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 192), "count"))
  {
    v183 = MEMORY[0x1E695D5E0];
    v184 = [*(a1 + 200) name];
    v185 = [v183 fetchRequestWithEntityName:v184];

    v186 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 192)];
    [v185 setPredicate:v186];

    [*(a1 + 48) executeFetchRequest:v185 error:0];
    v379 = 0u;
    v380 = 0u;
    v381 = 0u;
    v187 = v382 = 0u;
    v188 = [v187 countByEnumeratingWithState:&v379 objects:v433 count:16];
    if (v188)
    {
      v189 = v188;
      v190 = *v380;
      do
      {
        for (mm = 0; mm != v189; ++mm)
        {
          if (*v380 != v190)
          {
            objc_enumerationMutation(v187);
          }

          v192 = *(*(&v379 + 1) + 8 * mm);
          v193 = *(a1 + 56);
          v194 = [v192 objectID];
          v195 = [v193 objectForKey:v194];

          if (v195)
          {
            v196 = *(*(a1 + 296) + 8);
            v378 = *(v196 + 40);
            v197 = [v195 validateForDeleteManagedObject:v192 error:&v378];
            objc_storeStrong((v196 + 40), v378);
            if ((v197 & 1) == 0)
            {
              v201 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
              v202 = *(*(a1 + 288) + 8);
              v203 = *(v202 + 40);
              *(v202 + 40) = v201;

              goto LABEL_141;
            }
          }

          else
          {
            v198 = [*(a1 + 64) _failureWithError:0];
            v199 = *(*(a1 + 288) + 8);
            v200 = *(v199 + 40);
            *(v199 + 40) = v198;
          }
        }

        v189 = [v187 countByEnumeratingWithState:&v379 objects:v433 count:16];
      }

      while (v189);
    }

LABEL_141:
  }

  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 208), "count"))
  {
    v204 = MEMORY[0x1E695D5E0];
    v205 = [*(a1 + 200) name];
    v206 = [v204 fetchRequestWithEntityName:v205];

    v207 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 208)];
    [v206 setPredicate:v207];

    [*(a1 + 48) executeFetchRequest:v206 error:0];
    v374 = 0u;
    v375 = 0u;
    v376 = 0u;
    v208 = v377 = 0u;
    v209 = [v208 countByEnumeratingWithState:&v374 objects:v432 count:16];
    if (v209)
    {
      v210 = v209;
      v211 = *v375;
      while (2)
      {
        for (nn = 0; nn != v210; ++nn)
        {
          if (*v375 != v211)
          {
            objc_enumerationMutation(v208);
          }

          v213 = *(*(&v374 + 1) + 8 * nn);
          v214 = *(a1 + 56);
          v215 = [v213 objectID];
          v216 = [v214 objectForKey:v215];

          if (v216)
          {
            v217 = *(*(a1 + 296) + 8);
            v373 = *(v217 + 40);
            v218 = [v216 validateForDeleteManagedObject:v213 error:&v373];
            objc_storeStrong((v217 + 40), v373);
            if (!v218)
            {
              v222 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
              v223 = *(*(a1 + 288) + 8);
              v224 = *(v223 + 40);
              *(v223 + 40) = v222;

              goto LABEL_157;
            }

            [*(a1 + 216) addObject:v213];
          }

          else
          {
            v219 = [*(a1 + 64) _failureWithError:0];
            v220 = *(*(a1 + 288) + 8);
            v221 = *(v220 + 40);
            *(v220 + 40) = v219;
          }
        }

        v210 = [v208 countByEnumeratingWithState:&v374 objects:v432 count:16];
        if (v210)
        {
          continue;
        }

        break;
      }
    }

LABEL_157:
  }

  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 224), "count"))
  {
    v225 = MEMORY[0x1E695D5E0];
    v226 = [*(a1 + 232) name];
    v227 = [v225 fetchRequestWithEntityName:v226];

    v228 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 224)];
    [v227 setPredicate:v228];

    [*(a1 + 48) executeFetchRequest:v227 error:0];
    v369 = 0u;
    v370 = 0u;
    v371 = 0u;
    v229 = v372 = 0u;
    v230 = [v229 countByEnumeratingWithState:&v369 objects:v431 count:16];
    if (v230)
    {
      v231 = v230;
      v232 = *v370;
      do
      {
        for (i1 = 0; i1 != v231; ++i1)
        {
          if (*v370 != v232)
          {
            objc_enumerationMutation(v229);
          }

          v234 = *(*(&v369 + 1) + 8 * i1);
          v235 = *(a1 + 56);
          v236 = [v234 objectID];
          v237 = [v235 objectForKey:v236];

          if (v237)
          {
            v238 = *(*(a1 + 296) + 8);
            v368 = *(v238 + 40);
            v239 = [v237 validateForDeleteManagedObject:v234 error:&v368];
            objc_storeStrong((v238 + 40), v368);
            if ((v239 & 1) == 0)
            {
              v243 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
              v244 = *(*(a1 + 288) + 8);
              v245 = *(v244 + 40);
              *(v244 + 40) = v243;

              goto LABEL_171;
            }
          }

          else
          {
            v240 = [*(a1 + 64) _failureWithError:0];
            v241 = *(*(a1 + 288) + 8);
            v242 = *(v241 + 40);
            *(v241 + 40) = v240;
          }
        }

        v231 = [v229 countByEnumeratingWithState:&v369 objects:v431 count:16];
      }

      while (v231);
    }

LABEL_171:
  }

  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 240), "count"))
  {
    v246 = MEMORY[0x1E695D5E0];
    v247 = [*(a1 + 232) name];
    v248 = [v246 fetchRequestWithEntityName:v247];

    v249 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 240)];
    [v248 setPredicate:v249];

    [*(a1 + 48) executeFetchRequest:v248 error:0];
    v364 = 0u;
    v365 = 0u;
    v366 = 0u;
    v250 = v367 = 0u;
    v251 = [v250 countByEnumeratingWithState:&v364 objects:v430 count:16];
    if (v251)
    {
      v252 = v251;
      v253 = *v365;
      while (2)
      {
        for (i2 = 0; i2 != v252; ++i2)
        {
          if (*v365 != v253)
          {
            objc_enumerationMutation(v250);
          }

          v255 = *(*(&v364 + 1) + 8 * i2);
          v256 = *(a1 + 56);
          v257 = [v255 objectID];
          v258 = [v256 objectForKey:v257];

          if (v258)
          {
            v259 = *(*(a1 + 296) + 8);
            v363 = *(v259 + 40);
            v260 = [v258 validateForDeleteManagedObject:v255 error:&v363];
            objc_storeStrong((v259 + 40), v363);
            if (!v260)
            {
              v264 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
              v265 = *(*(a1 + 288) + 8);
              v266 = *(v265 + 40);
              *(v265 + 40) = v264;

              goto LABEL_187;
            }

            [*(a1 + 216) addObject:v255];
          }

          else
          {
            v261 = [*(a1 + 64) _failureWithError:0];
            v262 = *(*(a1 + 288) + 8);
            v263 = *(v262 + 40);
            *(v262 + 40) = v261;
          }
        }

        v252 = [v250 countByEnumeratingWithState:&v364 objects:v430 count:16];
        if (v252)
        {
          continue;
        }

        break;
      }
    }

LABEL_187:
  }

  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 248), "count"))
  {
    v267 = MEMORY[0x1E695D5E0];
    v268 = [*(a1 + 256) name];
    v269 = [v267 fetchRequestWithEntityName:v268];

    v270 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 248)];
    [v269 setPredicate:v270];

    [*(a1 + 48) executeFetchRequest:v269 error:0];
    v359 = 0u;
    v360 = 0u;
    v361 = 0u;
    v271 = v362 = 0u;
    v272 = [v271 countByEnumeratingWithState:&v359 objects:v429 count:16];
    if (v272)
    {
      v273 = v272;
      v274 = *v360;
      do
      {
        for (i3 = 0; i3 != v273; ++i3)
        {
          if (*v360 != v274)
          {
            objc_enumerationMutation(v271);
          }

          v276 = *(*(&v359 + 1) + 8 * i3);
          v277 = *(a1 + 56);
          v278 = [v276 objectID];
          v279 = [v277 objectForKey:v278];

          if (v279)
          {
            v280 = *(*(a1 + 296) + 8);
            v358 = *(v280 + 40);
            v281 = [v279 validateForDeleteManagedObject:v276 error:&v358];
            objc_storeStrong((v280 + 40), v358);
            if ((v281 & 1) == 0)
            {
              v285 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
              v286 = *(*(a1 + 288) + 8);
              v287 = *(v286 + 40);
              *(v286 + 40) = v285;

              goto LABEL_201;
            }
          }

          else
          {
            v282 = [*(a1 + 64) _failureWithError:0];
            v283 = *(*(a1 + 288) + 8);
            v284 = *(v283 + 40);
            *(v283 + 40) = v282;
          }
        }

        v273 = [v271 countByEnumeratingWithState:&v359 objects:v429 count:16];
      }

      while (v273);
    }

LABEL_201:
  }

  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 264), "count"))
  {
    v288 = MEMORY[0x1E695D5E0];
    v289 = [*(a1 + 256) name];
    v290 = [v288 fetchRequestWithEntityName:v289];

    v291 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 264)];
    [v290 setPredicate:v291];

    [*(a1 + 48) executeFetchRequest:v290 error:0];
    v354 = 0u;
    v355 = 0u;
    v356 = 0u;
    v292 = v357 = 0u;
    v293 = [v292 countByEnumeratingWithState:&v354 objects:v428 count:16];
    if (v293)
    {
      v294 = v293;
      v295 = *v355;
      do
      {
        for (i4 = 0; i4 != v294; ++i4)
        {
          if (*v355 != v295)
          {
            objc_enumerationMutation(v292);
          }

          v297 = *(*(&v354 + 1) + 8 * i4);
          v298 = *(a1 + 56);
          v299 = [v297 objectID];
          v300 = [v298 objectForKey:v299];

          if (v300)
          {
            v301 = *(*(a1 + 296) + 8);
            v353 = *(v301 + 40);
            v302 = [v300 validateForDeleteManagedObject:v297 error:&v353];
            objc_storeStrong((v301 + 40), v353);
            if ((v302 & 1) == 0)
            {
              v306 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
              v307 = *(*(a1 + 288) + 8);
              v308 = *(v307 + 40);
              *(v307 + 40) = v306;

              goto LABEL_215;
            }
          }

          else
          {
            v303 = [*(a1 + 64) _failureWithError:0];
            v304 = *(*(a1 + 288) + 8);
            v305 = *(v304 + 40);
            *(v304 + 40) = v303;
          }
        }

        v294 = [v292 countByEnumeratingWithState:&v354 objects:v428 count:16];
      }

      while (v294);
    }

LABEL_215:
  }

  if (![*(*(*(a1 + 288) + 8) + 40) isSuccess] || !objc_msgSend(*(a1 + 272), "count"))
  {
    goto LABEL_239;
  }

  v351 = 0u;
  v352 = 0u;
  v349 = 0u;
  v350 = 0u;
  v343 = *(a1 + 272);
  v346 = [v343 countByEnumeratingWithState:&v349 objects:v427 count:16];
  if (!v346)
  {
    goto LABEL_238;
  }

  v344 = *v350;
  while (2)
  {
    for (i5 = 0; i5 != v346; ++i5)
    {
      if (*v350 != v344)
      {
        objc_enumerationMutation(v343);
      }

      v310 = *(*(&v349 + 1) + 8 * i5);
      v311 = objc_autoreleasePoolPush();
      v312 = MEMORY[0x1E695D5E0];
      v313 = [v310 entity];
      v314 = [v313 name];
      v315 = [v312 fetchRequestWithEntityName:v314];

      v316 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self == %@", v310];
      [v315 setPredicate:v316];

      v317 = *(a1 + 48);
      v348 = 0;
      v318 = [v317 executeFetchRequest:v315 error:&v348];
      v319 = v348;
      if (!v318)
      {
        v328 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v328, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v424 = v319;
          _os_log_impl(&dword_19C86F000, v328, OS_LOG_TYPE_ERROR, "managedObjectsNeedingMutationValidations fetch failed: %@", buf, 0xCu);
        }

        v329 = [*(a1 + 64) _failureWithError:v319];
        v330 = *(*(a1 + 288) + 8);
        v318 = *(v330 + 40);
        *(v330 + 40) = v329;
        goto LABEL_237;
      }

      v320 = [v318 firstObject];
      v321 = [*(a1 + 56) objectForKey:v310];
      v322 = v321;
      if (!v321)
      {
        v325 = [*(a1 + 64) _failureWithError:0];
        v326 = *(*(a1 + 288) + 8);
        v327 = *(v326 + 40);
        *(v326 + 40) = v325;

        goto LABEL_229;
      }

      if (!v320)
      {
        v331 = MEMORY[0x1E696ABC0];
        v425 = *MEMORY[0x1E696A278];
        v332 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Managed object not found: %@", v310];
        v426 = v332;
        v333 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v426 forKeys:&v425 count:1];
        v334 = [v331 errorWithDomain:@"PHPhotosErrorDomain" code:3110 userInfo:v333];
        v335 = *(*(a1 + 296) + 8);
        v336 = *(v335 + 40);
        *(v335 + 40) = v334;

        v320 = 0;
LABEL_236:
        v337 = [*(a1 + 64) _failureWithError:*(*(*(a1 + 296) + 8) + 40)];
        v338 = *(*(a1 + 288) + 8);
        v339 = *(v338 + 40);
        *(v338 + 40) = v337;

LABEL_237:
        objc_autoreleasePoolPop(v311);
        goto LABEL_238;
      }

      v323 = *(*(a1 + 296) + 8);
      v347 = *(v323 + 40);
      v324 = [v321 validateMutationsToManagedObject:v320 error:&v347];
      objc_storeStrong((v323 + 40), v347);
      if ((v324 & 1) == 0)
      {
        goto LABEL_236;
      }

LABEL_229:

      objc_autoreleasePoolPop(v311);
    }

    v346 = [v343 countByEnumeratingWithState:&v349 objects:v427 count:16];
    if (v346)
    {
      continue;
    }

    break;
  }

LABEL_238:

LABEL_239:
  if ([*(*(*(a1 + 288) + 8) + 40) isSuccess])
  {
    v340 = [*(a1 + 64) _validateSimpleDeletionsWithValidators:*(a1 + 280) requestsByObjectID:*(a1 + 56)];
    v341 = *(*(a1 + 288) + 8);
    v342 = *(v341 + 40);
    *(v341 + 40) = v340;
  }
}

- (PHChangeValidationController)initWithInsertRequests:(id)a3 updateRequests:(id)a4 deleteRequests:(id)a5 context:(id)a6 photoLibrary:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = PHChangeValidationController;
  v17 = [(PHChangeValidationController *)&v22 init];
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:v17 file:@"PHChangeValidationController.m" lineNumber:89 description:@"Must provide a managed object context"];
    }

    objc_storeStrong(&v17->_insertRequests, a3);
    objc_storeStrong(&v17->_updateRequests, a4);
    objc_storeStrong(&v17->_deleteRequests, a5);
    objc_storeStrong(&v17->_managedObjectContext, a6);
    objc_storeStrong(&v17->_photoLibrary, a7);
  }

  return v17;
}

@end