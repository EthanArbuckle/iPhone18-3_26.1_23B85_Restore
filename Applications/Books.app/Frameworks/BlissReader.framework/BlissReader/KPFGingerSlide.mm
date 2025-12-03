@interface KPFGingerSlide
- (BOOL)decrementCurrentEventIndex;
- (BOOL)incrementCurrentEventIndex;
- (BOOL)nextEventContainsMovie;
- (CGImage)CGImageForTextureName:(id)name session:(id)session;
- (CGImage)newImageForTextureName:(id)name;
- (CGSize)textureSizeForName:(id)name;
- (KPFGingerEvent)currentEvent;
- (KPFGingerEvent)nextEvent;
- (KPFGingerSlide)initWithSlideDictionary:(id)dictionary slideTag:(id)tag baseResourcePath:(id)path drmContext:(id)context;
- (id)movieNameForTextureName:(id)name;
- (id)p_effectsArray;
- (id)p_eventsArray;
- (id)p_hyperlinksArray;
- (id)p_texturesDictionary;
- (id)p_urlForMovie:(id)movie;
- (id)p_urlForResource:(id)resource;
- (unint64_t)eventCount;
- (void)animateSlideWithSession:(id)session;
- (void)dealloc;
- (void)newMovieForTextureName:(id)name movieDict:(id)dict withObjectID:(id)d;
- (void)p_movieEndCallback:(id)callback;
- (void)pauseMediaPlayback;
- (void)playMovieForObjectID:(id)d afterDelay:(double)delay;
- (void)renderCurrentEventWithSession:(id)session;
- (void)renderHyperLinkedSlideWithSlideTag:(id)tag withSession:(id)session;
- (void)renderSlideWithSession:(id)session;
- (void)resumeMediaPlayback;
- (void)stopAllMovies;
- (void)stopMovieForObjectID:(id)d;
- (void)teardown;
@end

@implementation KPFGingerSlide

- (KPFGingerSlide)initWithSlideDictionary:(id)dictionary slideTag:(id)tag baseResourcePath:(id)path drmContext:(id)context
{
  v13.receiver = self;
  v13.super_class = KPFGingerSlide;
  v10 = [(KPFGingerSlide *)&v13 init];
  if (v10)
  {
    v10->mSlideTag = tag;
    v10->mBaseResourcePath = path;
    v10->mCurrentEventIndex = 0;
    v10->mCurrentEvent = 0;
    v10->mDrmContext = context;
    v10->mTextureCache = objc_alloc_init(NSMutableDictionary);
    dictionaryCopy = dictionary;
    v10->mKPFDictionary = dictionaryCopy;
    if (dictionaryCopy)
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
  allValues = [(NSMutableDictionary *)self->mMoviesDict allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7) stop];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->mMoviesDict removeAllObjects];
}

- (unint64_t)eventCount
{
  p_eventsArray = [(KPFGingerSlide *)self p_eventsArray];

  return [p_eventsArray count];
}

- (void)renderSlideWithSession:(id)session
{
  self->mCurrentEventIndex = 0;
  [(KPFGingerEvent *)self->mCurrentEvent tearDown];

  self->mCurrentEvent = 0;
  [(KPFGingerEvent *)self->mNextEvent tearDown];

  self->mNextEvent = 0;
  self->mHyperLinkedEvent = 0;
  [(NSMutableDictionary *)self->mMoviesDict removeAllObjects];

  [(KPFGingerSlide *)self renderCurrentEventWithSession:session];
}

