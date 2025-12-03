@interface AEAnnotationSerializationManager
+ (BOOL)managedBooksAllowedToSync;
+ (id)annotationSerializationManagerWithAssetID:(id)d assetURL:(id)l bookVersionString:(id)string pathToAssetContextDirectory:(id)directory isManagedBook:(BOOL)book;
+ (id)annotationSerializationManagerWithBookMetadataProvider:(id)provider;
- (AEAnnotationSerializationManager)initWithBookMetadataProvider:(id)provider;
- (BOOL)isAssetOfflineWithAssetID:(id)d;
- (BOOL)p_ensureDirectoryPathExists:(id)exists;
- (BOOL)takeBookOfflineIfManagedWithAnnotationProvider:(id)provider assetID:(id)d;
- (id)annotationProviderForOfflineDBWithAssetID:(id)d;
- (id)p_filenameForOfflineDBWithAssetID:(id)d;
- (id)urlForOfflineDBWithAssetID:(id)d;
- (void)protected_takeAssetOfflineWithProvider:(id)provider assetID:(id)d copyData:(BOOL)data;
- (void)removeOfflineDBFilesWithAssetID:(id)d exceptBookVersionString:(id)string;
@end

@implementation AEAnnotationSerializationManager

+ (BOOL)managedBooksAllowedToSync
{
  v2 = +[MCProfileConnection sharedConnection];
  isEnterpriseBookMetadataSyncAllowed = [v2 isEnterpriseBookMetadataSyncAllowed];

  return isEnterpriseBookMetadataSyncAllowed;
}

+ (id)annotationSerializationManagerWithAssetID:(id)d assetURL:(id)l bookVersionString:(id)string pathToAssetContextDirectory:(id)directory isManagedBook:(BOOL)book
{
  v7 = [AESingleBookMetadataProvider singleBookMetadataProviderWithAssetID:d assetURL:l bookVersionString:string pathToAssetContextDirectory:directory isManagedBook:book];
  v8 = [objc_opt_class() annotationSerializationManagerWithBookMetadataProvider:v7];

  return v8;
}

+ (id)annotationSerializationManagerWithBookMetadataProvider:(id)provider
{
  providerCopy = provider;
  v4 = [objc_alloc(objc_opt_class()) initWithBookMetadataProvider:providerCopy];

  return v4;
}

- (AEAnnotationSerializationManager)initWithBookMetadataProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = AEAnnotationSerializationManager;
  v5 = [(AEAnnotationSerializationManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AEAnnotationSerializationManager *)v5 setBookMetadataProvider:providerCopy];
  }

  return v6;
}

- (id)annotationProviderForOfflineDBWithAssetID:(id)d
{
  v3 = [(AEAnnotationSerializationManager *)self urlForOfflineDBWithAssetID:d];
  if (v3)
  {
    v11 = [[AEAnnotationProvider alloc] initWithPersistentStoreURL:v3];
    if (!v11)
    {
      sub_1EB38C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)urlForOfflineDBWithAssetID:(id)d
{
  dCopy = d;
  bookMetadataProvider = [(AEAnnotationSerializationManager *)self bookMetadataProvider];
  v6 = [bookMetadataProvider isManagedWithAssetID:dCopy];

  bookMetadataProvider2 = [(AEAnnotationSerializationManager *)self bookMetadataProvider];

  if (!bookMetadataProvider2)
  {
    v13 = 0;
    goto LABEL_9;
  }

  bookMetadataProvider3 = [(AEAnnotationSerializationManager *)self bookMetadataProvider];
  v9 = bookMetadataProvider3;
  if (v6)
  {
    v10 = [bookMetadataProvider3 assetURLForAssetID:dCopy];

    uRLByDeletingLastPathComponent = [v10 URLByDeletingLastPathComponent];
    v12 = [(AEAnnotationSerializationManager *)self p_filenameForOfflineDBWithAssetID:dCopy];
    v13 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v12];
  }

  else
  {
    v10 = [bookMetadataProvider3 pathToContextDirectoryForAssetID:dCopy];

    if (!v10)
    {
      v13 = 0;
      goto LABEL_8;
    }

    v14 = +[NSFileManager defaultManager];
    v17 = 0;
    [v14 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v17];

    v15 = [(AEAnnotationSerializationManager *)self p_filenameForOfflineDBWithAssetID:dCopy];
    uRLByDeletingLastPathComponent = [v10 stringByAppendingPathComponent:v15];

    v13 = [NSURL fileURLWithPath:uRLByDeletingLastPathComponent];
  }

LABEL_8:
LABEL_9:

  return v13;
}

- (BOOL)isAssetOfflineWithAssetID:(id)d
{
  v3 = [(AEAnnotationSerializationManager *)self urlForOfflineDBWithAssetID:d];
  v4 = +[NSFileManager defaultManager];
  path = [v3 path];
  v6 = [v4 fileExistsAtPath:path];

  return v6;
}

- (void)removeOfflineDBFilesWithAssetID:(id)d exceptBookVersionString:(id)string
{
  dCopy = d;
  bookMetadataProvider = [(AEAnnotationSerializationManager *)self bookMetadataProvider];

  if (bookMetadataProvider)
  {
    bookMetadataProvider2 = [(AEAnnotationSerializationManager *)self bookMetadataProvider];
    v9 = [bookMetadataProvider2 pathToContextDirectoryForAssetID:dCopy];

    v27 = v9;
    if (v9)
    {
      if (string)
      {
        v10 = [(AEAnnotationSerializationManager *)self p_filenameForOfflineDBWithAssetID:dCopy];
      }

      else
      {
        v10 = 0;
      }

      v11 = &_s5JSApp18ProcessEnvironmentC7currentACvgZ_ptr;
      v12 = +[NSFileManager defaultManager];
      v33 = 0;
      v13 = [v12 contentsOfDirectoryAtPath:v27 error:&v33];
      v14 = v33;

      if (v14)
      {
        NSLog(@"unexpected error reading file system: %@", v14);
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = v13;
        v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v15)
        {
          v16 = v15;
          v26 = dCopy;
          v17 = *v30;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v19 = *(*(&v29 + 1) + 8 * i);
              if ([v19 hasPrefix:@"offlineNotes"] && (objc_msgSend(v19, "hasPrefix:", v10) & 1) == 0)
              {
                v20 = v13;
                v21 = v10;
                v22 = [v27 stringByAppendingPathComponent:v19];
                v23 = v11;
                defaultManager = [v11[90] defaultManager];
                v28 = 0;
                [defaultManager removeItemAtPath:v22 error:&v28];
                v25 = v28;

                if (v25)
                {
                  NSLog(@"error deleting offline annotation database file '%@': '%@'", v19, v25);
                }

                v11 = v23;
                v10 = v21;
                v13 = v20;
              }
            }

            v16 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
          }

          while (v16);
          v14 = v13;
          dCopy = v26;
        }

        else
        {
          v14 = v13;
        }
      }
    }
  }
}

