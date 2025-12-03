@interface MicaPlayer
+ (BOOL)BOOLFromDictionary:(id)dictionary key:(id)key defaultValue:(BOOL)value;
+ (id)rootDictForPath:(id)path;
+ (id)updatePublishedObjects:(id)objects toReferenceLayersInTree:(id)tree ratherThanLayersInTree:(id)inTree;
- (BOOL)isPlaybackAtEnd;
- (BOOL)isTimerNeeded;
- (MicaPlayer)initWithData:(id)data url:(id)url retinaScale:(double)scale;
- (MicaPlayer)initWithFileName:(id)name retinaScale:(double)scale;
- (MicaPlayer)initWithPath:(id)path retinaScale:(double)scale;
- (MicaPlayer)initWithPath:(id)path retinaScale:(double)scale rootLayer:(id)layer publishedObjects:(id)objects;
- (MicaPlayerDelegate)delegate;
- (double)playbackTime;
- (id)copyWithZone:(_NSZone *)zone;
- (id)publishedLayerWithKey:(id)key required:(BOOL)required;
- (id)publishedObjectWithKey:(id)key required:(BOOL)required;
- (void)addToLayer:(id)layer onTop:(BOOL)top gravity:(id)gravity;
- (void)dealloc;
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
- (void)startPlayTimerIfNeeded;
- (void)stopPlayTimer;
@end

@implementation MicaPlayer

- (MicaPlayer)initWithData:(id)data url:(id)url retinaScale:(double)scale
{
  urlCopy = url;
  v9 = MEMORY[0x1E695DFD8];
  dataCopy = data;
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v9 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
  v26 = 0;
  v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v15 fromData:dataCopy error:&v26];

  v17 = v26;
  if (v17)
  {
    absoluteString = [urlCopy absoluteString];
    NSLog(&cfstr_UnableToOpenMi.isa, absoluteString);

    v19 = [v17 description];
    NSLog(&cfstr_Error_0.isa, v19);
  }

  if (!v16 || ([v16 objectForKeyedSubscript:@"rootLayer"], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_8:
    NSLog(&cfstr_UnableToLoadMi.isa);
    v24 = 0;
    goto LABEL_9;
  }

  v21 = v20;
  [v20 setGeometryFlipped:{+[MicaPlayer BOOLFromDictionary:key:defaultValue:](MicaPlayer, "BOOLFromDictionary:key:defaultValue:", v16, @"geometryFlipped", 0) ^ 1}];
  [v21 setMasksToBounds:1];
  [v21 setRepeatCount:0.0];
  absoluteString2 = [urlCopy absoluteString];
  v23 = [v16 objectForKeyedSubscript:@"publishedObjects"];
  v24 = [(MicaPlayer *)self initWithPath:absoluteString2 retinaScale:v21 rootLayer:v23 publishedObjects:scale];

  if (!v24)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v24;
}

- (MicaPlayer)initWithFileName:(id)name retinaScale:(double)scale
{
  nameCopy = name;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [mainBundle URLForResource:nameCopy withExtension:@"caar"];

  if (v8)
  {
    path = [v8 path];
    v10 = [(MicaPlayer *)self initWithPath:path retinaScale:scale];
    self = path;
  }

  else
  {
    NSLog(&cfstr_UnableToFindMi.isa, nameCopy);
    v10 = 0;
  }

  return v10;
}