- (void)renderHyperLinkedSlideWithSlideTag:(id)tag withSession:(id)session
{
  p_hyperlinksArray = [(KPFGingerSlide *)self p_hyperlinksArray];
  if ([p_hyperlinksArray count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [p_hyperlinksArray countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(p_hyperlinksArray);
          }

          v12 = [objc_msgSend(*(*(&v14 + 1) + 8 * v11) objectForKey:{@"events", "objectForKey:", tag}];
          if (v12)
          {
            v13 = [[KPFGingerEvent alloc] initWithDictionary:v12];
            self->mHyperLinkedEvent = v13;
            [(KPFGingerEvent *)v13 renderEventWithSession:session];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [p_hyperlinksArray countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (void)animateSlideWithSession:(id)session
{
  currentEvent = [(KPFGingerSlide *)self currentEvent];

  [(KPFGingerEvent *)currentEvent animateWithSession:session];
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
  nextEvent = [(KPFGingerSlide *)self nextEvent];

  return [(KPFGingerEvent *)nextEvent containsMovie];
}

- (BOOL)incrementCurrentEventIndex
{
  v3 = self->mCurrentEventIndex + 1;
  eventCount = [(KPFGingerSlide *)self eventCount];
  if (v3 < eventCount)
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

  return v3 < eventCount;
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

- (void)renderCurrentEventWithSession:(id)session
{
  currentEvent = [(KPFGingerSlide *)self currentEvent];

  [(KPFGingerEvent *)currentEvent renderEventWithSession:session];
}

- (CGSize)textureSizeForName:(id)name
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

- (CGImage)newImageForTextureName:(id)name
{
  v3 = CGImageSourceCreateWithURL(-[KPFGingerSlide p_urlForResource:](self, "p_urlForResource:", [objc_msgSend(-[KPFGingerSlide p_texturesDictionary](self "p_texturesDictionary")]), 0);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, 0, 0);
  CFRelease(v3);
  return ImageAtIndex;
}

- (CGImage)CGImageForTextureName:(id)name session:(id)session
{
  [(NSMutableDictionary *)self->mTextureCache removeAllObjects];
  v7 = objc_autoreleasePoolPush();
  v8 = [(NSMutableDictionary *)self->mTextureCache objectForKey:name];
  if (name && !v8)
  {
    v9 = [-[KPFGingerSlide p_texturesDictionary](self "p_texturesDictionary")];
    v10 = [v9 objectForKey:@"url"];
    v11 = [objc_msgSend(v9 objectForKeyedSubscript:{@"index", "unsignedIntegerValue"}];
    v12 = [(KPFGingerSlide *)self p_urlForResource:v10];
    v13 = v12;
    if (self->mDrmContext)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [session cachedDataForKPFFileURL:{v13, 0}];
      if (!v15)
      {
        v15 = [(PFDContext *)self->mDrmContext dataWithContentsOfURL:v13 error:&v28];
        if (v15)
        {
          [session setCachedData:v15 forKPFFileURL:v13];
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
      [(NSMutableDictionary *)self->mTextureCache setObject:Image forKey:name];
      CGImageRelease(Image);
    }

    CGColorSpaceRelease(DeviceRGB);
    CGContextRelease(v25);
    CGPDFDocumentRelease(v17);
  }

  objc_autoreleasePoolPop(v7);
  return [(NSMutableDictionary *)self->mTextureCache objectForKey:name];
}

- (id)movieNameForTextureName:(id)name
{
  v3 = [-[KPFGingerSlide p_texturesDictionary](self "p_texturesDictionary")];

  return [v3 objectForKey:@"movie"];
}

- (void)newMovieForTextureName:(id)name movieDict:(id)dict withObjectID:(id)d
{
  v8 = [dict objectForKeyedSubscript:@"asset"];
  v9 = -[KPFGingerSlide p_urlForMovie:](self, "p_urlForMovie:", [objc_msgSend(-[KPFGingerSlide p_texturesDictionary](self "p_texturesDictionary")]);
  [objc_msgSend(dict objectForKeyedSubscript:{@"volume", "floatValue"}];
  v11 = -[KPFMovie initWithURL:looping:volume:name:audioOnly:drmContext:]([KPFMovie alloc], "initWithURL:looping:volume:name:audioOnly:drmContext:", v9, 0, v8, [objc_msgSend(dict objectForKey:{@"isAudioOnly", "BOOLValue"}], self->mDrmContext, v10);
  [(KPFMovie *)v11 registerForMovieEndCallback:"p_movieEndCallback:" target:self];
  [(NSMutableDictionary *)self->mMoviesDict setObject:v11 forKey:d];
}

- (void)playMovieForObjectID:(id)d afterDelay:(double)delay
{
  v5 = [(NSMutableDictionary *)self->mMoviesDict objectForKey:d];
  if (v5)
  {

    [v5 playAfterDelay:delay];
  }
}

- (void)stopMovieForObjectID:(id)d
{
  v5 = [(NSMutableDictionary *)self->mMoviesDict objectForKey:?];
  if (v5)
  {
    [v5 stop];
    mMoviesDict = self->mMoviesDict;

    [(NSMutableDictionary *)mMoviesDict removeObjectForKey:d];
  }
}

- (void)stopAllMovies
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->mMoviesDict allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7) stop];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  allValues = [(NSMutableDictionary *)self->mMoviesDict allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7) pause];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  allValues = [(NSMutableDictionary *)self->mMoviesDict allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7) resume];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->mMediaPlaybackIsPaused = 0;
}

- (void)p_movieEndCallback:(id)callback
{
  [callback stop];
  v5 = [-[NSMutableDictionary allKeysForObject:](self->mMoviesDict allKeysForObject:{callback), "objectAtIndexedSubscript:", 0}];
  mMoviesDict = self->mMoviesDict;

  [(NSMutableDictionary *)mMoviesDict removeObjectForKey:v5];
}

- (id)p_urlForResource:(id)resource
{
  if (!resource)
  {
    return 0;
  }

  v4 = [[[NSURL fileURLWithPath:?]isDirectory:"URLByAppendingPathComponent:isDirectory:" standardizedURL:resource];
  if ([(NSString *)[(NSURL *)v4 path] hasPrefix:self->mBaseResourcePath])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)p_urlForMovie:(id)movie
{
  if (!movie)
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