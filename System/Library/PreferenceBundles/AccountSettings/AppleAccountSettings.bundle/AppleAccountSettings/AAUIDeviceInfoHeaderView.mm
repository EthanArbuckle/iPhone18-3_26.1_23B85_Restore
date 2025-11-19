@interface AAUIDeviceInfoHeaderView
- (AAUIDeviceInfoHeaderView)initWithDevice:(id)a3 style:(id)a4;
- (BOOL)_isFindMyIsInstalled;
- (id)_deviceTypeLabel;
- (id)_urlSession;
- (id)findMyAppLaunchButton;
- (id)getDeviceImageURL;
- (void)_getLazyLoadedDeviceImage;
- (void)_openFMIPButtonPressed;
- (void)_setupSubviews;
- (void)_startListeningForForegrounding;
- (void)_updateFindMyLink;
- (void)dealloc;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation AAUIDeviceInfoHeaderView

- (AAUIDeviceInfoHeaderView)initWithDevice:(id)a3 style:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AAUIDeviceInfoHeaderView;
  v9 = [(AAUIDeviceInfoHeaderView *)&v12 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_remoteUIStyle, a4);
    [(AAUIDeviceInfoHeaderView *)v10 _setupSubviews];
    [(AAUIDeviceInfoHeaderView *)v10 _startListeningForForegrounding];
  }

  return v10;
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Device header moving to super view: %@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = AAUIDeviceInfoHeaderView;
  [(AAUIDeviceInfoHeaderView *)&v6 willMoveToSuperview:v4];
  if (v4)
  {
    [(AAUIDeviceInfoHeaderView *)self _getLazyLoadedDeviceImage];
  }

  else
  {
    [(NSURLSessionDataTask *)self->_imageLoadingTask cancel];
  }
}

- (void)_startListeningForForegrounding
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_updateFindMyLink" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)_updateFindMyLink
{
  v3 = [(AAUIDeviceInfoHeaderView *)self _isFindMyIsInstalled];
  if ([(AATrustedDevice *)self->_device showFMIPLink]&& self->_findMyIsInstalled != v3)
  {
    self->_findMyIsInstalled = v3;
    if (v3)
    {
      v4 = _AAUILogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Updating for Find My installation.", buf, 2u);
      }

      v5 = v9;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v6 = sub_BF20;
    }

    else
    {
      if (!self->_openInFmipButton)
      {
        return;
      }

      v7 = _AAUILogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Updating for Find My removal", buf, 2u);
      }

      v5 = v8;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v6 = sub_C100;
    }

    v5[2] = v6;
    v5[3] = &unk_59680;
    v5[4] = self;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)dealloc
{
  [(NSURLSessionDataTask *)self->_imageLoadingTask cancel];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AAUIDeviceInfoHeaderView;
  [(AAUIDeviceInfoHeaderView *)&v4 dealloc];
}

- (void)_setupSubviews
{
  v3 = [[UIImageView alloc] initWithImage:0];
  deviceImageView = self->_deviceImageView;
  self->_deviceImageView = v3;

  [(UIImageView *)self->_deviceImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_deviceImageView setContentMode:1];
  [(AAUIDeviceInfoHeaderView *)self addSubview:self->_deviceImageView];
  v5 = objc_alloc_init(UILabel);
  deviceNameLabel = self->_deviceNameLabel;
  self->_deviceNameLabel = v5;

  v7 = self->_deviceNameLabel;
  v8 = [(AATrustedDevice *)self->_device detailDeviceName];
  [(UILabel *)v7 setText:v8];

  v9 = self->_deviceNameLabel;
  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)v9 setFont:v10];

  [(UILabel *)self->_deviceNameLabel setTextAlignment:1];
  [(UILabel *)self->_deviceNameLabel setNumberOfLines:0];
  [(UILabel *)self->_deviceNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AAUIDeviceInfoHeaderView *)self addSubview:self->_deviceNameLabel];
  if ([(AATrustedDevice *)self->_device showFMIPLink]&& [(AAUIDeviceInfoHeaderView *)self _isFindMyIsInstalled])
  {
    self->_findMyIsInstalled = 1;
    v11 = [(AAUIDeviceInfoHeaderView *)self findMyAppLaunchButton];
    v12 = &OBJC_IVAR___AAUIDeviceInfoHeaderView__openInFmipButton;
  }

  else
  {
    v11 = [(AAUIDeviceInfoHeaderView *)self _deviceTypeLabel];
    v12 = &OBJC_IVAR___AAUIDeviceInfoHeaderView__detailLabel;
  }

  v13 = *v12;
  v14 = *(&self->super.super.super.isa + v13);
  *(&self->super.super.super.isa + v13) = v11;

  [(AAUIDeviceInfoHeaderView *)self addSubview:*(&self->super.super.super.isa + v13)];
  v33 = *(&self->super.super.super.isa + v13);
  v15 = _NSDictionaryOfVariableBindings(@"_deviceImageView,_deviceNameLabel,detail", self->_deviceImageView, self->_deviceNameLabel, v33, 0);
  v16 = objc_alloc_init(NSMutableArray);
  v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"V:|-%f-[_deviceImageView(==%f)]-%f-[_deviceNameLabel][detail]-%f-|", 0x4039000000000000, 0x4054000000000000, 0x402E000000000000, 0x4041800000000000);
  v17 = [NSLayoutConstraint constraintsWithVisualFormat:v32 options:0 metrics:0 views:v15];
  [v16 addObjectsFromArray:v17];

  v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"H:|-%f-[_deviceImageView]-%f-|", 0x402E000000000000, 0x402E000000000000);
  v19 = [NSLayoutConstraint constraintsWithVisualFormat:v18 options:0 metrics:0 views:v15];
  [v16 addObjectsFromArray:v19];

  v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"H:|-%f-[_deviceNameLabel]-%f-|", 0x402E000000000000, 0x402E000000000000);
  v21 = [NSLayoutConstraint constraintsWithVisualFormat:v20 options:0 metrics:0 views:v15];
  [v16 addObjectsFromArray:v21];

  v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"H:|-%f-[detail]-%f-|", 0x402E000000000000, 0x402E000000000000);
  v23 = [NSLayoutConstraint constraintsWithVisualFormat:v22 options:0 metrics:0 views:v15];
  [v16 addObjectsFromArray:v23];

  v24 = self->_deviceImageView;
  v25 = [(UIImageView *)v24 superview];
  v26 = [NSLayoutConstraint constraintWithItem:v24 attribute:9 relatedBy:0 toItem:v25 attribute:9 multiplier:1.0 constant:0.0];
  [v16 addObject:v26];

  v27 = self->_deviceNameLabel;
  v28 = [(UILabel *)v27 superview];
  v29 = [NSLayoutConstraint constraintWithItem:v27 attribute:9 relatedBy:0 toItem:v28 attribute:9 multiplier:1.0 constant:0.0];
  [v16 addObject:v29];

  v30 = [v33 superview];
  v31 = [NSLayoutConstraint constraintWithItem:v33 attribute:9 relatedBy:0 toItem:v30 attribute:9 multiplier:1.0 constant:0.0];
  [v16 addObject:v31];

  [(AAUIDeviceInfoHeaderView *)self addConstraints:v16];
}

