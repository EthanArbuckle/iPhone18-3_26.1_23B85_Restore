@interface SCNSceneSource
+ (BOOL)_shouldCacheWithOptions:(id)options;
+ (SCNSceneSource)sceneSourceWithData:(NSData *)data options:(NSDictionary *)options;
+ (SCNSceneSource)sceneSourceWithURL:(NSURL *)url options:(NSDictionary *)options;
+ (id)_cachedSceneSourceForURL:(id)l options:(id)options;
+ (void)_cacheSceneSource:(id)source forURL:(id)l options:(id)options;
+ (void)_removeCachedSceneSourceIfNeededForURL:(id)l;
- (BOOL)_appendToEntries:(id)entries entriesWithType:(unint64_t)type passingTest:(id)test entryObjectConstructor:(id)constructor;
- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes;
- (NSArray)entriesPassingTest:(void *)predicate;
- (NSArray)identifiersOfEntriesWithClass:(Class)entryClass;
- (NSString)description;
- (SCNScene)sceneWithOptions:(NSDictionary *)options error:(NSError *)error;
- (SCNScene)sceneWithOptions:(NSDictionary *)options statusHandler:(SCNSceneSourceStatusHandler)statusHandler;
- (SCNSceneSource)initWithData:(NSData *)data options:(NSDictionary *)options;
- (SCNSceneSource)initWithURL:(NSURL *)url options:(NSDictionary *)options;
- (__C3DLibrary)library;
- (__C3DScene)_createSceneRefWithOptions:(id)options statusHandler:(id)handler;
- (id)_sceneWithClass:(Class)class options:(id)options statusHandler:(id)handler;
- (id)c3dDataRepresentation;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)entryWithIdentifier:(NSString *)uid withClass:(Class)entryClass;
- (id)performConsistencyCheck;
- (id)propertyForKey:(NSString *)key;
- (id)sceneAtIndex:(unint64_t)index options:(id)options;
- (id)sceneAtIndex:(unint64_t)index options:(id)options error:(id *)error;
- (id)sceneWithClass:(Class)class options:(id)options error:(id *)error;
- (id)sceneWithClass:(Class)class options:(id)options statusHandler:(id)handler;
- (void)dealloc;
@end

@implementation SCNSceneSource

- (SCNSceneSource)initWithData:(NSData *)data options:(NSDictionary *)options
{
  v8.receiver = self;
  v8.super_class = SCNSceneSource;
  v6 = [(SCNSceneSource *)&v8 init];
  if (v6)
  {
    v6->_sceneSourceOptions = options;
    v6->_sceneSource = C3DSceneSourceCreateWithData(data);
  }

  return v6;
}

+ (BOOL)_shouldCacheWithOptions:(id)options
{
  v3 = [options objectForKey:@"kSceneSourceCacheScenesByURLKey"];

  return [v3 BOOLValue];
}

+ (id)_cachedSceneSourceForURL:(id)l options:(id)options
{
  objc_sync_enter(self);
  if (l)
  {
    if (![self _shouldCacheWithOptions:options] || (v7 = objc_msgSend(_sceneSourceCache, "objectForKey:", l), (l = v7) == 0) || (v8 = objc_msgSend(v7, "sceneSourceOptions"), v8 != options) && (!options || (objc_msgSend(v8, "isEqualToDictionary:", options) & 1) == 0))
    {
      l = 0;
    }
  }

  objc_sync_exit(self);
  return l;
}

+ (void)_cacheSceneSource:(id)source forURL:(id)l options:(id)options
{
  objc_sync_enter(self);
  if ([self _shouldCacheWithOptions:options])
  {
    v9 = _sceneSourceCache;
    if (!_sceneSourceCache)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0x10000 valueOptions:5 capacity:32];
      _sceneSourceCache = v9;
    }

    [v9 setObject:source forKey:l];
  }

  objc_sync_exit(self);
}

+ (void)_removeCachedSceneSourceIfNeededForURL:(id)l
{
  objc_sync_enter(self);
  if (l)
  {
    [_sceneSourceCache removeObjectForKey:l];
  }

  objc_sync_exit(self);
}

- (SCNSceneSource)initWithURL:(NSURL *)url options:(NSDictionary *)options
{
  v7 = [objc_opt_class() _cachedSceneSourceForURL:url options:options];
  if (v7)
  {
    v10 = v7;

    return v10;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SCNSceneSource;
    v9 = [(SCNSceneSource *)&v11 init];
    if (v9)
    {
      v9->_sceneSourceOptions = options;
      v9->_sceneSource = C3DSceneSourceCreateWithURL(url);
      [objc_opt_class() _cacheSceneSource:v9 forURL:url options:options];
    }

    return v9;
  }
}

- (void)dealloc
{
  if (self->_sceneSource)
  {
    [objc_opt_class() _removeCachedSceneSourceIfNeededForURL:{-[SCNSceneSource url](self, "url")}];
    CFRelease(self->_sceneSource);
  }

  lastLoadedScene = self->_lastLoadedScene;
  if (lastLoadedScene)
  {
    CFRelease(lastLoadedScene);
  }

  v4.receiver = self;
  v4.super_class = SCNSceneSource;
  [(SCNSceneSource *)&v4 dealloc];
}

