@interface _BKCoverResource
- (CGSize)naturalSize;
- (TUIImageResourceCacheKey)sizedKey;
- (TUIImageResourceCacheKey)unsizedKey;
- (_BKCoverResource)initWithQueue:(id)queue notifyQueue:(id)notifyQueue assetID:(id)d resourceOptions:(id)options naturalSize:(CGSize)size contentsScale:(double)scale;
- (id)imageContentWithOptions:(unint64_t)options;
- (id)loadImage;
- (id)newImageResourceWithSize:(CGSize)size;
- (void)_nq_loadedImage:(id)image withIntrinsicSize:(CGSize)size;
- (void)_q_loadIfNeeded;
- (void)_q_unload;
- (void)addInterest;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)loadIntrinsicSize;
- (void)removeInterest;
- (void)removeObserver:(id)observer;
@end

@implementation _BKCoverResource

- (_BKCoverResource)initWithQueue:(id)queue notifyQueue:(id)notifyQueue assetID:(id)d resourceOptions:(id)options naturalSize:(CGSize)size contentsScale:(double)scale
{
  height = size.height;
  width = size.width;
  queueCopy = queue;
  notifyQueueCopy = notifyQueue;
  dCopy = d;
  optionsCopy = options;
  v37.receiver = self;
  v37.super_class = _BKCoverResource;
  v20 = [(_BKCoverResource *)&v37 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_queue, queue);
    objc_storeStrong(&v21->_notifyQueue, notifyQueue);
    v22 = [dCopy copy];
    assetID = v21->_assetID;
    v21->_assetID = v22;

    objc_storeStrong(&v21->_resourceOptions, options);
    v21->_naturalSize.width = width;
    v21->_naturalSize.height = height;
    v21->_contentsScale = scale;
    v24 = [NSHashTable hashTableWithOptions:517];
    observers = v21->_observers;
    v21->_observers = v24;

    v21->_interestCount = 0;
    v26 = *&UIEdgeInsetsZero.bottom;
    *&v21->_imageContextInsets.top = *&UIEdgeInsetsZero.top;
    *&v21->_imageContextInsets.bottom = v26;
    objc_opt_class();
    v27 = [optionsCopy objectForKeyedSubscript:@"prefersAsyncIntrinsicAspectRatio"];
    v28 = BUDynamicCast();

    v29 = 156.0;
    if ([v28 BOOLValue])
    {
      v30 = 0;
      intrinsicAspectRatio = 0;
    }

    else
    {
      v32 = +[BCCacheManager defaultCacheManager];
      v33 = [v32 metadataForIdentifier:dCopy];

      intrinsicAspectRatio = [v33 intrinsicAspectRatio];

      if (intrinsicAspectRatio && ([intrinsicAspectRatio doubleValue], v34 > 0.0))
      {
        [intrinsicAspectRatio doubleValue];
        v29 = v35 * 100.0;
        v30 = 1;
      }

      else
      {
        v30 = 0;
      }
    }

    v21->_intrinsicSize.width = 100.0;
    v21->_intrinsicSize.height = v29;
    v21->_hasIntrinsic = v30;
  }

  return v21;
}

- (id)newImageResourceWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [_BKCoverResource alloc];
  queue = self->_queue;
  notifyQueue = self->_notifyQueue;
  assetID = self->_assetID;
  resourceOptions = self->_resourceOptions;
  contentsScale = self->_contentsScale;

  return [(_BKCoverResource *)v6 initWithQueue:queue notifyQueue:notifyQueue assetID:assetID resourceOptions:resourceOptions naturalSize:width contentsScale:height, contentsScale];
}

- (TUIImageResourceCacheKey)sizedKey
{
  contentsScale = self->_contentsScale;
  v3 = self->_naturalSize.width * contentsScale;
  v4 = contentsScale * self->_naturalSize.height;
  unsizedKey = [(_BKCoverResource *)self unsizedKey];
  v6 = [unsizedKey cacheKeyWithSize:{v3, v4}];

  return v6;
}

- (TUIImageResourceCacheKey)unsizedKey
{
  v2 = [[TUIImageResourceCacheKey alloc] initWithID:self->_assetID];

  return v2;
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100103A40;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = _BKCoverResource;
  [(_BKCoverResource *)&v4 dealloc];
}

