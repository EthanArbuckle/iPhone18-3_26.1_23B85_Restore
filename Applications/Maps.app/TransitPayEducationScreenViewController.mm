@interface TransitPayEducationScreenViewController
- (TransitPayEducationScreenViewController)initWithAssetURLs:(id)ls titleText:(id)text bodyText:(id)bodyText;
- (id)_assetView;
- (id)_createContentStackView;
- (id)_createFooterBlurView;
- (id)_createMainImageView;
- (id)_createOkButton;
- (id)_createPrimaryLabelWithText:(id)text;
- (id)_createSecondaryLabelWithText:(id)text;
- (id)_createSpinnerView;
- (id)_createVideoView;
- (void)_determineAssetCategory;
- (void)_loadAsset;
- (void)_loadImage;
- (void)_loadMovie;
- (void)_setUpConstraints;
- (void)_setUpViews;
- (void)_showMovieWithData:(id)data;
- (void)_updateBlurViewVisibilityIfNeeded;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TransitPayEducationScreenViewController

- (void)_updateBlurViewVisibilityIfNeeded
{
  [(MUScrollableStackView *)self->_contentStackView contentSize];
  v4 = v3;
  [(MUScrollableStackView *)self->_contentStackView frame];
  v6 = v4 - v5;
  [(MUScrollableStackView *)self->_contentStackView contentOffset];
  footerBlurView = self->_footerBlurView;

  [(UIVisualEffectView *)footerBlurView setHidden:v7 >= v6];
}

- (void)_loadImage
{
  objc_initWeak(&location, self);
  v3 = +[MKAppImageManager sharedImageManager];
  assetURL = self->_assetURL;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A43124;
  v5[3] = &unk_101632620;
  objc_copyWeak(&v6, &location);
  [v3 loadAppImageAtURL:assetURL completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_loadMovie
{
  v3 = sub_10003D020();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Showing the education screen with a movie asset", buf, 2u);
  }

  assetURL = self->_assetURL;
  if (assetURL && (-[NSURL absoluteString](assetURL, "absoluteString"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v6))
  {
    v7 = [NSURLRequest alloc];
    v8 = self->_assetURL;
    GEOConfigGetDouble();
    v9 = [v7 initWithURL:v8 cachePolicy:2 timeoutInterval:?];
    objc_initWeak(buf, self);
    v10 = +[NSURLSession sharedSession];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100A43690;
    v18 = &unk_1016325F8;
    objc_copyWeak(&v20, buf);
    v19 = @"Transit_Pay";
    v11 = [v10 dataTaskWithRequest:v9 completionHandler:&v15];
    downloadTask = self->_downloadTask;
    self->_downloadTask = v11;

    [(NSURLSessionDataTask *)self->_downloadTask resume:v15];
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v13 = sub_10003D020();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "_assetURL is missing. Showing backup video.", buf, 2u);
    }

    v9 = [[NSDataAsset alloc] initWithName:@"Transit_Pay"];
    data = [v9 data];
    [(TransitPayEducationScreenViewController *)self _showMovieWithData:data];
  }
}

- (void)_showMovieWithData:(id)data
{
  v13[0] = AVAssetPreferPreciseDurationAndTimingKey;
  v13[1] = AVAssetReferenceRestrictionsKey;
  v14[0] = &__kCFBooleanFalse;
  v14[1] = &off_1016E8120;
  dataCopy = data;
  v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v6 = [AVAsset assetWithData:dataCopy contentType:AVFileTypeAppleM4V options:v5];

  v7 = [AVPlayerItem playerItemWithAsset:v6];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A439A8;
  v9[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v10 = v7;
  v8 = v7;
  dispatch_async(&_dispatch_main_q, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_loadAsset
{
  [(UIActivityIndicatorView *)self->_spinnerView startAnimating];
  if (self->_isAssetMovie)
  {

    [(TransitPayEducationScreenViewController *)self _loadMovie];
  }

  else
  {

    [(TransitPayEducationScreenViewController *)self _loadImage];
  }
}

- (void)_determineAssetCategory
{
  absoluteString = [(NSURL *)self->_assetURL absoluteString];
  v4 = [absoluteString length];

  if (v4)
  {
    pathExtension = [(NSURL *)self->_assetURL pathExtension];
    v6 = [UTType typeWithFilenameExtension:pathExtension];

    if ([v6 conformsToType:UTTypeMovie])
    {
      v7 = sub_10003D020();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        absoluteString2 = [(NSURL *)self->_assetURL absoluteString];
        v15 = 138412290;
        v16 = absoluteString2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Asset is a movie and the URL is %@", &v15, 0xCu);
      }

      self->_isAssetMovie = 1;
    }

    else
    {
      v11 = [v6 conformsToType:UTTypeImage];
      v12 = sub_10003D020();
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          absoluteString3 = [(NSURL *)self->_assetURL absoluteString];
          v15 = 138412290;
          v16 = absoluteString3;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Asset is an image and the URL is %@", &v15, 0xCu);
        }

        self->_isAssetMovie = 0;
      }

      else
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Received a URL with an extension that's neither a movie nor an image", &v15, 2u);
        }
      }
    }
  }

  else
  {
    v9 = sub_10003D020();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      absoluteString4 = [(NSURL *)self->_assetURL absoluteString];
      v15 = 138412290;
      v16 = absoluteString4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Asset is a movie because the URL length is zero: %@", &v15, 0xCu);
    }

    self->_isAssetMovie = 1;
  }
}

