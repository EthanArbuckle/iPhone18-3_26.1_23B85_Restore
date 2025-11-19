@interface PHShareAssetChangeRequestHelper
- (BOOL)applyMutationsToManagedObject:(id)a3 error:(id *)a4;
- (PHShareAssetChangeRequestHelper)initWithChangeRequest:(id)a3;
- (PHShareAssetChangeRequestHelper)initWithXpcDict:(id)a3 request:(id)a4 changeRequest:(id)a5;
- (void)addAssetsToCPLShare:(id)a3 creationOptionsPerAsset:(id)a4 withMomentSharePreview:(id)a5 outKeyAssetIdentifier:(id *)a6 outContainsEPPAssets:(BOOL *)a7;
- (void)addAssetsToSharedStreamShare:(id)a3 creationOptionsPerAsset:(id)a4 withBatchCommentText:(id)a5;
- (void)encodeToXPCDict:(id)a3;
@end

@implementation PHShareAssetChangeRequestHelper

- (BOOL)applyMutationsToManagedObject:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695DF90];
  v23 = a3;
  v6 = [[v5 alloc] initWithCapacity:{-[NSOrderedSet count](self->_sourceAssetIdentifiersForBatchedCreation, "count")}];
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSOrderedSet count](self->_sourceAssetIdentifiersForBatchedCreation, "count")}];
  sourceAssetIdentifiersForBatchedCreation = self->_sourceAssetIdentifiersForBatchedCreation;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __71__PHShareAssetChangeRequestHelper_applyMutationsToManagedObject_error___block_invoke;
  v26[3] = &unk_1E75A9590;
  v26[4] = self;
  v9 = v6;
  v27 = v9;
  v10 = v7;
  v28 = v10;
  [(NSOrderedSet *)sourceAssetIdentifiersForBatchedCreation enumerateObjectsUsingBlock:v26];
  v11 = MEMORY[0x1E69BE540];
  sourceAssetIdentifiersForCurationSet = self->_sourceAssetIdentifiersForCurationSet;
  sourceAssetToShareAssetMapForCreationRequest = self->_sourceAssetToShareAssetMapForCreationRequest;
  commentText = self->_commentText;
  v14 = self->_sourceAssetIdentifiersForBatchedCreation;
  keySourceAssetIdentifier = self->_keySourceAssetIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_clientConnection);
  v17 = [v23 photoLibrary];
  v25 = 0;
  v18 = [v11 createShareAssetsForShare:v23 batchedSourceAssetsToCopy:v14 creationRequestSourceAssetsToShareAssetsMap:sourceAssetToShareAssetMapForCreationRequest curatedSourceAssets:sourceAssetIdentifiersForCurationSet adjustmentBakeInOptionsDictionary:v9 metadataCopyOptionsDictionary:v10 keySourceAssetIdentifier:keySourceAssetIdentifier commentText:commentText clientConnection:WeakRetained library:v17 error:&v25];

  v19 = v25;
  if (a4 && (v18 & 1) == 0)
  {
    v20 = v19;
    *a4 = v19;
  }

  return v18;
}

void __71__PHShareAssetChangeRequestHelper_applyMutationsToManagedObject_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:?];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v11];
  }

  else
  {
    v4 = objc_alloc_init(PHAssetCreationAdjustmentBakeInOptions);
  }

  v5 = v4;
  v6 = [(PHAssetCreationAdjustmentBakeInOptions *)v4 plRepresentation];
  [*(a1 + 40) setObject:v6 forKeyedSubscript:v11];

  v7 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v11];

  if (v7)
  {
    v8 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v11];
  }

  else
  {
    v8 = objc_alloc_init(PHAssetCreationMetadataCopyOptions);
  }

  v9 = v8;
  v10 = [(PHAssetCreationMetadataCopyOptions *)v8 plRepresentation];
  [*(a1 + 48) setObject:v10 forKeyedSubscript:v11];
}

- (void)addAssetsToSharedStreamShare:(id)a3 creationOptionsPerAsset:(id)a4 withBatchCommentText:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  obj = a5;
  v25 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = @"@count";
  }

  else
  {
    v9 = @"count";
  }

  v10 = [v7 valueForKey:v9];
  v11 = [v10 unsignedIntegerValue];

  v12 = PFMap();
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v11];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        v20 = [v8 objectForKeyedSubscript:v19];
        v21 = [v20 adjustmentBakeInOptions];
        [v13 setObject:v21 forKeyedSubscript:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }

  v22 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v14];
  sourceAssetIdentifiersForBatchedCreation = self->_sourceAssetIdentifiersForBatchedCreation;
  self->_sourceAssetIdentifiersForBatchedCreation = v22;

  objc_storeStrong(&self->_sourceAssetIdentifiersToAdjustmentBakeInOptionsDictionaryForBatchedCreation, v13);
  if (v25 && [v25 length])
  {
    objc_storeStrong(&self->_commentText, obj);
  }
}