- (BOOL)_isFindMyIsInstalled
{
  v9 = 0;
  v2 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.findmy" allowPlaceholder:0 error:&v9];
  v3 = v9;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v5)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Find My app not detected: %@", buf, 0xCu);
    }
  }

  return v6;
}

- (id)_deviceTypeLabel
{
  v3 = objc_alloc_init(UILabel);
  v4 = [(AATrustedDevice *)self->_device detailSubLabel];
  [v3 setText:v4];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v3 setFont:v5];

  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[UIColor secondaryLabelColor];
  [v3 setTextColor:v6];

  return v3;
}

- (id)findMyAppLaunchButton
{
  v3 = objc_alloc_init(UIButton);
  openInFmipButton = self->_openInFmipButton;
  self->_openInFmipButton = v3;

  v5 = [(UIButton *)self->_openInFmipButton titleLabel];
  [v5 setNumberOfLines:0];

  v6 = [(UIButton *)self->_openInFmipButton titleLabel];
  [v6 setTextAlignment:1];

  v7 = self->_openInFmipButton;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SHOW_IN_FMIP" value:&stru_5A5F0 table:@"Localizable"];
  [(UIButton *)v7 setTitle:v9 forState:0];

  [(UIButton *)self->_openInFmipButton addTarget:self action:"_openFMIPButtonPressed" forControlEvents:64];
  [(UIButton *)self->_openInFmipButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = self->_openInFmipButton;
  v11 = [(AAUIDeviceInfoHeaderView *)self tintColor];
  [(UIButton *)v10 setTitleColor:v11 forState:0];

  v12 = self->_openInFmipButton;
  v13 = [(AAUIDeviceInfoHeaderView *)self tintColor];
  v14 = [v13 colorWithAlphaComponent:0.200000003];
  [(UIButton *)v12 setTitleColor:v14 forState:1];

  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v16 = [(UIButton *)self->_openInFmipButton titleLabel];
  [v16 setFont:v15];

  v17 = self->_openInFmipButton;

  return v17;
}

- (void)_openFMIPButtonPressed
{
  v2 = [(AATrustedDevice *)self->_device FMIPDeviceID];
  v3 = [NSString stringWithFormat:@"fmip1://device/device?id=%@", v2];
  v5 = [NSURL URLWithString:v3];

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openURL:v5];
}

- (void)_getLazyLoadedDeviceImage
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting to fetch device header image...", buf, 2u);
  }

  v4 = [(AAUIDeviceInfoHeaderView *)self getDeviceImageURL];
  v5 = [NSURLRequest requestWithURL:v4 cachePolicy:2 timeoutInterval:20.0];

  v6 = [(AAUIDeviceInfoHeaderView *)self _urlSession];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_CD84;
  v9[3] = &unk_596A8;
  v9[4] = self;
  v7 = [v6 dataTaskWithRequest:v5 completionHandler:v9];
  imageLoadingTask = self->_imageLoadingTask;
  self->_imageLoadingTask = v7;

  [(NSURLSessionDataTask *)self->_imageLoadingTask resume];
}

- (id)_urlSession
{
  urlSession = self->_urlSession;
  if (!urlSession)
  {
    v4 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    v5 = +[AACertificatePinner sharedPinner];
    v6 = [NSURLSession sessionWithConfiguration:v4 delegate:v5 delegateQueue:0];
    v7 = self->_urlSession;
    self->_urlSession = v6;

    urlSession = self->_urlSession;
  }

  return urlSession;
}

- (id)getDeviceImageURL
{
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  v5 = v4;

  if (v5 < 3)
  {
    device = self->_device;
    if (v5 == 2)
    {
      [(AATrustedDevice *)device modelLargePhotoURL2x];
    }

    else
    {
      [(AATrustedDevice *)device modelLargePhotoURL1x];
    }
    v6 = ;
  }

  else
  {
    v6 = [(AATrustedDevice *)self->_device modelLargePhotoURL3x];
  }

  v8 = v6;
  v9 = [NSURL URLWithString:v6];

  return v9;
}

@end