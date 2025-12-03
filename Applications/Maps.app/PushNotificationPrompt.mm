@interface PushNotificationPrompt
+ (BOOL)shouldPromptForLaunch;
+ (BOOL)shouldRepeatPromptForLaunch;
+ (void)checkShouldRepeatForUserAction:(id)action;
- (CGSize)preferredContentSize;
- (PushNotificationPrompt)initWithReason:(unint64_t)reason authorizationStatus:(int64_t)status completion:(id)completion;
- (id)detailText;
- (id)primaryButtonTitle;
- (id)secondaryButtonTitle;
- (id)titleString;
- (int)_analyticsTarget;
- (void)_contentSizeDidChange;
- (void)_setHorizontalLayoutWide:(BOOL)wide;
- (void)_updateHorizontalLayoutIfNeeded;
- (void)continueSelected;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = PushNotificationPrompt;
  [(PushNotificationPrompt *)&v12 viewDidAppear:appear];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PushNotificationPrompt;
  coordinatorCopy = coordinator;
  [(PushNotificationPrompt *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100ECFA64;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PushNotificationPrompt;
  [(PushNotificationPrompt *)&v4 viewWillAppear:appear];
  [(PushNotificationPrompt *)self _updateHorizontalLayoutIfNeeded];
}

- (void)_updateHorizontalLayoutIfNeeded
{
  if (sub_10000FA08(self))
  {
    view = [(PushNotificationPrompt *)self view];
    window = [view window];
    traitCollection = [window traitCollection];
    v6 = [traitCollection horizontalSizeClass] != 1;
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
    view2 = [(PushNotificationPrompt *)self view];
    [view2 bounds];
    Width = CGRectGetWidth(v12);
    view3 = [(PushNotificationPrompt *)self view];
    [view3 bounds];
    v7 = Width > CGRectGetHeight(v13);
  }

  [(PushNotificationPrompt *)self _setHorizontalLayoutWide:v6 || v7];
}

- (void)_setHorizontalLayoutWide:(BOOL)wide
{
  wideCopy = wide;
  if (!self->_horizontalConstraints || self->_horizontalLayoutIsWide != wide)
  {
    self->_horizontalLayoutIsWide = wide;
    [NSLayoutConstraint deactivateConstraints:self->_horizontalConstraints];
    widthAnchor = [(UILabel *)self->_titleLabel widthAnchor];
    view = [(PushNotificationPrompt *)self view];
    widthAnchor2 = [view widthAnchor];
    if (wideCopy)
    {
      v8 = -74.0;
    }

    else
    {
      v8 = -48.0;
    }

    v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:v8];
    v44[0] = v9;
    widthAnchor3 = [(UILabel *)self->_detailLabel widthAnchor];
    view2 = [(PushNotificationPrompt *)self view];
    widthAnchor4 = [view2 widthAnchor];
    v13 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 constant:v8];
    v44[1] = v13;
    v41 = [NSArray arrayWithObjects:v44 count:2];

    if (wideCopy)
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

      centerXAnchor = [(UIButton *)self->_notNowButton centerXAnchor];
      view3 = [(PushNotificationPrompt *)self view];
      centerXAnchor2 = [view3 centerXAnchor];
      v40 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v42[0] = v40;
      widthAnchor5 = [(UIButton *)self->_notNowButton widthAnchor];
      view6 = [widthAnchor5 constraintEqualToConstant:360.0];
      v42[1] = view6;
      centerXAnchor3 = [(UIButton *)self->_continueButton centerXAnchor];
      view4 = [(PushNotificationPrompt *)self view];
      [view4 centerXAnchor];
      v35 = v37 = centerXAnchor3;
      v19 = [centerXAnchor3 constraintEqualToAnchor:?];
      v42[2] = v19;
      widthAnchor6 = [(UIButton *)self->_continueButton widthAnchor];
      v21 = [widthAnchor6 constraintEqualToConstant:360.0];
      v42[3] = v21;
      trailingAnchor2 = [NSArray arrayWithObjects:v42 count:4];
      view8 = v41;
      v14 = [(NSArray *)v41 arrayByAddingObjectsFromArray:trailingAnchor2];
    }

    else
    {
      leadingAnchor = [(UIButton *)self->_notNowButton leadingAnchor];
      view5 = [(PushNotificationPrompt *)self view];
      leadingAnchor2 = [view5 leadingAnchor];
      v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
      v43[0] = v40;
      trailingAnchor = [(UIButton *)self->_notNowButton trailingAnchor];
      view6 = [(PushNotificationPrompt *)self view];
      [view6 trailingAnchor];
      v37 = widthAnchor5 = trailingAnchor;
      view4 = [trailingAnchor constraintEqualToAnchor:-24.0 constant:?];
      v43[1] = view4;
      leadingAnchor3 = [(UIButton *)self->_continueButton leadingAnchor];
      view7 = [(PushNotificationPrompt *)self view];
      widthAnchor6 = [view7 leadingAnchor];
      v35 = leadingAnchor3;
      v21 = [leadingAnchor3 constraintEqualToAnchor:widthAnchor6 constant:24.0];
      v43[2] = v21;
      trailingAnchor2 = [(UIButton *)self->_continueButton trailingAnchor];
      view8 = [(PushNotificationPrompt *)self view];
      trailingAnchor3 = [view8 trailingAnchor];
      v27 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-24.0];
      v43[3] = v27;
      v28 = [NSArray arrayWithObjects:v43 count:4];
      v29 = [(NSArray *)v41 arrayByAddingObjectsFromArray:v28];

      v14 = v29;
      v19 = view7;

      centerXAnchor = leadingAnchor;
      centerXAnchor2 = leadingAnchor2;

      view3 = view5;
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
  primaryButtonTitle = [(PushNotificationPrompt *)self primaryButtonTitle];
  v17 = NSFontAttributeName;
  v18 = v5;
  v8 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v9 = [v6 initWithString:primaryButtonTitle attributes:v8];

  [(UIButton *)self->_continueButton setAttributedTitle:v9 forState:0];
  v10 = [NSAttributedString alloc];
  secondaryButtonTitle = [(PushNotificationPrompt *)self secondaryButtonTitle];
  v15 = NSFontAttributeName;
  v16 = v5;
  v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [v10 initWithString:secondaryButtonTitle attributes:v12];

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
  view = [(PushNotificationPrompt *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = +[UIColor systemBackgroundColor];
  view2 = [(PushNotificationPrompt *)self view];
  [view2 setBackgroundColor:v4];

  v6 = objc_alloc_init(UIScrollView);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(PushNotificationPrompt *)self view];
  [view3 addSubview:v6];

  v8 = +[UIButtonConfiguration filledButtonConfiguration];
  [v8 setButtonSize:3];
  background = [v8 background];
  [background setCornerRadius:14.0];

  v124[0] = _NSConcreteStackBlock;
  v124[1] = 3221225472;
  v124[2] = sub_100ED10D4;
  v124[3] = &unk_101658910;
  v124[4] = self;
  v10 = [UIAction actionWithHandler:v124];
  v118 = v8;
  v11 = [UIButton buttonWithConfiguration:v8 primaryAction:v10];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  view4 = [(PushNotificationPrompt *)self view];
  [view4 addSubview:v11];

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
  configuration = [v15 configuration];
  [configuration setButtonSize:3];

  view5 = [(PushNotificationPrompt *)self view];
  [view5 addSubview:v15];

  objc_storeStrong(&self->_notNowButton, v15);
  v18 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v22 = [v18 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = +[UIColor labelColor];
  [v22 setTextColor:v23];

  titleString = [(PushNotificationPrompt *)self titleString];
  [v22 setText:titleString];

  [v22 setNumberOfLines:0];
  [v22 setTextAlignment:1];
  [v6 addSubview:v22];
  objc_storeStrong(&self->_titleLabel, v22);
  v25 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = +[UIColor labelColor];
  [v25 setTextColor:v26];

  detailText = [(PushNotificationPrompt *)self detailText];
  [v25 setText:detailText];

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
    localeIdentifier = [v32 localeIdentifier];

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
  firstBaselineAnchor = [v122 firstBaselineAnchor];
  lastBaselineAnchor = [v22 lastBaselineAnchor];
  v39 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor];
  titleToDetailConstraint = self->_titleToDetailConstraint;
  self->_titleToDetailConstraint = v39;

  topAnchor = [v6 topAnchor];
  view6 = [(PushNotificationPrompt *)self view];
  topAnchor2 = [view6 topAnchor];
  v104 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v128[0] = v104;
  widthAnchor = [v6 widthAnchor];
  view7 = [(PushNotificationPrompt *)self view];
  widthAnchor2 = [view7 widthAnchor];
  v96 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v128[1] = v96;
  leadingAnchor = [v6 leadingAnchor];
  view8 = [(PushNotificationPrompt *)self view];
  leadingAnchor2 = [view8 leadingAnchor];
  v92 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v128[2] = v92;
  bottomAnchor = [v6 bottomAnchor];
  topAnchor3 = [v11 topAnchor];
  v89 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-16.0];
  v128[3] = v89;
  widthAnchor3 = [v36 widthAnchor];
  widthAnchor4 = [v6 widthAnchor];
  v86 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v128[4] = v86;
  topAnchor4 = [v36 topAnchor];
  topAnchor5 = [v6 topAnchor];
  v83 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v128[5] = v83;
  heightAnchor = [v36 heightAnchor];
  view9 = [(PushNotificationPrompt *)self view];
  heightAnchor2 = [view9 heightAnchor];
  v79 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 multiplier:0.48];
  v128[6] = v79;
  centerXAnchor = [v36 centerXAnchor];
  centerXAnchor2 = [v6 centerXAnchor];
  v76 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v128[7] = v76;
  firstBaselineAnchor2 = [v22 firstBaselineAnchor];
  v113 = v36;
  bottomAnchor2 = [v36 bottomAnchor];
  [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:54.0];
  v41 = v119 = v11;
  v128[8] = v41;
  v116 = v22;
  centerXAnchor3 = [v22 centerXAnchor];
  centerXAnchor4 = [v120 centerXAnchor];
  [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v44 = v121 = self;
  v45 = v121->_titleToDetailConstraint;
  v128[9] = v44;
  v128[10] = v45;
  centerXAnchor5 = [v122 centerXAnchor];
  centerXAnchor6 = [v120 centerXAnchor];
  v48 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v128[11] = v48;
  bottomAnchor3 = [v122 bottomAnchor];
  bottomAnchor4 = [v120 bottomAnchor];
  v51 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-8.0];
  v128[12] = v51;
  v112 = [NSArray arrayWithObjects:v128 count:13];

  v52 = v121;
  if (sub_10000FA08(v121) == 5)
  {
    bottomAnchor5 = [v119 bottomAnchor];
    view10 = [(PushNotificationPrompt *)v121 view];
    bottomAnchor6 = [view10 bottomAnchor];
    v107 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-20.0];
    v127[0] = v107;
    trailingAnchor = [v119 trailingAnchor];
    view11 = [(PushNotificationPrompt *)v121 view];
    trailingAnchor2 = [view11 trailingAnchor];
    v99 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v127[1] = v99;
    v54 = v117;
    centerYAnchor = [v117 centerYAnchor];
    centerYAnchor2 = [v119 centerYAnchor];
    v56 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v127[2] = v56;
    trailingAnchor3 = [v117 trailingAnchor];
    leadingAnchor3 = [v119 leadingAnchor];
    v59 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-20.0];
    v127[3] = v59;
    v60 = [NSArray arrayWithObjects:v127 count:4];
    v61 = [v112 arrayByAddingObjectsFromArray:v60];

    v52 = v121;
    v62 = view10;
  }

  else
  {
    v54 = v117;
    firstBaselineAnchor3 = [v117 firstBaselineAnchor];
    bottomAnchor7 = [v119 bottomAnchor];
    v65 = [firstBaselineAnchor3 constraintEqualToAnchor:bottomAnchor7];
    notNowToContinueConstraint = v121->_notNowToContinueConstraint;
    v121->_notNowToContinueConstraint = v65;

    bottomAnchor8 = [v119 bottomAnchor];
    view12 = [(PushNotificationPrompt *)v121 view];
    safeAreaLayoutGuide = [view12 safeAreaLayoutGuide];
    bottomAnchor9 = [safeAreaLayoutGuide bottomAnchor];
    v71 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    continueToBottomConstraint = v121->_continueToBottomConstraint;
    v121->_continueToBottomConstraint = v71;

    v73 = v121->_continueToBottomConstraint;
    v126[0] = v121->_notNowToContinueConstraint;
    v126[1] = v73;
    bottomAnchor5 = [NSArray arrayWithObjects:v126 count:2];
    v62 = v112;
    v61 = [v112 arrayByAddingObjectsFromArray:bottomAnchor5];
  }

  [(PushNotificationPrompt *)v52 _contentSizeDidChange];
  [NSLayoutConstraint activateConstraints:v61];
}

