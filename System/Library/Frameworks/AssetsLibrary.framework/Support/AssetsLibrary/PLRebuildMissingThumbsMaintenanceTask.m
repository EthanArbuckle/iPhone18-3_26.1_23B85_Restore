@interface PLRebuildMissingThumbsMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLRebuildMissingThumbsMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v4 = [(PLMaintenanceTask *)self photoLibrary];
  v5 = [v4 libraryServicesManager];
  v6 = [v5 isSyndicationPhotoLibrary];

  if (!v6)
  {
    v8 = [(PLMaintenanceTask *)self photoLibrary];
    v7 = [v8 pathManager];

    v9 = [(PLMaintenanceTask *)self photoLibrary];
    v10 = [v9 managedObjectContext];

    if ([PLThumbnailManager requiredThumbnailResetTypeWithPathManager:v7 comparedToConfigPhase:2]== 1)
    {
      v11 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [(PLMaintenanceTask *)self photoLibrary];
        v32 = 138412290;
        v33 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unsuppressing target thumbnail config for library: %@", &v32, 0xCu);
      }

      v13 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [(PLMaintenanceTask *)self photoLibrary];
        v32 = 138412290;
        v33 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Marking assets as needing table thumb migration for library: %@", &v32, 0xCu);
      }

      [PLModelMigrator markAssetsWithThumbsForTableRebuildInContext:v10];
      v15 = [PLThumbnailManager thumbnailConfigurationDictWithPathManager:v7];
      [PLThumbnailManager markThumbnailConfigurationForTableOnlyRebuildForThumbnailConfigDict:v15];
      [PLThumbnailManager stampThumbnailConfiguration:v15 toFile:1 withPathManager:v7];
      +[PLThumbnailManager invalidateCachedConfig];
      [PLThumbnailManager removeThumbnailTablesUnsupportedOnly:1 withPathManager:v7];
      v16 = [(PLMaintenanceTask *)self photoLibrary];
      v17 = [v16 libraryID];
      v18 = PLDataStoreForClassIDAndLibraryID();

      [v18 invalidateThumbnailManager];
    }

    else
    {
      v19 = [(PLMaintenanceTask *)self photoLibrary];
      v15 = [v19 thumbnailManager];

      if (([v15 wantsTableOnlyRebuild] & 1) == 0)
      {
        v20 = [(PLMaintenanceTask *)self photoLibrary];
        v21 = [PLTableThumbnailMigrator countOfAssetsPendingTableThumbRebuildInLibrary:v20];

        if (v21)
        {
          if (v21 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v15 reStampConfigAsNeedingTableThumbMigration];
            v22 = [NSString stringWithFormat:@"Found assets awaiting table thumb migration yet config file is missing migration flag, Please file a Radar to Photos Backend Storage | All with 'cplctl diagnose' logs and relate to 73301366"];
            PLSimulateCrash();
          }
        }
      }
    }

    v23 = [(PLMaintenanceTask *)self photoLibrary];
    v24 = [v23 thumbnailManager];

    v25 = [v24 wantsTableOnlyRebuild];
    v26 = [(PLMaintenanceTask *)self photoLibrary];
    if (v25)
    {
      v27 = PLThumbnailsGetLog();
      v28 = v27;
      if (v26)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v32 = 138412290;
          v33 = v26;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Queueing request to continue table thumb migration for library: %@", &v32, 0xCu);
        }

        [v24 continueRebuildingTableThumbsInLibrary:v26];
      }

      else
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v32) = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Cannot continue with rebuild thumbs task because there is no library", &v32, 2u);
        }

        v26 = 0;
      }
    }

    else if ([v24 hasMissingThumbnailsInLibrary:v26] && (objc_msgSend(v24, "isRebuildingThumbnails") & 1) == 0)
    {
      v29 = [v24 hasExceededRebuildThumbnailRequestLimit];

      if (v29)
      {
LABEL_29:

        goto LABEL_30;
      }

      v30 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Found missing thumbnails in library, attempting repair", &v32, 2u);
      }

      v26 = [(PLMaintenanceTask *)self photoLibrary];
      [v24 rebuildAllMissingThumbnailsInLibrary:v26];
    }

    goto LABEL_29;
  }

  v7 = PLBackendGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Rebuild missing thumbnails maintenance task is not supported for syndication library", &v32, 2u);
  }

LABEL_30:

  return v6 ^ 1;
}

@end