+ (SCNSceneSource)sceneSourceWithURL:(NSURL *)url options:(NSDictionary *)options
{
  if (url)
  {
    v4 = [[self alloc] initWithURL:url options:options];

    return v4;
  }

  else
  {
    NSLog(&cfstr_Scnscenesource_2.isa, a2, 0, options);
    return 0;
  }
}

+ (SCNSceneSource)sceneSourceWithData:(NSData *)data options:(NSDictionary *)options
{
  v4 = [[self alloc] initWithData:data options:options];

  return v4;
}

- (NSString)description
{
  v3 = [(SCNSceneSource *)self url];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3)
  {
    return [v4 stringWithFormat:@"<%@: %p | URL='%@'>", v6, self, -[SCNSceneSource url](self, "url")];
  }

  else
  {
    return [v4 stringWithFormat:@"<%@: %p>", v6, self, v8];
  }
}

- (id)sceneAtIndex:(unint64_t)index options:(id)options
{
  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:options];
  [v6 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", index), @"kSceneSourceSceneIndexKey"}];

  return [(SCNSceneSource *)self sceneWithOptions:v6 error:0];
}

- (id)sceneAtIndex:(unint64_t)index options:(id)options error:(id *)error
{
  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:options];
  [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", index), @"kSceneSourceSceneIndexKey"}];

  return [(SCNSceneSource *)self sceneWithOptions:v8 error:error];
}

