void sub_100001F60(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:PHImageErrorKey];
  if (a2)
  {
    v6 = *(a1 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000210C;
    v9[3] = &unk_100008330;
    v7 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    [v6 _saveImageRef:a2 toURL:v7 completionHandler:v9];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 40) localizedDescription];
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v8;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Fetching image for asset failed with error: %@ (progress: %@)", buf, 0x16u);
    }

    [*(a1 + 40) setCompletedUnitCount:100];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10000210C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setCompletedUnitCount:100];
  (*(*(a1 + 40) + 16))();
}

id sub_10000284C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 48) _replaceAssetAtURL:*(a1 + 32) withItemAtURL:a2 completionHandler:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

id sub_100002874(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 48) _replaceAssetAtURL:*(a1 + 32) withItemAtURL:a2 completionHandler:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void sub_100002E6C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v8)
  {
    (*(v6 + 16))(*(a1 + 40), 0);
  }

  else if (v5)
  {
    (*(v6 + 16))(*(a1 + 40), v5);
  }

  else
  {
    v7 = [NSError errorWithDomain:@"PFPAssetRequestErrorDomain" code:0 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }

  [*(a1 + 32) unpublish];
}

void sub_100003174(id a1)
{
  v1 = +[NSBundle mainBundle];
  [CPAnalytics setupWithConfigurationFilename:@"CPAnalyticsConfig-PhotosFileProvider" inBundle:v1];

  v2 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
  [CPAnalytics setupSystemPropertyProvidersForLibrary:v2];

  +[CPAnalytics activateEventQueue];
  byte_10000C618 = 1;
}

elf file:@"PhotosFileProvider.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  +[PHPhotoLibrary enableMultiLibraryMode];
  v10 = [NSProgress progressWithTotalUnitCount:100];
  [v10 setKind:NSProgressKindFile];
  [v10 setCancellable:0];
  [v10 setPausable:0];
  [v10 setUserInfoObject:v7 forKey:NSProgressFileURLKey];
  [v10 setUserInfoObject:NSProgressFileOperationKindDownloading forKey:NSProgressFileOperationKindKey];
  [v10 publish];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = [v10 localizedDescription];
    *buf = 138412546;
    v22 = v7;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Start providing item at URL: %@ (progress: %@)", buf, 0x16u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100002E5C;
  v19[3] = &unk_100008308;
  v20 = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100002E6C;
  v16[3] = &unk_100008330;
  v17 = v20;
  v18 = v9;
  v12 = v20;
  v13 = v9;
  [PFPAssetRequest requestFileForPhotosFileProviderURL:v7 progressCreation:v19 completion:v16];
}

- (PhotosFileProvider)init
{
  v16.receiver = self;
  v16.super_class = PhotosFileProvider;
  v2 = [(PhotosFileProvider *)&v16 init];
  if (v2)
  {
    v3 = +[NSDate date];
    v4 = PXPhotosFileProviderManager();
    v5 = [v4 documentStorageURL];

    v15 = 0;
    v6 = [PLPhotoLibraryPathManagerCore setTimeMachineExclusionAttribute:1 url:v5 error:&v15];
    v7 = v15;
    if ((v6 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to mark File Provider Storage as excluded from back-up. URL: %@, Error: %@", buf, 0x16u);
    }

    v8 = byte_10000C618;
    if (qword_10000C620 != -1)
    {
      dispatch_once(&qword_10000C620, &stru_1000082E0);
    }

    v9 = +[NSDate date];
    [v9 timeIntervalSinceDate:v3];
    v11 = v10;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v12 = @"YES";
      if (v8)
      {
        v12 = @"NO";
      }

      v13 = v12;
      *buf = 134218242;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "PhotosFileProvider initialized in %.4fs. Analytics needed initialization: %{public}@", buf, 0x16u);
    }
  }

  return v2;
}

@end