@interface CLKTreatedImageCache
+ (id)sharedInstance;
- (CLKTreatedImageCache)init;
- (id)_imageForKey:(id)key;
- (id)imageForRawImage:(id)image maxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius;
- (id)imageForRawImage:(id)image maxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize maskMode:(int64_t)mode;
- (id)imageForRawImage:(id)image scale:(double)scale sdkDeviceScale:(double)deviceScale cornerRadius:(double)radius;
- (id)imageForRawImage:(id)image scale:(double)scale sdkDeviceScale:(double)deviceScale maskMode:(int64_t)mode;
- (void)_queue_pruneCacheIfNecessary;
- (void)purgeCache;
@end

@implementation CLKTreatedImageCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[CLKTreatedImageCache sharedInstance];
  }

  v3 = sharedInstance_sharedCache;

  return v3;
}

void __38__CLKTreatedImageCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CLKTreatedImageCache);
  v1 = sharedInstance_sharedCache;
  sharedInstance_sharedCache = v0;

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:sharedInstance_sharedCache selector:sel_purgeCache name:@"CLKClearCacheRequestNotification" object:0];
}

- (void)purgeCache
{
  [(NSMutableDictionary *)self->_cache removeAllObjects];
  recentlyUsedKeys = self->_recentlyUsedKeys;

  [(NSMutableArray *)recentlyUsedKeys removeAllObjects];
}

