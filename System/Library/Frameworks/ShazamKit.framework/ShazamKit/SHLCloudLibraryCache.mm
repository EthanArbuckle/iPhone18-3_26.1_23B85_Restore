@interface SHLCloudLibraryCache
- (BOOL)commitTransactionWithError:(id *)a3;
- (BOOL)createBundleDirectory;
- (BOOL)createDatabaseInitialFetchVersionWithNumber:(id)a3 error:(id *)a4;
- (BOOL)createPrivateDatabaseFolderPathWithError:(id *)a3;
- (BOOL)createTaskFolderPaths;
- (BOOL)createZoneFolderPathWithError:(id *)a3;
- (BOOL)doesCacheDirectoryExist;
- (BOOL)doesDatabaseInitialFetchPathExist;
- (BOOL)doesDatabaseInitialFetchVersionMatchExpectedVersion:(id)a3;
- (BOOL)doesLegacyCacheDirectoryExist;
- (BOOL)doesPrivateDatabaseFolderPathExist;
- (BOOL)doesTaskFolderPathsExist;
- (BOOL)doesZoneFolderPathExist;
- (BOOL)hasPendingBatchChangesForAnyZone;
- (BOOL)initialFetchCompleted;
- (BOOL)migrateWithError:(id *)a3;
- (BOOL)removeDatabaseTokenWithError:(id *)a3;
- (BOOL)removeSubscriptionForZoneIdentifier:(id)a3 error:(id *)a4;
- (BOOL)removeTaskOfType:(int64_t)a3 forIdentifier:(id)a4 error:(id *)a5;
- (BOOL)removeTokenAtPath:(id)a3 error:(id *)a4;
- (BOOL)removeTokenForZoneIdentifier:(id)a3 error:(id *)a4;
- (BOOL)removeZoneIdentifier:(id)a3 error:(id *)a4;
- (BOOL)resetWithError:(id *)a3;
- (BOOL)setZoneFetchState:(int64_t)a3 forZoneID:(id)a4 error:(id *)a5;
- (BOOL)startTransactionWithError:(id *)a3;
- (BOOL)storeDatabaseToken:(id)a3 error:(id *)a4;
- (BOOL)storeSubscription:(id)a3 forZoneIdentifier:(id)a4 error:(id *)a5;
- (BOOL)storeTask:(id)a3 ofType:(int64_t)a4 error:(id *)a5;
- (BOOL)storeZoneIdentifier:(id)a3 error:(id *)a4;
- (BOOL)storeZoneToken:(id)a3 forZoneIdentifier:(id)a4 error:(id *)a5;
- (BOOL)storeZoneToken:(id)a3 forZoneIdentifier:(id)a4 hasPendingBatchChanges:(BOOL)a5 error:(id *)a6;
- (BOOL)subscriptionExistsForZoneIdentifier:(id)a3;
- (BOOL)undoTransactionWithError:(id *)a3;
- (BOOL)writeToken:(id)a3 toPath:(id)a4 error:(id *)a5;
- (BOOL)zoneExistsForIdentifier:(id)a3;
- (SHLCloudLibraryCache)initWithCallingProcessIdentifier:(id)a3 containerIdentifier:(id)a4 transactionIdentifier:(id)a5;
- (id)bundleDirectory;
- (id)cacheDirectory;
- (id)currentDatabaseFolderPath;
- (id)databaseInitialFetchPath;
- (id)databaseInitialFetchVersionPathWithNumber:(id)a3;
- (id)databaseToken;
- (id)failedFolderPath;
- (id)failedTaskPathForIdentifier:(id)a3;
- (id)inflightFolderPath;
- (id)inflightTaskPathForIdentifier:(id)a3;
- (id)legacyCacheDirectory;
- (id)privateDatabaseFolderPath;
- (id)privateDatabaseTransactionPath;
- (id)rootDirectory;
- (id)storedZoneIdentifiers;
- (id)taskForFilePath:(id)a3;
- (id)taskOfType:(int64_t)a3 identifier:(id)a4;
- (id)tasksForFolderPath:(id)a3 ofType:(int64_t)a4;
- (id)tasksOfType:(int64_t)a3;
- (id)zoneFetchStatePathForZoneID:(id)a3;
- (id)zonePathForIdentifier:(id)a3;
- (id)zoneTokenForZoneIdentifier:(id)a3;
- (id)zonesFolderPath;
- (int64_t)zoneFetchStateForZoneID:(id)a3;
- (void)removeAllTasksOfType:(int64_t)a3;
@end

