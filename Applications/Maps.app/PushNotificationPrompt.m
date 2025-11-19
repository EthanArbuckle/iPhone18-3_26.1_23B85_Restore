@interface PushNotificationPrompt
+ (BOOL)shouldPromptForLaunch;
+ (BOOL)shouldRepeatPromptForLaunch;
+ (void)checkShouldRepeatForUserAction:(id)a3;
- (CGSize)preferredContentSize;
- (PushNotificationPrompt)initWithReason:(unint64_t)a3 authorizationStatus:(int64_t)a4 completion:(id)a5;
- (id)detailText;
- (id)primaryButtonTitle;
- (id)secondaryButtonTitle;
- (id)titleString;
- (int)_analyticsTarget;
- (void)_contentSizeDidChange;
- (void)_setHorizontalLayoutWide:(BOOL)a3;
- (void)_updateHorizontalLayoutIfNeeded;
- (void)continueSelected;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PushNotificationPrompt

- (int)_analyticsTarget
{
  promptReason = self->_promptReason;
  if (promptReason > 4)
  {
    return 0;
  }

  else
  {
    return dword_101216010[promptReason];
  }
}

- (void)continueSelected
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [NSNumber numberWithInteger:self->_authorizationStatus];
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "PushNotificationPrompt: continueSelected with authorizationStatus = %@", buf, 0xCu);
  }

  v5 = sub_10000FA08(self);
  if (self->_authorizationStatus)
  {
    v6 = sub_100005610();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "PushNotificationPrompt: opening Notification Settings", buf, 2u);
    }

    [GEOAPPortal captureUserAction:271 target:[(PushNotificationPrompt *)self _analyticsTarget] value:0];
    v7 = [NSURL URLWithString:UIApplicationOpenNotificationSettingsURLString];
    v8 = +[UIApplication sharedApplication];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100ECF6BC;
    v13[3] = &unk_101661738;
    v13[4] = self;
    [v8 openURL:v7 options:&__NSDictionary0__struct completionHandler:v13];
  }

  else
  {
    v9 = v5;
    v10 = v5 == 5;
    [GEOAPPortal captureUserAction:2119 target:[(PushNotificationPrompt *)self _analyticsTarget] value:0];
    v11 = +[UNUserNotificationCenter currentNotificationCenter];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100ECF610;
    v14[3] = &unk_101658960;
    v15 = v10;
    v14[4] = self;
    [v11 requestAuthorizationWithOptions:14 completionHandler:v14];

    if (v9 == 5)
    {
      completion = self->_completion;
      if (completion)
      {
        completion[2]();
      }
    }
  }
}

