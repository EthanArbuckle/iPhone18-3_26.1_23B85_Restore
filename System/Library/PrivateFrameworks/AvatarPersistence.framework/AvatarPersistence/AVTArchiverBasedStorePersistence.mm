@interface AVTArchiverBasedStorePersistence
+ (BOOL)_createStoreEmptyFileIfNeededAtLocation:(id)a3 logger:(id)a4 fileManager:(id)a5 error:(id *)a6;
+ (BOOL)_createStoreFolderIfNeededAtLocation:(id)a3 logger:(id)a4 fileManager:(id)a5 error:(id *)a6;
+ (BOOL)_createStoreIfNeededAtLocation:(id)a3 logger:(id)a4 error:(id *)a5;
+ (BOOL)_migrateFromPre0_5ToCurrentForStoreAtLocation:(id)a3 logger:(id)a4 fileManager:(id)a5 error:(id *)a6;
+ (BOOL)_migrateFromPre0_6ToCurrentForStoreAtLocation:(id)a3 logger:(id)a4 fileManager:(id)a5 error:(id *)a6;
+ (BOOL)_performMigrationIfNeededForStoreAtLocation:(id)a3 logger:(id)a4 fileManager:(id)a5 error:(id *)a6;
+ (BOOL)_writeContent:(id)a3 toDiskAtLocation:(id)a4 logger:(id)a5 error:(id *)a6;
+ (BOOL)contentExistsAtLocation:(id)a3;
+ (BOOL)isFileNotFoundError:(id)a3;
+ (BOOL)removeFilesAtLocation:(id)a3 error:(id *)a4;
+ (BOOL)writeContent:(id)a3 toDiskAtLocation:(id)a4 logger:(id)a5 error:(id *)a6;
+ (id)_migrateDifferentAvatarKitVersionsForContent:(id)a3 logger:(id)a4;
+ (id)_readContentFromDiskAtLocation:(id)a3 logger:(id)a4 error:(id *)a5;
+ (id)readContentFromDiskAtLocation:(id)a3 logger:(id)a4 error:(id *)a5;
@end

@implementation AVTArchiverBasedStorePersistence

+ (BOOL)contentExistsAtLocation:(id)a3
{
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [a1 dbLocationForStoreLocation:v5];

  v8 = [v7 path];
  v9 = [v6 fileExistsAtPath:v8];

  return v9;
}

+ (BOOL)removeFilesAtLocation:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCAA00];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [a1 dbLocationForStoreLocation:v7];
  v10 = [AVTBackendVersion versionFileLocationForStoreLocation:v7];

  v11 = [v9 path];
  v12 = [v8 fileExistsAtPath:v11];

  v15 = 0;
  if (!v12 || [v8 removeItemAtURL:v9 error:a4])
  {
    v13 = [v10 path];
    v14 = [v8 fileExistsAtPath:v13];

    if (!v14 || [v8 removeItemAtURL:v10 error:a4])
    {
      v15 = 1;
    }
  }

  return v15;
}

+ (BOOL)isFileNotFoundError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqual:*MEMORY[0x277CCA050]])
  {
    v5 = [v3 code] == 260 || objc_msgSend(v3, "code") == 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)readContentFromDiskAtLocation:(id)a3 logger:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v16 = 0;
  v10 = [a1 _createStoreIfNeededAtLocation:v8 logger:v9 error:&v16];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v13 = [a1 _readContentFromDiskAtLocation:v8 logger:v9 error:a5];
  }

  else if (a5)
  {
    v14 = v11;
    v13 = 0;
    *a5 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_readContentFromDiskAtLocation:(id)a3 logger:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 path];
  [v8 logReadingBackendAtPath:v10];

  v11 = [a1 dbLocationForStoreLocation:v9];

  v23 = 0;
  v12 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v11 options:0 error:&v23];
  v13 = v23;
  if (v12 || ([a1 isFileNotFoundError:v13] & 1) != 0)
  {
    if ([v12 length])
    {
      v22 = v13;
      v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v22];
      v15 = v22;

      if (!v14)
      {
        if (a5)
        {
          v16 = v15;
          *a5 = v15;
        }

        v17 = [v15 description];
        [v8 logReadingError:v17];

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
    if (a5)
    {
      v19 = v13;
      *a5 = v13;
    }

    v20 = [v13 description];
    [v8 logReadingError:v20];

    v14 = 0;
  }

  return v14;
}