@implementation SHLCloudLibraryCache

- (SHLCloudLibraryCache)initWithCallingProcessIdentifier:(id)a3 containerIdentifier:(id)a4 transactionIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SHLCloudLibraryCache;
  v12 = [(SHLCloudLibraryCache *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_processID, a3);
    objc_storeStrong(&v13->_containerID, a4);
    objc_storeStrong(&v13->_transactionID, a5);
  }

  return v13;
}

- (BOOL)resetWithError:(id *)a3
{
  if ([(SHLCloudLibraryCache *)self doesCacheDirectoryExist])
  {
    v5 = +[NSFileManager defaultManager];
    v6 = [(SHLCloudLibraryCache *)self cacheDirectory];
    v7 = [v5 removeItemAtPath:v6 error:a3];
  }

  else
  {
    v7 = 1;
  }

  if ([(SHLCloudLibraryCache *)self doesLegacyCacheDirectoryExist])
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [(SHLCloudLibraryCache *)self legacyCacheDirectory];
    [v8 removeItemAtPath:v9 error:a3];
  }

  return v7;
}

- (BOOL)initialFetchCompleted
{
  if ([(SHLCloudLibraryCache *)self doesDatabaseInitialFetchVersionMatchExpectedVersion:@"1.0"])
  {
    return 1;
  }

  if ([(SHLCloudLibraryCache *)self doesDatabaseInitialFetchPathExist])
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [(SHLCloudLibraryCache *)self databaseInitialFetchPath];
    v10 = 0;
    [v4 removeItemAtPath:v5 error:&v10];
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  v9 = v6;
  v3 = [(SHLCloudLibraryCache *)self createDatabaseInitialFetchVersionWithNumber:@"1.0" error:&v9];
  v7 = v9;

  return v3;
}

- (BOOL)storeTask:(id)a3 ofType:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (![(SHLCloudLibraryCache *)self doesTaskFolderPathsExist]&& ![(SHLCloudLibraryCache *)self createTaskFolderPaths])
  {
    v12 = 0;
    goto LABEL_19;
  }

  if (a4 == 1)
  {
    v9 = [v8 identifier];
    v10 = [(SHLCloudLibraryCache *)self failedTaskPathForIdentifier:v9];
  }

  else
  {
    if (a4)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v9 = [v8 identifier];
    v10 = [(SHLCloudLibraryCache *)self inflightTaskPathForIdentifier:v9];
  }

  v11 = v10;

LABEL_10:
  v20 = 0;
  v13 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v20];
  v14 = v20;
  v15 = v14;
  if (v13)
  {
    v19 = 0;
    v12 = [v13 writeToFile:v11 options:1 error:&v19];
    v16 = v19;
    if (a5 && (v12 & 1) == 0)
    {
      v16 = v16;
      *a5 = v16;
    }
  }

  else if (a5)
  {
    v17 = v14;
    v12 = 0;
    *a5 = v15;
  }

  else
  {
    v12 = 0;
  }

LABEL_19:
  return v12;
}

