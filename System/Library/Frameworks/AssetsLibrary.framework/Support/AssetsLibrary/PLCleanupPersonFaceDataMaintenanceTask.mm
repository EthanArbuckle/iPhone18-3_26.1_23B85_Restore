@interface PLCleanupPersonFaceDataMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLCleanupPersonFaceDataMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  isCloudPhotoLibraryEnabled = [photoLibrary isCloudPhotoLibraryEnabled];

  if ((isCloudPhotoLibraryEnabled & 1) == 0)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_10000DE3C;
    v26 = sub_10000DE4C;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    photoLibrary2 = [(PLMaintenanceTask *)self photoLibrary];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000DE54;
    v17[3] = &unk_10002D408;
    v17[4] = self;
    v17[5] = &v18;
    v17[6] = &v22;
    [photoLibrary2 performBlockAndWait:v17];

    v8 = v19[3];
    if (v8)
    {
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_13:
        _Block_object_dispose(&v18, 8);
        _Block_object_dispose(&v22, 8);

        goto LABEL_14;
      }

      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v23[5];
        *buf = 138412290;
        v29 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to fetch count of user library during periodic maintenance: %@", buf, 0xCu);
      }
    }

    else
    {
      v11 = PLBackendGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting all person / face data due to user library contains 0 assets", buf, 2u);
      }

      photoLibrary3 = [(PLMaintenanceTask *)self photoLibrary];
      v16 = 0;
      v13 = [PLPerson resetAllInLibrary:photoLibrary3 error:&v16];
      v9 = v16;

      if ((v13 & 1) == 0)
      {
        v14 = PLBackendGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v9;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Maintenance task to reset persons failed with error: %@", buf, 0xCu);
        }
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  return 1;
}

@end