- (__C3DScene)_createSceneRefWithOptions:(id)options statusHandler:(id)handler
{
  optionsCopy = options;
  if (options && [options objectForKey:@"kSceneSourceSceneIndexKey"])
  {
    v7 = [-[NSDictionary objectForKey:](optionsCopy objectForKey:{@"kSceneSourceSceneIndexKey", "unsignedIntegerValue"}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SCNSceneSource *)self url];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __59__SCNSceneSource__createSceneRefWithOptions_statusHandler___block_invoke;
  v23 = &unk_2782FF578;
  v24 = v8;
  handlerCopy = handler;
  if (v8)
  {
    v9 = v8;
    if (!-[NSString isEqualToString:](-[NSString lowercaseString](-[NSURL pathExtension](v8, "pathExtension", v20, v21, v22, v23, v24, handlerCopy), "lowercaseString"), "isEqualToString:", @"dae") || [-[NSDictionary valueForKey:](optionsCopy valueForKey:{@"SCNSceneSourceUseModelIOToLoadDAEFiles", "BOOLValue"}])
    {
      if ([MEMORY[0x277CD7AD0] canImportFileExtension:{-[NSURL pathExtension](v9, "pathExtension")}])
      {
        if ([-[NSDictionary valueForKey:](optionsCopy valueForKey:{@"triggerOptionsForRealtimeViewer", "BOOLValue"}])
        {
          if (optionsCopy)
          {
            dictionary = [(NSDictionary *)optionsCopy mutableCopy];
          }

          else
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
          }

          optionsCopy = dictionary;
          v11 = MEMORY[0x277CBEC38];
          [(NSDictionary *)dictionary setValue:MEMORY[0x277CBEC38] forKey:@"kSceneSourceCreateCameraIfAbsent"];
          [(NSDictionary *)optionsCopy setValue:v11 forKey:@"kSceneSourceCreateNormalsIfAbsent"];
          [(NSDictionary *)optionsCopy setValue:v11 forKey:@"kSceneSourceCreateLightIfAbsent"];
          [(NSDictionary *)optionsCopy setValue:v11 forKey:@"kSceneSourceAdjustInvalidClippingPlanes"];
          [(NSDictionary *)optionsCopy setValue:v11 forKey:@"kSceneSourceFlattenScene"];
          [(NSDictionary *)optionsCopy setValue:v11 forKey:0x282DCB518];
          [(NSDictionary *)optionsCopy setValue:@"playUsingSceneTime" forKey:@"kSceneSourceAnimationLoadingMode"];
        }

        +[SCNTransaction begin];
        [SCNTransaction setImmediateMode:1];
        MDLAssetWithURL = loadMDLAssetWithURL(v9, optionsCopy);
        sceneRef = [(SCNScene *)MDLAssetWithURL sceneRef];
        if (sceneRef)
        {
          SceneAtIndex = sceneRef;
          CFRetain(sceneRef);
          [(SCNScene *)MDLAssetWithURL _clearSceneRef];
          +[SCNTransaction commit];
          +[SCNTransaction flush];
          C3DIOFinalizeLoadScene(SceneAtIndex, 0, optionsCopy, 0, -1);
          [(SCNNode *)[(SCNScene *)MDLAssetWithURL rootNode] _syncObjCModelAfterC3DIOSceneLoadingWithNodeRef:C3DSceneGetRootNode(SceneAtIndex)];
          if (v7)
          {
            goto LABEL_21;
          }

          goto LABEL_19;
        }

        [(SCNScene *)MDLAssetWithURL _clearSceneRef];
        +[SCNTransaction commit];
      }
    }
  }

  SceneAtIndex = C3DSceneSourceCreateSceneAtIndex(self->_sceneSource, v7, optionsCopy, &v20);
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (SceneAtIndex)
  {
    self->_sceneLoaded = 1;
  }

LABEL_21:
  lastLoadedScene = self->_lastLoadedScene;
  if (lastLoadedScene != SceneAtIndex)
  {
    if (lastLoadedScene)
    {
      CFRelease(lastLoadedScene);
    }

    self->_lastLoadedScene = SceneAtIndex;
    if (SceneAtIndex)
    {
      v16 = [objc_opt_class() _shouldCacheWithOptions:optionsCopy];
      v17 = self->_lastLoadedScene;
      if (v16)
      {
        self->_lastLoadedScene = C3DSceneCreateCopy(v17);
      }

      else
      {
        CFRetain(v17);
      }
    }
  }

  lastOptions = self->_lastOptions;
  if (lastOptions != optionsCopy)
  {

    self->_lastOptions = optionsCopy;
  }

  return SceneAtIndex;
}

uint64_t __59__SCNSceneSource__createSceneRefWithOptions_statusHandler___block_invoke(uint64_t a1, int a2, CFErrorRef err, uint64_t a4, float a5)
{
  v34[1] = *MEMORY[0x277D85DE8];
  if (a2 != -1)
  {
    goto LABEL_2;
  }

  if (!err)
  {
    v33 = *MEMORY[0x277CCA450];
    v34[0] = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v16 = MEMORY[0x277CCA9B8];
    v17 = @"SCNKitErrorDomain";
    v18 = 0;
LABEL_26:
    v23 = [v16 errorWithDomain:v17 code:v18 userInfo:v15];
    goto LABEL_27;
  }

  Domain = CFErrorGetDomain(err);
  if (CFEqual(Domain, *MEMORY[0x277CBEE48]))
  {
    if (!*(a1 + 32))
    {
LABEL_2:
      v9 = 0;
      goto LABEL_28;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA5B8];
    Code = CFErrorGetCode(err);
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*(a1 + 32) forKey:*MEMORY[0x277CCA760]];
    v16 = v12;
    v17 = v13;
    v18 = Code;
    goto LABEL_26;
  }

  v19 = CFErrorGetDomain(err);
  if (CFEqual(v19, @"SCNKitErrorDomain"))
  {
    v20 = CFErrorCopyRecoverySuggestion(err);
    v21 = CFErrorCopyUserInfo(err);
    if (*(a1 + 32))
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle"), "localizedStringForKey:value:table:", @"The document %@ could not be opened.", &stru_282DCC058, 0), objc_msgSend(objc_msgSend(*(a1 + 32), "path"), "lastPathComponent")];
    }

    else
    {
      v22 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    }

    v24 = *MEMORY[0x277CCA450];
    v25 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v22, *MEMORY[0x277CCA450], v20, *MEMORY[0x277CCA498], 0}];
    v26 = v25;
    v27 = *(a1 + 32);
    if (v27)
    {
      [v25 setObject:v27 forKeyedSubscript:*MEMORY[0x277CCA760]];
    }

    v28 = [(__CFDictionary *)v21 objectForKey:@"SCNDetailedErrorsKey"];
    if (v28)
    {
      [v26 setObject:v28 forKey:@"SCNDetailedErrorsKey"];
    }

    v29 = CFErrorGetCode(err);
    v30 = v29;
    if (v29 > -2)
    {
      if (v29 == -1)
      {
        [v26 setObject:-[__CFDictionary objectForKeyedSubscript:](v21 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x277CBEE58]), v24}];
        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CCA050];
        v18 = 260;
        goto LABEL_25;
      }

      if (v29 != 1)
      {
        goto LABEL_31;
      }
    }

    else if ((v29 + 6) >= 2)
    {
      if (v29 == -8)
      {
        [v26 setObject:-[__CFDictionary objectForKeyedSubscript:](v21 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x277CBEE58]), v24}];
        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CCA050];
        v18 = 4864;
LABEL_25:
        v15 = v26;
        goto LABEL_26;
      }

LABEL_31:
      v32 = scn_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        __59__SCNSceneSource__createSceneRefWithOptions_statusHandler___block_invoke_cold_1(v30, v32);
      }

      goto LABEL_2;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA050];
    v18 = 259;
    goto LABEL_25;
  }

  CFRetain(err);
  v23 = err;
LABEL_27:
  v9 = v23;
LABEL_28:
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, v9, a4, a5);
  }

  return result;
}

