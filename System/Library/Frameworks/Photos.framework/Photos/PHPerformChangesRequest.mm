@interface PHPerformChangesRequest
- (BOOL)_isSupportedLimitedLibraryChangeRequest:(id)a3;
- (BOOL)decodeWithService:(id)a3 clientAuthorization:(id)a4 error:(id *)a5;
- (BOOL)hasChangeRequests;
- (BOOL)hasObjectChangeRequests;
- (NSArray)requestSets;
- (NSString)description;
- (PHPerformChangesRequest)init;
- (PHPerformChangesRequest)initWithCoder:(id)a3;
- (PHPerformChangesRequest)initWithXPCCoder:(id)a3;
- (id)_allChangeRequests;
- (id)_failureWithError:(id)a3;
- (id)clientBundleID;
- (id)clientDescription;
- (id)clientDisplayName;
- (id)libraryServicesManager;
- (id)persistentStoreCoordinator;
- (id)serviceHandlerForChanges:(id)a3 clientAuthorization:(id)a4;
- (int64_t)accessLevel;
- (int64_t)accessScopeOptionsRequiredForRequestedChanges;
- (int64_t)determineAuthorizationStatusForChanges;
- (void)didSendChangesToServiceWithResult:(BOOL)a3;
- (void)discardUnsupportedLimitedLibraryChangeRequests;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithLibraryServicesManager:(id)a3 libraryName:(const char *)a4 executionContext:(id)a5 reply:(id)a6;
- (void)executeWithService:(id)a3 reply:(id)a4;
- (void)notifyChangesTransactionFailedWithLazyPhotoLibrary:(id)a3 error:(id)a4;
- (void)recordDeleteRequest:(id)a3;
- (void)recordFailedOnDemandRequest:(id)a3;
- (void)recordInsertRequest:(id)a3;
- (void)recordOtherChangeRequest:(id)a3;
- (void)recordUpdateRequest:(id)a3;
- (void)setChangeRequest:(id)a3 forUUID:(id)a4;
@end

@implementation PHPerformChangesRequest

- (PHPerformChangesRequest)init
{
  v6.receiver = self;
  v6.super_class = PHPerformChangesRequest;
  v2 = [(PHPerformChangesRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_libraryRole = 0;
    v4 = v2;
  }

  return v3;
}

- (id)_failureWithError:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "PHPerformChangesRequest failed to execute with error: %@", &v7, 0xCu);
  }

  v5 = [PHChangeRequest sanitizedFailureWithError:v3];

  return v5;
}

- (void)executeWithLibraryServicesManager:(id)a3 libraryName:(const char *)a4 executionContext:(id)a5 reply:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v35 = a5;
  v11 = a6;
  v12 = [v10 databaseContext];
  v13 = [v12 newShortLivedLibraryWithName:a4 libraryRole:{-[PHPerformChangesRequest libraryRole](self, "libraryRole")}];

  v14 = [v13 managedObjectContext];
  if ([(PHPerformChangesRequest *)self hasObjectChangeRequests])
  {
    instrumentation = self->_instrumentation;
    if (instrumentation)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      instrumentation->_serviceWillValidateTimestamp = v16;
    }

    v17 = [PHChangeValidationController alloc];
    v18 = [(PHPerformChangesRequest *)self inserts];
    v19 = [(PHPerformChangesRequest *)self updates];
    v20 = [(PHPerformChangesRequest *)self deletes];
    v21 = [(PHChangeValidationController *)v17 initWithInsertRequests:v18 updateRequests:v19 deleteRequests:v20 context:v14 photoLibrary:v13];

    v22 = [(PHChangeValidationController *)v21 validate];
    v23 = self->_instrumentation;
    if (v23)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v23->_serviceDidValidateTimestamp = v24;
    }

    if ([v22 isFailure])
    {
      v25 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [v22 error];
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v26;
        _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "PhotoKit validation failed for %@ %@", buf, 0x16u);
      }

      v27 = [v22 error];
      v11[2](v11, 0, v27);

      goto LABEL_16;
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v53 = __Block_byref_object_copy__5518;
  v54 = __Block_byref_object_dispose__5519;
  v28 = MEMORY[0x1E69BF2D0];
  v29 = [MEMORY[0x1E695DFB0] null];
  v30 = [v28 successWithResult:v29];

  v55 = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke;
  aBlock[3] = &unk_1E75A4490;
  v50 = v11;
  v51 = buf;
  v31 = _Block_copy(aBlock);
  if ([(PHPerformChangesRequest *)self waitForDelayedSaveActions])
  {
    [v14 setPostDelayedSaveActionsReply:v31];
  }

  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  v32 = self->_instrumentation;
  if (v32)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v32->_serviceWillExecuteTimestamp = v33;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_2;
  v41[3] = &unk_1E75A89A8;
  v41[4] = self;
  v42 = v14;
  v43 = v13;
  v45 = buf;
  v44 = v10;
  v46 = v47;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_2_128;
  v36[3] = &unk_1E75A45F8;
  v39 = buf;
  v36[4] = self;
  v37 = v43;
  v40 = v47;
  v34 = v31;
  v38 = v34;
  [v35 performTransactionOnLibrary:v37 transaction:v41 completionHandler:v36];

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(buf, 8);

LABEL_16:
}

void __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(*(a1 + 40) + 8) + 40) isSuccess];
  v4 = [*(*(*(a1 + 40) + 8) + 40) error];
  (*(v2 + 16))(v2, v3, v4);
}

