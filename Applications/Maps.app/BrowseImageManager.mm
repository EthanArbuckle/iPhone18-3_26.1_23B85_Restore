@interface BrowseImageManager
+ (id)sharedImageCache;
- (BOOL)_isNightMode;
- (BrowseImageManager)init;
- (BrowseManager)browseManager;
- (CGSize)desiredImageSize;
- (MapsUIImageCacheUserInterfaceDelegate)userInterfaceDelegate;
- (double)_screenScaleForScale:(double)a3 isCarplay:(BOOL)a4;
- (id)_cachedImageForCategory:(id)a3 scale:(double)a4 traits:(id)a5 isCarplay:(BOOL)a6 outputCategoryKey:(id *)a7;
- (id)_createImageForCategory:(id)a3 scale:(double)a4 traits:(id)a5 isCarplay:(BOOL)a6 nightMode:(BOOL)a7;
- (id)_scaleImage:(id)a3 ifNeededToFitSize:(CGSize)a4;
- (id)synchronousImageForCategory:(id)a3 scale:(double)a4 traits:(id)a5 isCarplay:(BOOL)a6;
- (id)transparentImageForCategory:(id)a3;
- (void)imageForCategory:(id)a3 resultHandler:(id)a4;
- (void)imageForCategory:(id)a3 scale:(double)a4 traits:(id)a5 isCarplay:(BOOL)a6 isTouchBar:(BOOL)a7 resultHandler:(id)a8;
- (void)maskedImage:(id)a3 inRect:(CGRect)a4 withColor:(CGColor *)a5 inContext:(CGContext *)a6;
@end

@implementation BrowseImageManager

- (BrowseImageManager)init
{
  v6.receiver = self;
  v6.super_class = BrowseImageManager;
  v2 = [(BrowseImageManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    imageOperationQueue = v2->_imageOperationQueue;
    v2->_imageOperationQueue = v3;

    [(NSOperationQueue *)v2->_imageOperationQueue setName:@"com.apple.Maps.BrowseImageManager.CreateImage"];
    [(NSOperationQueue *)v2->_imageOperationQueue setMaxConcurrentOperationCount:2];
    [(NSOperationQueue *)v2->_imageOperationQueue setQualityOfService:25];
  }

  return v2;
}

- (MapsUIImageCacheUserInterfaceDelegate)userInterfaceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_userInterfaceDelegate);

  return WeakRetained;
}

- (BOOL)_isNightMode
{
  if (+[NSThread isMainThread])
  {
    v3 = [(BrowseImageManager *)self userInterfaceDelegate];
    v4 = [v3 isNightMode];

    return v4;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: NSThread.isMainThread", v6, 2u);
    }

    return 0;
  }
}

- (CGSize)desiredImageSize
{
  width = self->_desiredImageSize.width;
  height = self->_desiredImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)sharedImageCache
{
  if (qword_10195E720 != -1)
  {
    dispatch_once(&qword_10195E720, &stru_101638850);
  }

  v3 = qword_10195E718;

  return v3;
}

- (BrowseManager)browseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_browseManager);

  return WeakRetained;
}

- (id)_scaleImage:(id)a3 ifNeededToFitSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  [v6 size];
  v9 = width == v7 && height == v8;
  if (v9 || ((v10 = v7, v11 = v8, width == CGSizeZero.width) ? (v12 = height == CGSizeZero.height) : (v12 = 0), v12))
  {
    v13 = v6;
  }

  else
  {
    while (v10 > width || v11 > height)
    {
      v14 = v10 <= v11;
      v15 = v10 * height / v11;
      if (v10 > v11)
      {
        v11 = v11 * width / v10;
      }

      else
      {
        v11 = height;
      }

      if (v14)
      {
        v10 = v15;
      }

      else
      {
        v10 = width;
      }
    }

    y = CGPointZero.y;
    v21.width = v10;
    v21.height = v11;
    UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationHigh);
    [v6 drawInRect:{CGPointZero.x, y, v10, v11}];
    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v13;
}

