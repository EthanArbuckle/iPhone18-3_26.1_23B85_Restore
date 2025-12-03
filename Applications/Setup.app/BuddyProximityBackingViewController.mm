@interface BuddyProximityBackingViewController
- (BOOL)_largeAXMode;
- (BOOL)showPairingStyleToggle;
- (BuddyProximityBackingViewController)initWithStringProvider:(id)provider;
- (BuddyProximityBackingViewControllerDelegate)delegate;
- (void)addPairingStyleToggleButtonBelowView:(id)view;
- (void)endPairingIfNeeded;
- (void)pairingStyleToggleTapped:(id)tapped;
- (void)prepareForLanguageChange:(id)change;
- (void)setMinimumBrightness:(float)brightness;
- (void)showPairingCode;
- (void)showVisualPairing;
- (void)traitCollectionDidChange:(id)change;
- (void)updateView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BuddyProximityBackingViewController

- (BuddyProximityBackingViewController)initWithStringProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v3 = selfCopy;
  selfCopy = 0;
  v10.receiver = v3;
  v10.super_class = BuddyProximityBackingViewController;
  selfCopy = [(BuddyProximityBackingViewController *)&v10 initWithTitle:&stru_10032F900 detailText:0 icon:0];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = objc_alloc_init(BuddyFeatureFlags);
    v5 = *(selfCopy + 1);
    *(selfCopy + 1) = v4;

    objc_storeStrong(selfCopy + 11, location[0]);
    *(selfCopy + 17) = 1;
    v6 = objc_alloc_init(BrightnessSystemClient);
    v7 = *(selfCopy + 12);
    *(selfCopy + 12) = v6;
  }

  v8 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (BuddyProximityBackingViewControllerDelegate)delegate
{
  selfCopy = self;
  oslog[1] = a2;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_FAULT))
    {
      v3 = objc_opt_class();
      location = NSStringFromClass(v3);
      sub_100071CBC(buf, location);
      _os_log_fault_impl(&_mh_execute_header, oslog[0], v7, "%{public}@ failed to receive a delegate", buf, 0xCu);

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(oslog, 0);
  }

  v4 = objc_loadWeakRetained(&selfCopy->_delegate);

  return v4;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v38 = a2;
  v37.receiver = self;
  v37.super_class = BuddyProximityBackingViewController;
  [(BuddyProximityBackingViewController *)&v37 viewDidLoad];
  v2 = objc_alloc_init(BFFProximityVisualPairingViewController);
  [(BuddyProximityBackingViewController *)selfCopy setVisualPairingViewController:v2];

  visualPairingViewController = [(BuddyProximityBackingViewController *)selfCopy visualPairingViewController];
  view = [(BFFProximityVisualPairingViewController *)visualPairingViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyProximityBackingViewController *)selfCopy setPinCodeLabel:v5];

  pinCodeLabel = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
  [(UILabel *)pinCodeLabel setNumberOfLines:0];

  v7 = +[UIColor _labelColor];
  pinCodeLabel2 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
  [(UILabel *)pinCodeLabel2 setTextColor:v7];

  v9 = +[UIColor _systemBackgroundColor];
  pinCodeLabel3 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
  [(UILabel *)pinCodeLabel3 setBackgroundColor:v9];

  v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle0];
  pinCodeLabel4 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
  [(UILabel *)pinCodeLabel4 setFont:v11];

  if (([(BuddyFeatureFlags *)selfCopy->_featureFlags isSolariumEnabled]& 1) != 0)
  {
    pinCodeLabel5 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
    [(UILabel *)pinCodeLabel5 setTextAlignment:4];
  }

  else
  {
    pinCodeLabel5 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
    [(UILabel *)pinCodeLabel5 setTextAlignment:1];
  }

  pinCodeLabel6 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
  [(UILabel *)pinCodeLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];

  pinCodeLabel7 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
  LODWORD(v16) = 1148846080;
  [(UILabel *)pinCodeLabel7 setContentHuggingPriority:1 forAxis:v16];

  if ([(BuddyProximityBackingViewController *)selfCopy isShowingVisualPairing]&& [(BuddyProximityBackingViewController *)selfCopy showPairingStyleToggle])
  {
    location = 0;
    if (([(BuddyFeatureFlags *)selfCopy->_featureFlags isSolariumEnabled]& 1) != 0)
    {
      v17 = [UIButton buttonWithType:1];
    }

    else
    {
      v17 = +[OBLinkTrayButton linkButton];
    }

    v18 = location;
    location = v17;

    [location setTranslatesAutoresizingMaskIntoConstraints:0];
    stringProvider = [(BuddyProximityBackingViewController *)selfCopy stringProvider];
    language = [(BuddyProximityBackingViewController *)selfCopy language];
    v21 = [(BuddyProximityBackingStringProviding *)stringProvider textualPairingButtonTitleWithLanguage:language];
    [location setTitle:v21 forState:0];

    LODWORD(v22) = 1148846080;
    [location setContentHuggingPriority:1 forAxis:v22];
    [location addTarget:selfCopy action:"pairingStyleToggleTapped:" forControlEvents:0x2000];
    [(BuddyProximityBackingViewController *)selfCopy setPairingStyleToggleButton:location];
    objc_storeStrong(&location, 0);
  }

  v23 = objc_alloc_init(UIView);
  [(BuddyProximityBackingViewController *)selfCopy setContainerView:v23];

  containerView = [(BuddyProximityBackingViewController *)selfCopy containerView];
  [(UIView *)containerView setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = +[UIColor _systemBackgroundColor];
  containerView2 = [(BuddyProximityBackingViewController *)selfCopy containerView];
  [(UIView *)containerView2 setBackgroundColor:v25];

  objc_initWeak(&from, selfCopy);
  v27 = selfCopy;
  containerView3 = [(BuddyProximityBackingViewController *)selfCopy containerView];
  v29 = _NSConcreteStackBlock;
  v30 = -1073741824;
  v31 = 0;
  v32 = sub_1001268B8;
  v33 = &unk_10032D358;
  objc_copyWeak(v34, &from);
  [(BuddyProximityBackingViewController *)v27 addContentSubView:containerView3 heightConstraintForLayout:&v29];

  [(BuddyProximityBackingViewController *)selfCopy updateView];
  objc_destroyWeak(v34);
  objc_destroyWeak(&from);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v9 = a2;
  disappearCopy = disappear;
  visualPairingViewController = [(BuddyProximityBackingViewController *)self visualPairingViewController];
  [(BFFProximityVisualPairingViewController *)visualPairingViewController stop];

  LODWORD(v4) = 0;
  [(BuddyProximityBackingViewController *)selfCopy setMinimumBrightness:v4];
  parentViewController = [(BuddyProximityBackingViewController *)selfCopy parentViewController];
  isMovingFromParentViewController = 0;
  if (!parentViewController)
  {
    isMovingFromParentViewController = [(BuddyProximityBackingViewController *)selfCopy isMovingFromParentViewController];
    parentViewController = 0;
  }

  if (isMovingFromParentViewController)
  {
    [(BuddyProximityBackingViewController *)selfCopy endPairingIfNeeded];
  }

  v7.receiver = selfCopy;
  v7.super_class = BuddyProximityBackingViewController;
  [(BuddyProximityBackingViewController *)&v7 viewDidDisappear:disappearCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coordinator);
  v5.receiver = selfCopy;
  v5.super_class = BuddyProximityBackingViewController;
  [(BuddyProximityBackingViewController *)&v5 viewWillTransitionToSize:location[0] withTransitionCoordinator:sizeCopy.width, sizeCopy.height];
  view = [(BuddyProximityBackingViewController *)selfCopy view];
  [view setNeedsLayout];

  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = BuddyProximityBackingViewController;
  [(BuddyProximityBackingViewController *)&v3 traitCollectionDidChange:location[0]];
  [(BuddyProximityBackingViewController *)selfCopy updateView];
  objc_storeStrong(location, 0);
}

