@interface _TUICachedImageResource
- (BOOL)_q_shouldLoadResourceIfNeededAllowDefer:(BOOL)defer;
- (BOOL)isImageLoaded;
- (BOOL)isImageLoading;
- (CGSize)naturalSize;
- (TUIImageResourceCacheKey)sizedKey;
- (TUIImageResourceCacheKey)unsizedKey;
- (_TUICachedImageResource)initWithCache:(id)cache unsizedCacheSet:(id)set queue:(id)queue naturalSize:(CGSize)size contentsScale:(double)scale;
- (id)imageContentWithOptions:(unint64_t)options;
- (id)loadImage;
- (void)_loadedImage:(id)image insets:(UIEdgeInsets)insets temporary:(BOOL)temporary;
- (void)_q_loadIntrinsicSize:(CGSize)size;
- (void)_q_unloadResource;
- (void)_refresh;
- (void)addInterest;
- (void)addNonVolatileInterest;
- (void)addObserver:(id)observer;
- (void)deferredLoadImageIfNeeded;
- (void)loadIntrinsicSize;
- (void)loadLargestLoadedImageAsTemporary;
- (void)pauseUnload;
- (void)removeInterest;
- (void)removeNonVolatileInterest;
- (void)removeObserver:(id)observer;
- (void)resumeUnload;
- (void)updateImage:(id)image allowUnload:(BOOL)unload temporary:(BOOL)temporary;
@end

@implementation _TUICachedImageResource

- (_TUICachedImageResource)initWithCache:(id)cache unsizedCacheSet:(id)set queue:(id)queue naturalSize:(CGSize)size contentsScale:(double)scale
{
  height = size.height;
  width = size.width;
  cacheCopy = cache;
  setCopy = set;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = _TUICachedImageResource;
  v16 = [(_TUICachedImageResource *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_cache, cacheCopy);
    objc_storeStrong(&v17->_unsizedCacheSet, set);
    objc_storeStrong(&v17->_queue, queue);
    v17->_naturalSize.width = width;
    v17->_naturalSize.height = height;
    v17->_contentsScale = scale;
    v18 = [NSHashTable hashTableWithOptions:517];
    observers = v17->_observers;
    v17->_observers = v18;

    *&v17->_state &= 0xF8u;
    v17->_intrinsicSize = CGSizeZero;
    [(_TUIImageResourceUnsizedCacheSet *)v17->_unsizedCacheSet addImageResource:v17];
  }

  return v17;
}

- (TUIImageResourceCacheKey)sizedKey
{
  v2 = objc_alloc_init(TUIImageResourceCacheKey);

  return v2;
}

- (TUIImageResourceCacheKey)unsizedKey
{
  v2 = objc_alloc_init(TUIImageResourceCacheKey);

  return v2;
}

- (void)addInterest
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_A208C;
  v4[3] = &unk_25DE80;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(queue, v4);
  if (*(v6 + 24) == 1)
  {
    [(_TUICachedImageResource *)self loadResource];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)removeInterest
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A2148;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)addNonVolatileInterest
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_A2248;
  v4[3] = &unk_25DE80;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(queue, v4);
  if (*(v6 + 24) == 1)
  {
    [(_TUICachedImageResource *)self loadResource];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)deferredLoadImageIfNeeded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_A23A8;
  v4[3] = &unk_25DE80;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(queue, v4);
  if (*(v6 + 24) == 1)
  {
    [(_TUICachedImageResource *)self loadResource];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)removeNonVolatileInterest
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A2464;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)loadImage
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_A2610;
  v11 = sub_A2620;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A2628;
  block[3] = &unk_260980;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v7;
  dispatch_sync(queue, block);
  if (*(v14 + 24) == 1)
  {
    [(_TUICachedImageResource *)self loadResource];
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

- (BOOL)_q_shouldLoadResourceIfNeededAllowDefer:(BOOL)defer
{
  deferCopy = defer;
  dispatch_assert_queue_V2(self->_queue);
  state = self->_state;
  if (state & 0xA) == 2 || (*&self->_state)
  {
    return 0;
  }

  if (self->_image && deferCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cache);
    v8 = [WeakRetained shouldDeferLoadForResource:self];

    if (v8)
    {
      return 0;
    }

    state = self->_state;
  }

  *&self->_state = state | 1;
  return 1;
}

- (void)_q_unloadResource
{
  dispatch_assert_queue_V2(self->_queue);
  image = self->_image;
  self->_image = 0;

  v4 = *&UIEdgeInsetsZero.bottom;
  *&self->_insets.top = *&UIEdgeInsetsZero.top;
  *&self->_insets.bottom = v4;
  *&self->_state &= 0xFCu;
}