- (CLKTreatedImageCache)init
{
  v10.receiver = self;
  v10.super_class = CLKTreatedImageCache;
  v2 = [(CLKTreatedImageCache *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    recentlyUsedKeys = v2->_recentlyUsedKeys;
    v2->_recentlyUsedKeys = v5;

    v7 = dispatch_queue_create("com.apple.ClockKit.CLKTreatedImageCache", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v7;
  }

  return v2;
}

- (id)imageForRawImage:(id)image scale:(double)scale sdkDeviceScale:(double)deviceScale maskMode:(int64_t)mode
{
  imageCopy = image;
  v11 = imageCopy;
  if (!imageCopy || ([imageCopy size], v12 <= 0.0))
  {
    v16 = 0;
    v15 = v11;
    goto LABEL_6;
  }

  [v11 size];
  v14 = v13;

  if (v14 > 0.0)
  {
    v15 = [CLKTreatedImageKey keyWithRawImage:v11 scale:mode sdkDeviceScale:scale maskMode:deviceScale];
    v16 = [(CLKTreatedImageCache *)self _imageForKey:v15];
LABEL_6:

    goto LABEL_7;
  }

  v16 = 0;
LABEL_7:

  return v16;
}

- (id)imageForRawImage:(id)image scale:(double)scale sdkDeviceScale:(double)deviceScale cornerRadius:(double)radius
{
  imageCopy = image;
  v11 = imageCopy;
  if (!imageCopy || ([imageCopy size], v12 <= 0.0))
  {
    v16 = 0;
    v15 = v11;
    goto LABEL_6;
  }

  [v11 size];
  v14 = v13;

  if (v14 > 0.0)
  {
    v15 = [CLKTreatedImageKey keyWithRawImage:v11 scale:scale sdkDeviceScale:deviceScale cornerRadius:radius];
    v16 = [(CLKTreatedImageCache *)self _imageForKey:v15];
LABEL_6:

    goto LABEL_7;
  }

  v16 = 0;
LABEL_7:

  return v16;
}

- (id)imageForRawImage:(id)image maxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize maskMode:(int64_t)mode
{
  height = deviceSize.height;
  width = deviceSize.width;
  v9 = size.height;
  v10 = size.width;
  imageCopy = image;
  v13 = imageCopy;
  if (!imageCopy || ([imageCopy size], v14 <= 0.0))
  {
    v18 = 0;
    height = v13;
    goto LABEL_6;
  }

  [v13 size];
  v16 = v15;

  if (v16 > 0.0)
  {
    height = [CLKTreatedImageKey keyWithRawImage:v13 maxSDKSize:mode maxDeviceSize:v10 maskMode:v9, width, height];
    v18 = [(CLKTreatedImageCache *)self _imageForKey:height];
LABEL_6:

    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:

  return v18;
}

- (id)imageForRawImage:(id)image maxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius
{
  height = deviceSize.height;
  width = deviceSize.width;
  v9 = size.height;
  v10 = size.width;
  imageCopy = image;
  v13 = imageCopy;
  if (!imageCopy || ([imageCopy size], v14 <= 0.0))
  {
    v18 = 0;
    radius = v13;
    goto LABEL_6;
  }

  [v13 size];
  v16 = v15;

  if (v16 > 0.0)
  {
    radius = [CLKTreatedImageKey keyWithRawImage:v13 maxSDKSize:v10 maxDeviceSize:v9 cornerRadius:width, height, radius];
    v18 = [(CLKTreatedImageCache *)self _imageForKey:radius];
LABEL_6:

    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:

  return v18;
}

- (void)_queue_pruneCacheIfNecessary
{
  if ([(NSMutableDictionary *)self->_cache count]>= 0x1F)
  {
    do
    {
      firstObject = [(NSMutableArray *)self->_recentlyUsedKeys firstObject];
      if (firstObject)
      {
        [(NSMutableDictionary *)self->_cache removeObjectForKey:firstObject];
        [(NSMutableArray *)self->_recentlyUsedKeys removeObjectAtIndex:0];
      }
    }

    while ([(NSMutableDictionary *)self->_cache count]> 0x1E);
  }
}

- (id)_imageForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CLKTreatedImageCache__imageForKey___block_invoke;
  block[3] = &unk_278A1FED0;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __37__CLKTreatedImageCache__imageForKey___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = *(a1 + 40);
    v6 = [v5 rawImage];
    v7 = +[CLKRenderingContext sharedRenderingContext];
    v8 = [v7 device];

    [v6 size];
    v10 = v9;
    v12 = v11;
    v14 = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
    v15 = [v5 scaleMode];
    if (v15)
    {
      if (v15 == 1)
      {
        [v5 scale];
        if (v16 != 0.0)
        {
          [v5 scale];
          v18 = v10 * v17;
          [v5 sdkDeviceScale];
          CLKFloorForDevice(v8, v18 * v19);
          v10 = v20;
          [v5 scale];
          v22 = v12 * v21;
          [v5 sdkDeviceScale];
          v24 = v22 * v23;
LABEL_6:
          CLKFloorForDevice(v8, v24);
          v12 = v25;
          v26 = *MEMORY[0x277CBF348];
          v27 = *(MEMORY[0x277CBF348] + 8);
          v13 = v25;
          v14 = v10;
          goto LABEL_26;
        }

LABEL_24:
        v41 = [v5 rawImage];
LABEL_33:

        v51 = *(*(a1 + 48) + 8);
        v52 = *(v51 + 40);
        *(v51 + 40) = v41;

        [*(*(a1 + 32) + 8) setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];
        goto LABEL_34;
      }

      v26 = *MEMORY[0x277CBF3A0];
      v27 = *(MEMORY[0x277CBF3A0] + 8);
      v10 = *(MEMORY[0x277CBF3A0] + 16);
      v12 = *(MEMORY[0x277CBF3A0] + 24);
    }

    else
    {
      [v5 maxDeviceSize];
      if (v29 == v14 && v28 == v13)
      {
        goto LABEL_24;
      }

      [v5 maxSDKSize];
      if (v32 == v14 && v31 == v13)
      {
        goto LABEL_24;
      }

      if (v10 == v14 && v12 == v13)
      {
        goto LABEL_24;
      }

      [v5 maxSDKSize];
      v36 = v35 / v10;
      v38 = v37 / v12;
      if (v36 >= v38)
      {
        v39 = v38;
      }

      else
      {
        v39 = v36;
      }

      if (v39 < 1.0)
      {
        CLKFloorForDevice(v8, v10 * v39);
        v10 = v40;
        v24 = v12 * v39;
        goto LABEL_6;
      }

      [v5 maxDeviceSize];
      v56 = v55;
      v58 = v57;
      [v5 maxSDKSize];
      if (!CLKSizeEqualsSize(v56, v58, v59, v60))
      {
        [v5 maxDeviceSize];
        v62 = v61;
        [v5 maxSDKSize];
        v10 = v10 * (v62 / v63);
        [v5 maxDeviceSize];
        v65 = v64;
        [v5 maxSDKSize];
        v12 = v12 * (v65 / v66);
      }

      [v5 maxDeviceSize];
      v14 = v67;
      v13 = v68;
      v26 = (v67 - v10) * 0.5;
      v27 = (v68 - v12) * 0.5;
    }

LABEL_26:
    [v8 screenScale];
    v43 = v42;
    v70.width = v14;
    v70.height = v13;
    UIGraphicsBeginImageContextWithOptions(v70, 0, v43);
    v44 = [v5 maskMode];
    if (v44 == 2)
    {
      v46 = MEMORY[0x277D75208];
      [v5 cornerRadius];
      v45 = [v46 bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v14, v13, v47}];
    }

    else
    {
      if (v44 != 1)
      {
        goto LABEL_31;
      }

      v45 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, v14, v13}];
    }

    v48 = v45;
    [v45 addClip];

LABEL_31:
    [v6 drawInRect:{v26, v27, v10, v12}];
    v41 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v49 = [v41 renderingMode];
    if (v49 != [v6 renderingMode])
    {
      v50 = [v41 imageWithRenderingMode:{objc_msgSend(v6, "renderingMode")}];

      v41 = v50;
    }

    goto LABEL_33;
  }

LABEL_34:
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  v53 = *(a1 + 32);

  return [v53 _queue_pruneCacheIfNecessary];
}

@end