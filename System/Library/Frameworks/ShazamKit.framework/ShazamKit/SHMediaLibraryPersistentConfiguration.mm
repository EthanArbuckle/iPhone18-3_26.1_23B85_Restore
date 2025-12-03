@interface SHMediaLibraryPersistentConfiguration
+ (NSURL)managedObjectModelURL;
+ (id)applicationSupportDirectory;
+ (id)persistentStoreDescriptionForStoreType:(id)type;
+ (id)persistentStoreURL;
@end

@implementation SHMediaLibraryPersistentConfiguration

+ (NSURL)managedObjectModelURL
{
  if (qword_1000982E8 != -1)
  {
    sub_100031FC4();
  }

  v3 = qword_1000982E0;

  return v3;
}

+ (id)applicationSupportDirectory
{
  v2 = +[NSFileManager defaultManager];
  v7 = 0;
  v3 = [v2 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:0 error:&v7];
  v4 = v7;

  if (!v3)
  {
    v5 = sh_log_object();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to load Application Support directory: %@", buf, 0xCu);
    }
  }

  return v3;
}

+ (id)persistentStoreURL
{
  applicationSupportDirectory = [self applicationSupportDirectory];
  v3 = [applicationSupportDirectory URLByAppendingPathComponent:@"com.apple.shazamd" isDirectory:1];

  path = [v3 path];

  if (!path)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v5 = +[NSFileManager defaultManager];
  path2 = [v3 path];
  v7 = [v5 fileExistsAtPath:path2 isDirectory:0];

  if ((v7 & 1) == 0)
  {
    v8 = sh_log_object();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Parent directory of persistent store url doesn't exist, creating one now", buf, 2u);
    }

    v9 = +[NSFileManager defaultManager];
    path3 = [v3 path];
    v16 = 0;
    v11 = [v9 createDirectoryAtPath:path3 withIntermediateDirectories:1 attributes:0 error:&v16];
    v12 = v16;

    if ((v11 & 1) == 0)
    {
      v14 = sh_log_object();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create persistent store directory: %@", buf, 0xCu);
      }

      v13 = 0;
      goto LABEL_12;
    }
  }

  v12 = [v3 URLByAppendingPathComponent:@"ShazamLibrary" isDirectory:0];
  v13 = [v12 URLByAppendingPathExtension:@"sqlite"];
LABEL_12:

LABEL_13:

  return v13;
}

+ (id)persistentStoreDescriptionForStoreType:(id)type
{
  typeCopy = type;
  v5 = objc_opt_new();
  [v5 setType:typeCopy];
  [v5 setShouldMigrateStoreAutomatically:1];
  [v5 setShouldInferMappingModelAutomatically:1];
  [v5 setUsesPersistentHistoryTracking:1];
  v6 = [typeCopy isEqualToString:NSInMemoryStoreType];

  if ((v6 & 1) == 0)
  {
    persistentStoreURL = [self persistentStoreURL];
    if (persistentStoreURL)
    {
      [v5 setURL:persistentStoreURL];
    }

    else
    {
      v8 = sh_log_object();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Persistent store url missing, fallback to in memory store type", v10, 2u);
      }
    }
  }

  return v5;
}

@end