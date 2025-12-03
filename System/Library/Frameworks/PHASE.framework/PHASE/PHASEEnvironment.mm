@interface PHASEEnvironment
- (BOOL)isOverridingMedium;
- (BOOL)isOverridingStreamForKey:(id)key;
- (PHASEEnvironment)init;
- (PHASEEnvironment)initWithEngine:(id)engine shapes:(id)shapes;
- (PHASEMedium)mediumOverride;
- (id)copyWithZone:(_NSZone *)zone;
- (id)streamForKey:(id)key;
- (void)overrideMedium:(id)medium;
- (void)overrideStream:(id)stream forKey:(id)key;
- (void)removeMediumOverride;
- (void)removeOverrideForKey:(id)key;
@end

@implementation PHASEEnvironment

- (PHASEEnvironment)init
{
  [(PHASEEnvironment *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEEnvironment)initWithEngine:(id)engine shapes:(id)shapes
{
  engineCopy = engine;
  shapesCopy = shapes;
  if (!engineCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"engine is nil."];
  }

  if (!shapesCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"shapes is nil."];
  }

  if (![shapesCopy count])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"shapes is empty."];
  }

  v19.receiver = self;
  v19.super_class = PHASEEnvironment;
  v8 = [(PHASEObject *)&v19 initWithEngine:engineCopy entityType:5 shapes:shapesCopy];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEA60] arrayWithArray:shapesCopy];
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

- (void)overrideStream:(id)stream forKey:(id)key
{
  streamCopy = stream;
  keyCopy = key;
  if (streamCopy)
  {
    engine = [streamCopy engine];
    engine2 = [(PHASEObject *)self engine];

    if (engine != engine2)
    {
      v9 = MEMORY[0x277CBEAD8];
      engine3 = [streamCopy engine];
      engine4 = [(PHASEObject *)self engine];
      [v9 raise:*MEMORY[0x277CBE660] format:{@"stream's engine %p does not match this environment's engine %p.", engine3, engine4}];
    }
  }

  if (!keyCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"engine is nil."];
  }

  if (streamCopy && (PHASEEnvironmentalMetadataStreamKeyIsPublished(keyCopy) & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"key is unpublished."];
  }

  v12 = self->_streamOverridesLock;
  objc_sync_enter(v12);
  if (streamCopy)
  {
    [(NSMutableDictionary *)self->_streamOverrides setObject:streamCopy forKeyedSubscript:keyCopy];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [(NSMutableDictionary *)self->_streamOverrides setObject:null forKeyedSubscript:keyCopy];
  }

  objc_sync_exit(v12);
}

- (void)removeOverrideForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"key is nil."];
  }

  v4 = self->_streamOverridesLock;
  objc_sync_enter(v4);
  streamOverrides = [(PHASEEnvironment *)self streamOverrides];
  [streamOverrides removeObjectForKey:keyCopy];

  objc_sync_exit(v4);
}

- (id)streamForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"engine is nil."];
  }

  v5 = self->_streamOverridesLock;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_streamOverrides objectForKeyedSubscript:keyCopy];
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

- (BOOL)isOverridingStreamForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"engine is nil."];
  }

  v5 = self->_streamOverridesLock;
  objc_sync_enter(v5);
  streamOverrides = [(PHASEEnvironment *)self streamOverrides];
  v7 = [streamOverrides objectForKeyedSubscript:keyCopy];

  if (v7)
  {
    [MEMORY[0x277CBEB68] null];
  }

  objc_sync_exit(v5);
  return v7 != 0;
}

- (void)overrideMedium:(id)medium
{
  mediumCopy = medium;
  v5 = mediumCopy;
  if (mediumCopy)
  {
    engine = [(PHASEMedium *)mediumCopy engine];
    engine2 = [(PHASEObject *)self engine];

    if (engine != engine2)
    {
      v8 = MEMORY[0x277CBEAD8];
      engine3 = [(PHASEMedium *)v5 engine];
      engine4 = [(PHASEObject *)self engine];
      [v8 raise:*MEMORY[0x277CBE660] format:{@"medium's engine %p does not match this environment's engine %p.", engine3, engine4}];
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
  selfCopy = self;
  v3 = self->_mediumOverrideLock;
  objc_sync_enter(v3);
  LOBYTE(selfCopy) = selfCopy->_mediumOverrideActive;
  objc_sync_exit(v3);

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  engine = [(PHASEObject *)self engine];
  shapes = [(PHASEEnvironment *)self shapes];
  v7 = [v4 initWithEngine:engine shapes:shapes];

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