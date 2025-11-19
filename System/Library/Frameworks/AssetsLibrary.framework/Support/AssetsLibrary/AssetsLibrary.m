void sub_100001930(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  type = xpc_get_type(v3);
  if (type == &_xpc_type_error)
  {
    v7 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "PLKeepDaemonAliveAssertionServer: listener connection went invalid.", v8, 2u);
    }

    goto LABEL_9;
  }

  if (type == &_xpc_type_connection)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = xpc_connection_get_pid(v3);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PLKeepDaemonAliveAssertionServer: New connection from PID: %d", v8, 8u);
    }

    [*(a1 + 32) _registerNewConnection:v3];
LABEL_9:
    objc_autoreleasePoolPop(v4);

    return;
  }

  __break(1u);
}

void sub_100001F60(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 40) = 0;
    v2 = *(a1 + 48);
    *(a1 + 48) = 0;

    if (PLIsRunningInStoreDemoMode())
    {
      v3 = PLStoreDemoModeGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Store demo mode enabled, system photo library will be modified or replaced with demo content!", buf, 2u);
      }

      v4 = +[PLDemoModeUtilities newDemoModeUtilitiesWithDefaultSystemPaths];
      v5 = *(a1 + 48);
      *(a1 + 48) = v4;

      v6 = PLStoreDemoModeGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Replacing system photo library with staged store demo content if found", v14, 2u);
      }

      v7 = [*(a1 + 48) replaceTargetPhotoLibraryWithStagedDemoLibraryIfExists];
      *(a1 + 40) = v7;
      v8 = PLStoreDemoModeGetLog();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        if (v9)
        {
          v13 = 0;
          v10 = "Installed store demo content as system photo library";
          v11 = &v13;
LABEL_12:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v10, v11, 2u);
        }
      }

      else if (v9)
      {
        v12 = 0;
        v10 = "Did not install store demo content";
        v11 = &v12;
        goto LABEL_12;
      }
    }
  }
}

void sub_1000020C0(uint64_t a1)
{
  if (a1)
  {
    +[PLLibraryServicesManager setLibraryServicesDelegateClass:](PLLibraryServicesManager, "setLibraryServicesDelegateClass:", +[PLPlatformLibraryServicesDelegate platformLibraryServicesDelegateClass]);
    v2 = [[PLAssetsdServer alloc] initWithDaemonServices:*(a1 + 8)];
    v3 = *(a1 + 16);
    *(a1 + 16) = v2;

    v6 = objc_alloc_init(PLSyndicationSpotlightReceiver);
    [*(a1 + 16) setSyndicationSpotlightReceiver:v6];
    v4 = objc_alloc_init(PLSyndicationPreferencesListener);
    [*(a1 + 16) setSyndicationPreferencesListener:v4];
    v5 = objc_alloc_init(PLSpotlightDaemonClientHandler);
    [*(a1 + 16) setSearchSpotlightReceiver:v5];
    [*(a1 + 16) start];
    +[PLLibraryRepairSupportRegistration installPeriodicMaintenanceActivity];
  }
}

void sub_1000021BC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000025F4;
    v6[3] = &unk_10002D458;
    v7 = v2;
    v3 = v2;
    v4 = sub_100002434(0x1DuLL, v6);
    v5 = *(a1 + 24);
    *(a1 + 24) = v4;

    dispatch_resume(*(a1 + 24));
  }
}

void sub_100002274(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100002434(0xFuLL, &stru_10002CC38);
    v3 = *(a1 + 32);
    *(a1 + 32) = v2;

    v4 = *(a1 + 32);

    dispatch_resume(v4);
  }
}

void sub_1000022D0(uint64_t a1)
{
  if (a1 && *(a1 + 40) == 1)
  {
    v2 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Enqueuing request to warm up installed demo content", buf, 2u);
    }

    v3 = [PLXPCTransaction transaction:"[PLPhotoLibraryDaemon warmUpDemoLibraryIfSupported]"];
    v4 = dispatch_get_global_queue(25, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000023F4;
    v6[3] = &unk_10002D9D8;
    v6[4] = a1;
    v7 = v3;
    v5 = v3;
    dispatch_async(v4, v6);
  }
}

id sub_1000023F4(uint64_t a1)
{
  [*(*(a1 + 32) + 48) warmUpDemoLibraryInstalledFromStagedTemplate];
  v2 = *(a1 + 40);

  return [v2 stillAlive];
}

NSObject *sub_100002434(uintptr_t a1, void *a2)
{
  v4 = dispatch_get_global_queue(2, 0);
  v5 = a2;
  v6 = dispatch_source_create(&_dispatch_source_type_signal, a1, 0, v4);
  dispatch_source_set_event_handler(v6, v5);

  return v6;
}

void sub_1000024BC(id a1)
{
  v1 = PLBackendGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "assetsd shutting down due to SIGTERM", v6, 2u);
  }

  pl_notify_disable_for_shutdown();
  v2 = +[PLPhotoLibraryBundleController sharedBundleController];
  v3 = PLPhotosErrorDomain;
  v7 = NSDebugDescriptionErrorKey;
  v8 = @"SIGTERM";
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [NSError errorWithDomain:v3 code:41021 userInfo:v4];
  [v2 shutdownAllBundlesWithReason:v5];

  xpc_transaction_exit_clean();
}

void sub_100002C34(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 managedObjectContext];

  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "recalculating cached counts for albums & moments...", buf, 2u);
  }

  [PLPhotoLibrary refreshCachedCountsOnAllAssetContainersInContext:v3];
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updating play/share/view counts for assets", v10, 2u);
  }

  v6 = [*(a1 + 32) photoLibrary];
  [v6 updateAssetPlayShareViewCountsInContext:v3];

  v7 = PLBackendGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updating play/share/view counts for memories", v9, 2u);
  }

  v8 = [*(a1 + 32) photoLibrary];
  [v8 updateMemoryPlayShareViewCountsInContext:v3];
}

id sub_100002D9C(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  [PLAggdLogging performLibraryStatisticsLoggingForLibrary:v2 completionHandler:&stru_10002CC58];

  v3 = *(a1 + 40);

  return [v3 stillAlive];
}

void sub_100002E08(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error while performing statistic logging: %@", &v4, 0xCu);
    }
  }
}

void sub_10000344C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 libraryBundle];
  v5 = [v4 persistentContainer];

  v6 = [NSProgress progressWithTotalUnitCount:1];
  v7 = [v3 modelMigrator];
  v8 = [v7 progress];
  [v6 addChild:v8 withPendingUnitCount:1];

  v9 = [v3 modelMigrator];
  v36 = 0;
  v10 = [v9 migrateOrCreateDatabaseIfNecessaryWithPersistentContainer:v5 migrationPolicy:7 error:&v36];
  v11 = v36;

  [*(a1 + 32) setMigrationType:v10];
  if ((v10 - 1) >= 3)
  {
    if (v10)
    {
      if (v10 == 4)
      {
        [*(a1 + 32) operationCompletionActivities];
        if (PLIsErrorEqualToCode())
        {
          v15 = PLMigrationGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Rebuild prevented by user", buf, 2u);
          }

          [v3 deactivateWithInvalidationError:v11];
          [v3 shutdownLibraryWithDescription:@"Rebuild prevented by user"];
        }

        else
        {
          [*(a1 + 32) _abortWithMigrationFailureError:v11];
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    v12 = PLMigrationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Registering background migration", buf, 2u);
    }

    v13 = [v3 pathManager];
    v14 = [v13 libraryURL];
    [PLBackgroundMigrationActivity installBackgroundMigrationActivity:v14];
  }

  v16 = [v3 pathManager];
  v17 = [v16 isDeviceRestoreSupported];

  if (v17)
  {
    v18 = [v3 modelMigrator];
    v19 = [v18 postProcessingToken];

    v20 = [v3 modelMigrator];
    v21 = [v20 deviceRestoreMigrationSupport];

    if (![v21 isRestoreFromBackup] || (objc_msgSend(v19, "isModelMigrationRestorePostProcessingComplete") & 1) != 0)
    {
LABEL_32:

      goto LABEL_33;
    }

    if (![v3 isCloudPhotoLibraryEnabled])
    {
LABEL_25:
      if ([v21 isRestoreFromBackup])
      {
        v25 = PLMigrationGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[ClearSpotlightClientState] Clearing client state global value and setting RestoreFromBackup reindex reason.", buf, 2u);
        }

        v26 = [v3 modelMigrator];
        v27 = [NSString stringWithFormat:@"%s ClearSpotlightClientState", "[PLIOSPlatformLibraryServicesDelegate commonBuiltInOperations]_block_invoke"];
        v28 = [v27 UTF8String];
        v29 = [v3 persistentStoreCoordinator];
        v30 = [v26 managedObjectContextForMigrationWithName:v28 persistentStoreCoordinator:v29 concurrencyType:1];

        v31 = [[PLGlobalValues alloc] initWithManagedObjectContext:v30];
        [v31 setSearchIndexSpotlightClientState:0];
        [v31 addRebuildRequiredExternalReasons:2048];
      }

      v32 = PLMigrationGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v21 restoreTypeDescription];
        *buf = 138543362;
        v38 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Writing model migration restore post processing complete token after restore type %{public}@", buf, 0xCu);
      }

      [v19 writeModelMigrationRestorePostProcessingCompleteToken];
      goto LABEL_32;
    }

    if ([v21 isRestoreFromBackupSourceDeviceToDevice])
    {
      v22 = PLMigrationGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = "Marking resources as purgeable after D2D restore";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
      }
    }

    else
    {
      if (![v21 isRestoreFromBackupSourceMegaBackup])
      {
        if (![v21 isRestoreFromBackupSourceiTunes])
        {
          goto LABEL_25;
        }

        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Wiping CPL directory after iTunes restore", buf, 2u);
        }

        v35 = [v3 libraryBundle];
        v24 = [v35 indicatorFileCoordinator];

        [v24 setWipeCPLOnOpen];
        goto LABEL_24;
      }

      v22 = PLMigrationGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = "Marking resources as purgeable after Mega-backup restore";
        goto LABEL_22;
      }
    }

    v24 = [v3 cplSettings];
    [v24 setRunOnceFlag:8 error:0];
    [v24 setRunOnceFlag:4 error:0];