- (void)addAssetsToCPLShare:(id)a3 creationOptionsPerAsset:(id)a4 withMomentSharePreview:(id)a5 outKeyAssetIdentifier:(id *)a6 outContainsEPPAssets:(BOOL *)a7
{
  v91 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v60 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = @"@count";
  }

  else
  {
    v11 = @"count";
  }

  v12 = [v9 valueForKey:v11];
  v13 = [v12 unsignedIntegerValue];

  v66 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v13];
  v59 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v13];
  v65 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v13];
  v64 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v13];
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = 0;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v9;
  v14 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
  if (v14)
  {
    v61 = 0;
    v63 = *v81;
    v58 = v10;
    do
    {
      v67 = v14;
      for (i = 0; i != v67; ++i)
      {
        if (*v81 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v80 + 1) + 8 * i);
        if (([v16 isPhotoStreamPhoto] & 1) != 0 || objc_msgSend(v16, "isCloudSharedAsset"))
        {
          v42 = [MEMORY[0x1E696AAA8] currentHandler];
          [v42 handleFailureInMethod:a2 object:self file:@"PHShareAssetChangeRequestHelper.m" lineNumber:136 description:@"Share assets must not be cloud shared or photo stream assets"];
        }

        if ([v16 needsDeferredProcessing])
        {
          v17 = [[PHResourceLocalAvailabilityRequest alloc] initWithAsset:v16 requestType:2];
          v18 = objc_alloc_init(PHResourceLocalAvailabilityRequestOptions);
          if ([(PHResourceLocalAvailabilityRequest *)v17 resourceAvailabilityForOptions:v18 resourceInfo:0]== 2)
          {
            v19 = dispatch_group_create();
            dispatch_group_enter(v19);
            v20 = PLBackendGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [(PHShareAssetChangeRequestHelper *)self backingShare];
              v22 = [v21 uuid];
              v23 = [(PHShareAssetChangeRequestHelper *)self backingShare];
              v24 = [v23 uuid];
              *buf = 138543618;
              *&buf[4] = v22;
              *&buf[12] = 2114;
              *&buf[14] = v24;
              _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_DEFAULT, "Share %{public}@ will request on demand resources for %{public}@", buf, 0x16u);

              v10 = v58;
            }

            v78[0] = MEMORY[0x1E69E9820];
            v78[1] = 3221225472;
            v78[2] = __145__PHShareAssetChangeRequestHelper_addAssetsToCPLShare_creationOptionsPerAsset_withMomentSharePreview_outKeyAssetIdentifier_outContainsEPPAssets___block_invoke;
            v78[3] = &unk_1E75A8920;
            v78[4] = self;
            v78[5] = v16;
            v25 = v19;
            v79 = v25;
            [(PHResourceLocalAvailabilityRequest *)v17 retrieveRequiredResourcesWithOptions:0 completionHandler:v78];
            dispatch_group_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
          }
        }

        v26 = [v16 uuid];
        v27 = [v10 objectForKeyedSubscript:v26];

        if (!v27)
        {
          v27 = objc_alloc_init(PHAssetCreationOptions);
          v28 = objc_alloc_init(PHAssetCreationAdjustmentBakeInOptions);
          [(PHAssetCreationOptions *)v27 setAdjustmentBakeInOptions:v28];

          v29 = objc_alloc_init(PHAssetCreationMetadataCopyOptions);
          [(PHAssetCreationOptions *)v27 setMetadataCopyOptions:v29];
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v89 = 0;
        v30 = [v16 photoLibrary];
        v31 = [v30 photoLibrary];

        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __145__PHShareAssetChangeRequestHelper_addAssetsToCPLShare_creationOptionsPerAsset_withMomentSharePreview_outKeyAssetIdentifier_outContainsEPPAssets___block_invoke_223;
        v69[3] = &unk_1E75A8948;
        v69[4] = v16;
        v32 = v31;
        v70 = v32;
        v76 = buf;
        v33 = v27;
        v77 = &v84;
        v71 = v33;
        v72 = self;
        v73 = v66;
        v74 = v65;
        v75 = v64;
        [v32 performBlockAndWait:v69];
        if ((*(*&buf[8] + 24) & 1) == 0)
        {
          [(PHAssetCreationOptions *)v33 setShouldDownloadOrCloudReReferenceMissingResources:1];
          [(PHAssetCreationOptions *)v33 setResetUserSpecificMetadata:1];
          v34 = [PHAssetCreationRequest creationRequestForAssetCopyFromAsset:v16 options:v33];
          v35 = [(PHShareAssetChangeRequestHelper *)self backingShare];
          [v34 setShare:v35];

          v36 = [v34 placeholderForCreatedAsset];
          v37 = [v36 uuid];

          v38 = [v60 keyAsset];
          v39 = [v16 isEqual:v38];

          if (v39)
          {
            v40 = v37;

            v61 = v40;
          }

          v41 = [v16 uuid];
          [v59 setObject:v37 forKey:v41];
        }

        _Block_object_dispose(buf, 8);
      }

      v14 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
    }

    while (v14);
  }

  else
  {
    v61 = 0;
  }

  if (a7 && *(v85 + 24) == 1)
  {
    *a7 = 1;
  }

  if (a6 && v61)
  {
    *a6 = [v61 copy];
  }

  v43 = [v66 copy];
  sourceAssetIdentifiersForBatchedCreation = self->_sourceAssetIdentifiersForBatchedCreation;
  self->_sourceAssetIdentifiersForBatchedCreation = v43;

  v45 = [v59 copy];
  sourceAssetToShareAssetMapForCreationRequest = self->_sourceAssetToShareAssetMapForCreationRequest;
  self->_sourceAssetToShareAssetMapForCreationRequest = v45;

  v47 = [v65 copy];
  sourceAssetIdentifiersToAdjustmentBakeInOptionsDictionaryForBatchedCreation = self->_sourceAssetIdentifiersToAdjustmentBakeInOptionsDictionaryForBatchedCreation;
  self->_sourceAssetIdentifiersToAdjustmentBakeInOptionsDictionaryForBatchedCreation = v47;

  v49 = [v64 copy];
  sourceAssetIdentifiersToMetadataCopyOptionsDictionaryForBatchedCreation = self->_sourceAssetIdentifiersToMetadataCopyOptionsDictionaryForBatchedCreation;
  self->_sourceAssetIdentifiersToMetadataCopyOptionsDictionaryForBatchedCreation = v49;

  v51 = MEMORY[0x1E695DFB8];
  v52 = [v60 curatedAssetIdentifiers];
  v53 = [v51 orderedSetWithArray:v52];
  sourceAssetIdentifiersForCurationSet = self->_sourceAssetIdentifiersForCurationSet;
  self->_sourceAssetIdentifiersForCurationSet = v53;

  _Block_object_dispose(&v84, 8);
}

