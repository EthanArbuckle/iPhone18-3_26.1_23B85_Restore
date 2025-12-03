@interface WFDiskCache
- (WFDiskCache)initWithApplicationGroupIdentifier:(id)identifier name:(id)name;
- (WFDiskCache)initWithCacheDirectory:(id)directory name:(id)name;
- (WFDiskCache)initWithCacheURL:(id)l name:(id)name;
- (WFDiskCache)initWithName:(id)name;
- (id)actuallyGetObjectOfClasses:(id)classes forKey:(id)key;
- (id)fileURLForKey:(id)key;
- (id)objectOfClasses:(id)classes forKey:(id)key;
- (id)objectOfClasses:(id)classes forKeyComponents:(id)components;
- (void)actuallyRemoveObjectForKey:(id)key;
- (void)actuallySetObject:(id)object forKey:(id)key;
- (void)objectOfClasses:(id)classes forKey:(id)key completion:(id)completion;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectForKey:(id)key completion:(id)completion;
- (void)removeObjectForKeyComponents:(id)components;
- (void)setClass:(Class)class forCachedClassName:(id)name;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key completion:(id)completion;
- (void)setObject:(id)object forKeyComponents:(id)components;
@end

@implementation WFDiskCache

- (void)setClass:(Class)class forCachedClassName:(id)name
{
  nameCopy = name;
  overridingClassMap = [(WFDiskCache *)self overridingClassMap];
  [overridingClassMap setObject:class forKeyedSubscript:nameCopy];
}

- (id)actuallyGetObjectOfClasses:(id)classes forKey:(id)key
{
  classesCopy = classes;
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v9 = [(WFDiskCache *)self fileURLForKey:keyCopy];
  v10 = open([v9 fileSystemRepresentation], 16);
  if (v10 == -1)
  {
    if (*__error() != 2)
    {
      absoluteString = [v9 absoluteString];
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      NSLog(&cfstr_ErrorFileUrlFo_0.isa, self, absoluteString, keyCopy, v19);
    }

    v17 = 0;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v10 closeOnDealloc:1];
    readDataToEndOfFile = [v11 readDataToEndOfFile];
    [v11 closeFile];
    v24 = 0;
    v13 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:readDataToEndOfFile error:&v24];
    v14 = v24;
    [v13 setRequiresSecureCoding:1];
    [v13 setDecodingFailurePolicy:1];
    overridingClassMap = [(WFDiskCache *)self overridingClassMap];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49__WFDiskCache_actuallyGetObjectOfClasses_forKey___block_invoke;
    v22[3] = &unk_278C1A178;
    v16 = v13;
    v23 = v16;
    [overridingClassMap enumerateKeysAndObjectsUsingBlock:v22];

    if (v16)
    {
      v17 = [v16 decodeObjectOfClasses:classesCopy forKey:*MEMORY[0x277CCA308]];
      [v16 finishDecoding];
    }

    else
    {
      NSLog(&cfstr_ErrorCouldNotU.isa, self, v14);
      v17 = 0;
    }
  }

  return v17;
}

- (void)actuallyRemoveObjectForKey:(id)key
{
  keyCopy = key;
  v9 = keyCopy;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    keyCopy = 0;
  }

  v6 = [(WFDiskCache *)self fileURLForKey:keyCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtURL:v6 error:0];
}

- (void)actuallySetObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v9 = keyCopy;
  if (objectCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"object"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"key"}];

LABEL_3:
  v10 = [(WFDiskCache *)self fileURLForKey:v9];
  v20 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:&v20];
  v12 = v20;
  v13 = v12;
  if (v11)
  {
    v14 = open([v10 fileSystemRepresentation], 1569, 420);
    if (v14 == -1)
    {
      absoluteString = [v10 absoluteString];
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      NSLog(&cfstr_ErrorFileUrlFo.isa, self, absoluteString, v9, v17);
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v14 closeOnDealloc:1];
      [v15 writeData:v11];
      [v15 closeFile];
    }
  }

  else
  {
    NSLog(&cfstr_ErrorCouldNotA.isa, self, v12);
  }
}