LABEL_24:

    goto LABEL_25;
  }

LABEL_33:
}

void sub_1000039E4(id a1, PLLibraryServicesManager *a2)
{
  v2 = [(PLLibraryServicesManager *)a2 cacheDeleteSupport];
}

void sub_100003A14(id a1, PLLibraryServicesManager *a2)
{
  v2 = a2;
  v4 = [(PLLibraryServicesManager *)v2 backgroundJobService];
  v3 = [(PLLibraryServicesManager *)v2 libraryBundle];

  [v4 performCrashRecoveryIfNeededOnBundle:v3];
}

void sub_100003A84(id a1, PLLibraryServicesManager *a2)
{
  v2 = a2;
  v3 = [[PHAssetCrashRecoverySupport alloc] initWithLibraryServicesManager:v2];

  [v3 recoverFromCrashIfNeeded];
}

void sub_100003AEC(id a1, PLLibraryServicesManager *a2)
{
  v2 = a2;
  v3 = [[PLDuplicateMergeCrashRecovery alloc] initWithLibraryServicesManager:v2];

  [v3 performCrashRecoveryIfNeeded];
}

void sub_100003B54(id a1, PLLibraryServicesManager *a2)
{
  v6 = a2;
  if (([(PLLibraryServicesManager *)v6 isSystemPhotoLibrary]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v3 = [(PLLibraryServicesManager *)v6 pathManager];
    v4 = [v3 cplInitialSyncMarkerFileExists];

    if (v4)
    {
      v2 = 3;
    }

    else
    {
      v2 = 2;
    }
  }

  v5 = [(PLLibraryServicesManager *)v6 pathManager];
  [v5 setBackupExclusionAttributesForWellKnownLibrariesOrWithCreateOptions:-[PLLibraryServicesManager createOptions](v6 andBackupType:{"createOptions"), v2}];
}

void sub_100003BF8(id a1, PLLibraryServicesManager *a2)
{
  v2 = [(PLLibraryServicesManager *)a2 cloudPhotoLibraryManager];
}

void sub_10000438C(uint64_t a1, void *a2)
{
  v3 = [a2 modelMigrator];
  v4 = [v3 deviceRestoreMigrationSupport];

  if ([v4 prepareDatabaseForOTARestoreIfNecessaryWithMigrationType:{objc_msgSend(*(a1 + 32), "migrationType")}])
  {
    v5 = PLMigrationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Configuring state machine to skip file system import operation after preparing for OTA restore", v6, 2u);
    }

    [*(a1 + 32) setShouldSkipFileSystemImportOperation:1];
  }
}

void sub_100004448(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) migrationType];
  v5 = [v3 modelMigrator];
  v6 = [v5 deviceRestoreMigrationSupport];
  v7 = [v6 isRestoreFromBackupSourceDeviceToDevice];

  if (v4 == 1 || v7 != 0)
  {
    v9 = [v3 libraryURL];
    v10 = [PLPhotoSharingHelper sharedStreamsEnabledForPhotoLibraryURL:v9];

    if (v10)
    {
      v11 = PLMigrationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67109376;
        v12[1] = v4 == 1;
        v13 = 1024;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Initial sync of shared albums after rebuild: %d D2D: %d", v12, 0xEu);
      }

      [PLPhotoSharingHelper pollForAlbumListUpdatesWithRefreshResetSync:1];
    }
  }
}

void sub_10000459C(id a1, PLLibraryServicesManager *a2)
{
  v2 = [(PLLibraryServicesManager *)a2 backgroundAssetResourceUploader];
  if (v2)
  {
    [PLXPCTransaction transaction:"[PLIOSPlatformLibraryServicesDelegate systemLibraryBuiltInOperations]_block_invoke"];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100004658;
    v5 = v4[3] = &unk_10002D458;
    v3 = v5;
    [v2 verifyJobConsistencyWithCompletionHandler:v4];
  }
}

void sub_100004660(id a1, PLLibraryServicesManager *a2)
{
  v2 = a2;
  objc_initWeak(&location, v2);
  v3 = [PLXPCTransaction transaction:"[PLIOSPlatformLibraryServicesDelegate systemLibraryBuiltInOperations]_block_invoke_2"];
  v4 = +[PLConcurrencyLimiter sharedLimiter];
  v5 = [v4 sharedBackgroundQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004788;
  block[3] = &unk_10002CCE0;
  objc_copyWeak(&v9, &location);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_100004788(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained quickActionManager];
    [v4 buildQuickActionItemsInvalidateMostRecentPhoto:0];
  }

  else
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "LSM is nil, unable to buildQuickActionItems", v5, 2u);
    }
  }

  [*(a1 + 32) stillAlive];
}

void sub_100004834(id a1, PLLibraryServicesManager *a2)
{
  v2 = a2;
  v4 = [(PLLibraryServicesManager *)v2 crashRecoverySupport];
  v3 = [(PLLibraryServicesManager *)v2 imageWriter];

  [v4 recoverFromCrashIfNeededWithImageWriter:v3];
}

void sub_1000048A4(id a1, PLLibraryServicesManager *a2)
{
  v7 = a2;
  v2 = [(PLLibraryServicesManager *)v7 modelMigrator];
  v3 = [v2 deviceRestoreMigrationSupport];
  v4 = [v3 hasCompletedDataMigratorPrerequisitesForTrackingRestoreFromCloud];

  if ((v4 & 1) == 0)
  {
    v5 = [(PLLibraryServicesManager *)v7 modelMigrator];
    v6 = [v5 deviceRestoreMigrationSupport];
    [v6 waitForDataMigratorPrerequisitesForTrackingRestoreFromCloud];
  }
}

void sub_100004A70(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  v6 = 0;
  v3 = [PLProjectAlbum cleanupOrphanedProjectPreviewImagesInLibrary:v2 error:&v6];
  v4 = v6;

  if ((v3 & 1) == 0)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error cleaning up orphaned project preview images: %@", buf, 0xCu);
    }
  }

  [*(a1 + 40) stillAlive];
}

uint64_t start()
{
  _set_user_dir_suffix();
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(PLPhotoLibraryDaemon);
  v3 = [(PLPhotoLibraryDaemon *)v2 setup];
  objc_autoreleasePoolPop(v1);
  if (!v3)
  {
    [(PLPhotoLibraryDaemon *)v2 run];
    v3 = 1;
  }

  objc_autoreleasePoolPop(v0);
  return v3;
}

id sub_100004F24(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 managedObjectContext];
  [PLMomentShare deleteExpiredSharesInManagedObjectContext:v3];

  v4 = [*(a1 + 32) photoLibrary];
  v5 = [PLLibraryScope fireParticipantAssetTrashNotificationIfNeededWithPhotoLibrary:v4 forceNotification:0];

  v6 = [*(a1 + 32) photoLibrary];
  v7 = [v6 managedObjectContext];
  [PLManagedAsset deleteOldPlaceholderAssetsInManagedObjectContext:v7];

  v8 = *(a1 + 40);

  return [v8 stillAlive];
}

void sub_1000051C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000051E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained libraryServicesManager];
    v4 = [v3 databaseContext];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 newShortLivedLibraryWithName:{objc_msgSend(v6, "UTF8String")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10000686C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006884(uint64_t a1, Class aClass, uint64_t a3, _BYTE *a4)
{
  v7 = NSStringFromClass(aClass);
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _shouldDeferTaskIfRequiredForClassName:v7];
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    v8 = [aClass alloc];
    v9 = [*(a1 + 32) bundle];
    v10 = [v8 initWithLibraryBundle:v9];

    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      v21 = aClass;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting critical maintenance task %{public}@", &v20, 0xCu);
    }

    v12 = +[PLTimedPerfCheck start];
    v13 = [v10 runTaskWithTransaction:*(*(a1 + 32) + 16)];
    v14 = [v12 perfCheckLogStringWithPerfCheckInfo:0];
    v15 = PLBackendGetLog();
    v16 = v15;
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543618;
        v21 = aClass;
        v22 = 2114;
        v23 = v14;
        v17 = "Completed maintenance task %{public}@%{public}@";
        v18 = v16;
        v19 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v18, v19, v17, &v20, 0x16u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 138543618;
      v21 = aClass;
      v22 = 2114;
      v23 = v14;
      v17 = "Failed maintenance task %{public}@%{public}@";
      v18 = v16;
      v19 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  *a4 = 1;
LABEL_12:
}