- (id)_sceneWithClass:(Class)class options:(id)options statusHandler:(id)handler
{
  v34[2] = *MEMORY[0x277D85DE8];
  if (![(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  if (!options)
  {
    options = [MEMORY[0x277CBEAC0] dictionary];
  }

  if (self->_lastLoadedScene && [options isEqual:self->_lastOptions])
  {
    ObjCWrapper = [MEMORY[0x277CCAAC8] unarchiveObjectWithData:{objc_msgSend(MEMORY[0x277CCAAB0], "archivedDataWithRootObject:requiringSecureCoding:error:", C3DEntityGetObjCWrapper(self->_lastLoadedScene), 0, 0)}];
    [ObjCWrapper setSceneSource:self];
    return ObjCWrapper;
  }

  URL = C3DSceneSourceGetURL(self->_sceneSource);
  Data = C3DSceneSourceGetData(self->_sceneSource);
  v12 = [objc_msgSend(objc_msgSend(URL "pathExtension")];
  if (([objc_msgSend(options valueForKey:{@"kSceneSourceFormat", "isEqualToString:", @"scn"}] & 1) != 0 || ((objc_msgSend(objc_msgSend(objc_msgSend(URL, "pathExtension"), "lowercaseString"), "isEqualToString:", @"scn") | v12) & 1) != 0 || objc_msgSend(Data, "length") >= 7 && !strncmp(objc_msgSend(Data, "bytes"), "bplist", 6uLL))
  {
    v33 = 0;
    if (!Data)
    {
      Data = [MEMORY[0x277CBEA90] dataWithContentsOfURL:URL options:0 error:&v33];
      if (!Data)
      {
        if (handler)
        {
          v32 = 1;
          (*(handler + 2))(handler, -1, v33, &v32, 1.0);
        }

        return 0;
      }
    }

    if (v12)
    {
      Data = [Data scn_uncompressedDataUsingCompressionAlgorithm:517];
      if (!Data)
      {
        return 0;
      }
    }

    v13 = [[SCNKeyedUnarchiver alloc] initForReadingWithData:Data secure:C3DIOShouldActivateSecurityChecks(URL, options)];
    v14 = v13;
    if (v13)
    {
      [v13 setDelegate:self];
      context = objc_autoreleasePoolPush();
      if (URL)
      {
        cf = C3DIOCreateImportContextFromOptions(options, URL);
        [v14 setContext:cf];
        [v14 setAssetCatalog:{+[SCNAssetCatalog assetCatalogForResourceURL:](SCNAssetCatalog, "assetCatalogForResourceURL:", URL)}];
        [v14 setDocumentURL:URL];
      }

      else
      {
        cf = 0;
      }

      if (objc_opt_class() != class)
      {
        v15 = objc_opt_class();
        [v14 setClass:class forClassName:NSStringFromClass(v15)];
      }

      v16 = MEMORY[0x277CBEB98];
      v34[0] = objc_opt_class();
      v34[1] = objc_opt_class();
      v17 = [v16 setWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v34, 2)}];
      v18 = [v14 decodeObjectOfClasses:v17 forKey:*MEMORY[0x277CCA308]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        scene = v18;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          scene = [(objc_class *)class scene];
          [objc_msgSend(scene "rootNode")];
        }

        else
        {
          v20 = scn_default_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [SCNSceneSource _sceneWithClass:options:statusHandler:];
          }

          scene = 0;
        }
      }

      v21 = scene;
      [v14 finishDecoding];

      if (cf)
      {
        CFRelease(cf);
      }

      objc_autoreleasePoolPop(context);
      if (scene)
      {
        self->_sceneLoaded = 1;
        lastLoadedScene = self->_lastLoadedScene;
        if (lastLoadedScene)
        {
          CFRelease(lastLoadedScene);
        }

        sceneRef = [scene sceneRef];
        self->_lastLoadedScene = sceneRef;
        if (sceneRef)
        {
          v24 = [objc_opt_class() _shouldCacheWithOptions:options];
          v25 = self->_lastLoadedScene;
          if (v24)
          {
            self->_lastLoadedScene = C3DSceneCreateCopy(v25);
          }

          else
          {
            CFRetain(v25);
          }
        }

        lastOptions = self->_lastOptions;
        if (lastOptions != options)
        {

          self->_lastOptions = options;
        }

        [scene setSceneSource:self];
        return scene;
      }
    }
  }

  v27 = [(SCNSceneSource *)self _createSceneRefWithOptions:options statusHandler:handler];
  v28 = v27;
  if (!v27)
  {
    return 0;
  }

  ObjCWrapper = C3DEntityGetObjCWrapper(v27);
  if (!ObjCWrapper)
  {
    ObjCWrapper = [(objc_class *)class sceneWithSceneRef:v28];
  }

  CFRelease(v28);
  [ObjCWrapper setSceneSource:self];
  return ObjCWrapper;
}

- (id)sceneWithClass:(Class)class options:(id)options statusHandler:(id)handler
{
  v9 = sceneWithClass_options_statusHandler__nestCounter;
  v10 = sceneWithClass_options_statusHandler__nestCounter;
  if (sceneWithClass_options_statusHandler__nestCounter <= 0)
  {
    kdebug_trace();
    v10 = sceneWithClass_options_statusHandler__nestCounter;
  }

  sceneWithClass_options_statusHandler__nestCounter = v10 + 1;
  v11 = [(SCNSceneSource *)self _sceneWithClass:class options:options statusHandler:handler];
  v12 = [(SCNSceneSource *)self url];
  if (v12)
  {
    [v11 _setSourceURL:v12];
  }

  --sceneWithClass_options_statusHandler__nestCounter;
  if (v9 <= 0)
  {
    kdebug_trace();
  }

  return v11;
}

- (SCNScene)sceneWithOptions:(NSDictionary *)options statusHandler:(SCNSceneSourceStatusHandler)statusHandler
{
  v7 = objc_opt_class();

  return [(SCNSceneSource *)self sceneWithClass:v7 options:options statusHandler:statusHandler];
}

- (id)sceneWithClass:(Class)class options:(id)options error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SCNSceneSource_sceneWithClass_options_error___block_invoke;
  v9[3] = &__block_descriptor_40_e27_v36__0f8q12__NSError_20_B28l;
  v9[4] = error;
  v6 = [(SCNSceneSource *)self sceneWithClass:class options:options statusHandler:v9];
  if (error)
  {
    v7 = *error;
  }

  return v6;
}

