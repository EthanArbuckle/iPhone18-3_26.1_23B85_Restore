@interface KPFGingerSlide
- (BOOL)decrementCurrentEventIndex;
- (BOOL)incrementCurrentEventIndex;
- (BOOL)nextEventContainsMovie;
- (CGImage)CGImageForTextureName:(id)a3 session:(id)a4;
- (CGImage)newImageForTextureName:(id)a3;
- (CGSize)textureSizeForName:(id)a3;
- (KPFGingerEvent)currentEvent;
- (KPFGingerEvent)nextEvent;
- (KPFGingerSlide)initWithSlideDictionary:(id)a3 slideTag:(id)a4 baseResourcePath:(id)a5 drmContext:(id)a6;
- (id)movieNameForTextureName:(id)a3;
- (id)p_effectsArray;
- (id)p_eventsArray;
- (id)p_hyperlinksArray;
- (id)p_texturesDictionary;
- (id)p_urlForMovie:(id)a3;
- (id)p_urlForResource:(id)a3;
- (unint64_t)eventCount;
- (void)animateSlideWithSession:(id)a3;
- (void)dealloc;
- (void)newMovieForTextureName:(id)a3 movieDict:(id)a4 withObjectID:(id)a5;
- (void)p_movieEndCallback:(id)a3;
- (void)pauseMediaPlayback;
- (void)playMovieForObjectID:(id)a3 afterDelay:(double)a4;
- (void)renderCurrentEventWithSession:(id)a3;
- (void)renderHyperLinkedSlideWithSlideTag:(id)a3 withSession:(id)a4;
- (void)renderSlideWithSession:(id)a3;
- (void)resumeMediaPlayback;
- (void)stopAllMovies;
- (void)stopMovieForObjectID:(id)a3;
- (void)teardown;
@end

@implementation KPFGingerSlide

- (KPFGingerSlide)initWithSlideDictionary:(id)a3 slideTag:(id)a4 baseResourcePath:(id)a5 drmContext:(id)a6
{
  v13.receiver = self;
  v13.super_class = KPFGingerSlide;
  v10 = [(KPFGingerSlide *)&v13 init];
  if (v10)
  {
    v10->mSlideTag = a4;
    v10->mBaseResourcePath = a5;
    v10->mCurrentEventIndex = 0;
    v10->mCurrentEvent = 0;
    v10->mDrmContext = a6;
    v10->mTextureCache = objc_alloc_init(NSMutableDictionary);
    v11 = a3;
    v10->mKPFDictionary = v11;
    if (v11)
    {
      v10->mEventCount = [-[KPFGingerSlide p_eventsArray](v10 "p_eventsArray")];
    }

    v10->mMoviesDict = objc_alloc_init(NSMutableDictionary);
  }

  return v10;
}

- (void)dealloc
{
  self->mHyperLinkedEvent = 0;

  self->mCurrentEvent = 0;
  self->mNextEvent = 0;

  self->mTextureCache = 0;
  self->mDrmContext = 0;
  v3.receiver = self;
  v3.super_class = KPFGingerSlide;
  [(KPFGingerSlide *)&v3 dealloc];
}

- (void)teardown
{
  self->mCurrentEventIndex = 0;
  self->mEventCount = [-[KPFGingerSlide p_eventsArray](self "p_eventsArray")];
  [(KPFGingerEvent *)self->mCurrentEvent tearDown];

  self->mCurrentEvent = 0;
  [(KPFGingerEvent *)self->mNextEvent tearDown];

  self->mNextEvent = 0;
  self->mHyperLinkedEvent = 0;
  [(NSMutableDictionary *)self->mTextureCache removeAllObjects];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(NSMutableDictionary *)self->mMoviesDict allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) stop];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->mMoviesDict removeAllObjects];
}

- (unint64_t)eventCount
{
  v2 = [(KPFGingerSlide *)self p_eventsArray];

  return [v2 count];
}

- (void)renderSlideWithSession:(id)a3
{
  self->mCurrentEventIndex = 0;
  [(KPFGingerEvent *)self->mCurrentEvent tearDown];

  self->mCurrentEvent = 0;
  [(KPFGingerEvent *)self->mNextEvent tearDown];

  self->mNextEvent = 0;
  self->mHyperLinkedEvent = 0;
  [(NSMutableDictionary *)self->mMoviesDict removeAllObjects];

  [(KPFGingerSlide *)self renderCurrentEventWithSession:a3];
}