- (PushNotificationPrompt)initWithReason:(unint64_t)reason authorizationStatus:(int64_t)status completion:(id)completion
{
  completionCopy = completion;
  v15.receiver = self;
  v15.super_class = PushNotificationPrompt;
  v9 = [(PushNotificationPrompt *)&v15 initWithNibName:0 bundle:0];
  if (v9)
  {
    v10 = objc_retainBlock(completionCopy);
    completion = v9->_completion;
    v9->_completion = v10;

    v9->_authorizationStatus = status;
    v9->_promptReason = reason;
    [(PushNotificationPrompt *)v9 setModalPresentationStyle:2];
    presentationController = [(PushNotificationPrompt *)v9 presentationController];
    [presentationController setDelegate:v9];

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
      currentCountrySupportsNavigation = [v5 currentCountrySupportsNavigation];

      if (currentCountrySupportsNavigation)
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
    integer = [NSNumber numberWithBool:v3 < Integer];
    v7 = [NSNumber numberWithInteger:v3];
    v8 = [NSNumber numberWithInteger:Integer];
    v10 = 138412802;
    v11 = integer;
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

+ (void)checkShouldRepeatForUserAction:(id)action
{
  actionCopy = action;
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
      (*(actionCopy + 2))(actionCopy, 0, 0);
    }

    else
    {
      v14 = +[UNUserNotificationCenter currentNotificationCenter];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100ED1D34;
      v16[3] = &unk_1016588E8;
      v17 = actionCopy;
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

    (*(actionCopy + 2))(actionCopy, 0, 0);
  }
}

@end