void __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_2(uint64_t a1)
{
  v119 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *(v2 + 48) = v3;
  }

  v67 = [MEMORY[0x1E695DFA8] set];
  v114[0] = 0;
  v114[1] = v114;
  v114[2] = 0x3032000000;
  v114[3] = __Block_byref_object_copy__5518;
  v114[4] = __Block_byref_object_dispose__5519;
  v115 = 0;
  v4 = [*(a1 + 32) deletes];
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_3;
  v111[3] = &unk_1E75A44B8;
  v112 = *(a1 + 40);
  v113 = *(a1 + 48);
  [v4 enumerateObjectsUsingBlock:v111];

  v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v6 = objc_alloc(MEMORY[0x1E695DFA0]);
  v7 = [*(a1 + 32) inserts];
  v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

  v9 = [*(a1 + 32) inserts];
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_4;
  v104[3] = &unk_1E75A44E0;
  v105 = *(a1 + 48);
  v109 = v114;
  v10 = v5;
  v106 = v10;
  v11 = v8;
  v110 = *(a1 + 64);
  v12 = *(a1 + 32);
  v107 = v11;
  v108 = v12;
  [v9 enumerateObjectsUsingBlock:v104];

  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  if ([*(*(*(a1 + 64) + 8) + 40) isSuccess])
  {
    if ([v11 count])
    {
      v13 = [v11 count];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_5;
      block[3] = &unk_1E75A5FF8;
      v99 = v11;
      dispatch_apply(v13, 0, block);
    }

    v14 = [MEMORY[0x1E695DFA8] set];
    v15 = [*(a1 + 32) inserts];
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_6;
    v89[3] = &unk_1E75A4508;
    v90 = v10;
    v16 = *(a1 + 48);
    v17 = *(a1 + 64);
    v95 = v114;
    v96 = v17;
    v18 = *(a1 + 32);
    v91 = v16;
    v92 = v18;
    v19 = v14;
    v93 = v19;
    v94 = v67;
    v97 = &v100;
    [v15 enumerateObjectsUsingBlock:v89];

    if ([v19 count])
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v85 objects:v118 count:16];
      if (v21)
      {
        v22 = *v86;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v86 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = [MEMORY[0x1E69BE2B0] assetsWithAvalancheUUID:*(*(&v85 + 1) + 8 * i) sourceType:1 inManagedObjectContext:*(a1 + 40)];
            v25 = [MEMORY[0x1E69BE2B0] revalidateAvalancheAssets:v24 inLibrary:*(a1 + 48) deleteNonPicks:0 allowDissolve:1];
          }

          v21 = [v20 countByEnumeratingWithState:&v85 objects:v118 count:16];
        }

        while (v21);
      }
    }
  }

  v26 = [*(a1 + 32) inserts];
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_7;
  v84[3] = &unk_1E75A4530;
  v84[4] = *(a1 + 64);
  [v26 enumerateObjectsUsingBlock:v84];

  if ([*(*(*(a1 + 64) + 8) + 40) isSuccess])
  {
    v27 = [*(a1 + 32) updates];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_8;
    v78[3] = &unk_1E75A4558;
    v79 = *(a1 + 40);
    v28 = *(a1 + 48);
    v29 = *(a1 + 64);
    v82 = v114;
    v83 = v29;
    v30 = *(a1 + 32);
    v80 = v28;
    v81 = v30;
    [v27 enumerateObjectsUsingBlock:v78];
  }

  if ([*(*(*(a1 + 64) + 8) + 40) isSuccess])
  {
    v31 = *(*(a1 + 32) + 64);
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_9;
    v73[3] = &unk_1E75A4580;
    v32 = *(a1 + 48);
    v33 = *(a1 + 64);
    v76 = v114;
    v77 = v33;
    v34 = *(a1 + 32);
    v74 = v32;
    v75 = v34;
    [v31 enumerateObjectsUsingBlock:v73];
  }

  if ([*(*(*(a1 + 64) + 8) + 40) isSuccess] && objc_msgSend(*(a1 + 40), "hasChanges"))
  {
    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([v67 count])
    {
      [v35 setObject:v67 forKeyedSubscript:&unk_1F102C428];
    }

    if (*(v101 + 24) == 1)
    {
      v36 = [*(a1 + 56) pairingManager];
      v37 = *(a1 + 40);
      v72 = 0;
      v38 = [v36 processPairingForGroupIDs:v35 inContext:v37 error:&v72];
      v39 = v72;
      if ((v38 & 1) == 0)
      {
        v40 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v117 = v39;
          _os_log_impl(&dword_19C86F000, v40, OS_LOG_TYPE_ERROR, "Error while attempting to pair live photo assets in the library: %@", buf, 0xCu);
        }
      }
    }

    v41 = PLBackendGetLog();
    v42 = os_signpost_id_make_with_pointer(v41, *(a1 + 32));
    v43 = v41;
    v44 = v43;
    if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v44, OS_SIGNPOST_INTERVAL_BEGIN, v42, "Ingest-Save", "START: save", buf, 2u);
    }

    v45 = *(a1 + 40);
    v71 = 0;
    v46 = [v45 save:&v71];
    v47 = v71;
    v48 = v44;
    v49 = v48;
    if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v49, OS_SIGNPOST_INTERVAL_END, v42, "Ingest-Save", "END: save", buf, 2u);
    }

    if ([*(a1 + 32) waitForDelayedSaveActions])
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    if (v46)
    {
      v50 = [*(a1 + 40) persistentStoreCoordinator];
      v51 = [v50 currentPersistentHistoryTokenFromStores:0];

      v52 = [MEMORY[0x1E69BE600] transactionNumberFromToken:v51];
      v53 = *(*(a1 + 32) + 16);
      v54 = [v52 unsignedLongLongValue];
      if (v53)
      {
        *(v53 + 56) = v54;
      }
    }

    else
    {
      v55 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v117 = v47;
        _os_log_impl(&dword_19C86F000, v55, OS_LOG_TYPE_ERROR, "PhotoKit save failed with error: %@", buf, 0xCu);
      }

      v56 = *(a1 + 32);
      v57 = MEMORY[0x1E696ABC0];
      v51 = [v47 localizedDescription];
      v52 = [v57 ph_genericErrorWithLocalizedDescription:{@"Save failed with error %@", v51}];
      v58 = [v56 _failureWithError:v52];
      v59 = *(*(a1 + 64) + 8);
      v60 = *(v59 + 40);
      *(v59 + 40) = v58;
    }
  }

  if ([*(*(*(a1 + 64) + 8) + 40) isFailure])
  {
    [*(a1 + 40) rollback];
    v61 = *(a1 + 32);
    v62 = objc_initWeak(buf, v61);

    v63 = objc_alloc(MEMORY[0x1E69BF270]);
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_126;
    v68[3] = &unk_1E75A66C0;
    objc_copyWeak(&v70, buf);
    v69 = *(a1 + 48);
    v64 = [v63 initWithBlock:v68];

    objc_destroyWeak(&v70);
    objc_destroyWeak(buf);
    v65 = *(a1 + 32);
    v66 = [*(*(*(a1 + 64) + 8) + 40) error];
    [v65 notifyChangesTransactionFailedWithLazyPhotoLibrary:v64 error:v66];
  }

  _Block_object_dispose(&v100, 8);

  _Block_object_dispose(v114, 8);
}

