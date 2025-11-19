@interface AKUIMicaPlayer
+ (BOOL)BOOLFromDictionary:(id)a3 key:(id)a4 defaultValue:(BOOL)a5;
+ (id)rootDictForPath:(id)a3;
+ (id)updatePublishedObjects:(id)a3 toReferenceLayersInTree:(id)a4 ratherThanLayersInTree:(id)a5;
- (AKUIMicaPlayer)initWithFileName:(id)a3 retinaScale:(double)a4;
- (AKUIMicaPlayer)initWithPath:(id)a3 retinaScale:(double)a4;
- (AKUIMicaPlayer)initWithPath:(id)a3 retinaScale:(double)a4 rootLayer:(id)a5 publishedObjects:(id)a6;
- (AKUIMicaPlayerDelegate)delegate;
- (BOOL)isPlaybackAtEnd;
- (BOOL)isTimerNeeded;
- (double)playbackTime;
- (id)copyWithZone:(_NSZone *)a3;
- (id)publishedLayerWithKey:(id)a3 required:(BOOL)a4;
- (id)publishedObjectWithKey:(id)a3 required:(BOOL)a4;
- (void)addToLayer:(id)a3 onTop:(BOOL)a4 gravity:(id)a5;
- (void)dealloc;
- (void)gotoEnd;
- (void)moveAndResizeWithinParentLayer:(id)a3 usingGravity:(id)a4 animate:(BOOL)a5;
- (void)notifyDelegateDidChangePlaybackTime;
- (void)notifyDelegateDidStartPlaying;
- (void)notifyDelegateDidStopPlaying;
- (void)pause;
- (void)play;
- (void)removeFromSuperlayer;
- (void)runPlayTimer:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setPlaybackTime:(double)a3;
- (void)setPreferredPlaybackSpeed:(float)a3;
- (void)setRootLayer:(id)a3;
- (void)startPlayTimerIfNeeded;
- (void)stopPlayTimer;
@end

@implementation AKUIMicaPlayer

- (AKUIMicaPlayer)initWithFileName:(id)a3 retinaScale:(double)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  v13 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/AuthKitUI.framework"];
  v10 = MEMORY[0x277CBEBC0];
  v11 = [v13 pathForResource:location[0] ofType:@"caar"];
  v12 = [v10 fileURLWithPath:?];
  *&v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    v7 = v16;
    v8 = [v12 path];
    v16 = 0;
    v16 = [v7 initWithPath:v14 retinaScale:?];
    objc_storeStrong(&v16, v16);
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    NSLog(&cfstr_UnableToFindMi.isa, v4, location[0]);
    objc_storeStrong(&v16, 0);
  }

  v6 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v6;
}

- (AKUIMicaPlayer)initWithPath:(id)a3 retinaScale:(double)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  v11 = [AKUIMicaPlayer rootDictForPath:location[0]];
  if (v11)
  {
    v10 = [v11 objectForKeyedSubscript:@"rootLayer"];
    if (v10)
    {
      [v10 setGeometryFlipped:{+[AKUIMicaPlayer BOOLFromDictionary:key:defaultValue:](AKUIMicaPlayer, "BOOLFromDictionary:key:defaultValue:", v11, @"geometryFlipped", 0) ^ 1}];
      [v10 setMasksToBounds:1];
      [v10 setRepeatCount:0.0];
      v7 = v14;
      v6 = location[0];
      v8 = [v11 objectForKeyedSubscript:@"publishedObjects"];
      v14 = 0;
      v14 = [v7 initWithPath:v6 retinaScale:v10 rootLayer:v12 publishedObjects:?];
      objc_storeStrong(&v14, v14);
      MEMORY[0x277D82BD8](v8);
    }

    else
    {
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    objc_storeStrong(&v14, 0);
  }

  if (!v14)
  {
    NSLog(&cfstr_UnableToLoadMi.isa, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v5;
}

- (AKUIMicaPlayer)initWithPath:(id)a3 retinaScale:(double)a4 rootLayer:(id)a5 publishedObjects:(id)a6
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v15 = 0;
  objc_storeStrong(&v15, a6);
  v6 = v19;
  v19 = 0;
  v14.receiver = v6;
  v14.super_class = AKUIMicaPlayer;
  v13 = [(AKUIMicaPlayer *)&v14 init];
  v19 = v13;
  objc_storeStrong(&v19, v13);
  if (v13)
  {
    [(AKUIMicaPlayer *)v19 setPath:location[0]];
    [(AKUIMicaPlayer *)v19 setRootLayer:v16];
    [(AKUIMicaPlayer *)v19 setPublishedObjects:v15];
    LODWORD(v7) = 1.0;
    [(AKUIMicaPlayer *)v19 setPreferredPlaybackSpeed:v7];
    [(AKUIMicaPlayer *)v19 setRetinaScale:v17];
    [v16 duration];
    [(AKUIMicaPlayer *)v19 setDocumentDuration:?];
    [(CALayer *)v19->_rootLayer setDuration:INFINITY];
  }

  v9 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v9;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(AKUIMicaPlayer *)self stopPlayTimer];
  v2.receiver = v4;
  v2.super_class = AKUIMicaPlayer;
  [(AKUIMicaPlayer *)&v2 dealloc];
}