- (CGSize)preferredContentSize
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = 600.0;
    v4 = 480.0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PushNotificationPrompt;
    [(PushNotificationPrompt *)&v5 preferredContentSize];
  }

  result.height = v3;
  result.width = v4;
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = PushNotificationPrompt;
  [(PushNotificationPrompt *)&v12 viewDidAppear:a3];
  promptReason = self->_promptReason;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = v5;
  if (promptReason)
  {
    v7 = @"MapsNotificationAuthRepromptCount";
  }

  else
  {
    v7 = @"MapsNotificationAuthPromptCount";
  }

  v8 = [v5 integerForKey:v7];

  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 setInteger:v8 + 1 forKey:v7];

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = +[NSDate date];
  [v10 setObject:v11 forKey:@"MapsNotificationAuthLastPromptedDate"];

  [GEOAPPortal captureUserAction:45 target:[(PushNotificationPrompt *)self _analyticsTarget] value:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PushNotificationPrompt;
  v7 = a4;
  [(PushNotificationPrompt *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100ECFA64;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PushNotificationPrompt;
  [(PushNotificationPrompt *)&v4 viewWillAppear:a3];
  [(PushNotificationPrompt *)self _updateHorizontalLayoutIfNeeded];
}

- (void)_updateHorizontalLayoutIfNeeded
{
  if (sub_10000FA08(self))
  {
    v3 = [(PushNotificationPrompt *)self view];
    v4 = [v3 window];
    v5 = [v4 traitCollection];
    v6 = [v5 horizontalSizeClass] != 1;
  }

  else
  {
    v6 = 0;
  }

  if (sub_10000FA08(self))
  {
    v7 = 0;
  }

  else
  {
    v8 = [(PushNotificationPrompt *)self view];
    [v8 bounds];
    Width = CGRectGetWidth(v12);
    v10 = [(PushNotificationPrompt *)self view];
    [v10 bounds];
    v7 = Width > CGRectGetHeight(v13);
  }

  [(PushNotificationPrompt *)self _setHorizontalLayoutWide:v6 || v7];
}

- (void)_setHorizontalLayoutWide:(BOOL)a3
{
  v3 = a3;
  if (!self->_horizontalConstraints || self->_horizontalLayoutIsWide != a3)
  {
    self->_horizontalLayoutIsWide = a3;
    [NSLayoutConstraint deactivateConstraints:self->_horizontalConstraints];
    v5 = [(UILabel *)self->_titleLabel widthAnchor];
    v6 = [(PushNotificationPrompt *)self view];
    v7 = [v6 widthAnchor];
    if (v3)
    {
      v8 = -74.0;
    }

    else
    {
      v8 = -48.0;
    }

    v9 = [v5 constraintEqualToAnchor:v7 constant:v8];
    v44[0] = v9;
    v10 = [(UILabel *)self->_detailLabel widthAnchor];
    v11 = [(PushNotificationPrompt *)self view];
    v12 = [v11 widthAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 constant:v8];
    v44[1] = v13;
    v41 = [NSArray arrayWithObjects:v44 count:2];

    if (v3)
    {
      v14 = v41;
      if (sub_10000FA08(self) == 5)
      {
LABEL_11:
        [NSLayoutConstraint activateConstraints:v14];
        horizontalConstraints = self->_horizontalConstraints;
        self->_horizontalConstraints = v14;

        return;
      }

      v15 = [(UIButton *)self->_notNowButton centerXAnchor];
      v16 = [(PushNotificationPrompt *)self view];
      v17 = [v16 centerXAnchor];
      v40 = [v15 constraintEqualToAnchor:v17];
      v42[0] = v40;
      v39 = [(UIButton *)self->_notNowButton widthAnchor];
      v38 = [v39 constraintEqualToConstant:360.0];
      v42[1] = v38;
      v18 = [(UIButton *)self->_continueButton centerXAnchor];
      v36 = [(PushNotificationPrompt *)self view];
      [v36 centerXAnchor];
      v35 = v37 = v18;
      v19 = [v18 constraintEqualToAnchor:?];
      v42[2] = v19;
      v20 = [(UIButton *)self->_continueButton widthAnchor];
      v21 = [v20 constraintEqualToConstant:360.0];
      v42[3] = v21;
      v22 = [NSArray arrayWithObjects:v42 count:4];
      v23 = v41;
      v14 = [(NSArray *)v41 arrayByAddingObjectsFromArray:v22];
    }

    else
    {
      v32 = [(UIButton *)self->_notNowButton leadingAnchor];
      v34 = [(PushNotificationPrompt *)self view];
      v33 = [v34 leadingAnchor];
      v40 = [v32 constraintEqualToAnchor:v33 constant:24.0];
      v43[0] = v40;
      v24 = [(UIButton *)self->_notNowButton trailingAnchor];
      v38 = [(PushNotificationPrompt *)self view];
      [v38 trailingAnchor];
      v37 = v39 = v24;
      v36 = [v24 constraintEqualToAnchor:-24.0 constant:?];
      v43[1] = v36;
      v25 = [(UIButton *)self->_continueButton leadingAnchor];
      v31 = [(PushNotificationPrompt *)self view];
      v20 = [v31 leadingAnchor];
      v35 = v25;
      v21 = [v25 constraintEqualToAnchor:v20 constant:24.0];
      v43[2] = v21;
      v22 = [(UIButton *)self->_continueButton trailingAnchor];
      v23 = [(PushNotificationPrompt *)self view];
      v26 = [v23 trailingAnchor];
      v27 = [v22 constraintEqualToAnchor:v26 constant:-24.0];
      v43[3] = v27;
      v28 = [NSArray arrayWithObjects:v43 count:4];
      v29 = [(NSArray *)v41 arrayByAddingObjectsFromArray:v28];

      v14 = v29;
      v19 = v31;

      v15 = v32;
      v17 = v33;

      v16 = v34;
    }

    goto LABEL_11;
  }
}

- (void)_contentSizeDidChange
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v4 = [UIFont _preferredFontForTextStyle:UIFontTextStyleLargeTitle weight:UIFontWeightBold];
  [(UILabel *)self->_titleLabel setFont:v4];

  [(UILabel *)self->_detailLabel setFont:v3];
  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightSemibold];
  v6 = [NSAttributedString alloc];
  v7 = [(PushNotificationPrompt *)self primaryButtonTitle];
  v17 = NSFontAttributeName;
  v18 = v5;
  v8 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v9 = [v6 initWithString:v7 attributes:v8];

  [(UIButton *)self->_continueButton setAttributedTitle:v9 forState:0];
  v10 = [NSAttributedString alloc];
  v11 = [(PushNotificationPrompt *)self secondaryButtonTitle];
  v15 = NSFontAttributeName;
  v16 = v5;
  v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [v10 initWithString:v11 attributes:v12];

  [(UIButton *)self->_notNowButton setAttributedTitle:v13 forState:0];
  [v3 _scaledValueForValue:30.0];
  [(NSLayoutConstraint *)self->_notNowToContinueConstraint setConstant:?];
  [v3 _scaledValueForValue:44.0];
  [(NSLayoutConstraint *)self->_titleToDetailConstraint setConstant:?];
  [v3 _scaledValueForValue:54.0];
  [(NSLayoutConstraint *)self->_continueToBottomConstraint setConstant:-v14];
}