void __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_2_128(uint64_t a1)
{
  if ([*(*(*(a1 + 56) + 8) + 40) isSuccess])
  {
    v5 = [*(a1 + 32) inserts];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_3_129;
    v9[3] = &unk_1E75A45A8;
    v10 = *(a1 + 40);
    [v5 enumerateObjectsUsingBlock:v9];

    v6 = [*(a1 + 32) updates];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_4_130;
    v7[3] = &unk_1E75A45D0;
    v8 = *(a1 + 40);
    [v6 enumerateObjectsUsingBlock:v7];
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), v2, v3, v4);
  }
}

void __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 objectID];
  v6 = [v4 existingObjectWithID:v5 error:0];

  if (v6)
  {
    [v7 deleteManagedObject:v6 photoLibrary:*(a1 + 40)];
  }
}

void __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 64) + 8);
  obj = *(v8 + 40);
  v9 = [v6 createManagedObjectForInsertIntoPhotoLibrary:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    [*(a1 + 40) setObject:v9 forKey:v6];
    if ([v6 shouldPerformConcurrentWork])
    {
      [*(a1 + 48) addObject:v6];
    }
  }

  else
  {
    v10 = [*(a1 + 56) _failureWithError:*(*(*(a1 + 64) + 8) + 40)];
    v11 = *(*(a1 + 72) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }
}

void __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [v2 performConcurrentWork];
}

void __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) objectForKey:v6];
  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 72) + 8);
    obj = *(v9 + 40);
    v10 = [v6 applyMutationsToManagedObject:v7 photoLibrary:v8 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    if ((v10 & 1) == 0)
    {
      v11 = [*(a1 + 48) _failureWithError:*(*(*(a1 + 72) + 8) + 40)];
      v12 = *(*(a1 + 80) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      *a4 = 1;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v7;
    v15 = [v14 avalancheUUID];

    if (v15)
    {
      v16 = *(a1 + 56);
      v17 = [v14 avalancheUUID];
      [v16 addObject:v17];
    }

    v18 = [v14 mediaGroupUUID];

    if (v18)
    {
      v19 = *(a1 + 64);
      v20 = [v14 mediaGroupUUID];
      [v19 addObject:v20];
    }

    v21 = [v14 importedBy] == 5 || objc_msgSend(v14, "importedBy") == 4 || objc_msgSend(v14, "importedBy") == 1 || objc_msgSend(v14, "importedBy") == 2;
    *(*(*(a1 + 88) + 8) + 24) = v21;
  }
}

void __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  [v3 finalizeRequestWithBatchSuccess:{objc_msgSend(v2, "isSuccess")}];
}

void __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v6 objectID];
  v9 = [v7 existingObjectWithID:v8 error:0];

  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 56) + 8);
    obj = *(v11 + 40);
    v12 = [v6 applyMutationsToManagedObject:v9 photoLibrary:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    if ((v12 & 1) == 0)
    {
      v13 = [*(a1 + 48) _failureWithError:*(*(*(a1 + 56) + 8) + 40)];
      v14 = *(*(a1 + 64) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      *a4 = 1;
    }
  }
}

