@interface _TUICachedFilterImageResource
+ (id)sizedKeyForFilter:(id)a3 naturalSize:(CGSize)a4 contentsScale:(double)a5 imageResource:(id)a6;
+ (id)unsizedKeyForFilter:(id)a3 contentsScale:(double)a4 imageResource:(id)a5;
- (_TUICachedFilterImageResource)initWithCache:(id)a3 unsizedCacheSet:(id)a4 queue:(id)a5 naturalSize:(CGSize)a6 contentsScale:(double)a7 resource:(id)a8 filter:(id)a9;
- (id)_filterOptions;
- (id)debugFunctionalDescription;
- (id)newImageResourceWithSize:(CGSize)a3;
- (id)sizedKey;
- (id)unsizedKey;
- (void)_endFilterOperation:(id)a3;
- (void)_startFilterOperation:(id)a3;
- (void)applyToImage:(id)a3 completion:(id)a4;
@end

@implementation _TUICachedFilterImageResource

- (_TUICachedFilterImageResource)initWithCache:(id)a3 unsizedCacheSet:(id)a4 queue:(id)a5 naturalSize:(CGSize)a6 contentsScale:(double)a7 resource:(id)a8 filter:(id)a9
{
  height = a6.height;
  width = a6.width;
  v18 = a9;
  v22.receiver = self;
  v22.super_class = _TUICachedFilterImageResource;
  v19 = [(_TUICachedPipelineImageResource *)&v22 initWithCache:a3 unsizedCacheSet:a4 queue:a5 naturalSize:a8 contentsScale:width resource:height, a7];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_filter, a9);
    v20->_operationLock._os_unfair_lock_opaque = 0;
  }

  return v20;
}

- (id)debugFunctionalDescription
{
  v3 = [(_TUICachedPipelineImageResource *)self imageResource];
  v4 = [v3 debugFunctionalDescription];
  v5 = [(BCUImageFilter *)self->_filter identifier];
  v6 = [NSString stringWithFormat:@"(%@).filter(%@)", v4, v5];

  return v6;
}

- (id)_filterOptions
{
  v3 = [(_TUICachedPipelineImageResource *)self imageResource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_TUICachedPipelineImageResource *)self imageResource];
    v6 = [v5 filterOptions];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_startFilterOperation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_operationLock);
  filterOperation = self->_filterOperation;
  self->_filterOperation = v4;
  v7 = v4;
  v6 = filterOperation;

  os_unfair_lock_unlock(&self->_operationLock);
  [(BCUOperation *)v6 cancel];
  [(BCUOperation *)v7 start];
}

- (void)_endFilterOperation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_operationLock);
  filterOperation = self->_filterOperation;

  if (filterOperation == v4)
  {
    self->_filterOperation = 0;
  }

  os_unfair_lock_unlock(&self->_operationLock);
}

- (void)applyToImage:(id)a3 completion:(id)a4
{
  v6 = a4;
  filter = self->_filter;
  v8 = [a3 image];
  v9 = [v8 CGImage];
  [(_TUICachedImageResource *)self naturalSize];
  v11 = v10;
  v13 = v12;
  [(_TUICachedImageResource *)self contentsScale];
  v15 = v14;
  v16 = [(_TUICachedFilterImageResource *)self _filterOptions];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_A5490;
  v23 = &unk_260A98;
  v24 = self;
  v25 = v6;
  v17 = v6;
  LODWORD(v18) = 1056964608;
  v19 = [(BCUImageFilter *)filter newOperationWithImage:v9 size:v16 contentsScale:0 priority:0 options:&v20 waitForCPUSynchronization:v11 logKey:v13 completion:v15, v18];

  [(_TUICachedFilterImageResource *)self _startFilterOperation:v19, v20, v21, v22, v23, v24];
}

- (id)newImageResourceWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->super.super._cache);
  v7 = [(_TUICachedPipelineImageResource *)self imageResource];
  v8 = [v7 newImageResourceWithSize:{width, height}];
  [(_TUICachedImageResource *)self contentsScale];
  v10 = v9;
  v11 = [(BCUImageFilter *)self->_filter identifier];
  v12 = [(_TUICachedFilterImageResource *)self _filterOptions];
  v13 = [WeakRetained imageResource:v8 naturalSize:v11 contentsScale:v12 withFilter:width filterOptions:{height, v10}];

  return v13;
}

+ (id)sizedKeyForFilter:(id)a3 naturalSize:(CGSize)a4 contentsScale:(double)a5 imageResource:(id)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = [a6 sizedKey];
  v12 = [[_TUICachedImageFilterInfo alloc] initWithFilter:v10 naturalSize:width contentsScale:height, a5];

  v13 = [v11 cacheKeyWithFilterInfo:v12];

  return v13;
}

+ (id)unsizedKeyForFilter:(id)a3 contentsScale:(double)a4 imageResource:(id)a5
{
  v7 = a3;
  v8 = [a5 unsizedKey];
  v9 = [[_TUICachedImageFilterInfo alloc] initWithFilter:v7 naturalSize:CGSizeZero.width contentsScale:CGSizeZero.height, a4];

  v10 = [v8 cacheKeyWithFilterInfo:v9];

  return v10;
}

- (id)sizedKey
{
  v14.receiver = self;
  v14.super_class = _TUICachedFilterImageResource;
  v3 = [(_TUICachedPipelineImageResource *)&v14 sizedKey];
  v4 = [_TUICachedImageFilterInfo alloc];
  filter = self->_filter;
  [(_TUICachedImageResource *)self naturalSize];
  v7 = v6;
  v9 = v8;
  [(_TUICachedImageResource *)self contentsScale];
  v11 = [(_TUICachedImageFilterInfo *)v4 initWithFilter:filter naturalSize:v7 contentsScale:v9, v10];
  v12 = [v3 cacheKeyWithFilterInfo:v11];

  return v12;
}

- (id)unsizedKey
{
  v10.receiver = self;
  v10.super_class = _TUICachedFilterImageResource;
  v3 = [(_TUICachedPipelineImageResource *)&v10 unsizedKey];
  v4 = [_TUICachedImageFilterInfo alloc];
  filter = self->_filter;
  [(_TUICachedImageResource *)self contentsScale];
  v7 = [(_TUICachedImageFilterInfo *)v4 initWithFilter:filter naturalSize:CGSizeZero.width contentsScale:CGSizeZero.height, v6];
  v8 = [v3 cacheKeyWithFilterInfo:v7];

  return v8;
}

@end