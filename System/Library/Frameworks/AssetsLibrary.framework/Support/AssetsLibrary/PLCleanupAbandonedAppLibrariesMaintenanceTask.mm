@interface PLCleanupAbandonedAppLibrariesMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLCleanupAbandonedAppLibrariesMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];
  isSystemPhotoLibrary = [libraryServicesManager isSystemPhotoLibrary];

  if (isSystemPhotoLibrary)
  {
    v6 = [PLAppLibraryUninstallSupport alloc];
    v7 = +[PLPhotoLibraryBundleController sharedBundleController];
    v8 = [v6 initWithLibraryBundleController:v7];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = +[PLAppLibraryUninstallSupport applicationBundlesToValidateForUninstallCleanup];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = PLBackendGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Checking for abandoned app libraries to cleanup for %@", buf, 0xCu);
          }

          [v8 deleteAbandonedLibrariesForApplicationWithBundleIdentifier:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v11);
    }
  }

  return 1;
}

@end