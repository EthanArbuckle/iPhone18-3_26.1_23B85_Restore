@interface SCNAssetCatalog
+ (id)assetCatalogForResourceURL:(id)a3;
+ (id)assetCatalogNamed:(id)a3;
+ (id)assetCatalogWithURL:(id)a3;
+ (id)objectWithName:(id)a3 class:(Class)a4;
+ (id)recursivePathsForResourcesOfType:(id)a3 inDirectory:(id)a4;
+ (void)clearCache;
- (id)URLOfResourceNamed:(id)a3;
- (id)actionNamed:(id)a3;
- (id)animationNamed:(id)a3;
- (id)particleSystemNamed:(id)a3;
- (id)pathByMakingURLRelativeToCatalog:(id)a3;
- (id)sceneNamed:(id)a3;
- (id)sceneWithURL:(id)a3;
- (void)cacheObject:(id)a3 withTimestamp:(double)a4 forKey:(id)a5;
- (void)dealloc;
@end

@implementation SCNAssetCatalog

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNAssetCatalog;
  [(SCNAssetCatalog *)&v3 dealloc];
}

+ (id)assetCatalogNamed:(id)a3
{
  v5 = [a3 pathExtension];
  if (![(__CFString *)v5 length])
  {
    v5 = @"scnasset";
  }

  result = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (result)
  {

    return [a1 assetCatalogWithURL:result];
  }

  return result;
}

+ (id)assetCatalogWithURL:(id)a3
{
  v4 = objc_alloc_init(SCNAssetCatalog);
  v4->_catalogURL = a3;

  return v4;
}

+ (id)assetCatalogForResourceURL:(id)a3
{
  v5 = [objc_msgSend(a3 "path")];
  if (v6)
  {
    v7 = [objc_msgSend(a3 "path")];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  }

  else
  {
    v8 = [a3 URLByDeletingLastPathComponent];
  }

  return [a1 assetCatalogWithURL:v8];
}

- (id)URLOfResourceNamed:(id)a3
{
  db = self->_db;
  if (db)
  {
    result = [(NSDictionary *)db valueForKey:a3];
    if (!result)
    {
      return result;
    }

    a3 = result;
  }

  catalogURL = self->_catalogURL;

  return [(NSURL *)catalogURL URLByAppendingPathComponent:a3];
}

- (void)cacheObject:(id)a3 withTimestamp:(double)a4 forKey:(id)a5
{
  if (!self->_cache)
  {
    self->_cache = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v9 = objc_alloc_init(SCNAssetCatalogCacheEntry);
  [(SCNAssetCatalogCacheEntry *)v9 setItem:a3];
  [(SCNAssetCatalogCacheEntry *)v9 setTimestamp:a4];
  [(NSMutableDictionary *)self->_cache setValue:v9 forKey:a5];
}

- (id)sceneWithURL:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = [a3 path];
  v6 = [(NSMutableDictionary *)self->_cache valueForKey:v5];
  v7 = [v6 item];
  v8 = SCNGetFileTimestampAtURL(a3);
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 timestamp];
      if (v8 == v9)
      {
        return v7;
      }

      [(NSMutableDictionary *)self->_cache setValue:0 forKey:v5];
    }
  }

  if (a3)
  {
    v11[0] = @"kSceneSourceForceInProcess";
    v11[1] = @"kSceneSourceCheckConsistency";
    v12[0] = MEMORY[0x277CBEC38];
    v12[1] = MEMORY[0x277CBEC28];
    v7 = +[SCNScene sceneWithURL:options:error:](SCNScene, "sceneWithURL:options:error:", a3, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2], 0);
    if (v7)
    {
      [(SCNAssetCatalog *)self cacheObject:v7 withTimestamp:v5 forKey:v8];
    }
  }

  return v7;
}

- (id)sceneNamed:(id)a3
{
  v4 = [(SCNAssetCatalog *)self URLOfResourceNamed:a3];

  return [(SCNAssetCatalog *)self sceneWithURL:v4];
}

- (id)animationNamed:(id)a3
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
    v8 = [(SCNAssetCatalog *)self URLOfResourceNamed:a3];
    if (v8)
    {
      v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8];
      v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:objc_msgSend(MEMORY[0x277CBEB98] fromData:"setWithObject:" error:{objc_opt_class()), v9, 0}];
      if (v6)
      {
        [(SCNAssetCatalog *)self cacheObject:v6 withTimestamp:a3 forKey:0.0];
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (id)actionNamed:(id)a3
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
    v8 = [(SCNAssetCatalog *)self URLOfResourceNamed:a3];
    if (v8)
    {
      v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8];
      v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:objc_msgSend(MEMORY[0x277CBEB98] fromData:"setWithObject:" error:{objc_opt_class()), v9, 0}];
      if (v6)
      {
        [(SCNAssetCatalog *)self cacheObject:v6 withTimestamp:a3 forKey:0.0];
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (id)particleSystemNamed:(id)a3
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
    v6 = [(SCNAssetCatalog *)self URLOfResourceNamed:a3];
    if (v6)
    {
      v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:objc_msgSend(MEMORY[0x277CBEA90] error:{"dataWithContentsOfFile:", objc_msgSend(v6, "path")), 0}];
      if (v6)
      {
        [(SCNAssetCatalog *)self cacheObject:v6 withTimestamp:a3 forKey:0.0];
      }
    }
  }

  return v6;
}

- (id)pathByMakingURLRelativeToCatalog:(id)a3
{
  v3 = C3DCopyRelativeFromFolderURL(self->_catalogURL, a3);

  return v3;
}

+ (id)recursivePathsForResourcesOfType:(id)a3 inDirectory:(id)a4
{
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v8 = [v7 nextObject];
  if (v8)
  {
    v9 = v8;
    do
    {
      if (![objc_msgSend(v9 "pathExtension")])
      {
        [v6 addObject:{objc_msgSend(a4, "stringByAppendingPathComponent:", v9)}];
      }

      v9 = [v7 nextObject];
    }

    while (v9);
  }

  return v6;
}

+ (void)clearCache
{
  objc_sync_enter(a1);
  [lookUpCache removeAllObjects];

  objc_sync_exit(a1);
}

+ (id)objectWithName:(id)a3 class:(Class)a4
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  if (objectWithName_class__onceToken != -1)
  {
    +[SCNAssetCatalog objectWithName:class:];
  }

  v7 = [SCNSceneDatabase lookUpKeyForObjectNamed:a3 class:a4];
  objc_sync_enter(a1);
  v8 = [lookUpCache valueForKey:v7];
  if (!v8)
  {
    v9 = [a1 recursivePathsForResourcesOfType:@"scn" inDirectory:{objc_msgSend(SCNGetResourceBundle(), "bundlePath")}];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = *v22;
      v12 = *MEMORY[0x277CCA308];
      v20 = a1;
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
          v8 = [v16 lookUpFoundInstance];

          if (v8 && v18)
          {
            a1 = v20;
            [lookUpCache setValue:v8 forKey:v7];
            goto LABEL_18;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        v8 = 0;
        a1 = v20;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_18:
  objc_sync_exit(a1);
  return v8;
}

id __40__SCNAssetCatalog_objectWithName_class___block_invoke()
{
  result = objc_alloc_init(MEMORY[0x277CBEB38]);
  lookUpCache = result;
  return result;
}

@end