@interface AEAnnotationSidecarProducer
- (AEAnnotationSidecarProducer)initWithName:(id)name;
- (id)cachedGeneration;
- (id)generationCacheKey;
- (id)maxAnnotationVersionInMOC:(id)c;
- (id)newBookmarkDictionarysArray:(id)array modern:(BOOL)modern;
- (void)appendData:(id)data;
- (void)cacheGeneration;
- (void)dealloc;
- (void)rewriteWithAnnotationProvider:(id)provider completionBlock:(id)block;
@end

@implementation AEAnnotationSidecarProducer

- (AEAnnotationSidecarProducer)initWithName:(id)name
{
  nameCopy = name;
  v5 = [(AEAnnotationSidecarProducer *)self init];
  if (v5 && [nameCopy length])
  {
    v6 = +[NSURL bu_booksRepositoryURL];
    v7 = [v6 URLByAppendingPathComponent:nameCopy];
    path = [v7 path];
    filePath = v5->_filePath;
    v5->_filePath = path;
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
  lastPathComponent = [(NSString *)self->_filePath lastPathComponent];
  v3 = [lastPathComponent stringByAppendingString:@"-Generation"];

  return v3;
}

- (id)cachedGeneration
{
  generationCacheKey = [(AEAnnotationSidecarProducer *)self generationCacheKey];
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:generationCacheKey];

  return v4;
}

- (void)cacheGeneration
{
  intValue = [(NSNumber *)self->_generation intValue];
  self->_userDefaultsChanged = 1;
  v6 = +[NSUserDefaults standardUserDefaults];
  if (intValue < 1)
  {
    generationCacheKey = [(AEAnnotationSidecarProducer *)self generationCacheKey];
    [v6 removeObjectForKey:generationCacheKey];
  }

  else
  {
    generation = self->_generation;
    generationCacheKey = [(AEAnnotationSidecarProducer *)self generationCacheKey];
    [v6 setObject:generation forKey:generationCacheKey];
  }
}

- (void)rewriteWithAnnotationProvider:(id)provider completionBlock:(id)block
{
  providerCopy = provider;
  blockCopy = block;
  generation = self->_generation;
  self->_generation = 0;

  v9 = [(NSString *)self->_filePath length];
  if (providerCopy && v9)
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
    [providerCopy performBlockOnUserSideQueueAndWait:v14];
    if (v16[5])
    {
      cachedGeneration = [(AEAnnotationSidecarProducer *)self cachedGeneration];
      unsignedLongLongValue = [cachedGeneration unsignedLongLongValue];
      if (unsignedLongLongValue >= [v16[5] unsignedLongLongValue])
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
      [providerCopy performBlockOnUserSideQueueAndWait:v13];
      [(AEAnnotationSidecarProducer *)self cacheGeneration];
    }

    _Block_object_dispose(&v15, 8);
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (id)newBookmarkDictionarysArray:(id)array modern:(BOOL)modern
{
  arrayCopy = array;
  v5 = objc_autoreleasePoolPush();
  v6 = +[AEAnnotation userAnnotationTypeValues];
  v7 = [NSPredicate predicateWithFormat:@"%K IN %@", @"annotationType", v6];

  v8 = [AEAnnotation modernDictionaryRepresentationForAnnotationsMatchingPredicate:v7 inManagedObjectContext:arrayCopy];

  objc_autoreleasePoolPop(v5);
  return v8;
}

- (id)maxAnnotationVersionInMOC:(id)c
{
  cCopy = c;
  v4 = [NSPredicate predicateWithValue:1];
  v16 = cCopy;
  v5 = [AEAnnotation maxAnnotationVersionForAssetsWithPredicate:v4 inManagedObjectContext:cCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [v5 allValues];
  v7 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allValues);
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

      v8 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)appendData:(id)data
{
  dataCopy = data;
  v5 = [[NSMutableDictionary alloc] initWithContentsOfFile:self->_filePath];
  if (!v5)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
  }

  v8 = v5;
  defaultBookmarkContainerKey = [objc_opt_class() defaultBookmarkContainerKey];
  [v8 setObject:dataCopy forKey:defaultBookmarkContainerKey];

  v7 = [NSPropertyListSerialization dataWithPropertyList:v8 format:100 options:0 error:0];
  [v7 writeToFile:self->_filePath atomically:1];
}

@end