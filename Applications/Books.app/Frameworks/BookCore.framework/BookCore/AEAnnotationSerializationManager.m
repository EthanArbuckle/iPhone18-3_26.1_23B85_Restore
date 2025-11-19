@interface AEAnnotationSerializationManager
+ (BOOL)managedBooksAllowedToSync;
+ (id)annotationSerializationManagerWithAssetID:(id)a3 assetURL:(id)a4 bookVersionString:(id)a5 pathToAssetContextDirectory:(id)a6 isManagedBook:(BOOL)a7;
+ (id)annotationSerializationManagerWithBookMetadataProvider:(id)a3;
- (AEAnnotationSerializationManager)initWithBookMetadataProvider:(id)a3;
- (BOOL)isAssetOfflineWithAssetID:(id)a3;
- (BOOL)p_ensureDirectoryPathExists:(id)a3;
- (BOOL)takeBookOfflineIfManagedWithAnnotationProvider:(id)a3 assetID:(id)a4;
- (id)annotationProviderForOfflineDBWithAssetID:(id)a3;
- (id)p_filenameForOfflineDBWithAssetID:(id)a3;
- (id)urlForOfflineDBWithAssetID:(id)a3;
- (void)protected_takeAssetOfflineWithProvider:(id)a3 assetID:(id)a4 copyData:(BOOL)a5;
- (void)removeOfflineDBFilesWithAssetID:(id)a3 exceptBookVersionString:(id)a4;
@end

@implementation AEAnnotationSerializationManager

+ (BOOL)managedBooksAllowedToSync
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 isEnterpriseBookMetadataSyncAllowed];

  return v3;
}

+ (id)annotationSerializationManagerWithAssetID:(id)a3 assetURL:(id)a4 bookVersionString:(id)a5 pathToAssetContextDirectory:(id)a6 isManagedBook:(BOOL)a7
{
  v7 = [AESingleBookMetadataProvider singleBookMetadataProviderWithAssetID:a3 assetURL:a4 bookVersionString:a5 pathToAssetContextDirectory:a6 isManagedBook:a7];
  v8 = [objc_opt_class() annotationSerializationManagerWithBookMetadataProvider:v7];

  return v8;
}

+ (id)annotationSerializationManagerWithBookMetadataProvider:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBookMetadataProvider:v3];

  return v4;
}

- (AEAnnotationSerializationManager)initWithBookMetadataProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AEAnnotationSerializationManager;
  v5 = [(AEAnnotationSerializationManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AEAnnotationSerializationManager *)v5 setBookMetadataProvider:v4];
  }

  return v6;
}

- (id)annotationProviderForOfflineDBWithAssetID:(id)a3
{
  v3 = [(AEAnnotationSerializationManager *)self urlForOfflineDBWithAssetID:a3];
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

- (id)urlForOfflineDBWithAssetID:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotationSerializationManager *)self bookMetadataProvider];
  v6 = [v5 isManagedWithAssetID:v4];

  v7 = [(AEAnnotationSerializationManager *)self bookMetadataProvider];

  if (!v7)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v8 = [(AEAnnotationSerializationManager *)self bookMetadataProvider];
  v9 = v8;
  if (v6)
  {
    v10 = [v8 assetURLForAssetID:v4];

    v11 = [v10 URLByDeletingLastPathComponent];
    v12 = [(AEAnnotationSerializationManager *)self p_filenameForOfflineDBWithAssetID:v4];
    v13 = [v11 URLByAppendingPathComponent:v12];
  }

  else
  {
    v10 = [v8 pathToContextDirectoryForAssetID:v4];

    if (!v10)
    {
      v13 = 0;
      goto LABEL_8;
    }

    v14 = +[NSFileManager defaultManager];
    v17 = 0;
    [v14 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v17];

    v15 = [(AEAnnotationSerializationManager *)self p_filenameForOfflineDBWithAssetID:v4];
    v11 = [v10 stringByAppendingPathComponent:v15];

    v13 = [NSURL fileURLWithPath:v11];
  }

LABEL_8:
LABEL_9:

  return v13;
}

