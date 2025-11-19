@interface TransitPayEducationScreenViewController
- (TransitPayEducationScreenViewController)initWithAssetURLs:(id)a3 titleText:(id)a4 bodyText:(id)a5;
- (id)_assetView;
- (id)_createContentStackView;
- (id)_createFooterBlurView;
- (id)_createMainImageView;
- (id)_createOkButton;
- (id)_createPrimaryLabelWithText:(id)a3;
- (id)_createSecondaryLabelWithText:(id)a3;
- (id)_createSpinnerView;
- (id)_createVideoView;
- (void)_determineAssetCategory;
- (void)_loadAsset;
- (void)_loadImage;
- (void)_loadMovie;
- (void)_setUpConstraints;
- (void)_setUpViews;
- (void)_showMovieWithData:(id)a3;
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
    v14 = [v9 data];
    [(TransitPayEducationScreenViewController *)self _showMovieWithData:v14];
  }
}

- (void)_showMovieWithData:(id)a3
{
  v13[0] = AVAssetPreferPreciseDurationAndTimingKey;
  v13[1] = AVAssetReferenceRestrictionsKey;
  v14[0] = &__kCFBooleanFalse;
  v14[1] = &off_1016E8120;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v6 = [AVAsset assetWithData:v4 contentType:AVFileTypeAppleM4V options:v5];

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
  v3 = [(NSURL *)self->_assetURL absoluteString];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(NSURL *)self->_assetURL pathExtension];
    v6 = [UTType typeWithFilenameExtension:v5];

    if ([v6 conformsToType:UTTypeMovie])
    {
      v7 = sub_10003D020();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [(NSURL *)self->_assetURL absoluteString];
        v15 = 138412290;
        v16 = v8;
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
          v14 = [(NSURL *)self->_assetURL absoluteString];
          v15 = 138412290;
          v16 = v14;
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
      v10 = [(NSURL *)self->_assetURL absoluteString];
      v15 = 138412290;
      v16 = v10;
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

- (id)_createSecondaryLabelWithText:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UILabel);
  [v4 setText:v3];

  [v4 setTextAlignment:1];
  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightRegular];
  [v4 setFont:v5];

  [v4 setNumberOfLines:0];

  return v4;
}

