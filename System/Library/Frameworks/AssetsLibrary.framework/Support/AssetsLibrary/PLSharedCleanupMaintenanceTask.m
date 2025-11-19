@interface PLSharedCleanupMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLSharedCleanupMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [(PLMaintenanceTask *)self photoLibrary];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100004F24;
  v18 = &unk_10002D9D8;
  v19 = self;
  v6 = v4;
  v20 = v6;
  [v5 performTransaction:&v15 withPriority:0];

  v7 = [(PLMaintenanceTask *)self libraryServicesManager:v15];
  v8 = [v7 isSystemPhotoLibrary];

  if (v8)
  {
    v9 = [(PLMaintenanceTask *)self photoLibrary];
    [PLPhotoSharingHelper pruneCloudSharingContentIfNecessaryInLibrary:v9];

    v10 = [(PLMaintenanceTask *)self photoLibrary];
    v11 = [v10 pathManager];
    v12 = [v11 libraryURL];
    v13 = [PLPhotoSharingHelper sharedStreamsEnabledForPhotoLibraryURL:v12];

    if (v13)
    {
      +[PLPhotoSharingHelper pollForAlbumListUpdatesIfNecessary];
    }
  }

  return 1;
}

@end