- (void)viewDidLoad
{
  v125.receiver = self;
  v125.super_class = PushNotificationPrompt;
  [(PushNotificationPrompt *)&v125 viewDidLoad];
  v3 = [(PushNotificationPrompt *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = +[UIColor systemBackgroundColor];
  v5 = [(PushNotificationPrompt *)self view];
  [v5 setBackgroundColor:v4];

  v6 = objc_alloc_init(UIScrollView);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(PushNotificationPrompt *)self view];
  [v7 addSubview:v6];

  v8 = +[UIButtonConfiguration filledButtonConfiguration];
  [v8 setButtonSize:3];
  v9 = [v8 background];
  [v9 setCornerRadius:14.0];

  v124[0] = _NSConcreteStackBlock;
  v124[1] = 3221225472;
  v124[2] = sub_100ED10D4;
  v124[3] = &unk_101658910;
  v124[4] = self;
  v10 = [UIAction actionWithHandler:v124];
  v118 = v8;
  v11 = [UIButton buttonWithConfiguration:v8 primaryAction:v10];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(PushNotificationPrompt *)self view];
  [v12 addSubview:v11];

  objc_storeStrong(&self->_continueButton, v11);
  v13 = +[UIButtonConfiguration plainButtonConfiguration];
  v123[0] = _NSConcreteStackBlock;
  v123[1] = 3221225472;
  v123[2] = sub_100ED10DC;
  v123[3] = &unk_101658910;
  v123[4] = self;
  v14 = [UIAction actionWithHandler:v123];
  v15 = [UIButton buttonWithConfiguration:v13 primaryAction:v14];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [v15 configuration];
  [v16 setButtonSize:3];

  v17 = [(PushNotificationPrompt *)self view];
  [v17 addSubview:v15];

  objc_storeStrong(&self->_notNowButton, v15);
  v18 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v22 = [v18 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = +[UIColor labelColor];
  [v22 setTextColor:v23];

  v24 = [(PushNotificationPrompt *)self titleString];
  [v22 setText:v24];

  [v22 setNumberOfLines:0];
  [v22 setTextAlignment:1];
  [v6 addSubview:v22];
  objc_storeStrong(&self->_titleLabel, v22);
  v25 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = +[UIColor labelColor];
  [v25 setTextColor:v26];

  v27 = [(PushNotificationPrompt *)self detailText];
  [v25 setText:v27];

  [v25 setNumberOfLines:0];
  [v25 setTextAlignment:1];
  v120 = v6;
  [v6 addSubview:v25];
  v122 = v25;
  objc_storeStrong(&self->_detailLabel, v25);
  v28 = +[NSLocale currentLocale];
  v29 = [NSDateFormatter dateFormatFromTemplate:@"j" options:0 locale:v28];

  v115 = v29;
  v30 = [v29 containsString:@"a"];
  v117 = v15;
  if (sub_10000FA08(self) == 5)
  {
    v31 = [UIImage imageNamed:@"MacNotificationWarmingHeader"];
  }

  else
  {
    v32 = +[NSLocale currentLocale];
    v33 = [v32 localeIdentifier];

    v34 = _CFLocaleCopyNumberingSystemForLocaleIdentifier();
    if ([v34 isEqualToString:@"arab"])
    {
      if (v30)
      {
        v35 = @"Arabic12hrNotificationWarmingHeader";
      }

      else
      {
        v35 = @"Arabic24hrNotificationWarmingHeader";
      }
    }

    else if ([v34 isEqualToString:@"deva"])
    {
      if (v30)
      {
        v35 = @"Devanagar12hrNotificationWarmingHeader";
      }

      else
      {
        v35 = @"Devanagar24hrNotificationWarmingHeader";
      }
    }

    else if (v30)
    {
      v35 = @"12hrNotificationWarmingHeader";
    }

    else
    {
      v35 = @"24hrNotificationWarmingHeader";
    }

    v31 = [UIImage imageNamed:v35];
  }

  v114 = v31;
  v36 = [[UIImageView alloc] initWithImage:v31];
  [v36 setContentMode:2];
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v36 setClipsToBounds:1];
  [v6 addSubview:v36];
  v37 = [v122 firstBaselineAnchor];
  v38 = [v22 lastBaselineAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  titleToDetailConstraint = self->_titleToDetailConstraint;
  self->_titleToDetailConstraint = v39;

  v108 = [v6 topAnchor];
  v110 = [(PushNotificationPrompt *)self view];
  v106 = [v110 topAnchor];
  v104 = [v108 constraintEqualToAnchor:v106];
  v128[0] = v104;
  v100 = [v6 widthAnchor];
  v102 = [(PushNotificationPrompt *)self view];
  v98 = [v102 widthAnchor];
  v96 = [v100 constraintEqualToAnchor:v98];
  v128[1] = v96;
  v94 = [v6 leadingAnchor];
  v95 = [(PushNotificationPrompt *)self view];
  v93 = [v95 leadingAnchor];
  v92 = [v94 constraintEqualToAnchor:v93];
  v128[2] = v92;
  v91 = [v6 bottomAnchor];
  v90 = [v11 topAnchor];
  v89 = [v91 constraintEqualToAnchor:v90 constant:-16.0];
  v128[3] = v89;
  v88 = [v36 widthAnchor];
  v87 = [v6 widthAnchor];
  v86 = [v88 constraintEqualToAnchor:v87];
  v128[4] = v86;
  v85 = [v36 topAnchor];
  v84 = [v6 topAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v128[5] = v83;
  v81 = [v36 heightAnchor];
  v82 = [(PushNotificationPrompt *)self view];
  v80 = [v82 heightAnchor];
  v79 = [v81 constraintLessThanOrEqualToAnchor:v80 multiplier:0.48];
  v128[6] = v79;
  v78 = [v36 centerXAnchor];
  v77 = [v6 centerXAnchor];
  v76 = [v78 constraintEqualToAnchor:v77];
  v128[7] = v76;
  v75 = [v22 firstBaselineAnchor];
  v113 = v36;
  v74 = [v36 bottomAnchor];
  [v75 constraintEqualToAnchor:v74 constant:54.0];
  v41 = v119 = v11;
  v128[8] = v41;
  v116 = v22;
  v42 = [v22 centerXAnchor];
  v43 = [v120 centerXAnchor];
  [v42 constraintEqualToAnchor:v43];
  v44 = v121 = self;
  v45 = v121->_titleToDetailConstraint;
  v128[9] = v44;
  v128[10] = v45;
  v46 = [v122 centerXAnchor];
  v47 = [v120 centerXAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  v128[11] = v48;
  v49 = [v122 bottomAnchor];
  v50 = [v120 bottomAnchor];
  v51 = [v49 constraintLessThanOrEqualToAnchor:v50 constant:-8.0];
  v128[12] = v51;
  v112 = [NSArray arrayWithObjects:v128 count:13];

  v52 = v121;
  if (sub_10000FA08(v121) == 5)
  {
    v53 = [v119 bottomAnchor];
    v111 = [(PushNotificationPrompt *)v121 view];
    v109 = [v111 bottomAnchor];
    v107 = [v53 constraintEqualToAnchor:v109 constant:-20.0];
    v127[0] = v107;
    v103 = [v119 trailingAnchor];
    v105 = [(PushNotificationPrompt *)v121 view];
    v101 = [v105 trailingAnchor];
    v99 = [v103 constraintEqualToAnchor:v101 constant:-20.0];
    v127[1] = v99;
    v54 = v117;
    v97 = [v117 centerYAnchor];
    v55 = [v119 centerYAnchor];
    v56 = [v97 constraintEqualToAnchor:v55];
    v127[2] = v56;
    v57 = [v117 trailingAnchor];
    v58 = [v119 leadingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:-20.0];
    v127[3] = v59;
    v60 = [NSArray arrayWithObjects:v127 count:4];
    v61 = [v112 arrayByAddingObjectsFromArray:v60];

    v52 = v121;
    v62 = v111;
  }

  else
  {
    v54 = v117;
    v63 = [v117 firstBaselineAnchor];
    v64 = [v119 bottomAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];
    notNowToContinueConstraint = v121->_notNowToContinueConstraint;
    v121->_notNowToContinueConstraint = v65;

    v67 = [v119 bottomAnchor];
    v68 = [(PushNotificationPrompt *)v121 view];
    v69 = [v68 safeAreaLayoutGuide];
    v70 = [v69 bottomAnchor];
    v71 = [v67 constraintEqualToAnchor:v70];
    continueToBottomConstraint = v121->_continueToBottomConstraint;
    v121->_continueToBottomConstraint = v71;

    v73 = v121->_continueToBottomConstraint;
    v126[0] = v121->_notNowToContinueConstraint;
    v126[1] = v73;
    v53 = [NSArray arrayWithObjects:v126 count:2];
    v62 = v112;
    v61 = [v112 arrayByAddingObjectsFromArray:v53];
  }

  [(PushNotificationPrompt *)v52 _contentSizeDidChange];
  [NSLayoutConstraint activateConstraints:v61];
}

- (PushNotificationPrompt)initWithReason:(unint64_t)a3 authorizationStatus:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = PushNotificationPrompt;
  v9 = [(PushNotificationPrompt *)&v15 initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = objc_retainBlock(v8);
    completion = v9->_completion;
    v9->_completion = v10;

    v9->_authorizationStatus = a4;
    v9->_promptReason = a3;
    [(PushNotificationPrompt *)v9 setModalPresentationStyle:2];
    v12 = [(PushNotificationPrompt *)v9 presentationController];
    [v12 setDelegate:v9];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v9 selector:"_contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v9;
}

- (id)secondaryButtonTitle
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"MapsNotificationAuthRepromptCount"];

  Integer = GEOConfigGetInteger();
  promptReason = self->_promptReason;
  v7 = +[NSBundle mainBundle];
  v8 = v7;
  if (v4 + 1 < Integer || promptReason == 0)
  {
    v10 = @"[Notification Prewarm] Not Now";
  }

  else
  {
    v10 = @"[Notification Prewarm] Dismiss";
  }

  v11 = [v7 localizedStringForKey:v10 value:@"localized string not found" table:0];

  return v11;
}

- (id)primaryButtonTitle
{
  if (self->_authorizationStatus)
  {
    v2 = sub_10000FA08(self);
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    if (v2 == 5)
    {
      v5 = @"[Notification Prewarm] Open System Settings";
    }

    else
    {
      v5 = @"[Notification Prewarm] Go to Settings";
    }
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v4 = v3;
    v5 = @"[Notification Prewarm] Enable Notifications";
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  return v6;
}

- (id)detailText
{
  authorizationStatus = self->_authorizationStatus;
  v4 = SBUIIsSystemApertureEnabled();
  if (authorizationStatus)
  {
    if ((v4 & 1) != 0 || (+[GEOCountryConfiguration sharedConfiguration](GEOCountryConfiguration, "sharedConfiguration"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 currentCountrySupportsNavigation], v5, (v6 & 1) == 0))
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"Notifications include shared ETAs and updates about your photos and reports. You can turn notifications for Maps on and off in Settings.";
    }

    else
    {
      v7 = sub_10000FA08(self);
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      if (v7 == 5)
      {
        v10 = @"Notifications include shared ETAs and updates about your photos and reports. You can turn notifications for Maps on and off in System Settings.";
      }

      else
      {
        v10 = @"Notifications include turn-by-turn directions, shared ETAs, and updates about your photos and reports. You can turn notifications for Maps on and off in Settings.";
      }
    }
  }

  else if ((v4 & 1) != 0 || (+[GEOCountryConfiguration sharedConfiguration](GEOCountryConfiguration, "sharedConfiguration"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 currentCountrySupportsNavigation], v11, (v12 & 1) == 0))
  {
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"Notifications include shared ETAs and updates about your photos and reports.";
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"Notifications include turn-by-turn directions, shared ETAs, and updates about your photos and reports.";
  }

  v13 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];

  return v13;
}

