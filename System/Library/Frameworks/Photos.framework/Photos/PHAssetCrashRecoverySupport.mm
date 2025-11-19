@interface PHAssetCrashRecoverySupport
+ (BOOL)shouldAttemptCrashRecoveryForLibraryWithPathManager:(id)a3;
- (BOOL)_isCrashRecoveryFilename:(id)a3;
- (BOOL)_isSafeToRecoverAfterCrashForCrashRecoveryFileURL:(id)a3;
- (PHAssetCrashRecoverySupport)initWithLibraryServicesManager:(id)a3;
- (void)_checkAndResolveExistingAssetUUIDWithCreationRequest:(id)a3 recoveredFromFileURL:(id)a4;
- (void)_commitRequest:(id)a3 reply:(id)a4;
- (void)_recoverFromCrashIfNeeded;
- (void)_triggerTapToRadarForCrashRecoveryConflictingUUID:(id)a3 existingAssetID:(id)a4 recoveryFileSubpath:(id)a5 resolvedUUID:(id)a6;
- (void)recoverFromCrashIfNeeded;
@end

@implementation PHAssetCrashRecoverySupport

- (void)_commitRequest:(id)a3 reply:(id)a4
{
  v6 = MEMORY[0x1E69BE838];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v8 executeWithLibraryServicesManager:self->_libraryServicesManager libraryName:"-[PHAssetCrashRecoverySupport _commitRequest:reply:]" executionContext:v9 reply:v7];
}

- (void)recoverFromCrashIfNeeded
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PHAssetCrashRecoverySupport *)self libraryServicesManager];
  v4 = [v3 pathManager];

  v5 = objc_opt_class();
  v6 = [(PHAssetCrashRecoverySupport *)self libraryServicesManager];
  v7 = [v6 pathManager];
  v8 = [v5 shouldAttemptCrashRecoveryForLibraryWithPathManager:v7];

  v9 = PLBackendGetLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = MEMORY[0x1E69BF220];
      v12 = [v4 libraryURL];
      v13 = [v11 descriptionWithFileURL:v12];
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEFAULT, "[AssetCreationRecovery] Attempting crash recovery with library %@", &v17, 0xCu);
    }

    [(PHAssetCrashRecoverySupport *)self _recoverFromCrashIfNeeded];
  }

  else
  {
    if (v10)
    {
      v14 = MEMORY[0x1E69BF220];
      v15 = [v4 libraryURL];
      v16 = [v14 descriptionWithFileURL:v15];
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEFAULT, "[AssetCreationRecovery] Skipping crash recovery with library %@", &v17, 0xCu);
    }
  }
}

