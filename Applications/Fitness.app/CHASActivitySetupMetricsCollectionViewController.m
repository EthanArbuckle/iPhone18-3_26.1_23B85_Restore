@interface CHASActivitySetupMetricsCollectionViewController
- (BOOL)holdBeforeDisplaying;
- (BPSBuddyControllerDelegate)delegate;
- (CHASActivitySetupMetricsCollectionViewController)initWithPresentationContext:(int64_t)a3;
- (CHASActivitySetupMetricsCollectionViewController)initWithPresentationContext:(int64_t)a3 pregnancyStateProvider:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)_footerString;
- (id)_makeFooterView;
- (id)_titleForConfirmButton;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tapToRadarMetadata;
- (void)_contentSizeDidChange;
- (void)_determinePresentationContextIfNeededWithHealthStore:(id)a3;
- (void)_endEditingAndDiscardChanges:(BOOL)a3;
- (void)_requestWheelchairDiagnosticsSubmissionIfNecessary;
- (void)_startEdit;
- (void)didTapEditPregnancy;
- (void)shouldReloadPregnancySection;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tappedConfirm:(id)a3;
- (void)viewDidLoad;
- (void)wheelchairUseSwitchDidChangeTo:(BOOL)a3;
@end

@implementation CHASActivitySetupMetricsCollectionViewController

- (CHASActivitySetupMetricsCollectionViewController)initWithPresentationContext:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CHASActivitySetupMetricsCollectionViewController;
  result = [(CHASActivitySetupMetricsCollectionViewController *)&v5 initWithTitle:&stru_1008680E8 detailText:0 icon:0 adoptTableViewScrollView:1];
  if (result)
  {
    result->_presentationContext = a3;
  }

  return result;
}

