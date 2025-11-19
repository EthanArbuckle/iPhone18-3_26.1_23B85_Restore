@interface WFDiskCache
- (WFDiskCache)initWithApplicationGroupIdentifier:(id)a3 name:(id)a4;
- (WFDiskCache)initWithCacheDirectory:(id)a3 name:(id)a4;
- (WFDiskCache)initWithCacheURL:(id)a3 name:(id)a4;
- (WFDiskCache)initWithName:(id)a3;
- (id)actuallyGetObjectOfClasses:(id)a3 forKey:(id)a4;
- (id)fileURLForKey:(id)a3;
- (id)objectOfClasses:(id)a3 forKey:(id)a4;
- (id)objectOfClasses:(id)a3 forKeyComponents:(id)a4;
- (void)actuallyRemoveObjectForKey:(id)a3;
- (void)actuallySetObject:(id)a3 forKey:(id)a4;
- (void)objectOfClasses:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectForKey:(id)a3 completion:(id)a4;
- (void)removeObjectForKeyComponents:(id)a3;
- (void)setClass:(Class)a3 forCachedClassName:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setObject:(id)a3 forKeyComponents:(id)a4;
@end

@implementation WFDiskCache

- (void)setClass:(Class)a3 forCachedClassName:(id)a4
{
  v6 = a4;
  v7 = [(WFDiskCache *)self overridingClassMap];
  [v7 setObject:a3 forKeyedSubscript:v6];
}

- (id)actuallyGetObjectOfClasses:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v9 = [(WFDiskCache *)self fileURLForKey:v8];
  v10 = open([v9 fileSystemRepresentation], 16);
  if (v10 == -1)
  {
    if (*__error() != 2)
    {
      v18 = [v9 absoluteString];
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      NSLog(&cfstr_ErrorFileUrlFo_0.isa, self, v18, v8, v19);
    }

    v17 = 0;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v10 closeOnDealloc:1];
    v12 = [v11 readDataToEndOfFile];
    [v11 closeFile];
    v24 = 0;
    v13 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v12 error:&v24];
    v14 = v24;
    [v13 setRequiresSecureCoding:1];
    [v13 setDecodingFailurePolicy:1];
    v15 = [(WFDiskCache *)self overridingClassMap];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49__WFDiskCache_actuallyGetObjectOfClasses_forKey___block_invoke;
    v22[3] = &unk_278C1A178;
    v16 = v13;
    v23 = v16;
    [v15 enumerateKeysAndObjectsUsingBlock:v22];

    if (v16)
    {
      v17 = [v16 decodeObjectOfClasses:v7 forKey:*MEMORY[0x277CCA308]];
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

- (void)actuallyRemoveObjectForKey:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    v5 = 0;
  }

  v6 = [(WFDiskCache *)self fileURLForKey:v5];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  [v7 removeItemAtURL:v6 error:0];
}

- (void)actuallySetObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"object"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"key"}];

LABEL_3:
  v10 = [(WFDiskCache *)self fileURLForKey:v9];
  v20 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v20];
  v12 = v20;
  v13 = v12;
  if (v11)
  {
    v14 = open([v10 fileSystemRepresentation], 1569, 420);
    if (v14 == -1)
    {
      v16 = [v10 absoluteString];
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      NSLog(&cfstr_ErrorFileUrlFo.isa, self, v16, v9, v17);
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

- (id)fileURLForKey:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a3 dataUsingEncoding:4];
  CC_SHA1([v4 bytes], objc_msgSend(v4, "length"), md);
  v5 = objc_opt_new();
  for (i = 0; i != 20; ++i)
  {
    [v5 appendFormat:@"%02x", md[i]];
  }

  v7 = [(WFDiskCache *)self cacheURL];
  v8 = [v7 URLByAppendingPathComponent:v5 isDirectory:0];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)objectOfClasses:(id)a3 forKeyComponents:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = WFDiskCacheKeyArgs(a4, &v11);
    v8 = [(WFDiskCache *)self objectOfClasses:v6 forKey:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)removeObjectForKeyComponents:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    v5 = 0;
  }

  v7 = WFDiskCacheKeyArgs(v5, &v9);
  [(WFDiskCache *)self removeObjectForKey:v7];
}

- (void)setObject:(id)a3 forKeyComponents:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    v8 = 0;
  }

  v10 = WFDiskCacheKeyArgs(v8, &v12);
  [(WFDiskCache *)self setObject:v7 forKey:v10];
}

- (void)objectOfClasses:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WFDiskCache_objectOfClasses_forKey_completion___block_invoke;
  block[3] = &unk_278C21268;
  block[4] = self;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
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

- (void)removeObjectForKey:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__WFDiskCache_removeObjectForKey_completion___block_invoke;
  block[3] = &unk_278C21360;
  block[4] = self;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
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

- (void)setObject:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"object"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    goto LABEL_3;
  }

  if (!v10)
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
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
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

- (id)objectOfClasses:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
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
    v12 = v6;
    v13 = v7;
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

- (void)removeObjectForKey:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WFDiskCache_removeObjectForKey___block_invoke;
  block[3] = &unk_278C21508;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_barrier_sync(queue, block);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"object"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    goto LABEL_3;
  }

  if (!v8)
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
  v16 = v7;
  v17 = v9;
  v11 = v9;
  v12 = v7;
  dispatch_barrier_sync(queue, block);
}

- (WFDiskCache)initWithCacheURL:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"WFDiskCache.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"cacheURL"}];
  }

  v26.receiver = self;
  v26.super_class = WFDiskCache;
  v9 = [(WFDiskCache *)&v26 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v25 = 0;
    v11 = [v10 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v25];
    v12 = v25;

    if (v11)
    {
      v13 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_BACKGROUND, 0);
      if (v8)
      {
        v14 = v8;
      }

      else
      {
        v14 = @"default";
      }

      v15 = [@"is.workflow.WFDiskCache." stringByAppendingString:v14];
      v16 = dispatch_queue_create([v15 UTF8String], v13);
      queue = v9->_queue;
      v9->_queue = v16;

      v18 = [v7 copy];
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

- (WFDiskCache)initWithCacheDirectory:(id)a3 name:(id)a4
{
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = @"default";
  }

  v7 = a4;
  v8 = a3;
  v9 = [@"is.workflow.WFDiskCache." stringByAppendingString:v6];
  v10 = [v8 URLByAppendingPathComponent:v9 isDirectory:1];

  v11 = [(WFDiskCache *)self initWithCacheURL:v10 name:v7];
  return v11;
}

- (WFDiskCache)initWithApplicationGroupIdentifier:(id)a3 name:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCAA00];
  v8 = a3;
  v9 = [v7 defaultManager];
  v10 = [v9 containerURLForSecurityApplicationGroupIdentifier:v8];

  v11 = [v10 URLByAppendingPathComponent:@"Library" isDirectory:1];
  v12 = [v11 URLByAppendingPathComponent:@"Caches" isDirectory:1];

  if (v12)
  {
    self = [(WFDiskCache *)self initWithCacheDirectory:v12 name:v6];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (WFDiskCache)initWithName:(id)a3
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = a3;
  v6 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v7 = [v6 firstObject];
  v8 = [v4 fileURLWithPath:v7 isDirectory:1];

  v9 = [(WFDiskCache *)self initWithCacheDirectory:v8 name:v5];
  return v9;
}

@end