- (id)fileURLForKey:(id)key
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [key dataUsingEncoding:4];
  CC_SHA1([v4 bytes], objc_msgSend(v4, "length"), md);
  v5 = objc_opt_new();
  for (i = 0; i != 20; ++i)
  {
    [v5 appendFormat:@"%02x", md[i]];
  }

  cacheURL = [(WFDiskCache *)self cacheURL];
  v8 = [cacheURL URLByAppendingPathComponent:v5 isDirectory:0];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)objectOfClasses:(id)classes forKeyComponents:(id)components
{
  if (components)
  {
    classesCopy = classes;
    v7 = WFDiskCacheKeyArgs(components, &v11);
    v8 = [(WFDiskCache *)self objectOfClasses:classesCopy forKey:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)removeObjectForKeyComponents:(id)components
{
  componentsCopy = components;
  v6 = componentsCopy;
  if (!componentsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    componentsCopy = 0;
  }

  v7 = WFDiskCacheKeyArgs(componentsCopy, &v9);
  [(WFDiskCache *)self removeObjectForKey:v7];
}

- (void)setObject:(id)object forKeyComponents:(id)components
{
  objectCopy = object;
  componentsCopy = components;
  v9 = componentsCopy;
  if (!componentsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    componentsCopy = 0;
  }

  v10 = WFDiskCacheKeyArgs(componentsCopy, &v12);
  [(WFDiskCache *)self setObject:objectCopy forKey:v10];
}

- (void)objectOfClasses:(id)classes forKey:(id)key completion:(id)completion
{
  classesCopy = classes;
  keyCopy = key;
  completionCopy = completion;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WFDiskCache_objectOfClasses_forKey_completion___block_invoke;
  block[3] = &unk_278C21268;
  block[4] = self;
  v18 = classesCopy;
  v19 = keyCopy;
  v20 = completionCopy;
  v13 = completionCopy;
  v14 = keyCopy;
  v15 = classesCopy;
  dispatch_async(queue, block);
}

void __49__WFDiskCache_objectOfClasses_forKey_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actuallyGetObjectOfClasses:*(a1 + 40) forKey:*(a1 + 48)];
  v3 = dispatch_get_global_queue(-32768, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__WFDiskCache_objectOfClasses_forKey_completion___block_invoke_2;
  v6[3] = &unk_278C22448;
  v4 = *(a1 + 56);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

- (void)removeObjectForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__WFDiskCache_removeObjectForKey_completion___block_invoke;
  block[3] = &unk_278C21360;
  block[4] = self;
  v14 = keyCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = keyCopy;
  dispatch_async(queue, block);
}

void __45__WFDiskCache_removeObjectForKey_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) actuallyRemoveObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = dispatch_get_global_queue(-32768, 0);
    dispatch_async(v3, v2);
  }
}

- (void)setObject:(id)object forKey:(id)key completion:(id)completion
{
  objectCopy = object;
  keyCopy = key;
  completionCopy = completion;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"object"}];

    if (keyCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    goto LABEL_3;
  }

  if (!keyCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__WFDiskCache_setObject_forKey_completion___block_invoke;
  block[3] = &unk_278C21268;
  block[4] = self;
  v19 = objectCopy;
  v20 = keyCopy;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = keyCopy;
  v15 = objectCopy;
  dispatch_async(queue, block);
}

void __43__WFDiskCache_setObject_forKey_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) actuallySetObject:*(a1 + 40) forKey:*(a1 + 48)];
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = dispatch_get_global_queue(-32768, 0);
    dispatch_async(v3, v2);
  }
}

