@interface CPWRootViewController
- (CPWRootViewController)initWithWallpaper:(id)a3 assetLibrary:(id)a4 isDimmed:(BOOL)a5 wallpaperProvider:(id)a6 wallpaperCache:(id)a7 isInstrumentCluster:(BOOL)a8;
- (id)_cacheKeyForWallpaper:(id)a3;
- (id)createImageFromLayer:(id)a3;
- (id)resolveWallpaper:(id)a3;
- (int64_t)userInterfaceStyle;
- (unint64_t)_updatedDimStyle;
- (void)_updateAppearanceTrackingLayer;
- (void)_updateDimView;
- (void)_updateOverlayImageViewWithPath:(id)a3;
- (void)_updateWallpaperImage;
- (void)createImageOfResolvedWallpaper:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)loadView;
- (void)setCachedWallpaperImage:(id)a3;
- (void)setShouldHomeScreenWallpaperBeDimmed:(BOOL)a3;
- (void)setUncachedWallpaperView:(id)a3;
- (void)setWallpaper:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CPWRootViewController

- (CPWRootViewController)initWithWallpaper:(id)a3 assetLibrary:(id)a4 isDimmed:(BOOL)a5 wallpaperProvider:(id)a6 wallpaperCache:(id)a7 isInstrumentCluster:(BOOL)a8
{
  v21 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = CPWRootViewController;
  v18 = [(CPWRootViewController *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_wallpaper, a3);
    v19->_isInstrumentCluster = a8;
    v19->_shouldHomeScreenWallpaperBeDimmed = a5;
    objc_storeStrong(&v19->_wallpaperProvider, a6);
    [(CRSUIWallpaperDataProviding *)v19->_wallpaperProvider setDataProviderDelegate:v19];
    objc_storeStrong(&v19->_wallpaperCache, a7);
    if (v19->_isInstrumentCluster)
    {
      objc_storeStrong(&v19->_assetLibrary, a4);
      [(CPWAssetLibrary *)v19->_assetLibrary addObserver:v19];
    }
  }

  return v19;
}