void __145__PHShareAssetChangeRequestHelper_addAssetsToCPLShare_creationOptionsPerAsset_withMomentSharePreview_outKeyAssetIdentifier_outContainsEPPAssets___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = PLBackendGetLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) backingShare];
      v10 = [v9 uuid];
      v11 = [*(a1 + 40) uuid];
      v16 = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      v12 = "Share %{public}@ failed to finish request for on demand resources for %{public}@ with error %@";
      v13 = v8;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 32;
LABEL_6:
      _os_log_impl(&dword_19C86F000, v13, v14, v12, &v16, v15);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) backingShare];
    v10 = [v9 uuid];
    v11 = [*(a1 + 40) uuid];
    v16 = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    v12 = "Share %{public}@ finished request of on demand resources for %{public}@";
    v13 = v8;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 22;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 48));
}

void __145__PHShareAssetChangeRequestHelper_addAssetsToCPLShare_creationOptionsPerAsset_withMomentSharePreview_outKeyAssetIdentifier_outContainsEPPAssets___block_invoke_223(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE540];
  v3 = [*(a1 + 32) objectID];
  v4 = [v2 assetWithObjectID:v3 inLibrary:*(a1 + 40)];

  *(*(*(a1 + 88) + 8) + 24) = [MEMORY[0x1E69BE540] shouldPerformServerCopyWithSourceAsset:v4 copyingFromShare:0 photoLibrary:*(a1 + 40)];
  v5 = *(a1 + 88);
  if (*(*(v5 + 8) + 24) == 1)
  {
    v6 = [*(a1 + 48) metadataCopyOptions];
    v7 = [v6 shouldCopyLocationData];

    v5 = *(a1 + 88);
    if ((v7 & 1) == 0)
    {
      *(*(v5 + 8) + 24) = 0;
      v5 = *(a1 + 88);
    }
  }

  if (*(*(v5 + 8) + 24) == 1)
  {
    if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
    {
      v8 = [v4 fingerprintScheme];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 providesEnhancedPrivacy];

        if ((v10 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_15:
        v20 = PLBackendGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [*(a1 + 56) backingShare];
          v22 = [v21 uuid];
          v31 = 138543618;
          v32 = v22;
          v33 = 2112;
          v34 = v4;
          _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_INFO, "Share %{public}@ will copy EPP asset %@ so is an EPP Share", &v31, 0x16u);
        }

        *(*(*(a1 + 96) + 8) + 24) = 1;
        goto LABEL_18;
      }

      v17 = [*(a1 + 40) fingerprintContext];
      v18 = [v17 fingerprintSchemeForNewMasterAsset];
      v19 = [v18 providesEnhancedPrivacy];

      if (v19)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    v23 = *(a1 + 64);
    v24 = [*(a1 + 32) uuid];
    [v23 addObject:v24];

    v25 = [*(a1 + 48) adjustmentBakeInOptions];
    v26 = *(a1 + 72);
    v27 = [*(a1 + 32) uuid];
    [v26 setObject:v25 forKeyedSubscript:v27];

    v28 = [*(a1 + 48) metadataCopyOptions];
    v29 = *(a1 + 80);
    v30 = [*(a1 + 32) uuid];
    [v29 setObject:v28 forKeyedSubscript:v30];

    goto LABEL_19;
  }

  if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
  {
    v11 = [*(a1 + 40) fingerprintContext];
    v12 = [v11 fingerprintSchemeForNewMasterAsset];
    v13 = [v12 providesEnhancedPrivacy];

    if (v13)
    {
      v14 = PLBackendGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [*(a1 + 56) backingShare];
        v16 = [v15 uuid];
        v31 = 138543618;
        v32 = v16;
        v33 = 2112;
        v34 = v4;
        _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_INFO, "Share %{public}@ will create EPP asset %@ so is an EPP Share", &v31, 0x16u);
      }

      *(*(*(a1 + 96) + 8) + 24) = 1;
    }
  }