- (CHASActivitySetupMetricsCollectionViewController)initWithPresentationContext:(int64_t)a3 pregnancyStateProvider:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CHASActivitySetupMetricsCollectionViewController;
  v8 = [(CHASActivitySetupMetricsCollectionViewController *)&v11 initWithTitle:&stru_1008680E8 detailText:0 icon:0 adoptTableViewScrollView:1];
  v9 = v8;
  if (v8)
  {
    v8->_presentationContext = a3;
    objc_storeStrong(&v8->_pregnancyStateProvider, a4);
  }

  return v9;
}

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = CHASActivitySetupMetricsCollectionViewController;
  [(CHASActivitySetupMetricsCollectionViewController *)&v34 viewDidLoad];
  v3 = [(CHASActivitySetupMetricsCollectionViewController *)self delegate];
  if (v3)
  {
    v4 = [(CHASActivitySetupMetricsCollectionViewController *)self delegate];
    v5 = [v4 activePairingDevice];
  }

  else
  {
    v5 = FIGetActivePairedDevice();
  }

  v6 = FIUIHealthStoreForDevice();
  v7 = [[FIActivitySettingsController alloc] initWithHealthStore:v6];
  [v7 populateExistingCharacteristics];
  v8 = [[NSUUID alloc] initWithUUIDString:@"E5E86144-6C47-4545-8F52-A5D468C1DA85"];
  v9 = [v5 supportsCapability:v8];
  if ((v9 & 1) != 0 || [v7 wheelchairUse] != 2)
  {
    p_showWheelchair = &self->_showWheelchair;
    self->_showWheelchair = v9;
  }

  else
  {
    v10 = +[_HKBehavior sharedBehavior];
    p_showWheelchair = &self->_showWheelchair;
    self->_showWheelchair = [v10 isStandalonePhoneFitnessMode];
  }

  if (!self->_pregnancyStateProvider)
  {
    v12 = [[FIUIPregnancyStateProvider alloc] initWithHealthStore:v6];
    pregnancyStateProvider = self->_pregnancyStateProvider;
    self->_pregnancyStateProvider = v12;
  }

  v14 = [[FIUIHealthSettingsDataSource alloc] initWithActivitySettingsController:v7 showWheelchair:*p_showWheelchair pregnancyStateProvider:self->_pregnancyStateProvider showPregnancy:{-[CHASActivitySetupMetricsCollectionViewController showPregnancy](self, "showPregnancy")}];
  healthSettingsDataSource = self->_healthSettingsDataSource;
  self->_healthSettingsDataSource = v14;

  [(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource setDelegate:self];
  [(CHASActivitySetupMetricsCollectionViewController *)self _determinePresentationContextIfNeededWithHealthStore:v6];
  v16 = [(CHASActivitySetupMetricsCollectionViewController *)self navigationController];
  self->_isNavigationBarHidden = [v16 isNavigationBarHidden];

  v17 = [(CHASActivitySetupMetricsCollectionViewController *)self headerView];
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"SET_UP_ACTIVITY" value:&stru_1008680E8 table:@"ActivitySetup"];
  [v17 setTitle:v19];

  v20 = [(CHASActivitySetupMetricsCollectionViewController *)self headerView];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"SET_UP_ACTIVITY_DETAIL" value:&stru_1008680E8 table:@"ActivitySetup"];
  [v20 setDetailText:v22];

  v23 = +[OBBoldTrayButton boldButton];
  v24 = [(CHASActivitySetupMetricsCollectionViewController *)self _titleForConfirmButton];
  [v23 addTarget:self action:"tappedConfirm:" forControlEvents:64];
  [v23 setTitle:v24 forState:0];
  v25 = BPSPillSelectedColor();
  [v23 setTintColor:v25];

  [v23 setAccessibilityIdentifier:@"Fitness.ActivitySetupMetrics.ConfirmButton"];
  v26 = [(CHASActivitySetupMetricsCollectionViewController *)self buttonTray];
  [v26 addButton:v23];

  v27 = [[CHASActivitySetupContentSizedTableView alloc] initWithFrame:2 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CHASActivitySetupContentSizedTableView *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CHASActivitySetupContentSizedTableView *)v27 setDelegate:self];
  [(CHASActivitySetupContentSizedTableView *)v27 setDataSource:self];
  v28 = BPSSeparatorColor();
  [(CHASActivitySetupContentSizedTableView *)v27 setSeparatorColor:v28];

  v29 = +[ARUIMetricColors keyColors];
  v30 = [v29 nonGradientTextColor];
  [(CHASActivitySetupContentSizedTableView *)v27 _setAccessoryBaseColor:v30];

  [(CHASActivitySetupMetricsCollectionViewController *)self setShouldAdjustButtonTrayForKeyboard:1];
  v31 = [(CHASActivitySetupMetricsCollectionViewController *)self _makeFooterView];
  footerView = self->_footerView;
  self->_footerView = v31;

  [(CHASActivitySetupMetricsCollectionViewController *)self setTableView:v27];
  v33 = +[NSNotificationCenter defaultCenter];
  [v33 addObserver:self selector:"_contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (id)_titleForConfirmButton
{
  presentationContext = self->_presentationContext;
  if (presentationContext <= 6)
  {
    v4 = *(&off_10083B9F0 + presentationContext);
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v2 = [v5 localizedStringForKey:v4 value:&stru_1008680E8 table:@"ActivitySetup"];
  }

  return v2;
}

- (void)tappedConfirm:(id)a3
{
  v4 = a3;
  if (self->_isNavigationBarHidden)
  {
    v5 = [(CHASActivitySetupMetricsCollectionViewController *)self navigationController];
    [v5 setNavigationBarHidden:1 animated:0];
  }

  v6 = [(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource editedSettingsController];
  [v6 commmitWithError:0];

  presentationContext = self->_presentationContext;
  if (presentationContext <= 2)
  {
    if (!presentationContext)
    {
      _HKInitializeLogging();
      v10 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_FAULT))
      {
        sub_10069BE28(&self->_presentationContext, v10);
      }

      goto LABEL_18;
    }

    if (presentationContext != 1)
    {
      if (presentationContext != 2)
      {
        goto LABEL_21;
      }

      _HKInitializeLogging();
      v9 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_FAULT))
      {
        sub_10069BE28(&self->_presentationContext, v9);
      }
    }

    v8 = CHASActivitySetupViewController;
    goto LABEL_19;
  }

  if (presentationContext <= 4)
  {
    if (presentationContext != 3)
    {
      v8 = CHASActivitySetupThreeRingsOnboardingViewController;
LABEL_19:
      v11 = [[v8 alloc] initWithPresentationContext:self->_presentationContext];
      v12 = [(CHASActivitySetupMetricsCollectionViewController *)self delegate];
      [v11 setDelegate:v12];

      v13 = [(CHASActivitySetupMetricsCollectionViewController *)self navigationController];
      [v13 pushViewController:v11 animated:1];

LABEL_20:
      goto LABEL_21;
    }

LABEL_18:
    v8 = CHASActivitySetupOnboardingViewController;
    goto LABEL_19;
  }

  if (presentationContext == 5)
  {
    v11 = [(CHASActivitySetupMetricsCollectionViewController *)self delegate];
    [v11 buddyControllerDone:self];
    goto LABEL_20;
  }

  if (presentationContext == 6)
  {
    [(CHASActivitySetupMetricsCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

LABEL_21:
}

- (id)_makeFooterView
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v8 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(CHASActivitySetupMetricsCollectionViewController *)self _footerString];
  [v8 setText:v9];

  v10 = +[UIColor secondaryLabelColor];
  [v8 setTextColor:v10];

  v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v8 setFont:v11];

  [v8 setLineBreakMode:0];
  [v8 setNumberOfLines:0];
  [v7 addSubview:v8];
  v25 = [v8 topAnchor];
  v24 = [v7 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:10.0];
  v26[0] = v23;
  v22 = [v8 leadingAnchor];
  v21 = [v7 leadingAnchor];
  v12 = [v22 constraintEqualToAnchor:v21];
  v26[1] = v12;
  v13 = [v8 trailingAnchor];
  v14 = [v7 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v26[2] = v15;
  v16 = [v8 bottomAnchor];
  v17 = [v7 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-10.0];
  v26[3] = v18;
  v19 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v19];

  return v7;
}

