@interface WatermarkView
- (UIViewController)hostViewController;
- (WatermarkView)initWithCoder:(id)coder;
- (WatermarkView)initWithFrame:(CGRect)frame;
- (id)_clearImage;
- (void)_commonInit;
- (void)_updateWatermark;
- (void)dealloc;
- (void)flushTileCache;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WatermarkView

- (UIViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

- (void)flushTileCache
{
  v2 = +[GEOTileLoader modernLoader];
  [v2 shrinkDiskCacheToSize:0 callbackQ:&_dispatch_main_q finished:&stru_10163BBA0];
}

- (void)_updateWatermark
{
  if (GEOShouldWatermark())
  {
    imageView3 = GEOConfigGetString();
    if ([imageView3 length])
    {
      if ((_GEOConfigHasValue() & 1) == 0)
      {
        v4 = sub_100798EEC();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Missing a valid auth token, but we have a valid personID. Will apply watermarking in case the auth token has not been persisted yet.", buf, 2u);
        }
      }

      v5 = sub_100798EEC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Applying watermark", buf, 2u);
      }

      _clearImage = [(WatermarkView *)self _clearImage];
      topMostPresentedViewController = imageView3;
      if (sub_100B8C280())
      {
        sub_100B8C3AC();
        if (objc_opt_class())
        {
          sub_100B8C48C();
          if (objc_opt_class())
          {
            imageEncoder = [(WatermarkView *)self imageEncoder];
            watermarkProperties = [(WatermarkView *)self watermarkProperties];
            v20 = 0;
            v10 = [imageEncoder addBinaryGridWatermarkToImage:_clearImage ForId:topMostPresentedViewController withProperties:watermarkProperties error:&v20];
            v11 = v20;

            imageView = [(WatermarkView *)self imageView];
            [imageView setImage:v10];

            if (v11)
            {
              v13 = sub_100798EEC();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v22[0] = v11;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error when applying watermark: %@", buf, 0xCu);
              }
            }
          }
        }
      }
    }

    else
    {
      v15 = sub_100798EEC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        LODWORD(v22[0]) = [imageView3 length] != 0;
        WORD2(v22[0]) = 1024;
        *(v22 + 6) = _GEOConfigHasValue();
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Can't apply watermark. Has personID %d, has valid token %d", buf, 0xEu);
      }

      imageView2 = [(WatermarkView *)self imageView];
      [imageView2 setImage:0];

      v17 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
      [v17 invalidateTokens];

      [(WatermarkView *)self flushTileCache];
      _maps_mapsSceneDelegate = [(WatermarkView *)self _maps_mapsSceneDelegate];
      _clearImage = _maps_mapsSceneDelegate;
      if (!_maps_mapsSceneDelegate)
      {
        goto LABEL_27;
      }

      topMostPresentedViewController = [_maps_mapsSceneDelegate topMostPresentedViewController];
      v19 = sub_100798EEC();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Requesting credentials from AppleConnect", buf, 2u);
      }

      [MapsAppleConnectAuthViewController presentAppleConnectAuthControllerFrom:topMostPresentedViewController withProxyURL:0];
    }

LABEL_27:
    goto LABEL_28;
  }

  v14 = sub_100798EEC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "GEOShouldWatermark() returned NO, won't apply watermark", buf, 2u);
  }

  imageView3 = [(WatermarkView *)self imageView];
  [imageView3 setImage:0];
LABEL_28:
}

