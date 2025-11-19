@interface PHASEEnvironment
- (BOOL)isOverridingMedium;
- (BOOL)isOverridingStreamForKey:(id)a3;
- (PHASEEnvironment)init;
- (PHASEEnvironment)initWithEngine:(id)a3 shapes:(id)a4;
- (PHASEMedium)mediumOverride;
- (id)copyWithZone:(_NSZone *)a3;
- (id)streamForKey:(id)a3;
- (void)overrideMedium:(id)a3;
- (void)overrideStream:(id)a3 forKey:(id)a4;
- (void)removeMediumOverride;
- (void)removeOverrideForKey:(id)a3;
@end

@implementation PHASEEnvironment

- (PHASEEnvironment)init
{
  [(PHASEEnvironment *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEEnvironment)initWithEngine:(id)a3 shapes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"engine is nil."];
  }

  if (!v7)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"shapes is nil."];
  }

  if (![v7 count])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"shapes is empty."];
  }

  v19.receiver = self;
  v19.super_class = PHASEEnvironment;
  v8 = [(PHASEObject *)&v19 initWithEngine:v6 entityType:5 shapes:v7];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
    shapes = v8->_shapes;
    v8->_shapes = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    streamOverrides = v8->_streamOverrides;
    v8->_streamOverrides = v11;

    v13 = objc_alloc_init(MEMORY[0x277D82BB8]);
    streamOverridesLock = v8->_streamOverridesLock;
    v8->_streamOverridesLock = v13;

    v8->_mediumOverrideActive = 0;
    mediumOverride = v8->_mediumOverride;
    v8->_mediumOverride = 0;

    v16 = objc_alloc_init(MEMORY[0x277D82BB8]);
    mediumOverrideLock = v8->_mediumOverrideLock;
    v8->_mediumOverrideLock = v16;
  }

  return v8;
}

- (void)overrideStream:(id)a3 forKey:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14)
  {
    v7 = [v14 engine];
    v8 = [(PHASEObject *)self engine];

    if (v7 != v8)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = [v14 engine];
      v11 = [(PHASEObject *)self engine];
      [v9 raise:*MEMORY[0x277CBE660] format:{@"stream's engine %p does not match this environment's engine %p.", v10, v11}];
    }
  }

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"engine is nil."];
  }

  if (v14 && (PHASEEnvironmentalMetadataStreamKeyIsPublished(v6) & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"key is unpublished."];
  }

  v12 = self->_streamOverridesLock;
  objc_sync_enter(v12);
  if (v14)
  {
    [(NSMutableDictionary *)self->_streamOverrides setObject:v14 forKeyedSubscript:v6];
  }

  else
  {
    v13 = [MEMORY[0x277CBEB68] null];
    [(NSMutableDictionary *)self->_streamOverrides setObject:v13 forKeyedSubscript:v6];
  }

  objc_sync_exit(v12);
}

- (void)removeOverrideForKey:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"key is nil."];
  }

  v4 = self->_streamOverridesLock;
  objc_sync_enter(v4);
  v5 = [(PHASEEnvironment *)self streamOverrides];
  [v5 removeObjectForKey:v6];

  objc_sync_exit(v4);
}

- (id)streamForKey:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"engine is nil."];
  }

  v5 = self->_streamOverridesLock;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_streamOverrides objectForKeyedSubscript:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v5);

  return v7;
}

- (BOOL)isOverridingStreamForKey:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"engine is nil."];
  }

  v5 = self->_streamOverridesLock;
  objc_sync_enter(v5);
  v6 = [(PHASEEnvironment *)self streamOverrides];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    [MEMORY[0x277CBEB68] null];
  }

  objc_sync_exit(v5);
  return v7 != 0;
}

- (void)overrideMedium:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [(PHASEMedium *)v4 engine];
    v7 = [(PHASEObject *)self engine];

    if (v6 != v7)
    {
      v8 = MEMORY[0x277CBEAD8];
      v9 = [(PHASEMedium *)v5 engine];
      v10 = [(PHASEObject *)self engine];
      [v8 raise:*MEMORY[0x277CBE660] format:{@"medium's engine %p does not match this environment's engine %p.", v9, v10}];
    }
  }

  v11 = self->_mediumOverrideLock;
  objc_sync_enter(v11);
  self->_mediumOverrideActive = 1;
  mediumOverride = self->_mediumOverride;
  self->_mediumOverride = v5;
  v13 = v5;

  objc_sync_exit(v11);
}

- (void)removeMediumOverride
{
  obj = self->_mediumOverrideLock;
  objc_sync_enter(obj);
  self->_mediumOverrideActive = 0;
  mediumOverride = self->_mediumOverride;
  self->_mediumOverride = 0;

  objc_sync_exit(obj);
}

- (PHASEMedium)mediumOverride
{
  v3 = self->_mediumOverrideLock;
  objc_sync_enter(v3);
  if (self->_mediumOverrideActive)
  {
    v4 = self->_mediumOverride;
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v3);

  return v4;
}

- (BOOL)isOverridingMedium
{
  v2 = self;
  v3 = self->_mediumOverrideLock;
  objc_sync_enter(v3);
  LOBYTE(v2) = v2->_mediumOverrideActive;
  objc_sync_exit(v3);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(PHASEObject *)self engine];
  v6 = [(PHASEEnvironment *)self shapes];
  v7 = [v4 initWithEngine:v5 shapes:v6];

  v8 = self->_streamOverridesLock;
  objc_sync_enter(v8);
  objc_storeStrong((v7 + 128), self->_streamOverrides);
  objc_sync_exit(v8);

  v9 = self->_mediumOverrideLock;
  objc_sync_enter(v9);
  *(v7 + 112) = self->_mediumOverrideActive;
  objc_storeStrong((v7 + 144), self->_mediumOverride);
  objc_sync_exit(v9);

  return v7;
}

@end