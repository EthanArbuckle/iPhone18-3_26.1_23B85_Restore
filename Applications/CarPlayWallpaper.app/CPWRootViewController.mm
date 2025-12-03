@interface CPWRootViewController
- (CPWRootViewController)initWithWallpaper:(id)wallpaper assetLibrary:(id)library isDimmed:(BOOL)dimmed wallpaperProvider:(id)provider wallpaperCache:(id)cache isInstrumentCluster:(BOOL)cluster;
- (id)_cacheKeyForWallpaper:(id)wallpaper;
- (id)createImageFromLayer:(id)layer;
- (id)resolveWallpaper:(id)wallpaper;
- (int64_t)userInterfaceStyle;
- (unint64_t)_updatedDimStyle;
- (void)_updateAppearanceTrackingLayer;
- (void)_updateDimView;
- (void)_updateOverlayImageViewWithPath:(id)path;
- (void)_updateWallpaperImage;
- (void)createImageOfResolvedWallpaper:(id)wallpaper completion:(id)completion;
- (void)invalidate;
- (void)loadView;
- (void)setCachedWallpaperImage:(id)image;
- (void)setShouldHomeScreenWallpaperBeDimmed:(BOOL)dimmed;
- (void)setUncachedWallpaperView:(id)view;
- (void)setWallpaper:(id)wallpaper;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CPWRootViewController

- (CPWRootViewController)initWithWallpaper:(id)wallpaper assetLibrary:(id)library isDimmed:(BOOL)dimmed wallpaperProvider:(id)provider wallpaperCache:(id)cache isInstrumentCluster:(BOOL)cluster
{
  wallpaperCopy = wallpaper;
  libraryCopy = library;
  providerCopy = provider;
  cacheCopy = cache;
  v22.receiver = self;
  v22.super_class = CPWRootViewController;
  v18 = [(CPWRootViewController *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_wallpaper, wallpaper);
    v19->_isInstrumentCluster = cluster;
    v19->_shouldHomeScreenWallpaperBeDimmed = dimmed;
    objc_storeStrong(&v19->_wallpaperProvider, provider);
    [(CRSUIWallpaperDataProviding *)v19->_wallpaperProvider setDataProviderDelegate:v19];
    objc_storeStrong(&v19->_wallpaperCache, cache);
    if (v19->_isInstrumentCluster)
    {
      objc_storeStrong(&v19->_assetLibrary, library);
      [(CPWAssetLibrary *)v19->_assetLibrary addObserver:v19];
    }
  }

  return v19;
}

- (void)setWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  if (([(CRWallpaperData *)self->_wallpaper isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_wallpaper, wallpaper);
    [(CPWRootViewController *)self _updateWallpaperImage];
    [(CPWRootViewController *)self _updateDimView];
  }
}