- (id)imageContentWithOptions:(unint64_t)options
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000273D0;
  v11 = sub_100027620;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100103B6C;
  block[3] = &unk_100A07588;
  block[5] = &v7;
  block[6] = options;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)loadIntrinsicSize
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100103D0C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)loadImage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000273D0;
  v10 = sub_100027620;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100103E10;
  v5[3] = &unk_100A037D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
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
    v7[2] = sub_100103FAC;
    v7[3] = &unk_100A03440;
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
    v7[2] = sub_100104060;
    v7[3] = &unk_100A03440;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_sync(queue, v7);
  }
}

- (void)addInterest
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001040E0;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)removeInterest
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010416C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_q_loadIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_loading)
  {
    coverImage = [(_BKCoverResource *)self coverImage];

    if (!coverImage)
    {
      self->_loading = 1;
      objc_initWeak(&location, self);
      mainScreenScaleFactor();
      v5 = v4;
      width = self->_naturalSize.width;
      height = self->_naturalSize.height;
      v8 = [(NSDictionary *)self->_resourceOptions objectForKeyedSubscript:@"filter"];
      if ([v8 isEqualToString:BCUCoverEffectsIdentifierSeriesStackDiagonal])
      {
        v9 = 32;
      }

      else if ([v8 isEqualToString:BCUCoverEffectsIdentifierSeriesStackHorizontal])
      {
        v9 = 4128;
      }

      else if ([v8 isEqualToString:BCUCoverEffectsIdentifierSeriesStackHorizontalRTL])
      {
        v9 = 4256;
      }

      else
      {
        v9 = 0;
      }

      v10 = *&v5 * width;
      v11 = *&v5 * height;
      v12 = [BICDescribedImage describedImageWithIdentifier:self->_assetID size:v9 processingOptions:floorf(v10), floorf(v11)];
      [v12 setRequestOptions:8];
      [v12 setPriority:5];
      v13 = _os_activity_create(&_mh_execute_header, "BKCoverResourceProvider/fetching-cover", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001043C4;
      block[3] = &unk_100A07650;
      v17 = v12;
      v18 = v8;
      v14 = v8;
      v15 = v12;
      objc_copyWeak(v19, &location);
      v19[1] = v5;
      os_activity_apply(v13, block);
      objc_destroyWeak(v19);

      objc_destroyWeak(&location);
    }
  }
}

- (void)_q_unload
{
  dispatch_assert_queue_V2(self->_queue);
  [(_BKCoverResource *)self setCoverImage:0];
  v3 = *&UIEdgeInsetsZero.bottom;
  *&self->_imageContextInsets.top = *&UIEdgeInsetsZero.top;
  *&self->_imageContextInsets.bottom = v3;
}

- (void)_nq_loadedImage:(id)image withIntrinsicSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  dispatch_assert_queue_V2(self->_notifyQueue);
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000273D0;
  v39 = sub_100027620;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v8 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_imageContextInsets.top, *&UIEdgeInsetsZero.top), vceqq_f64(*&self->_imageContextInsets.bottom, *&UIEdgeInsetsZero.bottom))));
  if (v8)
  {
    v9 = 100.0;
  }

  else
  {
    v9 = width;
  }

  if (v8)
  {
    v10 = height / width * 100.0;
  }

  else
  {
    v10 = height;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100105124;
  block[3] = &unk_100A07678;
  block[4] = self;
  v27 = &v35;
  v29 = v9;
  v30 = v10;
  v12 = imageCopy;
  v26 = v12;
  v28 = &v31;
  dispatch_sync(queue, block);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v36[5];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v41 count:16];
  if (v14)
  {
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 imageResourceDidChangeImage:self];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v41 count:16];
    }

    while (v14);
  }

  if (*(v32 + 24) == 1)
  {
    v18 = +[TUITransactionOptions noAnimationOptions];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001051C4;
    v20[3] = &unk_100A076A0;
    v20[4] = self;
    v20[5] = &v35;
    v19 = [TUITransaction currentOrNewTransactionWithOptions:v18 block:v20];
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
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