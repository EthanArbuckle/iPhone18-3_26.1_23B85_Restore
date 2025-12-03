@interface IMUbiquitousPersistentStoreLoader
+ (id)databaseFolderURL;
- (BOOL)storeFileExists;
- (IMUbiquitousPersistentStoreLoader)init;
- (IMUbiquitousPersistentStoreLoader)initWithIdentifier:(id)identifier;
- (IMUbiquitousPersistentStoreLoader)initWithPersistentStoreURL:(id)l;
- (NSURL)storeURL;
- (id)addPersistentStoreToPersistentStoreCoordinator:(id)coordinator;
- (id)addPersistentStoreToPersistentStoreCoordinator:(id)coordinator withType:(id)type configuration:(id)configuration URL:(id)l options:(id)options;
- (void)deletePersistentStore;
@end

@implementation IMUbiquitousPersistentStoreLoader

- (IMUbiquitousPersistentStoreLoader)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = IMUbiquitousPersistentStoreLoader;
  v5 = [(IMUbiquitousPersistentStoreLoader *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (IMUbiquitousPersistentStoreLoader)initWithPersistentStoreURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = IMUbiquitousPersistentStoreLoader;
  v6 = [(IMUbiquitousPersistentStoreLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentStoreURL, l);
  }

  return v7;
}

- (IMUbiquitousPersistentStoreLoader)init
{
  v3 = NSStringFromSelector("initWithIdentifier:");
  v4 = NSStringFromSelector("initWithPersistentStoreURL:");
  [NSException raise:NSGenericException format:@"Please use one of the defaultInitializers {%@} or {%@}", v3, v4];

  return 0;
}

- (id)addPersistentStoreToPersistentStoreCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [NSNumber numberWithBool:1];
  [v5 setValue:v6 forKey:NSMigratePersistentStoresAutomaticallyOption];

  v7 = [NSNumber numberWithBool:1];
  [v5 setValue:v7 forKey:NSInferMappingModelAutomaticallyOption];

  storeURL = [(IMUbiquitousPersistentStoreLoader *)self storeURL];
  v9 = [(IMUbiquitousPersistentStoreLoader *)self addPersistentStoreToPersistentStoreCoordinator:coordinatorCopy withType:NSSQLiteStoreType configuration:0 URL:storeURL options:v5];
  if (!v9)
  {
    v10 = BCIMLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v14 = "[IMUbiquitousPersistentStoreLoader addPersistentStoreToPersistentStoreCoordinator:]";
      v15 = 2080;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Database/BCUbiquitousPersistentStoreLoader.m";
      v17 = 1024;
      v18 = 78;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v11 = BCIMLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = coordinatorCopy;
      v15 = 2112;
      v16 = storeURL;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "@Failed to add persistentStore at URL: %@ Error: %@ -- Crashing to avoid data loss", buf, 0x16u);
    }

    [NSException raise:NSGenericException format:@"%@ failed to add persistentStore to PSC: %@ at URL: %@", @"self", coordinatorCopy, storeURL];
  }

  return v9;
}

- (id)addPersistentStoreToPersistentStoreCoordinator:(id)coordinator withType:(id)type configuration:(id)configuration URL:(id)l options:(id)options
{
  coordinatorCopy = coordinator;
  typeCopy = type;
  configurationCopy = configuration;
  lCopy = l;
  optionsCopy = options;
  v87 = 0;
  v17 = [coordinatorCopy addPersistentStoreWithType:typeCopy configuration:configurationCopy URL:lCopy options:optionsCopy error:&v87];
  v71 = v87;
  if (v17)
  {
    v18 = v71;
  }

  else
  {
    object = self;
    v66 = configurationCopy;
    v69 = optionsCopy;
    v67 = typeCopy;
    v19 = BCIMLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v91 = @"self";
      v92 = 2112;
      v93 = coordinatorCopy;
      v94 = 2112;
      v95 = lCopy;
      v96 = 2112;
      v97 = v71;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%@ failed to add persistentStore to PSC: %@ at URL: %@ -- Error: %@", buf, 0x2Au);
    }

    v68 = coordinatorCopy;

    v70 = lCopy;
    path = [(__CFString *)lCopy path];
    v21 = +[NSFileManager defaultManager];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
    v75 = v21;
    v23 = [v21 enumeratorAtPath:stringByDeletingLastPathComponent];
    v76 = objc_opt_new();
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v83 objects:v89 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v84;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v84 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:*(*(&v83 + 1) + 8 * i)];
          if ([v29 hasPrefix:path] && (objc_msgSend(v29, "hasSuffix:", @"bak") & 1) == 0)
          {
            v30 = [NSURL fileURLWithPath:v29];
            [v76 addObject:v30];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v83 objects:v89 count:16];
      }

      while (v26);
    }

    v31 = [v76 count];
    v32 = BCIMLog();
    v33 = v32;
    if (v31)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "There is an existing persistentStore. Maybe the files are somehow corrupted -- Attempting Move and Retry", buf, 2u);
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v74 = [NSString stringWithFormat:@"%ld.%@", v34, @"bak"];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      obj = v76;
      v35 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v80;
        v38 = v71;
        while (2)
        {
          v39 = 0;
          v40 = v38;
          do
          {
            if (*v80 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v41 = *(*(&v79 + 1) + 8 * v39);
            v42 = [v41 URLByAppendingPathExtension:v74];
            v78 = v40;
            v43 = [v75 moveItemAtURL:v41 toURL:v42 error:&v78];
            v38 = v78;

            if (!v43)
            {

              v44 = BCIMLog();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                sub_1EAB54();
              }

              v17 = 0;
              typeCopy = v67;
              coordinatorCopy = v68;
              configurationCopy = v66;
              goto LABEL_49;
            }

            v39 = v39 + 1;
            v40 = v38;
          }

          while (v36 != v39);
          v36 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
          if (v36)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v38 = v71;
      }

      v59 = [(__CFString *)v70 URLByAppendingPathExtension:v74];
      v60 = BCIMLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v91 = v70;
        v92 = 2112;
        v93 = v59;
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "Successfully moved existing persistingStore from URL: %@ to URL: %@", buf, 0x16u);
      }

      obja = v59;

      v61 = objc_getAssociatedObject(object, @"kIMDidRetryAddPersistentStore");
      typeCopy = v67;
      coordinatorCopy = v68;
      configurationCopy = v66;
      if ([v61 BOOLValue])
      {
        v62 = BCIMLog();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          sub_1EABBC(v62);
        }

        v17 = 0;
      }

      else
      {
        v63 = [NSNumber numberWithBool:1];

        v61 = v63;
        objc_setAssociatedObject(object, @"kIMDidRetryAddPersistentStore", v63, &stru_2E8.segname[9]);
        v17 = [(IMUbiquitousPersistentStoreLoader *)object addPersistentStoreToPersistentStoreCoordinator:v68 withType:v67 configuration:v66 URL:v70 options:v69];
        if (v17)
        {
          objc_setAssociatedObject(object, @"kIMDidRetryAddPersistentStore", 0, &stru_2E8.segname[9]);
        }
      }

      v44 = obja;

