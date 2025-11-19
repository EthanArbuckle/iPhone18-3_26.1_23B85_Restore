@interface KPFDocument
- (CGImage)newImageForTextureName:(id)a3;
- (CGImage)thumbnailImage;
- (CGImageSource)newImageSourceForTextureName:(id)a3;
- (CGSize)showSize;
- (CGSize)textureSizeForName:(id)a3;
- (KPFDocument)initWithKPFBundle:(id)a3 kpfDictionary:(id)a4 drmContext:(id)a5;
- (id)eventDictAtIndex:(unint64_t)a3;
- (id)movieURLForTextureName:(id)a3;
- (id)newEventAtIndex:(unint64_t)a3;
- (id)newMovieForTextureName:(id)a3;
- (id)newSoundtrack;
- (id)p_eventsArray;
- (id)p_texturesDictionary;
- (id)p_urlForResource:(id)a3;
- (id)soundtrackName;
- (int)showMode;
- (unint64_t)eventIndexForPreviousSlideGivenEventIndex:(unint64_t)a3;
- (unint64_t)eventIndexForSlideIndex:(unint64_t)a3;
- (unint64_t)slideIndexForEventIndex:(unint64_t)a3;
- (void)dealloc;
@end

@implementation KPFDocument

- (KPFDocument)initWithKPFBundle:(id)a3 kpfDictionary:(id)a4 drmContext:(id)a5
{
  v25.receiver = self;
  v25.super_class = KPFDocument;
  v8 = [(KPFDocument *)&v25 init];
  if (v8)
  {
    v8->mKPFBundle = a3;
    v8->mDrmContext = a5;
    v9 = a4;
    v8->mKPFDictionary = v9;
    v10 = [(NSDictionary *)v9 objectForKey:@"slideCount"];
    if (v10)
    {
      v11 = [v10 intValue];
      if (v11 >= 100000)
      {
        LODWORD(mSlideCount) = 100000;
      }

      else
      {
        LODWORD(mSlideCount) = v11;
      }

      mSlideCount = mSlideCount;
      v8->mSlideCount = mSlideCount;
    }

    else
    {
      mSlideCount = v8->mSlideCount;
    }

    v8->mSlidesEventMap = malloc_type_malloc(8 * mSlideCount, 0x100004000313F17uLL);
    if ([(NSDictionary *)v8->mKPFDictionary objectForKey:@"pageCount"])
    {
      v8->mEventCount = [-[KPFDocument p_eventsArray](v8 "p_eventsArray")];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [(NSDictionary *)v8->mKPFDictionary objectForKey:@"navigatorEvents", 0];
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v22;
LABEL_12:
      v18 = 0;
      v19 = v16;
      while (1)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v16 = v19 + 1;
        v8->mSlidesEventMap[v19] = [objc_msgSend(*(*(&v21 + 1) + 8 * v18) objectForKey:{@"eventIndex", "intValue"}];
        if (v19 + 1 >= v8->mSlideCount)
        {
          break;
        }

        v18 = v18 + 1;
        ++v19;
        if (v15 == v18)
        {
          v15 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v15)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    v8->mIsLooping = [-[NSDictionary objectForKey:](v8->mKPFDictionary objectForKey:{@"loopSlideshow", "BOOLValue"}];
  }

  return v8;
}

- (void)dealloc
{
  mThumbnailImage = self->mThumbnailImage;
  if (mThumbnailImage)
  {
    CGImageRelease(mThumbnailImage);
  }

  mSlidesEventMap = self->mSlidesEventMap;
  if (mSlidesEventMap)
  {
    free(mSlidesEventMap);
  }

  v5.receiver = self;
  v5.super_class = KPFDocument;
  [(KPFDocument *)&v5 dealloc];
}

- (CGSize)showSize
{
  v3 = [(NSDictionary *)self->mKPFDictionary objectForKey:@"slideWidth"];
  v4 = [(NSDictionary *)self->mKPFDictionary objectForKey:@"slideHeight"];
  v5 = 0.0;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = 0.0;
  if (!v6)
  {
    v8 = v4;
    [v3 floatValue];
    v5 = v9;
    [v8 floatValue];
    v7 = v10;
  }

  v11 = v5;
  result.height = v7;
  result.width = v11;
  return result;
}

- (CGImage)thumbnailImage
{
  result = self->mThumbnailImage;
  if (!result)
  {
    result = [(KPFDocument *)self newImageForTextureName:@"thumbnail"];
    self->mThumbnailImage = result;
  }

  return result;
}

- (CGSize)textureSizeForName:(id)a3
{
  v3 = [-[KPFDocument p_texturesDictionary](self "p_texturesDictionary")];
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
  result = [(KPFDocument *)self newImageSourceForTextureName:a3];
  if (result)
  {
    v4 = result;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(result, 0, 0);
    CFRelease(v4);
    return ImageAtIndex;
  }

  return result;
}

- (CGImageSource)newImageSourceForTextureName:(id)a3
{
  v4 = -[KPFDocument p_urlForResource:](self, "p_urlForResource:", [objc_msgSend(-[KPFDocument p_texturesDictionary](self "p_texturesDictionary")]);
  mDrmContext = self->mDrmContext;
  if (mDrmContext)
  {
    v6 = [(PFDContext *)mDrmContext dataWithContentsOfURL:v4 error:0];

    return CGImageSourceCreateWithData(v6, 0);
  }

  else
  {

    return CGImageSourceCreateWithURL(v4, 0);
  }
}

- (id)movieURLForTextureName:(id)a3
{
  v3 = [-[KPFDocument p_texturesDictionary](self "p_texturesDictionary")];

  return [v3 objectForKey:@"movieUrl"];
}

- (id)newMovieForTextureName:(id)a3
{
  v5 = [-[KPFDocument p_texturesDictionary](self "p_texturesDictionary")];
  v6 = -[KPFDocument p_urlForResource:](self, "p_urlForResource:", [v5 objectForKey:@"movieUrl"]);
  v7 = [v5 objectForKey:@"movieVolume"];
  if (v7)
  {
    [v7 floatValue];
    v9 = fmaxf(fminf(v8, 1.0), 0.0);
  }

  else
  {
    v9 = 1.0;
  }

  v10 = [KPFMovie alloc];
  v11 = [v5 objectForKey:@"movieLooping"];
  mDrmContext = self->mDrmContext;

  return [(KPFMovie *)v10 initWithURL:v6 looping:v11 volume:a3 name:0 audioOnly:mDrmContext drmContext:v9];
}

- (id)eventDictAtIndex:(unint64_t)a3
{
  v4 = [(KPFDocument *)self p_eventsArray];

  return [v4 objectAtIndex:a3];
}

- (id)newEventAtIndex:(unint64_t)a3
{
  v3 = [(KPFDocument *)self eventDictAtIndex:a3];
  v4 = [KPFEvent alloc];

  return [(KPFEvent *)v4 initWithDictionary:v3];
}

- (unint64_t)eventIndexForSlideIndex:(unint64_t)a3
{
  if (self->mSlideCount <= a3)
  {
    return 0;
  }

  else
  {
    return self->mSlidesEventMap[a3];
  }
}

- (unint64_t)slideIndexForEventIndex:(unint64_t)a3
{
  v3 = self->mSlideCount - 1;
  do
  {
    v4 = v3;
    if (!v3)
    {
      break;
    }

    v5 = self->mSlidesEventMap[v3--];
  }

  while (v5 > a3);
  return v4;
}

- (unint64_t)eventIndexForPreviousSlideGivenEventIndex:(unint64_t)a3
{
  v3 = self->mSlideCount - 1;
  while (v3)
  {
    mSlidesEventMap = self->mSlidesEventMap;
    v5 = mSlidesEventMap[v3--];
    if (v5 <= a3)
    {
      return mSlidesEventMap[v3];
    }
  }

  return a3;
}

- (id)soundtrackName
{
  result = [(NSDictionary *)self->mKPFDictionary objectForKey:@"soundTrackMedia"];
  if (result)
  {

    return [result objectAtIndex:0];
  }

  return result;
}

- (id)newSoundtrack
{
  result = [(KPFDocument *)self soundtrackName];
  if (result)
  {
    v4 = result;
    v5 = -[KPFDocument p_urlForResource:](self, "p_urlForResource:", [objc_msgSend(-[KPFDocument p_texturesDictionary](self "p_texturesDictionary")]);
    v6 = [-[NSDictionary objectForKey:](self->mKPFDictionary objectForKey:{@"soundTrackMode", "intValue"}];
    v7 = [KPFMovie alloc];
    if (v6 == 1)
    {
      v8 = @"looping";
    }

    else
    {
      v8 = @"none";
    }

    mDrmContext = self->mDrmContext;

    return [(KPFMovie *)v7 initWithURL:v5 looping:v8 volume:v4 name:1 audioOnly:mDrmContext drmContext:1.0];
  }

  return result;
}

- (int)showMode
{
  v2 = [(NSDictionary *)self->mKPFDictionary objectForKey:@"showMode"];

  return [v2 intValue];
}

- (id)p_urlForResource:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [[(NSURL *)[(NSBundle *)self->mKPFBundle bundleURL] URLByAppendingPathComponent:a3 isDirectory:0] standardizedURL];
  if ([(NSString *)[(NSURL *)v4 path] hasPrefix:[(NSBundle *)self->mKPFBundle bundlePath]])
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
    result = [(NSDictionary *)self->mKPFDictionary objectForKey:@"textures"];
    self->mTexturesDictionary = result;
  }

  return result;
}

- (id)p_eventsArray
{
  result = self->mEventsArray;
  if (!result)
  {
    result = [(NSDictionary *)self->mKPFDictionary objectForKey:@"eventTimelines"];
    self->mEventsArray = result;
  }

  return result;
}

@end