@interface KPFGingerDocument
- (CGSize)showSize;
- (KPFGingerDocument)initWithKPFBundle:(id)bundle kpfDictionary:(id)dictionary drmContext:(id)context;
- (NSMutableDictionary)slidesDictionary;
- (NSString)documentPath;
- (NSString)soundtrackPath;
- (double)soundtrackVolume;
- (unint64_t)soundtrackMode;
- (void)dealloc;
@end

@implementation KPFGingerDocument

- (KPFGingerDocument)initWithKPFBundle:(id)bundle kpfDictionary:(id)dictionary drmContext:(id)context
{
  v11.receiver = self;
  v11.super_class = KPFGingerDocument;
  v8 = [(KPFGingerDocument *)&v11 init];
  if (v8)
  {
    v8->mKPFBundle = bundle;
    v8->mDrmContext = context;
    dictionaryCopy = dictionary;
    v8->mKPFDictionary = dictionaryCopy;
    v8->mSlideList = [(NSDictionary *)dictionaryCopy objectForKey:@"slideList"];
    v8->mSoundtrackDict = [(NSDictionary *)v8->mKPFDictionary objectForKey:@"soundtrack"];
    v8->mIsLooping = [-[NSDictionary objectForKey:](v8->mKPFDictionary objectForKey:{@"loopSlideshow", "BOOLValue"}];
    v8->mSlideHeight = [(NSDictionary *)v8->mKPFDictionary objectForKey:@"slideHeight"];
    v8->mSlideWidth = [(NSDictionary *)v8->mKPFDictionary objectForKey:@"slideWidth"];
  }

  return v8;
}

- (void)dealloc
{
  self->mKPFBundle = 0;

  self->mSlideList = 0;
  self->mSlidesDictionary = 0;

  v3.receiver = self;
  v3.super_class = KPFGingerDocument;
  [(KPFGingerDocument *)&v3 dealloc];
}

- (NSString)soundtrackPath
{
  mSoundtrackDict = self->mSoundtrackDict;
  if (!mSoundtrackDict)
  {
    return 0;
  }

  v4 = [(NSDictionary *)mSoundtrackDict objectForKey:@"tracks"];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  documentPath = [(KPFGingerDocument *)self documentPath];
  v7 = [v5 objectAtIndex:0];

  return [(NSString *)documentPath stringByAppendingPathComponent:v7];
}

- (double)soundtrackVolume
{
  mSoundtrackDict = self->mSoundtrackDict;
  if (!mSoundtrackDict)
  {
    return 0.0;
  }

  [-[NSDictionary objectForKey:](mSoundtrackDict objectForKey:{@"volume", "floatValue"}];
  return v3;
}

- (unint64_t)soundtrackMode
{
  result = self->mSoundtrackDict;
  if (result)
  {
    v3 = [result objectForKey:@"mode"];

    return [v3 unsignedIntegerValue];
  }

  return result;
}

- (CGSize)showSize
{
  mSlideWidth = self->mSlideWidth;
  if (mSlideWidth && self->mSlideHeight)
  {
    [(NSNumber *)mSlideWidth floatValue];
    v5 = v4;
    [(NSNumber *)self->mSlideHeight floatValue];
    v7 = v6;
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (NSMutableDictionary)slidesDictionary
{
  if (self->mSlidesDictionary)
  {
    return self->mSlidesDictionary;
  }

  self->mSlidesDictionary = objc_alloc_init(NSMutableDictionary);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  mSlideList = self->mSlideList;
  v5 = [(NSArray *)mSlideList countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v5)
  {
    return self->mSlidesDictionary;
  }

  v6 = v5;
  v7 = *v15;
LABEL_6:
  v8 = 0;
  while (1)
  {
    if (*v15 != v7)
    {
      objc_enumerationMutation(mSlideList);
    }

    v9 = *(*(&v14 + 1) + 8 * v8);
    result = [(NSBundle *)self->mKPFBundle pathForResource:&stru_471858 ofType:@"json" inDirectory:v9];
    if (!result)
    {
      return result;
    }

    v10 = result;
    mDrmContext = self->mDrmContext;
    if (mDrmContext)
    {
      v12 = [(PFDContext *)mDrmContext dataWithContentsOfFile:v10 error:0];
    }

    else
    {
      v12 = [NSData dataWithContentsOfFile:v10];
    }

    if (!v12)
    {
      return 0;
    }

    result = [NSJSONSerialization JSONObjectWithData:v12 options:0 error:0];
    if (!result)
    {
      return result;
    }

    v13 = result;
    [(NSMutableDictionary *)self->mSlidesDictionary setObject:result forKey:v9];

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)mSlideList countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        goto LABEL_6;
      }

      return self->mSlidesDictionary;
    }
  }
}

- (NSString)documentPath
{
  result = &self->mKPFBundle->super.isa;
  if (result)
  {
    return [(NSString *)result bundlePath];
  }

  return result;
}

@end