- (void)setShouldHomeScreenWallpaperBeDimmed:(BOOL)dimmed
{
  if (self->_shouldHomeScreenWallpaperBeDimmed != dimmed)
  {
    self->_shouldHomeScreenWallpaperBeDimmed = dimmed;
    [(CPWRootViewController *)self _updateDimView];
  }
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = CPWRootViewController;
  [(CPWRootViewController *)&v5 loadView];
  v3 = objc_opt_new();
  dimView = self->_dimView;
  self->_dimView = v3;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = CPWRootViewController;
  [(CPWRootViewController *)&v31 viewDidLoad];
  v3 = +[UIColor tableBackgroundColor];
  view = [(CPWRootViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = objc_alloc_init(UIImageView);
  [v5 setContentMode:2];
  [v5 setClipsToBounds:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(CPWRootViewController *)self view];
  [view2 addSubview:v5];

  leadingAnchor = [v5 leadingAnchor];
  view3 = [(CPWRootViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[0] = v27;
  trailingAnchor = [v5 trailingAnchor];
  view4 = [(CPWRootViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[1] = v23;
  topAnchor = [v5 topAnchor];
  view5 = [(CPWRootViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[2] = v9;
  bottomAnchor = [v5 bottomAnchor];
  view6 = [(CPWRootViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[3] = v13;
  v14 = [NSArray arrayWithObjects:v32 count:4];
  [NSLayoutConstraint activateConstraints:v14];

  [(CPWRootViewController *)self setCachedImageView:v5];
  [(CPWRootViewController *)self _updateAppearanceTrackingLayer];
  [(CPWRootViewController *)self _updateWallpaperImage];
  [(CPWRootViewController *)self _updateDimView];
  if (self->_isInstrumentCluster)
  {
    wallpaperOverlayPath = [(CPWAssetLibrary *)self->_assetLibrary wallpaperOverlayPath];
    [(CPWRootViewController *)self _updateOverlayImageViewWithPath:wallpaperOverlayPath];

    v16 = objc_alloc_init(CACarPlayRegionLayer);
    trackingLayer = self->_trackingLayer;
    self->_trackingLayer = v16;

    [(CACarPlayRegionLayer *)self->_trackingLayer setIdentifier:@"appearanceTracker:wallpaper"];
    [(CACarPlayRegionLayer *)self->_trackingLayer setFrame:0.0, 0.0, 1.0, 1.0];
    view7 = [(CPWRootViewController *)self view];
    layer = [view7 layer];
    [layer addSublayer:self->_trackingLayer];
  }

  view8 = [(CPWRootViewController *)self view];
  [view8 addSubview:self->_dimView];

  view9 = [(CPWRootViewController *)self view];
  [view9 bringSubviewToFront:self->_dimView];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CPWRootViewController;
  [(CPWRootViewController *)&v5 viewDidLayoutSubviews];
  dimView = self->_dimView;
  view = [(CPWRootViewController *)self view];
  [view bounds];
  [(CRSUIWallpaperDimmingView *)dimView setFrame:?];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CPWRootViewController;
  [(CPWRootViewController *)&v4 traitCollectionDidChange:change];
  [(CPWRootViewController *)self _updateAppearanceTrackingLayer];
  [(CPWRootViewController *)self _updateWallpaperImage];
  [(CPWRootViewController *)self _updateDimView];
}

- (void)_updateAppearanceTrackingLayer
{
  userInterfaceStyle = [(CPWRootViewController *)self userInterfaceStyle];
  v4 = sub_100002238(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"light";
    if (userInterfaceStyle == 2)
    {
      v5 = @"dark";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Current interface style: %{public}@", &v7, 0xCu);
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  LODWORD(v6) = 1.0;
  if (userInterfaceStyle == 2)
  {
    *&v6 = 0.0;
  }

  [(CACarPlayRegionLayer *)self->_trackingLayer setOpacity:v6];
  +[CATransaction commit];
}

- (void)_updateWallpaperImage
{
  wallpaper = [(CPWRootViewController *)self wallpaper];
  if (wallpaper)
  {
    wallpaperProvider = [(CPWRootViewController *)self wallpaperProvider];
    isReady = [wallpaperProvider isReady];

    if (isReady)
    {
      userInterfaceStyle = [(CPWRootViewController *)self userInterfaceStyle];
      v7 = sub_100002238(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = @"light";
        if (userInterfaceStyle == 2)
        {
          v8 = @"dark";
        }

        *buf = 138543362;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Current interface style: %{public}@", buf, 0xCu);
      }

      wallpaperProvider2 = [(CPWRootViewController *)self wallpaperProvider];
      v10 = [wallpaperProvider2 loadWallpaperFromData:wallpaper];

      if (v10)
      {
        v11 = [(CPWRootViewController *)self _cacheKeyForWallpaper:v10];
        wallpaperCache = [(CPWRootViewController *)self wallpaperCache];
        v13 = [wallpaperCache imageWithKey:v11];

        if (v13)
        {
          v14 = sub_100002238(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [wallpaper identifier];
            *buf = 138543618;
            v27 = identifier;
            v28 = 2114;
            v29 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found cached wallpaper image %{public}@ (%{public}@)", buf, 0x16u);
          }

          [(CPWRootViewController *)self setCachedWallpaperImage:v13];
        }

        else
        {
          v16 = [(CPWRootViewController *)self resolveWallpaper:v10];
          v17 = sub_100002238(0);
          v18 = v17;
          if (v16)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              identifier2 = [wallpaper identifier];
              *buf = 138543362;
              v27 = identifier2;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Displaying wallpaper %{public}@", buf, 0xCu);
            }

            view = [v16 view];
            [(CPWRootViewController *)self setUncachedWallpaperView:view];

            if (v11)
            {
              objc_initWeak(buf, self);
              v21 = [(CPWRootViewController *)self resolveWallpaper:v10];
              v22[0] = _NSConcreteStackBlock;
              v22[1] = 3221225472;
              v22[2] = sub_100002F18;
              v22[3] = &unk_100014750;
              objc_copyWeak(v25, buf);
              v23 = v11;
              v24 = wallpaper;
              v25[1] = userInterfaceStyle;
              [(CPWRootViewController *)self createImageOfResolvedWallpaper:v21 completion:v22];

              objc_destroyWeak(v25);
              objc_destroyWeak(buf);
            }
          }

          else
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_10000A7BC(wallpaper);
            }
          }
        }
      }

      else
      {
        v11 = sub_100002238(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10000A850(wallpaper);
        }
      }
    }

    else
    {
      v10 = sub_100002238(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_10000A77C();
      }
    }
  }

  else
  {
    v10 = sub_100002238(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000A8E4();
    }
  }
}

- (void)_updateDimView
{
  isHomeScreenWallpaperCurrentlyDimmed = self->_isHomeScreenWallpaperCurrentlyDimmed;
  shouldHomeScreenWallpaperBeDimmed = self->_shouldHomeScreenWallpaperBeDimmed;
  homeScreenDimStyle = self->_homeScreenDimStyle;
  _updatedDimStyle = [(CPWRootViewController *)self _updatedDimStyle];
  if (isHomeScreenWallpaperCurrentlyDimmed == shouldHomeScreenWallpaperBeDimmed)
  {
    if (homeScreenDimStyle == _updatedDimStyle)
    {
      return;
    }

    self->_homeScreenDimStyle = _updatedDimStyle;
  }

  else
  {
    self->_isHomeScreenWallpaperCurrentlyDimmed = shouldHomeScreenWallpaperBeDimmed;
  }

  [(CPWRootViewController *)self _updateDimViewAnimated:1];
}

- (unint64_t)_updatedDimStyle
{
  traitCollection = [(CPWRootViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle == 1;
}

- (id)resolveWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  wallpaperProvider = [(CPWRootViewController *)self wallpaperProvider];
  isReady = [wallpaperProvider isReady];

  v7 = sub_100002238(0);
  wallpaperProvider2 = v7;
  if (isReady)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [wallpaperCopy identifier];
      v12 = 138543362;
      v13 = identifier;
      _os_log_impl(&_mh_execute_header, wallpaperProvider2, OS_LOG_TYPE_DEFAULT, "Resolving wallpaper %{public}@", &v12, 0xCu);
    }

    wallpaperProvider2 = [(CPWRootViewController *)self wallpaperProvider];
    v10 = [wallpaperProvider2 resolveWallpaper:wallpaperCopy];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A77C();
    }

    v10 = 0;
  }

  return v10;
}

- (int64_t)userInterfaceStyle
{
  traitCollection = [(CPWRootViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (!userInterfaceStyle)
  {
    v4 = sub_100002238(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Current interface style is unspecified - falling back to dark style", v6, 2u);
    }

    return 2;
  }

  return userInterfaceStyle;
}

- (id)_cacheKeyForWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  wallpaperProvider = [(CPWRootViewController *)self wallpaperProvider];
  isReady = [wallpaperProvider isReady];

  if (isReady && ([wallpaperCopy cacheID], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    userInterfaceStyle = [(CPWRootViewController *)self userInterfaceStyle];
    cacheID = [wallpaperCopy cacheID];
    if (userInterfaceStyle == 2)
    {
      v10 = @"Dark";
    }

    else
    {
      v10 = @"Light";
    }

    wallpaperProvider2 = [(CPWRootViewController *)self wallpaperProvider];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%@-%lu", cacheID, v10, [wallpaperProvider2 version]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setUncachedWallpaperView:(id)view
{
  viewCopy = view;
  uncachedWallpaperView = self->_uncachedWallpaperView;
  if (uncachedWallpaperView != viewCopy)
  {
    [(UIView *)uncachedWallpaperView removeFromSuperview];
    objc_storeStrong(&self->_uncachedWallpaperView, view);
    if (viewCopy)
    {
      cachedImageView = [(CPWRootViewController *)self cachedImageView];
      [cachedImageView setImage:0];

      [(UIView *)viewCopy setContentMode:2];
      [(UIView *)viewCopy setClipsToBounds:1];
      [(UIView *)viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
      view = [(CPWRootViewController *)self view];
      cachedImageView2 = [(CPWRootViewController *)self cachedImageView];
      [view insertSubview:viewCopy belowSubview:cachedImageView2];

      leadingAnchor = [(UIView *)viewCopy leadingAnchor];
      view2 = [(CPWRootViewController *)self view];
      leadingAnchor2 = [view2 leadingAnchor];
      v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v27[0] = v23;
      trailingAnchor = [(UIView *)viewCopy trailingAnchor];
      view3 = [(CPWRootViewController *)self view];
      trailingAnchor2 = [view3 trailingAnchor];
      v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v27[1] = v19;
      topAnchor = [(UIView *)viewCopy topAnchor];
      view4 = [(CPWRootViewController *)self view];
      topAnchor2 = [view4 topAnchor];
      v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v27[2] = v13;
      bottomAnchor = [(UIView *)viewCopy bottomAnchor];
      view5 = [(CPWRootViewController *)self view];
      bottomAnchor2 = [view5 bottomAnchor];
      v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v27[3] = v17;
      v18 = [NSArray arrayWithObjects:v27 count:4];
      [NSLayoutConstraint activateConstraints:v18];
    }
  }
}

- (void)setCachedWallpaperImage:(id)image
{
  imageCopy = image;
  cachedImageView = [(CPWRootViewController *)self cachedImageView];
  image = [cachedImageView image];

  if (image != imageCopy)
  {
    [(UIView *)self->_uncachedWallpaperView removeFromSuperview];
    uncachedWallpaperView = self->_uncachedWallpaperView;
    self->_uncachedWallpaperView = 0;

    cachedImageView2 = [(CPWRootViewController *)self cachedImageView];
    [cachedImageView2 setImage:imageCopy];
  }
}

- (void)_updateOverlayImageViewWithPath:(id)path
{
  pathCopy = path;
  if ([(CPWRootViewController *)self isInstrumentCluster])
  {
    overlayPath = [(CPWRootViewController *)self overlayPath];
    v6 = [overlayPath isEqualToString:pathCopy];

    if ((v6 & 1) == 0)
    {
      if (pathCopy)
      {
        v7 = [[NSData alloc] initWithContentsOfFile:pathCopy];
        if (v7)
        {
          v8 = [[UIImage alloc] initWithData:v7];
          overlayImageView = self->_overlayImageView;
          if (!overlayImageView)
          {
            v10 = objc_alloc_init(UIImageView);
            v11 = self->_overlayImageView;
            self->_overlayImageView = v10;

            [(UIImageView *)self->_overlayImageView setContentMode:2];
            [(UIImageView *)self->_overlayImageView setClipsToBounds:1];
            [(UIImageView *)self->_overlayImageView setTranslatesAutoresizingMaskIntoConstraints:0];
            [(CPWRootViewController *)self view];
            v12 = v35 = v8;
            [v12 addSubview:self->_overlayImageView];

            [(UIImageView *)self->_overlayImageView setTranslatesAutoresizingMaskIntoConstraints:0];
            leadingAnchor = [(UIImageView *)self->_overlayImageView leadingAnchor];
            view = [(CPWRootViewController *)self view];
            leadingAnchor2 = [view leadingAnchor];
            v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
            v37[0] = v31;
            trailingAnchor = [(UIImageView *)self->_overlayImageView trailingAnchor];
            view2 = [(CPWRootViewController *)self view];
            trailingAnchor2 = [view2 trailingAnchor];
            v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
            v37[1] = v27;
            topAnchor = [(UIImageView *)self->_overlayImageView topAnchor];
            view3 = [(CPWRootViewController *)self view];
            topAnchor2 = [view3 topAnchor];
            v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
            v37[2] = v13;
            bottomAnchor = [(UIImageView *)self->_overlayImageView bottomAnchor];
            view4 = [(CPWRootViewController *)self view];
            bottomAnchor2 = [view4 bottomAnchor];
            v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
            v37[3] = v17;
            v18 = [NSArray arrayWithObjects:v37 count:4];
            [NSLayoutConstraint activateConstraints:v18];

            v8 = v35;
            overlayImageView = self->_overlayImageView;
          }

          [(UIImageView *)overlayImageView setImage:v8];
          view5 = [(CPWRootViewController *)self view];
          [view5 bringSubviewToFront:self->_overlayImageView];

          [(CPWRootViewController *)self setOverlayPath:pathCopy];
          v20 = sub_100002238(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Wallpaper overlay updated.", buf, 2u);
          }
        }

        else
        {
          v23 = sub_100002238(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10000A918();
          }

          [(UIImageView *)self->_overlayImageView removeFromSuperview];
          [(CPWRootViewController *)self setOverlayImageView:0];
          [(CPWRootViewController *)self setOverlayPath:0];
        }
      }

      else
      {
        v21 = sub_100002238(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Wallpaper overlay removed from superview.", buf, 2u);
        }

        overlayImageView = [(CPWRootViewController *)self overlayImageView];
        [overlayImageView removeFromSuperview];

        [(CPWRootViewController *)self setOverlayImageView:0];
        [(CPWRootViewController *)self setOverlayPath:0];
      }
    }
  }
}

- (void)createImageOfResolvedWallpaper:(id)wallpaper completion:(id)completion
{
  wallpaperCopy = wallpaper;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    if (wallpaperCopy)
    {
      userInterfaceStyle = [(CPWRootViewController *)self userInterfaceStyle];
      view = [wallpaperCopy view];
      v11 = objc_alloc_init(UIWindow);
      v12 = v11;
      v13 = userInterfaceStyle == 2;
      if (userInterfaceStyle == 2)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      [v11 setOverrideUserInterfaceStyle:v14];
      [v12 addSubview:view];
      [view bounds];
      if (CGRectIsEmpty(v25))
      {
        view2 = [(CPWRootViewController *)self view];
        [view2 frame];
        v17 = v16;
        view3 = [(CPWRootViewController *)self view];
        [view3 frame];
        [view setFrame:{0.0, 0.0, v17}];
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100003FF8;
      v20[3] = &unk_100014778;
      v20[4] = self;
      v21 = view;
      v24 = v13;
      v22 = wallpaperCopy;
      v23 = v8;
      v19 = view;
      [CATransaction bs_performAfterSynchronizedCommit:v20];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (id)createImageFromLayer:(id)layer
{
  layerCopy = layer;
  v4 = MTLCreateSystemDefaultDevice();
  if (v4)
  {
    [layerCopy bounds];
    if (v5 != 0.0)
    {
      v7 = v6;
      if (v6 != 0.0)
      {
        v8 = v5;
        AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
        v10 = (v7 * AlignedBytesPerRow);
        v30[0] = kIOSurfaceWidth;
        v11 = [NSNumber numberWithDouble:v8];
        v31[0] = v11;
        v30[1] = kIOSurfaceHeight;
        v12 = [NSNumber numberWithDouble:v7];
        v31[1] = v12;
        v30[2] = kIOSurfacePixelFormat;
        v13 = [NSNumber numberWithUnsignedInt:1111970369];
        v31[2] = v13;
        v31[3] = &off_100014DD0;
        v30[3] = kIOSurfaceBytesPerElement;
        v30[4] = kIOSurfaceBytesPerRow;
        v14 = [NSNumber numberWithUnsignedLong:AlignedBytesPerRow];
        v31[4] = v14;
        v30[5] = kIOSurfaceAllocSize;
        v15 = [NSNumber numberWithUnsignedInteger:v10];
        v31[5] = v15;
        v16 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:6];

        v17 = IOSurfaceCreate(v16);
        v18 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:80 width:v8 height:v7 mipmapped:0];
        [v18 setUsage:7];
        v19 = [v4 newTextureWithDescriptor:v18 iosurface:v17 plane:0];
        v29[0] = &off_100014DE8;
        v26 = @"kCARendererFlags";
        v27 = kCARendererColorSpace;
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v28 = kCARendererClearsDestination;
        v29[1] = DeviceRGB;
        v29[2] = &__kCFBooleanTrue;
        v21 = [NSDictionary dictionaryWithObjects:v29 forKeys:&v26 count:3];
        [CATransaction begin:v26];
        [CATransaction setDisableActions:1];
        v22 = [CARenderer rendererWithMTLTexture:v19 options:v21];
        [v22 setLayer:layerCopy];
        [layerCopy bounds];
        [v22 setBounds:?];
        +[CATransaction flush];
        +[CATransaction commit];
        [v22 beginFrameAtTime:0 timeStamp:0.0];
        [v22 bounds];
        [v22 addUpdateRect:?];
        [v22 render];
        [v22 endFrame];
        v23 = CGImageCreateFromIOSurface();
        v24 = [UIImage imageWithCGImage:v23];
        CGImageRelease(v23);
        CFRelease(v17);

        goto LABEL_10;
      }
    }

    v16 = sub_100002238(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000AA20();
    }
  }

  else
  {
    v16 = sub_100002238(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000AA54();
    }
  }

  v24 = 0;
LABEL_10:

  return v24;
}

- (void)invalidate
{
  wallpaperProvider = [(CPWRootViewController *)self wallpaperProvider];
  [wallpaperProvider invalidate];
}

@end