@interface MicaPlayer
+ (BOOL)BOOLFromDictionary:(id)dictionary key:(id)key defaultValue:(BOOL)value;
+ (id)rootDictForPath:(id)path;
+ (id)updatePublishedObjects:(id)objects toReferenceLayersInTree:(id)tree ratherThanLayersInTree:(id)inTree;
- (BOOL)isPlaybackAtEnd;
- (BOOL)isTimerNeeded;
- (MicaPlayer)initWithFileName:(id)name retinaScale:(double)scale;
- (MicaPlayer)initWithPath:(id)path retinaScale:(double)scale;
- (MicaPlayer)initWithPath:(id)path retinaScale:(double)scale rootLayer:(id)layer publishedObjects:(id)objects;
- (MicaPlayerDelegate)delegate;
- (double)playbackTime;
- (id)copyWithZone:(_NSZone *)zone;
- (id)publishedObjectWithKey:(id)key required:(BOOL)required;
- (void)addToLayer:(id)layer onTop:(BOOL)top gravity:(id)gravity;
- (void)dealloc;
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

- (MicaPlayer)initWithFileName:(id)name retinaScale:(double)scale
{
  nameCopy = name;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:nameCopy withExtension:@"caar"];

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
    NSLog(&cfstr_UnableToLoadMi.isa, pathCopy);
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
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
  if (v4)
  {
    v20 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:1 error:&v20];
    v6 = v20;
    v7 = v6;
    if (v5)
    {
      v8 = MEMORY[0x277CBEB98];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
      v19 = v7;
      v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v13 fromData:v5 error:&v19];
      v15 = v19;

      if (v15)
      {
        lastPathComponent = [pathCopy lastPathComponent];
        NSLog(&cfstr_UnableToOpenMi.isa, lastPathComponent);

        v17 = [v15 description];
        NSLog(&cfstr_Error.isa, v17);
      }
    }

    else
    {
      v14 = 0;
      v15 = v6;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
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
  v35 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  treeCopy = tree;
  inTreeCopy = inTree;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (objectsCopy && [objectsCopy count])
  {
    mp_allLayersInTree = [inTreeCopy mp_allLayersInTree];
    v25 = inTreeCopy;
    mp_allAnimationsInTree = [inTreeCopy mp_allAnimationsInTree];
    mp_allLayersInTree2 = [treeCopy mp_allLayersInTree];
    mp_allAnimationsInTree2 = [treeCopy mp_allAnimationsInTree];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [objectsCopy allKeys];
    v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
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

        v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    inTreeCopy = v25;
  }

  v23 = *MEMORY[0x277D85DE8];

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
  if (![(MicaPlayer *)self isNotifyingDelegate])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v5 = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        [(MicaPlayer *)self setIsNotifyingDelegate:1];
        v7 = objc_loadWeakRetained(&self->_delegate);
        [v7 micaPlayerDidChangePlaybackTime:self];

        [(MicaPlayer *)self setIsNotifyingDelegate:0];
      }
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
      v3 = MEMORY[0x277CBEBB8];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __36__MicaPlayer_startPlayTimerIfNeeded__block_invoke;
      v6[3] = &unk_278CB09A8;
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