id sub_100006CEC(uint64_t a1, Class aClass)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromClass(aClass);
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void sub_1000073CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 libraryBundle];
  v5 = [v4 persistentContainer];

  v6 = [*(a1 + 32) libraryServicesManager];
  v7 = [v6 modelMigrator];
  v18 = 0;
  v8 = [v7 migrateOrCreateDatabaseIfNecessaryWithPersistentContainer:v5 migrationPolicy:7 error:&v18];
  v9 = v18;

  [*(a1 + 32) setMigrationType:v8];
  if ((v8 - 1) < 3)
  {
    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Registering background migration", buf, 2u);
    }

    v11 = [v3 pathManager];
    v12 = [v11 libraryURL];
    [PLBackgroundMigrationActivity installBackgroundMigrationActivity:v12];

LABEL_12:
    goto LABEL_13;
  }

  if (v8 == 4)
  {
    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Database migration failed: %@", buf, 0xCu);
    }

    v14 = [v9 userInfo];
    v15 = [v14 objectForKeyedSubscript:NSDebugDescriptionErrorKey];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v9;
    }

    v11 = [NSString stringWithFormat:@"Cannot create persistent store: %@", v17];

    [v11 UTF8String];
    PLAbortWithReason();
    goto LABEL_12;
  }

LABEL_13:
}

void sub_100007610(id a1, PLLibraryServicesManager *a2)
{
  v2 = [(PLLibraryServicesManager *)a2 cloudPhotoLibraryManager];
}

void sub_100007850(uint64_t a1)
{
  v2 = [*(a1 + 32) capabilities];
  v3 = [v2 isCentralizedCacheDeleteCapable];

  if (v3)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "verifying and fixing local availability for resources with broken fileIDs", buf, 2u);
    }

    v6 = 0;
    *buf = 0;
    v5 = 0;
    [PLCacheDeleteSupport verifyAndFixLocalAvailabilityForMissingResourcesUsingFileIDInManagedObjectContext:*(a1 + 40) countPresent:buf countMissing:&v6 countUnableToVerify:&v5 error:0];
  }
}

BOOL sub_100008070(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = PLBackendGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Failed to identify url: %@, error: %@", &v8, 0x16u);
  }

  return 1;
}

uint64_t sub_100008718(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 managedObjectContext];

    if (v5)
    {
      v6 = [v4 managedObjectContext];
      v7 = [v6 persistentStoreCoordinator];

      if (v7)
      {
        v8 = 1;
        goto LABEL_17;
      }

      v14 = PLImageManagerGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "resource availability service failure: nil persistent store coordinator", v18, 2u);
      }

      v10 = PLPhotosErrorDomain;
      v19 = NSDebugDescriptionErrorKey;
      v20 = @"resource availability service failure: nil persistent store coordinator";
      v11 = &v20;
      v12 = &v19;
    }

    else
    {
      v13 = PLImageManagerGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "resource availability service failure: nil moc", v18, 2u);
      }

      v10 = PLPhotosErrorDomain;
      v21 = NSDebugDescriptionErrorKey;
      v22 = @"resource availability service failure: nil moc";
      v11 = &v22;
      v12 = &v21;
    }
  }

  else
  {
    v9 = PLImageManagerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "resource availability service failure: nil photo library", v18, 2u);
    }

    v10 = PLPhotosErrorDomain;
    v23 = NSDebugDescriptionErrorKey;
    v24 = @"resource availability service failure: nil photo library";
    v11 = &v24;
    v12 = &v23;
  }

  v15 = [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:1];
  v16 = [NSError errorWithDomain:v10 code:46502 userInfo:v15];
  if (a2)
  {
    v16 = v16;
    *a2 = v16;
  }

  v8 = 0;
LABEL_17:

  return v8;
}

void sub_1000089A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = PLSanitizedErrorForXPC();
  (*(v3 + 16))(v3, a2, v4);
}

void sub_100008BC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = PLSanitizedErrorForXPC();
  (*(v3 + 16))(v3, a2, v4);
}

void sub_100008E08(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a3;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = +[NSDate date];
  [v18 timeIntervalSinceDate:a1[4]];
  v20 = v19;

  v21 = PLImageManagerGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a1[5];
    v23 = @"N";
    v26 = 138544386;
    if (a2)
    {
      v23 = @"Y";
    }

    v27 = v22;
    v28 = 2114;
    v29 = v23;
    v30 = 2112;
    v31 = v13;
    v32 = 2048;
    v33 = v20;
    v34 = 2114;
    v35 = v14;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ video request replying to client with success: %{public}@, url: %@, duration: %.3fs, error: %{public}@", &v26, 0x34u);
  }

  v24 = a1[6];
  v25 = PLSanitizedErrorForXPC();
  (*(v24 + 16))(v24, a2, v13, v17, v16, v15, v25);
}

void sub_100009294(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = +[NSDate date];
  [v15 timeIntervalSinceDate:*(a1 + 32)];
  v17 = v16;

  v18 = PLImageManagerGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"N";
    if (a2)
    {
      v19 = @"Y";
    }

    v29 = v19;
    v20 = v14;
    v21 = v13;
    v22 = v12;
    v23 = *(a1 + 40);
    v30 = [*(a1 + 48) assetObjectIDURL];
    PLShortObjectIDFromURL();
    v24 = v31 = a2;
    v25 = [*(a1 + 48) resourceIdentity];
    v26 = PLResourceIdentityShortDescription();
    *buf = 138544642;
    v33 = v23;
    v12 = v22;
    v13 = v21;
    v14 = v20;
    v34 = 2114;
    v35 = v29;
    v36 = 2048;
    v37 = v17;
    v38 = 2114;
    v39 = v11;
    v40 = 2114;
    v41 = v24;
    v42 = 2114;
    v43 = v26;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ resource availability request replying to client with success: %{public}@, duration: %.3fs, error: %{public}@, asset: %{public}@, resource: %{public}@", buf, 0x3Eu);

    a2 = v31;
  }

  v27 = *(a1 + 56);
  v28 = PLSanitizedErrorForXPC();
  (*(v27 + 16))(v27, a2, v14, v13, v12, v28);
}

void sub_100009804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000981C(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v9 = 0;
  v3 = [PLPerson fetchDuplicatePersonUUIDsInManagedObjectContext:v2 error:&v9];
  v4 = v9;

  if (v3)
  {
    if ([v3 count])
    {
      v5 = PLBackendGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [v3 count];
        *buf = 134218242;
        v11 = v6;
        v12 = 2114;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Duplicate personUUID maintenance: Found %tu duplicates: %{public}@", buf, 0x16u);
      }

      v7 = [*(a1 + 32) pathManager];
      [v7 setSqliteErrorForRebuildReason:19 allowsExit:1];
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Duplicate personUUID maintenance: failed to detect duplicate personUUIDs: %@", buf, 0xCu);
    }
  }
}

void sub_100009D74(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) identifier];
  v3 = v2;
  v4 = *(a1 + 40);
  if (!v4)
  {
    v4 = @"generic";
  }

  v5 = [NSString stringWithFormat:@"%@.%@", v2, v4];

  v6 = [BGSystemTaskProgressMetrics alloc];
  v7 = [NSNumber numberWithUnsignedInt:qos_class_self()];
  v8 = [NSNumber numberWithLongLong:*(a1 + 56)];
  v9 = [NSNumber numberWithLongLong:*(a1 + 64)];
  v10 = [v6 initWithIdentifier:v5 qos:v7 workloadCategory:10 expectedMetricValue:0 itemsCompleted:v8 totalItemCount:v9];

  v11 = +[BGSystemTaskScheduler sharedScheduler];
  v21 = 0;
  LODWORD(v9) = [v11 reportProgressMetrics:v10 error:&v21];
  v12 = v21;

  v13 = PLBackendGetLog();
  v14 = v13;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      *buf = 138412802;
      v23 = v5;
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v17 = "'%@' completed progress: %lld/%lld";
      v18 = v14;
      v19 = OS_LOG_TYPE_DEBUG;
      v20 = 32;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v20);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v23 = v5;
    v24 = 2112;
    v25 = v12;
    v17 = "'%@': '%@', can't report progress metrics";
    v18 = v14;
    v19 = OS_LOG_TYPE_ERROR;
    v20 = 22;
    goto LABEL_8;
  }

  [*(a1 + 48) stillAlive];
}

uint64_t sub_10000A410(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldDefer];
  if (v2)
  {
    v3 = PLMigrationGetLog();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);

    if (v4)
    {
      if (*(a1 + 40))
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        *buf = 0u;
        v12 = 0u;
        v5 = PLMigrationGetLog();
        os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
        v10[0] = 0;
        LODWORD(v9) = 2;
        v6 = _os_log_send_and_compose_impl();

        [*(a1 + 40) logWithMessage:v6 fromCodeLocation:"PLBackgroundMigrationActivity.m" type:{48, 1, v10, v9}];
        if (v6 != buf)
        {
          free(v6);
        }
      }

      else
      {
        v7 = PLMigrationGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Defer processing background migration", buf, 2u);
        }
      }
    }
  }

  return v2 ^ 1;
}

