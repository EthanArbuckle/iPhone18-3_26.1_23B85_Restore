@interface NSFileManager
+ (BOOL)ane_addWriteModeForPath:(id)a3;
+ (BOOL)ane_addWriteModeIfMissing:(id)a3 originalMode:(unsigned __int16)a4;
@end

@implementation NSFileManager

+ (BOOL)ane_addWriteModeIfMissing:(id)a3 originalMode:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if ((v4 & 0x80) == 0 && chmod([v6 fileSystemRepresentation], v4 | 0x80) == -1)
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
      v18 = v4;
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

+ (BOOL)ane_addWriteModeForPath:(id)a3
{
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  memset(&v19, 0, sizeof(v19));
  if (stat([v5 fileSystemRepresentation], &v19) == -1)
  {
    v8 = +[_ANELog common];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100011380(a2, v5, v8);
    }

    v7 = 0;
  }

  else
  {
    v7 = [a1 ane_addWriteModeIfMissing:v5 originalMode:v19.st_mode];
  }

  v18 = v6;
  v9 = [v6 enumeratorAtPath:v5];
  v10 = [v9 nextObject];
  if (v10)
  {
    v11 = v10;
    do
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [v5 stringByAppendingPathComponent:v11];
      v14 = [v9 fileAttributes];
      v15 = [v14 objectForKeyedSubscript:NSFilePosixPermissions];

      v7 &= [a1 ane_addWriteModeIfMissing:v13 originalMode:{objc_msgSend(v15, "unsignedShortValue")}];
      objc_autoreleasePoolPop(v12);
      v16 = [v9 nextObject];

      v11 = v16;
    }

    while (v16);
  }

  return v7;
}

@end