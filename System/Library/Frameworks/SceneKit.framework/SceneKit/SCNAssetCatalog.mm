@interface SCNAssetCatalog
+ (id)assetCatalogForResourceURL:(id)l;
+ (id)assetCatalogNamed:(id)named;
+ (id)assetCatalogWithURL:(id)l;
+ (id)objectWithName:(id)name class:(Class)class;
+ (id)recursivePathsForResourcesOfType:(id)type inDirectory:(id)directory;
+ (void)clearCache;
- (id)URLOfResourceNamed:(id)named;
- (id)actionNamed:(id)named;
- (id)animationNamed:(id)named;
- (id)particleSystemNamed:(id)named;
- (id)pathByMakingURLRelativeToCatalog:(id)catalog;
- (id)sceneNamed:(id)named;
- (id)sceneWithURL:(id)l;
- (void)cacheObject:(id)object withTimestamp:(double)timestamp forKey:(id)key;
- (void)dealloc;
@end

@implementation SCNAssetCatalog

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNAssetCatalog;
  [(SCNAssetCatalog *)&v3 dealloc];
}

+ (id)assetCatalogNamed:(id)named
{
  pathExtension = [named pathExtension];
  if (![(__CFString *)pathExtension length])
  {
    pathExtension = @"scnasset";
  }

  result = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (result)
  {

    return [self assetCatalogWithURL:result];
  }

  return result;
}

+ (id)assetCatalogWithURL:(id)l
{
  v4 = objc_alloc_init(SCNAssetCatalog);
  v4->_catalogURL = l;

  return v4;
}

+ (id)assetCatalogForResourceURL:(id)l
{
  v5 = [objc_msgSend(l "path")];
  if (v6)
  {
    v7 = [objc_msgSend(l "path")];
    uRLByDeletingLastPathComponent = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  }

  else
  {
    uRLByDeletingLastPathComponent = [l URLByDeletingLastPathComponent];
  }

  return [self assetCatalogWithURL:uRLByDeletingLastPathComponent];
}

- (id)URLOfResourceNamed:(id)named
{
  db = self->_db;
  if (db)
  {
    result = [(NSDictionary *)db valueForKey:named];
    if (!result)
    {
      return result;
    }

    named = result;
  }

  catalogURL = self->_catalogURL;

  return [(NSURL *)catalogURL URLByAppendingPathComponent:named];
}

- (void)cacheObject:(id)object withTimestamp:(double)timestamp forKey:(id)key
{
  if (!self->_cache)
  {
    self->_cache = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v9 = objc_alloc_init(SCNAssetCatalogCacheEntry);
  [(SCNAssetCatalogCacheEntry *)v9 setItem:object];
  [(SCNAssetCatalogCacheEntry *)v9 setTimestamp:timestamp];
  [(NSMutableDictionary *)self->_cache setValue:v9 forKey:key];
}

- (id)sceneWithURL:(id)l
{
  v12[2] = *MEMORY[0x277D85DE8];
  path = [l path];
  v6 = [(NSMutableDictionary *)self->_cache valueForKey:path];
  item = [v6 item];
  v8 = SCNGetFileTimestampAtURL(l);
  if (item)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 timestamp];
      if (v8 == v9)
      {
        return item;
      }

      [(NSMutableDictionary *)self->_cache setValue:0 forKey:path];
    }
  }

  if (l)
  {
    v11[0] = @"kSceneSourceForceInProcess";
    v11[1] = @"kSceneSourceCheckConsistency";
    v12[0] = MEMORY[0x277CBEC38];
    v12[1] = MEMORY[0x277CBEC28];
    item = +[SCNScene sceneWithURL:options:error:](SCNScene, "sceneWithURL:options:error:", l, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2], 0);
    if (item)
    {
      [(SCNAssetCatalog *)self cacheObject:item withTimestamp:path forKey:v8];
    }
  }

  return item;
}

- (id)sceneNamed:(id)named
{
  v4 = [(SCNAssetCatalog *)self URLOfResourceNamed:named];

  return [(SCNAssetCatalog *)self sceneWithURL:v4];
}

