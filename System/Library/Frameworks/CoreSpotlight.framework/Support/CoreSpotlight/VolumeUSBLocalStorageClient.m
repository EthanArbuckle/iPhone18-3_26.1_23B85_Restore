@interface VolumeUSBLocalStorageClient
+ (id)sharedLocalStorageClient;
@end

@implementation VolumeUSBLocalStorageClient

+ (id)sharedLocalStorageClient
{
  pthread_mutex_lock(&stru_10003CAA8);
  if (qword_10003CC60)
  {
    v2 = qword_10003CC60;
    pthread_mutex_unlock(&stru_10003CAA8);
  }

  else
  {
    v3 = [VolumeUSBLocalStorageClient newConnectionForService:@"machp://com.apple.filesystems.localLiveFiles"];
    if (!v3)
    {
      v8 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100024F08();
      }

      exit(0);
    }

    v2 = v3;
    [*&v3[OBJC_IVAR___LiveFSClient_conn] setInterruptionHandler:&stru_100035A60];
    [*&v2[OBJC_IVAR___LiveFSClient_conn] setInvalidationHandler:&stru_100035A80];
    objc_storeStrong(&qword_10003CC60, v2);
    pthread_mutex_unlock(&stru_10003CAA8);
    v4 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "client: %@", &v9, 0xCu);
    }

    v5 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v2 volumes:0];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "volumes: %@", &v9, 0xCu);
    }
  }

  return v2;
}

@end