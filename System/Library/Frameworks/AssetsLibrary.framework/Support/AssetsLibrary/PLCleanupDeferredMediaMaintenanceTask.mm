@interface PLCleanupDeferredMediaMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLCleanupDeferredMediaMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  libraryServicesManager = [(PLMaintenanceTask *)self libraryServicesManager];
  isSystemPhotoLibrary = [libraryServicesManager isSystemPhotoLibrary];

  if (isSystemPhotoLibrary)
  {
    photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000096D8;
    v11[3] = &unk_10002D458;
    v12 = transactionCopy;
    [photoLibrary deleteUnknownDeferredIntermediatesWithCompletionHandler:v11];

    if (PLHasInternalDiagnostics())
    {
      photoLibrary2 = [(PLMaintenanceTask *)self photoLibrary];
      [photoLibrary2 deleteTTRDeferredIntermediates];
    }

    photoLibrary3 = [(PLMaintenanceTask *)self photoLibrary];
    [photoLibrary3 deleteUnusedCameraMetadataPaths];
  }

  return 1;
}

@end