void sub_10000AA14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v19 = 0;
  v5 = [PLLibraryRepairSupportRegistration checkLibraryIsReadyForProcessing:v4 libraryBundle:&v19];
  v6 = v19;
  if (v5 <= 6)
  {
    if (((1 << v5) & 0x37) != 0)
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Library not ready for background migration. Identifier: %@", buf, 0xCu);
      }

      [v3 setTaskCompleted];
      v9 = +[BGSystemTaskScheduler sharedScheduler];
      [(PLBackgroundMigrationActivity *)v9 deregisterTaskWithIdentifier:*(a1 + 48)];
    }

    else if (v5 == 3)
    {
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 48);
        *buf = 138412290;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Library not ready for background migration - rebuild in progress. Identifier: %@", buf, 0xCu);
      }

      v16 = 0;
      v12 = [v3 setTaskExpiredWithRetryAfter:&v16 error:0.0];
      v9 = v16;
      if ((v12 & 1) == 0)
      {
        v13 = PLBackendGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to expire background migration task. Error: %@", buf, 0xCu);
        }

        [v3 setTaskCompleted];
        v14 = +[BGSystemTaskScheduler sharedScheduler];
        [v14 deregisterTaskWithIdentifier:*(a1 + 48)];

        [*(a1 + 56) installBackgroundMigrationActivity:*(a1 + 32)];
      }
    }

    else
    {
      v15 = [[PLBackgroundMigrationActivity alloc] initWithLibraryBundle:v6 task:v3 description:*(a1 + 40)];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000ACE0;
      v17[3] = &unk_10002D458;
      v18 = v15;
      v9 = v15;
      [v3 setExpirationHandler:v17];
      [(PLBackgroundMigrationActivity *)v9 _runBackgroundMigrationActions];
    }
  }
}

void sub_10000B374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B3B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B3CC(uint64_t a1)
{
  v5 = [*(a1 + 32) libraryServicesManager];
  v2 = [v5 cloudPhotoLibraryManager];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

Class sub_10000B684(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100034C00)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_10000B870;
    v6[4] = &unk_10002D7E8;
    v6[5] = v6;
    v7 = off_10002D038;
    v8 = 0;
    qword_100034C00 = _sl_dlopen();
  }

  if (!qword_100034C00)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *MobileBackupLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLCPLManagerMaintenanceTask.m" lineNumber:28 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MBManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getMBManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLCPLManagerMaintenanceTask.m" lineNumber:29 description:{@"Unable to find class %s", "MBManager"}];

LABEL_10:
    __break(1u);
  }

  qword_100034BF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000B870(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100034C00 = result;
  return result;
}

void sub_10000BDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000BE18(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[7] + 8);
  obj = *(v3 + 40);
  v4 = [v2 processObjectsWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[6] + 8) + 24) = v4;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v5 = a1[5];
    if (v5)
    {
      v6 = *(a1[7] + 8);
      v8 = *(v6 + 40);
      v7 = [v5 processObjectsWithError:&v8];
      objc_storeStrong((v6 + 40), v8);
      *(*(a1[6] + 8) + 24) = v7;
    }
  }
}

void sub_10000C6D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _signalBackgroundProcessingNeededForSyndication];
}

void sub_10000D0F4(id a1, PLResult *a2)
{
  v2 = a2;
  v3 = PLSearchBackendDonationsGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SpotlightDaemonClient: Auto bug capture completed with result: %@", &v4, 0xCu);
  }
}

void sub_10000D69C(id a1, PLResult *a2)
{
  v2 = a2;
  v3 = PLSearchBackendDonationsGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SpotlightDaemonClient: Auto bug capture completed with result: %@", &v4, 0xCu);
  }
}

void sub_10000DE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DE3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000DE54(uint64_t a1)
{
  v2 = [PLFetchingAlbum predicateForAlbumKind:1613];
  v3 = +[PLManagedAsset entityName];
  v4 = [NSFetchRequest fetchRequestWithEntityName:v3];

  [v4 setPredicate:v2];
  v5 = [*(a1 + 32) photoLibrary];
  v6 = [v5 managedObjectContext];
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v8 = [v6 countForFetchRequest:v4 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v8;
}

void sub_10000E120(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_10000E240;
  v6[4] = sub_10000E250;
  v7 = 0;
  v4 = [v3 databaseContext];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000E258;
  v5[3] = &unk_10002D2E8;
  v5[4] = v6;
  [v4 performTransactionSync:v5 withName:"+[PLLibraryRepairSupportRegistration _enqueueSocialGroupAssetContainmentOperationWithLSM:library:serverTransaction:]_block_invoke"];

  [*(a1 + 32) completeTransactionScope:PLTransactionScopeSocialGroupAssetContainment];
  _Block_object_dispose(v6, 8);
}

void sub_10000E228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E240(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000E258(uint64_t a1, void *a2)
{
  v3 = [a2 managedObjectContext];
  v4 = *(*(a1 + 32) + 8);
  obj = *(v4 + 40);
  v5 = [PLSocialGroup runAssetContainmentOnAllSocialGroupsInContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  if ((v5 & 1) == 0)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error running asset containment for all groups in the library: %@", buf, 0xCu);
    }
  }
}

void sub_10000E48C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) pathManager];
  v10 = 0;
  LOBYTE(v4) = [PLBackgroundModelMigration resetBackgroundActionClass:v4 pathManager:v5 error:&v10];
  v6 = v10;

  if ((v4 & 1) == 0)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error resetting PLModelMigrationAction_DrawAssetPersonEdges: %@", buf, 0xCu);
    }
  }

  v8 = [v3 pathManager];
  v9 = [v8 libraryURL];
  [PLBackgroundMigrationActivity installBackgroundMigrationActivity:v9];

  [*(a1 + 40) completeTransactionScope:PLTransactionScopeSocialGroupAssetPersonEdges];
}

id sub_10000E6F8(uint64_t a1, void *a2)
{
  v3 = [a2 databaseContext];
  [v3 performTransactionSync:&stru_10002D2C0 withName:"+[PLLibraryRepairSupportRegistration _enqueueSocialGroupDeduplicationOperationWithLSM:library:serverTransaction:]_block_invoke"];

  v4 = *(a1 + 32);
  v5 = PLTransactionScopeSocialGroupDeduplication;

  return [v4 completeTransactionScope:v5];
}

void sub_10000E760(id a1, PLPhotoLibrary *a2)
{
  v2 = [(PLPhotoLibrary *)a2 managedObjectContext];
  v6 = 0;
  v3 = [PLSocialGroup deleteDuplicateGraphAndUnverifiedGroupsInContext:v2 error:&v6];
  v4 = v6;

  if ((v3 & 1) == 0)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error deduplicating social groups in library: %@", buf, 0xCu);
    }
  }
}

void sub_10000E9BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PLClientServerTransaction beginClientTransactionWithChangeScopes:pathManager:identifier:](PLClientServerTransaction, "beginClientTransactionWithChangeScopes:pathManager:identifier:", v3, *(a1 + 32), "+[PLLibraryRepairSupportRegistration enqueueOutstandingTransactionCrashRecoveryOperationsIfNecessary:]_block_invoke");
  v5 = [v4 transactionToken];
  v6 = +[PLClientServerTransaction beginServerTransactionWithToken:changeScopes:pathManager:identifier:](PLClientServerTransaction, "beginServerTransactionWithToken:changeScopes:pathManager:identifier:", v5, v3, *(a1 + 32), "+[PLLibraryRepairSupportRegistration enqueueOutstandingTransactionCrashRecoveryOperationsIfNecessary:]_block_invoke");

  [v4 completeTransaction];
  v7 = PLTransactionScopeMomentGeneration;
  if ([v3 containsObject:PLTransactionScopeMomentGeneration])
  {
    if (PLPlatformMomentsSupported())
    {
      v8 = PLLibraryServicesOperationNameCrashRecoveryRebuildMoments;
      v9 = *(a1 + 40);
      v10 = [v9 preRunningProgress];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_10000F0F0;
      v49[3] = &unk_10002D828;
      v50 = v6;
      v11 = [PLLibraryServicesOperation operationWithName:v8 libraryServicesManager:v9 requiredState:6 parentProgress:v10 executionBlock:v49];

      [*(a1 + 40) enqueueOperation:v11 error:0];
      v12 = v50;
    }

    else
    {
      [v6 completeTransactionScope:v7];
      v12 = PLMomentsGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Ignoring requested moment rebuild because of outstanding transactions", buf, 2u);
      }
    }
  }

  if (([v3 containsObject:PLTransactionScopeAlbumCounts] & 1) != 0 || objc_msgSend(v3, "containsObject:", PLTransactionScopeImportSessionCounts))
  {
    v13 = PLLibraryServicesOperationNameCrashRecoveryRecalculateAlbumCounts;
    v14 = *(a1 + 40);
    v15 = [v14 postRunningProgress];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10000F268;
    v45[3] = &unk_10002D230;
    v46 = v3;
    v47 = v6;
    v16 = [PLLibraryServicesOperation operationWithName:v13 libraryServicesManager:v14 requiredState:7 parentProgress:v15 executionBlock:v45];

    [*(a1 + 40) enqueueOperation:v16 error:0];
  }

  if ([v3 containsObject:PLTransactionScopeAlbumTrashCycle])
  {
    v17 = PLLibraryServicesOperationNameCrashRecoveryProcessAssetAlbumAssociativity;
    v18 = *(a1 + 40);
    v19 = [v18 postRunningProgress];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10000F37C;
    v43[3] = &unk_10002D828;
    v44 = v6;
    v20 = [PLLibraryServicesOperation operationWithName:v17 libraryServicesManager:v18 requiredState:7 parentProgress:v19 executionBlock:v43];

    [*(a1 + 40) enqueueOperation:v20 error:0];
  }

  v21 = PLTransactionScopeCloudFeed;
  if ([v3 containsObject:PLTransactionScopeCloudFeed])
  {
    if (PLPlatformCloudFeedSupported())
    {
      v22 = PLLibraryServicesOperationNameCrashRecoveryRebuildCloudFeed;
      v23 = *(a1 + 40);
      v24 = [v23 postRunningProgress];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10000F47C;
      v41[3] = &unk_10002D828;
      v42 = v6;
      v25 = [PLLibraryServicesOperation operationWithName:v22 libraryServicesManager:v23 requiredState:7 parentProgress:v24 executionBlock:v41];

      [*(a1 + 40) enqueueOperation:v25 error:0];
      v26 = v42;
    }

    else
    {
      [v6 completeTransactionScope:v21];
      v26 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Ignoring requested cloud feed rebuild because of outstanding transactions", buf, 2u);
      }
    }
  }

  if ([v3 containsObject:PLTransactionScopeFileIngestion])
  {
    if (*(a1 + 64) == 1)
    {
      v27 = PLMigrationGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Not Forcing redundant import because of outstanding transactions due to outstanding File System Import", buf, 2u);
      }
    }

    else
    {
      v28 = PLLibraryServicesOperationNameCrashRecoveryImportFromFileSystem;
      v29 = *(a1 + 40);
      v30 = [v29 postRunningProgress];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10000F5C4;
      v39[3] = &unk_10002D828;
      v40 = v6;
      v31 = [PLLibraryServicesOperation operationWithName:v28 libraryServicesManager:v29 requiredState:7 parentProgress:v30 executionBlock:v39];

      [*(a1 + 40) enqueueOperation:v31 error:0];
      v27 = v40;
    }
  }

  if ([v3 containsObject:PLTransactionScopePlaceholderDownload])
  {
    v32 = PLLibraryServicesOperationNameCrashRecoveryRestartPendingPlaceholderAssets;
    v33 = *(a1 + 40);
    v34 = [v33 postRunningProgress];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000F7CC;
    v36[3] = &unk_10002D230;
    v37 = *(a1 + 48);
    v38 = v6;
    v35 = [PLLibraryServicesOperation operationWithName:v32 libraryServicesManager:v33 requiredState:7 parentProgress:v34 executionBlock:v36];

    [*(a1 + 40) enqueueOperation:v35 error:0];
  }

  if ([v3 containsObject:PLTransactionScopeSocialGroupDeduplication])
  {
    [*(a1 + 56) _enqueueSocialGroupDeduplicationOperationWithLSM:*(a1 + 40) library:*(a1 + 48) serverTransaction:v6];
  }

  if ([v3 containsObject:PLTransactionScopeSocialGroupAssetPersonEdges])
  {
    [*(a1 + 56) _enqueueDrawAssetPersonEdgesOperationWithLSM:*(a1 + 40) library:*(a1 + 48) serverTransaction:v6];
  }

  if ([v3 containsObject:PLTransactionScopeSocialGroupAssetContainment])
  {
    [*(a1 + 56) _enqueueSocialGroupAssetContainmentOperationWithLSM:*(a1 + 40) library:*(a1 + 48) serverTransaction:v6];
  }
}

