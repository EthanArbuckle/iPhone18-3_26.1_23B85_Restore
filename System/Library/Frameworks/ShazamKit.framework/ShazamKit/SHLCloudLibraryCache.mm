@interface SHLCloudLibraryCache
- (BOOL)commitTransactionWithError:(id *)error;
- (BOOL)createBundleDirectory;
- (BOOL)createDatabaseInitialFetchVersionWithNumber:(id)number error:(id *)error;
- (BOOL)createPrivateDatabaseFolderPathWithError:(id *)error;
- (BOOL)createTaskFolderPaths;
- (BOOL)createZoneFolderPathWithError:(id *)error;
- (BOOL)doesCacheDirectoryExist;
- (BOOL)doesDatabaseInitialFetchPathExist;
- (BOOL)doesDatabaseInitialFetchVersionMatchExpectedVersion:(id)version;
- (BOOL)doesLegacyCacheDirectoryExist;
- (BOOL)doesPrivateDatabaseFolderPathExist;
- (BOOL)doesTaskFolderPathsExist;
- (BOOL)doesZoneFolderPathExist;
- (BOOL)hasPendingBatchChangesForAnyZone;
- (BOOL)initialFetchCompleted;
- (BOOL)migrateWithError:(id *)error;
- (BOOL)removeDatabaseTokenWithError:(id *)error;
- (BOOL)removeSubscriptionForZoneIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeTaskOfType:(int64_t)type forIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeTokenAtPath:(id)path error:(id *)error;
- (BOOL)removeTokenForZoneIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeZoneIdentifier:(id)identifier error:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (BOOL)setZoneFetchState:(int64_t)state forZoneID:(id)d error:(id *)error;
- (BOOL)startTransactionWithError:(id *)error;
- (BOOL)storeDatabaseToken:(id)token error:(id *)error;
- (BOOL)storeSubscription:(id)subscription forZoneIdentifier:(id)identifier error:(id *)error;
- (BOOL)storeTask:(id)task ofType:(int64_t)type error:(id *)error;
- (BOOL)storeZoneIdentifier:(id)identifier error:(id *)error;
- (BOOL)storeZoneToken:(id)token forZoneIdentifier:(id)identifier error:(id *)error;
- (BOOL)storeZoneToken:(id)token forZoneIdentifier:(id)identifier hasPendingBatchChanges:(BOOL)changes error:(id *)error;
- (BOOL)subscriptionExistsForZoneIdentifier:(id)identifier;
- (BOOL)undoTransactionWithError:(id *)error;
- (BOOL)writeToken:(id)token toPath:(id)path error:(id *)error;
- (BOOL)zoneExistsForIdentifier:(id)identifier;
- (SHLCloudLibraryCache)initWithCallingProcessIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier transactionIdentifier:(id)transactionIdentifier;
- (id)bundleDirectory;
- (id)cacheDirectory;
- (id)currentDatabaseFolderPath;
- (id)databaseInitialFetchPath;
- (id)databaseInitialFetchVersionPathWithNumber:(id)number;
- (id)databaseToken;
- (id)failedFolderPath;
- (id)failedTaskPathForIdentifier:(id)identifier;
- (id)inflightFolderPath;
- (id)inflightTaskPathForIdentifier:(id)identifier;
- (id)legacyCacheDirectory;
- (id)privateDatabaseFolderPath;
- (id)privateDatabaseTransactionPath;
- (id)rootDirectory;
- (id)storedZoneIdentifiers;
- (id)taskForFilePath:(id)path;
- (id)taskOfType:(int64_t)type identifier:(id)identifier;
- (id)tasksForFolderPath:(id)path ofType:(int64_t)type;
- (id)tasksOfType:(int64_t)type;
- (id)zoneFetchStatePathForZoneID:(id)d;
- (id)zonePathForIdentifier:(id)identifier;
- (id)zoneTokenForZoneIdentifier:(id)identifier;
- (id)zonesFolderPath;
- (int64_t)zoneFetchStateForZoneID:(id)d;
- (void)removeAllTasksOfType:(int64_t)type;
@end

@implementation SHLCloudLibraryCache