- (id)animationNamed:(id)named
{
  v5 = [(NSMutableDictionary *)self->_cache valueForKey:?];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  else
  {
    v8 = [(SCNAssetCatalog *)self URLOfResourceNamed:named];
    if (v8)
    {
      v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8];
      v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:objc_msgSend(MEMORY[0x277CBEB98] fromData:"setWithObject:" error:{objc_opt_class()), v9, 0}];
      if (v6)
      {
        [(SCNAssetCatalog *)self cacheObject:v6 withTimestamp:named forKey:0.0];
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (id)actionNamed:(id)named
{
  v5 = [(NSMutableDictionary *)self->_cache valueForKey:?];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  else
  {
    v8 = [(SCNAssetCatalog *)self URLOfResourceNamed:named];
    if (v8)
    {
      v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8];
      v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:objc_msgSend(MEMORY[0x277CBEB98] fromData:"setWithObject:" error:{objc_opt_class()), v9, 0}];
      if (v6)
      {
        [(SCNAssetCatalog *)self cacheObject:v6 withTimestamp:named forKey:0.0];
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (id)particleSystemNamed:(id)named
{
  v5 = [(NSMutableDictionary *)self->_cache valueForKey:?];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  else
  {
    v6 = [(SCNAssetCatalog *)self URLOfResourceNamed:named];
    if (v6)
    {
      v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:objc_msgSend(MEMORY[0x277CBEA90] error:{"dataWithContentsOfFile:", objc_msgSend(v6, "path")), 0}];
      if (v6)
      {
        [(SCNAssetCatalog *)self cacheObject:v6 withTimestamp:named forKey:0.0];
      }
    }
  }

  return v6;
}

- (id)pathByMakingURLRelativeToCatalog:(id)catalog
{
  v3 = C3DCopyRelativeFromFolderURL(self->_catalogURL, catalog);

  return v3;
}

+ (id)recursivePathsForResourcesOfType:(id)type inDirectory:(id)directory
{
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  nextObject = [v7 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      if (![objc_msgSend(nextObject2 "pathExtension")])
      {
        [v6 addObject:{objc_msgSend(directory, "stringByAppendingPathComponent:", nextObject2)}];
      }

      nextObject2 = [v7 nextObject];
    }

    while (nextObject2);
  }

  return v6;
}

+ (void)clearCache
{
  objc_sync_enter(self);
  [lookUpCache removeAllObjects];

  objc_sync_exit(self);
}

+ (id)objectWithName:(id)name class:(Class)class
{
  v27 = *MEMORY[0x277D85DE8];
  if (!name)
  {
    return 0;
  }

  if (objectWithName_class__onceToken != -1)
  {
    +[SCNAssetCatalog objectWithName:class:];
  }

  v7 = [SCNSceneDatabase lookUpKeyForObjectNamed:name class:class];
  objc_sync_enter(self);
  lookUpFoundInstance = [lookUpCache valueForKey:v7];
  if (!lookUpFoundInstance)
  {
    v9 = [self recursivePathsForResourcesOfType:@"scn" inDirectory:{objc_msgSend(SCNGetResourceBundle(), "bundlePath")}];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = *v22;
      v12 = *MEMORY[0x277CCA308];
      selfCopy = self;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v14];
          v16 = -[SCNKeyedUnarchiver initForReadingWithData:secure:]([SCNKeyedUnarchiver alloc], "initForReadingWithData:secure:", v15, C3DIOShouldActivateSecurityChecks([MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:0], 0));
          [v16 setClass:objc_opt_class() forClassName:@"SCNScene"];
          [v16 setLookUpKey:v7];
          v17 = MEMORY[0x277CBEB98];
          v25[0] = objc_opt_class();
          v25[1] = objc_opt_class();
          v18 = [v16 decodeObjectOfClasses:objc_msgSend(v17 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v25, 2)), v12}];
          lookUpFoundInstance = [v16 lookUpFoundInstance];

          if (lookUpFoundInstance && v18)
          {
            self = selfCopy;
            [lookUpCache setValue:lookUpFoundInstance forKey:v7];
            goto LABEL_18;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        lookUpFoundInstance = 0;
        self = selfCopy;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      lookUpFoundInstance = 0;
    }
  }

LABEL_18:
  objc_sync_exit(self);
  return lookUpFoundInstance;
}

id __40__SCNAssetCatalog_objectWithName_class___block_invoke()
{
  result = objc_alloc_init(MEMORY[0x277CBEB38]);
  lookUpCache = result;
  return result;
}

@end