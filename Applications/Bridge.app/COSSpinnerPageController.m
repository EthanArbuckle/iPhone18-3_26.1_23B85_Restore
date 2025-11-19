@interface COSSpinnerPageController
- (COSBuddyController)heldPane;
- (COSBuddyControllerDelegate)delegate;
- (COSSpinnerPageController)initWithLabel:(id)a3;
- (void)_radarButtonTapped;
- (void)_showRadarUI;
- (void)back:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation COSSpinnerPageController

- (COSSpinnerPageController)initWithLabel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = COSSpinnerPageController;
  v6 = [(COSSpinnerPageController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = COSSpinnerPageController;
  [(COSSpinnerPageController *)&v23 viewDidLoad];
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  label = self->_label;
  self->_label = v3;

  [(UILabel *)self->_label setNumberOfLines:0];
  [(UILabel *)self->_label setTextAlignment:1];
  v5 = self->_label;
  v6 = [(COSSpinnerPageController *)self message];
  [(UILabel *)v5 setText:v6];

  v7 = self->_label;
  v8 = BPSTextColor();
  [(UILabel *)v7 setTextColor:v8];

  v9 = [(COSSpinnerPageController *)self view];
  [v9 addSubview:self->_label];

  v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v10;

  v12 = [(COSSpinnerPageController *)self view];
  [v12 addSubview:self->_spinner];

  if (PBIsInternalInstall() && [(COSSpinnerPageController *)self _showInternalTTRPrompt])
  {
    v13 = [(COSSpinnerPageController *)self radarPromptTimer];

    if (v13)
    {
      v14 = [(COSSpinnerPageController *)self radarPromptTimer];
      [v14 invalidate];

      [(COSSpinnerPageController *)self setRadarPromptTimer:0];
    }

    objc_initWeak(&location, self);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1000BDD0C;
    v20 = &unk_10026B0A8;
    objc_copyWeak(&v21, &location);
    v15 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v17 block:360.0];
    [(COSSpinnerPageController *)self setRadarPromptTimer:v15, v17, v18, v19, v20];

    v16 = +[NSDate date];
    [(COSSpinnerPageController *)self setRadarPromptWaitStartDate:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = COSSpinnerPageController;
  [(COSSpinnerPageController *)&v9 viewDidDisappear:a3];
  if (([(COSSpinnerPageController *)self isMovingFromParentViewController]& 1) == 0)
  {
    v4 = [(COSSpinnerPageController *)self navigationController];

    if (v4)
    {
      v5 = [(COSSpinnerPageController *)self navigationController];
      v6 = [v5 viewControllers];
      v7 = [v6 mutableCopy];

      if ([v7 containsObject:self])
      {
        [v7 removeObjectIdenticalTo:self];
        v8 = [(COSSpinnerPageController *)self navigationController];
        [v8 setViewControllers:v7 animated:0];
      }
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(COSSpinnerPageController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UILabel *)self->_label setFrame:v5, v7, v9, v11];
  [(UILabel *)self->_label frame];
  [(UILabel *)self->_label setFrame:45.0];
  [(UILabel *)self->_label sizeToFit];
  [(UILabel *)self->_label frame];
  v13 = v12;
  v15 = v14;
  [(UILabel *)self->_label setFrame:?];
  [(UIActivityIndicatorView *)self->_spinner frame];
  v17 = v16;
  v19 = v18;
  v20 = v15 + 10.0 + v18;
  v21 = v11 * 0.5 + (v20 * -0.5);
  v22 = roundf(v21);
  [(UILabel *)self->_label setFrame:v13, v18 + v22 + 10.0, v9 + -90.0, v15];
  v23 = v9 * 0.5 - v17 * 0.5;
  spinner = self->_spinner;
  v25 = roundf(v23);

  [(UIActivityIndicatorView *)spinner setFrame:v25, v22, v17, v19];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  v5.receiver = self;
  v5.super_class = COSSpinnerPageController;
  [(COSSpinnerPageController *)&v5 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  v5.receiver = self;
  v5.super_class = COSSpinnerPageController;
  [(COSSpinnerPageController *)&v5 viewWillDisappear:v3];
}

- (void)back:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User Backed Out Past a Spinner Waiting Page", buf, 2u);
  }

  v19 = +[NSBundle mainBundle];
  v5 = [v19 localizedStringForKey:@"RESET_BUDDY_TITLE" value:&stru_10026E598 table:@"Localizable"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"RESET_BUDDY_MESSAGE_%@" value:&stru_10026E598 table:@"Localizable"];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"APPLE_WATCH_ALL_STRING" value:&stru_10026E598 table:@"Localizable"];
  v10 = [NSString stringWithFormat:v7, v9];
  v11 = [UIAlertController alertControllerWithTitle:v5 message:v10 preferredStyle:1];
  alertController = self->_alertController;
  self->_alertController = v11;

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"RESET_BUDDY_ACTION" value:&stru_10026E598 table:@"Localizable"];
  v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:&stru_10026B0C8];

  [(UIAlertController *)self->_alertController addAction:v15];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"CANCEL_RESET_BUDDY_ACTION" value:&stru_10026E598 table:@"Localizable"];
  v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:&stru_10026B108];

  [(UIAlertController *)self->_alertController addAction:v18];
  [(COSSpinnerPageController *)self presentViewController:self->_alertController animated:1 completion:0];
}

