@interface AVTArchiverBasedStorePersistence
+ (BOOL)_createStoreEmptyFileIfNeededAtLocation:(id)location logger:(id)logger fileManager:(id)manager error:(id *)error;
+ (BOOL)_createStoreFolderIfNeededAtLocation:(id)location logger:(id)logger fileManager:(id)manager error:(id *)error;
+ (BOOL)_createStoreIfNeededAtLocation:(id)location logger:(id)logger error:(id *)error;
+ (BOOL)_migrateFromPre0_5ToCurrentForStoreAtLocation:(id)location logger:(id)logger fileManager:(id)manager error:(id *)error;
+ (BOOL)_migrateFromPre0_6ToCurrentForStoreAtLocation:(id)location logger:(id)logger fileManager:(id)manager error:(id *)error;
+ (BOOL)_performMigrationIfNeededForStoreAtLocation:(id)location logger:(id)logger fileManager:(id)manager error:(id *)error;
+ (BOOL)_writeContent:(id)content toDiskAtLocation:(id)location logger:(id)logger error:(id *)error;
+ (BOOL)contentExistsAtLocation:(id)location;
+ (BOOL)isFileNotFoundError:(id)error;
+ (BOOL)removeFilesAtLocation:(id)location error:(id *)error;
+ (BOOL)writeContent:(id)content toDiskAtLocation:(id)location logger:(id)logger error:(id *)error;
+ (id)_migrateDifferentAvatarKitVersionsForContent:(id)content logger:(id)logger;
+ (id)_readContentFromDiskAtLocation:(id)location logger:(id)logger error:(id *)error;
+ (id)readContentFromDiskAtLocation:(id)location logger:(id)logger error:(id *)error;
@end

@implementation AVTArchiverBasedStorePersistence

+ (BOOL)contentExistsAtLocation:(id)location
{
  v4 = MEMORY[0x277CCAA00];
  locationCopy = location;
  v6 = objc_alloc_init(v4);
  v7 = [self dbLocationForStoreLocation:locationCopy];

  path = [v7 path];
  v9 = [v6 fileExistsAtPath:path];

  return v9;
}

+ (BOOL)removeFilesAtLocation:(id)location error:(id *)error
{
  v6 = MEMORY[0x277CCAA00];
  locationCopy = location;
  v8 = objc_alloc_init(v6);
  v9 = [self dbLocationForStoreLocation:locationCopy];
  v10 = [AVTBackendVersion versionFileLocationForStoreLocation:locationCopy];

  path = [v9 path];
  v12 = [v8 fileExistsAtPath:path];

  v15 = 0;
  if (!v12 || [v8 removeItemAtURL:v9 error:error])
  {
    path2 = [v10 path];
    v14 = [v8 fileExistsAtPath:path2];

    if (!v14 || [v8 removeItemAtURL:v10 error:error])
    {
      v15 = 1;
    }
  }

  return v15;
}

+ (BOOL)isFileNotFoundError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqual:*MEMORY[0x277CCA050]])
  {
    v5 = [errorCopy code] == 260 || objc_msgSend(errorCopy, "code") == 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)readContentFromDiskAtLocation:(id)location logger:(id)logger error:(id *)error
{
  locationCopy = location;
  loggerCopy = logger;
  v16 = 0;
  v10 = [self _createStoreIfNeededAtLocation:locationCopy logger:loggerCopy error:&v16];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v13 = [self _readContentFromDiskAtLocation:locationCopy logger:loggerCopy error:error];
  }

  else if (error)
  {
    v14 = v11;
    v13 = 0;
    *error = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_readContentFromDiskAtLocation:(id)location logger:(id)logger error:(id *)error
{
  loggerCopy = logger;
  locationCopy = location;
  path = [locationCopy path];
  [loggerCopy logReadingBackendAtPath:path];

  v11 = [self dbLocationForStoreLocation:locationCopy];

  v23 = 0;
  v12 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v11 options:0 error:&v23];
  v13 = v23;
  if (v12 || ([self isFileNotFoundError:v13] & 1) != 0)
  {
    if ([v12 length])
    {
      v22 = v13;
      v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v22];
      v15 = v22;

      if (!v14)
      {
        if (error)
        {
          v16 = v15;
          *error = v15;
        }

        v17 = [v15 description];
        [loggerCopy logReadingError:v17];

        v14 = 0;
      }

      v13 = v15;
    }

    else
    {
      v18 = [AVTArchiverBasedStoreRoot alloc];
      v14 = [(AVTArchiverBasedStoreRoot *)v18 initWithDomains:MEMORY[0x277CBEBF8] records:MEMORY[0x277CBEBF8]];
    }
  }

  else
  {
    if (error)
    {
      v19 = v13;
      *error = v13;
    }

    v20 = [v13 description];
    [loggerCopy logReadingError:v20];

    v14 = 0;
  }

  return v14;
}

