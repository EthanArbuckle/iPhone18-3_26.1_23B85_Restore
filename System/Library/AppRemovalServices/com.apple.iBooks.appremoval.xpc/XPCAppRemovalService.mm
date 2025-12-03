@interface XPCAppRemovalService
- (id)_deleteAllFilesInDirectory:(id)directory except:(id)except;
- (void)removeAppWithReply:(id)reply;
@end

@implementation XPCAppRemovalService

- (void)removeAppWithReply:(id)reply
{
  replyCopy = reply;
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

  replyCopy[2](replyCopy, v6);
}

- (id)_deleteAllFilesInDirectory:(id)directory except:(id)except
{
  directoryCopy = directory;
  exceptCopy = except;
  v7 = +[NSFileManager defaultManager];
  path = [directoryCopy path];
  v9 = [v7 enumeratorAtPath:path];
  nextObject = [v9 nextObject];
  if (!nextObject)
  {
    v14 = 0;
    goto LABEL_16;
  }

  while ([exceptCopy containsObject:nextObject])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = nextObject;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "iBooksAppRemoval: Skipping exception %@.", buf, 0xCu);
    }

    [v9 skipDescendants];
LABEL_10:
    nextObject2 = [v9 nextObject];

    nextObject = nextObject2;
    if (!nextObject2)
    {
      v14 = 0;
      goto LABEL_16;
    }
  }

  v11 = [path stringByAppendingPathComponent:nextObject];
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