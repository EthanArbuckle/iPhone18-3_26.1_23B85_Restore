@interface BrowseImageManager
+ (id)sharedImageCache;
- (BOOL)_isNightMode;
- (BrowseImageManager)init;
- (BrowseManager)browseManager;
- (CGSize)desiredImageSize;
- (MapsUIImageCacheUserInterfaceDelegate)userInterfaceDelegate;
- (double)_screenScaleForScale:(double)scale isCarplay:(BOOL)carplay;
- (id)_cachedImageForCategory:(id)category scale:(double)scale traits:(id)traits isCarplay:(BOOL)carplay outputCategoryKey:(id *)key;
- (id)_createImageForCategory:(id)category scale:(double)scale traits:(id)traits isCarplay:(BOOL)carplay nightMode:(BOOL)mode;
- (id)_scaleImage:(id)image ifNeededToFitSize:(CGSize)size;
- (id)synchronousImageForCategory:(id)category scale:(double)scale traits:(id)traits isCarplay:(BOOL)carplay;
- (id)transparentImageForCategory:(id)category;
- (void)imageForCategory:(id)category resultHandler:(id)handler;
- (void)imageForCategory:(id)category scale:(double)scale traits:(id)traits isCarplay:(BOOL)carplay isTouchBar:(BOOL)bar resultHandler:(id)handler;
- (void)maskedImage:(id)image inRect:(CGRect)rect withColor:(CGColor *)color inContext:(CGContext *)context;
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
    userInterfaceDelegate = [(BrowseImageManager *)self userInterfaceDelegate];
    isNightMode = [userInterfaceDelegate isNightMode];

    return isNightMode;
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

- (id)_scaleImage:(id)image ifNeededToFitSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  [imageCopy size];
  v9 = width == v7 && height == v8;
  if (v9 || ((v10 = v7, v11 = v8, width == CGSizeZero.width) ? (v12 = height == CGSizeZero.height) : (v12 = 0), v12))
  {
    v13 = imageCopy;
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
    [imageCopy drawInRect:{CGPointZero.x, y, v10, v11}];
    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v13;
}

