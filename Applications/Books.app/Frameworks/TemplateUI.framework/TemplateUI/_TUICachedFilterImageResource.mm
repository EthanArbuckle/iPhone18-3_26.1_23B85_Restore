@interface _TUICachedFilterImageResource
+ (id)sizedKeyForFilter:(id)filter naturalSize:(CGSize)size contentsScale:(double)scale imageResource:(id)resource;
+ (id)unsizedKeyForFilter:(id)filter contentsScale:(double)scale imageResource:(id)resource;
- (_TUICachedFilterImageResource)initWithCache:(id)cache unsizedCacheSet:(id)set queue:(id)queue naturalSize:(CGSize)size contentsScale:(double)scale resource:(id)resource filter:(id)filter;
- (id)_filterOptions;
- (id)debugFunctionalDescription;
- (id)newImageResourceWithSize:(CGSize)size;
- (id)sizedKey;
- (id)unsizedKey;
- (void)_endFilterOperation:(id)operation;
- (void)_startFilterOperation:(id)operation;
- (void)applyToImage:(id)image completion:(id)completion;
@end

@implementation _TUICachedFilterImageResource

- (_TUICachedFilterImageResource)initWithCache:(id)cache unsizedCacheSet:(id)set queue:(id)queue naturalSize:(CGSize)size contentsScale:(double)scale resource:(id)resource filter:(id)filter
{
  height = size.height;
  width = size.width;
  filterCopy = filter;
  v22.receiver = self;
  v22.super_class = _TUICachedFilterImageResource;
  scale = [(_TUICachedPipelineImageResource *)&v22 initWithCache:cache unsizedCacheSet:set queue:queue naturalSize:resource contentsScale:width resource:height, scale];
  v20 = scale;
  if (scale)
  {
    objc_storeStrong(&scale->_filter, filter);
    v20->_operationLock._os_unfair_lock_opaque = 0;
  }

  return v20;
}

- (id)debugFunctionalDescription
{
  imageResource = [(_TUICachedPipelineImageResource *)self imageResource];
  debugFunctionalDescription = [imageResource debugFunctionalDescription];
  identifier = [(BCUImageFilter *)self->_filter identifier];
  v6 = [NSString stringWithFormat:@"(%@).filter(%@)", debugFunctionalDescription, identifier];

  return v6;
}

- (id)_filterOptions
{
  imageResource = [(_TUICachedPipelineImageResource *)self imageResource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    imageResource2 = [(_TUICachedPipelineImageResource *)self imageResource];
    filterOptions = [imageResource2 filterOptions];
  }

  else
  {
    filterOptions = 0;
  }

  return filterOptions;
}

- (void)_startFilterOperation:(id)operation
{
  operationCopy = operation;
  os_unfair_lock_lock(&self->_operationLock);
  filterOperation = self->_filterOperation;
  self->_filterOperation = operationCopy;
  v7 = operationCopy;
  v6 = filterOperation;

  os_unfair_lock_unlock(&self->_operationLock);
  [(BCUOperation *)v6 cancel];
  [(BCUOperation *)v7 start];
}

- (void)_endFilterOperation:(id)operation
{
  operationCopy = operation;
  os_unfair_lock_lock(&self->_operationLock);
  filterOperation = self->_filterOperation;

  if (filterOperation == operationCopy)
  {
    self->_filterOperation = 0;
  }

  os_unfair_lock_unlock(&self->_operationLock);
}

- (void)applyToImage:(id)image completion:(id)completion
{
  completionCopy = completion;
  filter = self->_filter;
  image = [image image];
  cGImage = [image CGImage];
  [(_TUICachedImageResource *)self naturalSize];
  v11 = v10;
  v13 = v12;
  [(_TUICachedImageResource *)self contentsScale];
  v15 = v14;
  _filterOptions = [(_TUICachedFilterImageResource *)self _filterOptions];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_A5490;
  v23 = &unk_260A98;
  selfCopy = self;
  v25 = completionCopy;
  v17 = completionCopy;
  LODWORD(v18) = 1056964608;
  v19 = [(BCUImageFilter *)filter newOperationWithImage:cGImage size:_filterOptions contentsScale:0 priority:0 options:&v20 waitForCPUSynchronization:v11 logKey:v13 completion:v15, v18];

  [(_TUICachedFilterImageResource *)self _startFilterOperation:v19, v20, v21, v22, v23, selfCopy];
}

- (id)newImageResourceWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  WeakRetained = objc_loadWeakRetained(&self->super.super._cache);
  imageResource = [(_TUICachedPipelineImageResource *)self imageResource];
  v8 = [imageResource newImageResourceWithSize:{width, height}];
  [(_TUICachedImageResource *)self contentsScale];
  v10 = v9;
  identifier = [(BCUImageFilter *)self->_filter identifier];
  _filterOptions = [(_TUICachedFilterImageResource *)self _filterOptions];
  v13 = [WeakRetained imageResource:v8 naturalSize:identifier contentsScale:_filterOptions withFilter:width filterOptions:{height, v10}];

  return v13;
}

+ (id)sizedKeyForFilter:(id)filter naturalSize:(CGSize)size contentsScale:(double)scale imageResource:(id)resource
{
  height = size.height;
  width = size.width;
  filterCopy = filter;
  sizedKey = [resource sizedKey];
  scale = [[_TUICachedImageFilterInfo alloc] initWithFilter:filterCopy naturalSize:width contentsScale:height, scale];

  v13 = [sizedKey cacheKeyWithFilterInfo:scale];

  return v13;
}

+ (id)unsizedKeyForFilter:(id)filter contentsScale:(double)scale imageResource:(id)resource
{
  filterCopy = filter;
  unsizedKey = [resource unsizedKey];
  scale = [[_TUICachedImageFilterInfo alloc] initWithFilter:filterCopy naturalSize:CGSizeZero.width contentsScale:CGSizeZero.height, scale];

  v10 = [unsizedKey cacheKeyWithFilterInfo:scale];

  return v10;
}

- (id)sizedKey
{
  v14.receiver = self;
  v14.super_class = _TUICachedFilterImageResource;
  sizedKey = [(_TUICachedPipelineImageResource *)&v14 sizedKey];
  v4 = [_TUICachedImageFilterInfo alloc];
  filter = self->_filter;
  [(_TUICachedImageResource *)self naturalSize];
  v7 = v6;
  v9 = v8;
  [(_TUICachedImageResource *)self contentsScale];
  v11 = [(_TUICachedImageFilterInfo *)v4 initWithFilter:filter naturalSize:v7 contentsScale:v9, v10];
  v12 = [sizedKey cacheKeyWithFilterInfo:v11];

  return v12;
}

- (id)unsizedKey
{
  v10.receiver = self;
  v10.super_class = _TUICachedFilterImageResource;
  unsizedKey = [(_TUICachedPipelineImageResource *)&v10 unsizedKey];
  v4 = [_TUICachedImageFilterInfo alloc];
  filter = self->_filter;
  [(_TUICachedImageResource *)self contentsScale];
  v7 = [(_TUICachedImageFilterInfo *)v4 initWithFilter:filter naturalSize:CGSizeZero.width contentsScale:CGSizeZero.height, v6];
  v8 = [unsizedKey cacheKeyWithFilterInfo:v7];

  return v8;
}

@end