void *__47__SCNSceneSource_sceneWithClass_options_error___block_invoke(void *result, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = result;
    if (result[4])
    {
      result = a3;
      *v3[4] = result;
    }
  }

  return result;
}

- (SCNScene)sceneWithOptions:(NSDictionary *)options error:(NSError *)error
{
  v7 = objc_opt_class();

  return [(SCNSceneSource *)self sceneWithClass:v7 options:options error:error];
}

- (id)propertyForKey:(NSString *)key
{
  if (!self->_sceneLoaded)
  {
    [(SCNSceneSource *)self sceneWithOptions:self->_sceneSourceOptions error:0];
  }

  if (![(NSString *)key isEqualToString:@"geometryMemory"])
  {
    if (![(NSString *)key isEqualToString:@"textureMemory"])
    {
      v12 = [(SCNSceneSource *)self copyPropertiesAtIndex:0 options:0];
      v13 = [v12 objectForKey:key];
      v14 = v12;
      return v13;
    }

    Library = C3DSceneSourceGetLibrary(self->_sceneSource);
    if (Library)
    {
      v6 = Library;
      TypeID = C3DImageGetTypeID();
      goto LABEL_9;
    }

LABEL_10:
    MemoryUsageForKind = 0;
    goto LABEL_11;
  }

  v5 = C3DSceneSourceGetLibrary(self->_sceneSource);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  TypeID = C3DGeometryGetTypeID();
LABEL_9:
  MemoryUsageForKind = C3DLibraryGetMemoryUsageForKind(v6, TypeID);
LABEL_11:
  v10 = MEMORY[0x277CCABB0];

  return [v10 numberWithUnsignedInteger:MemoryUsageForKind];
}

- (__C3DLibrary)library
{
  result = self->_sceneSource;
  if (result)
  {
    return C3DSceneSourceGetLibrary(result);
  }

  return result;
}