void __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_9(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v8 = [a2 applyChangesWithLibrary:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if ((v8 & 1) == 0)
  {
    v9 = [*(a1 + 40) _failureWithError:*(*(*(a1 + 48) + 8) + 40)];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

id __96__PHPerformChangesRequest_executeWithLibraryServicesManager_libraryName_executionContext_reply___block_invoke_126(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)executeWithService:(id)a3 reply:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_storeWeak(&self->_service, v6);
  instrumentation = self->_instrumentation;
  v9 = self;
  v10 = v6;
  if (instrumentation)
  {
    v11 = PLPhotoKitGetLog();
    instrumentation->_signpostId = os_signpost_id_generate(v11);
    v12 = v11;
    v13 = v12;
    signpostId = instrumentation->_signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      uuid = instrumentation->_uuid;
      v16 = [v10 clientDescription];
      qos_class_self();
      v17 = PLStringFromQoSClass();
      *buf = 138544130;
      v38 = uuid;
      v39 = 2114;
      v40 = v16;
      v41 = 2114;
      v42 = v17;
      v43 = 2114;
      v44 = v9;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "PhotoKit request [service]", "PhotoKit changes: [%{public}@] Request received from client: %{public}@ at %{public}@, %{public}@", buf, 0x2Au);
    }

    v18 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = instrumentation->_uuid;
      v20 = [v10 clientDescription];
      qos_class_self();
      v21 = PLStringFromQoSClass();
      *buf = 138544130;
      v38 = v19;
      v39 = 2114;
      v40 = v20;
      v41 = 2114;
      v42 = v21;
      v43 = 2114;
      v44 = v9;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "PhotoKit changes: [%{public}@] Request received from client: %{public}@ at %{public}@, %{public}@", buf, 0x2Au);
    }
  }

  -[PHPerformChangesRequest setLibraryRole:](v9, "setLibraryRole:", [v10 libraryRole]);
  v22 = MEMORY[0x1E696AEC0];
  v23 = [v10 clientBundleID];
  v24 = [v10 clientDisplayName];
  v25 = [v22 stringWithFormat:@"PhotoKit changes: %@ (%@)", v23, v24];

  v26 = objc_alloc_init(MEMORY[0x1E69BE2A8]);
  v27 = [objc_alloc(MEMORY[0x1E69BE2F8]) initWithIdentifier:v25];
  v28 = [v10 libraryServicesManager];
  v29 = [v25 UTF8String];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __52__PHPerformChangesRequest_executeWithService_reply___block_invoke;
  v33[3] = &unk_1E75A4468;
  v33[4] = v9;
  v34 = v10;
  v35 = v27;
  v36 = v7;
  v30 = v27;
  v31 = v7;
  v32 = v10;
  [(PHPerformChangesRequest *)v9 executeWithLibraryServicesManager:v28 libraryName:v29 executionContext:v26 reply:v33];
}

id __52__PHPerformChangesRequest_executeWithService_reply___block_invoke(uint64_t a1, int a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v5[2];
  v8 = a3;
  v9 = v5;
  v10 = v6;
  v11 = v8;
  if (v7)
  {
    v12 = *(v7 + 32) - *(v7 + 24);
    v13 = *(v7 + 48) - *(v7 + 40);
    v14 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v7 + 64);
      v16 = [v10 clientDescription];
      qos_class_self();
      v17 = PLShortStringFromQoSClass();
      v18 = v17;
      v19 = *(v7 + 56);
      v20 = @"N";
      *buf = 138545410;
      v36 = v15;
      if (a2)
      {
        v20 = @"Y";
      }

      v37 = 2114;
      v38 = v16;
      v39 = 2114;
      v40 = v17;
      v41 = 2114;
      v42 = v20;
      v43 = 2112;
      v44 = v11;
      v45 = 2048;
      v46 = v12;
      v47 = 2048;
      v48 = v13;
      v49 = 2048;
      v50 = v19;
      v51 = 2114;
      v52 = v9;
      v21 = v20;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEFAULT, "PhotoKit changes: [%{public}@] Reply sent to client %{public}@ at %{public}@ success: %{public}@ error: %@ validate: %f wait: %f tx#: %llu %{public}@", buf, 0x5Cu);
    }

    v22 = PLPhotoKitGetLog();
    v23 = v22;
    v24 = *(v7 + 16);
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v34 = a2;
      v25 = *(v7 + 64);
      v26 = [v10 clientDescription];
      qos_class_self();
      v27 = PLShortStringFromQoSClass();
      v28 = v27;
      v29 = *(v7 + 56);
      v30 = @"N";
      *buf = 138545410;
      v36 = v25;
      if (v34)
      {
        v30 = @"Y";
      }

      v37 = 2114;
      v38 = v26;
      v39 = 2114;
      v40 = v27;
      v41 = 2114;
      v42 = v30;
      v43 = 2112;
      v44 = v11;
      v45 = 2048;
      v46 = v12;
      v47 = 2048;
      v48 = v13;
      v49 = 2048;
      v50 = v29;
      v51 = 2114;
      v52 = v9;
      v31 = v30;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PhotoKit request [service]", "PhotoKit changes: [%{public}@] Reply sent to client %{public}@ at %{public}@ success: %{public}@ error: %@ validate: %f wait: %f tx#: %llu %{public}@", buf, 0x5Cu);
    }

    *(v7 + 16) = 0;
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 48) stillAlive];
  v32 = (*(a1 + 32) + 80);

  return objc_storeWeak(v32, 0);
}