- (id)_createPrimaryLabelWithText:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UILabel);
  [v4 setText:v3];

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
  v80 = [(TransitPayEducationScreenViewController *)self _assetView];
  v100 = [(MUScrollableStackView *)self->_contentStackView topAnchor];
  v101 = [(TransitPayEducationScreenViewController *)self view];
  v99 = [v101 safeAreaLayoutGuide];
  v98 = [v99 topAnchor];
  v97 = [v100 constraintEqualToAnchor:v98];
  v102[0] = v97;
  v95 = [(MUScrollableStackView *)self->_contentStackView leadingAnchor];
  v96 = [(TransitPayEducationScreenViewController *)self view];
  v94 = [v96 safeAreaLayoutGuide];
  v93 = [v94 leadingAnchor];
  v92 = [v95 constraintEqualToAnchor:v93];
  v102[1] = v92;
  v90 = [(MUScrollableStackView *)self->_contentStackView trailingAnchor];
  v91 = [(TransitPayEducationScreenViewController *)self view];
  v89 = [v91 safeAreaLayoutGuide];
  v88 = [v89 trailingAnchor];
  v87 = [v90 constraintEqualToAnchor:v88];
  v102[2] = v87;
  v86 = [v80 leadingAnchor];
  v85 = [(MUScrollableStackView *)self->_contentStackView leadingAnchor];
  v84 = [v86 constraintEqualToAnchor:v85];
  v102[3] = v84;
  v83 = [v80 trailingAnchor];
  v82 = [(MUScrollableStackView *)self->_contentStackView trailingAnchor];
  v81 = [v83 constraintEqualToAnchor:v82];
  v102[4] = v81;
  v79 = [v80 heightAnchor];
  v78 = [(MUScrollableStackView *)self->_contentStackView widthAnchor];
  v77 = [v79 constraintEqualToAnchor:v78 multiplier:1.0 / v19];
  v102[5] = v77;
  v76 = [(UIActivityIndicatorView *)self->_spinnerView leadingAnchor];
  v75 = [v80 centerXAnchor];
  v74 = [v76 constraintEqualToAnchor:v75];
  v102[6] = v74;
  v73 = [(UIActivityIndicatorView *)self->_spinnerView centerYAnchor];
  v72 = [v80 centerYAnchor];
  v71 = [v73 constraintEqualToAnchor:v72];
  v102[7] = v71;
  v70 = [(UIActivityIndicatorView *)self->_spinnerView widthAnchor];
  [v80 frame];
  v68 = [v70 constraintEqualToConstant:v20 * 0.5];
  v102[8] = v68;
  v66 = [(UIActivityIndicatorView *)self->_spinnerView heightAnchor];
  [v80 frame];
  v65 = [v66 constraintEqualToConstant:v21 * 0.5];
  v102[9] = v65;
  v64 = [(UILabel *)self->_primaryLabel widthAnchor];
  v63 = [(MUScrollableStackView *)self->_contentStackView widthAnchor];
  v22 = v13 * -2.0 * v15;
  v62 = [v64 constraintLessThanOrEqualToAnchor:v63 constant:v22];
  v102[10] = v62;
  v61 = [(UILabel *)self->_secondaryLabel widthAnchor];
  v60 = [(MUScrollableStackView *)self->_contentStackView widthAnchor];
  v59 = [v61 constraintLessThanOrEqualToAnchor:v60 constant:v22];
  v102[11] = v59;
  v57 = [(UIVisualEffectView *)self->_footerBlurView bottomAnchor];
  v58 = [(TransitPayEducationScreenViewController *)self view];
  v56 = [v58 bottomAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v102[12] = v55;
  v53 = [(UIVisualEffectView *)self->_footerBlurView leadingAnchor];
  v54 = [(TransitPayEducationScreenViewController *)self view];
  v52 = [v54 safeAreaLayoutGuide];
  v51 = [v52 leadingAnchor];
  v50 = [v53 constraintEqualToAnchor:v51];
  v102[13] = v50;
  v48 = [(UIVisualEffectView *)self->_footerBlurView trailingAnchor];
  v49 = [(TransitPayEducationScreenViewController *)self view];
  v47 = [v49 safeAreaLayoutGuide];
  v46 = [v47 trailingAnchor];
  v45 = [v48 constraintEqualToAnchor:v46];
  v102[14] = v45;
  v43 = [(UIButton *)self->_okButton bottomAnchor];
  v44 = [(TransitPayEducationScreenViewController *)self view];
  v42 = [v44 safeAreaLayoutGuide];
  v41 = [v42 bottomAnchor];
  v40 = [v43 constraintEqualToAnchor:v41 constant:-(v4 * v6)];
  v102[15] = v40;
  v38 = [(UIButton *)self->_okButton leadingAnchor];
  v39 = [(TransitPayEducationScreenViewController *)self view];
  v37 = [v39 safeAreaLayoutGuide];
  v36 = [v37 leadingAnchor];
  v35 = [v38 constraintEqualToAnchor:v36 constant:v11];
  v102[16] = v35;
  v33 = [(UIButton *)self->_okButton trailingAnchor];
  v34 = [(TransitPayEducationScreenViewController *)self view];
  v23 = [v34 safeAreaLayoutGuide];
  v24 = [v23 trailingAnchor];
  v25 = [v33 constraintEqualToAnchor:v24 constant:-(v10 * v8)];
  v102[17] = v25;
  v26 = [(UIVisualEffectView *)self->_footerBlurView topAnchor];
  v27 = [(UIButton *)self->_okButton topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-(v69 * v67)];
  v102[18] = v28;
  v29 = [(MUScrollableStackView *)self->_contentStackView bottomAnchor];
  v30 = [(UIButton *)self->_okButton topAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-(v69 * v67)];
  v102[19] = v31;
  v32 = [NSArray arrayWithObjects:v102 count:20];
  [NSLayoutConstraint activateConstraints:v32];
}

