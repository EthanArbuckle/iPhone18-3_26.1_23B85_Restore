@interface XPCAppRemovalService
- (id)_deleteAllFilesInDirectory:(id)a3 except:(id)a4;
- (void)removeAppWithReply:(id)a3;
@end

@implementation XPCAppRemovalService

- (void)removeAppWithReply:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "iBooksAppRemoval: Removing iBooks data from device.", buf, 2u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "iBooksAppRemoval: Cancelling any current downloads and remove metadata store.", v10, 2u);
  }

  +[BLDownloadQueue prepareForRemoveApp];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "iBooksAppRemoval: Removing the contents of /var/mobile/Media/Books.", v9, 2u);
  }

  v5 = [NSURL fileURLWithPath:@"/var/mobile/Media/Books"];
  v6 = [(XPCAppRemovalService *)self _deleteAllFilesInDirectory:v5 except:&off_100004178];

  if (v6)
  {
    v7 = v6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "iBooksAppRemoval: Finished removing iBooks data from device.", v8, 2u);
  }

  v4[2](v4, v6);
}

- (id)_deleteAllFilesInDirectory:(id)a3 except:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v8 = [v5 path];
  v9 = [v7 enumeratorAtPath:v8];
  v10 = [v9 nextObject];
  if (!v10)
  {
    v14 = 0;
    goto LABEL_16;
  }

  while ([v6 containsObject:v10])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "iBooksAppRemoval: Skipping exception %@.", buf, 0xCu);
    }

    [v9 skipDescendants];
LABEL_10:
    v13 = [v9 nextObject];

    v10 = v13;
    if (!v13)
    {
      v14 = 0;
      goto LABEL_16;
    }
  }

  v11 = [v8 stringByAppendingPathComponent:v10];
  v16 = 0;
  [v7 removeItemAtPath:v11 error:&v16];
  v12 = v16;
  if (!v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "iBooksAppRemoval: Removed item: %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v14 = v12;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100001158(v11);
  }

LABEL_16:

  return v14;
}

@end