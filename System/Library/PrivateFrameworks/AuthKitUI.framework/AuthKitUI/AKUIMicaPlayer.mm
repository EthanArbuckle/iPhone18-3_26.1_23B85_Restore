@interface AKUIMicaPlayer
+ (BOOL)BOOLFromDictionary:(id)dictionary key:(id)key defaultValue:(BOOL)value;
+ (id)rootDictForPath:(id)path;
+ (id)updatePublishedObjects:(id)objects toReferenceLayersInTree:(id)tree ratherThanLayersInTree:(id)inTree;
- (AKUIMicaPlayer)initWithFileName:(id)name retinaScale:(double)scale;
- (AKUIMicaPlayer)initWithPath:(id)path retinaScale:(double)scale;
- (AKUIMicaPlayer)initWithPath:(id)path retinaScale:(double)scale rootLayer:(id)layer publishedObjects:(id)objects;
- (AKUIMicaPlayerDelegate)delegate;
- (BOOL)isPlaybackAtEnd;
- (BOOL)isTimerNeeded;
- (double)playbackTime;
- (id)copyWithZone:(_NSZone *)zone;
- (id)publishedLayerWithKey:(id)key required:(BOOL)required;
- (id)publishedObjectWithKey:(id)key required:(BOOL)required;
- (void)addToLayer:(id)layer onTop:(BOOL)top gravity:(id)gravity;
- (void)dealloc;
- (void)gotoEnd;
- (void)moveAndResizeWithinParentLayer:(id)layer usingGravity:(id)gravity animate:(BOOL)animate;
- (void)notifyDelegateDidChangePlaybackTime;
- (void)notifyDelegateDidStartPlaying;
- (void)notifyDelegateDidStopPlaying;
- (void)pause;
- (void)play;
- (void)removeFromSuperlayer;
- (void)runPlayTimer:(id)timer;
- (void)setDelegate:(id)delegate;
- (void)setPlaybackTime:(double)time;
- (void)setPreferredPlaybackSpeed:(float)speed;
- (void)setRootLayer:(id)layer;
- (void)startPlayTimerIfNeeded;
- (void)stopPlayTimer;
@end

@implementation AKUIMicaPlayer