- (BOOL)takeBookOfflineIfManagedWithAnnotationProvider:(id)provider assetID:(id)d
{
  providerCopy = provider;
  dCopy = d;
  bookMetadataProvider = [(AEAnnotationSerializationManager *)self bookMetadataProvider];

  if (bookMetadataProvider)
  {
    bookMetadataProvider2 = [(AEAnnotationSerializationManager *)self bookMetadataProvider];
    v10 = [bookMetadataProvider2 isManagedWithAssetID:dCopy];

    if (v10)
    {
      v11 = [(AEAnnotationSerializationManager *)self isAssetOfflineWithAssetID:dCopy];
      managedBooksAllowedToSync = [objc_opt_class() managedBooksAllowedToSync];
      LOBYTE(bookMetadataProvider) = 0;
      if ((v11 & 1) == 0 && (managedBooksAllowedToSync & 1) == 0)
      {
        LOBYTE(bookMetadataProvider) = 1;
        [(AEAnnotationSerializationManager *)self protected_takeAssetOfflineWithProvider:providerCopy assetID:dCopy copyData:1];
      }
    }

    else
    {
      LOBYTE(bookMetadataProvider) = 0;
    }
  }

  return bookMetadataProvider;
}

- (BOOL)p_ensureDirectoryPathExists:(id)exists
{
  existsCopy = exists;
  if (!existsCopy)
  {
    goto LABEL_4;
  }

  v4 = +[NSFileManager defaultManager];
  v15 = 0;
  [v4 createDirectoryAtPath:existsCopy withIntermediateDirectories:1 attributes:0 error:&v15];
  v5 = v15;

  v13 = v5 == 0;
  if (v5)
  {
    sub_1EB3D8(existsCopy, v6, v7, v8, v9, v10, v11, v12);
LABEL_4:
    v13 = 0;
  }

  return v13;
}

- (void)protected_takeAssetOfflineWithProvider:(id)provider assetID:(id)d copyData:(BOOL)data
{
  providerCopy = provider;
  dCopy = d;
  if ([(AEAnnotationSerializationManager *)self isAssetOfflineWithAssetID:dCopy])
  {
    sub_1EB4B4(dCopy, buf, v10, v11, v12, v13, v14, v15);
    v16 = *buf;
  }

  else
  {
    v16 = [(AEAnnotationSerializationManager *)self urlForOfflineDBWithAssetID:dCopy];
    v17 = BKMobileCloudSyncAnnotationsLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = dCopy;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Taking asset offline. assetID: %@, db url: %@", buf, 0x16u);
    }

    if (v16 && ([v16 URLByDeletingLastPathComponent], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "path"), v19 = objc_claimAutoreleasedReturnValue(), v20 = -[AEAnnotationSerializationManager p_ensureDirectoryPathExists:](self, "p_ensureDirectoryPathExists:", v19), v19, v18, v20))
    {
      if (data)
      {
        [AEAnnotation predicateForAnnotationsWithAssetID:dCopy includingDeleted:0];
      }

      else
      {
        [NSPredicate predicateWithValue:0];
      }
      v22 = ;
      v31 = 0;
      [providerCopy exportAnnotationsMatchingPredicate:v22 toURL:v16 withType:0 error:&v31];
      v23 = v31;
      v21 = v23;
      if (v23)
      {
        sub_1EB424(v23, v24, v25, v26, v27, v28, v29, v30);
      }
    }

    else
    {
      v21 = BKMobileCloudSyncAnnotationsLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1EB470(v21);
      }
    }
  }
}

- (id)p_filenameForOfflineDBWithAssetID:(id)d
{
  dCopy = d;
  bookMetadataProvider = [(AEAnnotationSerializationManager *)self bookMetadataProvider];
  v6 = [bookMetadataProvider bookVersionStringForAssetID:dCopy];

  if (dCopy)
  {
    v15 = &stru_2D2930;
    if (v6)
    {
      v15 = v6;
    }

    v16 = [NSString stringWithFormat:@"%@:%@:%@:.sqlite", @"offlineNotes", dCopy, v15];
  }

  else
  {
    sub_1EB590(v7, v8, v9, v10, v11, v12, v13, v14);
    v16 = 0;
  }

  return v16;
}

@end