- (BOOL)removeTaskOfType:(int64_t)a3 forIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a3 == 1)
  {
    v9 = [(SHLCloudLibraryCache *)self failedTaskPathForIdentifier:v8];
    goto LABEL_5;
  }

  if (!a3)
  {
    v9 = [(SHLCloudLibraryCache *)self inflightTaskPathForIdentifier:v8];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v11 = +[NSFileManager defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  if (v12)
  {
    v13 = +[NSFileManager defaultManager];
    v14 = [v13 removeItemAtPath:v10 error:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)removeAllTasksOfType:(int64_t)a3
{
  v5 = [(SHLCloudLibraryCache *)self tasksOfType:?];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) identifier];
        [(SHLCloudLibraryCache *)self removeTaskOfType:a3 forIdentifier:v10 error:0];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)tasksOfType:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = [(SHLCloudLibraryCache *)self failedFolderPath];
    goto LABEL_5;
  }

  if (!a3)
  {
    v5 = [(SHLCloudLibraryCache *)self inflightFolderPath];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    v9 = [NSURL fileURLWithPath:v6];
    v10 = [(SHLCloudLibraryCache *)self tasksForFolderPath:v9 ofType:a3];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)taskOfType:(int64_t)a3 identifier:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v7 = [(SHLCloudLibraryCache *)self failedTaskPathForIdentifier:v6];
    goto LABEL_5;
  }

  if (!a3)
  {
    v7 = [(SHLCloudLibraryCache *)self inflightTaskPathForIdentifier:v6];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if (v10)
  {
    v11 = [(SHLCloudLibraryCache *)self taskForFilePath:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)tasksForFolderPath:(id)a3 ofType:(int64_t)a4
{
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  v29 = 0;
  v23 = v6;
  v8 = [v7 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:&__NSArray0__struct options:4 error:&v29];
  v22 = v29;

  v24 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [v14 lastPathComponent];
        if (v15)
        {
          if (a4 == 1)
          {
            v16 = [(SHLCloudLibraryCache *)self failedTaskPathForIdentifier:v15];
            goto LABEL_11;
          }

          if (a4)
          {
            v18 = 0;
          }

          else
          {
            v16 = [(SHLCloudLibraryCache *)self inflightTaskPathForIdentifier:v15];
LABEL_11:
            v17 = v16;
            v18 = [(SHLCloudLibraryCache *)self taskForFilePath:v16];

            if (v18 && [v18 conformsToProtocol:&OBJC_PROTOCOL___SHLSyncSessionTask])
            {
              [v24 addObject:v18];
LABEL_16:

              goto LABEL_17;
            }
          }

          v19 = +[NSFileManager defaultManager];
          [v19 removeItemAtURL:v14 error:0];

          goto LABEL_16;
        }

LABEL_17:
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  v20 = [v24 copy];

  return v20;
}

- (id)taskForFilePath:(id)a3
{
  v3 = [NSData dataWithContentsOfFile:a3];
  v10 = 0;
  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v10];
  v5 = v10;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [NSArray arrayWithObjects:v11 count:2];

  v7 = [NSSet setWithArray:v6];

  v8 = [v4 decodeObjectOfClasses:v7 forKey:NSKeyedArchiveRootObjectKey];
  [v4 finishDecoding];

  return v8;
}

- (BOOL)storeZoneIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(SHLCloudLibraryCache *)self doesZoneFolderPathExist]|| [(SHLCloudLibraryCache *)self createZoneFolderPathWithError:a4])
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:v6];
    v9 = [v7 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)removeZoneIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(SHLCloudLibraryCache *)self zoneExistsForIdentifier:v6])
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:v6];
    v9 = [v7 removeItemAtPath:v8 error:a4];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)zoneExistsForIdentifier:(id)a3
{
  v8 = 0;
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:v4];

  LOBYTE(v4) = [v5 fileExistsAtPath:v6 isDirectory:&v8];
  return v4 & v8;
}

- (id)storedZoneIdentifiers
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(SHLCloudLibraryCache *)self zonesFolderPath];
  v11 = 0;
  v5 = [v3 contentsOfDirectoryAtPath:v4 error:&v11];
  v6 = v11;

  v7 = v5;
  if (!v5)
  {
    v8 = sub_1000317DC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch stored zone identifiers. Error: %@", buf, 0xCu);
    }

    v7 = &__NSArray0__struct;
  }

  v9 = v7;

  return v7;
}

- (BOOL)setZoneFetchState:(int64_t)a3 forZoneID:(id)a4 error:(id *)a5
{
  v8 = a4;
  if ([(SHLCloudLibraryCache *)self doesZoneFolderPathExist]|| [(SHLCloudLibraryCache *)self createZoneFolderPathWithError:a5])
  {
    v9 = [(SHLCloudLibraryCache *)self zoneFetchStatePathForZoneID:v8];
    v10 = [NSNumber numberWithInteger:a3];
    v11 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:a5];

    v12 = [v11 writeToFile:v9 options:1 error:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)zoneFetchStateForZoneID:(id)a3
{
  v3 = [(SHLCloudLibraryCache *)self zoneFetchStatePathForZoneID:a3];
  v4 = [NSData dataWithContentsOfFile:v3];
  if (v4)
  {
    v10 = 0;
    v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v10];
    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 integerValue];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)storeDatabaseToken:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(SHLCloudLibraryCache *)self doesPrivateDatabaseFolderPathExist]|| [(SHLCloudLibraryCache *)self createPrivateDatabaseFolderPathWithError:a4])
  {
    v7 = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
    v8 = [(SHLCloudLibraryCache *)self writeToken:v6 toPath:v7 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)storeZoneToken:(id)a3 forZoneIdentifier:(id)a4 hasPendingBatchChanges:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a4;
  v11 = [(SHLCloudLibraryCache *)self storeZoneToken:a3 forZoneIdentifier:v10 error:a6];
  if (v11)
  {
    if (v7)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [(SHLCloudLibraryCache *)self setZoneFetchState:v12 forZoneID:v10 error:a6];
  }

  return v11;
}

