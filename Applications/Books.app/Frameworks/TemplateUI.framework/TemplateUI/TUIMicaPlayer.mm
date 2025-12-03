@interface TUIMicaPlayer
+ (BOOL)BOOLFromDictionary:(id)dictionary key:(id)key defaultValue:(BOOL)value;
+ (id)rootDictForPath:(id)path fileProvider:(id)provider;
+ (id)updatePublishedObjects:(id)objects toReferenceLayersInTree:(id)tree ratherThanLayersInTree:(id)inTree;
- (BOOL)isPlaybackAtEnd;
- (MicaPlayerDelegate)delegate;
- (TUIMicaPlayer)initWithFileName:(id)name retinaScale:(double)scale;
- (TUIMicaPlayer)initWithPath:(id)path retinaScale:(double)scale;
- (TUIMicaPlayer)initWithPath:(id)path retinaScale:(double)scale fileProvider:(id)provider;
- (TUIMicaPlayer)initWithPath:(id)path retinaScale:(double)scale rootLayer:(id)layer publishedObjects:(id)objects;
- (double)playbackTime;
- (id)_initWithPath:(id)path retinaScale:(double)scale rootDict:(id)dict;
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
- (void)setPlaybackTime:(double)time;
- (void)setPreferredPlaybackSpeed:(float)speed;
- (void)startPlayTimer;
- (void)stopPlayTimer;
@end

@implementation TUIMicaPlayer

- (TUIMicaPlayer)initWithFileName:(id)name retinaScale:(double)scale
{
  nameCopy = name;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 URLForResource:nameCopy withExtension:@"caar"];

  if (v8)
  {
    path = [v8 path];
    v10 = [(TUIMicaPlayer *)self initWithPath:path retinaScale:scale];
    self = path;
  }

  else
  {
    NSLog(@"Unable to find Mica document: %@", nameCopy);
    v10 = 0;
  }

  return v10;
}

- (TUIMicaPlayer)initWithPath:(id)path retinaScale:(double)scale
{
  pathCopy = path;
  v7 = [TUIMicaPlayer rootDictForPath:pathCopy fileProvider:0];
  v8 = [(TUIMicaPlayer *)self _initWithPath:pathCopy retinaScale:v7 rootDict:scale];

  return v8;
}

- (TUIMicaPlayer)initWithPath:(id)path retinaScale:(double)scale rootLayer:(id)layer publishedObjects:(id)objects
{
  pathCopy = path;
  layerCopy = layer;
  objectsCopy = objects;
  v17.receiver = self;
  v17.super_class = TUIMicaPlayer;
  v13 = [(TUIMicaPlayer *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(TUIMicaPlayer *)v13 setPath:pathCopy];
    [(TUIMicaPlayer *)v14 setRootLayer:layerCopy];
    [(TUIMicaPlayer *)v14 setPublishedObjects:objectsCopy];
    LODWORD(v15) = 1.0;
    [(TUIMicaPlayer *)v14 setPreferredPlaybackSpeed:v15];
    [(TUIMicaPlayer *)v14 setRetinaScale:scale];
    [layerCopy duration];
    [(TUIMicaPlayer *)v14 setDocumentDuration:?];
    [(CALayer *)v14->_rootLayer setDuration:INFINITY];
  }

  return v14;
}

- (TUIMicaPlayer)initWithPath:(id)path retinaScale:(double)scale fileProvider:(id)provider
{
  pathCopy = path;
  v9 = [TUIMicaPlayer rootDictForPath:pathCopy fileProvider:provider];
  v10 = [(TUIMicaPlayer *)self _initWithPath:pathCopy retinaScale:v9 rootDict:scale];

  return v10;
}

- (void)dealloc
{
  [(TUIMicaPlayer *)self stopPlayTimer];
  v3.receiver = self;
  v3.super_class = TUIMicaPlayer;
  [(TUIMicaPlayer *)&v3 dealloc];
}