+ (BOOL)writeContent:(id)content toDiskAtLocation:(id)location logger:(id)logger error:(id *)error
{
  contentCopy = content;
  locationCopy = location;
  loggerCopy = logger;
  [loggerCopy logSavingBackend];
  v13 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v28 = 0;
  v14 = [self _createStoreFolderIfNeededAtLocation:locationCopy logger:loggerCopy fileManager:v13 error:&v28];
  v15 = v28;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    if (error)
    {
      v22 = v15;
      *error = v16;
    }

    v23 = [v16 description];
    [loggerCopy logSavingError:v23];
    goto LABEL_8;
  }

  v27 = v15;
  v17 = [self _writeContent:contentCopy toDiskAtLocation:locationCopy logger:loggerCopy error:&v27];
  v18 = v27;

  if (!v17)
  {
    v21 = 0;
    goto LABEL_11;
  }

  currentVersion = [self currentVersion];
  v26 = v18;
  v20 = [self writeVersion:currentVersion toDiskAtLocation:locationCopy error:&v26];
  v16 = v26;

  if ((v20 & 1) == 0)
  {
    if (error)
    {
      v25 = v16;
      *error = v16;
    }

    v23 = [v16 description];
    [loggerCopy logErrorUpdatingVersion:v23];
LABEL_8:

    v21 = 0;
    goto LABEL_9;
  }

  v21 = 1;
LABEL_9:
  v18 = v16;
LABEL_11:

  return v21;
}

+ (BOOL)_writeContent:(id)content toDiskAtLocation:(id)location logger:(id)logger error:(id *)error
{
  locationCopy = location;
  loggerCopy = logger;
  v23 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:content requiringSecureCoding:1 error:&v23];
  v13 = v23;
  v14 = v13;
  if (v12)
  {
    v15 = [self dbLocationForStoreLocation:locationCopy];
    v22 = v14;
    v16 = [v12 writeToURL:v15 options:AVTDefaultFileProtectionDataWritingOptions() | 1 error:&v22];
    v17 = v22;

    if ((v16 & 1) == 0)
    {
      if (error)
      {
        v18 = v17;
        *error = v17;
      }

      v19 = [v17 description];
      [loggerCopy logSavingError:v19];
    }

    v14 = v17;
  }

  else
  {
    if (error)
    {
      v20 = v13;
      *error = v14;
    }

    v15 = [v14 description];
    [loggerCopy logSavingError:v15];
    v16 = 0;
  }

  return v16;
}