- (id)transparentImageForCategory:(id)category
{
  categoryCopy = category;
  v4 = +[MKSystemController sharedInstance];
  [v4 screenScale];
  v6 = v5;

  styleAttributes = [categoryCopy styleAttributes];
  v8 = objc_alloc_init(CategoryKey);
  [(CategoryKey *)v8 setCategory:categoryCopy];

  [(CategoryKey *)v8 setTransitMode:0];
  [(CategoryKey *)v8 setPrefix:@"transparent"];
  [(CategoryKey *)v8 setRenderAsTemplate:1];
  sharedImageCache = [objc_opt_class() sharedImageCache];
  v10 = [sharedImageCache objectForKey:v8];

  if (!v10)
  {
    v11 = [MKIconManager imageForStyle:styleAttributes size:4 forScale:1 format:1 transparent:0 transitMode:v6];
    if (v11 || ([UIImage systemImageNamed:@"magnifyingglass"], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v10 = [v11 imageWithRenderingMode:2];

      sharedImageCache2 = [objc_opt_class() sharedImageCache];
      [sharedImageCache2 setObject:v10 forKey:v8];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (double)_screenScaleForScale:(double)scale isCarplay:(BOOL)carplay
{
  scaleCopy = scale;
  if (scale == 0.0)
  {
    if (carplay)
    {
      v5 = +[CarDisplayController sharedInstance];
      screenTraitCollection = [v5 screenTraitCollection];
      [screenTraitCollection displayScale];
      scaleCopy = v7;
    }

    else
    {
      v5 = +[MKSystemController sharedInstance];
      [v5 screenScale];
      scaleCopy = v8;
    }
  }

  return scaleCopy;
}

- (id)_createImageForCategory:(id)category scale:(double)scale traits:(id)traits isCarplay:(BOOL)carplay nightMode:(BOOL)mode
{
  carplayCopy = carplay;
  traitsCopy = traits;
  category = [category category];
  styleAttributes = [category styleAttributes];

  LODWORD(category) = [traitsCopy mode];
  v15 = category == 4;
  LOBYTE(traitsCopy) = [(BrowseImageManager *)self isTransparencyEnabled];
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
  v22 = styleAttributes;
  v35 = v22;
  v37 = traitsCopy;
  v38 = v15;
  modeCopy = mode;
  v40 = !v21;
  v23 = v20;
  v36 = v23;
  v24 = objc_retainBlock(v34);
  [(BrowseImageManager *)self _screenScaleForScale:carplayCopy isCarplay:scale];
  v26 = v25;
  v27 = (v24[2])(v24, 4, carplayCopy);
  if (!v27 && carplayCopy)
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

- (id)_cachedImageForCategory:(id)category scale:(double)scale traits:(id)traits isCarplay:(BOOL)carplay outputCategoryKey:(id *)key
{
  carplayCopy = carplay;
  categoryCopy = category;
  v13 = [traits mode] == 4;
  userInterfaceDelegate = [(BrowseImageManager *)self userInterfaceDelegate];
  isNightMode = [userInterfaceDelegate isNightMode];

  [(BrowseImageManager *)self _screenScaleForScale:carplayCopy isCarplay:scale];
  v17 = v16;
  v18 = objc_alloc_init(CategoryKey);
  category = [categoryCopy category];

  [(CategoryKey *)v18 setCategory:category];
  [(CategoryKey *)v18 setTransitMode:v13];
  [(CategoryKey *)v18 setScale:v17];
  [(BrowseImageManager *)self desiredImageSize];
  [(CategoryKey *)v18 setSize:?];
  [(CategoryKey *)v18 setIsCarPlay:carplayCopy];
  [(CategoryKey *)v18 setIsNightMode:isNightMode];
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
  *key = v18;
  sharedImageCache = [objc_opt_class() sharedImageCache];
  v23 = [sharedImageCache objectForKey:v18];

  return v23;
}

- (id)synchronousImageForCategory:(id)category scale:(double)scale traits:(id)traits isCarplay:(BOOL)carplay
{
  carplayCopy = carplay;
  categoryCopy = category;
  traitsCopy = traits;
  v18 = 0;
  v12 = [(BrowseImageManager *)self _cachedImageForCategory:categoryCopy scale:traitsCopy traits:carplayCopy isCarplay:&v18 outputCategoryKey:scale];
  v13 = v18;
  if (!v12)
  {
    v14 = [(BrowseImageManager *)self _createImageForCategory:categoryCopy scale:traitsCopy traits:carplayCopy isCarplay:[(BrowseImageManager *)self _isNightMode] nightMode:scale];
    if (v14)
    {
      v12 = v14;
      sharedImageCache = [objc_opt_class() sharedImageCache];
      [sharedImageCache setObject:v12 forKey:v13];
    }

    else
    {
      sharedImageCache = sub_10008C23C();
      if (os_log_type_enabled(sharedImageCache, OS_LOG_TYPE_INFO))
      {
        name = [categoryCopy name];
        *buf = 138412546;
        v20 = name;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, sharedImageCache, OS_LOG_TYPE_INFO, "Failed to create image for category %@, key: %@", buf, 0x16u);
      }

      v12 = 0;
    }
  }

  return v12;
}

- (void)imageForCategory:(id)category scale:(double)scale traits:(id)traits isCarplay:(BOOL)carplay isTouchBar:(BOOL)bar resultHandler:(id)handler
{
  carplayCopy = carplay;
  categoryCopy = category;
  traitsCopy = traits;
  handlerCopy = handler;
  v30 = 0;
  v16 = [(BrowseImageManager *)self _cachedImageForCategory:categoryCopy scale:traitsCopy traits:carplayCopy isCarplay:&v30 outputCategoryKey:scale];
  v17 = v30;
  if (v16)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v16);
    }
  }

  else
  {
    _isNightMode = [(BrowseImageManager *)self _isNightMode];
    objc_initWeak(&location, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100B2EADC;
    v21[3] = &unk_101638878;
    objc_copyWeak(v26, &location);
    v22 = categoryCopy;
    v26[1] = *&scale;
    v23 = traitsCopy;
    v27 = carplayCopy;
    v28 = _isNightMode;
    v24 = v17;
    v25 = handlerCopy;
    v19 = [NSBlockOperation blockOperationWithBlock:v21];
    imageOperationQueue = [(BrowseImageManager *)self imageOperationQueue];
    [imageOperationQueue addOperation:v19];

    objc_destroyWeak(v26);
    objc_destroyWeak(&location);
  }
}

- (void)imageForCategory:(id)category resultHandler:(id)handler
{
  handlerCopy = handler;
  categoryCopy = category;
  browseManager = [(BrowseImageManager *)self browseManager];
  traits = [browseManager traits];
  [(BrowseImageManager *)self imageForCategory:categoryCopy traits:traits resultHandler:handlerCopy];
}

- (void)maskedImage:(id)image inRect:(CGRect)rect withColor:(CGColor *)color inContext:(CGContext *)context
{
  if (color && image && context)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    imageCopy = image;
    v13 = +[UIColor clearColor];
    CGContextSetFillColorWithColor(context, [v13 CGColor]);

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    CGContextFillRect(context, v20);
    cGImage = [imageCopy CGImage];

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    CGContextClipToMask(context, v21, cGImage);
    CGContextSetFillColorWithColor(context, color);
    v15 = x;
    v16 = y;
    v17 = width;
    v18 = height;

    CGContextFillRect(context, *&v15);
  }
}

@end