- (id)objectOfClasses:(id)classes forKey:(id)key
{
  classesCopy = classes;
  keyCopy = key;
  if (keyCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__8055;
    v19 = __Block_byref_object_dispose__8056;
    v20 = 0;
    queue = self->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__WFDiskCache_objectOfClasses_forKey___block_invoke;
    v11[3] = &unk_278C1DFF0;
    v14 = &v15;
    v11[4] = self;
    v12 = classesCopy;
    v13 = keyCopy;
    dispatch_barrier_sync(queue, v11);
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __38__WFDiskCache_objectOfClasses_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actuallyGetObjectOfClasses:*(a1 + 40) forKey:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WFDiskCache_removeObjectForKey___block_invoke;
  block[3] = &unk_278C21508;
  block[4] = self;
  v10 = keyCopy;
  v7 = keyCopy;
  dispatch_barrier_sync(queue, block);
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v9 = keyCopy;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"object"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    goto LABEL_3;
  }

  if (!keyCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__WFDiskCache_setObject_forKey___block_invoke;
  block[3] = &unk_278C21F68;
  block[4] = self;
  v16 = objectCopy;
  v17 = v9;
  v11 = v9;
  v12 = objectCopy;
  dispatch_barrier_sync(queue, block);
}

- (WFDiskCache)initWithCacheURL:(id)l name:(id)name
{
  lCopy = l;
  nameCopy = name;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"cacheURL"}];
  }

  v26.receiver = self;
  v26.super_class = WFDiskCache;
  v9 = [(WFDiskCache *)&v26 init];
  if (v9)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v25 = 0;
    v11 = [defaultManager createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:&v25];
    v12 = v25;

    if (v11)
    {
      v13 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_BACKGROUND, 0);
      if (nameCopy)
      {
        v14 = nameCopy;
      }

      else
      {
        v14 = @"default";
      }

      v15 = [@"is.workflow.WFDiskCache." stringByAppendingString:v14];
      v16 = dispatch_queue_create([v15 UTF8String], v13);
      queue = v9->_queue;
      v9->_queue = v16;

      v18 = [lCopy copy];
      cacheURL = v9->_cacheURL;
      v9->_cacheURL = v18;

      v20 = objc_opt_new();
      overridingClassMap = v9->_overridingClassMap;
      v9->_overridingClassMap = v20;

      v22 = v9;
    }

    else
    {
      NSLog(&cfstr_Error_0.isa, v9, v12);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (WFDiskCache)initWithCacheDirectory:(id)directory name:(id)name
{
  if (name)
  {
    nameCopy = name;
  }

  else
  {
    nameCopy = @"default";
  }

  nameCopy2 = name;
  directoryCopy = directory;
  v9 = [@"is.workflow.WFDiskCache." stringByAppendingString:nameCopy];
  v10 = [directoryCopy URLByAppendingPathComponent:v9 isDirectory:1];

  v11 = [(WFDiskCache *)self initWithCacheURL:v10 name:nameCopy2];
  return v11;
}

- (WFDiskCache)initWithApplicationGroupIdentifier:(id)identifier name:(id)name
{
  nameCopy = name;
  v7 = MEMORY[0x277CCAA00];
  identifierCopy = identifier;
  defaultManager = [v7 defaultManager];
  v10 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:identifierCopy];

  v11 = [v10 URLByAppendingPathComponent:@"Library" isDirectory:1];
  v12 = [v11 URLByAppendingPathComponent:@"Caches" isDirectory:1];

  if (v12)
  {
    self = [(WFDiskCache *)self initWithCacheDirectory:v12 name:nameCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFDiskCache)initWithName:(id)name
{
  v4 = MEMORY[0x277CBEBC0];
  nameCopy = name;
  v6 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v6 firstObject];
  v8 = [v4 fileURLWithPath:firstObject isDirectory:1];

  v9 = [(WFDiskCache *)self initWithCacheDirectory:v8 name:nameCopy];
  return v9;
}

@end