- (void)discardUnsupportedLimitedLibraryChangeRequests
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5518;
  v18 = __Block_byref_object_dispose__5519;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PHPerformChangesRequest_discardUnsupportedLimitedLibraryChangeRequests__block_invoke;
  aBlock[3] = &unk_1E75A4420;
  aBlock[4] = self;
  aBlock[5] = &v10;
  aBlock[6] = &v14;
  v3 = _Block_copy(aBlock);
  [(NSMutableOrderedSet *)self->_inserts pl_removeObjectsPassingTest:v3];
  [(NSMutableOrderedSet *)self->_updates pl_removeObjectsPassingTest:v3];
  [(NSMutableOrderedSet *)self->_deletes pl_removeObjectsPassingTest:v3];
  [(NSMutableOrderedSet *)self->_otherChangeHandlers pl_removeObjectsPassingTest:&__block_literal_global_5551];
  if (*(v11 + 24) == 1)
  {
    v4 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Removed unsupported change requests in limited library mode:", buf, 2u);
    }

    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v15[5];
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_ERROR, "BEFORE: %{public}@", buf, 0xCu);
    }

    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(PHPerformChangesRequest *)self description];
      *buf = 138543362;
      v21 = v8;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "AFTER: %{public}@", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

uint64_t __73__PHPerformChangesRequest_discardUnsupportedLimitedLibraryChangeRequests__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _isSupportedLimitedLibraryChangeRequest:a2];
  if ((v3 & 1) == 0 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v4 = [*(a1 + 32) description];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v3 ^ 1u;
}

- (BOOL)_isSupportedLimitedLibraryChangeRequest:(id)a3
{
  v3 = a3;
  v4 = +[PHAsset managedEntityName];
  v5 = [v3 managedEntityName];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = +[PHAlbum managedEntityName];
    v9 = [v3 managedEntityName];
    v7 = [v8 isEqualToString:v9];
  }

  return v7;
}

- (BOOL)decodeWithService:(id)a3 clientAuthorization:(id)a4 error:(id *)a5
{
  v73 = *MEMORY[0x1E69E9840];
  obj = a3;
  v55 = a4;
  v6 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "PLPhotoKitChangeRequest queued", buf, 2u);
  }

  v56 = [(PLXPCObject *)self object];
  if (v56)
  {
    objc_storeWeak(&self->_service, obj);
    v52 = PLStringFromXPCDictionary();
    if (v52)
    {
      v7 = [PHPerformChangesInstrumentation alloc];
      if (v7)
      {
        v8 = MEMORY[0x1E696AFB0];
        v9 = v52;
        v10 = [[v8 alloc] initWithUUIDString:v9];

        v7 = [(PHPerformChangesInstrumentation *)v7 initWithUUID:v10];
      }
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&self->_instrumentation, v7);
    if (v52)
    {
    }

    v14 = 0;
    v13 = 0;
    v53 = *MEMORY[0x1E696A278];
    while (1)
    {
      v15 = off_1E75A4400[v14];
      v16 = self;
      v17 = v56;
      v18 = v55;
      xdict = v17;
      v19 = xpc_dictionary_get_value(v17, v15);
      if (v19)
      {
        v20 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *v70 = 136315394;
          *&v70[4] = v15;
          *&v70[12] = 2112;
          *&v70[14] = v19;
          _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_DEBUG, "##### %s: %@", v70, 0x16u);
        }

        count = xpc_array_get_count(v19);
        *v70 = 0;
        *&v70[8] = v70;
        *&v70[16] = 0x2020000000;
        *&v70[24] = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __createObjectChangeRequestsFromXPCObject_block_invoke;
        v66 = &unk_1E75A4620;
        v67 = v16;
        v68 = v18;
        v69 = v70;
        xpc_array_apply(v19, buf);
        v22 = *(*&v70[8] + 24);
        v23 = count - v22;
        if ((count - v22) < 1)
        {
          v27 = 0;
        }

        else
        {
          v24 = MEMORY[0x1E696ABC0];
          v61 = v53;
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%td change requests are invalid", v23];
          *v62 = v25;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
          v27 = [v24 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v26];
          v28 = v27;

          v22 = -1;
        }

        _Block_object_dispose(v70, 8);
      }

      else
      {
        v27 = 0;
        v22 = 0;
      }

      v29 = v27;
      v30 = v29;
      if (v22 < 0)
      {
        break;
      }

      if (v15 == "deletes" && v22)
      {
        v31 = PLPhotosStatusGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v18 trustedCallerBundleID];
          v33 = [v18 clientProcessIdentifier];
          *buf = 138412546;
          *&buf[4] = v32;
          *&buf[12] = 1024;
          *&buf[14] = v33;
          _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_DEFAULT, "Deletion from PhotoKit triggered by %@ (%d)", buf, 0x12u);
        }
      }

      v13 = v14++ > 1;
      if (v14 == 3)
      {
        otherChanges = v16->_otherChanges;
        v35 = v16;
        v36 = otherChanges;
        v37 = v18;
        v54 = v36;
        if (v36)
        {
          v38 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "otherChanges";
            *&buf[12] = 2112;
            *&buf[14] = v54;
            _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_DEBUG, "##### %s: %@", buf, 0x16u);
          }

          v39 = objc_alloc_init(MEMORY[0x1E695DFA0]);
          v71 = 0u;
          v72 = 0u;
          memset(v70, 0, sizeof(v70));
          v40 = v54;
          v41 = [(NSArray *)v40 countByEnumeratingWithState:v70 objects:buf count:16];
          if (v41)
          {
            v42 = **&v70[16];
            do
            {
              for (i = 0; i != v41; ++i)
              {
                if (**&v70[16] != v42)
                {
                  objc_enumerationMutation(v40);
                }

                v44 = *(*&v70[8] + 8 * i);
                v45 = [(PHPerformChangesRequest *)v35 serviceHandlerForChanges:v44 clientAuthorization:v37];
                if (v45)
                {
                  [(NSMutableOrderedSet *)v39 addObject:v45];
                }

                else
                {
                  v46 = PLPhotoKitGetLog();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                  {
                    *v62 = 136315394;
                    *&v62[4] = "otherChanges";
                    v63 = 2112;
                    v64 = v44;
                    _os_log_impl(&dword_19C86F000, v46, OS_LOG_TYPE_ERROR, "Failed to create change service handler from '%s' changes %@", v62, 0x16u);
                  }
                }
              }

              v41 = [(NSArray *)v40 countByEnumeratingWithState:v70 objects:buf count:16];
            }

            while (v41);
          }
        }

        else
        {
          v39 = 0;
        }

        otherChangeHandlers = v35->_otherChangeHandlers;
        v35->_otherChangeHandlers = v39;

        v35->_waitForDelayedSaveActions = xpc_dictionary_get_BOOL(xdict, [@"waitForDelayedSaveActions" UTF8String]);
        v13 = 1;
        goto LABEL_50;
      }
    }

    if (a5)
    {
      v47 = v29;
      *a5 = v30;
    }

    v16->_waitForDelayedSaveActions = 0;
