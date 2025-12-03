@interface PLCSTDataCollectionMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
- (id)generateUuidSelection;
- (id)randomIndexForSampleSize:(unint64_t)size;
@end

@implementation PLCSTDataCollectionMaintenanceTask

- (id)randomIndexForSampleSize:(unint64_t)size
{
  v4 = objc_alloc_init(NSMutableIndexSet);
  v5 = v4;
  if (size - 1 > 9)
  {
    if (size < 0xB)
    {
      v6 = PLBackendGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Crowd Sourced Themes Stream Collection: SampleSize is set to 0. Skipping randomIndexing", v8, 2u);
      }
    }

    else
    {
      do
      {
        [v5 addIndex:arc4random_uniform(size)];
      }

      while ([v5 count] < 0xA);
    }
  }

  else
  {
    [v4 addIndexesInRange:{0, size}];
  }

  return v5;
}

- (id)generateUuidSelection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100018654;
  v11 = sub_100018664;
  v12 = 0;
  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001866C;
  v6[3] = &unk_10002DA78;
  v6[4] = self;
  v6[5] = &v7;
  [photoLibrary performTransactionAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)runTaskWithTransaction:(id)transaction
{
  libraryServicesManager = [(PLMaintenanceTask *)self libraryServicesManager];
  isSystemPhotoLibrary = [libraryServicesManager isSystemPhotoLibrary];

  if (isSystemPhotoLibrary)
  {
    generateUuidSelection = [(PLCSTDataCollectionMaintenanceTask *)self generateUuidSelection];
    if ([generateUuidSelection count])
    {
      libraryServicesManager2 = [(PLMaintenanceTask *)self libraryServicesManager];
      pathManager = [libraryServicesManager2 pathManager];
      [PLCrowdSourcedThemesPublisher publishUUIDs:generateUuidSelection stream:0 pathManager:pathManager];
    }

    else
    {
      libraryServicesManager2 = PLBackendGetLog();
      if (os_log_type_enabled(libraryServicesManager2, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, libraryServicesManager2, OS_LOG_TYPE_INFO, "Crowd Sourced Themes Stream Collection: No assets matching CST criteria", v10, 2u);
      }
    }
  }

  return 1;
}

@end