- (BOOL)isAssetOfflineWithAssetID:(id)a3
{
  v3 = [(AEAnnotationSerializationManager *)self urlForOfflineDBWithAssetID:a3];
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  return v6;
}

- (void)removeOfflineDBFilesWithAssetID:(id)a3 exceptBookVersionString:(id)a4
{
  v6 = a3;
  v7 = [(AEAnnotationSerializationManager *)self bookMetadataProvider];

  if (v7)
  {
    v8 = [(AEAnnotationSerializationManager *)self bookMetadataProvider];
    v9 = [v8 pathToContextDirectoryForAssetID:v6];

    v27 = v9;
    if (v9)
    {
      if (a4)
      {
        v10 = [(AEAnnotationSerializationManager *)self p_filenameForOfflineDBWithAssetID:v6];
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
          v26 = v6;
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
                v24 = [v11[90] defaultManager];
                v28 = 0;
                [v24 removeItemAtPath:v22 error:&v28];
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
          v6 = v26;
        }

        else
        {
          v14 = v13;
        }
      }
    }
  }
}

- (BOOL)takeBookOfflineIfManagedWithAnnotationProvider:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AEAnnotationSerializationManager *)self bookMetadataProvider];

  if (v8)
  {
    v9 = [(AEAnnotationSerializationManager *)self bookMetadataProvider];
    v10 = [v9 isManagedWithAssetID:v7];

    if (v10)
    {
      v11 = [(AEAnnotationSerializationManager *)self isAssetOfflineWithAssetID:v7];
      v12 = [objc_opt_class() managedBooksAllowedToSync];
      LOBYTE(v8) = 0;
      if ((v11 & 1) == 0 && (v12 & 1) == 0)
      {
        LOBYTE(v8) = 1;
        [(AEAnnotationSerializationManager *)self protected_takeAssetOfflineWithProvider:v6 assetID:v7 copyData:1];
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (BOOL)p_ensureDirectoryPathExists:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = +[NSFileManager defaultManager];
  v15 = 0;
  [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v15];
  v5 = v15;

  v13 = v5 == 0;
  if (v5)
  {
    sub_1EB3D8(v3, v6, v7, v8, v9, v10, v11, v12);
LABEL_4:
    v13 = 0;
  }

  return v13;
}

- (void)protected_takeAssetOfflineWithProvider:(id)a3 assetID:(id)a4 copyData:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if ([(AEAnnotationSerializationManager *)self isAssetOfflineWithAssetID:v9])
  {
    sub_1EB4B4(v9, buf, v10, v11, v12, v13, v14, v15);
    v16 = *buf;
  }

  else
  {
    v16 = [(AEAnnotationSerializationManager *)self urlForOfflineDBWithAssetID:v9];
    v17 = BKMobileCloudSyncAnnotationsLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v9;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Taking asset offline. assetID: %@, db url: %@", buf, 0x16u);
    }

    if (v16 && ([v16 URLByDeletingLastPathComponent], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "path"), v19 = objc_claimAutoreleasedReturnValue(), v20 = -[AEAnnotationSerializationManager p_ensureDirectoryPathExists:](self, "p_ensureDirectoryPathExists:", v19), v19, v18, v20))
    {
      if (a5)
      {
        [AEAnnotation predicateForAnnotationsWithAssetID:v9 includingDeleted:0];
      }

      else
      {
        [NSPredicate predicateWithValue:0];
      }
      v22 = ;
      v31 = 0;
      [v8 exportAnnotationsMatchingPredicate:v22 toURL:v16 withType:0 error:&v31];
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

- (id)p_filenameForOfflineDBWithAssetID:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotationSerializationManager *)self bookMetadataProvider];
  v6 = [v5 bookVersionStringForAssetID:v4];

  if (v4)
  {
    v15 = &stru_2D2930;
    if (v6)
    {
      v15 = v6;
    }

    v16 = [NSString stringWithFormat:@"%@:%@:%@:.sqlite", @"offlineNotes", v4, v15];
  }

  else
  {
    sub_1EB590(v7, v8, v9, v10, v11, v12, v13, v14);
    v16 = 0;
  }

  return v16;
}

@end