@interface _TUICachedTintedImageResource
+ (id)sizedKeyForColor:(id)color imageResource:(id)resource;
+ (id)unsizedKeyForColor:(id)color imageResource:(id)resource;
- (_TUICachedTintedImageResource)initWithCache:(id)cache unsizedCacheSet:(id)set queue:(id)queue resource:(id)resource color:(id)color;
- (id)debugFunctionalDescription;
- (id)newImageResourceWithSize:(CGSize)size;
- (id)sizedKey;
- (id)unsizedKey;
- (void)applyToImage:(id)image completion:(id)completion;
@end

@implementation _TUICachedTintedImageResource

- (id)debugFunctionalDescription
{
  imageResource = [(_TUICachedPipelineImageResource *)self imageResource];
  debugFunctionalDescription = [imageResource debugFunctionalDescription];
  v5 = [NSString stringWithFormat:@"(%@).tintColor(%@)", debugFunctionalDescription, self->_color];

  return v5;
}

- (_TUICachedTintedImageResource)initWithCache:(id)cache unsizedCacheSet:(id)set queue:(id)queue resource:(id)resource color:(id)color
{
  colorCopy = color;
  resourceCopy = resource;
  queueCopy = queue;
  setCopy = set;
  cacheCopy = cache;
  [resourceCopy naturalSize];
  v18 = v17;
  v20 = v19;
  [resourceCopy contentsScale];
  v26.receiver = self;
  v26.super_class = _TUICachedTintedImageResource;
  v22 = [(_TUICachedPipelineImageResource *)&v26 initWithCache:cacheCopy unsizedCacheSet:setCopy queue:queueCopy naturalSize:resourceCopy contentsScale:v18 resource:v20, v21];

  if (v22)
  {
    v23 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [colorCopy CGColor]);
    color = v22->_color;
    v22->_color = v23;
  }

  return v22;
}

+ (id)sizedKeyForColor:(id)color imageResource:(id)resource
{
  colorCopy = color;
  sizedKey = [resource sizedKey];
  cGColor = [colorCopy CGColor];

  v8 = [UIColor colorWithCGColor:cGColor];
  v9 = [sizedKey cacheKeyWithColor:v8];

  return v9;
}

+ (id)unsizedKeyForColor:(id)color imageResource:(id)resource
{
  colorCopy = color;
  unsizedKey = [resource unsizedKey];
  cGColor = [colorCopy CGColor];

  v8 = [UIColor colorWithCGColor:cGColor];
  v9 = [unsizedKey cacheKeyWithColor:v8];

  return v9;
}

- (id)sizedKey
{
  v6.receiver = self;
  v6.super_class = _TUICachedTintedImageResource;
  sizedKey = [(_TUICachedPipelineImageResource *)&v6 sizedKey];
  v4 = [sizedKey cacheKeyWithColor:self->_color];

  return v4;
}

- (id)unsizedKey
{
  v6.receiver = self;
  v6.super_class = _TUICachedTintedImageResource;
  unsizedKey = [(_TUICachedPipelineImageResource *)&v6 unsizedKey];
  v4 = [unsizedKey cacheKeyWithColor:self->_color];

  return v4;
}

- (void)applyToImage:(id)image completion:(id)completion
{
  imageCopy = image;
  completionCopy = completion;
  image = [imageCopy image];
  newImage = [image newImage];
  v9 = [newImage tui_imageMaskWithColor:self->_color];

  if (v9)
  {
    v10 = [[BCUPurgeableImage alloc] initWithImage:v9];
  }

  else
  {
    v10 = 0;
  }

  [imageCopy insets];
  completionCopy[2](completionCopy, v10);
}

- (id)newImageResourceWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  WeakRetained = objc_loadWeakRetained(&self->super.super._cache);
  imageResource = [(_TUICachedPipelineImageResource *)self imageResource];
  v8 = [imageResource newImageResourceWithSize:{width, height}];
  v9 = [WeakRetained imageResource:v8 tintedWithColor:self->_color];

  return v9;
}

@end