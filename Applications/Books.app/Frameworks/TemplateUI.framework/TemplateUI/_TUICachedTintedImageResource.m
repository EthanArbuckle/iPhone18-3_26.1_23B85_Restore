@interface _TUICachedTintedImageResource
+ (id)sizedKeyForColor:(id)a3 imageResource:(id)a4;
+ (id)unsizedKeyForColor:(id)a3 imageResource:(id)a4;
- (_TUICachedTintedImageResource)initWithCache:(id)a3 unsizedCacheSet:(id)a4 queue:(id)a5 resource:(id)a6 color:(id)a7;
- (id)debugFunctionalDescription;
- (id)newImageResourceWithSize:(CGSize)a3;
- (id)sizedKey;
- (id)unsizedKey;
- (void)applyToImage:(id)a3 completion:(id)a4;
@end

@implementation _TUICachedTintedImageResource

- (id)debugFunctionalDescription
{
  v3 = [(_TUICachedPipelineImageResource *)self imageResource];
  v4 = [v3 debugFunctionalDescription];
  v5 = [NSString stringWithFormat:@"(%@).tintColor(%@)", v4, self->_color];

  return v5;
}

- (_TUICachedTintedImageResource)initWithCache:(id)a3 unsizedCacheSet:(id)a4 queue:(id)a5 resource:(id)a6 color:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  [v13 naturalSize];
  v18 = v17;
  v20 = v19;
  [v13 contentsScale];
  v26.receiver = self;
  v26.super_class = _TUICachedTintedImageResource;
  v22 = [(_TUICachedPipelineImageResource *)&v26 initWithCache:v16 unsizedCacheSet:v15 queue:v14 naturalSize:v13 contentsScale:v18 resource:v20, v21];

  if (v22)
  {
    v23 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v12 CGColor]);
    color = v22->_color;
    v22->_color = v23;
  }

  return v22;
}

+ (id)sizedKeyForColor:(id)a3 imageResource:(id)a4
{
  v5 = a3;
  v6 = [a4 sizedKey];
  v7 = [v5 CGColor];

  v8 = [UIColor colorWithCGColor:v7];
  v9 = [v6 cacheKeyWithColor:v8];

  return v9;
}

+ (id)unsizedKeyForColor:(id)a3 imageResource:(id)a4
{
  v5 = a3;
  v6 = [a4 unsizedKey];
  v7 = [v5 CGColor];

  v8 = [UIColor colorWithCGColor:v7];
  v9 = [v6 cacheKeyWithColor:v8];

  return v9;
}

- (id)sizedKey
{
  v6.receiver = self;
  v6.super_class = _TUICachedTintedImageResource;
  v3 = [(_TUICachedPipelineImageResource *)&v6 sizedKey];
  v4 = [v3 cacheKeyWithColor:self->_color];

  return v4;
}

- (id)unsizedKey
{
  v6.receiver = self;
  v6.super_class = _TUICachedTintedImageResource;
  v3 = [(_TUICachedPipelineImageResource *)&v6 unsizedKey];
  v4 = [v3 cacheKeyWithColor:self->_color];

  return v4;
}

- (void)applyToImage:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 image];
  v8 = [v7 newImage];
  v9 = [v8 tui_imageMaskWithColor:self->_color];

  if (v9)
  {
    v10 = [[BCUPurgeableImage alloc] initWithImage:v9];
  }

  else
  {
    v10 = 0;
  }

  [v11 insets];
  v6[2](v6, v10);
}

- (id)newImageResourceWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->super.super._cache);
  v7 = [(_TUICachedPipelineImageResource *)self imageResource];
  v8 = [v7 newImageResourceWithSize:{width, height}];
  v9 = [WeakRetained imageResource:v8 tintedWithColor:self->_color];

  return v9;
}

@end