- (SHLCloudLibraryCache)initWithCallingProcessIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier transactionIdentifier:(id)transactionIdentifier
{
  identifierCopy = identifier;
  containerIdentifierCopy = containerIdentifier;
  transactionIdentifierCopy = transactionIdentifier;
  v15.receiver = self;
  v15.super_class = SHLCloudLibraryCache;
  v12 = [(SHLCloudLibraryCache *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_processID, identifier);
    objc_storeStrong(&v13->_containerID, containerIdentifier);
    objc_storeStrong(&v13->_transactionID, transactionIdentifier);
  }

  return v13;
}

- (BOOL)resetWithError:(id *)error
{
  if ([(SHLCloudLibraryCache *)self doesCacheDirectoryExist])
  {
    v5 = +[NSFileManager defaultManager];
    cacheDirectory = [(SHLCloudLibraryCache *)self cacheDirectory];
    v7 = [v5 removeItemAtPath:cacheDirectory error:error];
  }

  else
  {
    v7 = 1;
  }

  if ([(SHLCloudLibraryCache *)self doesLegacyCacheDirectoryExist])
  {
    v8 = +[NSFileManager defaultManager];
    legacyCacheDirectory = [(SHLCloudLibraryCache *)self legacyCacheDirectory];
    [v8 removeItemAtPath:legacyCacheDirectory error:error];
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
    databaseInitialFetchPath = [(SHLCloudLibraryCache *)self databaseInitialFetchPath];
    v10 = 0;
    [v4 removeItemAtPath:databaseInitialFetchPath error:&v10];
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

- (BOOL)storeTask:(id)task ofType:(int64_t)type error:(id *)error
{
  taskCopy = task;
  if (![(SHLCloudLibraryCache *)self doesTaskFolderPathsExist]&& ![(SHLCloudLibraryCache *)self createTaskFolderPaths])
  {
    v12 = 0;
    goto LABEL_19;
  }

  if (type == 1)
  {
    identifier = [taskCopy identifier];
    v10 = [(SHLCloudLibraryCache *)self failedTaskPathForIdentifier:identifier];
  }

  else
  {
    if (type)
    {
      v11 = 0;
      goto LABEL_10;
    }

    identifier = [taskCopy identifier];
    v10 = [(SHLCloudLibraryCache *)self inflightTaskPathForIdentifier:identifier];
  }

  v11 = v10;

LABEL_10:
  v20 = 0;
  v13 = [NSKeyedArchiver archivedDataWithRootObject:taskCopy requiringSecureCoding:1 error:&v20];
  v14 = v20;
  v15 = v14;
  if (v13)
  {
    v19 = 0;
    v12 = [v13 writeToFile:v11 options:1 error:&v19];
    v16 = v19;
    if (error && (v12 & 1) == 0)
    {
      v16 = v16;
      *error = v16;
    }
  }

  else if (error)
  {
    v17 = v14;
    v12 = 0;
    *error = v15;
  }

  else
  {
    v12 = 0;
  }

LABEL_19:
  return v12;
}

- (BOOL)removeTaskOfType:(int64_t)type forIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if (type == 1)
  {
    v9 = [(SHLCloudLibraryCache *)self failedTaskPathForIdentifier:identifierCopy];
    goto LABEL_5;
  }

  if (!type)
  {
    v9 = [(SHLCloudLibraryCache *)self inflightTaskPathForIdentifier:identifierCopy];
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
    v14 = [v13 removeItemAtPath:v10 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)removeAllTasksOfType:(int64_t)type
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

        identifier = [*(*(&v11 + 1) + 8 * v9) identifier];
        [(SHLCloudLibraryCache *)self removeTaskOfType:type forIdentifier:identifier error:0];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)tasksOfType:(int64_t)type
{
  if (type == 1)
  {
    failedFolderPath = [(SHLCloudLibraryCache *)self failedFolderPath];
    goto LABEL_5;
  }

  if (!type)
  {
    failedFolderPath = [(SHLCloudLibraryCache *)self inflightFolderPath];
LABEL_5:
    v6 = failedFolderPath;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    v9 = [NSURL fileURLWithPath:v6];
    v10 = [(SHLCloudLibraryCache *)self tasksForFolderPath:v9 ofType:type];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (id)taskOfType:(int64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  if (type == 1)
  {
    v7 = [(SHLCloudLibraryCache *)self failedTaskPathForIdentifier:identifierCopy];
    goto LABEL_5;
  }

  if (!type)
  {
    v7 = [(SHLCloudLibraryCache *)self inflightTaskPathForIdentifier:identifierCopy];
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

- (id)tasksForFolderPath:(id)path ofType:(int64_t)type
{
  pathCopy = path;
  v7 = +[NSFileManager defaultManager];
  v29 = 0;
  v23 = pathCopy;
  v8 = [v7 contentsOfDirectoryAtURL:pathCopy includingPropertiesForKeys:&__NSArray0__struct options:4 error:&v29];
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
        lastPathComponent = [v14 lastPathComponent];
        if (lastPathComponent)
        {
          if (type == 1)
          {
            v16 = [(SHLCloudLibraryCache *)self failedTaskPathForIdentifier:lastPathComponent];
            goto LABEL_11;
          }

          if (type)
          {
            v18 = 0;
          }

          else
          {
            v16 = [(SHLCloudLibraryCache *)self inflightTaskPathForIdentifier:lastPathComponent];
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

- (id)taskForFilePath:(id)path
{
  v3 = [NSData dataWithContentsOfFile:path];
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

- (BOOL)storeZoneIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ([(SHLCloudLibraryCache *)self doesZoneFolderPathExist]|| [(SHLCloudLibraryCache *)self createZoneFolderPathWithError:error])
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:identifierCopy];
    v9 = [v7 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)removeZoneIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ([(SHLCloudLibraryCache *)self zoneExistsForIdentifier:identifierCopy])
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:identifierCopy];
    v9 = [v7 removeItemAtPath:v8 error:error];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)zoneExistsForIdentifier:(id)identifier
{
  v8 = 0;
  identifierCopy = identifier;
  v5 = +[NSFileManager defaultManager];
  v6 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:identifierCopy];

  LOBYTE(identifierCopy) = [v5 fileExistsAtPath:v6 isDirectory:&v8];
  return identifierCopy & v8;
}

- (id)storedZoneIdentifiers
{
  v3 = +[NSFileManager defaultManager];
  zonesFolderPath = [(SHLCloudLibraryCache *)self zonesFolderPath];
  v11 = 0;
  v5 = [v3 contentsOfDirectoryAtPath:zonesFolderPath error:&v11];
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

- (BOOL)setZoneFetchState:(int64_t)state forZoneID:(id)d error:(id *)error
{
  dCopy = d;
  if ([(SHLCloudLibraryCache *)self doesZoneFolderPathExist]|| [(SHLCloudLibraryCache *)self createZoneFolderPathWithError:error])
  {
    v9 = [(SHLCloudLibraryCache *)self zoneFetchStatePathForZoneID:dCopy];
    v10 = [NSNumber numberWithInteger:state];
    v11 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:error];

    v12 = [v11 writeToFile:v9 options:1 error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)zoneFetchStateForZoneID:(id)d
{
  v3 = [(SHLCloudLibraryCache *)self zoneFetchStatePathForZoneID:d];
  v4 = [NSData dataWithContentsOfFile:v3];
  if (v4)
  {
    v10 = 0;
    v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v10];
    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    v7 = v6;
    if (v6)
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)storeDatabaseToken:(id)token error:(id *)error
{
  tokenCopy = token;
  if ([(SHLCloudLibraryCache *)self doesPrivateDatabaseFolderPathExist]|| [(SHLCloudLibraryCache *)self createPrivateDatabaseFolderPathWithError:error])
  {
    currentDatabaseFolderPath = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
    v8 = [(SHLCloudLibraryCache *)self writeToken:tokenCopy toPath:currentDatabaseFolderPath error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)storeZoneToken:(id)token forZoneIdentifier:(id)identifier hasPendingBatchChanges:(BOOL)changes error:(id *)error
{
  changesCopy = changes;
  identifierCopy = identifier;
  v11 = [(SHLCloudLibraryCache *)self storeZoneToken:token forZoneIdentifier:identifierCopy error:error];
  if (v11)
  {
    if (changesCopy)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [(SHLCloudLibraryCache *)self setZoneFetchState:v12 forZoneID:identifierCopy error:error];
  }

  return v11;
}

- (BOOL)hasPendingBatchChangesForAnyZone
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  storedZoneIdentifiers = [(SHLCloudLibraryCache *)self storedZoneIdentifiers];
  v4 = [storedZoneIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(storedZoneIdentifiers);
        }

        if ([(SHLCloudLibraryCache *)self hasPendingBatchChangesForZoneID:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [storedZoneIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)storeZoneToken:(id)token forZoneIdentifier:(id)identifier error:(id *)error
{
  tokenCopy = token;
  identifierCopy = identifier;
  if ([(SHLCloudLibraryCache *)self doesZoneFolderPathExist]|| [(SHLCloudLibraryCache *)self createZoneFolderPathWithError:error])
  {
    v10 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:identifierCopy];
    v11 = [(SHLCloudLibraryCache *)self writeToken:tokenCopy toPath:v10 error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)writeToken:(id)token toPath:(id)path error:(id *)error
{
  tokenCopy = token;
  v8 = [path stringByAppendingPathComponent:@"token"];
  serverChangeToken = [tokenCopy serverChangeToken];

  v10 = [NSKeyedArchiver archivedDataWithRootObject:serverChangeToken requiringSecureCoding:1 error:error];

  LOBYTE(error) = [v10 writeToFile:v8 options:1 error:error];
  return error;
}

- (BOOL)removeDatabaseTokenWithError:(id *)error
{
  currentDatabaseFolderPath = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
  LOBYTE(error) = [(SHLCloudLibraryCache *)self removeTokenAtPath:currentDatabaseFolderPath error:error];

  return error;
}

- (BOOL)removeTokenForZoneIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:identifierCopy];
  v8 = [(SHLCloudLibraryCache *)self removeTokenAtPath:v7 error:error];

  if (v8)
  {
    v9 = +[NSFileManager defaultManager];
    v10 = [(SHLCloudLibraryCache *)self zoneFetchStatePathForZoneID:identifierCopy];
    v11 = [v9 fileExistsAtPath:v10];

    if (v11)
    {
      v12 = +[NSFileManager defaultManager];
      v13 = [(SHLCloudLibraryCache *)self zoneFetchStatePathForZoneID:identifierCopy];
      v14 = [v12 removeItemAtPath:v13 error:error];
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

- (BOOL)removeTokenAtPath:(id)path error:(id *)error
{
  v5 = [path stringByAppendingPathComponent:@"token"];
  v6 = +[NSFileManager defaultManager];
  LOBYTE(error) = [v6 removeItemAtPath:v5 error:error];

  return error;
}

- (id)databaseToken
{
  currentDatabaseFolderPath = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
  v3 = [currentDatabaseFolderPath stringByAppendingPathComponent:@"token"];

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

- (id)zoneTokenForZoneIdentifier:(id)identifier
{
  v3 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:identifier];
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

- (BOOL)storeSubscription:(id)subscription forZoneIdentifier:(id)identifier error:(id *)error
{
  subscriptionCopy = subscription;
  identifierCopy = identifier;
  if ([(SHLCloudLibraryCache *)self doesZoneFolderPathExist]|| [(SHLCloudLibraryCache *)self createZoneFolderPathWithError:error])
  {
    v10 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:identifierCopy];
    v11 = [v10 stringByAppendingPathComponent:@"zonesubscription"];

    subscription = [subscriptionCopy subscription];
    v13 = [NSKeyedArchiver archivedDataWithRootObject:subscription requiringSecureCoding:1 error:error];

    v14 = [v13 writeToFile:v11 options:1 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)removeSubscriptionForZoneIdentifier:(id)identifier error:(id *)error
{
  v5 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:identifier];
  v6 = [v5 stringByAppendingPathComponent:@"zonesubscription"];

  v7 = +[NSFileManager defaultManager];
  LOBYTE(error) = [v7 removeItemAtPath:v6 error:error];

  return error;
}

- (BOOL)subscriptionExistsForZoneIdentifier:(id)identifier
{
  v3 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:identifier];
  v4 = [v3 stringByAppendingPathComponent:@"zonesubscription"];

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:0];

  return v6;
}

- (BOOL)doesLegacyCacheDirectoryExist
{
  v7 = 0;
  v3 = +[NSFileManager defaultManager];
  legacyCacheDirectory = [(SHLCloudLibraryCache *)self legacyCacheDirectory];
  v5 = [v3 fileExistsAtPath:legacyCacheDirectory isDirectory:&v7];

  return v5 & v7;
}

- (BOOL)createBundleDirectory
{
  v3 = +[NSFileManager defaultManager];
  bundleDirectory = [(SHLCloudLibraryCache *)self bundleDirectory];
  v7 = 0;
  v5 = [v3 createDirectoryAtPath:bundleDirectory withIntermediateDirectories:1 attributes:0 error:&v7];

  return v5;
}

- (BOOL)doesCacheDirectoryExist
{
  v7 = 0;
  v3 = +[NSFileManager defaultManager];
  cacheDirectory = [(SHLCloudLibraryCache *)self cacheDirectory];
  v5 = [v3 fileExistsAtPath:cacheDirectory isDirectory:&v7];

  return v5 & v7;
}

- (BOOL)doesZoneFolderPathExist
{
  v7 = 0;
  v3 = +[NSFileManager defaultManager];
  zonesFolderPath = [(SHLCloudLibraryCache *)self zonesFolderPath];
  v5 = [v3 fileExistsAtPath:zonesFolderPath isDirectory:&v7];

  return v5 & v7;
}

- (BOOL)createZoneFolderPathWithError:(id *)error
{
  v4 = +[NSFileManager defaultManager];
  zonesFolderPath = [(SHLCloudLibraryCache *)self zonesFolderPath];
  v8 = 0;
  v6 = [v4 createDirectoryAtPath:zonesFolderPath withIntermediateDirectories:1 attributes:0 error:&v8];

  return v6;
}

- (BOOL)doesDatabaseInitialFetchPathExist
{
  v7 = 0;
  v3 = +[NSFileManager defaultManager];
  databaseInitialFetchPath = [(SHLCloudLibraryCache *)self databaseInitialFetchPath];
  v5 = [v3 fileExistsAtPath:databaseInitialFetchPath isDirectory:&v7];

  return v5 & v7;
}

- (BOOL)doesDatabaseInitialFetchVersionMatchExpectedVersion:(id)version
{
  v8 = 0;
  versionCopy = version;
  v5 = +[NSFileManager defaultManager];
  v6 = [(SHLCloudLibraryCache *)self databaseInitialFetchVersionPathWithNumber:versionCopy];

  LOBYTE(versionCopy) = [v5 fileExistsAtPath:v6 isDirectory:&v8];
  return versionCopy & v8;
}

- (BOOL)createDatabaseInitialFetchVersionWithNumber:(id)number error:(id *)error
{
  numberCopy = number;
  v6 = +[NSFileManager defaultManager];
  v7 = [(SHLCloudLibraryCache *)self databaseInitialFetchVersionPathWithNumber:numberCopy];

  v9 = 0;
  LOBYTE(numberCopy) = [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v9];

  return numberCopy;
}

- (BOOL)doesTaskFolderPathsExist
{
  v12 = 0;
  v3 = +[NSFileManager defaultManager];
  inflightFolderPath = [(SHLCloudLibraryCache *)self inflightFolderPath];
  v5 = [v3 fileExistsAtPath:inflightFolderPath isDirectory:&v12];

  v6 = +[NSFileManager defaultManager];
  failedFolderPath = [(SHLCloudLibraryCache *)self failedFolderPath];
  v8 = [v6 fileExistsAtPath:failedFolderPath isDirectory:&v12];

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
  inflightFolderPath = [(SHLCloudLibraryCache *)self inflightFolderPath];
  v15 = 0;
  v5 = [v3 createDirectoryAtPath:inflightFolderPath withIntermediateDirectories:1 attributes:0 error:&v15];
  v6 = v15;

  v7 = +[NSFileManager defaultManager];
  failedFolderPath = [(SHLCloudLibraryCache *)self failedFolderPath];
  v14 = v6;
  v9 = [v7 createDirectoryAtPath:failedFolderPath withIntermediateDirectories:1 attributes:0 error:&v14];
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
  privateDatabaseFolderPath = [(SHLCloudLibraryCache *)self privateDatabaseFolderPath];
  v5 = [v3 fileExistsAtPath:privateDatabaseFolderPath isDirectory:&v7];

  return v5 & v7;
}

- (BOOL)createPrivateDatabaseFolderPathWithError:(id *)error
{
  v5 = +[NSFileManager defaultManager];
  privateDatabaseFolderPath = [(SHLCloudLibraryCache *)self privateDatabaseFolderPath];
  LOBYTE(error) = [v5 createDirectoryAtPath:privateDatabaseFolderPath withIntermediateDirectories:1 attributes:0 error:error];

  return error;
}

- (id)legacyCacheDirectory
{
  v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v3 firstObject];

  containerID = [(SHLCloudLibraryCache *)self containerID];
  v6 = [firstObject stringByAppendingPathComponent:containerID];

  return v6;
}

- (id)rootDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v2 firstObject];

  v4 = [firstObject stringByAppendingPathComponent:@"com.apple.shazamlibrary.cloud"];

  return v4;
}

- (id)bundleDirectory
{
  rootDirectory = [(SHLCloudLibraryCache *)self rootDirectory];
  processID = [(SHLCloudLibraryCache *)self processID];
  v5 = [rootDirectory stringByAppendingPathComponent:processID];

  return v5;
}

- (id)cacheDirectory
{
  bundleDirectory = [(SHLCloudLibraryCache *)self bundleDirectory];
  containerID = [(SHLCloudLibraryCache *)self containerID];
  v5 = [bundleDirectory stringByAppendingPathComponent:containerID];

  return v5;
}

- (id)currentDatabaseFolderPath
{
  v3 = +[NSFileManager defaultManager];
  privateDatabaseTransactionPath = [(SHLCloudLibraryCache *)self privateDatabaseTransactionPath];
  v5 = [v3 fileExistsAtPath:privateDatabaseTransactionPath isDirectory:0];

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
  cacheDirectory = [(SHLCloudLibraryCache *)self cacheDirectory];
  v3 = [cacheDirectory stringByAppendingPathComponent:@"privatedatabase"];

  return v3;
}

- (id)privateDatabaseTransactionPath
{
  cacheDirectory = [(SHLCloudLibraryCache *)self cacheDirectory];
  transactionID = [(SHLCloudLibraryCache *)self transactionID];
  uUIDString = [transactionID UUIDString];
  v6 = [NSString stringWithFormat:@"%@_%@", @"privatedatabasetransaction", uUIDString];
  v7 = [cacheDirectory stringByAppendingPathComponent:v6];

  return v7;
}

- (id)databaseInitialFetchVersionPathWithNumber:(id)number
{
  numberCopy = number;
  databaseInitialFetchPath = [(SHLCloudLibraryCache *)self databaseInitialFetchPath];
  v6 = [databaseInitialFetchPath stringByAppendingPathComponent:numberCopy];

  return v6;
}

- (id)databaseInitialFetchPath
{
  currentDatabaseFolderPath = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
  v3 = [currentDatabaseFolderPath stringByAppendingPathComponent:@"initialdatabasefetch"];

  return v3;
}

- (id)zonesFolderPath
{
  currentDatabaseFolderPath = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
  v3 = [currentDatabaseFolderPath stringByAppendingPathComponent:@"zones"];

  return v3;
}

- (id)inflightFolderPath
{
  currentDatabaseFolderPath = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
  v3 = [currentDatabaseFolderPath stringByAppendingPathComponent:@"inflighttasks"];

  return v3;
}

- (id)failedFolderPath
{
  currentDatabaseFolderPath = [(SHLCloudLibraryCache *)self currentDatabaseFolderPath];
  v3 = [currentDatabaseFolderPath stringByAppendingPathComponent:@"failedtasks"];

  return v3;
}

- (id)zonePathForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  zonesFolderPath = [(SHLCloudLibraryCache *)self zonesFolderPath];
  v6 = [zonesFolderPath stringByAppendingPathComponent:identifierCopy];

  return v6;
}

- (id)zoneFetchStatePathForZoneID:(id)d
{
  v3 = [(SHLCloudLibraryCache *)self zonePathForIdentifier:d];
  v4 = [v3 stringByAppendingPathComponent:@"fetchstate"];

  return v4;
}

- (id)inflightTaskPathForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  inflightFolderPath = [(SHLCloudLibraryCache *)self inflightFolderPath];
  v6 = [inflightFolderPath stringByAppendingPathComponent:identifierCopy];

  return v6;
}

- (id)failedTaskPathForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  failedFolderPath = [(SHLCloudLibraryCache *)self failedFolderPath];
  v6 = [failedFolderPath stringByAppendingPathComponent:identifierCopy];

  return v6;
}

- (BOOL)startTransactionWithError:(id *)error
{
  if (![(SHLCloudLibraryCache *)self doesPrivateDatabaseFolderPathExist]&& ![(SHLCloudLibraryCache *)self createPrivateDatabaseFolderPathWithError:error])
  {
    return 0;
  }

  v5 = +[NSFileManager defaultManager];
  privateDatabaseTransactionPath = [(SHLCloudLibraryCache *)self privateDatabaseTransactionPath];
  v7 = [v5 fileExistsAtPath:privateDatabaseTransactionPath];

  if (v7)
  {
    if (![(SHLCloudLibraryCache *)self undoTransactionWithError:error])
    {
      return 0;
    }
  }

  v8 = +[NSFileManager defaultManager];
  privateDatabaseFolderPath = [(SHLCloudLibraryCache *)self privateDatabaseFolderPath];
  privateDatabaseTransactionPath2 = [(SHLCloudLibraryCache *)self privateDatabaseTransactionPath];
  v11 = [v8 copyItemAtPath:privateDatabaseFolderPath toPath:privateDatabaseTransactionPath2 error:error];

  return v11;
}

- (BOOL)undoTransactionWithError:(id *)error
{
  v5 = +[NSFileManager defaultManager];
  privateDatabaseTransactionPath = [(SHLCloudLibraryCache *)self privateDatabaseTransactionPath];
  LOBYTE(error) = [v5 removeItemAtPath:privateDatabaseTransactionPath error:error];

  return error;
}

- (BOOL)commitTransactionWithError:(id *)error
{
  v5 = +[NSFileManager defaultManager];
  privateDatabaseFolderPath = [(SHLCloudLibraryCache *)self privateDatabaseFolderPath];
  v7 = [NSURL fileURLWithPath:privateDatabaseFolderPath];
  privateDatabaseTransactionPath = [(SHLCloudLibraryCache *)self privateDatabaseTransactionPath];
  v9 = [NSURL fileURLWithPath:privateDatabaseTransactionPath];
  LOBYTE(error) = [v5 replaceItemAtURL:v7 withItemAtURL:v9 backupItemName:0 options:0 resultingItemURL:0 error:error];

  return error;
}

- (BOOL)migrateWithError:(id *)error
{
  [(SHLCloudLibraryCache *)self createBundleDirectory];
  v5 = +[NSFileManager defaultManager];
  legacyCacheDirectory = [(SHLCloudLibraryCache *)self legacyCacheDirectory];
  cacheDirectory = [(SHLCloudLibraryCache *)self cacheDirectory];
  v8 = [v5 copyItemAtPath:legacyCacheDirectory toPath:cacheDirectory error:error];

  if (v8)
  {
    v9 = +[NSFileManager defaultManager];
    legacyCacheDirectory2 = [(SHLCloudLibraryCache *)self legacyCacheDirectory];
    [v9 removeItemAtPath:legacyCacheDirectory2 error:0];
  }

  return v8;
}

@end