- (id)_initWithPath:(id)path retinaScale:(double)scale rootDict:(id)dict
{
  pathCopy = path;
  dictCopy = dict;
  v10 = dictCopy;
  if (!dictCopy || ([dictCopy objectForKeyedSubscript:@"rootLayer"], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_6:
    NSLog(@"Unable to load Mica document with path: %@", pathCopy);
    v14 = 0;
    goto LABEL_7;
  }

  v12 = v11;
  [v11 setGeometryFlipped:{+[TUIMicaPlayer BOOLFromDictionary:key:defaultValue:](TUIMicaPlayer, "BOOLFromDictionary:key:defaultValue:", v10, @"geometryFlipped", 0) ^ 1}];
  [v12 setMasksToBounds:1];
  [v12 setRepeatCount:0.0];
  v13 = [v10 objectForKeyedSubscript:@"publishedObjects"];
  v14 = [(TUIMicaPlayer *)self initWithPath:pathCopy retinaScale:v12 rootLayer:v13 publishedObjects:scale];

  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v14;
}

+ (id)rootDictForPath:(id)path fileProvider:(id)provider
{
  pathCopy = path;
  providerCopy = provider;
  v7 = providerCopy;
  if (!providerCopy)
  {
    if (pathCopy)
    {
      v16 = [NSURL fileURLWithPath:pathCopy];
      if (v16)
      {
        v21 = 0;
        v8 = [NSData dataWithContentsOfURL:v16 options:1 error:&v21];
        v17 = v21;
        v9 = v17;
        if (v17)
        {
          localizedDescription = [v17 localizedDescription];
          NSLog(@"Error: %@", localizedDescription);
        }

LABEL_12:

        if (v8)
        {
          goto LABEL_3;
        }

LABEL_13:
        v15 = 0;
        v11 = v9;
        goto LABEL_14;
      }
    }

    else
    {
      v16 = 0;
    }

    v9 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v8 = [providerCopy dataFor:pathCopy];
  v9 = 0;
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v20 = v9;
  v10 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v8 error:&v20];
  v11 = v20;

  if (v11)
  {
    localizedDescription2 = [v11 localizedDescription];
    NSLog(@"Error: %@", localizedDescription2);
  }

  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v22[3] = objc_opt_class();
  v22[4] = objc_opt_class();
  v13 = [NSArray arrayWithObjects:v22 count:5];
  v14 = [NSSet setWithArray:v13];
  v15 = [v10 decodeObjectOfClasses:v14 forKey:@"root"];

  [v10 finishDecoding];
LABEL_14:

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
  path = [(TUIMicaPlayer *)self path];
  v6 = [path copy];

  rootLayer = [(TUIMicaPlayer *)self rootLayer];
  tui_deepCopyLayer = [rootLayer tui_deepCopyLayer];

  publishedObjects = [(TUIMicaPlayer *)self publishedObjects];
  rootLayer2 = [(TUIMicaPlayer *)self rootLayer];
  v11 = [TUIMicaPlayer updatePublishedObjects:publishedObjects toReferenceLayersInTree:tui_deepCopyLayer ratherThanLayersInTree:rootLayer2];

  v12 = [objc_opt_class() allocWithZone:zone];
  [(TUIMicaPlayer *)self retinaScale];
  v13 = [v12 initWithPath:v6 retinaScale:tui_deepCopyLayer rootLayer:v11 publishedObjects:?];

  return v13;
}

+ (id)updatePublishedObjects:(id)objects toReferenceLayersInTree:(id)tree ratherThanLayersInTree:(id)inTree
{
  objectsCopy = objects;
  treeCopy = tree;
  inTreeCopy = inTree;
  v28 = +[NSMutableDictionary dictionary];
  if (objectsCopy && [objectsCopy count])
  {
    tui_allLayersInTree = [inTreeCopy tui_allLayersInTree];
    v24 = inTreeCopy;
    tui_allAnimationsInTree = [inTreeCopy tui_allAnimationsInTree];
    tui_allLayersInTree2 = [treeCopy tui_allLayersInTree];
    tui_allAnimationsInTree2 = [treeCopy tui_allAnimationsInTree];
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
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = [objectsCopy objectForKeyedSubscript:v16];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v19 = tui_allLayersInTree;
          v20 = tui_allLayersInTree2;
          if (isKindOfClass & 1) != 0 || (objc_opt_class(), v21 = objc_opt_isKindOfClass(), v20 = tui_allAnimationsInTree2, v19 = tui_allAnimationsInTree, (v21))
          {
            v22 = [v20 objectAtIndexedSubscript:{objc_msgSend(v19, "indexOfObjectIdenticalTo:", v17)}];
            [v28 setObject:v22 forKeyedSubscript:v16];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    inTreeCopy = v24;
  }

  return v28;
}

- (void)addToLayer:(id)layer onTop:(BOOL)top gravity:(id)gravity
{
  topCopy = top;
  layerCopy = layer;
  gravityCopy = gravity;
  superlayer = [(CALayer *)self->_rootLayer superlayer];

  if (!superlayer)
  {
    [(TUIMicaPlayer *)self pause];
    [(TUIMicaPlayer *)self setPlaybackTime:0.0];
    [(TUIMicaPlayer *)self moveAndResizeWithinParentLayer:layerCopy usingGravity:gravityCopy animate:0];
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
    [(TUIMicaPlayer *)self pause];
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
  [(TUIMicaPlayer *)self retinaScale];
  [(CALayer *)rootLayer tui_moveAndResizeWithinParentLayer:layerCopy usingGravity:gravityCopy geometryFlipped:1 retinaScale:animateCopy animate:?];
}

- (id)publishedLayerWithKey:(id)key required:(BOOL)required
{
  v4 = [(TUIMicaPlayer *)self publishedObjectWithKey:key required:required];
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
    NSLog(@"Missing published object '%@' in Mica document '%@'", keyCopy, lastPathComponent);
  }

  return v8;
}

- (void)play
{
  if (![(TUIMicaPlayer *)self isPlaying])
  {
    v3 = CACurrentMediaTime();
    [(TUIMicaPlayer *)self playbackTime];
    [(CALayer *)self->_rootLayer setBeginTime:v3 - v4 / self->_preferredPlaybackSpeed];
    [(CALayer *)self->_rootLayer setTimeOffset:0.0];
    *&v5 = self->_preferredPlaybackSpeed;
    [(CALayer *)self->_rootLayer setSpeed:v5];
    [(TUIMicaPlayer *)self startPlayTimer];

    [(TUIMicaPlayer *)self notifyDelegateDidStartPlaying];
  }
}

- (void)pause
{
  if ([(TUIMicaPlayer *)self isPlaying])
  {
    [(TUIMicaPlayer *)self playbackTime];
    [(CALayer *)self->_rootLayer setTimeOffset:?];
    [(CALayer *)self->_rootLayer setBeginTime:0.0];
    [(CALayer *)self->_rootLayer setSpeed:0.0];
    [(TUIMicaPlayer *)self stopPlayTimer];

    [(TUIMicaPlayer *)self notifyDelegateDidStopPlaying];
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
  if ([(TUIMicaPlayer *)self isPlaying])
  {
    rootLayer = self->_rootLayer;
    *&v5 = speedCopy;

    [(CALayer *)rootLayer setSpeed:v5];
  }
}

- (double)playbackTime
{
  if ([(TUIMicaPlayer *)self isPlaying])
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
  isPlaying = [(TUIMicaPlayer *)self isPlaying];
  v6 = 0.0;
  if (isPlaying)
  {
    v6 = CACurrentMediaTime() - time;
    time = 0.0;
  }

  [(CALayer *)self->_rootLayer setBeginTime:v6];
  [(CALayer *)self->_rootLayer setTimeOffset:time];

  [(TUIMicaPlayer *)self notifyDelegateDidChangePlaybackTime];
}

- (BOOL)isPlaybackAtEnd
{
  [(TUIMicaPlayer *)self playbackTime];
  v4 = v3;
  [(TUIMicaPlayer *)self documentDuration];
  return v4 >= v5 + -0.001;
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

- (void)startPlayTimer
{
  if (!self->_playTimer)
  {
    v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"runPlayTimer:" selector:0 userInfo:1 repeats:0.0333333333];
    playTimer = self->_playTimer;
    self->_playTimer = v4;

    v6 = +[NSRunLoop currentRunLoop];
    [v6 addTimer:self->_playTimer forMode:NSRunLoopCommonModes];
  }
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
  if ([(TUIMicaPlayer *)self isPlaybackAtEnd])
  {
    if (self->_loopDuringPlayback)
    {
      [(TUIMicaPlayer *)self setPlaybackTime:0.0];
    }

    else
    {
      [(TUIMicaPlayer *)self pause];
    }
  }

  [(TUIMicaPlayer *)self notifyDelegateDidChangePlaybackTime];
}

- (MicaPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end