- (void)endPairingIfNeeded
{
  if (![(BuddyProximityBackingViewController *)self nonUserInitiatedDismissal])
  {
    delegate = [(BuddyProximityBackingViewController *)self delegate];
    [(BuddyProximityBackingViewControllerDelegate *)delegate pairingEndedByUser];
  }
}

- (void)showVisualPairing
{
  [(BuddyProximityBackingViewController *)self setShowingVisualPairing:1, a2];
  [(BuddyProximityBackingViewController *)self updateView];
  visualPairingViewController = [(BuddyProximityBackingViewController *)self visualPairingViewController];
  [(BFFProximityVisualPairingViewController *)visualPairingViewController start];
}

- (void)showPairingCode
{
  [(BuddyProximityBackingViewController *)self setShowingVisualPairing:0, a2];
  [(BuddyProximityBackingViewController *)self updateView];
  visualPairingViewController = [(BuddyProximityBackingViewController *)self visualPairingViewController];
  [(BFFProximityVisualPairingViewController *)visualPairingViewController stop];
}

- (void)prepareForLanguageChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  visualPairingViewController = [(BuddyProximityBackingViewController *)selfCopy visualPairingViewController];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100126EAC;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  [(BFFProximityVisualPairingViewController *)visualPairingViewController pairingDidComplete:&v4];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)updateView
{
  selfCopy = self;
  v94 = a2;
  view = [(BuddyProximityBackingViewController *)self view];
  [view layoutIfNeeded];

  delegate = [(BuddyProximityBackingViewController *)selfCopy delegate];
  deviceClass = [(BuddyProximityBackingViewControllerDelegate *)delegate deviceClass];

  language = [(BuddyProximityBackingViewController *)selfCopy language];
  if ([(BuddyProximityBackingViewController *)selfCopy isShowingVisualPairing])
  {
    visualPairingViewController = [(BuddyProximityBackingViewController *)selfCopy visualPairingViewController];
    v6 = visualPairingViewController == 0;

    if (v6)
    {
      v91 = 1;
    }

    else
    {
      LODWORD(v7) = 1140457472;
      [(BuddyProximityBackingViewController *)selfCopy setMinimumBrightness:v7];
      visualPairingViewController2 = [(BuddyProximityBackingViewController *)selfCopy visualPairingViewController];
      [(BFFProximityVisualPairingViewController *)visualPairingViewController2 removeFromParentViewController];

      if ([(BuddyProximityBackingViewController *)selfCopy _largeAXMode])
      {
        [(BuddyProximityBackingViewController *)selfCopy resetLayoutTo:1];
      }

      else
      {
        [(BuddyProximityBackingViewController *)selfCopy resetLayoutTo:2];
      }

      stringProvider = [(BuddyProximityBackingViewController *)selfCopy stringProvider];
      v90 = [(BuddyProximityBackingStringProviding *)stringProvider visualTitleWithDeviceClass:deviceClass language:language];

      stringProvider2 = [(BuddyProximityBackingViewController *)selfCopy stringProvider];
      location = [(BuddyProximityBackingStringProviding *)stringProvider2 visualDescriptionWithDeviceClass:deviceClass language:language];

      headerView = [(BuddyProximityBackingViewController *)selfCopy headerView];
      [headerView setTitle:v90];

      headerView2 = [(BuddyProximityBackingViewController *)selfCopy headerView];
      [headerView2 setDetailText:location];

      headerView3 = [(BuddyProximityBackingViewController *)selfCopy headerView];
      [headerView3 setLanguage:language];

      visualPairingViewController3 = [(BuddyProximityBackingViewController *)selfCopy visualPairingViewController];
      pairingCode = [(BuddyProximityBackingViewController *)selfCopy pairingCode];
      [(BFFProximityVisualPairingViewController *)visualPairingViewController3 setPairingCode:pairingCode];

      pinCodeLabel = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
      [(UILabel *)pinCodeLabel removeFromSuperview];

      containerView = [(BuddyProximityBackingViewController *)selfCopy containerView];
      visualPairingViewController4 = [(BuddyProximityBackingViewController *)selfCopy visualPairingViewController];
      view2 = [(BFFProximityVisualPairingViewController *)visualPairingViewController4 view];
      [(UIView *)containerView addSubview:view2];

      visualPairingViewController5 = [(BuddyProximityBackingViewController *)selfCopy visualPairingViewController];
      [(BuddyProximityBackingViewController *)selfCopy addChildViewController:visualPairingViewController5];

      visualPairingViewController6 = [(BuddyProximityBackingViewController *)selfCopy visualPairingViewController];
      parentViewController = [(BFFProximityVisualPairingViewController *)visualPairingViewController6 parentViewController];
      v23 = parentViewController == selfCopy;

      if (v23)
      {
        v24 = +[NSAssertionHandler currentHandler];
        [(NSAssertionHandler *)v24 handleFailureInMethod:v94 object:selfCopy file:@"BuddyProximityBackingViewController.m" lineNumber:261 description:@"Underlying implementation has changed; Visual pairing controller is expected to have OBWelcomeController as it's parent"];
      }

      if ([(BuddyProximityBackingViewController *)selfCopy showPairingStyleToggle])
      {
        pairingStyleToggleButton = [(BuddyProximityBackingViewController *)selfCopy pairingStyleToggleButton];
        stringProvider3 = [(BuddyProximityBackingViewController *)selfCopy stringProvider];
        v27 = [(BuddyProximityBackingStringProviding *)stringProvider3 textualPairingButtonTitleWithLanguage:language];
        [(UIButton *)pairingStyleToggleButton setTitle:v27 forState:0];

        containerView2 = [(BuddyProximityBackingViewController *)selfCopy containerView];
        topAnchor = [(UIView *)containerView2 topAnchor];
        visualPairingViewController7 = [(BuddyProximityBackingViewController *)selfCopy visualPairingViewController];
        view3 = [(BFFProximityVisualPairingViewController *)visualPairingViewController7 view];
        topAnchor2 = [view3 topAnchor];
        v33 = [(NSLayoutYAxisAnchor *)topAnchor constraintEqualToAnchor:topAnchor2];
        [v33 setActive:1];

        visualPairingViewController8 = [(BuddyProximityBackingViewController *)selfCopy visualPairingViewController];
        view4 = [(BFFProximityVisualPairingViewController *)visualPairingViewController8 view];
        containerView3 = [(BuddyProximityBackingViewController *)selfCopy containerView];
        [view4 pinToHorizontalEdges:containerView3];

        visualPairingViewController9 = [(BuddyProximityBackingViewController *)selfCopy visualPairingViewController];
        view5 = [(BFFProximityVisualPairingViewController *)visualPairingViewController9 view];
        [(BuddyProximityBackingViewController *)selfCopy addPairingStyleToggleButtonBelowView:view5];
      }

      else
      {
        visualPairingViewController10 = [(BuddyProximityBackingViewController *)selfCopy visualPairingViewController];
        view6 = [(BFFProximityVisualPairingViewController *)visualPairingViewController10 view];
        containerView4 = [(BuddyProximityBackingViewController *)selfCopy containerView];
        [view6 pinToEdges:containerView4];
      }

      v91 = 1;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v90, 0);
    }
  }

  else
  {
    LODWORD(v4) = 0;
    [(BuddyProximityBackingViewController *)selfCopy setMinimumBrightness:v4];
    [(BuddyProximityBackingViewController *)selfCopy resetLayoutTo:2];
    stringProvider4 = [(BuddyProximityBackingViewController *)selfCopy stringProvider];
    v88 = [(BuddyProximityBackingStringProviding *)stringProvider4 textualTitleWithDeviceClass:deviceClass language:language];

    stringProvider5 = [(BuddyProximityBackingViewController *)selfCopy stringProvider];
    v87 = [(BuddyProximityBackingStringProviding *)stringProvider5 textualDescriptionWithDeviceClass:deviceClass language:language];

    headerView4 = [(BuddyProximityBackingViewController *)selfCopy headerView];
    [headerView4 setTitle:v88];

    headerView5 = [(BuddyProximityBackingViewController *)selfCopy headerView];
    [headerView5 setDetailText:v87];

    headerView6 = [(BuddyProximityBackingViewController *)selfCopy headerView];
    [headerView6 setLanguage:language];

    headerView7 = [(BuddyProximityBackingViewController *)selfCopy headerView];
    LODWORD(v48) = 1045220557;
    [headerView7 setTitleHyphenationFactor:v48];

    visualPairingViewController11 = [(BuddyProximityBackingViewController *)selfCopy visualPairingViewController];
    view7 = [(BFFProximityVisualPairingViewController *)visualPairingViewController11 view];
    [view7 removeFromSuperview];

    containerView5 = [(BuddyProximityBackingViewController *)selfCopy containerView];
    pinCodeLabel2 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
    [(UIView *)containerView5 addSubview:pinCodeLabel2];

    pinCodeLabel3 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
    containerView6 = [(BuddyProximityBackingViewController *)selfCopy containerView];
    [(UILabel *)pinCodeLabel3 pinToHorizontalEdges:containerView6];

    if (([(BuddyFeatureFlags *)selfCopy->_featureFlags isSolariumEnabled]& 1) != 0)
    {
      v55 = [NSMutableAttributedString alloc];
      pairingCode2 = [(BuddyProximityBackingViewController *)selfCopy pairingCode];
      v86 = [v55 initWithString:pairingCode2];

      pairingCode3 = [(BuddyProximityBackingViewController *)selfCopy pairingCode];
      v97 = 0;
      v96 = [(NSString *)pairingCode3 length];
      v98 = 0;
      v99 = v96;
      [v86 addAttribute:NSKernAttributeName value:&off_10033D598 range:{0, v96, 0, v96}];

      pinCodeLabel4 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
      [(UILabel *)pinCodeLabel4 setAttributedText:v86];

      pinCodeLabel5 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
      lastBaselineAnchor = [(UILabel *)pinCodeLabel5 lastBaselineAnchor];
      containerView7 = [(BuddyProximityBackingViewController *)selfCopy containerView];
      topAnchor3 = [(UIView *)containerView7 topAnchor];
      v63 = BFFIsiPad();
      v64 = 54.0;
      if ((v63 & 1) == 0)
      {
        v64 = 44.0;
      }

      v65 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:v64];
      [v65 setActive:1];

      objc_storeStrong(&v86, 0);
    }

    else
    {
      pinCodeLabel6 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
      pairingCode4 = [(BuddyProximityBackingViewController *)selfCopy pairingCode];
      [(UILabel *)pinCodeLabel6 setText:pairingCode4];

      pinCodeLabel7 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
      lastBaselineAnchor2 = [(UILabel *)pinCodeLabel7 lastBaselineAnchor];
      containerView8 = [(BuddyProximityBackingViewController *)selfCopy containerView];
      topAnchor4 = [(UIView *)containerView8 topAnchor];
      v72 = BFFIsiPad();
      v73 = 106.0;
      if ((v72 & 1) == 0)
      {
        v73 = 96.0;
      }

      v74 = [lastBaselineAnchor2 constraintEqualToAnchor:topAnchor4 constant:v73];
      [v74 setActive:1];
    }

    if ([(BuddyProximityBackingViewController *)selfCopy showPairingStyleToggle])
    {
      pairingStyleToggleButton2 = [(BuddyProximityBackingViewController *)selfCopy pairingStyleToggleButton];
      stringProvider6 = [(BuddyProximityBackingViewController *)selfCopy stringProvider];
      v77 = [(BuddyProximityBackingStringProviding *)stringProvider6 visualPairingButtonTitleWithLanguage:language];
      [(UIButton *)pairingStyleToggleButton2 setTitle:v77 forState:0];

      v78 = selfCopy;
      pinCodeLabel8 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
      [(BuddyProximityBackingViewController *)v78 addPairingStyleToggleButtonBelowView:pinCodeLabel8];
    }

    else
    {
      containerView9 = [(BuddyProximityBackingViewController *)selfCopy containerView];
      bottomAnchor = [(UIView *)containerView9 bottomAnchor];
      pinCodeLabel9 = [(BuddyProximityBackingViewController *)selfCopy pinCodeLabel];
      bottomAnchor2 = [(UILabel *)pinCodeLabel9 bottomAnchor];
      v84 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
      [v84 setActive:1];
    }

    view8 = [(BuddyProximityBackingViewController *)selfCopy view];
    [view8 setNeedsLayout];

    objc_storeStrong(&v87, 0);
    objc_storeStrong(&v88, 0);
    v91 = 0;
  }

  objc_storeStrong(&language, 0);
  objc_storeStrong(&deviceClass, 0);
}