- (MicaPlayer)initWithPath:(id)path retinaScale:(double)scale
{
  pathCopy = path;
  v7 = [MicaPlayer rootDictForPath:pathCopy];
  v8 = v7;
  if (!v7 || ([v7 objectForKeyedSubscript:@"rootLayer"], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_6:
    NSLog(&cfstr_UnableToLoadMi_0.isa, pathCopy);
    v12 = 0;
    goto LABEL_7;
  }

  v10 = v9;
  [v9 setGeometryFlipped:{+[MicaPlayer BOOLFromDictionary:key:defaultValue:](MicaPlayer, "BOOLFromDictionary:key:defaultValue:", v8, @"geometryFlipped", 0) ^ 1}];
  [v10 setMasksToBounds:1];
  [v10 setRepeatCount:0.0];
  v11 = [v8 objectForKeyedSubscript:@"publishedObjects"];
  v12 = [(MicaPlayer *)self initWithPath:pathCopy retinaScale:v10 rootLayer:v11 publishedObjects:scale];

  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v12;
}

- (MicaPlayer)initWithPath:(id)path retinaScale:(double)scale rootLayer:(id)layer publishedObjects:(id)objects
{
  pathCopy = path;
  layerCopy = layer;
  objectsCopy = objects;
  v17.receiver = self;
  v17.super_class = MicaPlayer;
  v13 = [(MicaPlayer *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(MicaPlayer *)v13 setPath:pathCopy];
    [(MicaPlayer *)v14 setRootLayer:layerCopy];
    [(MicaPlayer *)v14 setPublishedObjects:objectsCopy];
    LODWORD(v15) = 1.0;
    [(MicaPlayer *)v14 setPreferredPlaybackSpeed:v15];
    [(MicaPlayer *)v14 setRetinaScale:scale];
    [layerCopy duration];
    [(MicaPlayer *)v14 setDocumentDuration:?];
    [(CALayer *)v14->_rootLayer setDuration:INFINITY];
  }

  return v14;
}

- (void)dealloc
{
  [(MicaPlayer *)self stopPlayTimer];
  v3.receiver = self;
  v3.super_class = MicaPlayer;
  [(MicaPlayer *)&v3 dealloc];
}

+ (id)rootDictForPath:(id)path
{
  pathCopy = path;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
  if (v4)
  {
    v21 = 0;
    v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4 options:1 error:&v21];
    v6 = v21;
    if (v6)
    {
      lastPathComponent = [pathCopy lastPathComponent];
      NSLog(&cfstr_UnableToOpenMi.isa, lastPathComponent);

      v8 = [v6 description];
      NSLog(&cfstr_Error_0.isa, v8);
    }

    if (v5)
    {
      v9 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = [v9 setWithObjects:{v10, v11, v12, v13, objc_opt_class(), 0}];
      v20 = v6;
      v15 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v14 fromData:v5 error:&v20];
      v16 = v20;

      if (v16)
      {
        lastPathComponent2 = [pathCopy lastPathComponent];
        NSLog(&cfstr_UnableToOpenMi.isa, lastPathComponent2);

        v18 = [v16 description];
        NSLog(&cfstr_Error_0.isa, v18);
      }
    }

    else
    {
      v15 = 0;
      v16 = v6;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (BOOL)BOOLFromDictionary:(id)dictionary key:(id)key defaultValue:(BOOL)value
{
  v6 = [dictionary objectForKeyedSubscript:key];
  v7 = v6;
  if (v6)
  {
    value = [v6 BOOLValue];
  }

  return value;
}

- (id)copyWithZone:(_NSZone *)zone
{
  path = [(MicaPlayer *)self path];
  v6 = [path copy];

  rootLayer = [(MicaPlayer *)self rootLayer];
  mp_deepCopyLayer = [rootLayer mp_deepCopyLayer];

  publishedObjects = [(MicaPlayer *)self publishedObjects];
  rootLayer2 = [(MicaPlayer *)self rootLayer];
  v11 = [MicaPlayer updatePublishedObjects:publishedObjects toReferenceLayersInTree:mp_deepCopyLayer ratherThanLayersInTree:rootLayer2];

  v12 = [objc_opt_class() allocWithZone:zone];
  [(MicaPlayer *)self retinaScale];
  v13 = [v12 initWithPath:v6 retinaScale:mp_deepCopyLayer rootLayer:v11 publishedObjects:?];

  return v13;
}

+ (id)updatePublishedObjects:(id)objects toReferenceLayersInTree:(id)tree ratherThanLayersInTree:(id)inTree
{
  v34 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  treeCopy = tree;
  inTreeCopy = inTree;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (objectsCopy && [objectsCopy count])
  {
    mp_allLayersInTree = [inTreeCopy mp_allLayersInTree];
    v24 = inTreeCopy;
    mp_allAnimationsInTree = [inTreeCopy mp_allAnimationsInTree];
    mp_allLayersInTree2 = [treeCopy mp_allLayersInTree];
    mp_allAnimationsInTree2 = [treeCopy mp_allAnimationsInTree];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [objectsCopy allKeys];
    v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = [objectsCopy objectForKeyedSubscript:v16];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v19 = mp_allLayersInTree;
          v20 = mp_allLayersInTree2;
          if (isKindOfClass & 1) != 0 || (objc_opt_class(), v21 = objc_opt_isKindOfClass(), v20 = mp_allAnimationsInTree2, v19 = mp_allAnimationsInTree, (v21))
          {
            v22 = [v20 objectAtIndexedSubscript:{objc_msgSend(v19, "indexOfObjectIdenticalTo:", v17)}];
            [dictionary setObject:v22 forKeyedSubscript:v16];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    inTreeCopy = v24;
  }

  return dictionary;
}

- (void)addToLayer:(id)layer onTop:(BOOL)top gravity:(id)gravity
{
  topCopy = top;
  layerCopy = layer;
  gravityCopy = gravity;
  superlayer = [(CALayer *)self->_rootLayer superlayer];

  if (!superlayer)
  {
    [(MicaPlayer *)self pause];
    [(MicaPlayer *)self setPlaybackTime:0.0];
    [(MicaPlayer *)self moveAndResizeWithinParentLayer:layerCopy usingGravity:gravityCopy animate:0];
    rootLayer = self->_rootLayer;
    if (topCopy)
    {
      [layerCopy addSublayer:rootLayer];
    }

    else
    {
      [layerCopy insertSublayer:rootLayer atIndex:0];
    }
  }
}

- (void)removeFromSuperlayer
{
  superlayer = [(CALayer *)self->_rootLayer superlayer];

  if (superlayer)
  {
    [(MicaPlayer *)self pause];
    rootLayer = self->_rootLayer;

    [(CALayer *)rootLayer removeFromSuperlayer];
  }
}

- (void)moveAndResizeWithinParentLayer:(id)layer usingGravity:(id)gravity animate:(BOOL)animate
{
  animateCopy = animate;
  rootLayer = self->_rootLayer;
  gravityCopy = gravity;
  layerCopy = layer;
  [(MicaPlayer *)self retinaScale];
  [(CALayer *)rootLayer mp_moveAndResizeWithinParentLayer:layerCopy usingGravity:gravityCopy geometryFlipped:1 retinaScale:animateCopy animate:?];
}

- (id)publishedLayerWithKey:(id)key required:(BOOL)required
{
  v4 = [(MicaPlayer *)self publishedObjectWithKey:key required:required];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v4 = 0;
    }
  }

  return v4;
}

- (id)publishedObjectWithKey:(id)key required:(BOOL)required
{
  requiredCopy = required;
  keyCopy = key;
  v7 = [(NSDictionary *)self->_publishedObjects objectForKeyedSubscript:keyCopy];
  v8 = v7;
  if (requiredCopy && !v7)
  {
    lastPathComponent = [(NSString *)self->_path lastPathComponent];
    NSLog(&cfstr_MissingPublish.isa, keyCopy, lastPathComponent);
  }

  return v8;
}

- (void)play
{
  if (![(MicaPlayer *)self isPlaying])
  {
    v3 = CACurrentMediaTime();
    [(MicaPlayer *)self playbackTime];
    [(CALayer *)self->_rootLayer setBeginTime:v3 - v4 / self->_preferredPlaybackSpeed];
    [(CALayer *)self->_rootLayer setTimeOffset:0.0];
    *&v5 = self->_preferredPlaybackSpeed;
    [(CALayer *)self->_rootLayer setSpeed:v5];
    [(MicaPlayer *)self startPlayTimerIfNeeded];

    [(MicaPlayer *)self notifyDelegateDidStartPlaying];
  }
}

- (void)pause
{
  if ([(MicaPlayer *)self isPlaying])
  {
    [(MicaPlayer *)self playbackTime];
    [(CALayer *)self->_rootLayer setTimeOffset:?];
    [(CALayer *)self->_rootLayer setBeginTime:0.0];
    [(CALayer *)self->_rootLayer setSpeed:0.0];
    [(MicaPlayer *)self stopPlayTimer];

    [(MicaPlayer *)self notifyDelegateDidStopPlaying];
  }
}

- (void)setPreferredPlaybackSpeed:(float)speed
{
  if (speed <= 0.0)
  {
    speedCopy = 1.0;
  }

  else
  {
    speedCopy = speed;
  }

  self->_preferredPlaybackSpeed = speedCopy;
  if ([(MicaPlayer *)self isPlaying])
  {
    rootLayer = self->_rootLayer;
    *&v5 = speedCopy;

    [(CALayer *)rootLayer setSpeed:v5];
  }
}

- (double)playbackTime
{
  if ([(MicaPlayer *)self isPlaying])
  {
    v3 = CACurrentMediaTime();
    [(CALayer *)self->_rootLayer beginTime];
    v5 = v3 - v4;
    [(CALayer *)self->_rootLayer speed];
    return v5 * v6;
  }

  else
  {
    rootLayer = self->_rootLayer;

    [(CALayer *)rootLayer timeOffset];
  }

  return result;
}

- (void)setPlaybackTime:(double)time
{
  isPlaying = [(MicaPlayer *)self isPlaying];
  v6 = 0.0;
  if (isPlaying)
  {
    v6 = CACurrentMediaTime() - time;
    time = 0.0;
  }

  [(CALayer *)self->_rootLayer setBeginTime:v6];
  [(CALayer *)self->_rootLayer setTimeOffset:time];

  [(MicaPlayer *)self notifyDelegateDidChangePlaybackTime];
}

- (BOOL)isPlaybackAtEnd
{
  [(MicaPlayer *)self playbackTime];
  v4 = v3;
  [(MicaPlayer *)self documentDuration];
  return v4 >= v5 + -0.001;
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  if ([(MicaPlayer *)self isTimerNeeded])
  {

    [(MicaPlayer *)self startPlayTimerIfNeeded];
  }

  else
  {

    [(MicaPlayer *)self stopPlayTimer];
  }
}

- (void)notifyDelegateDidStartPlaying
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 micaPlayerDidStartPlaying:self];
    }
  }
}

