@interface OctaneStorage
+ (id)_containerURL;
+ (id)_createDirectoryAtBaseURL:(id)l withPathComponent:(id)component;
+ (id)persistedDataPath;
@end

@implementation OctaneStorage

+ (id)persistedDataPath
{
  _containerURL = [self _containerURL];
  v4 = [self _createDirectoryAtBaseURL:_containerURL withPathComponent:@"Documents/Persistence"];

  path = [v4 path];

  return path;
}

+ (id)_createDirectoryAtBaseURL:(id)l withPathComponent:(id)component
{
  lCopy = l;
  componentCopy = component;
  v7 = [lCopy URLByAppendingPathComponent:componentCopy];
  if (v7)
  {
    v8 = v7;
    v9 = +[NSFileManager defaultManager];
    v19 = 0;
    v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v19];
    v11 = v19;

    if ((v10 & 1) == 0)
    {
      if (qword_1002BD368 != -1)
      {
        sub_1001F50B4();
      }

      if (os_log_type_enabled(qword_1002BD358, OS_LOG_TYPE_ERROR))
      {
        sub_1001F50DC();
      }

      v18 = 0;
      v12 = +[NSFileManager defaultManager];
      path = [v8 path];
      v14 = [v12 fileExistsAtPath:path isDirectory:&v18];
      v15 = v18;

      if (v14 && (v15 & 1) != 0)
      {
        if (qword_1002BD368 != -1)
        {
          sub_1001F50B4();
        }

        v16 = qword_1002BD358;
        if (os_log_type_enabled(qword_1002BD358, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v21 = v8;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Failed to create directory %{public}@, but directory exists.", buf, 0xCu);
        }
      }

      else
      {
        if (qword_1002BD368 != -1)
        {
          sub_1001F50B4();
        }

        if (os_log_type_enabled(qword_1002BD358, OS_LOG_TYPE_FAULT))
        {
          sub_1001F5154();
        }

        v8 = 0;
      }
    }
  }

  else
  {
    if (qword_1002BD368 != -1)
    {
      sub_1001F51BC();
    }

    if (os_log_type_enabled(qword_1002BD358, OS_LOG_TYPE_FAULT))
    {
      sub_1001F51D0();
    }

    v8 = 0;
    v11 = 0;
  }

  return v8;
}

+ (id)_containerURL
{
  if (qword_1002BD318 != -1)
  {
    sub_1001F5238();
  }

  v3 = qword_1002BD310;

  return v3;
}

@end