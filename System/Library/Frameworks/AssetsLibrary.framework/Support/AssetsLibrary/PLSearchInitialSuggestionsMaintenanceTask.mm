@interface PLSearchInitialSuggestionsMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLSearchInitialSuggestionsMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];
  wellKnownPhotoLibraryIdentifier = [libraryServicesManager wellKnownPhotoLibraryIdentifier];

  v6 = PLBackendGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (wellKnownPhotoLibraryIdentifier == 1)
  {
    if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Generating global initial search suggestions...", &v9, 2u);
    }

    [PLInitialSuggestionsManager generateInitialSuggestionsForPhotoLibrary:photoLibrary];
  }

  else
  {
    if (v7)
    {
      v9 = 134217984;
      v10 = wellKnownPhotoLibraryIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initial suggestion generation requested for unsupported library with identifier: %tu. No initial suggestions will be generated.", &v9, 0xCu);
    }
  }

  return wellKnownPhotoLibraryIdentifier == 1;
}

@end