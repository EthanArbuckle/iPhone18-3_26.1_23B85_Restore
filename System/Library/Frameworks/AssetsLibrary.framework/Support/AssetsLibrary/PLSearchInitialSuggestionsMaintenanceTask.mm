@interface PLSearchInitialSuggestionsMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLSearchInitialSuggestionsMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v3 = [(PLMaintenanceTask *)self photoLibrary];
  v4 = [v3 libraryServicesManager];
  v5 = [v4 wellKnownPhotoLibraryIdentifier];

  v6 = PLBackendGetLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (v7)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Generating global initial search suggestions...", &v9, 2u);
    }

    [PLInitialSuggestionsManager generateInitialSuggestionsForPhotoLibrary:v3];
  }

  else
  {
    if (v7)
    {
      v9 = 134217984;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initial suggestion generation requested for unsupported library with identifier: %tu. No initial suggestions will be generated.", &v9, 0xCu);
    }
  }

  return v5 == 1;
}

@end