- (id)_footerString
{
  v2 = [(CHASActivitySetupMetricsCollectionViewController *)self delegate];
  v3 = [v2 activePairingDevice];

  v4 = +[_HKBehavior sharedBehavior];
  v5 = [v4 fitnessMode];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 == 2;
  }

  if (v8)
  {
    v9 = @"ABOUT_WHEELCHAIR_USE_FOOTER_STANDALONE";
  }

  else
  {
    v9 = @"ABOUT_WHEELCHAIR_USE_FOOTER";
  }

  v10 = [v6 localizedStringForKey:v9 value:&stru_1008680E8 table:@"ActivitySetup"];

  return v10;
}

- (void)_contentSizeDidChange
{
  self->_footerView = [(CHASActivitySetupMetricsCollectionViewController *)self _makeFooterView];

  _objc_release_x1();
}

- (void)_determinePresentationContextIfNeededWithHealthStore:(id)a3
{
  v4 = a3;
  if (!self->_presentationContext)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v6, &location);
    v5 = v4;
    FIUIUserHasExistingMoveGoal();

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (BOOL)holdBeforeDisplaying
{
  v3 = [(CHASActivitySetupMetricsCollectionViewController *)self delegate];
  v4 = [v3 setupFlowUserInfo];

  v5 = [v4 objectForKeyedSubscript:BPSPairingFlowIsTinkerPairing];
  v6 = [v5 BOOLValue];

  v7 = [v4 objectForKeyedSubscript:BPSPairingFlowIsTinkerHealthSharingEnabled];
  v8 = [v7 BOOLValue];

  _HKInitializeLogging();
  v9 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v14 = v6;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CHASActivitySetupMetricsCollectionViewController - controllerNeedsToRun: isTinkerPairing %d isTinkerHealthSharingEnabled %d", buf, 0xEu);
  }

  v10 = v6 ^ 1 | v8;
  if ((v10 & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DD5D8;
    block[3] = &unk_10083A8B0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  return (v10 & 1) == 0;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (self->_showWheelchair && [(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource wheelchairSectionIndex]== a4)
  {
    v7 = [(CHASActivitySetupMetricsCollectionViewController *)self tableView];
    [v7 frame];
    v9 = v8;
    v10 = [(CHASActivitySetupMetricsCollectionViewController *)self tableView];
    [v10 directionalLayoutMargins];
    v12 = v9 - v11;
    v13 = [(CHASActivitySetupMetricsCollectionViewController *)self tableView];
    [v13 directionalLayoutMargins];
    v15 = v12 - v14;

    LODWORD(v16) = 1148846080;
    LODWORD(v17) = 1112014848;
    [(UIView *)self->_footerView systemLayoutSizeFittingSize:v15 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:v16, v17];
    v19 = v18;
  }

  else
  {
    v19 = UITableViewAutomaticDimension;
  }

  return v19;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if (self->_showWheelchair)
  {
    if ([(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource wheelchairSectionIndex]== a4)
    {
      v6 = self->_footerView;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v10 deselectRowAtIndexPath:v6 animated:1];
  if ([(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource shouldBypassFirstResponderAction:v6])
  {
    [(CHASActivitySetupMetricsCollectionViewController *)self didTapEditPregnancy];
  }

  else
  {
    v7 = [v10 cellForRowAtIndexPath:v6];
    v8 = [(CHASActivitySetupMetricsCollectionViewController *)self view];
    [v8 endEditing:1];

    selectedCell = self->_selectedCell;
    if (v7 == selectedCell)
    {
      self->_selectedCell = 0;

      [(CHASActivitySetupMetricsCollectionViewController *)self _endEditingAndDiscardChanges:0];
    }

    else
    {
      if (selectedCell)
      {
        [(UITableViewCell *)selectedCell resignFirstResponder];
        [(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource cellDidResignFirstResponder:self->_selectedCell];
      }

      else
      {
        [(CHASActivitySetupMetricsCollectionViewController *)self _startEdit];
      }

      [(UITableViewCell *)v7 becomeFirstResponder];
      [(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource cellDidBecomeFirstResponder:v7];
      objc_storeStrong(&self->_selectedCell, v7);
    }
  }
}

- (void)_startEdit
{
  if (self->_isNavigationBarHidden)
  {
    v3 = [(CHASActivitySetupMetricsCollectionViewController *)self navigationController];
    [v3 setNavigationBarHidden:0 animated:0];
  }

  v4 = [UIBarButtonItem alloc];
  v5 = FIUIBundle();
  v6 = [v5 localizedStringForKey:@"DONE_BUTTON" value:&stru_1008680E8 table:@"Localizable"];
  v13 = [v4 initWithTitle:v6 style:2 target:self action:"_done"];

  v7 = [(CHASActivitySetupMetricsCollectionViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v13];

  v8 = [UIBarButtonItem alloc];
  v9 = FIUIBundle();
  v10 = [v9 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_1008680E8 table:@"Localizable"];
  v11 = [v8 initWithTitle:v10 style:0 target:self action:"_cancel"];

  v12 = [(CHASActivitySetupMetricsCollectionViewController *)self navigationItem];
  [v12 setLeftBarButtonItem:v11];

  [(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource startEditing];
}

- (void)_endEditingAndDiscardChanges:(BOOL)a3
{
  v3 = a3;
  if (self->_isNavigationBarHidden)
  {
    v5 = [(CHASActivitySetupMetricsCollectionViewController *)self navigationController];
    [v5 setNavigationBarHidden:1 animated:0];
  }

  selectedCell = self->_selectedCell;
  self->_selectedCell = 0;

  v7 = [(CHASActivitySetupMetricsCollectionViewController *)self view];
  [v7 endEditing:1];

  v8 = [(CHASActivitySetupMetricsCollectionViewController *)self navigationItem];
  [v8 setRightBarButtonItem:0];

  v9 = [(CHASActivitySetupMetricsCollectionViewController *)self navigationItem];
  [v9 setLeftBarButtonItem:0];

  healthSettingsDataSource = self->_healthSettingsDataSource;

  [(FIUIHealthSettingsDataSource *)healthSettingsDataSource endEditingAndDiscardChanges:v3];
}

- (void)_requestWheelchairDiagnosticsSubmissionIfNecessary
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 isDiagnosticSubmissionAllowed];

  if (v4)
  {
    v5 = +[MCProfileConnection sharedConnection];
    v6 = [v5 hasWheelchairDataSubmissionAllowedBeenSet];

    if ((v6 & 1) == 0)
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_TITLE" value:&stru_1008680E8 table:@"ActivitySetup"];
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_DESCRIPTION" value:&stru_1008680E8 table:@"ActivitySetup"];
      v11 = [UIAlertController alertControllerWithTitle:v8 message:v10 preferredStyle:1];

      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_ALLOW" value:&stru_1008680E8 table:@"ActivitySetup"];
      v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&stru_10083B968];
      [v11 addAction:v14];

      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_MORE_INFO" value:&stru_1008680E8 table:@"ActivitySetup"];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000DDF18;
      v21[3] = &unk_10083B990;
      v21[4] = self;
      v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:v21];
      [v11 addAction:v17];

      v18 = [NSBundle bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_DENY" value:&stru_1008680E8 table:@"ActivitySetup"];
      v20 = [UIAlertAction actionWithTitle:v19 style:0 handler:&stru_10083B9B0];
      [v11 addAction:v20];

      [(CHASActivitySetupMetricsCollectionViewController *)self presentViewController:v11 animated:1 completion:0];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = [(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 textLabel];
  v6 = BPSTextColor();
  [v5 setTextColor:v6];

  v7 = BPSForegroundColor();
  [v4 setBackgroundColor:v7];

  v8 = [v4 accessoryView];
  v9 = BPSAccessoryColor();
  [v8 setTintColor:v9];

  v10 = objc_alloc_init(UIView);
  v11 = BPSCellHightlightColor();
  [v10 setBackgroundColor:v11];

  [v4 setSelectedBackgroundView:v10];

  return v4;
}

- (void)wheelchairUseSwitchDidChangeTo:(BOOL)a3
{
  if (a3)
  {
    [(CHASActivitySetupMetricsCollectionViewController *)self _requestWheelchairDiagnosticsSubmissionIfNecessary];
  }
}

- (void)didTapEditPregnancy
{
  v3 = +[UIApplication sharedApplication];
  v2 = [NSURL URLWithString:@"x-apple-health://MenstrualCyclesAppPlugin.healthplugin/openPregnancyOnboarding"];
  [v3 openURL:v2 options:&__NSDictionary0__struct completionHandler:&stru_10083B9D0];
}

- (void)shouldReloadPregnancySection
{
  [(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource pregnancySectionIndexPath];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000DE420;
  v4[3] = &unk_10083A970;
  v5 = v4[4] = self;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (id)tapToRadarMetadata
{
  v2 = [[BPSTTRMetadata alloc] initWithComponent:2];

  return v2;
}

- (BPSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end