- (void)_recoverFromCrashIfNeeded
{
  v94 = *MEMORY[0x1E69E9840];
  v3 = [(PLLibraryServicesManager *)self->_libraryServicesManager pathManager];
  v4 = [v3 pathsForExternalWriters];

  v57 = [MEMORY[0x1E69BF238] fileManager];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v4;
  v58 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
  if (v58)
  {
    v56 = *v83;
    v66 = *MEMORY[0x1E696A508];
    v5 = 0x1E69BE000uLL;
    do
    {
      v6 = 0;
      do
      {
        if (*v83 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v59 = v6;
        v7 = *(*(&v82 + 1) + 8 * v6);
        v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __56__PHAssetCrashRecoverySupport__recoverFromCrashIfNeeded__block_invoke;
        v81[3] = &unk_1E75A89D0;
        v81[4] = v7;
        v9 = [v57 enumeratorAtURL:v8 includingPropertiesForKeys:0 options:0 errorHandler:v81];

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v10 = v9;
        v70 = [v10 countByEnumeratingWithState:&v77 objects:v92 count:16];
        if (v70)
        {
          v11 = *v78;
          v67 = v10;
          v68 = *v78;
          do
          {
            for (i = 0; i != v70; ++i)
            {
              if (*v78 != v11)
              {
                objc_enumerationMutation(v10);
              }

              v13 = *(*(&v77 + 1) + 8 * i);
              v14 = objc_autoreleasePoolPush();
              v15 = [v13 lastPathComponent];
              v16 = [(PHAssetCrashRecoverySupport *)self _isCrashRecoveryFilename:v15];

              if (v16)
              {
                v17 = [(PHAssetCrashRecoverySupport *)self _isSafeToRecoverAfterCrashForCrashRecoveryFileURL:v13];
                v18 = [*(v5 + 672) trackingPerformChangesRequestInProgressCount];
                if (!v17 || v18 > 0)
                {
                  v20 = v18;
                  v21 = PLBackendGetLog();
                  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
                  if (v20 >= 1)
                  {
                    if (v22)
                    {
                      v23 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v13];
                      *buf = 138412290;
                      v87 = v23;
                      v24 = v21;
                      v25 = "[AssetCreationRecovery] Perform changes request is in progress, skipping asset creation recovery for path: %@";
                      goto LABEL_28;
                    }

LABEL_50:

                    goto LABEL_51;
                  }

                  if (!v22)
                  {
                    goto LABEL_50;
                  }

                  v23 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v13];
                  *buf = 138412290;
                  v87 = v23;
                  v24 = v21;
                  v25 = "[AssetCreationRecovery] Someone else is accessing this file, skipping asset creation recovery for path: %@";
LABEL_28:
                  _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);

LABEL_49:
                  v11 = v68;
                  goto LABEL_50;
                }

                v76 = 0;
                v26 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v13 options:1 error:&v76];
                v21 = v76;
                if (!v26)
                {
                  v38 = PLBackendGetLog();
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    v39 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v13];
                    *buf = 138412546;
                    v87 = v39;
                    v88 = 2112;
                    v89 = v21;
                    _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_ERROR, "[AssetCreationRecovery] Unable to read data from contents of XPC dictionary with path %@: %@", buf, 0x16u);

                    v10 = v67;
                  }

                  goto LABEL_50;
                }

                v27 = [PHAssetCrashRecoveryUnarchiver alloc];
                v75 = 0;
                v28 = [(PHAssetCrashRecoveryUnarchiver *)v27 initForReadingFromData:v26 error:&v75];
                v29 = v75;
                [v28 setUserInfo:self];
                v69 = v28;
                v30 = [v28 decodeObjectOfClass:objc_opt_class() forKey:v66];
                v31 = v30;
                if (v30)
                {
                  v32 = [v30 retryCount];
                  if (v32 < 1)
                  {
                    v40 = 1;
                  }

                  else
                  {
                    v33 = v32;
                    v34 = PLBackendGetLog();
                    v35 = v34;
                    if (v33 >= 7)
                    {
                      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                      {
                        [MEMORY[0x1E69BF220] descriptionWithFileURL:v13];
                        v37 = v36 = v26;
                        *buf = 138412290;
                        v87 = v37;
                        _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_ERROR, "[AssetCreationRecovery] Skipping recovery attempt of creation request with path %@, exceeded retry count", buf, 0xCu);

                        v26 = v36;
                      }

                      v11 = v68;
LABEL_34:

                      v5 = 0x1E69BE000;
                      v10 = v67;
                      goto LABEL_50;
                    }

                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                    {
                      [MEMORY[0x1E69BF220] descriptionWithFileURL:v13];
                      v60 = v29;
                      v42 = v41 = v26;
                      *buf = 134218498;
                      v87 = v33;
                      v88 = 2048;
                      v89 = 6;
                      v90 = 2112;
                      v91 = v42;
                      _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_DEFAULT, "[AssetCreationRecovery] (%lu/%lu) Retrying recovery of creation request with path %@", buf, 0x20u);

                      v26 = v41;
                      v29 = v60;
                    }

                    v40 = [v31 retryCount] + 1;
                  }

                  v65 = v26;
                  [v31 setRetryCount:v40];
                  v74 = 0;
                  v43 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v31 requiringSecureCoding:1 error:&v74];
                  v44 = v74;
                  v62 = v44;
                  if (v43)
                  {
                    v73 = 0;
                    v45 = [v43 writeToURL:v13 options:1 error:&v73];
                    v46 = v73;
                    if ((v45 & 1) == 0)
                    {
                      v47 = PLBackendGetLog();
                      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                      {
                        v63 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v13];
                        *buf = 138412546;
                        v87 = v63;
                        v88 = 2112;
                        v89 = v46;
                        _os_log_impl(&dword_19C86F000, v47, OS_LOG_TYPE_ERROR, "[AssetCreationRecovery] Unable to write retry creation request data to path %@: %@", buf, 0x16u);
                      }
                    }
                  }

                  else
                  {
                    v48 = v44;
                    v46 = PLBackendGetLog();
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v87 = v48;
                      _os_log_impl(&dword_19C86F000, v46, OS_LOG_TYPE_ERROR, "[AssetCreationRecovery] Unable to archive retry creation request data: %@", buf, 0xCu);
                    }
                  }

                  v64 = v43;

                  [(PHAssetCrashRecoverySupport *)self _checkAndResolveExistingAssetUUIDWithCreationRequest:v31 recoveredFromFileURL:v13];
                  v49 = objc_alloc_init(PHPerformChangesRequest);
                  [(PHPerformChangesRequest *)v49 recordInsertRequest:v31];
                  v50 = PLBackendGetLog();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                  {
                    [v31 placeholderForCreatedAsset];
                    v51 = v61 = v29;
                    v52 = [v51 localIdentifier];
                    v53 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v13];
                    *buf = 138543618;
                    v87 = v52;
                    v88 = 2112;
                    v89 = v53;
                    _os_log_impl(&dword_19C86F000, v50, OS_LOG_TYPE_DEFAULT, "[AssetCreationRecovery] Attempting asset creation recovery of asset %{public}@ with path %@", buf, 0x16u);

                    v29 = v61;
                  }

                  v71[0] = MEMORY[0x1E69E9820];
                  v71[1] = 3221225472;
                  v71[2] = __56__PHAssetCrashRecoverySupport__recoverFromCrashIfNeeded__block_invoke_97;
                  v71[3] = &unk_1E75A89F8;
                  v72 = v31;
                  v54 = v31;
                  [(PHAssetCrashRecoverySupport *)self _commitRequest:v49 reply:v71];

                  v5 = 0x1E69BE000;
                  v10 = v67;
                  goto LABEL_49;
                }

                v35 = PLBackendGetLog();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_ERROR, "[AssetCreationRecovery] Unable to create PHAssetCreationRequest from XPC dictionary, skipping", buf, 2u);
                }

                goto LABEL_34;
              }