- (AKUIMicaPlayer)initWithFileName:(id)name retinaScale:(double)scale
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  scaleCopy = scale;
  v13 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/AuthKitUI.framework"];
  v10 = MEMORY[0x277CBEBC0];
  v11 = [v13 pathForResource:location[0] ofType:@"caar"];
  v12 = [v10 fileURLWithPath:?];
  *&v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    v7 = selfCopy;
    path = [v12 path];
    selfCopy = 0;
    selfCopy = [v7 initWithPath:scaleCopy retinaScale:?];
    objc_storeStrong(&selfCopy, selfCopy);
    MEMORY[0x277D82BD8](path);
  }

  else
  {
    NSLog(&cfstr_UnableToFindMi.isa, v4, location[0]);
    objc_storeStrong(&selfCopy, 0);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKUIMicaPlayer)initWithPath:(id)path retinaScale:(double)scale
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  scaleCopy = scale;
  v11 = [AKUIMicaPlayer rootDictForPath:location[0]];
  if (v11)
  {
    v10 = [v11 objectForKeyedSubscript:@"rootLayer"];
    if (v10)
    {
      [v10 setGeometryFlipped:{+[AKUIMicaPlayer BOOLFromDictionary:key:defaultValue:](AKUIMicaPlayer, "BOOLFromDictionary:key:defaultValue:", v11, @"geometryFlipped", 0) ^ 1}];
      [v10 setMasksToBounds:1];
      [v10 setRepeatCount:0.0];
      v7 = selfCopy;
      v6 = location[0];
      v8 = [v11 objectForKeyedSubscript:@"publishedObjects"];
      selfCopy = 0;
      selfCopy = [v7 initWithPath:v6 retinaScale:v10 rootLayer:scaleCopy publishedObjects:?];
      objc_storeStrong(&selfCopy, selfCopy);
      MEMORY[0x277D82BD8](v8);
    }

    else
    {
      objc_storeStrong(&selfCopy, 0);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    objc_storeStrong(&selfCopy, 0);
  }

  if (!selfCopy)
  {
    NSLog(&cfstr_UnableToLoadMi.isa, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKUIMicaPlayer)initWithPath:(id)path retinaScale:(double)scale rootLayer:(id)layer publishedObjects:(id)objects
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  scaleCopy = scale;
  v16 = 0;
  objc_storeStrong(&v16, layer);
  v15 = 0;
  objc_storeStrong(&v15, objects);
  v6 = selfCopy;
  selfCopy = 0;
  v14.receiver = v6;
  v14.super_class = AKUIMicaPlayer;
  v13 = [(AKUIMicaPlayer *)&v14 init];
  selfCopy = v13;
  objc_storeStrong(&selfCopy, v13);
  if (v13)
  {
    [(AKUIMicaPlayer *)selfCopy setPath:location[0]];
    [(AKUIMicaPlayer *)selfCopy setRootLayer:v16];
    [(AKUIMicaPlayer *)selfCopy setPublishedObjects:v15];
    LODWORD(v7) = 1.0;
    [(AKUIMicaPlayer *)selfCopy setPreferredPlaybackSpeed:v7];
    [(AKUIMicaPlayer *)selfCopy setRetinaScale:scaleCopy];
    [v16 duration];
    [(AKUIMicaPlayer *)selfCopy setDocumentDuration:?];
    [(CALayer *)selfCopy->_rootLayer setDuration:INFINITY];
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(AKUIMicaPlayer *)self stopPlayTimer];
  v2.receiver = selfCopy;
  v2.super_class = AKUIMicaPlayer;
  [(AKUIMicaPlayer *)&v2 dealloc];
}

+ (id)rootDictForPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v23 = 0;
  v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:location[0]];
  if (v22)
  {
    v21 = 0;
    v19 = 0;
    v16 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v22 options:1 error:&v19];
    objc_storeStrong(&v21, v19);
    v20 = v16;
    if (v16)
    {
      v14 = MEMORY[0x277CBEB98];
      v13 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v18 = [v14 setWithObjects:{v13, v10, v11, v12, objc_opt_class(), 0}];
      v17 = v21;
      v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v18 fromData:v20 error:&v17];
      objc_storeStrong(&v21, v17);
      v3 = v23;
      v23 = v15;
      *&v4 = MEMORY[0x277D82BD8](v3).n128_u64[0];
      if (v21)
      {
        lastPathComponent = [location[0] lastPathComponent];
        NSLog(&cfstr_UnableToOpenMi.isa, lastPathComponent);
        *&v5 = MEMORY[0x277D82BD8](lastPathComponent).n128_u64[0];
        v9 = [v21 description];
        NSLog(&cfstr_Error.isa, v9);
        MEMORY[0x277D82BD8](v9);
      }

      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  v7 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);

  return v7;
}

+ (BOOL)BOOLFromDictionary:(id)dictionary key:(id)key defaultValue:(BOOL)value
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v10 = 0;
  objc_storeStrong(&v10, key);
  valueCopy = value;
  v8 = [location[0] objectForKeyedSubscript:v10];
  if (v8)
  {
    v12 = [v8 BOOLValue] & 1;
  }

  else
  {
    v12 = valueCopy;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v12 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v16 = a2;
  zoneCopy = zone;
  path = [(AKUIMicaPlayer *)self path];
  v13 = [(NSString *)path copy];
  rootLayer = [(AKUIMicaPlayer *)selfCopy rootLayer];
  mp_deepCopyLayer = [(CALayer *)rootLayer mp_deepCopyLayer];
  publishedObjects = [(AKUIMicaPlayer *)selfCopy publishedObjects];
  rootLayer2 = [(AKUIMicaPlayer *)selfCopy rootLayer];
  location = [AKUIMicaPlayer updatePublishedObjects:publishedObjects toReferenceLayersInTree:mp_deepCopyLayer ratherThanLayersInTree:?];
  MEMORY[0x277D82BD8](rootLayer2);
  MEMORY[0x277D82BD8](publishedObjects);
  v6 = [objc_opt_class() allocWithZone:zoneCopy];
  [(AKUIMicaPlayer *)selfCopy retinaScale];
  v14 = [v6 initWithPath:v13 retinaScale:mp_deepCopyLayer rootLayer:location publishedObjects:v3];
  MEMORY[0x277D82BD8](0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&mp_deepCopyLayer, 0);
  objc_storeStrong(&v13, 0);
  v5 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(&v14, 0);
  return v5;
}