- (id)c3dDataRepresentation
{
  if (!self->_sceneLoaded)
  {
    [(SCNSceneSource *)self sceneWithOptions:self->_sceneSourceOptions error:0];
  }

  lastLoadedScene = self->_lastLoadedScene;
  library = [(SCNSceneSource *)self library];
  v6 = C3DCreatePropertyListFromScene(lastLoadedScene, library, MEMORY[0x277CBEC10], v5);
  if (v6)
  {
    v7 = v6;
    Data = CFPropertyListCreateData(0, v6, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    CFRelease(v7);
  }

  else
  {
    Data = 0;
  }

  return Data;
}

- (id)entryWithIdentifier:(NSString *)uid withClass:(Class)entryClass
{
  if (!self->_sceneLoaded)
  {
    [(SCNSceneSource *)self sceneWithOptions:self->_sceneSourceOptions error:0];
  }

  sceneSource = self->_sceneSource;
  if (!sceneSource)
  {
    return 0;
  }

  Library = C3DSceneSourceGetLibrary(sceneSource);
  if (!Library)
  {
    return 0;
  }

  EntryWithDocumentID = C3DLibraryGetEntryWithDocumentID(Library, uid);
  if (!EntryWithDocumentID)
  {
    return 0;
  }

  v10 = EntryWithDocumentID;
  v11 = CFGetTypeID(EntryWithDocumentID);
  if (objc_opt_class() == entryClass)
  {
    if (v11 != C3DGeometryGetTypeID())
    {
      v15 = scn_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SCNSceneSource entryWithIdentifier:withClass:];
      }

      return 0;
    }

    v13 = C3DEntityGetObjCWrapper(v10) != 0;
    v14 = [SCNGeometry geometryWithGeometryRef:v10];
    goto LABEL_70;
  }

  if (objc_opt_class() == entryClass)
  {
    if (v11 != C3DMaterialGetTypeID())
    {
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SCNSceneSource entryWithIdentifier:withClass:];
      }

      return 0;
    }

    v13 = C3DEntityGetObjCWrapper(v10) != 0;
    v14 = [SCNMaterial materialWithMaterialRef:v10];
    goto LABEL_70;
  }

  if (objc_opt_class() != entryClass)
  {
    if (objc_opt_class() != entryClass)
    {
      if (objc_opt_class() == entryClass)
      {
        if (v11 != C3DNodeGetTypeID())
        {
          v22 = scn_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [SCNSceneSource entryWithIdentifier:withClass:];
          }

          return 0;
        }

        v13 = C3DEntityGetObjCWrapper(v10) != 0;
        v14 = [SCNNode nodeWithNodeRef:v10];
      }

      else if (objc_opt_class() == entryClass)
      {
        if (v11 != C3DLightGetTypeID())
        {
          v24 = scn_default_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [SCNSceneSource entryWithIdentifier:withClass:];
          }

          return 0;
        }

        v13 = C3DEntityGetObjCWrapper(v10) != 0;
        v14 = [SCNLight lightWithLightRef:v10];
      }

      else if (objc_opt_class() == entryClass)
      {
        if (v11 != C3DCameraGetTypeID())
        {
          v26 = scn_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [SCNSceneSource entryWithIdentifier:withClass:];
          }

          return 0;
        }

        v13 = C3DEntityGetObjCWrapper(v10) != 0;
        v14 = [SCNCamera cameraWithCameraRef:v10];
      }

      else if (objc_opt_class() == entryClass)
      {
        if (v11 != C3DSceneGetTypeID())
        {
          v27 = scn_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [SCNSceneSource entryWithIdentifier:withClass:];
          }

          return 0;
        }

        v13 = C3DEntityGetObjCWrapper(v10) != 0;
        v14 = [SCNScene sceneWithSceneRef:v10];
      }

      else if (objc_opt_class() == entryClass)
      {
        if (v11 != C3DSkinnerGetTypeID())
        {
          v28 = scn_default_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [SCNSceneSource entryWithIdentifier:withClass:];
          }

          return 0;
        }

        v13 = C3DEntityGetObjCWrapper(v10) != 0;
        v14 = [SCNSkinner skinnerWithSkinnerRef:v10];
      }

      else if (objc_opt_class() == entryClass)
      {
        if (v11 != C3DMorphGetTypeID())
        {
          v32 = scn_default_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [SCNSceneSource entryWithIdentifier:withClass:];
          }

          return 0;
        }

        v13 = C3DEntityGetObjCWrapper(v10) != 0;
        v14 = [SCNMorpher morpherWithMorphRef:v10];
      }

      else
      {
        if (objc_opt_class() != entryClass)
        {
          if (objc_opt_class() == entryClass && v11 == C3DImageGetTypeID())
          {
            URL = C3DImageGetURL(v10);
            v13 = 0;
            goto LABEL_71;
          }

          return 0;
        }

        if (v11 != C3DImageGetTypeID())
        {
          v33 = scn_default_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [SCNSceneSource entryWithIdentifier:withClass:];
          }

          return 0;
        }

        v13 = C3DEntityGetObjCWrapper(v10) != 0;
        v14 = [SCNMaterialProperty copyImageFromC3DImage:v10];
      }

LABEL_70:
      URL = v14;
      goto LABEL_71;
    }

    if (v11 == C3DKeyframedAnimationGetTypeID() || v11 == C3DAnimationGroupGetTypeID() || v11 == C3DAnimationClusterGetTypeID())
    {
      v13 = C3DEntityGetObjCWrapper(v10) != 0;
      TypeID = C3DAnimationGroupGetTypeID();
      if (TypeID == CFGetTypeID(v10))
      {
        v19 = C3DAnimationClusterCreateWithAnimationGroup(v10);
        if (v19)
        {
          v20 = v19;
          v21 = v19;
          v10 = v20;
        }
      }

      v14 = [SCNAnimation animationWithC3DAnimation:v10];
      goto LABEL_70;
    }

    v25 = scn_default_log();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_51:
    [SCNSceneSource entryWithIdentifier:withClass:];
    return 0;
  }

  if (v11 != C3DKeyframedAnimationGetTypeID() && v11 != C3DAnimationGroupGetTypeID() && v11 != C3DAnimationClusterGetTypeID())
  {
    v23 = scn_default_log();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_51;
  }

  v13 = C3DEntityGetObjCWrapper(v10) != 0;
  URL = C3DAnimationToCAAnimation(v10);
  if (C3DWasLinkedBeforeMajorOSYear2014())
  {
    [URL setUsesSceneTimeBase:0];
    [URL setRemovedOnCompletion:1];
  }

LABEL_71:
  if (URL && !v13 && self->_lastLoadedScene)
  {
    v29 = [SCNScene sceneWithSceneRef:?];
    if (objc_opt_class() == entryClass)
    {
      rootNode = [(SCNScene *)v29 rootNode];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke;
      v38[3] = &unk_2782FF5C0;
      v38[4] = URL;
      v31 = v38;
      goto LABEL_84;
    }

    if (objc_opt_class() == entryClass)
    {
      rootNode = [(SCNScene *)v29 rootNode];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_2;
      v37[3] = &unk_2782FF5C0;
      v37[4] = URL;
      v31 = v37;
      goto LABEL_84;
    }

    if (objc_opt_class() == entryClass)
    {
      rootNode = [(SCNScene *)v29 rootNode];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_3;
      v36[3] = &unk_2782FF5C0;
      v36[4] = URL;
      v31 = v36;
      goto LABEL_84;
    }

    if (objc_opt_class() == entryClass)
    {
      rootNode = [(SCNScene *)v29 rootNode];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_4;
      v35[3] = &unk_2782FF5C0;
      v35[4] = URL;
      v31 = v35;
      goto LABEL_84;
    }

    if (objc_opt_class() == entryClass)
    {
      rootNode = [(SCNScene *)v29 rootNode];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_5;
      v34[3] = &unk_2782FF5C0;
      v34[4] = URL;
      v31 = v34;
LABEL_84:
      [(SCNNode *)rootNode childNodesPassingTest:v31];
    }
  }

  return URL;
}