- (void)setWallpaper:(id)a3
{
  v5 = a3;
  if (([(CRWallpaperData *)self->_wallpaper isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_wallpaper, a3);
    [(CPWRootViewController *)self _updateWallpaperImage];
    [(CPWRootViewController *)self _updateDimView];
  }
}

- (void)setShouldHomeScreenWallpaperBeDimmed:(BOOL)a3
{
  if (self->_shouldHomeScreenWallpaperBeDimmed != a3)
  {
    self->_shouldHomeScreenWallpaperBeDimmed = a3;
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
  v4 = [(CPWRootViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc_init(UIImageView);
  [v5 setContentMode:2];
  [v5 setClipsToBounds:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(CPWRootViewController *)self view];
  [v6 addSubview:v5];

  v29 = [v5 leadingAnchor];
  v30 = [(CPWRootViewController *)self view];
  v28 = [v30 leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v32[0] = v27;
  v25 = [v5 trailingAnchor];
  v26 = [(CPWRootViewController *)self view];
  v24 = [v26 trailingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v32[1] = v23;
  v22 = [v5 topAnchor];
  v7 = [(CPWRootViewController *)self view];
  v8 = [v7 topAnchor];
  v9 = [v22 constraintEqualToAnchor:v8];
  v32[2] = v9;
  v10 = [v5 bottomAnchor];
  v11 = [(CPWRootViewController *)self view];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v32[3] = v13;
  v14 = [NSArray arrayWithObjects:v32 count:4];
  [NSLayoutConstraint activateConstraints:v14];

  [(CPWRootViewController *)self setCachedImageView:v5];
  [(CPWRootViewController *)self _updateAppearanceTrackingLayer];
  [(CPWRootViewController *)self _updateWallpaperImage];
  [(CPWRootViewController *)self _updateDimView];
  if (self->_isInstrumentCluster)
  {
    v15 = [(CPWAssetLibrary *)self->_assetLibrary wallpaperOverlayPath];
    [(CPWRootViewController *)self _updateOverlayImageViewWithPath:v15];

    v16 = objc_alloc_init(CACarPlayRegionLayer);
    trackingLayer = self->_trackingLayer;
    self->_trackingLayer = v16;

    [(CACarPlayRegionLayer *)self->_trackingLayer setIdentifier:@"appearanceTracker:wallpaper"];
    [(CACarPlayRegionLayer *)self->_trackingLayer setFrame:0.0, 0.0, 1.0, 1.0];
    v18 = [(CPWRootViewController *)self view];
    v19 = [v18 layer];
    [v19 addSublayer:self->_trackingLayer];
  }

  v20 = [(CPWRootViewController *)self view];
  [v20 addSubview:self->_dimView];

  v21 = [(CPWRootViewController *)self view];
  [v21 bringSubviewToFront:self->_dimView];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CPWRootViewController;
  [(CPWRootViewController *)&v5 viewDidLayoutSubviews];
  dimView = self->_dimView;
  v4 = [(CPWRootViewController *)self view];
  [v4 bounds];
  [(CRSUIWallpaperDimmingView *)dimView setFrame:?];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CPWRootViewController;
  [(CPWRootViewController *)&v4 traitCollectionDidChange:a3];
  [(CPWRootViewController *)self _updateAppearanceTrackingLayer];
  [(CPWRootViewController *)self _updateWallpaperImage];
  [(CPWRootViewController *)self _updateDimView];
}

- (void)_updateAppearanceTrackingLayer
{
  v3 = [(CPWRootViewController *)self userInterfaceStyle];
  v4 = sub_100002238(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"light";
    if (v3 == 2)
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
  if (v3 == 2)
  {
    *&v6 = 0.0;
  }

  [(CACarPlayRegionLayer *)self->_trackingLayer setOpacity:v6];
  +[CATransaction commit];
}

- (void)_updateWallpaperImage
{
  v3 = [(CPWRootViewController *)self wallpaper];
  if (v3)
  {
    v4 = [(CPWRootViewController *)self wallpaperProvider];
    v5 = [v4 isReady];

    if (v5)
    {
      v6 = [(CPWRootViewController *)self userInterfaceStyle];
      v7 = sub_100002238(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = @"light";
        if (v6 == 2)
        {
          v8 = @"dark";
        }

        *buf = 138543362;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Current interface style: %{public}@", buf, 0xCu);
      }

      v9 = [(CPWRootViewController *)self wallpaperProvider];
      v10 = [v9 loadWallpaperFromData:v3];

      if (v10)
      {
        v11 = [(CPWRootViewController *)self _cacheKeyForWallpaper:v10];
        v12 = [(CPWRootViewController *)self wallpaperCache];
        v13 = [v12 imageWithKey:v11];

        if (v13)
        {
          v14 = sub_100002238(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v3 identifier];
            *buf = 138543618;
            v27 = v15;
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
              v19 = [v3 identifier];
              *buf = 138543362;
              v27 = v19;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Displaying wallpaper %{public}@", buf, 0xCu);
            }

            v20 = [v16 view];
            [(CPWRootViewController *)self setUncachedWallpaperView:v20];

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
              v24 = v3;
              v25[1] = v6;
              [(CPWRootViewController *)self createImageOfResolvedWallpaper:v21 completion:v22];

              objc_destroyWeak(v25);
              objc_destroyWeak(buf);
            }
          }

          else
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_10000A7BC(v3);
            }
          }
        }
      }

      else
      {
        v11 = sub_100002238(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10000A850(v3);
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
  v6 = [(CPWRootViewController *)self _updatedDimStyle];
  if (isHomeScreenWallpaperCurrentlyDimmed == shouldHomeScreenWallpaperBeDimmed)
  {
    if (homeScreenDimStyle == v6)
    {
      return;
    }

    self->_homeScreenDimStyle = v6;
  }

  else
  {
    self->_isHomeScreenWallpaperCurrentlyDimmed = shouldHomeScreenWallpaperBeDimmed;
  }

  [(CPWRootViewController *)self _updateDimViewAnimated:1];
}

- (unint64_t)_updatedDimStyle
{
  v2 = [(CPWRootViewController *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  return v3 == 1;
}

- (id)resolveWallpaper:(id)a3
{
  v4 = a3;
  v5 = [(CPWRootViewController *)self wallpaperProvider];
  v6 = [v5 isReady];

  v7 = sub_100002238(0);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 identifier];
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolving wallpaper %{public}@", &v12, 0xCu);
    }

    v8 = [(CPWRootViewController *)self wallpaperProvider];
    v10 = [v8 resolveWallpaper:v4];
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
  v2 = [(CPWRootViewController *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (!v3)
  {
    v4 = sub_100002238(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Current interface style is unspecified - falling back to dark style", v6, 2u);
    }

    return 2;
  }

  return v3;
}

- (id)_cacheKeyForWallpaper:(id)a3
{
  v4 = a3;
  v5 = [(CPWRootViewController *)self wallpaperProvider];
  v6 = [v5 isReady];

  if (v6 && ([v4 cacheID], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [(CPWRootViewController *)self userInterfaceStyle];
    v9 = [v4 cacheID];
    if (v8 == 2)
    {
      v10 = @"Dark";
    }

    else
    {
      v10 = @"Light";
    }

    v11 = [(CPWRootViewController *)self wallpaperProvider];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%@-%lu", v9, v10, [v11 version]);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setUncachedWallpaperView:(id)a3
{
  v5 = a3;
  uncachedWallpaperView = self->_uncachedWallpaperView;
  if (uncachedWallpaperView != v5)
  {
    [(UIView *)uncachedWallpaperView removeFromSuperview];
    objc_storeStrong(&self->_uncachedWallpaperView, a3);
    if (v5)
    {
      v7 = [(CPWRootViewController *)self cachedImageView];
      [v7 setImage:0];

      [(UIView *)v5 setContentMode:2];
      [(UIView *)v5 setClipsToBounds:1];
      [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = [(CPWRootViewController *)self view];
      v9 = [(CPWRootViewController *)self cachedImageView];
      [v8 insertSubview:v5 belowSubview:v9];

      v25 = [(UIView *)v5 leadingAnchor];
      v26 = [(CPWRootViewController *)self view];
      v24 = [v26 leadingAnchor];
      v23 = [v25 constraintEqualToAnchor:v24];
      v27[0] = v23;
      v21 = [(UIView *)v5 trailingAnchor];
      v22 = [(CPWRootViewController *)self view];
      v20 = [v22 trailingAnchor];
      v19 = [v21 constraintEqualToAnchor:v20];
      v27[1] = v19;
      v10 = [(UIView *)v5 topAnchor];
      v11 = [(CPWRootViewController *)self view];
      v12 = [v11 topAnchor];
      v13 = [v10 constraintEqualToAnchor:v12];
      v27[2] = v13;
      v14 = [(UIView *)v5 bottomAnchor];
      v15 = [(CPWRootViewController *)self view];
      v16 = [v15 bottomAnchor];
      v17 = [v14 constraintEqualToAnchor:v16];
      v27[3] = v17;
      v18 = [NSArray arrayWithObjects:v27 count:4];
      [NSLayoutConstraint activateConstraints:v18];
    }
  }
}

- (void)setCachedWallpaperImage:(id)a3
{
  v8 = a3;
  v4 = [(CPWRootViewController *)self cachedImageView];
  v5 = [v4 image];

  if (v5 != v8)
  {
    [(UIView *)self->_uncachedWallpaperView removeFromSuperview];
    uncachedWallpaperView = self->_uncachedWallpaperView;
    self->_uncachedWallpaperView = 0;

    v7 = [(CPWRootViewController *)self cachedImageView];
    [v7 setImage:v8];
  }
}

- (void)_updateOverlayImageViewWithPath:(id)a3
{
  v4 = a3;
  if ([(CPWRootViewController *)self isInstrumentCluster])
  {
    v5 = [(CPWRootViewController *)self overlayPath];
    v6 = [v5 isEqualToString:v4];

    if ((v6 & 1) == 0)
    {
      if (v4)
      {
        v7 = [[NSData alloc] initWithContentsOfFile:v4];
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
            v33 = [(UIImageView *)self->_overlayImageView leadingAnchor];
            v34 = [(CPWRootViewController *)self view];
            v32 = [v34 leadingAnchor];
            v31 = [v33 constraintEqualToAnchor:v32];
            v37[0] = v31;
            v29 = [(UIImageView *)self->_overlayImageView trailingAnchor];
            v30 = [(CPWRootViewController *)self view];
            v28 = [v30 trailingAnchor];
            v27 = [v29 constraintEqualToAnchor:v28];
            v37[1] = v27;
            v25 = [(UIImageView *)self->_overlayImageView topAnchor];
            v26 = [(CPWRootViewController *)self view];
            v24 = [v26 topAnchor];
            v13 = [v25 constraintEqualToAnchor:v24];
            v37[2] = v13;
            v14 = [(UIImageView *)self->_overlayImageView bottomAnchor];
            v15 = [(CPWRootViewController *)self view];
            v16 = [v15 bottomAnchor];
            v17 = [v14 constraintEqualToAnchor:v16];
            v37[3] = v17;
            v18 = [NSArray arrayWithObjects:v37 count:4];
            [NSLayoutConstraint activateConstraints:v18];

            v8 = v35;
            overlayImageView = self->_overlayImageView;
          }

          [(UIImageView *)overlayImageView setImage:v8];
          v19 = [(CPWRootViewController *)self view];
          [v19 bringSubviewToFront:self->_overlayImageView];

          [(CPWRootViewController *)self setOverlayPath:v4];
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

        v22 = [(CPWRootViewController *)self overlayImageView];
        [v22 removeFromSuperview];

        [(CPWRootViewController *)self setOverlayImageView:0];
        [(CPWRootViewController *)self setOverlayPath:0];
      }
    }
  }
}

- (void)createImageOfResolvedWallpaper:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      v9 = [(CPWRootViewController *)self userInterfaceStyle];
      v10 = [v6 view];
      v11 = objc_alloc_init(UIWindow);
      v12 = v11;
      v13 = v9 == 2;
      if (v9 == 2)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      [v11 setOverrideUserInterfaceStyle:v14];
      [v12 addSubview:v10];
      [v10 bounds];
      if (CGRectIsEmpty(v25))
      {
        v15 = [(CPWRootViewController *)self view];
        [v15 frame];
        v17 = v16;
        v18 = [(CPWRootViewController *)self view];
        [v18 frame];
        [v10 setFrame:{0.0, 0.0, v17}];
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100003FF8;
      v20[3] = &unk_100014778;
      v20[4] = self;
      v21 = v10;
      v24 = v13;
      v22 = v6;
      v23 = v8;
      v19 = v10;
      [CATransaction bs_performAfterSynchronizedCommit:v20];
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (id)createImageFromLayer:(id)a3
{
  v3 = a3;
  v4 = MTLCreateSystemDefaultDevice();
  if (v4)
  {
    [v3 bounds];
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
        [v22 setLayer:v3];
        [v3 bounds];
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
  v2 = [(CPWRootViewController *)self wallpaperProvider];
  [v2 invalidate];
}

@end