- (void)renderHyperLinkedSlideWithSlideTag:(id)a3 withSession:(id)a4
{
  v7 = [(KPFGingerSlide *)self p_hyperlinksArray];
  if ([v7 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [objc_msgSend(*(*(&v14 + 1) + 8 * v11) objectForKey:{@"events", "objectForKey:", a3}];
          if (v12)
          {
            v13 = [[KPFGingerEvent alloc] initWithDictionary:v12];
            self->mHyperLinkedEvent = v13;
            [(KPFGingerEvent *)v13 renderEventWithSession:a4];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (void)animateSlideWithSession:(id)a3
{
  v4 = [(KPFGingerSlide *)self currentEvent];

  [(KPFGingerEvent *)v4 animateWithSession:a3];
}

- (KPFGingerEvent)currentEvent
{
  result = self->mCurrentEvent;
  if (!result)
  {
    result = -[KPFGingerEvent initWithDictionary:]([KPFGingerEvent alloc], "initWithDictionary:", [-[KPFGingerSlide p_eventsArray](self "p_eventsArray")]);
    self->mCurrentEvent = result;
  }

  return result;
}

- (KPFGingerEvent)nextEvent
{
  result = self->mNextEvent;
  if (!result)
  {
    v4 = self->mCurrentEventIndex + 1;
    if (v4 >= [(KPFGingerSlide *)self eventCount])
    {
      return self->mNextEvent;
    }

    else
    {
      result = -[KPFGingerEvent initWithDictionary:]([KPFGingerEvent alloc], "initWithDictionary:", [-[KPFGingerSlide p_eventsArray](self "p_eventsArray")]);
      self->mNextEvent = result;
    }
  }

  return result;
}

- (BOOL)nextEventContainsMovie
{
  v2 = [(KPFGingerSlide *)self nextEvent];

  return [(KPFGingerEvent *)v2 containsMovie];
}

- (BOOL)incrementCurrentEventIndex
{
  v3 = self->mCurrentEventIndex + 1;
  v4 = [(KPFGingerSlide *)self eventCount];
  if (v3 < v4)
  {
    ++self->mCurrentEventIndex;
    [(KPFGingerEvent *)self->mCurrentEvent tearDown];

    self->mCurrentEvent = 0;
    mCurrentEventIndex = self->mCurrentEventIndex;
    if (mCurrentEventIndex == [(KPFGingerSlide *)self eventCount]- 1)
    {
      [(KPFGingerSlide *)self stopAllMovies];
    }

    mNextEvent = self->mNextEvent;
    if (mNextEvent)
    {
      [(KPFGingerEvent *)mNextEvent tearDown];

      self->mNextEvent = 0;
    }
  }

  return v3 < v4;
}

- (BOOL)decrementCurrentEventIndex
{
  mCurrentEventIndex = self->mCurrentEventIndex;
  if (mCurrentEventIndex)
  {
    self->mCurrentEventIndex = mCurrentEventIndex - 1;
    [(KPFGingerEvent *)self->mCurrentEvent tearDown];

    self->mCurrentEvent = 0;
    [(KPFGingerEvent *)self->mNextEvent tearDown];

    self->mNextEvent = 0;
  }

  return mCurrentEventIndex != 0;
}

- (void)renderCurrentEventWithSession:(id)a3
{
  v4 = [(KPFGingerSlide *)self currentEvent];

  [(KPFGingerEvent *)v4 renderEventWithSession:a3];
}

- (CGSize)textureSizeForName:(id)a3
{
  v3 = [-[KPFGingerSlide p_texturesDictionary](self "p_texturesDictionary")];
  [objc_msgSend(v3 objectForKey:{@"width", "floatValue"}];
  v5 = v4;
  [objc_msgSend(v3 objectForKey:{@"height", "floatValue"}];
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGImage)newImageForTextureName:(id)a3
{
  v3 = CGImageSourceCreateWithURL(-[KPFGingerSlide p_urlForResource:](self, "p_urlForResource:", [objc_msgSend(-[KPFGingerSlide p_texturesDictionary](self "p_texturesDictionary")]), 0);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, 0, 0);
  CFRelease(v3);
  return ImageAtIndex;
}

- (CGImage)CGImageForTextureName:(id)a3 session:(id)a4
{
  [(NSMutableDictionary *)self->mTextureCache removeAllObjects];
  v7 = objc_autoreleasePoolPush();
  v8 = [(NSMutableDictionary *)self->mTextureCache objectForKey:a3];
  if (a3 && !v8)
  {
    v9 = [-[KPFGingerSlide p_texturesDictionary](self "p_texturesDictionary")];
    v10 = [v9 objectForKey:@"url"];
    v11 = [objc_msgSend(v9 objectForKeyedSubscript:{@"index", "unsignedIntegerValue"}];
    v12 = [(KPFGingerSlide *)self p_urlForResource:v10];
    v13 = v12;
    if (self->mDrmContext)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [a4 cachedDataForKPFFileURL:{v13, 0}];
      if (!v15)
      {
        v15 = [(PFDContext *)self->mDrmContext dataWithContentsOfURL:v13 error:&v28];
        if (v15)
        {
          [a4 setCachedData:v15 forKPFFileURL:v13];
        }
      }

      v16 = CGDataProviderCreateWithCFData(v15);
      v17 = CGPDFDocumentCreateWithProvider(v16);
      CGDataProviderRelease(v16);
      objc_autoreleasePoolPop(v14);
    }

    else
    {
      v17 = CGPDFDocumentCreateWithURL(v12);
    }

    Page = CGPDFDocumentGetPage(v17, v11 + 1);
    BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
    x = BoxRect.origin.x;
    y = BoxRect.origin.y;
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v24 = CGBitmapContextCreate(0, width, height, 8uLL, 4 * width, DeviceRGB, 0x2002u);
    v25 = v24;
    if (v24)
    {
      CGContextSetInterpolationQuality(v24, kCGInterpolationHigh);
      CGContextSaveGState(v25);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      CGPDFPageGetDrawingTransform(&v28, Page, kCGPDFCropBox, v30, 0, 1);
      CGContextConcatCTM(v25, &v28);
      CGContextDrawPDFPage(v25, Page);
      CGContextRestoreGState(v25);
      Image = CGBitmapContextCreateImage(v25);
      [(NSMutableDictionary *)self->mTextureCache setObject:Image forKey:a3];
      CGImageRelease(Image);
    }

    CGColorSpaceRelease(DeviceRGB);
    CGContextRelease(v25);
    CGPDFDocumentRelease(v17);
  }

  objc_autoreleasePoolPop(v7);
  return [(NSMutableDictionary *)self->mTextureCache objectForKey:a3];
}

- (id)movieNameForTextureName:(id)a3
{
  v3 = [-[KPFGingerSlide p_texturesDictionary](self "p_texturesDictionary")];

  return [v3 objectForKey:@"movie"];
}

- (void)newMovieForTextureName:(id)a3 movieDict:(id)a4 withObjectID:(id)a5
{
  v8 = [a4 objectForKeyedSubscript:@"asset"];
  v9 = -[KPFGingerSlide p_urlForMovie:](self, "p_urlForMovie:", [objc_msgSend(-[KPFGingerSlide p_texturesDictionary](self "p_texturesDictionary")]);
  [objc_msgSend(a4 objectForKeyedSubscript:{@"volume", "floatValue"}];
  v11 = -[KPFMovie initWithURL:looping:volume:name:audioOnly:drmContext:]([KPFMovie alloc], "initWithURL:looping:volume:name:audioOnly:drmContext:", v9, 0, v8, [objc_msgSend(a4 objectForKey:{@"isAudioOnly", "BOOLValue"}], self->mDrmContext, v10);
  [(KPFMovie *)v11 registerForMovieEndCallback:"p_movieEndCallback:" target:self];
  [(NSMutableDictionary *)self->mMoviesDict setObject:v11 forKey:a5];
}

- (void)playMovieForObjectID:(id)a3 afterDelay:(double)a4
{
  v5 = [(NSMutableDictionary *)self->mMoviesDict objectForKey:a3];
  if (v5)
  {

    [v5 playAfterDelay:a4];
  }
}

- (void)stopMovieForObjectID:(id)a3
{
  v5 = [(NSMutableDictionary *)self->mMoviesDict objectForKey:?];
  if (v5)
  {
    [v5 stop];
    mMoviesDict = self->mMoviesDict;

    [(NSMutableDictionary *)mMoviesDict removeObjectForKey:a3];
  }
}

- (void)stopAllMovies
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->mMoviesDict allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) stop];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->mMoviesDict removeAllObjects];
}

- (void)pauseMediaPlayback
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->mMoviesDict allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) pause];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->mMediaPlaybackIsPaused = 1;
}

- (void)resumeMediaPlayback
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->mMoviesDict allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) resume];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->mMediaPlaybackIsPaused = 0;
}

