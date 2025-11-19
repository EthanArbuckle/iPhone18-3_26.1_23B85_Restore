@interface BuddyProximityBackingViewController
- (BOOL)_largeAXMode;
- (BOOL)showPairingStyleToggle;
- (BuddyProximityBackingViewController)initWithStringProvider:(id)a3;
- (BuddyProximityBackingViewControllerDelegate)delegate;
- (void)addPairingStyleToggleButtonBelowView:(id)a3;
- (void)endPairingIfNeeded;
- (void)pairingStyleToggleTapped:(id)a3;
- (void)prepareForLanguageChange:(id)a3;
- (void)setMinimumBrightness:(float)a3;
- (void)showPairingCode;
- (void)showVisualPairing;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateView;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BuddyProximityBackingViewController

- (BuddyProximityBackingViewController)initWithStringProvider:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v12 = 0;
  v10.receiver = v3;
  v10.super_class = BuddyProximityBackingViewController;
  v12 = [(BuddyProximityBackingViewController *)&v10 initWithTitle:&stru_10032F900 detailText:0 icon:0];
  objc_storeStrong(&v12, v12);
  if (v12)
  {
    v4 = objc_alloc_init(BuddyFeatureFlags);
    v5 = *(v12 + 1);
    *(v12 + 1) = v4;

    objc_storeStrong(v12 + 11, location[0]);
    *(v12 + 17) = 1;
    v6 = objc_alloc_init(BrightnessSystemClient);
    v7 = *(v12 + 12);
    *(v12 + 12) = v6;
  }

  v8 = v12;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v8;
}

- (BuddyProximityBackingViewControllerDelegate)delegate
{
  v9 = self;
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

  v4 = objc_loadWeakRetained(&v9->_delegate);

  return v4;
}