- (void)addPairingStyleToggleButtonBelowView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  pairingStyleToggleButton = [(BuddyProximityBackingViewController *)selfCopy pairingStyleToggleButton];
  [(UIButton *)pairingStyleToggleButton removeFromSuperview];

  containerView = [(BuddyProximityBackingViewController *)selfCopy containerView];
  pairingStyleToggleButton2 = [(BuddyProximityBackingViewController *)selfCopy pairingStyleToggleButton];
  [(UIView *)containerView addSubview:pairingStyleToggleButton2];

  if (([(BuddyFeatureFlags *)selfCopy->_featureFlags isSolariumEnabled]& 1) != 0)
  {
    bottomAnchor = [location[0] bottomAnchor];
    pairingStyleToggleButton3 = [(BuddyProximityBackingViewController *)selfCopy pairingStyleToggleButton];
    topAnchor = [(UIButton *)pairingStyleToggleButton3 topAnchor];
    v35 = [bottomAnchor constraintEqualToAnchor:?];
    v48[0] = v35;
    pairingStyleToggleButton4 = [(BuddyProximityBackingViewController *)selfCopy pairingStyleToggleButton];
    leadingAnchor = [(UIButton *)pairingStyleToggleButton4 leadingAnchor];
    containerView2 = [(BuddyProximityBackingViewController *)selfCopy containerView];
    leadingAnchor2 = [(UIView *)containerView2 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v48[1] = v9;
    pairingStyleToggleButton5 = [(BuddyProximityBackingViewController *)selfCopy pairingStyleToggleButton];
    trailingAnchor = [(UIButton *)pairingStyleToggleButton5 trailingAnchor];
    containerView3 = [(BuddyProximityBackingViewController *)selfCopy containerView];
    trailingAnchor2 = [(UIView *)containerView3 trailingAnchor];
    v14 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v48[2] = v14;
    v15 = [NSArray arrayWithObjects:v48 count:3];
    [NSLayoutConstraint activateConstraints:v15];

    if ([(BuddyProximityBackingViewController *)selfCopy isShowingVisualPairing])
    {
      pairingStyleToggleButton6 = [(BuddyProximityBackingViewController *)selfCopy pairingStyleToggleButton];
      bottomAnchor2 = [(UIButton *)pairingStyleToggleButton6 bottomAnchor];
      containerView4 = [(BuddyProximityBackingViewController *)selfCopy containerView];
      bottomAnchor3 = [(UIView *)containerView4 bottomAnchor];
      v20 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      v47 = v20;
      v21 = [NSArray arrayWithObjects:&v47 count:1];
    }

    else
    {
      pairingStyleToggleButton6 = [(BuddyProximityBackingViewController *)selfCopy pairingStyleToggleButton];
      bottomAnchor2 = [(UIButton *)pairingStyleToggleButton6 bottomAnchor];
      containerView4 = [(BuddyProximityBackingViewController *)selfCopy containerView];
      bottomAnchor3 = [(UIView *)containerView4 bottomAnchor];
      v20 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
      v46 = v20;
      v21 = [NSArray arrayWithObjects:&v46 count:1];
    }

    [NSLayoutConstraint activateConstraints:v21];
  }

  else
  {
    containerView5 = [(BuddyProximityBackingViewController *)selfCopy containerView];
    bottomAnchor4 = [location[0] bottomAnchor];
    pairingStyleToggleButton7 = [(BuddyProximityBackingViewController *)selfCopy pairingStyleToggleButton];
    topAnchor2 = [(UIButton *)pairingStyleToggleButton7 topAnchor];
    v36 = [bottomAnchor4 constraintEqualToAnchor:?];
    v45[0] = v36;
    containerView6 = [(BuddyProximityBackingViewController *)selfCopy containerView];
    bottomAnchor5 = [(UIView *)containerView6 bottomAnchor];
    pairingStyleToggleButton8 = [(BuddyProximityBackingViewController *)selfCopy pairingStyleToggleButton];
    bottomAnchor6 = [(UIButton *)pairingStyleToggleButton8 bottomAnchor];
    v25 = [(NSLayoutYAxisAnchor *)bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v45[1] = v25;
    containerView7 = [(BuddyProximityBackingViewController *)selfCopy containerView];
    centerXAnchor = [(UIView *)containerView7 centerXAnchor];
    pairingStyleToggleButton9 = [(BuddyProximityBackingViewController *)selfCopy pairingStyleToggleButton];
    centerXAnchor2 = [(UIButton *)pairingStyleToggleButton9 centerXAnchor];
    v30 = [(NSLayoutXAxisAnchor *)centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v45[2] = v30;
    v31 = [NSArray arrayWithObjects:v45 count:3];
    [(UIView *)containerView5 addConstraints:v31];
  }

  objc_storeStrong(location, 0);
}

- (void)setMinimumBrightness:(float)brightness
{
  selfCopy = self;
  v15 = a2;
  brightnessCopy = brightness;
  v18[0] = @"nits";
  v3 = [NSNumber numberWithFloat:*&brightness];
  v19[0] = v3;
  v18[1] = @"period";
  v19[1] = &off_10033D5A8;
  location = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

  oslog = _BYLoggingFacility();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10006AE18(buf, location);
    _os_log_debug_impl(&_mh_execute_header, oslog, v11, "Setting brightness to: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  brightnessClient = [(BuddyProximityBackingViewController *)selfCopy brightnessClient];
  v5 = [(BrightnessSystemClient *)brightnessClient setProperty:location forKey:@"MinNits"]^ 1;

  if (v5)
  {
    v10 = _BYLoggingFacility();
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v6 = v10;
      v7 = v9;
      sub_10006AA68(v8);
      _os_log_error_impl(&_mh_execute_header, v6, v7, "Failed to set brightness!", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)_largeAXMode
{
  v2 = [UIApplication sharedApplication:a2];
  preferredContentSizeCategory = [(UIApplication *)v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryExtraLarge, preferredContentSizeCategory) == NSOrderedAscending;

  return v4;
}

- (BOOL)showPairingStyleToggle
{
  selfCopy = self;
  v14 = a2;
  stringProvider = [(BuddyProximityBackingViewController *)self stringProvider];
  v12 = 0;
  v3 = 1;
  if (objc_opt_respondsToSelector())
  {
    stringProvider2 = [(BuddyProximityBackingViewController *)selfCopy stringProvider];
    v12 = 1;
    v3 = objc_opt_respondsToSelector() ^ 1;
  }

  if (v12)
  {
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    language = [(BuddyProximityBackingViewController *)selfCopy language];
    stringProvider3 = [(BuddyProximityBackingViewController *)selfCopy stringProvider];
    location = [(BuddyProximityBackingStringProviding *)stringProvider3 visualPairingButtonTitleWithLanguage:language];

    stringProvider4 = [(BuddyProximityBackingViewController *)selfCopy stringProvider];
    v9 = [(BuddyProximityBackingStringProviding *)stringProvider4 textualPairingButtonTitleWithLanguage:language];

    v6 = [location length];
    v7 = 0;
    if (v6)
    {
      v7 = [v9 length] != 0;
    }

    v16 = v7;
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&language, 0);
  }

  return v16;
}

- (void)pairingStyleToggleTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  if ([(BuddyProximityBackingViewController *)selfCopy isShowingVisualPairing])
  {
    [(BuddyProximityBackingViewController *)selfCopy showPairingCode];
  }

  else
  {
    [(BuddyProximityBackingViewController *)selfCopy showVisualPairing];
  }

  objc_storeStrong(location, 0);
}

@end