- (id)titleString
{
  promptReason = self->_promptReason;
  if (promptReason <= 2)
  {
    if (promptReason >= 2)
    {
      if (promptReason != 2)
      {
        goto LABEL_13;
      }

      v4 = @"Get Updates on Your Reports";
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (promptReason != 3)
  {
    if (promptReason != 4)
    {
      goto LABEL_13;
    }

LABEL_7:
    v4 = @"Get Notified when Friends Share Their ETAs";
    if ((SBUIIsSystemApertureEnabled() & 1) == 0)
    {
      v5 = +[GEOCountryConfiguration sharedConfiguration];
      v6 = [v5 currentCountrySupportsNavigation];

      if (v6)
      {
        v4 = @"Get Turn-by-Turn Directions";
      }
    }

    goto LABEL_12;
  }

  v4 = @"Learn When Your Photos Go Live";
LABEL_12:
  v7 = +[NSBundle mainBundle];
  v2 = [v7 localizedStringForKey:v4 value:@"localized string not found" table:0];

LABEL_13:

  return v2;
}

+ (BOOL)shouldPromptForLaunch
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"MapsNotificationAuthPromptCount"];

  Integer = GEOConfigGetInteger();
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [NSNumber numberWithBool:v3 < Integer];
    v7 = [NSNumber numberWithInteger:v3];
    v8 = [NSNumber numberWithInteger:Integer];
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PushNotificationPrompt: shouldPromptForLaunch %@ with prompt count %@ max prompts %@", &v10, 0x20u);
  }

  return v3 < Integer;
}