LABEL_50:
    objc_storeWeak(&self->_service, 0);
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A278];
    v60 = @"Change request XPC object is nil";
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v12 = [v11 errorWithDomain:@"PHPhotosErrorDomain" code:4103 userInfo:v52];
    if (a5)
    {
      v12 = v12;
      *a5 = v12;
    }

    v13 = 0;
  }

  return v13;
}

- (id)serviceHandlerForChanges:(id)a3 clientAuthorization:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_alloc(MEMORY[0x1E69BE678]) initWithPhotoLibraryAttributesChanges:v5 clientAuthorization:v6];
  }

  else
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v10 = 138412546;
      v11 = v5;
      v12 = 2114;
      v13 = objc_opt_class();
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_FAULT, "Failed to resolve service handler for changes %@, unknown class %{public}@", &v10, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)clientDisplayName
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v3 = [WeakRetained clientDisplayName];

  return v3;
}

- (id)clientBundleID
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v3 = [WeakRetained clientBundleID];

  return v3;
}

- (id)clientDescription
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v3 = [WeakRetained clientDescription];

  return v3;
}

- (id)libraryServicesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v3 = [WeakRetained libraryServicesManager];

  return v3;
}

- (id)persistentStoreCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v3 = [WeakRetained persistentStoreCoordinator];

  return v3;
}

- (int64_t)determineAuthorizationStatusForChanges
{
  v2 = [(PHPerformChangesRequest *)self accessScopeOptionsRequiredForRequestedChanges];
  v3 = [MEMORY[0x1E69BF2B0] sharedInstance];
  v4 = [v3 checkPhotosAccessAllowedWithScope:v2];

  if (v4 > 4)
  {
    return 0;
  }

  else
  {
    return qword_19CB29A48[v4];
  }
}

- (int64_t)accessLevel
{
  if ([(PHPerformChangesRequest *)self accessScopeOptionsRequiredForRequestedChanges]== 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)accessScopeOptionsRequiredForRequestedChanges
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PHPerformChangesRequest_accessScopeOptionsRequiredForRequestedChanges__block_invoke;
  aBlock[3] = &unk_1E75A43E0;
  aBlock[4] = &v12;
  v3 = _Block_copy(aBlock);
  v4 = [(PHPerformChangesRequest *)self inserts];
  v3[2](v3, v4);

  v5 = [(PHPerformChangesRequest *)self updates];
  v3[2](v3, v5);

  v6 = [(PHPerformChangesRequest *)self deletes];
  v3[2](v3, v6);

  if (self->_inService)
  {
    v3[2](v3, self->_otherChangeHandlers);
  }

  else
  {
    v7 = [(PHPerformChangesRequest *)self otherChangeRequests];
    v3[2](v3, v7);
  }

  v8 = v13[3];
  if (!v8)
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = self;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "No photos access scope requirements declared for changes %{public}@", buf, 0xCu);
    }

    v8 = 7;
    v13[3] = 7;
  }

  _Block_object_dispose(&v12, 8);
  return v8;
}