- (void)notifyDelegateDidStopPlaying
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 micaPlayerDidStopPlaying:self];
    }
  }
}

- (void)notifyDelegateDidChangePlaybackTime
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 micaPlayerDidChangePlaybackTime:self];
    }
  }
}

- (BOOL)isTimerNeeded
{
  if ([(MicaPlayer *)self isPlaying])
  {
    [(MicaPlayer *)self documentDuration];
    if (v3 == INFINITY)
    {
      delegate = [(MicaPlayer *)self delegate];
      if (delegate)
      {
        delegate2 = [(MicaPlayer *)self delegate];
        v4 = objc_opt_respondsToSelector();
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)startPlayTimerIfNeeded
{
  if (!self->_playTimer)
  {
    if ([(MicaPlayer *)self isTimerNeeded])
    {
      objc_initWeak(&location, self);
      v3 = MEMORY[0x1E695DFF0];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __36__MicaPlayer_startPlayTimerIfNeeded__block_invoke;
      v6[3] = &unk_1E83669F8;
      objc_copyWeak(&v7, &location);
      v4 = [v3 scheduledTimerWithTimeInterval:1 repeats:v6 block:0.0333333333];
      playTimer = self->_playTimer;
      self->_playTimer = v4;

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void __36__MicaPlayer_startPlayTimerIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained runPlayTimer:v3];
}

- (void)stopPlayTimer
{
  playTimer = self->_playTimer;
  if (playTimer)
  {
    [(NSTimer *)playTimer invalidate];
    v4 = self->_playTimer;
    self->_playTimer = 0;
  }
}

- (void)runPlayTimer:(id)timer
{
  if ([(MicaPlayer *)self isPlaybackAtEnd])
  {
    if (self->_loopDuringPlayback)
    {
      [(MicaPlayer *)self setPlaybackTime:0.0];
    }

    else
    {
      [(MicaPlayer *)self pause];
    }
  }

  [(MicaPlayer *)self notifyDelegateDidChangePlaybackTime];
}

- (MicaPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end