- (void)_showRadarUI
{
  v3 = objc_opt_new();
  [v3 setText:@"Internal: Stuck on this screen?"];
  v4 = +[UIColor whiteColor];
  v24 = v3;
  [v3 setTextColor:v4];

  v5 = [UIButton buttonWithType:1];
  [v5 setTitle:@"File a Radar" forState:0];
  v6 = +[UIColor systemOrangeColor];
  [v5 setTintColor:v6];

  v7 = v5;
  v23 = v5;
  [v5 addTarget:self action:"_radarButtonTapped" forEvents:64];
  v8 = objc_opt_new();
  [v8 setAxis:1];
  [v8 setAlignment:3];
  [v8 setDistribution:0];
  [v8 setSpacing:8.0];
  [v8 addArrangedSubview:v3];
  [v8 addArrangedSubview:v7];
  [(COSSpinnerPageController *)self setRadarPromptView:v8];
  v9 = [(COSSpinnerPageController *)self view];
  [v9 addSubview:v8];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [v8 bottomAnchor];
  v22 = [(COSSpinnerPageController *)self view];
  v20 = [v22 bottomAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:-32.0];
  v25[0] = v19;
  v10 = [v8 leftAnchor];
  v11 = [(COSSpinnerPageController *)self view];
  v12 = [v11 leftAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v25[1] = v13;
  v14 = [v8 rightAnchor];
  v15 = [(COSSpinnerPageController *)self view];
  v16 = [v15 rightAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v25[2] = v17;
  v18 = [NSArray arrayWithObjects:v25 count:3];
  [NSLayoutConstraint activateConstraints:v18];
}

- (void)_radarButtonTapped
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_heldPane);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&v2->_heldPane);
    v6 = [v5 tapToRadarMetadata];
  }

  else
  {
    v6 = [[BPSTTRMetadata alloc] initWithComponent:0];
  }

  v7 = [(COSSpinnerPageController *)v2 radarPromptWaitStartDate];
  [v7 timeIntervalSinceNow];
  v9 = -v8;

  v10 = objc_loadWeakRetained(&v2->_heldPane);
  if (v10)
  {
    v11 = objc_loadWeakRetained(&v2->_heldPane);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);

    v14 = [NSString stringWithFormat:@"Bridge stuck waiting (%.0f sec) for %@ on hold-wait screen", *&v9, v13];
    [v6 setTitle:v14];

    v15 = pbb_bridge_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v40 = v9;
      v41 = 2112;
      v42 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Hold wait TTR button tapped after waiting %.0f seconds for %@", buf, 0x16u);
    }
  }

  else
  {
    v16 = [NSString stringWithFormat:@"Bridge stuck waiting (%.0f sec) on hold-wait screen", *&v9];
    [v6 setTitle:v16];

    v13 = pbb_bridge_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v40 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Hold wait TTR button tapped after waiting %.0f seconds for an unknown pane", buf, 0xCu);
    }
  }

  v17 = [UIApp setupController];
  v18 = [v17 internalDashboardController];
  v19 = [v18 dashboardData];

  v20 = objc_opt_new();
  v21 = [v19 pairingEvents];
  if (v21)
  {
    v32 = v2;
    v33 = v6;
    [v20 appendString:@"———— Pairing metadata:\n"];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          v28 = [v27 dashboardKey];
          v29 = [v27 eventValue];
          [v20 appendFormat:@"- %@ : %@\n", v28, v29];
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v24);
    }

    v2 = v32;
    v6 = v33;
  }

  v30 = [(UILabel *)v2->_label text];
  v31 = [NSString stringWithFormat:@"Wait message: %@\n\nPlease describe what steps you’ve taken in setup prior to getting stuck on this pane:\n\n%@\n\nIMPORTANT: Please manually grab and attach a sysdiagnose from the Watch you are pairing!", v30, v20];
  [v6 setRadarDescription:v31];

  [BPSTapToRadarCoordinator openTapToRadarWithInitialMetadata:v6];
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (COSBuddyController)heldPane
{
  WeakRetained = objc_loadWeakRetained(&self->_heldPane);

  return WeakRetained;
}

@end