+ (BOOL)_createStoreIfNeededAtLocation:(id)location logger:(id)logger error:(id *)error
{
  locationCopy = location;
  loggerCopy = logger;
  v10 = objc_alloc_init(MEMORY[0x277CCAA00]);
  if ([self _performMigrationIfNeededForStoreAtLocation:locationCopy logger:loggerCopy fileManager:v10 error:error] && objc_msgSend(self, "_createStoreFolderIfNeededAtLocation:logger:fileManager:error:", locationCopy, loggerCopy, v10, error))
  {
    v11 = [self dbLocationForStoreLocation:locationCopy];
    v12 = [self _createStoreEmptyFileIfNeededAtLocation:v11 logger:loggerCopy fileManager:v10 error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)_performMigrationIfNeededForStoreAtLocation:(id)location logger:(id)logger fileManager:(id)manager error:(id *)error
{
  locationCopy = location;
  loggerCopy = logger;
  managerCopy = manager;
  v30 = 0;
  v13 = [self readVersionForStoreAtLocation:locationCopy error:&v30];
  v14 = v30;
  if (v13 || ([self isFileNotFoundError:v14] & 1) != 0)
  {
    currentVersion = [self currentVersion];
    if (!(v13 | currentVersion) || ([v13 isEqual:currentVersion] & 1) != 0)
    {
      v16 = 1;
LABEL_6:

      goto LABEL_7;
    }

    v18 = [v13 description];
    v19 = [currentVersion description];
    [loggerCopy logBackendVersionMismatch:v18 actual:v19];

    if (v13 && ([v13 backendVersion], v20 >= 0.5) && (objc_msgSend(v13, "backendVersion"), v22 = v21, objc_msgSend(currentVersion, "backendVersion"), v22 <= v23))
    {
      [v13 backendVersion];
      if (v29 >= 0.6 || [self _migrateFromPre0_6ToCurrentForStoreAtLocation:locationCopy logger:loggerCopy fileManager:managerCopy error:error])
      {
LABEL_12:
        v24 = [self _readContentFromDiskAtLocation:locationCopy logger:loggerCopy error:error];
        if (!v24)
        {
          goto LABEL_20;
        }

        [v13 avatarKitVersion];
        if (v25 < 12.0)
        {
          v26 = [self _migrateDifferentAvatarKitVersionsForContent:v24 logger:loggerCopy];

          v24 = v26;
        }

        if ([self _createStoreFolderIfNeededAtLocation:locationCopy logger:loggerCopy fileManager:managerCopy error:error] && objc_msgSend(self, "_writeContent:toDiskAtLocation:logger:error:", v24, locationCopy, loggerCopy, error))
        {
          currentVersion2 = [self currentVersion];
          v16 = [self writeVersion:currentVersion2 toDiskAtLocation:locationCopy error:error];
        }

        else
        {
LABEL_20:
          v16 = 0;
        }

        goto LABEL_6;
      }
    }

    else if ([self _migrateFromPre0_5ToCurrentForStoreAtLocation:locationCopy logger:loggerCopy fileManager:managerCopy error:error])
    {
      goto LABEL_12;
    }

    v16 = 0;
    goto LABEL_6;
  }

  if (error)
  {
    v28 = v14;
    v16 = 0;
    *error = v14;
  }

  else
  {
    v16 = 0;
  }

LABEL_7:

  return v16;
}

+ (BOOL)_migrateFromPre0_5ToCurrentForStoreAtLocation:(id)location logger:(id)logger fileManager:(id)manager error:(id *)error
{
  locationCopy = location;
  managerCopy = manager;
  path = [locationCopy path];
  v11 = [managerCopy fileExistsAtPath:path];

  if (v11)
  {
    v12 = [managerCopy removeItemAtURL:locationCopy error:error];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

+ (BOOL)_migrateFromPre0_6ToCurrentForStoreAtLocation:(id)location logger:(id)logger fileManager:(id)manager error:(id *)error
{
  locationCopy = location;
  managerCopy = manager;
  path = [locationCopy path];
  v11 = [managerCopy fileExistsAtPath:path];

  if (v11)
  {
    path2 = [locationCopy path];
    v13 = [managerCopy attributesOfItemAtPath:path2 error:error];
    v14 = [v13 mutableCopy];

    if (v14)
    {
      v15 = *MEMORY[0x277CCA1B0];
      v16 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCA1B0]];
      v17 = AVTDefaultFileProtectionType();
      v18 = [v16 isEqual:v17];

      if (v18)
      {
        v19 = 1;
      }

      else
      {
        v20 = AVTDefaultFileProtectionType();
        [v14 setObject:v20 forKeyedSubscript:v15];

        path3 = [locationCopy path];
        v19 = [managerCopy setAttributes:v14 ofItemAtPath:path3 error:error];
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

+ (id)_migrateDifferentAvatarKitVersionsForContent:(id)content logger:(id)logger
{
  v26 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  loggerCopy = logger;
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  records = [contentCopy records];
  v9 = [records countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(records);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        avatarData = [v13 avatarData];
        if ([AVTAvatarRecord canLoadAvatarWithData:avatarData])
        {
          [array addObject:v13];
        }

        else
        {
          v15 = [v13 description];
          [loggerCopy logDroppingUnsupportedAvatarRecord:v15];
        }
      }

      v10 = [records countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = [AVTArchiverBasedStoreRoot alloc];
  domains = [contentCopy domains];
  v18 = [(AVTArchiverBasedStoreRoot *)v16 initWithDomains:domains records:array];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (BOOL)_createStoreFolderIfNeededAtLocation:(id)location logger:(id)logger fileManager:(id)manager error:(id *)error
{
  locationCopy = location;
  loggerCopy = logger;
  managerCopy = manager;
  path = [locationCopy path];
  v13 = [managerCopy fileExistsAtPath:path];

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    path2 = [locationCopy path];
    [loggerCopy logCreatingBackendFolderAtPath:path2];

    v14 = 1;
    if (([managerCopy createDirectoryAtURL:locationCopy withIntermediateDirectories:1 attributes:0 error:error] & 1) == 0)
    {
      v16 = [*error description];
      [loggerCopy logErrorCreatingBackendContent:v16];

      v14 = 0;
    }
  }

  return v14;
}

+ (BOOL)_createStoreEmptyFileIfNeededAtLocation:(id)location logger:(id)logger fileManager:(id)manager error:(id *)error
{
  locationCopy = location;
  loggerCopy = logger;
  managerCopy = manager;
  path = [locationCopy path];
  v13 = [managerCopy fileExistsAtPath:path];

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    path2 = [locationCopy path];
    [loggerCopy logCreatingBackendDBAtPath:path2];

    v16 = objc_alloc_init(MEMORY[0x277CBEA90]);
    v14 = 1;
    v17 = [v16 writeToURL:locationCopy options:1 error:error];

    if ((v17 & 1) == 0)
    {
      v18 = [*error description];
      [loggerCopy logErrorCreatingBackendContent:v18];

      v14 = 0;
    }
  }

  return v14;
}

@end