- (id)transparentImageForCategory:(id)a3
{
  v3 = a3;
  v4 = +[MKSystemController sharedInstance];
  [v4 screenScale];
  v6 = v5;

  v7 = [v3 styleAttributes];
  v8 = objc_alloc_init(CategoryKey);
  [(CategoryKey *)v8 setCategory:v3];

  [(CategoryKey *)v8 setTransitMode:0];
  [(CategoryKey *)v8 setPrefix:@"transparent"];
  [(CategoryKey *)v8 setRenderAsTemplate:1];
  v9 = [objc_opt_class() sharedImageCache];
  v10 = [v9 objectForKey:v8];

  if (!v10)
  {
    v11 = [MKIconManager imageForStyle:v7 size:4 forScale:1 format:1 transparent:0 transitMode:v6];
    if (v11 || ([UIImage systemImageNamed:@"magnifyingglass"], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v10 = [v11 imageWithRenderingMode:2];

      v13 = [objc_opt_class() sharedImageCache];
      [v13 setObject:v10 forKey:v8];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (double)_screenScaleForScale:(double)a3 isCarplay:(BOOL)a4
{
  v4 = a3;
  if (a3 == 0.0)
  {
    if (a4)
    {
      v5 = +[CarDisplayController sharedInstance];
      v6 = [v5 screenTraitCollection];
      [v6 displayScale];
      v4 = v7;
    }

    else
    {
      v5 = +[MKSystemController sharedInstance];
      [v5 screenScale];
      v4 = v8;
    }
  }

  return v4;
}

- (id)_createImageForCategory:(id)a3 scale:(double)a4 traits:(id)a5 isCarplay:(BOOL)a6 nightMode:(BOOL)a7
{
  v8 = a6;
  v12 = a5;
  v13 = [a3 category];
  v14 = [v13 styleAttributes];

  LODWORD(v13) = [v12 mode];
  v15 = v13 == 4;
  LOBYTE(v12) = [(BrowseImageManager *)self isTransparencyEnabled];
  [(BrowseImageManager *)self desiredImageSize];
  v17 = v16;
  v19 = v18;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100B2E4A8;
  v41[3] = &unk_101638898;
  *&v41[4] = v16;
  *&v41[5] = v18;
  v20 = objc_retainBlock(v41);
  v21 = v17 == CGSizeZero.width && v19 == CGSizeZero.height;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100B2E4CC;
  v34[3] = &unk_1016388C0;
  v22 = v14;
  v35 = v22;
  v37 = v12;
  v38 = v15;
  v39 = a7;
  v40 = !v21;
  v23 = v20;
  v36 = v23;
  v24 = objc_retainBlock(v34);
  [(BrowseImageManager *)self _screenScaleForScale:v8 isCarplay:a4];
  v26 = v25;
  v27 = (v24[2])(v24, 4, v8);
  if (!v27 && v8)
  {
    v28 = +[UIScreen mainScreen];
    [v28 scale];
    v30 = v29;

    if (v26 <= v30)
    {
      v31 = 4;
    }

    else
    {
      v31 = 5;
    }

    v27 = (v24[2])(v24, v31, 1, v30);
    if (v27)
    {
      goto LABEL_10;
    }

    v27 = (v24[2])(v24, 5, 0, v30);
  }

  if (!v27)
  {
    v27 = [UIImage imageNamed:@"browse-placeholder"];
  }

LABEL_10:
  if (v27 != 0 && !v21)
  {
    [(BrowseImageManager *)self desiredImageSize];
    v32 = [(BrowseImageManager *)self _scaleImage:v27 ifNeededToFitSize:?];

    v27 = v32;
  }

  return v27;
}

- (id)_cachedImageForCategory:(id)a3 scale:(double)a4 traits:(id)a5 isCarplay:(BOOL)a6 outputCategoryKey:(id *)a7
{
  v8 = a6;
  v12 = a3;
  v13 = [a5 mode] == 4;
  v14 = [(BrowseImageManager *)self userInterfaceDelegate];
  v15 = [v14 isNightMode];

  [(BrowseImageManager *)self _screenScaleForScale:v8 isCarplay:a4];
  v17 = v16;
  v18 = objc_alloc_init(CategoryKey);
  v19 = [v12 category];

  [(CategoryKey *)v18 setCategory:v19];
  [(CategoryKey *)v18 setTransitMode:v13];
  [(CategoryKey *)v18 setScale:v17];
  [(BrowseImageManager *)self desiredImageSize];
  [(CategoryKey *)v18 setSize:?];
  [(CategoryKey *)v18 setIsCarPlay:v8];
  [(CategoryKey *)v18 setIsNightMode:v15];
  if ([(BrowseImageManager *)self isTransparencyEnabled])
  {
    v20 = @"transparent";
  }

  else
  {
    v20 = 0;
  }

  [(CategoryKey *)v18 setPrefix:v20];
  v21 = v18;
  *a7 = v18;
  v22 = [objc_opt_class() sharedImageCache];
  v23 = [v22 objectForKey:v18];

  return v23;
}

- (id)synchronousImageForCategory:(id)a3 scale:(double)a4 traits:(id)a5 isCarplay:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v18 = 0;
  v12 = [(BrowseImageManager *)self _cachedImageForCategory:v10 scale:v11 traits:v6 isCarplay:&v18 outputCategoryKey:a4];
  v13 = v18;
  if (!v12)
  {
    v14 = [(BrowseImageManager *)self _createImageForCategory:v10 scale:v11 traits:v6 isCarplay:[(BrowseImageManager *)self _isNightMode] nightMode:a4];
    if (v14)
    {
      v12 = v14;
      v15 = [objc_opt_class() sharedImageCache];
      [v15 setObject:v12 forKey:v13];
    }

    else
    {
      v15 = sub_10008C23C();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v10 name];
        *buf = 138412546;
        v20 = v16;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Failed to create image for category %@, key: %@", buf, 0x16u);
      }

      v12 = 0;
    }
  }

  return v12;
}

- (void)imageForCategory:(id)a3 scale:(double)a4 traits:(id)a5 isCarplay:(BOOL)a6 isTouchBar:(BOOL)a7 resultHandler:(id)a8
{
  v9 = a6;
  v13 = a3;
  v14 = a5;
  v15 = a8;
  v30 = 0;
  v16 = [(BrowseImageManager *)self _cachedImageForCategory:v13 scale:v14 traits:v9 isCarplay:&v30 outputCategoryKey:a4];
  v17 = v30;
  if (v16)
  {
    if (v15)
    {
      v15[2](v15, v16);
    }
  }

  else
  {
    v18 = [(BrowseImageManager *)self _isNightMode];
    objc_initWeak(&location, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100B2EADC;
    v21[3] = &unk_101638878;
    objc_copyWeak(v26, &location);
    v22 = v13;
    v26[1] = *&a4;
    v23 = v14;
    v27 = v9;
    v28 = v18;
    v24 = v17;
    v25 = v15;
    v19 = [NSBlockOperation blockOperationWithBlock:v21];
    v20 = [(BrowseImageManager *)self imageOperationQueue];
    [v20 addOperation:v19];

    objc_destroyWeak(v26);
    objc_destroyWeak(&location);
  }
}

- (void)imageForCategory:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(BrowseImageManager *)self browseManager];
  v8 = [v9 traits];
  [(BrowseImageManager *)self imageForCategory:v7 traits:v8 resultHandler:v6];
}

- (void)maskedImage:(id)a3 inRect:(CGRect)a4 withColor:(CGColor *)a5 inContext:(CGContext *)a6
{
  if (a5 && a3 && a6)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v12 = a3;
    v13 = +[UIColor clearColor];
    CGContextSetFillColorWithColor(a6, [v13 CGColor]);

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    CGContextFillRect(a6, v20);
    v14 = [v12 CGImage];

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    CGContextClipToMask(a6, v21, v14);
    CGContextSetFillColorWithColor(a6, a5);
    v15 = x;
    v16 = y;
    v17 = width;
    v18 = height;

    CGContextFillRect(a6, *&v15);
  }
}

@end