+ (id)updatePublishedObjects:(id)objects toReferenceLayersInTree:(id)tree ratherThanLayersInTree:(id)inTree
{
  v33 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, objects);
  v30 = 0;
  objc_storeStrong(&v30, tree);
  v29 = 0;
  objc_storeStrong(&v29, inTree);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (location[0] && [location[0] count])
  {
    mp_allLayersInTree = [v29 mp_allLayersInTree];
    mp_allAnimationsInTree = [v29 mp_allAnimationsInTree];
    mp_allLayersInTree2 = [v30 mp_allLayersInTree];
    mp_allAnimationsInTree2 = [v30 mp_allAnimationsInTree];
    memset(__b, 0, sizeof(__b));
    allKeys = [location[0] allKeys];
    v12 = [allKeys countByEnumeratingWithState:__b objects:v32 count:16];
    if (v12)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v23 = *(__b[1] + 8 * v9);
        v21 = [location[0] objectForKeyedSubscript:v23];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = MEMORY[0x277D82BE0](v21);
          v19 = [mp_allLayersInTree indexOfObjectIdenticalTo:v20];
          v18 = [mp_allLayersInTree2 objectAtIndexedSubscript:v19];
          [dictionary setObject:v18 forKeyedSubscript:v23];
          objc_storeStrong(&v18, 0);
          objc_storeStrong(&v20, 0);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = MEMORY[0x277D82BE0](v21);
            v16 = [mp_allAnimationsInTree indexOfObjectIdenticalTo:v17];
            v15 = [mp_allAnimationsInTree2 objectAtIndexedSubscript:v16];
            [dictionary setObject:v15 forKeyedSubscript:v23];
            objc_storeStrong(&v15, 0);
            objc_storeStrong(&v17, 0);
          }
        }

        objc_storeStrong(&v21, 0);
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [allKeys countByEnumeratingWithState:__b objects:v32 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](allKeys);
    objc_storeStrong(&mp_allAnimationsInTree2, 0);
    objc_storeStrong(&mp_allLayersInTree2, 0);
    objc_storeStrong(&mp_allAnimationsInTree, 0);
    objc_storeStrong(&mp_allLayersInTree, 0);
  }

  v6 = MEMORY[0x277D82BE0](dictionary);
  objc_storeStrong(&dictionary, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addToLayer:(id)layer onTop:(BOOL)top gravity:(id)gravity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, layer);
  topCopy = top;
  v9 = 0;
  objc_storeStrong(&v9, gravity);
  superlayer = [(CALayer *)selfCopy->_rootLayer superlayer];
  *&v5 = MEMORY[0x277D82BD8](superlayer).n128_u64[0];
  if (!superlayer)
  {
    [(AKUIMicaPlayer *)selfCopy pause];
    [(AKUIMicaPlayer *)selfCopy setPlaybackTime:0.0];
    [(AKUIMicaPlayer *)selfCopy moveAndResizeWithinParentLayer:location[0] usingGravity:v9 animate:0];
    if (topCopy)
    {
      [location[0] addSublayer:selfCopy->_rootLayer];
    }

    else
    {
      [location[0] insertSublayer:selfCopy->_rootLayer atIndex:0];
    }
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)removeFromSuperlayer
{
  superlayer = [(CALayer *)self->_rootLayer superlayer];
  *&v2 = MEMORY[0x277D82BD8](superlayer).n128_u64[0];
  if (superlayer)
  {
    [(AKUIMicaPlayer *)self pause];
    [(CALayer *)self->_rootLayer removeFromSuperlayer];
  }
}

