@interface PHASEContext
- (NSArray)environments;
- (PHASEContext)init;
- (PHASEContext)initWithEngine:(id)a3;
- (PHASEEngine)engine;
- (PHASEMedium)medium;
- (id)copyWithZone:(_NSZone *)a3;
- (id)streamForKey:(id)a3;
- (void)addEnvironment:(id)a3;
- (void)dealloc;
- (void)removeEnvironment:(id)a3;
- (void)setEnvironments:(id)a3;
- (void)setMedium:(id)a3;
- (void)setStream:(id)a3 forKey:(id)a4;
@end

@implementation PHASEContext

- (PHASEContext)init
{
  [(PHASEContext *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEContext)initWithEngine:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"engine is nil."];
  }

  v22.receiver = self;
  v22.super_class = PHASEContext;
  v5 = [(PHASEContext *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_engine, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    streams = v6->_streams;
    v6->_streams = v7;

    v9 = objc_alloc_init(MEMORY[0x277D82BB8]);
    streamsLock = v6->_streamsLock;
    v6->_streamsLock = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    internalEnvironments = v6->_internalEnvironments;
    v6->_internalEnvironments = v11;

    v13 = objc_alloc_init(MEMORY[0x277D82BB8]);
    internalEnvironmentsLock = v6->_internalEnvironmentsLock;
    v6->_internalEnvironmentsLock = v13;

    v15 = [[PHASEMedium alloc] initWithEngine:v4 preset:1835286898];
    internalMedium = v6->_internalMedium;
    v6->_internalMedium = v15;

    v17 = objc_alloc_init(MEMORY[0x277D82BB8]);
    internalMediumLock = v6->_internalMediumLock;
    v6->_internalMediumLock = v17;

    WeakRetained = objc_loadWeakRetained(&v6->_engine);
    v20 = [WeakRetained implementation];
    v6->_geoContextHandle.mData = (*(**(v20 + 368) + 80))(*(v20 + 368));

    if (!v6->_geoContextHandle.mData)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"failed to create context."];
    }
  }

  return v6;
}

- (void)setStream:(id)a3 forKey:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14)
  {
    v7 = [v14 engine];
    v8 = [(PHASEContext *)self engine];

    if (v7 != v8)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = [v14 engine];
      v11 = [(PHASEContext *)self engine];
      [v9 raise:*MEMORY[0x277CBE660] format:{@"stream's engine %p does not match this context's engine %p.", v10, v11}];
    }
  }

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"key is nil."];
  }

  if (v14 && (PHASEEnvironmentalMetadataStreamKeyIsPublished(v6) & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"key is unpublished."];
  }

  v12 = self->_streamsLock;
  objc_sync_enter(v12);
  streams = self->_streams;
  if (v14)
  {
    [(NSMutableDictionary *)streams setObject:v14 forKeyedSubscript:v6];
  }

  else
  {
    [(NSMutableDictionary *)streams removeObjectForKey:v6];
  }

  objc_sync_exit(v12);
}

- (id)streamForKey:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"key is nil."];
  }

  v5 = self->_streamsLock;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_streams objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)addEnvironment:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBE660];
  v13 = v4;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"environment is nil."];
  }

  v6 = [v13 engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (v6 != WeakRetained)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = [v13 engine];
    v10 = *v5;
    v11 = objc_loadWeakRetained(&self->_engine);
    [v8 raise:v10 format:{@"environment's engine %p does not match this context's engine %p.", v9, v11}];
  }

  v12 = self->_internalEnvironmentsLock;
  objc_sync_enter(v12);
  if ([(NSMutableArray *)self->_internalEnvironments containsObject:v13])
  {
    [MEMORY[0x277CBEAD8] raise:*v5 format:@"environment already exists in environments."];
  }

  [(NSMutableArray *)self->_internalEnvironments addObject:v13];
  objc_sync_exit(v12);
}

- (void)removeEnvironment:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"environment is nil."];
  }

  v4 = self->_internalEnvironmentsLock;
  objc_sync_enter(v4);
  if (([(NSMutableArray *)self->_internalEnvironments containsObject:v5]& 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"environment does not exist in environments."];
  }

  [(NSMutableArray *)self->_internalEnvironments removeObject:v5];
  objc_sync_exit(v4);
}

- (void)setEnvironments:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBE660];
  v18 = v4;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"environments is nil."];
  }

  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v18, "count")}];
  v7 = 0;
  v8 = *v5;
  while (v7 < [v18 count])
  {
    v9 = [v18 objectAtIndexedSubscript:v7];
    if (!v9)
    {
      [MEMORY[0x277CBEAD8] raise:v8 format:{@"environments[%lu] is nil.", v7}];
    }

    v10 = [v9 engine];
    WeakRetained = objc_loadWeakRetained(&self->_engine);

    if (v10 != WeakRetained)
    {
      v12 = MEMORY[0x277CBEAD8];
      v13 = [v9 engine];
      v14 = objc_loadWeakRetained(&self->_engine);
      [v12 raise:v8 format:{@"environments[%lu]'s engine %p does not match this context's engine %p", v7, v13, v14}];
    }

    if ([v6 containsObject:v9])
    {
      [MEMORY[0x277CBEAD8] raise:v8 format:{@"environments[%lu] is a duplicate entry.", v7}];
    }

    [v6 addObject:v9];

    ++v7;
  }

  v15 = self->_internalEnvironmentsLock;
  objc_sync_enter(v15);
  v16 = [v18 mutableCopy];
  internalEnvironments = self->_internalEnvironments;
  self->_internalEnvironments = v16;

  objc_sync_exit(v15);
}

- (NSArray)environments
{
  v3 = self->_internalEnvironmentsLock;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_internalEnvironments copy];
  objc_sync_exit(v3);

  return v4;
}

- (void)setMedium:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [(PHASEMedium *)v4 engine];
    WeakRetained = objc_loadWeakRetained(&self->_engine);

    if (v6 != WeakRetained)
    {
      v8 = MEMORY[0x277CBEAD8];
      v9 = [(PHASEMedium *)v5 engine];
      v10 = *MEMORY[0x277CBE660];
      v11 = objc_loadWeakRetained(&self->_engine);
      [v8 raise:v10 format:{@"medium's engine %p does not match this context's engine %p.", v9, v11}];
    }
  }

  v12 = self->_internalMediumLock;
  objc_sync_enter(v12);
  internalMedium = self->_internalMedium;
  self->_internalMedium = v5;
  v14 = v5;

  objc_sync_exit(v12);
}

- (PHASEMedium)medium
{
  v3 = self->_internalMediumLock;
  objc_sync_enter(v3);
  v4 = self->_internalMedium;
  objc_sync_exit(v3);

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(PHASEContext *)self engine];
  v6 = [v4 initWithEngine:v5];

  v7 = self->_streamsLock;
  objc_sync_enter(v7);
  objc_storeStrong(v6 + 2, self->_streams);
  objc_sync_exit(v7);

  v8 = [(PHASEContext *)self environments];
  [v6 setEnvironments:v8];

  v9 = [(PHASEContext *)self medium];
  [v6 setMedium:v9];

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    if (!self->_geoContextHandle.mData)
    {
      std::terminate();
    }

    v4 = objc_loadWeakRetained(&self->_engine);
    v5 = [v4 implementation];
    (*(**(v5 + 368) + 104))(*(v5 + 368), self->_geoContextHandle.mData);
  }

  v6.receiver = self;
  v6.super_class = PHASEContext;
  [(PHASEContext *)&v6 dealloc];
}

- (PHASEEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

@end