- (BOOL)hasPendingBatchChangesForAnyZone
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(SHLCloudLibraryCache *)self storedZoneIdentifiers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([(SHLCloudLibraryCache *)self hasPendingBatchChangesForZoneID:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)storeZoneToken:(id)a3 forZoneIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(SHLCloudLibraryCache *)self doesZoneFolderPathExist]|| [(SHLCloudLibraryCache *)self createZoneFolderPathWithError:a5])
  {
    v10 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:v9];
    v11 = [(SHLCloudLibraryCache *)self writeToken:v8 toPath:v10 error:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)writeToken:(id)a3 toPath:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a4 stringByAppendingPathComponent:@"token"];
  v9 = [v7 serverChangeToken];

  v10 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:a5];

  LOBYTE(a5) = [v10 writeToFile:v8 options:1 error:a5];
  return a5;
}

- (BOOL)removeDatabaseTokenWithError:(id *)a3
{
  v5 = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
  LOBYTE(a3) = [(SHLCloudLibraryCache *)self removeTokenAtPath:v5 error:a3];

  return a3;
}

- (BOOL)removeTokenForZoneIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:v6];
  v8 = [(SHLCloudLibraryCache *)self removeTokenAtPath:v7 error:a4];

  if (v8)
  {
    v9 = +[NSFileManager defaultManager];
    v10 = [(SHLCloudLibraryCache *)self zoneFetchStatePathForZoneID:v6];
    v11 = [v9 fileExistsAtPath:v10];

    if (v11)
    {
      v12 = +[NSFileManager defaultManager];
      v13 = [(SHLCloudLibraryCache *)self zoneFetchStatePathForZoneID:v6];
      v14 = [v12 removeItemAtPath:v13 error:a4];
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)removeTokenAtPath:(id)a3 error:(id *)a4
{
  v5 = [a3 stringByAppendingPathComponent:@"token"];
  v6 = +[NSFileManager defaultManager];
  LOBYTE(a4) = [v6 removeItemAtPath:v5 error:a4];

  return a4;
}

- (id)databaseToken
{
  v2 = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
  v3 = [v2 stringByAppendingPathComponent:@"token"];

  v4 = [NSData dataWithContentsOfFile:v3];
  if (v4)
  {
    v9 = 0;
    v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v9];
    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    [v5 finishDecoding];
    if (v6)
    {
      v7 = [[SHLCloudBackedToken alloc] initWithToken:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)zoneTokenForZoneIdentifier:(id)a3
{
  v3 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:a3];
  v4 = [v3 stringByAppendingPathComponent:@"token"];

  v5 = [NSData dataWithContentsOfFile:v4];
  if (v5)
  {
    v10 = 0;
    v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:&v10];
    v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    if (v7)
    {
      v8 = [[SHLCloudBackedToken alloc] initWithToken:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)storeSubscription:(id)a3 forZoneIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(SHLCloudLibraryCache *)self doesZoneFolderPathExist]|| [(SHLCloudLibraryCache *)self createZoneFolderPathWithError:a5])
  {
    v10 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:v9];
    v11 = [v10 stringByAppendingPathComponent:@"zonesubscription"];

    v12 = [v8 subscription];
    v13 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:a5];

    v14 = [v13 writeToFile:v11 options:1 error:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)removeSubscriptionForZoneIdentifier:(id)a3 error:(id *)a4
{
  v5 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:a3];
  v6 = [v5 stringByAppendingPathComponent:@"zonesubscription"];

  v7 = +[NSFileManager defaultManager];
  LOBYTE(a4) = [v7 removeItemAtPath:v6 error:a4];

  return a4;
}

- (BOOL)subscriptionExistsForZoneIdentifier:(id)a3
{
  v3 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:a3];
  v4 = [v3 stringByAppendingPathComponent:@"zonesubscription"];

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:0];

  return v6;
}