- (void)viewDidLoad
{
  v39 = self;
  v38 = a2;
  v37.receiver = self;
  v37.super_class = BuddyProximityBackingViewController;
  [(BuddyProximityBackingViewController *)&v37 viewDidLoad];
  v2 = objc_alloc_init(BFFProximityVisualPairingViewController);
  [(BuddyProximityBackingViewController *)v39 setVisualPairingViewController:v2];

  v3 = [(BuddyProximityBackingViewController *)v39 visualPairingViewController];
  v4 = [(BFFProximityVisualPairingViewController *)v3 view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyProximityBackingViewController *)v39 setPinCodeLabel:v5];

  v6 = [(BuddyProximityBackingViewController *)v39 pinCodeLabel];
  [(UILabel *)v6 setNumberOfLines:0];

  v7 = +[UIColor _labelColor];
  v8 = [(BuddyProximityBackingViewController *)v39 pinCodeLabel];
  [(UILabel *)v8 setTextColor:v7];

  v9 = +[UIColor _systemBackgroundColor];
  v10 = [(BuddyProximityBackingViewController *)v39 pinCodeLabel];
  [(UILabel *)v10 setBackgroundColor:v9];

  v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle0];
  v12 = [(BuddyProximityBackingViewController *)v39 pinCodeLabel];
  [(UILabel *)v12 setFont:v11];

  if (([(BuddyFeatureFlags *)v39->_featureFlags isSolariumEnabled]& 1) != 0)
  {
    v13 = [(BuddyProximityBackingViewController *)v39 pinCodeLabel];
    [(UILabel *)v13 setTextAlignment:4];
  }

  else
  {
    v13 = [(BuddyProximityBackingViewController *)v39 pinCodeLabel];
    [(UILabel *)v13 setTextAlignment:1];
  }

  v14 = [(BuddyProximityBackingViewController *)v39 pinCodeLabel];
  [(UILabel *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(BuddyProximityBackingViewController *)v39 pinCodeLabel];
  LODWORD(v16) = 1148846080;
  [(UILabel *)v15 setContentHuggingPriority:1 forAxis:v16];

  if ([(BuddyProximityBackingViewController *)v39 isShowingVisualPairing]&& [(BuddyProximityBackingViewController *)v39 showPairingStyleToggle])
  {
    location = 0;
    if (([(BuddyFeatureFlags *)v39->_featureFlags isSolariumEnabled]& 1) != 0)
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
    v19 = [(BuddyProximityBackingViewController *)v39 stringProvider];
    v20 = [(BuddyProximityBackingViewController *)v39 language];
    v21 = [(BuddyProximityBackingStringProviding *)v19 textualPairingButtonTitleWithLanguage:v20];
    [location setTitle:v21 forState:0];

    LODWORD(v22) = 1148846080;
    [location setContentHuggingPriority:1 forAxis:v22];
    [location addTarget:v39 action:"pairingStyleToggleTapped:" forControlEvents:0x2000];
    [(BuddyProximityBackingViewController *)v39 setPairingStyleToggleButton:location];
    objc_storeStrong(&location, 0);
  }

  v23 = objc_alloc_init(UIView);
  [(BuddyProximityBackingViewController *)v39 setContainerView:v23];

  v24 = [(BuddyProximityBackingViewController *)v39 containerView];
  [(UIView *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = +[UIColor _systemBackgroundColor];
  v26 = [(BuddyProximityBackingViewController *)v39 containerView];
  [(UIView *)v26 setBackgroundColor:v25];

  objc_initWeak(&from, v39);
  v27 = v39;
  v28 = [(BuddyProximityBackingViewController *)v39 containerView];
  v29 = _NSConcreteStackBlock;
  v30 = -1073741824;
  v31 = 0;
  v32 = sub_1001268B8;
  v33 = &unk_10032D358;
  objc_copyWeak(v34, &from);
  [(BuddyProximityBackingViewController *)v27 addContentSubView:v28 heightConstraintForLayout:&v29];

  [(BuddyProximityBackingViewController *)v39 updateView];
  objc_destroyWeak(v34);
  objc_destroyWeak(&from);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v3 = [(BuddyProximityBackingViewController *)self visualPairingViewController];
  [(BFFProximityVisualPairingViewController *)v3 stop];

  LODWORD(v4) = 0;
  [(BuddyProximityBackingViewController *)v10 setMinimumBrightness:v4];
  v5 = [(BuddyProximityBackingViewController *)v10 parentViewController];
  v6 = 0;
  if (!v5)
  {
    v6 = [(BuddyProximityBackingViewController *)v10 isMovingFromParentViewController];
    v5 = 0;
  }

  if (v6)
  {
    [(BuddyProximityBackingViewController *)v10 endPairingIfNeeded];
  }

  v7.receiver = v10;
  v7.super_class = BuddyProximityBackingViewController;
  [(BuddyProximityBackingViewController *)&v7 viewDidDisappear:v8];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v8 = a3;
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v5.receiver = v7;
  v5.super_class = BuddyProximityBackingViewController;
  [(BuddyProximityBackingViewController *)&v5 viewWillTransitionToSize:location[0] withTransitionCoordinator:v8.width, v8.height];
  v4 = [(BuddyProximityBackingViewController *)v7 view];
  [v4 setNeedsLayout];

  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = BuddyProximityBackingViewController;
  [(BuddyProximityBackingViewController *)&v3 traitCollectionDidChange:location[0]];
  [(BuddyProximityBackingViewController *)v5 updateView];
  objc_storeStrong(location, 0);
}

- (void)endPairingIfNeeded
{
  if (![(BuddyProximityBackingViewController *)self nonUserInitiatedDismissal])
  {
    v2 = [(BuddyProximityBackingViewController *)self delegate];
    [(BuddyProximityBackingViewControllerDelegate *)v2 pairingEndedByUser];
  }
}

- (void)showVisualPairing
{
  [(BuddyProximityBackingViewController *)self setShowingVisualPairing:1, a2];
  [(BuddyProximityBackingViewController *)self updateView];
  v2 = [(BuddyProximityBackingViewController *)self visualPairingViewController];
  [(BFFProximityVisualPairingViewController *)v2 start];
}

- (void)showPairingCode
{
  [(BuddyProximityBackingViewController *)self setShowingVisualPairing:0, a2];
  [(BuddyProximityBackingViewController *)self updateView];
  v2 = [(BuddyProximityBackingViewController *)self visualPairingViewController];
  [(BFFProximityVisualPairingViewController *)v2 stop];
}

- (void)prepareForLanguageChange:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityBackingViewController *)v12 visualPairingViewController];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100126EAC;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  [(BFFProximityVisualPairingViewController *)v3 pairingDidComplete:&v4];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)updateView
{
  v95 = self;
  v94 = a2;
  v2 = [(BuddyProximityBackingViewController *)self view];
  [v2 layoutIfNeeded];

  v3 = [(BuddyProximityBackingViewController *)v95 delegate];
  v93 = [(BuddyProximityBackingViewControllerDelegate *)v3 deviceClass];

  v92 = [(BuddyProximityBackingViewController *)v95 language];
  if ([(BuddyProximityBackingViewController *)v95 isShowingVisualPairing])
  {
    v5 = [(BuddyProximityBackingViewController *)v95 visualPairingViewController];
    v6 = v5 == 0;

    if (v6)
    {
      v91 = 1;
    }

    else
    {
      LODWORD(v7) = 1140457472;
      [(BuddyProximityBackingViewController *)v95 setMinimumBrightness:v7];
      v8 = [(BuddyProximityBackingViewController *)v95 visualPairingViewController];
      [(BFFProximityVisualPairingViewController *)v8 removeFromParentViewController];

      if ([(BuddyProximityBackingViewController *)v95 _largeAXMode])
      {
        [(BuddyProximityBackingViewController *)v95 resetLayoutTo:1];
      }

      else
      {
        [(BuddyProximityBackingViewController *)v95 resetLayoutTo:2];
      }

      v9 = [(BuddyProximityBackingViewController *)v95 stringProvider];
      v90 = [(BuddyProximityBackingStringProviding *)v9 visualTitleWithDeviceClass:v93 language:v92];

      v10 = [(BuddyProximityBackingViewController *)v95 stringProvider];
      location = [(BuddyProximityBackingStringProviding *)v10 visualDescriptionWithDeviceClass:v93 language:v92];

      v11 = [(BuddyProximityBackingViewController *)v95 headerView];
      [v11 setTitle:v90];

      v12 = [(BuddyProximityBackingViewController *)v95 headerView];
      [v12 setDetailText:location];

      v13 = [(BuddyProximityBackingViewController *)v95 headerView];
      [v13 setLanguage:v92];

      v14 = [(BuddyProximityBackingViewController *)v95 visualPairingViewController];
      v15 = [(BuddyProximityBackingViewController *)v95 pairingCode];
      [(BFFProximityVisualPairingViewController *)v14 setPairingCode:v15];

      v16 = [(BuddyProximityBackingViewController *)v95 pinCodeLabel];
      [(UILabel *)v16 removeFromSuperview];

      v17 = [(BuddyProximityBackingViewController *)v95 containerView];
      v18 = [(BuddyProximityBackingViewController *)v95 visualPairingViewController];
      v19 = [(BFFProximityVisualPairingViewController *)v18 view];
      [(UIView *)v17 addSubview:v19];

      v20 = [(BuddyProximityBackingViewController *)v95 visualPairingViewController];
      [(BuddyProximityBackingViewController *)v95 addChildViewController:v20];

      v21 = [(BuddyProximityBackingViewController *)v95 visualPairingViewController];
      v22 = [(BFFProximityVisualPairingViewController *)v21 parentViewController];
      v23 = v22 == v95;

      if (v23)
      {
        v24 = +[NSAssertionHandler currentHandler];
        [(NSAssertionHandler *)v24 handleFailureInMethod:v94 object:v95 file:@"BuddyProximityBackingViewController.m" lineNumber:261 description:@"Underlying implementation has changed; Visual pairing controller is expected to have OBWelcomeController as it's parent"];
      }

      if ([(BuddyProximityBackingViewController *)v95 showPairingStyleToggle])
      {
        v25 = [(BuddyProximityBackingViewController *)v95 pairingStyleToggleButton];
        v26 = [(BuddyProximityBackingViewController *)v95 stringProvider];
        v27 = [(BuddyProximityBackingStringProviding *)v26 textualPairingButtonTitleWithLanguage:v92];
        [(UIButton *)v25 setTitle:v27 forState:0];

        v28 = [(BuddyProximityBackingViewController *)v95 containerView];
        v29 = [(UIView *)v28 topAnchor];
        v30 = [(BuddyProximityBackingViewController *)v95 visualPairingViewController];
        v31 = [(BFFProximityVisualPairingViewController *)v30 view];
        v32 = [v31 topAnchor];
        v33 = [(NSLayoutYAxisAnchor *)v29 constraintEqualToAnchor:v32];
        [v33 setActive:1];

        v34 = [(BuddyProximityBackingViewController *)v95 visualPairingViewController];
        v35 = [(BFFProximityVisualPairingViewController *)v34 view];
        v36 = [(BuddyProximityBackingViewController *)v95 containerView];
        [v35 pinToHorizontalEdges:v36];

        v37 = [(BuddyProximityBackingViewController *)v95 visualPairingViewController];
        v38 = [(BFFProximityVisualPairingViewController *)v37 view];
        [(BuddyProximityBackingViewController *)v95 addPairingStyleToggleButtonBelowView:v38];
      }

      else
      {
        v39 = [(BuddyProximityBackingViewController *)v95 visualPairingViewController];
        v40 = [(BFFProximityVisualPairingViewController *)v39 view];
        v41 = [(BuddyProximityBackingViewController *)v95 containerView];
        [v40 pinToEdges:v41];
      }

      v91 = 1;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v90, 0);
    }
  }

  else
  {
    LODWORD(v4) = 0;
    [(BuddyProximityBackingViewController *)v95 setMinimumBrightness:v4];
    [(BuddyProximityBackingViewController *)v95 resetLayoutTo:2];
    v42 = [(BuddyProximityBackingViewController *)v95 stringProvider];
    v88 = [(BuddyProximityBackingStringProviding *)v42 textualTitleWithDeviceClass:v93 language:v92];

    v43 = [(BuddyProximityBackingViewController *)v95 stringProvider];
    v87 = [(BuddyProximityBackingStringProviding *)v43 textualDescriptionWithDeviceClass:v93 language:v92];

    v44 = [(BuddyProximityBackingViewController *)v95 headerView];
    [v44 setTitle:v88];

    v45 = [(BuddyProximityBackingViewController *)v95 headerView];
    [v45 setDetailText:v87];

    v46 = [(BuddyProximityBackingViewController *)v95 headerView];
    [v46 setLanguage:v92];

    v47 = [(BuddyProximityBackingViewController *)v95 headerView];
    LODWORD(v48) = 1045220557;
    [v47 setTitleHyphenationFactor:v48];

    v49 = [(BuddyProximityBackingViewController *)v95 visualPairingViewController];
    v50 = [(BFFProximityVisualPairingViewController *)v49 view];
    [v50 removeFromSuperview];

    v51 = [(BuddyProximityBackingViewController *)v95 containerView];
    v52 = [(BuddyProximityBackingViewController *)v95 pinCodeLabel];
    [(UIView *)v51 addSubview:v52];

    v53 = [(BuddyProximityBackingViewController *)v95 pinCodeLabel];
    v54 = [(BuddyProximityBackingViewController *)v95 containerView];
    [(UILabel *)v53 pinToHorizontalEdges:v54];

    if (([(BuddyFeatureFlags *)v95->_featureFlags isSolariumEnabled]& 1) != 0)
    {
      v55 = [NSMutableAttributedString alloc];
      v56 = [(BuddyProximityBackingViewController *)v95 pairingCode];
      v86 = [v55 initWithString:v56];

      v57 = [(BuddyProximityBackingViewController *)v95 pairingCode];
      v97 = 0;
      v96 = [(NSString *)v57 length];
      v98 = 0;
      v99 = v96;
      [v86 addAttribute:NSKernAttributeName value:&off_10033D598 range:{0, v96, 0, v96}];

      v58 = [(BuddyProximityBackingViewController *)v95 pinCodeLabel];
      [(UILabel *)v58 setAttributedText:v86];

      v59 = [(BuddyProximityBackingViewController *)v95 pinCodeLabel];
      v60 = [(UILabel *)v59 lastBaselineAnchor];
      v61 = [(BuddyProximityBackingViewController *)v95 containerView];
      v62 = [(UIView *)v61 topAnchor];
      v63 = BFFIsiPad();
      v64 = 54.0;
      if ((v63 & 1) == 0)
      {
        v64 = 44.0;
      }

      v65 = [v60 constraintEqualToAnchor:v62 constant:v64];
      [v65 setActive:1];

      objc_storeStrong(&v86, 0);
    }

    else
    {
      v66 = [(BuddyProximityBackingViewController *)v95 pinCodeLabel];
      v67 = [(BuddyProximityBackingViewController *)v95 pairingCode];
      [(UILabel *)v66 setText:v67];

      v68 = [(BuddyProximityBackingViewController *)v95 pinCodeLabel];
      v69 = [(UILabel *)v68 lastBaselineAnchor];
      v70 = [(BuddyProximityBackingViewController *)v95 containerView];
      v71 = [(UIView *)v70 topAnchor];
      v72 = BFFIsiPad();
      v73 = 106.0;
      if ((v72 & 1) == 0)
      {
        v73 = 96.0;
      }

      v74 = [v69 constraintEqualToAnchor:v71 constant:v73];
      [v74 setActive:1];
    }

    if ([(BuddyProximityBackingViewController *)v95 showPairingStyleToggle])
    {
      v75 = [(BuddyProximityBackingViewController *)v95 pairingStyleToggleButton];
      v76 = [(BuddyProximityBackingViewController *)v95 stringProvider];
      v77 = [(BuddyProximityBackingStringProviding *)v76 visualPairingButtonTitleWithLanguage:v92];
      [(UIButton *)v75 setTitle:v77 forState:0];

      v78 = v95;
      v79 = [(BuddyProximityBackingViewController *)v95 pinCodeLabel];
      [(BuddyProximityBackingViewController *)v78 addPairingStyleToggleButtonBelowView:v79];
    }

    else
    {
      v80 = [(BuddyProximityBackingViewController *)v95 containerView];
      v81 = [(UIView *)v80 bottomAnchor];
      v82 = [(BuddyProximityBackingViewController *)v95 pinCodeLabel];
      v83 = [(UILabel *)v82 bottomAnchor];
      v84 = [(NSLayoutYAxisAnchor *)v81 constraintGreaterThanOrEqualToAnchor:v83];
      [v84 setActive:1];
    }

    v85 = [(BuddyProximityBackingViewController *)v95 view];
    [v85 setNeedsLayout];

    objc_storeStrong(&v87, 0);
    objc_storeStrong(&v88, 0);
    v91 = 0;
  }

  objc_storeStrong(&v92, 0);
  objc_storeStrong(&v93, 0);
}