void sub_10000F0F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLMomentsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Forcing moment rebuild because of outstanding transactions", buf, 2u);
  }

  v5 = [v3 momentGenerationDataManager];
  v6 = [v5 generator];

  v7 = [v3 modelMigrator];

  v8 = [v7 analyticsEventManager];

  [v8 startRecordingTimedEventToken];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FA54;
  block[3] = &unk_10002D1E0;
  v13 = v8;
  v15 = v9;
  v14 = *(a1 + 32);
  v10 = v8;
  v11 = dispatch_block_create(0, block);
  [v6 rebuildAllMomentsWithOptions:&__NSDictionary0__struct completionHandler:v11];
  dispatch_block_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_10000F268(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Forcing (album, moment and/or importSession) count and keyAsset recalculation because of outstanding transactions", buf, 2u);
  }

  v5 = [v3 databaseContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F994;
  v6[3] = &unk_10002D208;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v5 performTransactionSync:v6 withName:"+[PLLibraryRepairSupportRegistration enqueueOutstandingTransactionCrashRecoveryOperationsIfNecessary:]_block_invoke_2"];
}

void sub_10000F37C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Update asset album associativity because of outstanding transactions", buf, 2u);
  }

  v5 = [v3 databaseContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F944;
  v6[3] = &unk_10002D258;
  v7 = *(a1 + 32);
  [v5 performTransactionSync:v6 withName:"+[PLLibraryRepairSupportRegistration enqueueOutstandingTransactionCrashRecoveryOperationsIfNecessary:]_block_invoke_2"];
}

void sub_10000F47C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Forcing cloud feed rebuild because of outstanding transactions", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F930;
  block[3] = &unk_10002D458;
  v10 = *(a1 + 32);
  v5 = dispatch_block_create(0, block);
  v6 = [v3 databaseContext];

  v7 = [v6 newShortLivedLibraryWithName:"+[PLLibraryRepairSupportRegistration enqueueOutstandingTransactionCrashRecoveryOperationsIfNecessary:]_block_invoke_2"];
  v8 = [[PLCloudFeedEntriesManager alloc] initWithPhotoLibrary:v7];
  [v8 rebuildAllEntries:v5];
  dispatch_block_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_10000F5C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLMigrationGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Forcing redundant import because of outstanding transactions", buf, 2u);
  }

  v5 = [v3 databaseContext];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s --> forceImportFileSystemDataIntoDatabaseWithPhotoLibrary", "+[PLLibraryRepairSupportRegistration enqueueOutstandingTransactionCrashRecoveryOperationsIfNecessary:]_block_invoke");
  v7 = [v5 newShortLivedLibraryWithName:{objc_msgSend(v6, "UTF8String")}];

  v8 = [v7 globalValues];
  [v8 setImportFilesystemAssetsState:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F85C;
  block[3] = &unk_10002D458;
  v17 = *(a1 + 32);
  v9 = dispatch_block_create(0, block);
  v10 = [v3 modelMigrator];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F870;
  v13[3] = &unk_10002D748;
  v14 = v3;
  v15 = v9;
  v11 = v9;
  v12 = v3;
  [v10 loadFileSystemDataIntoDatabaseIfNeededWithReason:@"outstanding PLTransactionScopeFileIngestion transaction" completionHandler:v13];

  dispatch_block_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
}

id sub_10000F7CC(uint64_t a1)
{
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Forcing restart of all pending placeholder assets", v4, 2u);
  }

  [PHAssetCreationRequestPlaceholderSupportCrashRecovery restartPendingPlaceholderDownloadsForLibrary:*(a1 + 32)];
  return [*(a1 + 40) completeTransactionScope:PLTransactionScopePlaceholderDownload];
}

uint64_t sub_10000F870(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = PLMigrationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering background migration after rebuild", v7, 2u);
    }

    v4 = [*(a1 + 32) pathManager];
    v5 = [v4 libraryURL];
    [PLBackgroundMigrationActivity installBackgroundMigrationActivity:v5];
  }

  return (*(*(a1 + 40) + 16))();
}

id sub_10000F944(uint64_t a1, uint64_t a2)
{
  [PLManagedAsset updateAllAlbumAssociationIfNeededWithLibrary:a2];
  v3 = *(a1 + 32);
  v4 = PLTransactionScopeAlbumTrashCycle;

  return [v3 completeTransactionScope:v4];
}

void sub_10000F994(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 managedObjectContext];
  [PLPhotoLibrary refreshCachedCountsOnAllAssetContainersInContext:?];
  [v3 updateKeyAssetsInAlbums:0];

  v4 = PLTransactionScopeAlbumCounts;
  if ([*(a1 + 32) containsObject:PLTransactionScopeAlbumCounts])
  {
    [*(a1 + 40) completeTransactionScope:v4];
  }

  v5 = PLTransactionScopeImportSessionCounts;
  if ([*(a1 + 32) containsObject:PLTransactionScopeImportSessionCounts])
  {
    [*(a1 + 40) completeTransactionScope:v5];
  }
}

id sub_10000FA54(uint64_t a1)
{
  [*(a1 + 32) stopRecordingTimedEventWithToken:PLCoreAnalyticsLibraryMigrateEventMomentRebuildTimeKey forKey:PLCoreAnalyticsLibraryMigrateEvent onEventWithName:*(a1 + 48)];
  v2 = *(a1 + 40);
  v3 = PLTransactionScopeMomentGeneration;

  return [v2 completeTransactionScope:v3];
}

void sub_100010538(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 48) _shouldSuppressPeriodicMaintenanceTasks])
  {
    [v3 setTaskCompleted];
  }

  else
  {
    v4 = [[PLLibraryRepairSupport alloc] initWithTask:v3 description:*(a1 + 32)];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100010684;
    v12[3] = &unk_10002D458;
    v13 = v4;
    v5 = v4;
    [v3 setExpirationHandler:v12];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100010690;
    v8[3] = &unk_10002D130;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10 = v6;
    v11 = v7;
    v9 = v3;
    [(PLLibraryRepairSupport *)v5 runPeriodicMaintenanceActivityOnAllLibrariesWithExecutionBlock:v8];
  }
}

void sub_100010690(uint64_t a1, void *a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = a2;
  v6 = dispatch_queue_create("com.apple.photos.periodicmaintenance.progressreport", v4);

  v7 = +[PLXPCTransaction transaction:](PLXPCTransaction, "transaction:", "+[PLLibraryRepairSupportRegistration registerTaskHandler:description:executionWithProgressBlock:]_block_invoke_3");
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000107CC;
  v13[3] = &unk_10002D108;
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v14 = v6;
  v17 = v8;
  v15 = *(a1 + 32);
  v16 = v7;
  v10 = *(v9 + 16);
  v11 = v7;
  v12 = v6;
  v10(v9, v5, v13);
}

