@interface KPFSession
- (BOOL)decrementCurrentSlideIndex;
- (BOOL)incrementCurrentSlideIndex;
- (CGImage)CGImageForTextureName:(id)name;
- (CGSize)textureSizeForName:(id)name;
- (KPFGingerSlide)currentSlide;
- (KPFGingerSlide)nextSlide;
- (KPFSession)initWithKPFDocument:(id)document showLayer:(id)layer;
- (MTLDevice)metalDevice;
- (TSDMetalLayer)sharedMetalLayer;
- (id)cachedDataForKPFFileURL:(id)l;
- (id)movieNameForTextureName:(id)name;
- (void)dealloc;
- (void)makeSharedMetalLayerVisible:(BOOL)visible;
- (void)p_setupSoundtrack;
- (void)pauseMediaPlayback;
- (void)resumeMediaPlayback;
- (void)setCachedData:(id)data forKPFFileURL:(id)l;
- (void)setSlideIndex:(unint64_t)index;
- (void)setSlideWithSlideTag:(id)tag;
- (void)setupAndPlaySoundtrackAfterDelay:(double)delay;
- (void)stopAllAnimations;
@end

@implementation KPFSession

- (KPFSession)initWithKPFDocument:(id)document showLayer:(id)layer
{
  v23.receiver = self;
  v23.super_class = KPFSession;
  v6 = [(KPFSession *)&v23 init];
  if (v6)
  {
    layerCopy = layer;
    v6->_showLayer = layerCopy;
    [(CALayer *)layerCopy setName:@"showLayer"];
    [(CALayer *)v6->_showLayer setMasksToBounds:1];
    documentCopy = document;
    v6->mDocument = documentCopy;
    slidesDictionary = [(KPFGingerDocument *)documentCopy slidesDictionary];
    slideList = [(KPFGingerDocument *)v6->mDocument slideList];
    documentPath = [(KPFGingerDocument *)v6->mDocument documentPath];
    v6->mKPFSlideList = objc_alloc_init(NSMutableArray);
    v6->_animationRegistry = objc_alloc_init(KPFGingerAnimationRegistry);
    v6->_isMetalEnabled = 1;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [(NSArray *)slideList countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(slideList);
          }

          v16 = -[KPFGingerSlide initWithSlideDictionary:slideTag:baseResourcePath:drmContext:]([KPFGingerSlide alloc], "initWithSlideDictionary:slideTag:baseResourcePath:drmContext:", -[NSMutableDictionary objectForKey:](slidesDictionary, "objectForKey:", *(*(&v19 + 1) + 8 * i)), *(*(&v19 + 1) + 8 * i), documentPath, [document drmContext]);
          [(NSMutableArray *)v6->mKPFSlideList addObject:v16];
        }

        v13 = [(NSArray *)slideList countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }

    v6->mCurrentSlideIndex = 0;
    v6->mSoundtrack = 0;
    [(KPFSession *)v6 setPlaybackState:1];
    v17 = objc_alloc_init(NSCache);
    v6->mFileCache = v17;
    [(NSCache *)v17 setTotalCostLimit:50000000];
  }

  return v6;
}

- (void)dealloc
{
  [(CALayer *)self->_showLayer setSublayers:0];

  sharedMetalLayer = self->_sharedMetalLayer;
  if (sharedMetalLayer)
  {
    [(TSDMetalLayer *)sharedMetalLayer tearDown];
  }

  v4.receiver = self;
  v4.super_class = KPFSession;
  [(KPFSession *)&v4 dealloc];
}

- (KPFGingerSlide)currentSlide
{
  result = self->mCurrentSlide;
  if (!result)
  {
    mCurrentSlideIndex = self->mCurrentSlideIndex;
    if (mCurrentSlideIndex >= [(NSMutableArray *)self->mKPFSlideList count])
    {
      return self->mCurrentSlide;
    }

    else
    {
      result = [(NSMutableArray *)self->mKPFSlideList objectAtIndex:self->mCurrentSlideIndex];
      self->mCurrentSlide = result;
    }
  }

  return result;
}

- (KPFGingerSlide)nextSlide
{
  v3 = self->mCurrentSlideIndex + 1;
  if (v3 >= [(NSMutableArray *)self->mKPFSlideList count])
  {
    return 0;
  }

  mKPFSlideList = self->mKPFSlideList;
  v5 = self->mCurrentSlideIndex + 1;

  return [(NSMutableArray *)mKPFSlideList objectAtIndex:v5];
}

- (BOOL)incrementCurrentSlideIndex
{
  v3 = self->mCurrentSlideIndex + 1;
  v4 = [(NSMutableArray *)self->mKPFSlideList count];
  if (v3 < v4)
  {
    mCurrentSlide = self->mCurrentSlide;
    self->mPreviousSlideIndex = self->mCurrentSlideIndex;
    [(KPFGingerSlide *)mCurrentSlide teardown];
    v6 = self->mCurrentSlideIndex + 1;
    self->mCurrentSlide = 0;
    self->mCurrentSlideIndex = v6;
  }

  return v3 < v4;
}

- (BOOL)decrementCurrentSlideIndex
{
  mCurrentSlideIndex = self->mCurrentSlideIndex;
  if (mCurrentSlideIndex)
  {
    self->mPreviousSlideIndex = mCurrentSlideIndex;
    [(KPFGingerSlide *)self->mCurrentSlide teardown];
    v4 = self->mCurrentSlideIndex - 1;
    self->mCurrentSlide = 0;
    self->mCurrentSlideIndex = v4;
  }

  return mCurrentSlideIndex != 0;
}