- (id)_createOkButton
{
  v3 = +[OBBoldTrayButton boldButton];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"OK [Transit + Pay Education Screen Dismissal]" value:@"localized string not found" table:0];
  [v3 setTitle:v5 forState:0];

  [v3 addTarget:self action:"_okPressed" forControlEvents:64];

  return v3;
}

- (id)_createFooterBlurView
{
  v2 = [UIBlurEffect effectWithStyle:6];
  v3 = [[UIVisualEffectView alloc] initWithEffect:v2];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v3;
}

- (id)_createSecondaryLabelWithText:(id)text
{
  textCopy = text;
  v4 = objc_alloc_init(UILabel);
  [v4 setText:textCopy];

  [v4 setTextAlignment:1];
  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightRegular];
  [v4 setFont:v5];

  [v4 setNumberOfLines:0];

  return v4;
}

- (id)_createPrimaryLabelWithText:(id)text
{
  textCopy = text;
  v4 = objc_alloc_init(UILabel);
  [v4 setText:textCopy];

  [v4 setTextAlignment:1];
  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleLargeTitle weight:UIFontWeightBold];
  [v4 setFont:v5];

  [v4 setNumberOfLines:0];

  return v4;
}

- (id)_createSpinnerView
{
  v2 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = +[UIColor systemGrayColor];
  [v2 setColor:v3];

  return v2;
}