uint64_t __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 light] == *(a1 + 32))
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 camera] == *(a1 + 32))
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 geometry] == *(a1 + 32))
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 32) == a2)
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t __48__SCNSceneSource_entryWithIdentifier_withClass___block_invoke_5(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([objc_msgSend(objc_msgSend(a2 "geometry")])
  {
    *a3 = 1;
  }

  return 0;
}

- (NSArray)identifiersOfEntriesWithClass:(Class)entryClass
{
  v36[1] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if (objc_opt_class() == entryClass)
  {
    v36[0] = [MEMORY[0x277CCABB0] numberWithUnsignedLong:C3DGeometryGetTypeID()];
    v7 = MEMORY[0x277CBEA60];
    v8 = v36;
LABEL_17:
    v9 = 1;
    goto LABEL_18;
  }

  if (objc_opt_class() == entryClass)
  {
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:C3DMaterialGetTypeID()];
    v7 = MEMORY[0x277CBEA60];
    v8 = &v35;
    goto LABEL_17;
  }

  if (objc_opt_class() != entryClass && objc_opt_class() != entryClass)
  {
    if (objc_opt_class() == entryClass)
    {
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:C3DNodeGetTypeID()];
      v7 = MEMORY[0x277CBEA60];
      v8 = &v33;
    }

    else if (objc_opt_class() == entryClass)
    {
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:C3DLightGetTypeID()];
      v7 = MEMORY[0x277CBEA60];
      v8 = &v32;
    }

    else if (objc_opt_class() == entryClass)
    {
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:C3DCameraGetTypeID()];
      v7 = MEMORY[0x277CBEA60];
      v8 = &v31;
    }

    else if (objc_opt_class() == entryClass)
    {
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:C3DSceneGetTypeID()];
      v7 = MEMORY[0x277CBEA60];
      v8 = &v30;
    }

    else if (objc_opt_class() == entryClass)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:C3DMorpherGetTypeID()];
      v7 = MEMORY[0x277CBEA60];
      v8 = &v29;
    }

    else
    {
      if (objc_opt_class() != entryClass)
      {
        v6 = scn_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [SCNSceneSource identifiersOfEntriesWithClass:];
        }

        return MEMORY[0x277CBEBF8];
      }

      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:C3DSkinnerGetTypeID()];
      v7 = MEMORY[0x277CBEA60];
      v8 = &v28;
    }

    goto LABEL_17;
  }

  v34[0] = [MEMORY[0x277CCABB0] numberWithUnsignedLong:C3DAnimationGroupGetTypeID()];
  v34[1] = [MEMORY[0x277CCABB0] numberWithUnsignedLong:C3DAnimationClusterGetTypeID()];
  v34[2] = [MEMORY[0x277CCABB0] numberWithUnsignedLong:C3DKeyframedAnimationGetTypeID()];
  v7 = MEMORY[0x277CBEA60];
  v8 = v34;
  v9 = 3;
LABEL_18:
  v10 = [v7 arrayWithObjects:v8 count:v9];
  if (!self->_sceneLoaded)
  {
    [(SCNSceneSource *)self sceneWithOptions:self->_sceneSourceOptions error:0];
  }

  sceneSource = self->_sceneSource;
  if (sceneSource)
  {
    Library = C3DSceneSourceGetLibrary(sceneSource);
    if (Library)
    {
      v13 = Library;
      v26 = 0;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          v17 = 0;
          do
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v10);
            }

            v18 = C3DLibraryCopyIDsWithKind(v13, [*(*(&v22 + 1) + 8 * v17) longValue], &v26);
            if (v26 >= 1)
            {
              for (i = 0; i < v26; ++i)
              {
                v20 = [v18[i] copy];
                [(NSArray *)array addObject:v20];
              }
            }

            free(v18);
            ++v17;
          }

          while (v17 != v15);
          v15 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v15);
      }
    }
  }

  return array;
}

- (BOOL)_appendToEntries:(id)entries entriesWithType:(unint64_t)type passingTest:(id)test entryObjectConstructor:(id)constructor
{
  Library = C3DSceneSourceGetLibrary(self->_sceneSource);
  v23 = 0;
  v11 = C3DLibraryCopyIDsWithKind(Library, type, &v23);
  v22 = 0;
  v21 = v11;
  if (v23 < 1)
  {
    v18 = 0;
  }

  else
  {
    v12 = 1;
    v13 = v11;
    do
    {
      v14 = *v13;
      EntryWithDocumentID = C3DLibraryGetEntryWithDocumentID(Library, *v13);
      v16 = [v14 copy];
      v17 = (*(constructor + 2))(constructor, EntryWithDocumentID);
      if ((*(test + 2))(test, v17, v16, &v22))
      {
        [entries addObject:v17];
      }

      v18 = v22;
      if (v22)
      {
        break;
      }

      ++v13;
    }

    while (v12++ < v23);
  }

  free(v21);
  return v18;
}