- (void)addPairingStyleToggleButtonBelowView:(id)a3
{
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityBackingViewController *)v44 pairingStyleToggleButton];
  [(UIButton *)v3 removeFromSuperview];

  v4 = [(BuddyProximityBackingViewController *)v44 containerView];
  v5 = [(BuddyProximityBackingViewController *)v44 pairingStyleToggleButton];
  [(UIView *)v4 addSubview:v5];

  if (([(BuddyFeatureFlags *)v44->_featureFlags isSolariumEnabled]& 1) != 0)
  {
    v39 = [location[0] bottomAnchor];
    v41 = [(BuddyProximityBackingViewController *)v44 pairingStyleToggleButton];
    v37 = [(UIButton *)v41 topAnchor];
    v35 = [v39 constraintEqualToAnchor:?];
    v48[0] = v35;
    v33 = [(BuddyProximityBackingViewController *)v44 pairingStyleToggleButton];
    v6 = [(UIButton *)v33 leadingAnchor];
    v7 = [(BuddyProximityBackingViewController *)v44 containerView];
    v8 = [(UIView *)v7 leadingAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];
    v48[1] = v9;
    v10 = [(BuddyProximityBackingViewController *)v44 pairingStyleToggleButton];
    v11 = [(UIButton *)v10 trailingAnchor];
    v12 = [(BuddyProximityBackingViewController *)v44 containerView];
    v13 = [(UIView *)v12 trailingAnchor];
    v14 = [v11 constraintLessThanOrEqualToAnchor:v13];
    v48[2] = v14;
    v15 = [NSArray arrayWithObjects:v48 count:3];
    [NSLayoutConstraint activateConstraints:v15];

    if ([(BuddyProximityBackingViewController *)v44 isShowingVisualPairing])
    {
      v16 = [(BuddyProximityBackingViewController *)v44 pairingStyleToggleButton];
      v17 = [(UIButton *)v16 bottomAnchor];
      v18 = [(BuddyProximityBackingViewController *)v44 containerView];
      v19 = [(UIView *)v18 bottomAnchor];
      v20 = [v17 constraintEqualToAnchor:v19];
      v47 = v20;
      v21 = [NSArray arrayWithObjects:&v47 count:1];
    }

    else
    {
      v16 = [(BuddyProximityBackingViewController *)v44 pairingStyleToggleButton];
      v17 = [(UIButton *)v16 bottomAnchor];
      v18 = [(BuddyProximityBackingViewController *)v44 containerView];
      v19 = [(UIView *)v18 bottomAnchor];
      v20 = [v17 constraintLessThanOrEqualToAnchor:v19];
      v46 = v20;
      v21 = [NSArray arrayWithObjects:&v46 count:1];
    }

    [NSLayoutConstraint activateConstraints:v21];
  }

  else
  {
    v22 = [(BuddyProximityBackingViewController *)v44 containerView];
    v40 = [location[0] bottomAnchor];
    v42 = [(BuddyProximityBackingViewController *)v44 pairingStyleToggleButton];
    v38 = [(UIButton *)v42 topAnchor];
    v36 = [v40 constraintEqualToAnchor:?];
    v45[0] = v36;
    v34 = [(BuddyProximityBackingViewController *)v44 containerView];
    v32 = [(UIView *)v34 bottomAnchor];
    v23 = [(BuddyProximityBackingViewController *)v44 pairingStyleToggleButton];
    v24 = [(UIButton *)v23 bottomAnchor];
    v25 = [(NSLayoutYAxisAnchor *)v32 constraintEqualToAnchor:v24];
    v45[1] = v25;
    v26 = [(BuddyProximityBackingViewController *)v44 containerView];
    v27 = [(UIView *)v26 centerXAnchor];
    v28 = [(BuddyProximityBackingViewController *)v44 pairingStyleToggleButton];
    v29 = [(UIButton *)v28 centerXAnchor];
    v30 = [(NSLayoutXAxisAnchor *)v27 constraintEqualToAnchor:v29];
    v45[2] = v30;
    v31 = [NSArray arrayWithObjects:v45 count:3];
    [(UIView *)v22 addConstraints:v31];
  }

  objc_storeStrong(location, 0);
}

