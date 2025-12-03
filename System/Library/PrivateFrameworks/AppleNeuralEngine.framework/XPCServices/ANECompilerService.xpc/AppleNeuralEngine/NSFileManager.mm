@interface NSFileManager
+ (BOOL)ane_addWriteModeForPath:(id)path;
+ (BOOL)ane_addWriteModeIfMissing:(id)missing originalMode:(unsigned __int16)mode;
@end

@implementation NSFileManager

+ (BOOL)ane_addWriteModeIfMissing:(id)missing originalMode:(unsigned __int16)mode
{
  modeCopy = mode;
  missingCopy = missing;
  v7 = missingCopy;
  if ((modeCopy & 0x80) == 0 && chmod([missingCopy fileSystemRepresentation], modeCopy | 0x80) == -1)
  {
    v10 = +[_ANELog common];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = *__error();
      v13 = 138413058;
      v14 = v11;
      v15 = 2112;
      v16 = v7;
      v17 = 1024;
      v18 = modeCopy;
      v19 = 1024;
      v20 = v12;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@: fail to chmod (%@) with originalMode=0x%x errno=%{darwin:errno}d", &v13, 0x22u);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)ane_addWriteModeForPath:(id)path
{
  pathCopy = path;
  v6 = +[NSFileManager defaultManager];
  memset(&v19, 0, sizeof(v19));
  if (stat([pathCopy fileSystemRepresentation], &v19) == -1)
  {
    v8 = +[_ANELog common];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100011380(a2, pathCopy, v8);
    }

    v7 = 0;
  }

  else
  {
    v7 = [self ane_addWriteModeIfMissing:pathCopy originalMode:v19.st_mode];
  }

  v18 = v6;
  v9 = [v6 enumeratorAtPath:pathCopy];
  nextObject = [v9 nextObject];
  if (nextObject)
  {
    v11 = nextObject;
    do
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [pathCopy stringByAppendingPathComponent:v11];
      fileAttributes = [v9 fileAttributes];
      v15 = [fileAttributes objectForKeyedSubscript:NSFilePosixPermissions];

      v7 &= [self ane_addWriteModeIfMissing:v13 originalMode:{objc_msgSend(v15, "unsignedShortValue")}];
      objc_autoreleasePoolPop(v12);
      nextObject2 = [v9 nextObject];

      v11 = nextObject2;
    }

    while (nextObject2);
  }

  return v7;
}

@end