LABEL_19:
}

- (void)encodeToXPCDict:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  PLXPCDictionarySetString();
  PLXPCDictionarySetString();
  sourceAssetIdentifiersForBatchedCreation = self->_sourceAssetIdentifiersForBatchedCreation;
  v24 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:sourceAssetIdentifiersForBatchedCreation requiringSecureCoding:1 error:&v24];
  v7 = v24;
  if (v7)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "sourceAssetIdentifiersForBatchedCreation archiving error: %@", buf, 0xCu);
    }
  }

  PLXPCDictionarySetData();

  sourceAssetIdentifiersForCurationSet = self->_sourceAssetIdentifiersForCurationSet;
  v23 = 0;
  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:sourceAssetIdentifiersForCurationSet requiringSecureCoding:1 error:&v23];
  v11 = v23;
  if (v11)
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v11;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "sourceAssetIdentifiersForCurationSet archiving error: %@", buf, 0xCu);
    }
  }

  PLXPCDictionarySetData();
  PLXPCDictionarySetDictionary();

  sourceAssetIdentifiersToAdjustmentBakeInOptionsDictionaryForBatchedCreation = self->_sourceAssetIdentifiersToAdjustmentBakeInOptionsDictionaryForBatchedCreation;
  v22 = 0;
  v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:sourceAssetIdentifiersToAdjustmentBakeInOptionsDictionaryForBatchedCreation requiringSecureCoding:1 error:&v22];
  v15 = v22;
  if (v15)
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEFAULT, "sourceAssetIdentifiersToAdjustmentBakeInOptionsDictionary archiving error: %@", buf, 0xCu);
    }
  }

  PLXPCDictionarySetData();

  sourceAssetIdentifiersToMetadataCopyOptionsDictionaryForBatchedCreation = self->_sourceAssetIdentifiersToMetadataCopyOptionsDictionaryForBatchedCreation;
  v21 = 0;
  v18 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:sourceAssetIdentifiersToMetadataCopyOptionsDictionaryForBatchedCreation requiringSecureCoding:1 error:&v21];
  v19 = v21;
  if (v19)
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_DEFAULT, "sourceAssetIdentifiersToAdjustmentBakeInOptionsDictionary archiving error: %@", buf, 0xCu);
    }
  }

  PLXPCDictionarySetData();
}

