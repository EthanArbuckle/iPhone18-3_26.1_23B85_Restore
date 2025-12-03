@interface PLSharedCleanupMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLSharedCleanupMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100004F24;
  v18 = &unk_10002D9D8;
  selfCopy = self;
  v6 = transactionCopy;
  v20 = v6;
  [photoLibrary performTransaction:&v15 withPriority:0];

  v7 = [(PLMaintenanceTask *)self libraryServicesManager:v15];
  isSystemPhotoLibrary = [v7 isSystemPhotoLibrary];

  if (isSystemPhotoLibrary)
  {
    photoLibrary2 = [(PLMaintenanceTask *)self photoLibrary];
    [PLPhotoSharingHelper pruneCloudSharingContentIfNecessaryInLibrary:photoLibrary2];

    photoLibrary3 = [(PLMaintenanceTask *)self photoLibrary];
    pathManager = [photoLibrary3 pathManager];
    libraryURL = [pathManager libraryURL];
    v13 = [PLPhotoSharingHelper sharedStreamsEnabledForPhotoLibraryURL:libraryURL];

    if (v13)
    {
      +[PLPhotoSharingHelper pollForAlbumListUpdatesIfNecessary];
    }
  }

  return 1;
}

@end