void sub_1000107CC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000108EC;
  block[3] = &unk_10002D0E0;
  v22 = *(a1 + 56);
  v12 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = v11;
  v19 = v9;
  v20 = v10;
  v23 = a5;
  v21 = *(a1 + 48);
  v13 = v10;
  v14 = v9;
  v15 = v11;
  dispatch_async(v12, block);
}

id sub_1000108EC(uint64_t a1)
{
  [*(a1 + 72) _reportProgressForTask:*(a1 + 32) repairTaskName:*(a1 + 40) started:*(a1 + 48) stopped:*(a1 + 56) itemCount:*(a1 + 80)];
  v2 = *(a1 + 64);

  return [v2 stillAlive];
}

void sub_10001111C(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  [*(a1 + 40) deletePersistentHistoryWithContext:v2];
}

id sub_10001128C()
{
  v0 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "PLKeepDaemonAliveAssertionServer: XPC keep alive server connection finalized", v2, 2u);
  }

  return [qword_100034C10 _deactivateCameraSession];
}

void sub_100011300(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "PLKeepDaemonAliveAssertionServer: received event", v7, 2u);
  }

  v4 = objc_autoreleasePoolPush();
  if (xpc_get_type(v2) != &_xpc_type_error)
  {
    v5 = xpc_dictionary_get_remote_connection(v2);
    if (!xpc_dictionary_get_BOOL(v2, "cameraRollVisibilityChange"))
    {
      reply = xpc_dictionary_create_reply(v2);
      xpc_connection_send_message(v5, reply);
    }
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_10001167C(uint64_t a1)
{
  qword_100034C10 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000124A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000124C0(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v11 = 0;
  v3 = [PLSceneClassification countOfOrphanedSceneClassificationsWithLimit:100000 inContext:v2 error:&v11];
  v4 = v11;

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(a1 + 32) globalValues];
    [v5 setOrphanedSceneClassificationsCount:0];

    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unable to fetch orphaned scene classification count: %@", buf, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  v7 = [NSNumber numberWithUnsignedInteger:v3];
  v8 = [*(a1 + 32) globalValues];
  [v8 setOrphanedSceneClassificationsCount:v7];

  if (v3 > 0x1869F)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) libraryURL];
      v10 = [PLFilePathDescription descriptionWithFileURL:v9];
      *buf = 134218242;
      v13 = v3;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Maintenance task: Excessive orphaned scene classifications found: %tu in library URL: %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_100012C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100012C78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100012C90(void *a1)
{
  v2 = objc_alloc_init(NSFetchRequest);
  v3 = [PLManagedAsset entityInManagedObjectContext:a1[4]];
  [v2 setEntity:v3];

  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v4 countForFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
}

void sub_100013050(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) libraryURL];
      v6 = [PLFilePathDescription descriptionWithFileURL:v5];
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v3;
      v7 = "Maintenance task: Failed to snapshot journals when requested due to excessive history size for library URL: %@. Error: %@";
      v8 = v4;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, v10);
    }
  }

  else
  {
    [*(a1 + 32) setSqliteErrorForRebuildReason:*(a1 + 48) allowsExit:0];
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) libraryURL];
      v6 = [PLFilePathDescription descriptionWithFileURL:v5];
      v11 = 138412290;
      v12 = v6;
      v7 = "Maintenance task: Added rebuild flag for excessive persistent history size for library URL: %@";
      v8 = v4;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 12;
      goto LABEL_6;
    }
  }

  [*(a1 + 40) stillAlive];
}

void sub_100013684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000136B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000136C8(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_100013704(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100013DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_100013E4C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = PLSearchBackendIndexStatusMaintenanceTaskGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error fetching asset count from spotlight: %@", &v8, 0xCu);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = [NSNumber numberWithUnsignedInteger:a2];
    [v7 setPayloadValue:v6 forKey:PLCoreAnalyticsSearchIndexStatusSpotlightIndexCountKey onEventWithName:PLCoreAnalyticsSearchIndexStatusEvent];
  }
}

id sub_100013F50(uint64_t a1)
{
  [*(a1 + 32) setSearchIndexSpotlightClientStateMissingCount:0];
  v2 = *(a1 + 32);

  return [v2 setSearchIndexSpotlightClientStateMismatchedCount:0];
}

void sub_100014C40(uint64_t a1, void *a2)
{
  v3 = [a2 databaseContext];
  v4 = PLLibraryServicesOperationNameCreateSingletonAlbums;
  v5 = [v3 newShortLivedLibraryWithName:{objc_msgSend(PLLibraryServicesOperationNameCreateSingletonAlbums, "UTF8String")}];

  if (v5)
  {
    v6 = PLGenericAlbumHashOfSingletonAlbumValues();
    v7 = [v5 managedObjectContext];
    v8 = [v7 persistentStoreCoordinator];
    v9 = [v8 persistentStores];
    v10 = [v9 firstObject];

    v11 = [v10 metadata];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:PLAlbumSingletonHashKey];
      v14 = [v13 unsignedIntegerValue];

      if (v14 != v6)
      {
        [v5 repairSingletonObjects];
      }
    }

    else
    {
      v16 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [*(a1 + 32) logPrefix];
        v18 = 138543618;
        v19 = v17;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get store metadata in %@", &v18, 0x16u);
      }
    }
  }

  else
  {
    v10 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 32) logPrefix];
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@: Short-lived PLPhotoLibrary is nil, returning early from %@", &v18, 0x16u);
    }
  }
}

void sub_100014E70(uint64_t a1, void *a2)
{
  v3 = [a2 databaseContext];
  v4 = [v3 newShortLivedLibraryWithName:{objc_msgSend(PLLibraryServicesOperationNameEnsureLabelsUpdated, "UTF8String")}];

  if (v4)
  {
    [v4 managedObjectContext];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000160CC;
    v10 = v9[3] = &unk_10002D650;
    v5 = v4;
    v6 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    v7 = v10;
    [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v9];
  }

  else
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logPrefix];
      *buf = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = PLLibraryServicesOperationNameUpdateGraphLabels;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: Short-lived PLPhotoLibrary is nil, returning early from %@", buf, 0x16u);
    }
  }
}

void sub_100015018(uint64_t a1, void *a2)
{
  v3 = [a2 databaseContext];
  v4 = PLLibraryServicesOperationNameCheckForMediaAnalysisVersionBump;
  v5 = [v3 newShortLivedLibraryWithName:{objc_msgSend(PLLibraryServicesOperationNameCheckForMediaAnalysisVersionBump, "UTF8String")}];

  if (v5)
  {
    PLCheckForMediaAnalysisVersionBump();
  }

  else
  {
    v6 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) logPrefix];
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: Short-lived PLPhotoLibrary is nil, returning early from %@", &v8, 0x16u);
    }
  }
}

void sub_100015130(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 libraryURL];
  v21 = 0;
  v5 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:v4 createIfMissing:0 error:&v21];
  v6 = v21;
  if (v5)
  {
    v7 = [v5 containerIdentifier];
    if (!v7)
    {
      v17 = +[NSAssertionHandler currentHandler];
      [v17 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PLPlatformLibraryServicesDelegate.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"libraryBundleID != nil"}];
    }

    if ([v7 isEqualToString:PLPhotoLibraryUserDomainContainerIdentifier])
    {
      v8 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 32) logPrefix];
        *buf = 138543618;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@: SpaceAttribution: Skipping registration of user domain library %@", buf, 0x16u);
      }
    }

    else
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2050000000;
      v11 = qword_100034C28;
      v25 = qword_100034C28;
      if (!qword_100034C28)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100015B44;
        v28 = &unk_10002D7B0;
        v29 = &v22;
        sub_100015B44(buf);
        v11 = v23[3];
      }

      v12 = v11;
      _Block_object_dispose(&v22, 8);
      v8 = [v11 defaultManager];
      v22 = 0;
      v23 = &v22;
      v24 = 0x2050000000;
      v13 = qword_100034C38;
      v25 = qword_100034C38;
      if (!qword_100034C38)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100015C0C;
        v28 = &unk_10002D7B0;
        v29 = &v22;
        sub_100015C0C(buf);
        v13 = v23[3];
      }

      v14 = v13;
      _Block_object_dispose(&v22, 8);
      v15 = [v13 pathInfoWithURL:v4];
      v26 = v15;
      v16 = [NSArray arrayWithObjects:&v26 count:1];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100015CD4;
      v18[3] = &unk_10002D698;
      v18[4] = *(a1 + 32);
      v19 = v7;
      v20 = v4;
      [v8 registerPaths:v16 forBundleID:v19 completionHandler:v18];
    }
  }

  else
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) logPrefix];
      *buf = 138543874;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      *&buf[22] = 2112;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: Unable to obtain library identifier for %@: %@", buf, 0x20u);
    }
  }
}

void sub_10001554C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015570(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldSkipFileSystemImportOperation])
  {
    v4 = PLMigrationGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skipping file system import operation", v11, 2u);
    }

    v5 = [NSProgress progressWithTotalUnitCount:100];
    [v5 setCompletedUnitCount:{objc_msgSend(v5, "totalUnitCount")}];
  }

  else
  {
    v6 = dispatch_block_create(0, &stru_10002D720);
    v7 = [v3 modelMigrator];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100015780;
    v12[3] = &unk_10002D748;
    v13 = v3;
    v14 = v6;
    v5 = v6;
    [v7 loadFileSystemDataIntoDatabaseIfNeededWithReason:@"Library services bringup" completionHandler:v12];

    dispatch_block_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (([v3 isCloudPhotoLibraryEnabled] & 1) == 0)
  {
    v8 = [v3 databaseContext];
    v9 = [v8 newShortLivedLibraryWithName:"photoanalysisd FTE registration"];

    [PLPhotoAnalysisPhotoLibraryService notifyComputeCacheDidLoadForLibrary:v9 reply:&stru_10002D768];
  }

  v10 = [v3 modelMigrator];
  [v10 loadFileSystemAssetsNotifyLeave];
}