LABEL_49:
      v49 = v38;
    }

    else
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1EAC00(v33);
      }

      path2 = [(__CFString *)lCopy path];
      v46 = [v75 isWritableFileAtPath:path2];

      typeCopy = v67;
      if (v46)
      {
        path3 = [(__CFString *)lCopy path];
        v77 = v71;
        v48 = [v75 attributesOfFileSystemForPath:path3 error:&v77];
        v49 = v77;

        v50 = BCIMLog();
        v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
        coordinatorCopy = v68;
        v74 = v48;
        if (v48)
        {
          configurationCopy = v66;
          if (v51)
          {
            sub_1EACAC();
          }
        }

        else
        {
          configurationCopy = v66;
          if (v51)
          {
            sub_1EAD14(v50, v52, v53, v54, v55, v56, v57, v58);
          }
        }

        v17 = 0;
      }

      else
      {
        v74 = BCIMLog();
        coordinatorCopy = v68;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          sub_1EAC44();
        }

        v17 = 0;
        v49 = v71;
        configurationCopy = v66;
      }
    }

    v18 = v49;
    optionsCopy = v69;
    lCopy = v70;
  }

  return v17;
}

- (BOOL)storeFileExists
{
  v3 = +[NSFileManager defaultManager];
  storeURL = [(IMUbiquitousPersistentStoreLoader *)self storeURL];
  path = [storeURL path];
  v6 = [v3 fileExistsAtPath:path];

  return v6;
}

- (void)deletePersistentStore
{
  storeURL = [(IMUbiquitousPersistentStoreLoader *)self storeURL];
  v3 = +[NSFileManager defaultManager];
  path = [storeURL path];
  v5 = [v3 fileExistsAtPath:path];

  if (v5)
  {
    v9 = 0;
    v6 = [v3 removeItemAtURL:storeURL error:&v9];
    v7 = v9;
    if ((v6 & 1) == 0)
    {
      v8 = BCIMLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1EAD84();
      }
    }
  }

  else
  {
    v7 = 0;
  }
}

+ (id)databaseFolderURL
{
  v2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [NSURL fileURLWithPath:lastObject isDirectory:1];
  v5 = [v4 URLByAppendingPathComponent:@"storeFiles"];

  return v5;
}

- (NSURL)storeURL
{
  persistentStoreURL = self->_persistentStoreURL;
  if (!persistentStoreURL)
  {
    databaseFolderURL = [objc_opt_class() databaseFolderURL];
    v5 = +[NSFileManager defaultManager];
    path = [databaseFolderURL path];
    v15 = 0;
    v7 = [v5 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v15];
    v8 = v15;

    if ((v7 & 1) == 0)
    {
      v9 = BCIMLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1EADEC();
      }
    }

    storeName = [(IMUbiquitousPersistentStoreLoader *)self storeName];
    identifier = [(IMUbiquitousPersistentStoreLoader *)self identifier];
    v12 = [NSString stringWithFormat:@"%@_%@.sqlite", storeName, identifier];
    v13 = [databaseFolderURL URLByAppendingPathComponent:v12];
    [(IMUbiquitousPersistentStoreLoader *)self setPersistentStoreURL:v13];

    persistentStoreURL = self->_persistentStoreURL;
  }

  return persistentStoreURL;
}

@end