void __72__PHPerformChangesRequest_accessScopeOptionsRequiredForRequestedChanges__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(*(a1 + 32) + 8) + 24);
        *(*(*(a1 + 32) + 8) + 24) = [*(*(&v9 + 1) + 8 * v7++) accessScopeOptionsRequirement] | v8;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  v43 = v4;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"This object may only be encoded by an NSXPCCoder."];
  }

  v5 = [(NSMutableOrderedSet *)self->_inserts count];
  v6 = [(NSMutableOrderedSet *)self->_updates count];
  v7 = [(NSMutableOrderedSet *)self->_deletes count];
  v8 = [(NSMutableOrderedSet *)self->_otherChangeRequests count];
  v9 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "##### PHPerformChangesRequest encodeToXPCObject:", buf, 2u);
  }

  if (v5)
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      inserts = self->_inserts;
      *buf = 138412290;
      v53 = inserts;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "##### inserts: %@", buf, 0xCu);
    }
  }

  if (v6)
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      updates = self->_updates;
      *buf = 138412290;
      v53 = updates;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "##### updates: %@", buf, 0xCu);
    }
  }

  if (v7)
  {
    v14 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      deletes = self->_deletes;
      *buf = 138412290;
      v53 = deletes;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEBUG, "##### deletes: %@", buf, 0xCu);
    }
  }

  if (v8)
  {
    v16 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      otherChangeRequests = self->_otherChangeRequests;
      *buf = 138412290;
      v53 = otherChangeRequests;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEBUG, "##### otherChanges: %@", buf, 0xCu);
    }
  }

  if (v6 | v5 | v7 | v8)
  {
    v18 = xpc_dictionary_create(0, 0, 0);
    addObjectChangeRequests(self->_inserts, v18, "inserts");
    addObjectChangeRequests(self->_updates, v18, "updates");
    addObjectChangeRequests(self->_deletes, v18, "deletes");
    if (self->_waitForDelayedSaveActions)
    {
      xpc_dictionary_set_BOOL(v18, [@"waitForDelayedSaveActions" UTF8String], 1);
    }

    instrumentation = self->_instrumentation;
    if (instrumentation)
    {
      instrumentation = objc_getProperty(instrumentation, v19, 64, 1);
    }

    v21 = instrumentation;
    v22 = [v21 UUIDString];
    PLXPCDictionarySetString();

    [v43 encodeXPCObject:v18 forKey:@"_xpcObject"];
    v23 = self->_otherChangeRequests;
    v24 = v43;
    if ([(NSMutableOrderedSet *)v23 count])
    {
      v41 = v24;
      v25 = [MEMORY[0x1E695DF70] array];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v42 = v23;
      v26 = v23;
      v27 = [(NSMutableOrderedSet *)v26 countByEnumeratingWithState:&v44 objects:buf count:16];
      if (!v27)
      {
        goto LABEL_45;
      }

      v28 = v27;
      v29 = *v45;
      while (1)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v44 + 1) + 8 * i);
          v32 = [v31 changesForServiceHandler];
          if (![v32 hasChanges])
          {
            v34 = PLPhotoKitGetLog();
            v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
            if (v32)
            {
              if (v35)
              {
                *v48 = 138412546;
                v49 = v32;
                v50 = 2112;
                v51 = v31;
                v36 = v34;
                v37 = "No changes in %@ requested for change request %@";
                v38 = 22;
                goto LABEL_41;
              }
            }

            else if (v35)
            {
              *v48 = 138412290;
              v49 = v31;
              v36 = v34;
              v37 = "Missing expected changes for service handler for change request %@";
              v38 = 12;
LABEL_41:
              _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_ERROR, v37, v48, v38);
            }

            goto LABEL_43;
          }

          v33 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *v48 = 138412546;
            v49 = v32;
            v50 = 2112;
            v51 = v31;
            _os_log_impl(&dword_19C86F000, v33, OS_LOG_TYPE_DEBUG, "Adding changes %@ for change request %@", v48, 0x16u);
          }

          [v25 addObject:v32];
LABEL_43:
        }

        v28 = [(NSMutableOrderedSet *)v26 countByEnumeratingWithState:&v44 objects:buf count:16];
        if (!v28)
        {
LABEL_45:

          v39 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
          v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"otherChanges"];
          v24 = v41;
          [v41 encodeObject:v39 forKey:v40];

          v23 = v42;
          break;
        }
      }
    }
  }

  else
  {
    v18 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEBUG, "empty PHPerformChangesRequest", buf, 2u);
    }
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__PHPerformChangesRequest_description__block_invoke;
  aBlock[3] = &unk_1E75A43B8;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  v5[2](v5, self->_deletes, @"deletes");
  v5[2](v5, self->_inserts, @"inserts");
  v5[2](v5, self->_updates, @"updates");
  v5[2](v5, self->_otherChangeRequests, @"other");
  v6 = v4;

  return v4;
}

void __38__PHPerformChangesRequest_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v27 + 1) + 8 * v13) changeTypeForSummary];
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = @"(nil)";
        }

        [v8 addObject:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * v20);
        if ([v7 length])
        {
          [v7 appendString:{@", "}];
        }

        [v7 appendFormat:@"%@: %lu", v21, objc_msgSend(v16, "countForObject:", v21)];
        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  if ([v7 length])
  {
    [*(a1 + 32) appendFormat:@"%@: [%@] ", v5, v7];
  }
}

- (void)didSendChangesToServiceWithResult:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(PHPerformChangesRequest *)self _allChangeRequests];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) didSendChangeToServiceHandlerWithResult:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_allChangeRequests
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(PHPerformChangesRequest *)self requestSets];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) array];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)notifyChangesTransactionFailedWithLazyPhotoLibrary:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  failedOnDemandRequests = self->_failedOnDemandRequests;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__PHPerformChangesRequest_notifyChangesTransactionFailedWithLazyPhotoLibrary_error___block_invoke;
  v11[3] = &unk_1E75A4390;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NSMutableOrderedSet *)failedOnDemandRequests enumerateObjectsUsingBlock:v11];
}