- (void)moveAndResizeWithinParentLayer:(id)layer usingGravity:(id)gravity animate:(BOOL)animate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, layer);
  v10 = 0;
  objc_storeStrong(&v10, gravity);
  rootLayer = selfCopy->_rootLayer;
  v8 = location[0];
  v9 = v10;
  [(AKUIMicaPlayer *)selfCopy retinaScale];
  [(CALayer *)rootLayer mp_moveAndResizeWithinParentLayer:v8 usingGravity:v9 geometryFlipped:1 retinaScale:animate animate:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)publishedLayerWithKey:(id)key required:(BOOL)required
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  requiredCopy = required;
  v7 = [(AKUIMicaPlayer *)selfCopy publishedObjectWithKey:location[0] required:required];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_storeStrong(&v7, 0);
    }
  }

  v5 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)publishedObjectWithKey:(id)key required:(BOOL)required
{
  requiredCopy = required;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v13 = requiredCopy;
  v12 = [(NSDictionary *)selfCopy->_publishedObjects objectForKeyedSubscript:location[0]];
  if (requiredCopy && !v12)
  {
    v9 = location[0];
    lastPathComponent = [(NSString *)selfCopy->_path lastPathComponent];
    NSLog(&cfstr_MissingPublish.isa, v9, lastPathComponent);
    MEMORY[0x277D82BD8](lastPathComponent);
  }

  v6 = &v12;
  v8 = MEMORY[0x277D82BE0](v12);
  obj = 0;
  objc_storeStrong(v6, 0);
  objc_storeStrong(location, obj);
  v4 = v8;

  return v4;
}

- (void)play
{
  if (![(AKUIMicaPlayer *)self isPlaying])
  {
    v4 = CACurrentMediaTime();
    [(AKUIMicaPlayer *)self playbackTime];
    [(CALayer *)self->_rootLayer setBeginTime:v4 - v2 / self->_preferredPlaybackSpeed];
    [(CALayer *)self->_rootLayer setTimeOffset:0.0];
    *&v3 = self->_preferredPlaybackSpeed;
    [(CALayer *)self->_rootLayer setSpeed:v3];
    [(AKUIMicaPlayer *)self startPlayTimerIfNeeded];
    [(AKUIMicaPlayer *)self notifyDelegateDidStartPlaying];
  }
}

- (void)pause
{
  if ([(AKUIMicaPlayer *)self isPlaying])
  {
    [(AKUIMicaPlayer *)self playbackTime];
    [(CALayer *)self->_rootLayer setTimeOffset:?];
    [(CALayer *)self->_rootLayer setBeginTime:0.0];
    [(CALayer *)self->_rootLayer setSpeed:0.0];
    [(AKUIMicaPlayer *)self stopPlayTimer];
    [(AKUIMicaPlayer *)self notifyDelegateDidStopPlaying];
  }
}

- (void)gotoEnd
{
  if (![(AKUIMicaPlayer *)self isPlaying])
  {
    [(CALayer *)self->_rootLayer setBeginTime:0.0];
    [(AKUIMicaPlayer *)self documentDuration];
    [(CALayer *)self->_rootLayer setTimeOffset:v2 - 0.001];
    [(CALayer *)self->_rootLayer setSpeed:0.0];
    [(AKUIMicaPlayer *)self startPlayTimerIfNeeded];
    [(AKUIMicaPlayer *)self notifyDelegateDidStartPlaying];
  }
}

- (void)setPreferredPlaybackSpeed:(float)speed
{
  speedCopy = speed;
  if (speed <= 0.0)
  {
    speedCopy = 1.0;
  }

  self->_preferredPlaybackSpeed = speedCopy;
  if ([(AKUIMicaPlayer *)self isPlaying])
  {
    *&v3 = speedCopy;
    [(CALayer *)self->_rootLayer setSpeed:v3];
  }
}

- (double)playbackTime
{
  if ([(AKUIMicaPlayer *)self isPlaying])
  {
    v6 = CACurrentMediaTime();
    [(CALayer *)self->_rootLayer beginTime];
    v7 = v6 - v2;
    [(CALayer *)self->_rootLayer speed];
    return v7 * v3;
  }

  else
  {
    [(CALayer *)self->_rootLayer timeOffset];
    return v4;
  }
}

- (void)setPlaybackTime:(double)time
{
  if ([(AKUIMicaPlayer *)self isPlaying])
  {
    [(CALayer *)self->_rootLayer setBeginTime:CACurrentMediaTime() - time];
    [(CALayer *)self->_rootLayer setTimeOffset:0.0];
  }

  else
  {
    [(CALayer *)self->_rootLayer setBeginTime:0.0];
    [(CALayer *)self->_rootLayer setTimeOffset:time];
  }

  [(AKUIMicaPlayer *)self notifyDelegateDidChangePlaybackTime];
}

- (BOOL)isPlaybackAtEnd
{
  [(AKUIMicaPlayer *)self playbackTime];
  v5 = v2;
  [(AKUIMicaPlayer *)self documentDuration];
  return v5 >= v3 - 0.001;
}