- (id)_createVideoView
{
  v2 = [[MapsLoopingVideoPlayerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MapsLoopingVideoPlayerView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (id)_createMainImageView
{
  v2 = objc_alloc_init(UIImageView);
  v3 = +[UIColor secondarySystemBackgroundColor];
  [v2 setBackgroundColor:v3];

  [v2 setContentMode:2];

  return v2;
}

- (id)_createContentStackView
{
  v2 = objc_alloc_init(MUScrollableStackView);
  GEOConfigGetDouble();
  v4 = v3;
  GEOConfigGetDouble();
  v6 = v5 * v4;
  [v2 setAxis:1];
  [v2 setDistribution:0];
  [v2 setAlignment:3];
  [v2 setSpacing:v6];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setClipsToBounds:0];

  return v2;
}

- (void)_setUpConstraints
{
  GEOConfigGetDouble();
  v4 = v3;
  GEOConfigGetDouble();
  v6 = v5;
  GEOConfigGetDouble();
  v8 = v7;
  GEOConfigGetDouble();
  v10 = v9;
  v11 = v9 * v8;
  GEOConfigGetDouble();
  v13 = v12;
  GEOConfigGetDouble();
  v15 = v14;
  GEOConfigGetDouble();
  v69 = v16;
  GEOConfigGetDouble();
  v67 = v17;
  GEOConfigGetDouble();
  v19 = v18;
  _assetView = [(TransitPayEducationScreenViewController *)self _assetView];
  topAnchor = [(MUScrollableStackView *)self->_contentStackView topAnchor];
  view = [(TransitPayEducationScreenViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v97 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v102[0] = v97;
  leadingAnchor = [(MUScrollableStackView *)self->_contentStackView leadingAnchor];
  view2 = [(TransitPayEducationScreenViewController *)self view];
  safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v92 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v102[1] = v92;
  trailingAnchor = [(MUScrollableStackView *)self->_contentStackView trailingAnchor];
  view3 = [(TransitPayEducationScreenViewController *)self view];
  safeAreaLayoutGuide3 = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v87 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v102[2] = v87;
  leadingAnchor3 = [_assetView leadingAnchor];
  leadingAnchor4 = [(MUScrollableStackView *)self->_contentStackView leadingAnchor];
  v84 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v102[3] = v84;
  trailingAnchor3 = [_assetView trailingAnchor];
  trailingAnchor4 = [(MUScrollableStackView *)self->_contentStackView trailingAnchor];
  v81 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v102[4] = v81;
  heightAnchor = [_assetView heightAnchor];
  widthAnchor = [(MUScrollableStackView *)self->_contentStackView widthAnchor];
  v77 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:1.0 / v19];
  v102[5] = v77;
  leadingAnchor5 = [(UIActivityIndicatorView *)self->_spinnerView leadingAnchor];
  centerXAnchor = [_assetView centerXAnchor];
  v74 = [leadingAnchor5 constraintEqualToAnchor:centerXAnchor];
  v102[6] = v74;
  centerYAnchor = [(UIActivityIndicatorView *)self->_spinnerView centerYAnchor];
  centerYAnchor2 = [_assetView centerYAnchor];
  v71 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v102[7] = v71;
  widthAnchor2 = [(UIActivityIndicatorView *)self->_spinnerView widthAnchor];
  [_assetView frame];
  v68 = [widthAnchor2 constraintEqualToConstant:v20 * 0.5];
  v102[8] = v68;
  heightAnchor2 = [(UIActivityIndicatorView *)self->_spinnerView heightAnchor];
  [_assetView frame];
  v65 = [heightAnchor2 constraintEqualToConstant:v21 * 0.5];
  v102[9] = v65;
  widthAnchor3 = [(UILabel *)self->_primaryLabel widthAnchor];
  widthAnchor4 = [(MUScrollableStackView *)self->_contentStackView widthAnchor];
  v22 = v13 * -2.0 * v15;
  v62 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4 constant:v22];
  v102[10] = v62;
  widthAnchor5 = [(UILabel *)self->_secondaryLabel widthAnchor];
  widthAnchor6 = [(MUScrollableStackView *)self->_contentStackView widthAnchor];
  v59 = [widthAnchor5 constraintLessThanOrEqualToAnchor:widthAnchor6 constant:v22];
  v102[11] = v59;
  bottomAnchor = [(UIVisualEffectView *)self->_footerBlurView bottomAnchor];
  view4 = [(TransitPayEducationScreenViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v55 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v102[12] = v55;
  leadingAnchor6 = [(UIVisualEffectView *)self->_footerBlurView leadingAnchor];
  view5 = [(TransitPayEducationScreenViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  leadingAnchor7 = [safeAreaLayoutGuide4 leadingAnchor];
  v50 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v102[13] = v50;
  trailingAnchor5 = [(UIVisualEffectView *)self->_footerBlurView trailingAnchor];
  view6 = [(TransitPayEducationScreenViewController *)self view];
  safeAreaLayoutGuide5 = [view6 safeAreaLayoutGuide];
  trailingAnchor6 = [safeAreaLayoutGuide5 trailingAnchor];
  v45 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v102[14] = v45;
  bottomAnchor3 = [(UIButton *)self->_okButton bottomAnchor];
  view7 = [(TransitPayEducationScreenViewController *)self view];
  safeAreaLayoutGuide6 = [view7 safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide6 bottomAnchor];
  v40 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-(v4 * v6)];
  v102[15] = v40;
  leadingAnchor8 = [(UIButton *)self->_okButton leadingAnchor];
  view8 = [(TransitPayEducationScreenViewController *)self view];
  safeAreaLayoutGuide7 = [view8 safeAreaLayoutGuide];
  leadingAnchor9 = [safeAreaLayoutGuide7 leadingAnchor];
  v35 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:v11];
  v102[16] = v35;
  trailingAnchor7 = [(UIButton *)self->_okButton trailingAnchor];
  view9 = [(TransitPayEducationScreenViewController *)self view];
  safeAreaLayoutGuide8 = [view9 safeAreaLayoutGuide];
  trailingAnchor8 = [safeAreaLayoutGuide8 trailingAnchor];
  v25 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-(v10 * v8)];
  v102[17] = v25;
  topAnchor3 = [(UIVisualEffectView *)self->_footerBlurView topAnchor];
  topAnchor4 = [(UIButton *)self->_okButton topAnchor];
  v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-(v69 * v67)];
  v102[18] = v28;
  bottomAnchor5 = [(MUScrollableStackView *)self->_contentStackView bottomAnchor];
  topAnchor5 = [(UIButton *)self->_okButton topAnchor];
  v31 = [bottomAnchor5 constraintEqualToAnchor:topAnchor5 constant:-(v69 * v67)];
  v102[19] = v31;
  v32 = [NSArray arrayWithObjects:v102 count:20];
  [NSLayoutConstraint activateConstraints:v32];
}

- (void)_setUpViews
{
  v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Passbook" allowPlaceholder:0 error:0];
  localizedName = [v3 localizedName];
  v19 = [localizedName copy];

  v5 = [[TransitPayEducationScreenTitleView alloc] initWithTitle:v19];
  navigationItem = [(TransitPayEducationScreenViewController *)self navigationItem];
  [navigationItem setTitleView:v5];

  view = [(TransitPayEducationScreenViewController *)self view];
  [view addSubview:self->_contentStackView];

  contentStackView = self->_contentStackView;
  _assetView = [(TransitPayEducationScreenViewController *)self _assetView];
  [(MUScrollableStackView *)contentStackView addArrangedSubview:_assetView];

  [(MUScrollableStackView *)self->_contentStackView addArrangedSubview:self->_primaryLabel];
  [(MUScrollableStackView *)self->_contentStackView addArrangedSubview:self->_secondaryLabel];
  GEOConfigGetDouble();
  v11 = v10;
  GEOConfigGetDouble();
  v13 = v12 * v11;
  v14 = self->_contentStackView;
  _assetView2 = [(TransitPayEducationScreenViewController *)self _assetView];
  [(MUScrollableStackView *)v14 setCustomSpacing:_assetView2 afterView:v13];

  _assetView3 = [(TransitPayEducationScreenViewController *)self _assetView];
  [_assetView3 addSubview:self->_spinnerView];

  view2 = [(TransitPayEducationScreenViewController *)self view];
  [view2 addSubview:self->_footerBlurView];

  view3 = [(TransitPayEducationScreenViewController *)self view];
  [view3 addSubview:self->_okButton];
}

- (id)_assetView
{
  if (self->_isAssetMovie)
  {
    v2 = &OBJC_IVAR___TransitPayEducationScreenViewController__videoView;
  }

  else
  {
    v2 = &OBJC_IVAR___TransitPayEducationScreenViewController__mainImageView;
  }

  return *(&self->super.super.super.isa + *v2);
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = TransitPayEducationScreenViewController;
  [(TransitPayEducationScreenViewController *)&v3 viewDidLayoutSubviews];
  [(TransitPayEducationScreenViewController *)self _updateBlurViewVisibilityIfNeeded];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TransitPayEducationScreenViewController;
  [(TransitPayEducationScreenViewController *)&v5 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(TransitPayEducationScreenViewController *)self view];
  [view setBackgroundColor:v3];

  [(TransitPayEducationScreenViewController *)self _determineAssetCategory];
  [(TransitPayEducationScreenViewController *)self _setUpViews];
  [(TransitPayEducationScreenViewController *)self _setUpConstraints];
  [(TransitPayEducationScreenViewController *)self _loadAsset];
}

- (TransitPayEducationScreenViewController)initWithAssetURLs:(id)ls titleText:(id)text bodyText:(id)bodyText
{
  lsCopy = ls;
  textCopy = text;
  bodyTextCopy = bodyText;
  v33.receiver = self;
  v33.super_class = TransitPayEducationScreenViewController;
  v11 = [(TransitPayEducationScreenViewController *)&v33 init];
  v12 = v11;
  if (v11)
  {
    _createMainImageView = [(TransitPayEducationScreenViewController *)v11 _createMainImageView];
    mainImageView = v12->_mainImageView;
    v12->_mainImageView = _createMainImageView;

    v15 = [(TransitPayEducationScreenViewController *)v12 _createPrimaryLabelWithText:textCopy];
    primaryLabel = v12->_primaryLabel;
    v12->_primaryLabel = v15;

    v17 = [(TransitPayEducationScreenViewController *)v12 _createSecondaryLabelWithText:bodyTextCopy];
    secondaryLabel = v12->_secondaryLabel;
    v12->_secondaryLabel = v17;

    _createContentStackView = [(TransitPayEducationScreenViewController *)v12 _createContentStackView];
    contentStackView = v12->_contentStackView;
    v12->_contentStackView = _createContentStackView;

    _createFooterBlurView = [(TransitPayEducationScreenViewController *)v12 _createFooterBlurView];
    footerBlurView = v12->_footerBlurView;
    v12->_footerBlurView = _createFooterBlurView;

    _createOkButton = [(TransitPayEducationScreenViewController *)v12 _createOkButton];
    okButton = v12->_okButton;
    v12->_okButton = _createOkButton;

    _createVideoView = [(TransitPayEducationScreenViewController *)v12 _createVideoView];
    videoView = v12->_videoView;
    v12->_videoView = _createVideoView;

    _createSpinnerView = [(TransitPayEducationScreenViewController *)v12 _createSpinnerView];
    spinnerView = v12->_spinnerView;
    v12->_spinnerView = _createSpinnerView;

    v29 = +[MKSystemController sharedInstance];
    [v29 screenScale];
    v30 = GEOAssetURLForScaleFactor();
    assetURL = v12->_assetURL;
    v12->_assetURL = v30;

    v12->_isAssetMovie = 1;
  }

  return v12;
}

@end