- (PHShareAssetChangeRequestHelper)initWithXpcDict:(id)a3 request:(id)a4 changeRequest:(id)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PHShareAssetChangeRequestHelper *)self initWithChangeRequest:v10];
  if (v11)
  {
    v12 = [MEMORY[0x1E696B0B8] currentConnection];
    objc_storeWeak(&v11->_clientConnection, v12);

    v13 = PLStringFromXPCDictionary();
    keySourceAssetIdentifier = v11->_keySourceAssetIdentifier;
    v11->_keySourceAssetIdentifier = v13;

    v15 = PLStringFromXPCDictionary();
    commentText = v11->_commentText;
    v11->_commentText = v15;

    v17 = PLDataFromXPCDictionary();
    v18 = MEMORY[0x1E69BE4E0];
    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v55 = v17;
    v22 = [v18 secureUnarchivedObjectWithData:v17 ofClasses:v21];
    sourceAssetIdentifiersForBatchedCreation = v11->_sourceAssetIdentifiersForBatchedCreation;
    v11->_sourceAssetIdentifiersForBatchedCreation = v22;

    v24 = PLDataFromXPCDictionary();
    v25 = MEMORY[0x1E69BE4E0];
    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v54 = v24;
    v29 = [v25 secureUnarchivedObjectWithData:v24 ofClasses:v28];
    sourceAssetIdentifiersForCurationSet = v11->_sourceAssetIdentifiersForCurationSet;
    v11->_sourceAssetIdentifiersForCurationSet = v29;

    v31 = PLDictionaryFromXPCDictionary();
    sourceAssetToShareAssetMapForCreationRequest = v11->_sourceAssetToShareAssetMapForCreationRequest;
    v11->_sourceAssetToShareAssetMapForCreationRequest = v31;

    if ([(NSOrderedSet *)v11->_sourceAssetIdentifiersForBatchedCreation count]|| [(NSOrderedSet *)v11->_sourceAssetIdentifiersForCurationSet count]|| [(NSDictionary *)v11->_sourceAssetToShareAssetMapForCreationRequest count])
    {
      v33 = [v10 helper];
      [v33 setMutated:1];

      [v9 recordUpdateRequest:v10];
    }

    v34 = PLDataFromXPCDictionary();
    v56 = v9;
    if (v34)
    {
      v35 = MEMORY[0x1E696ACD0];
      v36 = MEMORY[0x1E695DFD8];
      v37 = objc_opt_class();
      v38 = objc_opt_class();
      v39 = [v36 setWithObjects:{v37, v38, objc_opt_class(), 0}];
      v58 = 0;
      v40 = [v35 unarchivedObjectOfClasses:v39 fromData:v34 error:&v58];
      v41 = v58;
      sourceAssetIdentifiersToAdjustmentBakeInOptionsDictionaryForBatchedCreation = v11->_sourceAssetIdentifiersToAdjustmentBakeInOptionsDictionaryForBatchedCreation;
      v11->_sourceAssetIdentifiersToAdjustmentBakeInOptionsDictionaryForBatchedCreation = v40;
    }

    else
    {
      v41 = PLBackendGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v41, OS_LOG_TYPE_ERROR, "sourceAssetIdentifiersToAdjustmentBakeInOptionsDictionaryData is nil", buf, 2u);
      }
    }

    v43 = PLDataFromXPCDictionary();
    if (v43)
    {
      v44 = MEMORY[0x1E696ACD0];
      v45 = MEMORY[0x1E695DFD8];
      v46 = objc_opt_class();
      v47 = objc_opt_class();
      v48 = [v45 setWithObjects:{v46, v47, objc_opt_class(), 0}];
      v57 = 0;
      v49 = [v44 unarchivedObjectOfClasses:v48 fromData:v43 error:&v57];
      v50 = v57;
      sourceAssetIdentifiersToMetadataCopyOptionsDictionaryForBatchedCreation = v11->_sourceAssetIdentifiersToMetadataCopyOptionsDictionaryForBatchedCreation;
      v11->_sourceAssetIdentifiersToMetadataCopyOptionsDictionaryForBatchedCreation = v49;

      if (v34)
      {
LABEL_18:

        v9 = v56;
        goto LABEL_19;
      }

      v52 = PLBackendGetLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v60 = v50;
        _os_log_impl(&dword_19C86F000, v52, OS_LOG_TYPE_ERROR, "sourceAssetIdentifiersToMetadataCopyOptionsDictionary unarchiving error: %@", buf, 0xCu);
      }
    }

    else
    {
      v52 = PLBackendGetLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v52, OS_LOG_TYPE_ERROR, "sourceAssetIdentifiersToMetadataCopyOptionsDictionary is nil", buf, 2u);
      }

      v50 = 0;
    }

    goto LABEL_18;
  }

LABEL_19:

  return v11;
}

- (PHShareAssetChangeRequestHelper)initWithChangeRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHShareAssetChangeRequestHelper;
  v6 = [(PHShareAssetChangeRequestHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_changeRequest, a3);
  }

  return v7;
}

@end