+ (BOOL)shouldRepeatPromptForLaunch
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"MapsNotificationAuthLastPromptedDate"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = sub_100005610();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "PushNotificationPrompt: shouldRepeatPromptForLaunch user has never been prompted. This may be an initial launch, or a user who set their notification preference to NO before Sky E.", &v20, 2u);
    }

    goto LABEL_14;
  }

  v4 = v3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 integerForKey:@"MapsNotificationAuthRepromptCount"];

  Integer = GEOConfigGetInteger();
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:v4];
  v10 = v9;
  GEOConfigGetDouble();
  v12 = v11;

  v13 = sub_100005610();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [NSNumber numberWithInteger:v6];
    v15 = [NSNumber numberWithInteger:Integer];
    v20 = 138412802;
    v21 = v4;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "PushNotificationPrompt: shouldRepeatPromptForLaunch user was prompted previously on %@, has been repeat prompted %@ times, with a maximum repeat prompt count of %@", &v20, 0x20u);
  }

  if (v10 <= v12 || v6 >= Integer)
  {
LABEL_14:

    v4 = sub_100005610();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "PushNotificationPrompt: returning NO for shouldRepeatPromptForLaunch", &v20, 2u);
    }

    v18 = 0;
    goto LABEL_17;
  }

  v17 = sub_100005610();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "PushNotificationPrompt: returning YES for shouldRepeatPromptForLaunch", &v20, 2u);
  }

  v18 = 1;