- (id)_clearImage
{
  [(WatermarkView *)self bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v14.width = v6;
  v14.height = v8;
  UIGraphicsBeginImageContextWithOptions(v14, 0, 0.0);
  v10 = +[UIColor clearColor];
  [v10 set];

  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  UIRectFill(v15);
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = WatermarkView;
  changeCopy = change;
  [(WatermarkView *)&v8 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(WatermarkView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(WatermarkView *)self _updateWatermark];
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = WatermarkView;
  [(WatermarkView *)&v11 layoutSubviews];
  [(WatermarkView *)self bounds];
  v12.origin.x = v3;
  v12.origin.y = v4;
  v12.size.width = v5;
  v12.size.height = v6;
  if (!CGRectEqualToRect(self->_savedBounds, v12))
  {
    [(WatermarkView *)self bounds];
    self->_savedBounds.origin.x = v7;
    self->_savedBounds.origin.y = v8;
    self->_savedBounds.size.width = v9;
    self->_savedBounds.size.height = v10;
    [(WatermarkView *)self _updateWatermark];
  }
}

- (void)dealloc
{
  v3 = +[GEOResourceManifestManager modernManager];
  [v3 removeTileGroupObserver:self];

  MapsFeature_RemoveDelegateListenerForAllKeys();
  v4.receiver = self;
  v4.super_class = WatermarkView;
  [(WatermarkView *)&v4 dealloc];
}

- (void)_commonInit
{
  v3 = +[GEOResourceManifestManager modernManager];
  [v3 addTileGroupObserver:self queue:&_dispatch_main_q];

  MapsFeature_AddDelegateListener();
  objc_initWeak(&location, self);
  objc_copyWeak(&v19, &location);
  v4 = _GEOConfigAddBlockListenerForKey();
  configListener = self->_configListener;
  self->_configListener = v4;

  [(WatermarkView *)self setUserInteractionEnabled:0, _NSConcreteStackBlock, 3221225472, sub_100B8CC8C, &unk_101657B58];
  if (sub_100B8C280())
  {
    sub_100B8C3AC();
    if (objc_opt_class())
    {
      sub_100B8C48C();
      if (objc_opt_class())
      {
        v6 = objc_alloc_init(sub_100B8C3AC());
        imageEncoder = self->_imageEncoder;
        self->_imageEncoder = v6;

        v8 = objc_alloc(sub_100B8C48C());
        LODWORD(v9) = 0.5;
        v10 = [v8 initWatermarkPropertiesWithHeight:200.0 width:200.0 angle:45.0 transparency:v9];
        watermarkProperties = self->_watermarkProperties;
        self->_watermarkProperties = v10;

        [(WatermarkProperties *)self->_watermarkProperties setTextOrigin:0.0, 100.0];
        [(WatermarkProperties *)self->_watermarkProperties setFontSize:12.0];
        [(WatermarkProperties *)self->_watermarkProperties setTextLineYIncrement:18];
        [(WatermarkProperties *)self->_watermarkProperties setXGridInterval:175];
        [(WatermarkProperties *)self->_watermarkProperties setYGridInterval:175];
        [(WatermarkProperties *)self->_watermarkProperties setColorMode:1];
        if (sub_10000FA08(self) == 3)
        {
          +[UIColor systemBackgroundColor];
        }

        else
        {
          +[UIColor labelColor];
        }
        v12 = ;
        [(WatermarkProperties *)self->_watermarkProperties setDarkColor:v12];
      }
    }
  }

  v13 = objc_alloc_init(UIImageView);
  imageView = self->_imageView;
  self->_imageView = v13;

  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = +[UIColor clearColor];
  [(UIImageView *)self->_imageView setBackgroundColor:v15];

  [(WatermarkView *)self addSubview:self->_imageView];
  LODWORD(v16) = 1148846080;
  v17 = [(UIImageView *)self->_imageView _maps_constraintsEqualToEdgesOfView:self insets:-50.0 priority:-25.0, 0.0, 0.0, v16];
  allConstraints = [v17 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (WatermarkView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WatermarkView;
  v3 = [(WatermarkView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(WatermarkView *)v3 _commonInit];
  }

  return v4;
}

- (WatermarkView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = WatermarkView;
  v3 = [(WatermarkView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(WatermarkView *)v3 _commonInit];
  }

  return v4;
}

@end