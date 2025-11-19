@interface _TUICachedSeriesStackImageResource
+ (id)sizedKeyForNaturalSize:(CGSize)a3 contentsScale:(double)a4 imageResources:(id)a5;
+ (id)unsizedKeyForContentsScale:(double)a3 imageResources:(id)a4;
- (_TUICachedSeriesStackImageResource)initWithCache:(id)a3 unsizedCacheSet:(id)a4 queue:(id)a5 naturalSize:(CGSize)a6 contentsScale:(double)a7 resources:(id)a8 filters:(id)a9 imageSetFilter:(id)a10;
- (id)newImageResourceWithSize:(CGSize)a3;
- (id)sizedKey;
- (id)unsizedKey;
- (void)_applyToImages:(id)a3 completion:(id)a4;
- (void)_endFilterOperation:(id)a3;
- (void)_startFilterOperation:(id)a3;
- (void)imageResourceDidChangeImage:(id)a3;
- (void)loadResource;
@end

@implementation _TUICachedSeriesStackImageResource

+ (id)sizedKeyForNaturalSize:(CGSize)a3 contentsScale:(double)a4 imageResources:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = a5;
  v9 = [[_TUICachedImageFilterInfo alloc] initWithFilter:0 naturalSize:width contentsScale:height, a4];
  v10 = [v8 bu_arrayByInvokingBlock:&stru_260AD8];

  v11 = [[TUIImageResourceCacheKey alloc] initWithChildren:v10];
  v12 = [(TUIImageResourceCacheKey *)v11 cacheKeyWithFilterInfo:v9];

  return v12;
}

+ (id)unsizedKeyForContentsScale:(double)a3 imageResources:(id)a4
{
  v5 = a4;
  v6 = [[_TUICachedImageFilterInfo alloc] initWithFilter:0 naturalSize:CGSizeZero.width contentsScale:CGSizeZero.height, a3];
  v7 = [v5 bu_arrayByInvokingBlock:&stru_260AF8];

  v8 = [[TUIImageResourceCacheKey alloc] initWithChildren:v7];
  v9 = [(TUIImageResourceCacheKey *)v8 cacheKeyWithFilterInfo:v6];

  return v9;
}

- (_TUICachedSeriesStackImageResource)initWithCache:(id)a3 unsizedCacheSet:(id)a4 queue:(id)a5 naturalSize:(CGSize)a6 contentsScale:(double)a7 resources:(id)a8 filters:(id)a9 imageSetFilter:(id)a10
{
  height = a6.height;
  width = a6.width;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v37.receiver = self;
  v37.super_class = _TUICachedSeriesStackImageResource;
  v23 = [(_TUICachedImageResource *)&v37 initWithCache:a3 unsizedCacheSet:a4 queue:a5 naturalSize:width contentsScale:height, a7];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_imageResources, a8);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = v24->_imageResources;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        v29 = 0;
        do
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v33 + 1) + 8 * v29) addObserver:{v24, v33}];
          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v27);
    }

    objc_storeStrong(&v24->_filters, a9);
    objc_storeStrong(&v24->_imageSetFilter, a10);
    v30 = +[NSMapTable strongToStrongObjectsMapTable];
    cgImages = v24->_cgImages;
    v24->_cgImages = v30;

    v24->_operationLock._os_unfair_lock_opaque = 0;
  }

  return v24;
}

- (id)sizedKey
{
  v3 = objc_opt_class();
  [(_TUICachedImageResource *)self naturalSize];
  v5 = v4;
  v7 = v6;
  [(_TUICachedImageResource *)self contentsScale];
  v9 = v8;
  v10 = [(_TUICachedSeriesStackImageResource *)self imageResources];
  v11 = [v3 sizedKeyForNaturalSize:v10 contentsScale:v5 imageResources:{v7, v9}];

  return v11;
}

