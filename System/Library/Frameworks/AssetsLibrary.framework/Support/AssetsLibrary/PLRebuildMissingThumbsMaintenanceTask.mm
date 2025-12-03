@interface PLRebuildMissingThumbsMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLRebuildMissingThumbsMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];
  isSyndicationPhotoLibrary = [libraryServicesManager isSyndicationPhotoLibrary];

  if (!isSyndicationPhotoLibrary)
  {
    photoLibrary2 = [(PLMaintenanceTask *)self photoLibrary];
    pathManager = [photoLibrary2 pathManager];

    photoLibrary3 = [(PLMaintenanceTask *)self photoLibrary];
    managedObjectContext = [photoLibrary3 managedObjectContext];

    if ([PLThumbnailManager requiredThumbnailResetTypeWithPathManager:pathManager comparedToConfigPhase:2]== 1)
    {
      v11 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        photoLibrary4 = [(PLMaintenanceTask *)self photoLibrary];
        v32 = 138412290;
        v33 = photoLibrary4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unsuppressing target thumbnail config for library: %@", &v32, 0xCu);
      }

      v13 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        photoLibrary5 = [(PLMaintenanceTask *)self photoLibrary];
        v32 = 138412290;
        v33 = photoLibrary5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Marking assets as needing table thumb migration for library: %@", &v32, 0xCu);
      }

      [PLModelMigrator markAssetsWithThumbsForTableRebuildInContext:managedObjectContext];
      thumbnailManager = [PLThumbnailManager thumbnailConfigurationDictWithPathManager:pathManager];
      [PLThumbnailManager markThumbnailConfigurationForTableOnlyRebuildForThumbnailConfigDict:thumbnailManager];
      [PLThumbnailManager stampThumbnailConfiguration:thumbnailManager toFile:1 withPathManager:pathManager];
      +[PLThumbnailManager invalidateCachedConfig];
      [PLThumbnailManager removeThumbnailTablesUnsupportedOnly:1 withPathManager:pathManager];
      photoLibrary6 = [(PLMaintenanceTask *)self photoLibrary];
      libraryID = [photoLibrary6 libraryID];
      v18 = PLDataStoreForClassIDAndLibraryID();

      [v18 invalidateThumbnailManager];
    }

    else
    {
      photoLibrary7 = [(PLMaintenanceTask *)self photoLibrary];
      thumbnailManager = [photoLibrary7 thumbnailManager];

      if (([thumbnailManager wantsTableOnlyRebuild] & 1) == 0)
      {
        photoLibrary8 = [(PLMaintenanceTask *)self photoLibrary];
        v21 = [PLTableThumbnailMigrator countOfAssetsPendingTableThumbRebuildInLibrary:photoLibrary8];

        if (v21)
        {
          if (v21 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [thumbnailManager reStampConfigAsNeedingTableThumbMigration];
            v22 = [NSString stringWithFormat:@"Found assets awaiting table thumb migration yet config file is missing migration flag, Please file a Radar to Photos Backend Storage | All with 'cplctl diagnose' logs and relate to 73301366"];
            PLSimulateCrash();
          }
        }
      }
    }

    photoLibrary9 = [(PLMaintenanceTask *)self photoLibrary];
    thumbnailManager2 = [photoLibrary9 thumbnailManager];

    wantsTableOnlyRebuild = [thumbnailManager2 wantsTableOnlyRebuild];
    photoLibrary10 = [(PLMaintenanceTask *)self photoLibrary];
    if (wantsTableOnlyRebuild)
    {
      v27 = PLThumbnailsGetLog();
      v28 = v27;
      if (photoLibrary10)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v32 = 138412290;
          v33 = photoLibrary10;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Queueing request to continue table thumb migration for library: %@", &v32, 0xCu);
        }

        [thumbnailManager2 continueRebuildingTableThumbsInLibrary:photoLibrary10];
      }

      else
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v32) = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Cannot continue with rebuild thumbs task because there is no library", &v32, 2u);
        }

        photoLibrary10 = 0;
      }
    }

    else if ([thumbnailManager2 hasMissingThumbnailsInLibrary:photoLibrary10] && (objc_msgSend(thumbnailManager2, "isRebuildingThumbnails") & 1) == 0)
    {
      hasExceededRebuildThumbnailRequestLimit = [thumbnailManager2 hasExceededRebuildThumbnailRequestLimit];

      if (hasExceededRebuildThumbnailRequestLimit)
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

      photoLibrary10 = [(PLMaintenanceTask *)self photoLibrary];
      [thumbnailManager2 rebuildAllMissingThumbnailsInLibrary:photoLibrary10];
    }

    goto LABEL_29;
  }

  pathManager = PLBackendGetLog();
  if (os_log_type_enabled(pathManager, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&_mh_execute_header, pathManager, OS_LOG_TYPE_ERROR, "Rebuild missing thumbnails maintenance task is not supported for syndication library", &v32, 2u);
  }

LABEL_30:

  return isSyndicationPhotoLibrary ^ 1;
}

@end