+ (BOOL)writeContent:(id)a3 toDiskAtLocation:(id)a4 logger:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [v12 logSavingBackend];
  v13 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v28 = 0;
  v14 = [a1 _createStoreFolderIfNeededAtLocation:v11 logger:v12 fileManager:v13 error:&v28];
  v15 = v28;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    if (a6)
    {
      v22 = v15;
      *a6 = v16;
    }

    v23 = [v16 description];
    [v12 logSavingError:v23];
    goto LABEL_8;
  }

  v27 = v15;
  v17 = [a1 _writeContent:v10 toDiskAtLocation:v11 logger:v12 error:&v27];
  v18 = v27;

  if (!v17)
  {
    v21 = 0;
    goto LABEL_11;
  }

  v19 = [a1 currentVersion];
  v26 = v18;
  v20 = [a1 writeVersion:v19 toDiskAtLocation:v11 error:&v26];
  v16 = v26;

  if ((v20 & 1) == 0)
  {
    if (a6)
    {
      v25 = v16;
      *a6 = v16;
    }

    v23 = [v16 description];
    [v12 logErrorUpdatingVersion:v23];
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

+ (BOOL)_writeContent:(id)a3 toDiskAtLocation:(id)a4 logger:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v23 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v23];
  v13 = v23;
  v14 = v13;
  if (v12)
  {
    v15 = [a1 dbLocationForStoreLocation:v10];
    v22 = v14;
    v16 = [v12 writeToURL:v15 options:AVTDefaultFileProtectionDataWritingOptions() | 1 error:&v22];
    v17 = v22;

    if ((v16 & 1) == 0)
    {
      if (a6)
      {
        v18 = v17;
        *a6 = v17;
      }

      v19 = [v17 description];
      [v11 logSavingError:v19];
    }

    v14 = v17;
  }

  else
  {
    if (a6)
    {
      v20 = v13;
      *a6 = v14;
    }

    v15 = [v14 description];
    [v11 logSavingError:v15];
    v16 = 0;
  }

  return v16;
}

