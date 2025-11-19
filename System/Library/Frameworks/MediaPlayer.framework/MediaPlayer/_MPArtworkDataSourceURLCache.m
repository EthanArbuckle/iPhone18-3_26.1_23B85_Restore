@interface _MPArtworkDataSourceURLCache
- (_MPArtworkDataSourceURLCache)initWithMemoryCapacity:(unint64_t)a3 diskCapacity:(unint64_t)a4 diskPath:(id)a5;
- (void)setRepresentationSize:(CGSize)a3 forRequest:(id)a4;
- (void)storeCachedResponse:(id)a3 forRequest:(id)a4;
@end

@implementation _MPArtworkDataSourceURLCache

- (void)setRepresentationSize:(CGSize)a3 forRequest:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65___MPArtworkDataSourceURLCache_setRepresentationSize_forRequest___block_invoke;
  v10[3] = &unk_1E767B0C0;
  v12 = width;
  v13 = height;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_barrier_async(accessQueue, v10);
}

- (void)storeCachedResponse:(id)a3 forRequest:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
  }

  v12 = v11;

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1554;
  v29 = __Block_byref_object_dispose__1555;
  v30 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63___MPArtworkDataSourceURLCache_storeCachedResponse_forRequest___block_invoke;
  block[3] = &unk_1E7681330;
  v24 = &v25;
  block[4] = self;
  v14 = v7;
  v23 = v14;
  dispatch_sync(accessQueue, block);
  if (![v26[5] length])
  {
    v15 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v32 = v14;
      _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "[MPArtwork] Asked to cache response for %{public}@, but no size was set.", buf, 0xCu);
    }

    v16 = v26[5];
    v26[5] = @"{-1,-1}";
  }

  [v12 setObject:v26[5] forKeyedSubscript:@"representationSize"];
  v17 = objc_alloc(MEMORY[0x1E696AAF8]);
  v18 = [v6 response];
  v19 = [v6 data];
  v20 = [v17 initWithResponse:v18 data:v19 userInfo:v12 storagePolicy:0];

  v21.receiver = self;
  v21.super_class = _MPArtworkDataSourceURLCache;
  [(NSURLCache *)&v21 storeCachedResponse:v20 forRequest:v14];

  _Block_object_dispose(&v25, 8);
}

- (_MPArtworkDataSourceURLCache)initWithMemoryCapacity:(unint64_t)a3 diskCapacity:(unint64_t)a4 diskPath:(id)a5
{
  v11.receiver = self;
  v11.super_class = _MPArtworkDataSourceURLCache;
  v5 = [(NSURLCache *)&v11 initWithMemoryCapacity:a3 diskCapacity:a4 diskPath:a5];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    requestSizeMap = v5->_requestSizeMap;
    v5->_requestSizeMap = v6;

    v8 = dispatch_queue_create("com.apple.mediaplayer.MPArtworkDataSourceURLCache.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v8;
  }

  return v5;
}

@end