- (void)_refresh
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_A2890;
  v4[3] = &unk_25DE80;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(queue, v4);
  if (*(v6 + 24) == 1)
  {
    [(_TUICachedImageResource *)self loadResource];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)pauseUnload
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A294C;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)resumeUnload
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A29D4;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_loadedImage:(id)image insets:(UIEdgeInsets)insets temporary:(BOOL)temporary
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  imageCopy = image;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_A2610;
  v53 = sub_A2620;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A2DCC;
  block[3] = &unk_2609A8;
  temporaryCopy = temporary;
  block[4] = self;
  v31 = &v45;
  v32 = v44;
  v13 = imageCopy;
  v35 = top;
  v36 = left;
  v37 = bottom;
  v38 = right;
  v30 = v13;
  v33 = &v40;
  v34 = &v49;
  dispatch_sync(queue, block);
  v14 = v50[5];
  if (v14)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v55 count:16];
    if (v16)
    {
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v25 + 1) + 8 * v18);
          if (objc_opt_respondsToSelector())
          {
            [v19 imageResourceDidChangeImage:self];
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v55 count:16];
      }

      while (v16);
    }

    if (*(v41 + 24) == 1)
    {
      v20 = +[TUITransactionOptions defaultImplicitOptions];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_A2FE4;
      v24[3] = &unk_2609D0;
      v24[4] = self;
      v24[5] = &v49;
      v21 = [TUITransaction currentOrNewTransactionWithOptions:v20 block:v24];
    }
  }

  if (*(v46 + 24) == 1)
  {
    v22 = self->_queue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_A310C;
    v23[3] = &unk_25DE80;
    v23[4] = self;
    v23[5] = v44;
    dispatch_sync(v22, v23);
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
}

- (void)_q_loadIntrinsicSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  dispatch_assert_queue_V2(self->_queue);
  self->_intrinsicSize.width = width;
  self->_intrinsicSize.height = height;
  *&self->_state |= 4u;
}

- (void)updateImage:(id)image allowUnload:(BOOL)unload temporary:(BOOL)temporary
{
  imageCopy = image;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_A2610;
  v52 = sub_A2620;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0;
  image = [imageCopy image];
  [imageCopy insets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A34D0;
  block[3] = &unk_2609F8;
  block[4] = self;
  v19 = image;
  v37 = v11;
  v38 = v13;
  v39 = v15;
  v40 = v17;
  temporaryCopy = temporary;
  v33 = v19;
  v34 = &v44;
  unloadCopy = unload;
  v35 = v43;
  v36 = &v48;
  dispatch_sync(queue, block);
  v20 = v49[5];
  if (v20)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v28 objects:v54 count:16];
    if (v22)
    {
      v23 = *v29;
      do
      {
        v24 = 0;
        do
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v28 + 1) + 8 * v24);
          if (objc_opt_respondsToSelector())
          {
            [v25 imageResourceDidChangeImage:self];
          }

          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [v21 countByEnumeratingWithState:&v28 objects:v54 count:16];
      }

      while (v22);
    }
  }

  if (*(v45 + 24) == 1)
  {
    v26 = self->_queue;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_A3618;
    v27[3] = &unk_25DE80;
    v27[4] = self;
    v27[5] = v43;
    dispatch_sync(v26, v27);
  }

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
}

- (id)imageContentWithOptions:(unint64_t)options
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_A2610;
  v11 = sub_A2620;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A3734;
  block[3] = &unk_260A20;
  block[5] = &v7;
  block[6] = options;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)isImageLoaded
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A3898;
  v5[3] = &unk_25EFF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isImageLoading
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A3970;
  v5[3] = &unk_25EFF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)loadIntrinsicSize
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_A3A60;
  v4[3] = &unk_25DE80;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(queue, v4);
  if (*(v6 + 24) == 1)
  {
    [(_TUICachedImageResource *)self loadResource];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_A3B48;
    v7[3] = &unk_25DCA0;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_sync(queue, v7);
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_A3BFC;
    v7[3] = &unk_25DCA0;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_sync(queue, v7);
  }
}

- (void)loadLargestLoadedImageAsTemporary
{
  v5 = [(_TUIImageResourceUnsizedCacheSet *)self->_unsizedCacheSet largestResourceWithContentAndNaturalSize:self->_naturalSize.width contentsScale:self->_naturalSize.height, self->_contentsScale];
  v3 = [v5 imageContentWithOptions:1];
  image = [v3 image];

  if (image)
  {
    [(_TUICachedImageResource *)self updateImage:v3 allowUnload:0 temporary:1];
  }
}

- (CGSize)naturalSize
{
  width = self->_naturalSize.width;
  height = self->_naturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end