- (BOOL)doesLegacyCacheDirectoryExist
{
  v7 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = [(SHLCloudLibraryCache *)self legacyCacheDirectory];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v7];

  return v5 & v7;
}

- (BOOL)createBundleDirectory
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(SHLCloudLibraryCache *)self bundleDirectory];
  v7 = 0;
  v5 = [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v7];

  return v5;
}

- (BOOL)doesCacheDirectoryExist
{
  v7 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = [(SHLCloudLibraryCache *)self cacheDirectory];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v7];

  return v5 & v7;
}

- (BOOL)doesZoneFolderPathExist
{
  v7 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = [(SHLCloudLibraryCache *)self zonesFolderPath];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v7];

  return v5 & v7;
}

- (BOOL)createZoneFolderPathWithError:(id *)a3
{
  v4 = +[NSFileManager defaultManager];
  v5 = [(SHLCloudLibraryCache *)self zonesFolderPath];
  v8 = 0;
  v6 = [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v8];

  return v6;
}

- (BOOL)doesDatabaseInitialFetchPathExist
{
  v7 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = [(SHLCloudLibraryCache *)self databaseInitialFetchPath];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v7];

  return v5 & v7;
}

- (BOOL)doesDatabaseInitialFetchVersionMatchExpectedVersion:(id)a3
{
  v8 = 0;
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [(SHLCloudLibraryCache *)self databaseInitialFetchVersionPathWithNumber:v4];

  LOBYTE(v4) = [v5 fileExistsAtPath:v6 isDirectory:&v8];
  return v4 & v8;
}

- (BOOL)createDatabaseInitialFetchVersionWithNumber:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  v7 = [(SHLCloudLibraryCache *)self databaseInitialFetchVersionPathWithNumber:v5];

  v9 = 0;
  LOBYTE(v5) = [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v9];

  return v5;
}

- (BOOL)doesTaskFolderPathsExist
{
  v12 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = [(SHLCloudLibraryCache *)self inflightFolderPath];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v12];

  v6 = +[NSFileManager defaultManager];
  v7 = [(SHLCloudLibraryCache *)self failedFolderPath];
  v8 = [v6 fileExistsAtPath:v7 isDirectory:&v12];

  v9 = 0;
  if (v5)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v9 = v12;
  }

  return v9 & 1;
}

- (BOOL)createTaskFolderPaths
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(SHLCloudLibraryCache *)self inflightFolderPath];
  v15 = 0;
  v5 = [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v15];
  v6 = v15;

  v7 = +[NSFileManager defaultManager];
  v8 = [(SHLCloudLibraryCache *)self failedFolderPath];
  v14 = v6;
  v9 = [v7 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v14];
  v10 = v14;

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (v5)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)doesPrivateDatabaseFolderPathExist
{
  v7 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = [(SHLCloudLibraryCache *)self privateDatabaseFolderPath];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v7];

  return v5 & v7;
}

- (BOOL)createPrivateDatabaseFolderPathWithError:(id *)a3
{
  v5 = +[NSFileManager defaultManager];
  v6 = [(SHLCloudLibraryCache *)self privateDatabaseFolderPath];
  LOBYTE(a3) = [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:a3];

  return a3;
}

- (id)legacyCacheDirectory
{
  v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v4 = [v3 firstObject];

  v5 = [(SHLCloudLibraryCache *)self containerID];
  v6 = [v4 stringByAppendingPathComponent:v5];

  return v6;
}

- (id)rootDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 firstObject];

  v4 = [v3 stringByAppendingPathComponent:@"com.apple.shazamlibrary.cloud"];

  return v4;
}

- (id)bundleDirectory
{
  v3 = [(SHLCloudLibraryCache *)self rootDirectory];
  v4 = [(SHLCloudLibraryCache *)self processID];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)cacheDirectory
{
  v3 = [(SHLCloudLibraryCache *)self bundleDirectory];
  v4 = [(SHLCloudLibraryCache *)self containerID];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)currentDatabaseFolderPath
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(SHLCloudLibraryCache *)self privateDatabaseTransactionPath];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:0];

  if (v5)
  {
    [(SHLCloudLibraryCache *)self privateDatabaseTransactionPath];
  }

  else
  {
    [(SHLCloudLibraryCache *)self privateDatabaseFolderPath];
  }
  v6 = ;

  return v6;
}

