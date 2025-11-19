@interface AEAnnotationSidecarConsumer
+ (id)annotationUuidsFromDictionaryRepresentations:(id)a3;
+ (id)modificationDatesFromDictionaryRepresentations:(id)a3;
- (BOOL)acknowledgeMergingAnnotationsWithAssetVersionMismatch:(id)a3 assetID:(id)a4 provider:(id)a5;
- (id)fileTimestamp;
- (id)timestampCacheKey;
- (void)cacheTimestamp;
- (void)mergeIntoAnnotationProvider:(id)a3 completionBlock:(id)a4;
- (void)read;
@end

@implementation AEAnnotationSidecarConsumer

+ (id)annotationUuidsFromDictionaryRepresentations:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [AEAnnotation annotationUuidFromDictionaryRepresentation:*(*(&v14 + 1) + 8 * i), v14];
        if ([(__CFString *)v10 length])
        {
          v11 = v4;
          v12 = v10;
        }

        else
        {
          v11 = v4;
          v12 = &stru_2D2930;
        }

        [v11 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)modificationDatesFromDictionaryRepresentations:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [AEAnnotation lastModificationFromDictionaryRepresentation:*(*(&v13 + 1) + 8 * i), v13];
        if (v10)
        {
          [v4 addObject:v10];
        }

        else
        {
          v11 = [NSNumber numberWithInt:0];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)mergeIntoAnnotationProvider:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  generation = self->super._generation;
  self->super._generation = 0;

  bookmarks = self->_bookmarks;
  self->_bookmarks = 0;

  acknowledgedMismatchingAssetIDs = self->_acknowledgedMismatchingAssetIDs;
  self->_acknowledgedMismatchingAssetIDs = 0;

  if (v6)
  {
    [(AEAnnotationSidecarConsumer *)self read];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_D74FC;
    v15 = &unk_2CCD58;
    v16 = self;
    v17 = v6;
    [v17 performBlockOnUserSideQueueAndWait:&v12];
    [(AEAnnotationSidecarConsumer *)self cacheTimestamp:v12];
  }

  v11 = self->_bookmarks;
  self->_bookmarks = 0;

  if (v7)
  {
    v7[2](v7);
  }
}

- (id)timestampCacheKey
{
  v2 = [(NSString *)self->super._filePath lastPathComponent];
  v3 = [v2 stringByAppendingString:@"-Timestamp"];

  return v3;
}

- (id)fileTimestamp
{
  v3 = objc_alloc_init(NSFileManager);
  if ([v3 fileExistsAtPath:self->super._filePath])
  {
    v4 = [v3 attributesOfItemAtPath:self->super._filePath error:0];
    v5 = [v4 objectForKey:NSFileModificationDate];
    if (v5)
    {
      v6 = objc_alloc_init(NSDateFormatter);
      [v6 setDateFormat:@"HH:mm:ss;yyyy-MM-dd"];
      v7 = [v6 stringFromDate:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = +[AEAnnotationSidecarConsumer doesNotExistTimestamp];
  }

  objc_storeStrong(&self->_timestamp, v7);

  return v7;
}

- (void)cacheTimestamp
{
  if ([(NSString *)self->_timestamp length]&& (v3 = self->_timestamp, +[AEAnnotationSidecarConsumer doesNotExistTimestamp], v4 = objc_claimAutoreleasedReturnValue(), LOBYTE(v3) = [(NSString *)v3 isEqualToString:v4], v4, (v3 & 1) == 0))
  {
    self->super._userDefaultsChanged = 1;
    v7 = +[NSUserDefaults standardUserDefaults];
    timestamp = self->_timestamp;
    v5 = [(AEAnnotationSidecarConsumer *)self timestampCacheKey];
    [v7 setObject:timestamp forKey:v5];
  }

  else
  {
    self->super._userDefaultsChanged = 1;
    v7 = +[NSUserDefaults standardUserDefaults];
    v5 = [(AEAnnotationSidecarConsumer *)self timestampCacheKey];
    [v7 removeObjectForKey:v5];
  }
}

- (void)read
{
  generation = self->super._generation;
  self->super._generation = 0;

  bookmarks = self->_bookmarks;
  self->_bookmarks = 0;

  v5 = self->_timestamp;
  if (!v5)
  {
    v5 = [(AEAnnotationSidecarConsumer *)self fileTimestamp];
  }

  v6 = +[AEAnnotationSidecarConsumer doesNotExistTimestamp];
  v7 = [(NSString *)v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [[NSDictionary alloc] initWithContentsOfFile:self->super._filePath];
    if (v8)
    {
      v9 = +[AEAnnotationSidecarProducer defaultBookmarkContainerKey];
      v10 = [v8 objectForKey:v9];

      if (v10)
      {
        v11 = +[AEAnnotationSidecarProducer defaultBookmarkGenerationKey];
        v12 = [v10 objectForKey:v11];
        v13 = self->super._generation;
        self->super._generation = v12;

        v14 = [objc_opt_class() defaultWrapperRevisionKey];
        v15 = [v10 objectForKey:v14];

        if (v15)
        {
          if ([@"5" compare:v15 options:64] == -1)
          {
            v21 = BCIMLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v23 = 136315650;
              v24 = "[AEAnnotationSidecarConsumer read]";
              v25 = 2080;
              v26 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AssetsEngine/AECore/AEAnnotationSidecarConsumer.m";
              v27 = 1024;
              v28 = 310;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "%s %s:%d", &v23, 0x1Cu);
            }

            v22 = BCIMLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = 138412546;
              v24 = v15;
              v25 = 2112;
              v26 = @"5";
              _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "@Can't consume sidecar. Wrapper-Revision too high. Wrapper-Revision {%@} Annotation-Current {%@}", &v23, 0x16u);
            }
          }

          else
          {
            v16 = [v10 objectForKey:v15];
            v17 = self->_bookmarks;
            self->_bookmarks = v16;
          }
        }

        else
        {
          v18 = +[AEAnnotationSidecarProducer legacyBookmarkKey];
          v19 = [v10 objectForKey:v18];
          v20 = self->_bookmarks;
          self->_bookmarks = v19;
        }
      }
    }
  }
}

- (BOOL)acknowledgeMergingAnnotationsWithAssetVersionMismatch:(id)a3 assetID:(id)a4 provider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_acknowledgedMismatchingAssetIDs)
  {
    if (v8)
    {
LABEL_3:
      v11 = [v9 stringByAppendingFormat:@":%@", v8];
      goto LABEL_6;
    }
  }

  else
  {
    v12 = objc_alloc_init(NSMutableSet);
    acknowledgedMismatchingAssetIDs = self->_acknowledgedMismatchingAssetIDs;
    self->_acknowledgedMismatchingAssetIDs = v12;

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v11 = v9;
LABEL_6:
  v14 = v11;
  if (([(NSMutableSet *)self->_acknowledgedMismatchingAssetIDs containsObject:v11]& 1) == 0)
  {
    if (![v10 acknowledgeMergingAnnotationsWithAssetVersionMismatch:v8 assetID:v9])
    {
      v15 = 0;
      goto LABEL_11;
    }

    [(NSMutableSet *)self->_acknowledgedMismatchingAssetIDs addObject:v14];
  }

  v15 = 1;
LABEL_11:

  return v15;
}

@end