LABEL_51:
              objc_autoreleasePoolPop(v14);
            }

            v70 = [v10 countByEnumeratingWithState:&v77 objects:v92 count:16];
          }

          while (v70);
        }

        v6 = v59 + 1;
      }

      while (v59 + 1 != v58);
      v58 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
    }

    while (v58);
  }
}

uint64_t __56__PHAssetCrashRecoverySupport__recoverFromCrashIfNeeded__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [MEMORY[0x1E69BF220] descriptionWithPath:*(a1 + 32)];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_ERROR, "[AssetCreationRecovery] Unable to create enumerator at path %@: %@", &v8, 0x16u);
  }

  return 0;
}

void __56__PHAssetCrashRecoverySupport__recoverFromCrashIfNeeded__block_invoke_97(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLBackendGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) placeholderForCreatedAsset];
      v9 = [v8 localIdentifier];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, "[AssetCreationRecovery] Successfully recovered creation of asset %{public}@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "[AssetCreationRecovery] Failed to perform asset creation request with error: %@", &v10, 0xCu);
  }
}

- (void)_checkAndResolveExistingAssetUUIDWithCreationRequest:(id)a3 recoveredFromFileURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  if (v8)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__35114;
    v35 = __Block_byref_object_dispose__35115;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__35114;
    v29 = __Block_byref_object_dispose__35115;
    v30 = 0;
    v9 = [(PLLibraryServicesManager *)self->_libraryServicesManager databaseContext];
    v10 = [v9 newShortLivedLibraryWithName:"-[PHAssetCrashRecoverySupport _checkAndResolveExistingAssetUUIDWithCreationRequest:recoveredFromFileURL:]"];

    v11 = [v10 managedObjectContext];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __105__PHAssetCrashRecoverySupport__checkAndResolveExistingAssetUUIDWithCreationRequest_recoveredFromFileURL___block_invoke;
    v18[3] = &unk_1E75A89A8;
    v12 = v8;
    v19 = v12;
    v13 = v11;
    v20 = v13;
    v23 = &v25;
    v24 = &v31;
    v21 = v7;
    v14 = v6;
    v22 = v14;
    [v13 performBlockAndWait:v18];
    if (v26[5] && PFOSVariantHasInternalDiagnostics())
    {
      v15 = v26[5];
      v16 = v32[5];
      v17 = [v14 uuid];
      [(PHAssetCrashRecoverySupport *)self _triggerTapToRadarForCrashRecoveryConflictingUUID:v12 existingAssetID:v15 recoveryFileSubpath:v16 resolvedUUID:v17];
    }

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v31, 8);
  }
}

void __105__PHAssetCrashRecoverySupport__checkAndResolveExistingAssetUUIDWithCreationRequest_recoveredFromFileURL___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69BE540] assetWithUUID:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectID];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [MEMORY[0x1E69BF238] subpathWithLast:3 pathComponentsFromURL:*(a1 + 48)];
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(*(*(a1 + 72) + 8) + 40);
      v22 = 138543618;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "[AssetCreationRecovery] Found existing asset with uuid %{public}@ matching recovery job: %{public}@", &v22, 0x16u);
    }

    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v3 loggingDescription];
      v22 = 138543362;
      v23 = v14;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "[AssetCreationRecovery] Asset %{public}@", &v22, 0xCu);
    }

    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(*(a1 + 72) + 8) + 40);
      v22 = 138543362;
      v23 = v16;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "[AssetCreationRecovery] Recovery job %{public}@", &v22, 0xCu);
    }

    v17 = *(a1 + 56);
    v18 = [MEMORY[0x1E696AFB0] UUID];
    v19 = [v18 UUIDString];
    [v17 overrideAssetUUIDForCrashRecovery:v19];

    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [*(a1 + 56) uuid];
      v22 = 138543362;
      v23 = v21;
      _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "[AssetCreationRecovery] Updating uuid for recovery creation request to %{public}@", &v22, 0xCu);
    }
  }
}