- (void)setDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  objc_storeWeak(&selfCopy->_delegate, location[0]);
  if ([(AKUIMicaPlayer *)selfCopy isTimerNeeded])
  {
    [(AKUIMicaPlayer *)selfCopy startPlayTimerIfNeeded];
  }

  else
  {
    [(AKUIMicaPlayer *)selfCopy stopPlayTimer];
  }

  objc_storeStrong(location, 0);
}

- (void)setRootLayer:(id)layer
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, layer);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v6, location[0]);
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Disabling inherits timing on root layer: %@", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [location[0] setInheritsTiming:0];
  objc_storeStrong(&selfCopy->_rootLayer, location[0]);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateDidStartPlaying
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = 0;
  v4 = 0;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v5 = 1;
    v4 = objc_opt_respondsToSelector();
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](WeakRetained);
  if (v4)
  {
    v2 = objc_loadWeakRetained(&self->_delegate);
    [v2 AKUIMicaPlayerDidStartPlaying:self];
    MEMORY[0x277D82BD8](v2);
  }
}

- (void)notifyDelegateDidStopPlaying
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = 0;
  v4 = 0;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v5 = 1;
    v4 = objc_opt_respondsToSelector();
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](WeakRetained);
  if (v4)
  {
    v2 = objc_loadWeakRetained(&self->_delegate);
    [v2 AKUIMicaPlayerDidStopPlaying:self];
    MEMORY[0x277D82BD8](v2);
  }
}

- (void)notifyDelegateDidChangePlaybackTime
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = 0;
  v4 = 0;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v5 = 1;
    v4 = objc_opt_respondsToSelector();
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](WeakRetained);
  if (v4)
  {
    v2 = objc_loadWeakRetained(&self->_delegate);
    [v2 AKUIMicaPlayerDidChangePlaybackTime:self];
    MEMORY[0x277D82BD8](v2);
  }
}

- (BOOL)isTimerNeeded
{
  v8 = 0;
  if ([(AKUIMicaPlayer *)self isPlaying])
  {
    [(AKUIMicaPlayer *)self documentDuration];
    if (v2 == INFINITY)
    {
      delegate = [(AKUIMicaPlayer *)self delegate];
      v6 = 0;
      v5 = 0;
      if (delegate)
      {
        delegate2 = [(AKUIMicaPlayer *)self delegate];
        v6 = 1;
        v5 = objc_opt_respondsToSelector();
      }

      if (v6)
      {
        MEMORY[0x277D82BD8](delegate2);
      }

      MEMORY[0x277D82BD8](delegate);
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      return 1;
    }
  }

  return v8;
}

- (void)startPlayTimerIfNeeded
{
  selfCopy = self;
  location[1] = a2;
  if (!self->_playTimer && [(AKUIMicaPlayer *)selfCopy isTimerNeeded])
  {
    objc_initWeak(location, selfCopy);
    v4 = MEMORY[0x277CBEBB8];
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __40__AKUIMicaPlayer_startPlayTimerIfNeeded__block_invoke;
    v9 = &unk_2784A6AB0;
    objc_copyWeak(&v10, location);
    v2 = [v4 scheduledTimerWithTimeInterval:1 repeats:&v5 block:0.0333333333];
    playTimer = selfCopy->_playTimer;
    selfCopy->_playTimer = v2;
    MEMORY[0x277D82BD8](playTimer);
    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }
}

void __40__AKUIMicaPlayer_startPlayTimerIfNeeded__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  [v3[0] runPlayTimer:location[0]];
  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

- (void)stopPlayTimer
{
  if (self->_playTimer)
  {
    [(NSTimer *)self->_playTimer invalidate];
    objc_storeStrong(&self->_playTimer, 0);
  }
}

- (void)runPlayTimer:(id)timer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, timer);
  if ([(AKUIMicaPlayer *)selfCopy isPlaybackAtEnd])
  {
    if (selfCopy->_loopDuringPlayback)
    {
      [(AKUIMicaPlayer *)selfCopy setPlaybackTime:0.0];
    }

    else
    {
      [(AKUIMicaPlayer *)selfCopy pause];
    }
  }

  [(AKUIMicaPlayer *)selfCopy notifyDelegateDidChangePlaybackTime];
  objc_storeStrong(location, 0);
}

- (AKUIMicaPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end