- (void)setSlideIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->mKPFSlideList count]> index)
  {
    mCurrentSlide = self->mCurrentSlide;
    mCurrentSlideIndex = self->mCurrentSlideIndex;
    self->mCurrentSlideIndex = index;
    self->mPreviousSlideIndex = mCurrentSlideIndex;
    [(KPFGingerSlide *)mCurrentSlide teardown];
    self->mCurrentSlide = 0;
  }
}

- (void)setSlideWithSlideTag:(id)tag
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mKPFSlideList = self->mKPFSlideList;
  v6 = [(NSMutableArray *)mKPFSlideList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(mKPFSlideList);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([tag isEqualToString:{objc_msgSend(v10, "slideTag")}])
        {
          mCurrentSlide = self->mCurrentSlide;
          self->mPreviousSlideIndex = self->mCurrentSlideIndex;
          [(KPFGingerSlide *)mCurrentSlide teardown];
          self->mCurrentSlide = 0;
          self->mCurrentSlideIndex = [(NSMutableArray *)self->mKPFSlideList indexOfObject:v10];
        }
      }

      v7 = [(NSMutableArray *)mKPFSlideList countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)p_setupSoundtrack
{
  soundtrackPath = [(KPFGingerDocument *)self->mDocument soundtrackPath];
  if (soundtrackPath)
  {
    v4 = soundtrackPath;

    self->mSoundtrack = 0;
    soundtrackMode = [(KPFGingerDocument *)self->mDocument soundtrackMode];
    v6 = [NSURL fileURLWithPath:v4 isDirectory:0];
    v7 = [KPFMovie alloc];
    if (soundtrackMode == 1)
    {
      v8 = @"looping";
    }

    else
    {
      v8 = @"none";
    }

    [(KPFGingerDocument *)self->mDocument soundtrackVolume];
    self->mSoundtrack = [(KPFMovie *)v7 initWithURL:v6 looping:v8 volume:v4 name:1 audioOnly:0 drmContext:?];
  }
}

- (void)setupAndPlaySoundtrackAfterDelay:(double)delay
{
  if ([(KPFGingerDocument *)self->mDocument soundtrackPath])
  {
    mSoundtrack = self->mSoundtrack;
    if (mSoundtrack)
    {
      [(KPFMovie *)mSoundtrack stop];
    }

    else
    {
      [(KPFSession *)self p_setupSoundtrack];
    }

    if (![(KPFMovie *)self->mSoundtrack isPlaying])
    {
      v6 = self->mSoundtrack;

      [(KPFMovie *)v6 playAfterDelay:delay];
    }
  }
}

- (void)pauseMediaPlayback
{
  [(KPFMovie *)self->mSoundtrack pause];
  currentSlide = [(KPFSession *)self currentSlide];

  [(KPFGingerSlide *)currentSlide pauseMediaPlayback];
}

- (void)resumeMediaPlayback
{
  [(KPFMovie *)self->mSoundtrack resume];
  currentSlide = [(KPFSession *)self currentSlide];

  [(KPFGingerSlide *)currentSlide resumeMediaPlayback];
}

- (void)stopAllAnimations
{
  [(KPFMovie *)self->mSoundtrack stop];

  self->mSoundtrack = 0;
  currentSlide = [(KPFSession *)self currentSlide];

  [(KPFGingerSlide *)currentSlide teardown];
}

- (CGImage)CGImageForTextureName:(id)name
{
  currentSlide = [(KPFSession *)self currentSlide];

  return [(KPFGingerSlide *)currentSlide CGImageForTextureName:name session:self];
}

- (id)movieNameForTextureName:(id)name
{
  currentSlide = [(KPFSession *)self currentSlide];

  return [(KPFGingerSlide *)currentSlide movieNameForTextureName:name];
}

- (CGSize)textureSizeForName:(id)name
{
  currentSlide = [(KPFSession *)self currentSlide];

  [(KPFGingerSlide *)currentSlide textureSizeForName:name];
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)cachedDataForKPFFileURL:(id)l
{
  fileCache = [(KPFSession *)self fileCache];
  standardizedURL = [l standardizedURL];

  return [(NSCache *)fileCache objectForKey:standardizedURL];
}

- (void)setCachedData:(id)data forKPFFileURL:(id)l
{
  fileCache = [(KPFSession *)self fileCache];
  standardizedURL = [l standardizedURL];
  v8 = [data length];

  [(NSCache *)fileCache setObject:data forKey:standardizedURL cost:v8];
}

- (void)makeSharedMetalLayerVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(KPFSession *)self isMetalEnabled])
  {
    sharedMetalLayer = [(KPFSession *)self sharedMetalLayer];

    [(TSDMetalLayer *)sharedMetalLayer setHidden:!visibleCopy];
  }
}

- (TSDMetalLayer)sharedMetalLayer
{
  objc_sync_enter(self);
  if ([(KPFSession *)self isMetalEnabled]&& !self->_sharedMetalLayer)
  {
    +[CATransaction begin];
    +[CATransaction activateBackground:](CATransaction, "activateBackground:", +[NSThread isMainThread]^ 1);
    [CATransaction setDisableActions:1];
    v3 = [TSDMetalLayer alloc];
    [(CALayer *)self->_showLayer bounds];
    v8 = [v3 initWithFrame:1 isOpaque:0 isWideGamut:0 delegate:-[KPFSession metalDevice](self metalDevice:{"metalDevice"), v4, v5, v6, v7}];
    self->_sharedMetalLayer = v8;
    [(CALayer *)self->_showLayer addSublayer:v8];
    +[CATransaction commit];
  }

  objc_sync_exit(self);
  return self->_sharedMetalLayer;
}

- (MTLDevice)metalDevice
{
  result = self->_metalDevice;
  if (!result)
  {
    result = MTLCreateSystemDefaultDevice();
    self->_metalDevice = result;
  }

  return result;
}

@end