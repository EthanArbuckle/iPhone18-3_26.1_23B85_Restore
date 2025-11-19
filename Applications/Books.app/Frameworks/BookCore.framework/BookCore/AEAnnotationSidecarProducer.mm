@interface AEAnnotationSidecarProducer
- (AEAnnotationSidecarProducer)initWithName:(id)a3;
- (id)cachedGeneration;
- (id)generationCacheKey;
- (id)maxAnnotationVersionInMOC:(id)a3;
- (id)newBookmarkDictionarysArray:(id)a3 modern:(BOOL)a4;
- (void)appendData:(id)a3;
- (void)cacheGeneration;
- (void)dealloc;
- (void)rewriteWithAnnotationProvider:(id)a3 completionBlock:(id)a4;
@end

@implementation AEAnnotationSidecarProducer

- (AEAnnotationSidecarProducer)initWithName:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotationSidecarProducer *)self init];
  if (v5 && [v4 length])
  {
    v6 = +[NSURL bu_booksRepositoryURL];
    v7 = [v6 URLByAppendingPathComponent:v4];
    v8 = [v7 path];
    filePath = v5->_filePath;
    v5->_filePath = v8;
  }

  return v5;
}

- (void)dealloc
{
  filePath = self->_filePath;
  self->_filePath = 0;

  generation = self->_generation;
  self->_generation = 0;

  if (self->_userDefaultsChanged)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 synchronize];
  }

  v6.receiver = self;
  v6.super_class = AEAnnotationSidecarProducer;
  [(AEAnnotationSidecarProducer *)&v6 dealloc];
}

- (id)generationCacheKey
{
  v2 = [(NSString *)self->_filePath lastPathComponent];
  v3 = [v2 stringByAppendingString:@"-Generation"];

  return v3;
}

- (id)cachedGeneration
{
  v2 = [(AEAnnotationSidecarProducer *)self generationCacheKey];
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:v2];

  return v4;
}

- (void)cacheGeneration
{
  v3 = [(NSNumber *)self->_generation intValue];
  self->_userDefaultsChanged = 1;
  v6 = +[NSUserDefaults standardUserDefaults];
  if (v3 < 1)
  {
    v5 = [(AEAnnotationSidecarProducer *)self generationCacheKey];
    [v6 removeObjectForKey:v5];
  }

  else
  {
    generation = self->_generation;
    v5 = [(AEAnnotationSidecarProducer *)self generationCacheKey];
    [v6 setObject:generation forKey:v5];
  }
}

- (void)rewriteWithAnnotationProvider:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  generation = self->_generation;
  self->_generation = 0;

  v9 = [(NSString *)self->_filePath length];
  if (v6 && v9)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_123188;
    v19 = sub_123198;
    v20 = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1231A0;
    v14[3] = &unk_2CD898;
    v14[4] = &v15;
    [v6 performBlockOnUserSideQueueAndWait:v14];
    if (v16[5])
    {
      v10 = [(AEAnnotationSidecarProducer *)self cachedGeneration];
      v11 = [v10 unsignedLongLongValue];
      if (v11 >= [v16[5] unsignedLongLongValue])
      {
        v12 = +[NSFileManager defaultManager];
        [v12 fileExistsAtPath:self->_filePath];
      }

      objc_storeStrong(&self->_generation, v16[5]);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_123304;
      v13[3] = &unk_2CD8C0;
      v13[4] = self;
      [v6 performBlockOnUserSideQueueAndWait:v13];
      [(AEAnnotationSidecarProducer *)self cacheGeneration];
    }

    _Block_object_dispose(&v15, 8);
  }

  if (v7)
  {
    v7[2](v7);
  }
}

- (id)newBookmarkDictionarysArray:(id)a3 modern:(BOOL)a4
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = +[AEAnnotation userAnnotationTypeValues];
  v7 = [NSPredicate predicateWithFormat:@"%K IN %@", @"annotationType", v6];

  v8 = [AEAnnotation modernDictionaryRepresentationForAnnotationsMatchingPredicate:v7 inManagedObjectContext:v4];

  objc_autoreleasePoolPop(v5);
  return v8;
}

- (id)maxAnnotationVersionInMOC:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithValue:1];
  v16 = v3;
  v5 = [AEAnnotation maxAnnotationVersionForAssetsWithPredicate:v4 inManagedObjectContext:v3];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 allValues];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) valueForKey:@"futureProofing2"];
        v13 = v12;
        if (v12)
        {
          if (v9)
          {
            if ([v9 compare:v12 options:64])
            {
              v14 = v13;

              v9 = v14;
            }
          }

          else
          {
            v9 = v12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)appendData:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableDictionary alloc] initWithContentsOfFile:self->_filePath];
  if (!v5)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
  }

  v8 = v5;
  v6 = [objc_opt_class() defaultBookmarkContainerKey];
  [v8 setObject:v4 forKey:v6];

  v7 = [NSPropertyListSerialization dataWithPropertyList:v8 format:100 options:0 error:0];
  [v7 writeToFile:self->_filePath atomically:1];
}

@end