+ (id)rootDictForPath:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
        v8 = [location[0] lastPathComponent];
        NSLog(&cfstr_UnableToOpenMi.isa, v8);
        *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
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

+ (BOOL)BOOLFromDictionary:(id)a3 key:(id)a4 defaultValue:(BOOL)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = a5;
  v8 = [location[0] objectForKeyedSubscript:v10];
  if (v8)
  {
    v12 = [v8 BOOLValue] & 1;
  }

  else
  {
    v12 = v9;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v12 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v10 = [(AKUIMicaPlayer *)self path];
  v13 = [(NSString *)v10 copy];
  v9 = [(AKUIMicaPlayer *)v17 rootLayer];
  v12 = [(CALayer *)v9 mp_deepCopyLayer];
  v8 = [(AKUIMicaPlayer *)v17 publishedObjects];
  v7 = [(AKUIMicaPlayer *)v17 rootLayer];
  location = [AKUIMicaPlayer updatePublishedObjects:v8 toReferenceLayersInTree:v12 ratherThanLayersInTree:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v6 = [objc_opt_class() allocWithZone:v15];
  [(AKUIMicaPlayer *)v17 retinaScale];
  v14 = [v6 initWithPath:v13 retinaScale:v12 rootLayer:location publishedObjects:v3];
  MEMORY[0x277D82BD8](0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  v5 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(&v14, 0);
  return v5;
}

+ (id)updatePublishedObjects:(id)a3 toReferenceLayersInTree:(id)a4 ratherThanLayersInTree:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = 0;
  objc_storeStrong(&v29, a5);
  v28 = [MEMORY[0x277CBEB38] dictionary];
  if (location[0] && [location[0] count])
  {
    v27 = [v29 mp_allLayersInTree];
    v26 = [v29 mp_allAnimationsInTree];
    v25 = [v30 mp_allLayersInTree];
    v24 = [v30 mp_allAnimationsInTree];
    memset(__b, 0, sizeof(__b));
    v11 = [location[0] allKeys];
    v12 = [v11 countByEnumeratingWithState:__b objects:v32 count:16];
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
          objc_enumerationMutation(v11);
        }

        v23 = *(__b[1] + 8 * v9);
        v21 = [location[0] objectForKeyedSubscript:v23];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = MEMORY[0x277D82BE0](v21);
          v19 = [v27 indexOfObjectIdenticalTo:v20];
          v18 = [v25 objectAtIndexedSubscript:v19];
          [v28 setObject:v18 forKeyedSubscript:v23];
          objc_storeStrong(&v18, 0);
          objc_storeStrong(&v20, 0);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = MEMORY[0x277D82BE0](v21);
            v16 = [v26 indexOfObjectIdenticalTo:v17];
            v15 = [v24 objectAtIndexedSubscript:v16];
            [v28 setObject:v15 forKeyedSubscript:v23];
            objc_storeStrong(&v15, 0);
            objc_storeStrong(&v17, 0);
          }
        }

        objc_storeStrong(&v21, 0);
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [v11 countByEnumeratingWithState:__b objects:v32 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  v6 = MEMORY[0x277D82BE0](v28);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addToLayer:(id)a3 onTop:(BOOL)a4 gravity:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v8 = [(CALayer *)v12->_rootLayer superlayer];
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (!v8)
  {
    [(AKUIMicaPlayer *)v12 pause];
    [(AKUIMicaPlayer *)v12 setPlaybackTime:0.0];
    [(AKUIMicaPlayer *)v12 moveAndResizeWithinParentLayer:location[0] usingGravity:v9 animate:0];
    if (v10)
    {
      [location[0] addSublayer:v12->_rootLayer];
    }

    else
    {
      [location[0] insertSublayer:v12->_rootLayer atIndex:0];
    }
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)removeFromSuperlayer
{
  v3 = [(CALayer *)self->_rootLayer superlayer];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  if (v3)
  {
    [(AKUIMicaPlayer *)self pause];
    [(CALayer *)self->_rootLayer removeFromSuperlayer];
  }
}

- (void)moveAndResizeWithinParentLayer:(id)a3 usingGravity:(id)a4 animate:(BOOL)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  rootLayer = v12->_rootLayer;
  v8 = location[0];
  v9 = v10;
  [(AKUIMicaPlayer *)v12 retinaScale];
  [(CALayer *)rootLayer mp_moveAndResizeWithinParentLayer:v8 usingGravity:v9 geometryFlipped:1 retinaScale:a5 animate:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)publishedLayerWithKey:(id)a3 required:(BOOL)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v7 = [(AKUIMicaPlayer *)v10 publishedObjectWithKey:location[0] required:a4];
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

- (id)publishedObjectWithKey:(id)a3 required:(BOOL)a4
{
  v11 = a4;
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = v11;
  v12 = [(NSDictionary *)v15->_publishedObjects objectForKeyedSubscript:location[0]];
  if (v11 && !v12)
  {
    v9 = location[0];
    v10 = [(NSString *)v15->_path lastPathComponent];
    NSLog(&cfstr_MissingPublish.isa, v9, v10);
    MEMORY[0x277D82BD8](v10);
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

- (void)setPreferredPlaybackSpeed:(float)a3
{
  v4 = a3;
  if (a3 <= 0.0)
  {
    v4 = 1.0;
  }

  self->_preferredPlaybackSpeed = v4;
  if ([(AKUIMicaPlayer *)self isPlaying])
  {
    *&v3 = v4;
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

- (void)setPlaybackTime:(double)a3
{
  if ([(AKUIMicaPlayer *)self isPlaying])
  {
    [(CALayer *)self->_rootLayer setBeginTime:CACurrentMediaTime() - a3];
    [(CALayer *)self->_rootLayer setTimeOffset:0.0];
  }

  else
  {
    [(CALayer *)self->_rootLayer setBeginTime:0.0];
    [(CALayer *)self->_rootLayer setTimeOffset:a3];
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

- (void)setDelegate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v4->_delegate, location[0]);
  if ([(AKUIMicaPlayer *)v4 isTimerNeeded])
  {
    [(AKUIMicaPlayer *)v4 startPlayTimerIfNeeded];
  }

  else
  {
    [(AKUIMicaPlayer *)v4 stopPlayTimer];
  }

  objc_storeStrong(location, 0);
}

- (void)setRootLayer:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v6, location[0]);
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Disabling inherits timing on root layer: %@", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [location[0] setInheritsTiming:0];
  objc_storeStrong(&v5->_rootLayer, location[0]);
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
      v4 = [(AKUIMicaPlayer *)self delegate];
      v6 = 0;
      v5 = 0;
      if (v4)
      {
        v7 = [(AKUIMicaPlayer *)self delegate];
        v6 = 1;
        v5 = objc_opt_respondsToSelector();
      }

      if (v6)
      {
        MEMORY[0x277D82BD8](v7);
      }

      MEMORY[0x277D82BD8](v4);
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
  v12 = self;
  location[1] = a2;
  if (!self->_playTimer && [(AKUIMicaPlayer *)v12 isTimerNeeded])
  {
    objc_initWeak(location, v12);
    v4 = MEMORY[0x277CBEBB8];
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __40__AKUIMicaPlayer_startPlayTimerIfNeeded__block_invoke;
    v9 = &unk_2784A6AB0;
    objc_copyWeak(&v10, location);
    v2 = [v4 scheduledTimerWithTimeInterval:1 repeats:&v5 block:0.0333333333];
    playTimer = v12->_playTimer;
    v12->_playTimer = v2;
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

- (void)runPlayTimer:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKUIMicaPlayer *)v4 isPlaybackAtEnd])
  {
    if (v4->_loopDuringPlayback)
    {
      [(AKUIMicaPlayer *)v4 setPlaybackTime:0.0];
    }

    else
    {
      [(AKUIMicaPlayer *)v4 pause];
    }
  }

  [(AKUIMicaPlayer *)v4 notifyDelegateDidChangePlaybackTime];
  objc_storeStrong(location, 0);
}

- (AKUIMicaPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end