- (void)p_movieEndCallback:(id)a3
{
  [a3 stop];
  v5 = [-[NSMutableDictionary allKeysForObject:](self->mMoviesDict allKeysForObject:{a3), "objectAtIndexedSubscript:", 0}];
  mMoviesDict = self->mMoviesDict;

  [(NSMutableDictionary *)mMoviesDict removeObjectForKey:v5];
}

- (id)p_urlForResource:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [[[NSURL fileURLWithPath:?]isDirectory:"URLByAppendingPathComponent:isDirectory:" standardizedURL:a3];
  if ([(NSString *)[(NSURL *)v4 path] hasPrefix:self->mBaseResourcePath])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)p_urlForMovie:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [[[NSURL fileURLWithPath:?]isDirectory:"URLByAppendingPathComponent:isDirectory:" standardizedURL:0]];
  if ([(NSString *)[(NSURL *)v4 path] hasPrefix:self->mBaseResourcePath])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)p_texturesDictionary
{
  result = self->mTexturesDictionary;
  if (!result)
  {
    result = [(NSDictionary *)self->mKPFDictionary objectForKey:@"assets"];
    self->mTexturesDictionary = result;
  }

  return result;
}

- (id)p_eventsArray
{
  result = self->mEventsArray;
  if (!result)
  {
    result = [(NSDictionary *)self->mKPFDictionary objectForKey:@"events"];
    self->mEventsArray = result;
  }

  return result;
}

- (id)p_hyperlinksArray
{
  v2 = [-[KPFGingerSlide p_eventsArray](self "p_eventsArray")];

  return [v2 objectForKey:@"hyperlinks"];
}

- (id)p_effectsArray
{
  result = self->mEffectsArray;
  if (!result)
  {
    result = [objc_msgSend(-[KPFGingerSlide p_eventsArray](self "p_eventsArray")];
    self->mEffectsArray = result;
  }

  return result;
}

@end