- (NSArray)entriesPassingTest:(void *)predicate
{
  array = [MEMORY[0x277CBEB18] array];
  if (!self->_sceneLoaded)
  {
    [(SCNSceneSource *)self sceneWithOptions:self->_sceneSourceOptions error:0];
  }

  sceneSource = self->_sceneSource;
  if (sceneSource && C3DSceneSourceGetLibrary(sceneSource) && ![(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DGeometryGetTypeID() passingTest:predicate entryObjectConstructor:&__block_literal_global_76]&& ![(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DMaterialGetTypeID() passingTest:predicate entryObjectConstructor:&__block_literal_global_226]&& ![(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DAnimationGroupGetTypeID() passingTest:predicate entryObjectConstructor:&__block_literal_global_228]&& ![(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DAnimationClusterGetTypeID() passingTest:predicate entryObjectConstructor:&__block_literal_global_230_0]&& ![(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DNodeGetTypeID() passingTest:predicate entryObjectConstructor:&__block_literal_global_232]&& ![(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DLightGetTypeID() passingTest:predicate entryObjectConstructor:&__block_literal_global_234]&& ![(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DCameraGetTypeID() passingTest:predicate entryObjectConstructor:&__block_literal_global_236_0]&& ![(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DSceneGetTypeID() passingTest:predicate entryObjectConstructor:&__block_literal_global_238_0]&& ![(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DSkinnerGetTypeID() passingTest:predicate entryObjectConstructor:&__block_literal_global_240_0])
  {
    [(SCNSceneSource *)self _appendToEntries:array entriesWithType:C3DMorphGetTypeID() passingTest:predicate entryObjectConstructor:&__block_literal_global_242];
  }

  return array;
}

- (id)performConsistencyCheck
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__8;
  v8 = __Block_byref_object_dispose__8;
  v9 = 0;
  C3DSceneSourcePerformConsistencyCheck(self->_sceneSource);
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

void *__41__SCNSceneSource_performConsistencyCheck__block_invoke(void *result, int a2, void *cf)
{
  if (cf)
  {
    v4 = result;
    CFRetain(cf);
    result = cf;
    *(*(v4[4] + 8) + 40) = result;
  }

  return result;
}

- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = SCNGetSceneKitBundle();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [classes countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *v30;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(classes);
      }

      v12 = [v7 classNamed:*(*(&v29 + 1) + 8 * i)];
      if (v12)
      {
        v13 = v12;
        if (![unarchiver requiresSecureCoding])
        {
          return v13;
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        allowedClasses = [unarchiver allowedClasses];
        v15 = [allowedClasses countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v26;
          v24 = v9;
LABEL_10:
          unarchiverCopy = unarchiver;
          classesCopy = classes;
          v20 = v7;
          v21 = v10;
          v22 = 0;
          while (1)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(allowedClasses);
            }

            if (([(objc_class *)v13 isSubclassOfClass:*(*(&v25 + 1) + 8 * v22)]& 1) != 0)
            {
              return v13;
            }

            if (v16 == ++v22)
            {
              v16 = [allowedClasses countByEnumeratingWithState:&v25 objects:v33 count:16];
              v10 = v21;
              v7 = v20;
              classes = classesCopy;
              unarchiver = unarchiverCopy;
              v9 = v24;
              if (v16)
              {
                goto LABEL_10;
              }

              break;
            }
          }
        }
      }
    }

    v9 = [classes countByEnumeratingWithState:&v29 objects:v34 count:16];
    v13 = 0;
    if (v9)
    {
      continue;
    }

    return v13;
  }
}

- (id)debugQuickLookObject
{
  v2 = [(SCNSceneSource *)self sceneWithOptions:0 error:0];

  return [(SCNScene *)v2 debugQuickLookObject];
}

- (id)debugQuickLookData
{
  debugQuickLookObject = [(SCNSceneSource *)self debugQuickLookObject];

  return UIImagePNGRepresentation(debugQuickLookObject);
}

void __59__SCNSceneSource__createSceneRefWithOptions_statusHandler___block_invoke_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Unreachable code: Unhandled SceneKit error code (%d)", v2, 8u);
}

- (void)_sceneWithClass:options:statusHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_3(&dword_21BEF7000, v0, v1, "Error: failed to unarchive data at %@ (%@)");
}

- (void)_sceneWithClass:options:statusHandler:.cold.2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_3(&dword_21BEF7000, v0, v1, "Error: failed to unarchive scene at %@ - unknown decoded object class (%@)");
}

- (void)_sceneWithClass:options:statusHandler:.cold.3()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_3(&dword_21BEF7000, v0, v1, "Error: failed to unarchive scene at %@ (%@)");
}

@end