void sub_10001573C(id a1, PLLibraryServicesManager *a2)
{
  v2 = [(PLLibraryServicesManager *)a2 rebuildJournalManager];
  [v2 start];
}

uint64_t sub_100015780(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = PLMigrationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering background migration after rebuild", v7, 2u);
    }

    v4 = [*(a1 + 32) pathManager];
    v5 = [v4 libraryURL];
    [PLBackgroundMigrationActivity installBackgroundMigrationActivity:v5];
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100015840(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = PLMigrationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "photoanalysisd FTE registration failed. Error: %@", &v4, 0xCu);
    }
  }
}

void sub_1000158F4(id a1, PLLibraryServicesManager *a2)
{
  v2 = a2;
  v3 = [PLXPCTransaction transaction:"[PLPlatformLibraryServicesDelegate commonBuiltInOperations]_block_invoke"];
  v4 = +[PLConcurrencyLimiter sharedLimiter];
  v5 = [v4 sharedBackgroundQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000159E8;
  v8[3] = &unk_10002D9D8;
  v9 = v2;
  v10 = v3;
  v6 = v3;
  v7 = v2;
  dispatch_sync(v5, v8);
}

void sub_1000159E8(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseContext];
  v3 = [v2 newShortLivedLibraryWithName:"thumbnailManager_rebuildCheck"];

  v4 = [*(a1 + 32) pathManager];
  v5 = PLLibraryIDFromPathManager();

  v6 = PLDataStoreForClassIDAndLibraryID();
  v7 = [v6 thumbnailManager];
  v8 = v7;
  if (v3)
  {
    if ([v7 hasExceededRebuildThumbnailRequestLimit])
    {
      [v8 handleRebuildThumbnailRequestPersistentFailureInPhotoLibrary:v3];
      [*(a1 + 32) shutdownLibraryWithDescription:@"thumbnail manager has exceeded rebuild request limit"];
    }

    if ([v8 hasRebuildThumbnailsRequest])
    {
      [v8 rebuildAllMissingThumbnailsInLibrary:v3];
    }

    else if ([v8 wantsTableOnlyRebuild])
    {
      [v8 continueRebuildingTableThumbsInLibrary:v3];
    }
  }

  else
  {
    v9 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cannot check thumbnail rebuild status because there is no library", v10, 2u);
    }
  }

  [*(a1 + 40) stillAlive];
}

void sub_100015B44(uint64_t a1)
{
  sub_100015E58();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SAPathManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100034C28 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getSAPathManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPlatformLibraryServicesDelegate.m" lineNumber:20 description:{@"Unable to find class %s", "SAPathManager"}];

    __break(1u);
  }
}

void sub_100015C0C(uint64_t a1)
{
  sub_100015E58();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SAPathInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100034C38 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getSAPathInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPlatformLibraryServicesDelegate.m" lineNumber:21 description:{@"Unable to find class %s", "SAPathInfo"}];

    __break(1u);
  }
}

void sub_100015CD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLibraryServicesGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) logPrefix];
      v7 = *(a1 + 40);
      v8 = [*(a1 + 48) path];
      v14 = 138544130;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v3;
      v9 = "%{public}@: SpaceAttribution: Failed to register (%{public}@, %@) %@";
      v10 = v5;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) logPrefix];
    v13 = *(a1 + 40);
    v8 = [*(a1 + 48) path];
    v14 = 138543874;
    v15 = v6;
    v16 = 2114;
    v17 = v13;
    v18 = 2112;
    v19 = v8;
    v9 = "%{public}@: SpaceAttribution: Registered successfully (%{public}@, %@)";
    v10 = v5;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 32;
    goto LABEL_6;
  }
}

void sub_100015E58()
{
  v3[0] = 0;
  if (!qword_100034C30)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100015FA8;
    v3[4] = &unk_10002D7E8;
    v3[5] = v3;
    v4 = off_10002D808;
    v5 = 0;
    qword_100034C30 = _sl_dlopen();
  }

  if (!qword_100034C30)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *SpaceAttributionLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"PLPlatformLibraryServicesDelegate.m" lineNumber:18 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100015FA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100034C30 = result;
  return result;
}

void sub_10001601C(id a1, PLLibraryServicesManager *a2)
{
  v7 = a2;
  v2 = [(PLLibraryServicesManager *)v7 createOptions];
  v3 = v7;
  if ((~v2 & 0x11) != 0)
  {
    v4 = [(PLLibraryServicesManager *)v7 libraryURL];
    v5 = [[PLPhotoAnalysisServiceClient alloc] initWithLibraryURL:v4];
    v6 = v5;
    if ((v2 & 1) == 0)
    {
      [v5 notifyLibraryAvailableAtURLForPhotoanalysisd:v4];
    }

    if ((v2 & 0x10) == 0)
    {
      [v6 notifyLibraryAvailableAtURLForMediaanalysisd:v4];
    }

    v3 = v7;
  }
}

void sub_1000160CC(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016170;
  v5[3] = &unk_10002D650;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v2 performBlockAndWait:v5];
}

void sub_100016170(id *a1)
{
  v2 = [a1[4] managedObjectContext];
  [PLGraphLabel ensureLabelsAreUpdatedInContext:v2];

  if ([a1[5] hasChanges])
  {
    v3 = a1[5];
    v13 = 0;
    v4 = [v3 save:&v13];
    v5 = v13;
    v6 = PLLibraryServicesGetLog();
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [a1[6] logPrefix];
        *buf = 138543362;
        v15 = v8;
        v9 = "%{public}@: Saved updated graph labels";
        v10 = v7;
        v11 = OS_LOG_TYPE_DEFAULT;
        v12 = 12;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [a1[6] logPrefix];
      *buf = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v5;
      v9 = "%{public}@: Failed to save updated labels with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
      goto LABEL_7;
    }
  }
}

void sub_1000162F8(id a1, PLLibraryServicesManager *a2)
{
  v2 = [(PLLibraryServicesManager *)a2 modelMigrator];
  [v2 loadFileSystemAssetsNotifyEnter];
}

void sub_100016344(id a1, PLLibraryServicesManager *a2)
{
  v2 = [(PLLibraryServicesManager *)a2 modelMigrator];
  v3 = [v2 analyticsEventManager];

  [v3 removeEventWithName:PLCoreAnalyticsLibraryCreateEvent];
  [v3 removeEventWithName:PLCoreAnalyticsLibraryMigrateEvent];
  [v3 removeEventWithName:PLCoreAnalyticsLibraryRebuildEvent];
}

void sub_1000163D8(id a1, PLLibraryServicesManager *a2)
{
  v5 = a2;
  v2 = +[PLPrivacy sharedInstance];
  v3 = [v2 photosAccessAllowedWithScope:7];

  if (v3)
  {
    v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"assetsd requires TCCPhotosService access" userInfo:0];
    objc_exception_throw(v4);
  }
}

void sub_100016470(id a1, PLLibraryServicesManager *a2)
{
  v2 = a2;
  v3 = [(PLLibraryServicesManager *)v2 libraryURL];
  v5 = 0;
  v4 = [PLPhotoLibraryOpener autoCreateWellKnownPhotoLibraryIfNeededWithURL:v3 libraryServicesManager:v2 wellKnownLibraryIdentifier:&v5];
}

void sub_1000165A8(uint64_t a1, void *a2)
{
  v3 = [a2 updateGreenTeaSavedContactsAuthorizationIfNeeded];
  v4 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) logPrefix];
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: greenTeaContactsAuthorization operation contacts authorization change: %@", &v8, 0x16u);
  }
}

void sub_100016778(uint64_t a1, void *a2)
{
  v3 = [a2 updateSavedLocaleIfNeeded];
  v4 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) logPrefix];
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: localeChangeCheck operation found locale change: %@", &v8, 0x16u);
  }
}

void sub_100016AFC(id a1, PLLibraryServicesManager *a2)
{
  v2 = PLOpenSyndicationLibrary();
  v3 = 0;

  v4 = PLSyndicationGetLog();
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Library services operation opened syndication photo library";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 2;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v6, buf, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v3;
    v6 = "Library services operation failed to open syndication library, error: %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 12;
    goto LABEL_6;
  }
}

void sub_100016C04(id a1, PLLibraryServicesManager *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v3 = qword_100034C18;
  v9 = qword_100034C18;
  if (!qword_100034C18)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100016CEC;
    v5[3] = &unk_10002D7B0;
    v5[4] = &v6;
    sub_100016CEC(v5);
    v3 = v7[3];
  }

  v4 = v3;
  _Block_object_dispose(&v6, 8);
  [v3 prefetchSensitiveContentPolicy:&stru_10002D548];
}

void sub_100016CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100016CEC(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100034C20)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100016F88;
    v6[4] = &unk_10002D7E8;
    v6[5] = v6;
    v7 = off_10002D7D0;
    v8 = 0;
    qword_100034C20 = _sl_dlopen();
  }

  if (!qword_100034C20)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *SensitiveContentAnalysisLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLPlatformLibraryServicesDelegate.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SCSensitivityAnalysis");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getSCSensitivityAnalysisClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLPlatformLibraryServicesDelegate.m" lineNumber:22 description:{@"Unable to find class %s", "SCSensitivityAnalysis"}];