- (id)unsizedKey
{
  v3 = objc_opt_class();
  [(_TUICachedImageResource *)self contentsScale];
  v5 = v4;
  v6 = [(_TUICachedSeriesStackImageResource *)self imageResources];
  v7 = [v3 unsizedKeyForContentsScale:v6 imageResources:v5];

  return v7;
}

- (id)newImageResourceWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_TUICachedSeriesStackImageResource *)self imageResources];
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    v12 = CGSizeZero.height;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [*(*(&v23 + 1) + 8 * v13) newImageResourceWithSize:{CGSizeZero.width, v12, v23}];
        [v7 addObject:v14];

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  WeakRetained = objc_loadWeakRetained(&self->super._cache);
  v16 = [(_TUICachedSeriesStackImageResource *)self filters];
  v17 = [v16 valueForKeyPath:@"identifier"];
  v18 = [(_TUICachedSeriesStackImageResource *)self imageSetFilter];
  v19 = [v18 identifier];
  [(_TUICachedImageResource *)self contentsScale];
  v21 = [WeakRetained imageResourceForImageResources:v7 filters:v17 imageSetFilter:v19 naturalSize:width contentsScale:{height, v20}];

  return v21;
}

- (void)loadResource
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(_TUICachedSeriesStackImageResource *)self imageResources];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) loadImage];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)imageResourceDidChangeImage:(id)a3
{
  v4 = a3;
  v5 = [(_TUICachedSeriesStackImageResource *)self cgImages];
  if ([v4 isImageLoaded])
  {
    v6 = [v4 imageContentWithOptions:1];
    v7 = [v6 image];
    v8 = [v7 CGImage];

    if (v8)
    {
      [v5 setObject:v8 forKey:v4];
    }

    else
    {
      v9 = TUIImageCacheLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_19A500(v4, v9);
      }
    }
  }

  v10 = [(_TUICachedSeriesStackImageResource *)self imageResources];
  v11 = [v10 count];
  v12 = [v5 count];
  v13 = TUIImageCacheLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12 == v11)
  {
    v25 = self;
    if (v14)
    {
      sub_19A5B0(v5, v11, v13);
    }

    v13 = [NSMutableArray arrayWithCapacity:v11];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v10;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = [v5 objectForKey:{v20, v24}];
          if (v21)
          {
            [v13 addObject:v21];
          }

          else
          {
            v22 = TUIImageCacheLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = [v4 url];
              *buf = 134218242;
              v34 = v20;
              v35 = 2112;
              v36 = v23;
              _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Map tapble for key ImageResouce %p (%@) has no CGImageRef.", buf, 0x16u);
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v17);
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_A6518;
    v26[3] = &unk_260B20;
    v27 = v5;
    v28 = v25;
    [(_TUICachedSeriesStackImageResource *)v25 _applyToImages:v13 completion:v26];

    v10 = v24;
  }

  else if (v14)
  {
    *buf = 134218496;
    v34 = v12;
    v35 = 2048;
    v36 = v11;
    v37 = 2048;
    v38 = v5;
    _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "Got %ld out of %ld images, skip series cover generation. <%p>", buf, 0x20u);
  }
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

- (void)_applyToImages:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_TUICachedSeriesStackImageResource *)self imageSetFilter];
  v9 = [(_TUICachedSeriesStackImageResource *)self filters];
  [(_TUICachedImageResource *)self naturalSize];
  v11 = v10;
  v13 = v12;
  [(_TUICachedImageResource *)self contentsScale];
  v15 = v14;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_A6810;
  v21 = &unk_260B48;
  v22 = self;
  v23 = v6;
  v16 = v6;
  v17 = [v8 newOperationWithImages:v7 filters:v9 size:1 contentsScale:&v18 waitForCPUSynchronization:v11 completion:{v13, v15}];

  [(_TUICachedSeriesStackImageResource *)self _startFilterOperation:v17, v18, v19, v20, v21, v22];
}

@end