- (void)_triggerTapToRadarForCrashRecoveryConflictingUUID:(id)a3 existingAssetID:(id)a4 recoveryFileSubpath:(id)a5 resolvedUUID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = PLBackendGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEFAULT, "Triggering tap to radar for existing UUID on crash recovery", buf, 2u);
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v15 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZZZZZ"];
  v16 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v15 setLocale:v16];

  v17 = [MEMORY[0x1E695DF00] date];
  v18 = [v15 stringFromDate:v17];

  v19 = [(PLLibraryServicesManager *)self->_libraryServicesManager wellKnownPhotoLibraryIdentifier];
  if (v19 == 1 || !v19 && (-[PLLibraryServicesManager pathManager](self->_libraryServicesManager, "pathManager"), v20 = v13, v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 isSystemPhotoLibraryPathManager], v21, v13 = v20, v22))
  {
    v23 = PLStringFromWellKnownPhotoLibraryIdentifier();
  }

  else
  {
    v24 = PLStringFromWellKnownPhotoLibraryIdentifier();
    v35 = v12;
    v25 = v10;
    v26 = v13;
    v27 = MEMORY[0x1E69BE690];
    v28 = [(PLLibraryServicesManager *)self->_libraryServicesManager libraryURL];
    v29 = [v27 photoLibraryIdentifierWithPhotoLibraryURL:v28 createIfMissing:0 error:0];

    v30 = [v29 uuid];
    v31 = [v29 containerIdentifier];
    [v29 domain];
    v32 = PLPhotoLibraryIdentifierEncodeArchivalStringRepresentationFromIdentifierProperties();

    v23 = [v24 stringByAppendingFormat:@" (%@)", v32];

    v13 = v26;
    v10 = v25;
    v12 = v35;
  }

  v33 = [MEMORY[0x1E696AD60] stringWithFormat:@"Library: %@\n\n", v23];
  [v33 appendFormat:@"Crash recovery date: %@\n", v18];
  [v33 appendFormat:@"Recovery data file: %@\n\n", v11];

  [v33 appendFormat:@"Recovered asset uuid (resolved): %@\n", v10];
  v34 = [v12 pl_shortURI];

  [v33 appendFormat:@"Existing asset uuid: %@ (%@)\n\n", v13, v34];
  [MEMORY[0x1E69BE3F0] fileRadarUserNotificationWithHeader:@"Photo Library Crash Recovery Issue" message:@"Your photo library has experienced an unexpected state radarTitle:please file a Radar against Photos to diagnose the issue" radarDescription:{@"TTR: Detected duplicate asset UUID during crash recovery", v33}];
}

- (BOOL)_isSafeToRecoverAfterCrashForCrashRecoveryFileURL:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a3 URLByDeletingLastPathComponent];
  v4 = [v3 URLByAppendingPathComponent:*MEMORY[0x1E69BE8F0]];
  v5 = [v4 path];

  v6 = open([v5 fileSystemRepresentation], 36);
  v7 = v6;
  if ((v6 & 0x80000000) == 0)
  {
    flock(v6, 8);
    close(v7);
LABEL_9:
    v9 = 1;
    goto LABEL_10;
  }

  v8 = *__error();
  if (v7 != -1 || v8 != 35)
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E69BF220] descriptionWithPath:v5];
      v13 = 138412546;
      v14 = v11;
      v15 = 2082;
      v16 = strerror(v8);
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "[AssetCreationRecovery] Failed to open indicator file %@: %{public}s", &v13, 0x16u);
    }

    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (BOOL)_isCrashRecoveryFilename:(id)a3
{
  v3 = a3;
  v4 = [v3 lowercaseString];
  v5 = [@"XPCDict" lowercaseString];
  if ([v4 hasPrefix:v5])
  {
    v6 = [v3 pathExtension];
    v7 = [v6 caseInsensitiveCompare:@"plist"] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PHAssetCrashRecoverySupport)initWithLibraryServicesManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHAssetCrashRecoverySupport;
  v6 = [(PHAssetCrashRecoverySupport *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryServicesManager, a3);
  }

  return v7;
}

+ (BOOL)shouldAttemptCrashRecoveryForLibraryWithPathManager:(id)a3
{
  v3 = a3;
  if ([v3 isSystemPhotoLibraryPathManager])
  {
    v4 = 1;
  }

  else
  {
    v5 = MEMORY[0x1E69BE690];
    v6 = [v3 libraryURL];
    v7 = [v5 photoLibraryIdentifierWithPhotoLibraryURL:v6 createIfMissing:0 error:0];

    if (v7)
    {
      v4 = [v7 domain] == 3;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end