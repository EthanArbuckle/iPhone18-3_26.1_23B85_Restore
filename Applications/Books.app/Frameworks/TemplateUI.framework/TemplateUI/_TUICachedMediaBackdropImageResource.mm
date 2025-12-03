@interface _TUICachedMediaBackdropImageResource
+ (id)sizedKeyForNaturalSize:(CGSize)size contentsScale:(double)scale imageResource:(id)resource;
+ (id)unsizedKeyForContentsScale:(double)scale imageResource:(id)resource;
- (_TUICachedMediaBackdropImageResource)initWithCache:(id)cache unsizedCacheSet:(id)set queue:(id)queue naturalSize:(CGSize)size contentsScale:(double)scale resource:(id)resource;
- (id)debugFunctionalDescription;
- (id)sizedKey;
- (id)unsizedKey;
- (void)applyToImage:(id)image completion:(id)completion;
@end

@implementation _TUICachedMediaBackdropImageResource

- (_TUICachedMediaBackdropImageResource)initWithCache:(id)cache unsizedCacheSet:(id)set queue:(id)queue naturalSize:(CGSize)size contentsScale:(double)scale resource:(id)resource
{
  v9.receiver = self;
  v9.super_class = _TUICachedMediaBackdropImageResource;
  result = [(_TUICachedPipelineImageResource *)&v9 initWithCache:cache unsizedCacheSet:set queue:queue naturalSize:resource contentsScale:size.width resource:size.height, scale];
  if (result)
  {
    result->_operationLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (id)debugFunctionalDescription
{
  imageResource = [(_TUICachedPipelineImageResource *)self imageResource];
  debugFunctionalDescription = [imageResource debugFunctionalDescription];
  v4 = [NSString stringWithFormat:@"(%@).MediaBackdropSnapshot", debugFunctionalDescription];

  return v4;
}

- (void)applyToImage:(id)image completion:(id)completion
{
  completionCopy = completion;
  imageCopy = image;
  [(_TUICachedImageResource *)self contentsScale];
  v9 = v8;
  [(_TUICachedImageResource *)self naturalSize];
  v11 = v9 * v10;
  [(_TUICachedImageResource *)self naturalSize];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_A6B7C;
  v15[3] = &unk_260B70;
  v13 = v9 * v12;
  v15[4] = self;
  v16 = completionCopy;
  v17 = v9;
  v14 = completionCopy;
  [TUIMediaBackdropSnapshotRenderer renderWithContent:imageCopy size:v15 contentScale:v11 completionHandler:v13, v9];
}

- (id)sizedKey
{
  v13.receiver = self;
  v13.super_class = _TUICachedMediaBackdropImageResource;
  sizedKey = [(_TUICachedPipelineImageResource *)&v13 sizedKey];
  v4 = [_TUICachedImageFilterInfo alloc];
  [(_TUICachedImageResource *)self naturalSize];
  v6 = v5;
  v8 = v7;
  [(_TUICachedImageResource *)self contentsScale];
  v10 = [(_TUICachedImageFilterInfo *)v4 initWithFilter:0 naturalSize:v6 contentsScale:v8, v9];
  v11 = [sizedKey cacheKeyWithFilterInfo:v10];

  return v11;
}

- (id)unsizedKey
{
  v9.receiver = self;
  v9.super_class = _TUICachedMediaBackdropImageResource;
  unsizedKey = [(_TUICachedPipelineImageResource *)&v9 unsizedKey];
  v4 = [_TUICachedImageFilterInfo alloc];
  [(_TUICachedImageResource *)self contentsScale];
  v6 = [(_TUICachedImageFilterInfo *)v4 initWithFilter:0 naturalSize:CGSizeZero.width contentsScale:CGSizeZero.height, v5];
  v7 = [unsizedKey cacheKeyWithFilterInfo:v6];

  return v7;
}

+ (id)sizedKeyForNaturalSize:(CGSize)size contentsScale:(double)scale imageResource:(id)resource
{
  height = size.height;
  width = size.width;
  sizedKey = [resource sizedKey];
  scale = [[_TUICachedImageFilterInfo alloc] initWithFilter:0 naturalSize:width contentsScale:height, scale];
  v10 = [sizedKey cacheKeyWithFilterInfo:scale];

  return v10;
}

+ (id)unsizedKeyForContentsScale:(double)scale imageResource:(id)resource
{
  unsizedKey = [resource unsizedKey];
  scale = [[_TUICachedImageFilterInfo alloc] initWithFilter:0 naturalSize:CGSizeZero.width contentsScale:CGSizeZero.height, scale];
  v7 = [unsizedKey cacheKeyWithFilterInfo:scale];

  return v7;
}

@end