void __84__PHPerformChangesRequest_notifyChangesTransactionFailedWithLazyPhotoLibrary_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 72);
  v5 = a2;
  v6 = [v3 objectValue];
  v7 = a1[6];
  v8 = v6;
  if (v4 == 1)
  {
    [v5 changeFailedOnDaemonWithLibrary:v6 error:v7];
  }

  else
  {
    [v5 changeFailedOnClientWithLibrary:v6 error:v7];
  }
}

- (void)recordFailedOnDemandRequest:(id)a3
{
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    failedOnDemandRequests = self->_failedOnDemandRequests;
    if (!failedOnDemandRequests)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v6 = self->_failedOnDemandRequests;
      self->_failedOnDemandRequests = v5;

      failedOnDemandRequests = self->_failedOnDemandRequests;
    }

    [(NSMutableOrderedSet *)failedOnDemandRequests addObject:v7];
  }
}

- (void)setChangeRequest:(id)a3 forUUID:(id)a4
{
  v10 = a3;
  v6 = a4;
  changeRequestsByUUID = self->_changeRequestsByUUID;
  if (!changeRequestsByUUID)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_changeRequestsByUUID;
    self->_changeRequestsByUUID = v8;

    changeRequestsByUUID = self->_changeRequestsByUUID;
  }

  [(NSMutableDictionary *)changeRequestsByUUID setObject:v10 forKey:v6];
}

- (void)recordOtherChangeRequest:(id)a3
{
  v4 = a3;
  otherChangeRequests = self->_otherChangeRequests;
  v8 = v4;
  if (!otherChangeRequests)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_otherChangeRequests;
    self->_otherChangeRequests = v6;

    v4 = v8;
    otherChangeRequests = self->_otherChangeRequests;
  }

  [(NSMutableOrderedSet *)otherChangeRequests addObject:v4];
  [(PHPerformChangesRequest *)self recordFailedOnDemandRequest:v8];
}

- (void)recordDeleteRequest:(id)a3
{
  v4 = a3;
  deletes = self->_deletes;
  v8 = v4;
  if (!deletes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_deletes;
    self->_deletes = v6;

    v4 = v8;
    deletes = self->_deletes;
  }

  [(NSMutableOrderedSet *)deletes addObject:v4];
  [(NSMutableOrderedSet *)self->_inserts removeObject:v8];
  [(NSMutableOrderedSet *)self->_updates removeObject:v8];
  [(PHPerformChangesRequest *)self recordFailedOnDemandRequest:v8];
}

- (void)recordUpdateRequest:(id)a3
{
  v4 = a3;
  inserts = self->_inserts;
  v9 = v4;
  if (!inserts || ([(NSMutableOrderedSet *)inserts containsObject:v4]& 1) == 0)
  {
    updates = self->_updates;
    if (!updates)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v8 = self->_updates;
      self->_updates = v7;

      updates = self->_updates;
    }

    [(NSMutableOrderedSet *)updates addObject:v9];
    [(PHPerformChangesRequest *)self recordFailedOnDemandRequest:v9];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)recordInsertRequest:(id)a3
{
  v4 = a3;
  inserts = self->_inserts;
  v8 = v4;
  if (!inserts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_inserts;
    self->_inserts = v6;

    v4 = v8;
    inserts = self->_inserts;
  }

  [(NSMutableOrderedSet *)inserts addObject:v4];
  [(NSMutableOrderedSet *)self->_updates removeObject:v8];
  [(PHPerformChangesRequest *)self recordFailedOnDemandRequest:v8];
}

- (NSArray)requestSets
{
  if (self->_inserts || self->_updates || self->_deletes || self->_otherChangeRequests)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = v3;
    if (self->_inserts)
    {
      [v3 addObject:?];
    }

    if (self->_updates)
    {
      [v4 addObject:?];
    }

    if (self->_deletes)
    {
      [v4 addObject:?];
    }

    if (self->_otherChangeRequests)
    {
      [v4 addObject:?];
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (BOOL)hasObjectChangeRequests
{
  v3 = [(NSMutableOrderedSet *)self->_inserts count];
  v4 = [(NSMutableOrderedSet *)self->_updates count]+ v3;
  return v4 + [(NSMutableOrderedSet *)self->_deletes count]!= 0;
}

- (BOOL)hasChangeRequests
{
  v3 = [(NSMutableOrderedSet *)self->_inserts count];
  v4 = [(NSMutableOrderedSet *)self->_updates count]+ v3;
  v5 = v4 + [(NSMutableOrderedSet *)self->_deletes count];
  return v5 + [(NSMutableOrderedSet *)self->_otherChangeRequests count]!= 0;
}

- (PHPerformChangesRequest)initWithXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeXPCObjectOfType:objc_msgSend(objc_opt_class() forKey:{"type"), @"_xpcObject"}];
  v6 = [(PLXPCObject *)self initWithXPCObject:v5];
  v7 = v6;
  if (v6)
  {
    v6->_inService = 1;
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"otherChanges"];
    v12 = [v4 decodeObjectOfClasses:v10 forKey:v11];
    otherChanges = v7->_otherChanges;
    v7->_otherChanges = v12;

    v7->_libraryRole = 0;
    v14 = v7;
  }

  return v7;
}

- (PHPerformChangesRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (!v8)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable _PLAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nullable __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"PLHelperExtension.h" lineNumber:78 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

LABEL_7:
    v8 = 0;
  }

  v11 = [(PHPerformChangesRequest *)self initWithXPCCoder:v8];
  return v11;
}

@end