- (void)setMinimumBrightness:(float)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v18[0] = @"nits";
  v3 = [NSNumber numberWithFloat:*&a3];
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
  v4 = [(BuddyProximityBackingViewController *)v16 brightnessClient];
  v5 = [(BrightnessSystemClient *)v4 setProperty:location forKey:@"MinNits"]^ 1;

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
  v3 = [(UIApplication *)v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryExtraLarge, v3) == NSOrderedAscending;

  return v4;
}

- (BOOL)showPairingStyleToggle
{
  v15 = self;
  v14 = a2;
  v2 = [(BuddyProximityBackingViewController *)self stringProvider];
  v12 = 0;
  v3 = 1;
  if (objc_opt_respondsToSelector())
  {
    v13 = [(BuddyProximityBackingViewController *)v15 stringProvider];
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
    v11 = [(BuddyProximityBackingViewController *)v15 language];
    v4 = [(BuddyProximityBackingViewController *)v15 stringProvider];
    location = [(BuddyProximityBackingStringProviding *)v4 visualPairingButtonTitleWithLanguage:v11];

    v5 = [(BuddyProximityBackingViewController *)v15 stringProvider];
    v9 = [(BuddyProximityBackingStringProviding *)v5 textualPairingButtonTitleWithLanguage:v11];

    v6 = [location length];
    v7 = 0;
    if (v6)
    {
      v7 = [v9 length] != 0;
    }

    v16 = v7;
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v11, 0);
  }

  return v16;
}

- (void)pairingStyleToggleTapped:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(BuddyProximityBackingViewController *)v4 isShowingVisualPairing])
  {
    [(BuddyProximityBackingViewController *)v4 showPairingCode];
  }

  else
  {
    [(BuddyProximityBackingViewController *)v4 showVisualPairing];
  }

  objc_storeStrong(location, 0);
}

@end