+ (BOOL)_createStoreIfNeededAtLocation:(id)a3 logger:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CCAA00]);
  if ([a1 _performMigrationIfNeededForStoreAtLocation:v8 logger:v9 fileManager:v10 error:a5] && objc_msgSend(a1, "_createStoreFolderIfNeededAtLocation:logger:fileManager:error:", v8, v9, v10, a5))
  {
    v11 = [a1 dbLocationForStoreLocation:v8];
    v12 = [a1 _createStoreEmptyFileIfNeededAtLocation:v11 logger:v9 fileManager:v10 error:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)_performMigrationIfNeededForStoreAtLocation:(id)a3 logger:(id)a4 fileManager:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v30 = 0;
  v13 = [a1 readVersionForStoreAtLocation:v10 error:&v30];
  v14 = v30;
  if (v13 || ([a1 isFileNotFoundError:v14] & 1) != 0)
  {
    v15 = [a1 currentVersion];
    if (!(v13 | v15) || ([v13 isEqual:v15] & 1) != 0)
    {
      v16 = 1;
LABEL_6:

      goto LABEL_7;
    }

    v18 = [v13 description];
    v19 = [v15 description];
    [v11 logBackendVersionMismatch:v18 actual:v19];

    if (v13 && ([v13 backendVersion], v20 >= 0.5) && (objc_msgSend(v13, "backendVersion"), v22 = v21, objc_msgSend(v15, "backendVersion"), v22 <= v23))
    {
      [v13 backendVersion];
      if (v29 >= 0.6 || [a1 _migrateFromPre0_6ToCurrentForStoreAtLocation:v10 logger:v11 fileManager:v12 error:a6])
      {
LABEL_12:
        v24 = [a1 _readContentFromDiskAtLocation:v10 logger:v11 error:a6];
        if (!v24)
        {
          goto LABEL_20;
        }

        [v13 avatarKitVersion];
        if (v25 < 12.0)
        {
          v26 = [a1 _migrateDifferentAvatarKitVersionsForContent:v24 logger:v11];

          v24 = v26;
        }

        if ([a1 _createStoreFolderIfNeededAtLocation:v10 logger:v11 fileManager:v12 error:a6] && objc_msgSend(a1, "_writeContent:toDiskAtLocation:logger:error:", v24, v10, v11, a6))
        {
          v27 = [a1 currentVersion];
          v16 = [a1 writeVersion:v27 toDiskAtLocation:v10 error:a6];
        }

        else
        {
LABEL_20:
          v16 = 0;
        }

        goto LABEL_6;
      }
    }

    else if ([a1 _migrateFromPre0_5ToCurrentForStoreAtLocation:v10 logger:v11 fileManager:v12 error:a6])
    {
      goto LABEL_12;
    }

    v16 = 0;
    goto LABEL_6;
  }

  if (a6)
  {
    v28 = v14;
    v16 = 0;
    *a6 = v14;
  }

  else
  {
    v16 = 0;
  }

LABEL_7:

  return v16;
}

+ (BOOL)_migrateFromPre0_5ToCurrentForStoreAtLocation:(id)a3 logger:(id)a4 fileManager:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 path];
  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = [v9 removeItemAtURL:v8 error:a6];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

+ (BOOL)_migrateFromPre0_6ToCurrentForStoreAtLocation:(id)a3 logger:(id)a4 fileManager:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 path];
  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = [v8 path];
    v13 = [v9 attributesOfItemAtPath:v12 error:a6];
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

        v21 = [v8 path];
        v19 = [v9 setAttributes:v14 ofItemAtPath:v21 error:a6];
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

+ (id)_migrateDifferentAvatarKitVersionsForContent:(id)a3 logger:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v5 records];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 avatarData];
        if ([AVTAvatarRecord canLoadAvatarWithData:v14])
        {
          [v7 addObject:v13];
        }

        else
        {
          v15 = [v13 description];
          [v6 logDroppingUnsupportedAvatarRecord:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = [AVTArchiverBasedStoreRoot alloc];
  v17 = [v5 domains];
  v18 = [(AVTArchiverBasedStoreRoot *)v16 initWithDomains:v17 records:v7];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (BOOL)_createStoreFolderIfNeededAtLocation:(id)a3 logger:(id)a4 fileManager:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 path];
  v13 = [v11 fileExistsAtPath:v12];

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v15 = [v9 path];
    [v10 logCreatingBackendFolderAtPath:v15];

    v14 = 1;
    if (([v11 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:a6] & 1) == 0)
    {
      v16 = [*a6 description];
      [v10 logErrorCreatingBackendContent:v16];

      v14 = 0;
    }
  }

  return v14;
}

+ (BOOL)_createStoreEmptyFileIfNeededAtLocation:(id)a3 logger:(id)a4 fileManager:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 path];
  v13 = [v11 fileExistsAtPath:v12];

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v15 = [v9 path];
    [v10 logCreatingBackendDBAtPath:v15];

    v16 = objc_alloc_init(MEMORY[0x277CBEA90]);
    v14 = 1;
    v17 = [v16 writeToURL:v9 options:1 error:a6];

    if ((v17 & 1) == 0)
    {
      v18 = [*a6 description];
      [v10 logErrorCreatingBackendContent:v18];

      v14 = 0;
    }
  }

  return v14;
}

@end