- (void)_setUpViews
{
  v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Passbook" allowPlaceholder:0 error:0];
  v4 = [v3 localizedName];
  v19 = [v4 copy];

  v5 = [[TransitPayEducationScreenTitleView alloc] initWithTitle:v19];
  v6 = [(TransitPayEducationScreenViewController *)self navigationItem];
  [v6 setTitleView:v5];

  v7 = [(TransitPayEducationScreenViewController *)self view];
  [v7 addSubview:self->_contentStackView];

  contentStackView = self->_contentStackView;
  v9 = [(TransitPayEducationScreenViewController *)self _assetView];
  [(MUScrollableStackView *)contentStackView addArrangedSubview:v9];

  [(MUScrollableStackView *)self->_contentStackView addArrangedSubview:self->_primaryLabel];
  [(MUScrollableStackView *)self->_contentStackView addArrangedSubview:self->_secondaryLabel];
  GEOConfigGetDouble();
  v11 = v10;
  GEOConfigGetDouble();
  v13 = v12 * v11;
  v14 = self->_contentStackView;
  v15 = [(TransitPayEducationScreenViewController *)self _assetView];
  [(MUScrollableStackView *)v14 setCustomSpacing:v15 afterView:v13];

  v16 = [(TransitPayEducationScreenViewController *)self _assetView];
  [v16 addSubview:self->_spinnerView];

  v17 = [(TransitPayEducationScreenViewController *)self view];
  [v17 addSubview:self->_footerBlurView];

  v18 = [(TransitPayEducationScreenViewController *)self view];
  [v18 addSubview:self->_okButton];
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
  v4 = [(TransitPayEducationScreenViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(TransitPayEducationScreenViewController *)self _determineAssetCategory];
  [(TransitPayEducationScreenViewController *)self _setUpViews];
  [(TransitPayEducationScreenViewController *)self _setUpConstraints];
  [(TransitPayEducationScreenViewController *)self _loadAsset];
}

- (TransitPayEducationScreenViewController)initWithAssetURLs:(id)a3 titleText:(id)a4 bodyText:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v33.receiver = self;
  v33.super_class = TransitPayEducationScreenViewController;
  v11 = [(TransitPayEducationScreenViewController *)&v33 init];
  v12 = v11;
  if (v11)
  {
    v13 = [(TransitPayEducationScreenViewController *)v11 _createMainImageView];
    mainImageView = v12->_mainImageView;
    v12->_mainImageView = v13;

    v15 = [(TransitPayEducationScreenViewController *)v12 _createPrimaryLabelWithText:v9];
    primaryLabel = v12->_primaryLabel;
    v12->_primaryLabel = v15;

    v17 = [(TransitPayEducationScreenViewController *)v12 _createSecondaryLabelWithText:v10];
    secondaryLabel = v12->_secondaryLabel;
    v12->_secondaryLabel = v17;

    v19 = [(TransitPayEducationScreenViewController *)v12 _createContentStackView];
    contentStackView = v12->_contentStackView;
    v12->_contentStackView = v19;

    v21 = [(TransitPayEducationScreenViewController *)v12 _createFooterBlurView];
    footerBlurView = v12->_footerBlurView;
    v12->_footerBlurView = v21;

    v23 = [(TransitPayEducationScreenViewController *)v12 _createOkButton];
    okButton = v12->_okButton;
    v12->_okButton = v23;

    v25 = [(TransitPayEducationScreenViewController *)v12 _createVideoView];
    videoView = v12->_videoView;
    v12->_videoView = v25;

    v27 = [(TransitPayEducationScreenViewController *)v12 _createSpinnerView];
    spinnerView = v12->_spinnerView;
    v12->_spinnerView = v27;

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