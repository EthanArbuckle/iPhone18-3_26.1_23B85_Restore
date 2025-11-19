@interface _TUICachedMediaBackdropImageResource
+ (id)sizedKeyForNaturalSize:(CGSize)a3 contentsScale:(double)a4 imageResource:(id)a5;
+ (id)unsizedKeyForContentsScale:(double)a3 imageResource:(id)a4;
- (_TUICachedMediaBackdropImageResource)initWithCache:(id)a3 unsizedCacheSet:(id)a4 queue:(id)a5 naturalSize:(CGSize)a6 contentsScale:(double)a7 resource:(id)a8;
- (id)debugFunctionalDescription;
- (id)sizedKey;
- (id)unsizedKey;
- (void)applyToImage:(id)a3 completion:(id)a4;
@end

@implementation _TUICachedMediaBackdropImageResource

- (_TUICachedMediaBackdropImageResource)initWithCache:(id)a3 unsizedCacheSet:(id)a4 queue:(id)a5 naturalSize:(CGSize)a6 contentsScale:(double)a7 resource:(id)a8
{
  v9.receiver = self;
  v9.super_class = _TUICachedMediaBackdropImageResource;
  result = [(_TUICachedPipelineImageResource *)&v9 initWithCache:a3 unsizedCacheSet:a4 queue:a5 naturalSize:a8 contentsScale:a6.width resource:a6.height, a7];
  if (result)
  {
    result->_operationLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (id)debugFunctionalDescription
{
  v2 = [(_TUICachedPipelineImageResource *)self imageResource];
  v3 = [v2 debugFunctionalDescription];
  v4 = [NSString stringWithFormat:@"(%@).MediaBackdropSnapshot", v3];

  return v4;
}

- (void)applyToImage:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
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
  v16 = v6;
  v17 = v9;
  v14 = v6;
  [TUIMediaBackdropSnapshotRenderer renderWithContent:v7 size:v15 contentScale:v11 completionHandler:v13, v9];
}

- (id)sizedKey
{
  v13.receiver = self;
  v13.super_class = _TUICachedMediaBackdropImageResource;
  v3 = [(_TUICachedPipelineImageResource *)&v13 sizedKey];
  v4 = [_TUICachedImageFilterInfo alloc];
  [(_TUICachedImageResource *)self naturalSize];
  v6 = v5;
  v8 = v7;
  [(_TUICachedImageResource *)self contentsScale];
  v10 = [(_TUICachedImageFilterInfo *)v4 initWithFilter:0 naturalSize:v6 contentsScale:v8, v9];
  v11 = [v3 cacheKeyWithFilterInfo:v10];

  return v11;
}

- (id)unsizedKey
{
  v9.receiver = self;
  v9.super_class = _TUICachedMediaBackdropImageResource;
  v3 = [(_TUICachedPipelineImageResource *)&v9 unsizedKey];
  v4 = [_TUICachedImageFilterInfo alloc];
  [(_TUICachedImageResource *)self contentsScale];
  v6 = [(_TUICachedImageFilterInfo *)v4 initWithFilter:0 naturalSize:CGSizeZero.width contentsScale:CGSizeZero.height, v5];
  v7 = [v3 cacheKeyWithFilterInfo:v6];

  return v7;
}

+ (id)sizedKeyForNaturalSize:(CGSize)a3 contentsScale:(double)a4 imageResource:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = [a5 sizedKey];
  v9 = [[_TUICachedImageFilterInfo alloc] initWithFilter:0 naturalSize:width contentsScale:height, a4];
  v10 = [v8 cacheKeyWithFilterInfo:v9];

  return v10;
}

+ (id)unsizedKeyForContentsScale:(double)a3 imageResource:(id)a4
{
  v5 = [a4 unsizedKey];
  v6 = [[_TUICachedImageFilterInfo alloc] initWithFilter:0 naturalSize:CGSizeZero.width contentsScale:CGSizeZero.height, a3];
  v7 = [v5 cacheKeyWithFilterInfo:v6];

  return v7;
}

@end