- (id)privateDatabaseFolderPath
{
  v2 = [(SHLCloudLibraryCache *)self cacheDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"privatedatabase"];

  return v3;
}

- (id)privateDatabaseTransactionPath
{
  v3 = [(SHLCloudLibraryCache *)self cacheDirectory];
  v4 = [(SHLCloudLibraryCache *)self transactionID];
  v5 = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"%@_%@", @"privatedatabasetransaction", v5];
  v7 = [v3 stringByAppendingPathComponent:v6];

  return v7;
}

- (id)databaseInitialFetchVersionPathWithNumber:(id)a3
{
  v4 = a3;
  v5 = [(SHLCloudLibraryCache *)self databaseInitialFetchPath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (id)databaseInitialFetchPath
{
  v2 = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
  v3 = [v2 stringByAppendingPathComponent:@"initialdatabasefetch"];

  return v3;
}

- (id)zonesFolderPath
{
  v2 = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
  v3 = [v2 stringByAppendingPathComponent:@"zones"];

  return v3;
}

- (id)inflightFolderPath
{
  v2 = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
  v3 = [v2 stringByAppendingPathComponent:@"inflighttasks"];

  return v3;
}

- (id)failedFolderPath
{
  v2 = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
  v3 = [v2 stringByAppendingPathComponent:@"failedtasks"];

  return v3;
}

- (id)zonePathForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SHLCloudLibraryCache *)self zonesFolderPath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (id)zoneFetchStatePathForZoneID:(id)a3
{
  v3 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:a3];
  v4 = [v3 stringByAppendingPathComponent:@"fetchstate"];

  return v4;
}

- (id)inflightTaskPathForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SHLCloudLibraryCache *)self inflightFolderPath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (id)failedTaskPathForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SHLCloudLibraryCache *)self failedFolderPath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (BOOL)startTransactionWithError:(id *)a3
{
  if (![(SHLCloudLibraryCache *)self doesPrivateDatabaseFolderPathExist]&& ![(SHLCloudLibraryCache *)self createPrivateDatabaseFolderPathWithError:a3])
  {
    return 0;
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [(SHLCloudLibraryCache *)self privateDatabaseTransactionPath];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    if (![(SHLCloudLibraryCache *)self undoTransactionWithError:a3])
    {
      return 0;
    }
  }

  v8 = +[NSFileManager defaultManager];
  v9 = [(SHLCloudLibraryCache *)self privateDatabaseFolderPath];
  v10 = [(SHLCloudLibraryCache *)self privateDatabaseTransactionPath];
  v11 = [v8 copyItemAtPath:v9 toPath:v10 error:a3];

  return v11;
}

- (BOOL)undoTransactionWithError:(id *)a3
{
  v5 = +[NSFileManager defaultManager];
  v6 = [(SHLCloudLibraryCache *)self privateDatabaseTransactionPath];
  LOBYTE(a3) = [v5 removeItemAtPath:v6 error:a3];

  return a3;
}

- (BOOL)commitTransactionWithError:(id *)a3
{
  v5 = +[NSFileManager defaultManager];
  v6 = [(SHLCloudLibraryCache *)self privateDatabaseFolderPath];
  v7 = [NSURL fileURLWithPath:v6];
  v8 = [(SHLCloudLibraryCache *)self privateDatabaseTransactionPath];
  v9 = [NSURL fileURLWithPath:v8];
  LOBYTE(a3) = [v5 replaceItemAtURL:v7 withItemAtURL:v9 backupItemName:0 options:0 resultingItemURL:0 error:a3];

  return a3;
}

- (BOOL)migrateWithError:(id *)a3
{
  [(SHLCloudLibraryCache *)self createBundleDirectory];
  v5 = +[NSFileManager defaultManager];
  v6 = [(SHLCloudLibraryCache *)self legacyCacheDirectory];
  v7 = [(SHLCloudLibraryCache *)self cacheDirectory];
  v8 = [v5 copyItemAtPath:v6 toPath:v7 error:a3];

  if (v8)
  {
    v9 = +[NSFileManager defaultManager];
    v10 = [(SHLCloudLibraryCache *)self legacyCacheDirectory];
    [v9 removeItemAtPath:v10 error:0];
  }

  return v8;
}

@end