LABEL_17:

  return v18;
}

+ (void)checkShouldRepeatForUserAction:(id)a3
{
  v3 = a3;
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "PushNotificationPrompt checkShouldRepeatForUserAction", buf, 2u);
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"MapsNotificationAuthLastPromptedDate"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 integerForKey:@"MapsNotificationAuthRepromptCount"];

    Integer = GEOConfigGetInteger();
    v11 = sub_100005610();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [NSNumber numberWithInteger:v9];
      v13 = [NSNumber numberWithInteger:Integer];
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "PushNotificationPrompt: user was prompted previously on %@, has been repeat prompted %@ times, with a maximum repeat prompt count of %@", buf, 0x20u);
    }

    if (v9 >= Integer)
    {
      (*(v3 + 2))(v3, 0, 0);
    }

    else
    {
      v14 = +[UNUserNotificationCenter currentNotificationCenter];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100ED1D34;
      v16[3] = &unk_1016588E8;
      v17 = v3;
      [v14 getNotificationSettingsWithCompletionHandler:v16];
    }
  }

  else
  {
    v15 = sub_100005610();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "PushNotificationPrompt: user has never been prompted. This may be a user who set their notification preference to NO before Sky E.", buf, 2u);
    }

    (*(v3 + 2))(v3, 0, 0);
  }
}

@end