LABEL_10:
    __break(1u);
  }

  qword_100034C18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100016ED8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error prefetching sensitive content analysis policy: %@", &v4, 0xCu);
    }
  }
}

uint64_t sub_100016F88(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100034C20 = result;
  return result;
}

void sub_1000171A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000171BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000171D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = [v5 arrayByAddingObjectsFromArray:v3];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    else
    {
      v9 = v3;
      v8 = *(v4 + 40);
      *(v4 + 40) = v9;
    }
  }

  return _objc_release_x1();
}

void sub_1000177A8(id a1, PLLibraryServicesManager *a2)
{
  v2 = [(PLLibraryServicesManager *)a2 cacheDeleteSupport];
}

void sub_1000177D8(id a1, PLLibraryServicesManager *a2)
{
  v2 = a2;
  v4 = [(PLLibraryServicesManager *)v2 backgroundJobService];
  v3 = [(PLLibraryServicesManager *)v2 libraryBundle];

  [v4 performCrashRecoveryIfNeededOnBundle:v3];
}

void sub_100017848(id a1, PLLibraryServicesManager *a2)
{
  v3 = +[PLLibraryBookmarkManager sharedBookmarkManager];
  v2 = +[PLPhotoLibraryPathManager systemLibraryURL];
  [v3 removeInvalidSSBsExcept:v2];
}

void sub_1000178B8(id a1, PLLibraryServicesManager *a2)
{
  v2 = a2;
  v3 = [[PHAssetCrashRecoverySupport alloc] initWithLibraryServicesManager:v2];

  [v3 recoverFromCrashIfNeeded];
}

void sub_100017920(id a1, PLLibraryServicesManager *a2)
{
  v2 = a2;
  v3 = [[PLDuplicateMergeCrashRecovery alloc] initWithLibraryServicesManager:v2];

  [v3 performCrashRecoveryIfNeeded];
}

void sub_100017988(id a1, PLLibraryServicesManager *a2)
{
  v2 = [(PLLibraryServicesManager *)a2 cloudPhotoLibraryManager];
}

void sub_1000179B8(id a1, PLLibraryServicesManager *a2)
{
  v2 = [(PLLibraryServicesManager *)a2 pathManager];
  [v2 setBackupExclusionAttributesForWellKnownLibrariesOrWithCreateOptions:32 andBackupType:1];
}

void sub_100017A08(id a1, PLLibraryServicesManager *a2)
{
  v2 = a2;
  v3 = [(PLLibraryServicesManager *)v2 pathManager];
  v4 = [v3 libraryURL];
  v5 = [v4 path];

  v6 = +[NSFileManager defaultManager];
  LODWORD(v4) = [v6 fileExistsAtPath:v5];

  if (v4)
  {
    v7 = [(PLLibraryServicesManager *)v2 pathManager];
    v15 = 0;
    v8 = [v7 ensureFileProviderSyncExclusionAttributeIsSetWithError:&v15];
    v9 = v15;

    if ((v8 & 1) == 0)
    {
      v10 = PLMigrationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to set file provider exclusion attribute for path %@: %@", buf, 0x16u);
      }
    }
  }

  if ([PLFileUtilities filePathIsSubpathOfSyncRoot:v5])
  {
    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(PLLibraryServicesManager *)v2 pathManager];
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Attempting to open photo library in a sync root is forbidden: %@", buf, 0xCu);
    }

    v13 = +[NSMutableDictionary dictionary];
    [v13 setObject:@"Attempting to open photo library in a sync root" forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v13 setObject:v5 forKeyedSubscript:NSFilePathErrorKey];
    v14 = [NSError errorWithDomain:PLPhotosErrorDomain code:46017 userInfo:v13];
    [(PLLibraryServicesManager *)v2 deactivateWithInvalidationError:v14];
  }
}

char *sub_100017E14(uint64_t a1)
{
  result = [*(a1 + 32) migrationType];
  if ((result - 1) <= 2)
  {
    v2 = PLSystemPhotoLibraryAvailableNotificationName;

    return notify_post(v2);
  }

  return result;
}

void sub_100017E60(id a1, PLLibraryServicesManager *a2)
{
  v2 = [(PLLibraryServicesManager *)a2 libraryURL];
  v3 = [PLPhotoSharingHelper sharedStreamsEnabledForPhotoLibraryURL:v2];

  if (v3)
  {
    v4 = PLMigrationGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initial sync of shared albums on library open. RefreshResetSync: NO", v5, 2u);
    }

    [PLPhotoSharingHelper pollForAlbumListUpdatesWithRefreshResetSync:0];
  }
}

void sub_1000181A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) pathManager];
  PLDeleteGuestAssetsInLibraryWithManagedObjectContext();
}

void sub_100018354(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100018370(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (!strcmp(string, [@"SLSharedWithYouSettingHasChanged" UTF8String]) || !strcmp(string, objc_msgSend(@"SLSharedWithYouAppSettingHasChanged", "UTF8String")))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handleSettingChange];
  }
}

void sub_10001863C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100018654(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001866C(uint64_t a1)
{
  v1 = +[PLManagedAsset entityName];
  v34 = [NSFetchRequest fetchRequestWithEntityName:v1];

  v32 = [NSPredicate predicateWithFormat:@"%K != 0.0", @"latitude"];
  v50[0] = v32;
  v2 = [NSPredicate predicateWithFormat:@"%K != 0.0", @"longitude"];
  v50[1] = v2;
  v3 = [NSPredicate predicateWithFormat:@"noindex:(%K) == %d", @"trashedState", 0];
  v50[2] = v3;
  v4 = [NSPredicate predicateWithFormat:@"noindex:(%K) == NO", @"hidden"];
  v50[3] = v4;
  v5 = [NSPredicate predicateWithFormat:@"%K != nil", @"additionalAttributes.reverseLocationData"];
  v50[4] = v5;
  v6 = [NSPredicate predicateWithFormat:@"%K != nil", @"additionalAttributes.sceneprint"];
  v50[5] = v6;
  v7 = [NSPredicate predicateWithFormat:@"%K >= 0", @"additionalAttributes.gpsHorizontalAccuracy"];
  v50[6] = v7;
  v8 = [NSPredicate predicateWithFormat:@"%K < %f", @"additionalAttributes.gpsHorizontalAccuracy", kPLLocationUtilsCoarseLocationHorizontalAccuracy];
  v50[7] = v8;
  v9 = [NSPredicate predicateWithFormat:@"%K IN %@", @"additionalAttributes.importedBy", &off_10002E7E0];
  v50[8] = v9;
  v10 = [NSArray arrayWithObjects:v50 count:9];
  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];
  [v34 setPredicate:v11];

  [v34 setRelationshipKeyPathsForPrefetching:&off_10002E7F8];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v12 = objc_alloc_init(NSMutableArray);
  v13 = [*(a1 + 32) photoLibrary];
  v14 = [v13 managedObjectContext];

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100018CE0;
  v41[3] = &unk_10002DA00;
  v15 = v12;
  v42 = v15;
  v44 = &v45;
  v16 = v14;
  v43 = v16;
  v17 = [v16 enumerateObjectsFromFetchRequest:v34 usingDefaultBatchSizeWithBlock:v41];
  if (v46[3])
  {
    v18 = [*(a1 + 32) randomIndexForSampleSize:{objc_msgSend(v15, "count")}];
    v19 = objc_alloc_init(NSMutableArray);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100018D8C;
    v37[3] = &unk_10002DA28;
    v38 = v15;
    v20 = v19;
    v39 = v20;
    [v18 enumerateIndexesUsingBlock:v37];
    if ([v20 count])
    {
      v21 = +[PLManagedAsset entityName];
      v22 = [NSFetchRequest fetchRequestWithEntityName:v21];

      [v22 setResultType:2];
      v49 = @"uuid";
      v23 = [NSArray arrayWithObjects:&v49 count:1];
      [v22 setPropertiesToFetch:v23];

      v24 = [NSPredicate predicateWithFormat:@"self IN %@", v20];
      [v22 setPredicate:v24];

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100018DE8;
      v35[3] = &unk_10002DA50;
      v25 = objc_alloc_init(NSMutableArray);
      v36 = v25;
      v26 = [v16 enumerateObjectsFromFetchRequest:v22 count:0 batchSize:10 usingBlock:v35];
      v27 = *(*(a1 + 40) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v25;
      v29 = v25;
    }
  }

  else
  {
    v30 = PLBackendGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Crowd Sourced Themes Stream Collection: User does not have a home node.", buf, 2u);
    }

    v31 = *(*(a1 + 40) + 8);
    v18 = *(v31 + 40);
    *(v31 + 40) = &__NSArray0__struct;
  }

  _Block_object_dispose(&v45, 8);
}

void sub_100018CE0(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 isLocatedAtHome];
  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [v6 objectID];
    [v4 addObject:v5];
  }

  *(*(*(a1 + 48) + 8) + 24) |= v3;
  [*(a1 + 40) refreshObject:v6 mergeChanges:{objc_msgSend(v6, "hasChanges")}];
}

void sub_100018D8C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndex:a2];
  [*(a1 + 40) addObject:v3];
}

void sub_100018DE8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:@"uuid"];
  [v2 addObject:v3];
}