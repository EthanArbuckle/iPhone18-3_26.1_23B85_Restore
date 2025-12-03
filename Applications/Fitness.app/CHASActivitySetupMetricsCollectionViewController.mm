@interface CHASActivitySetupMetricsCollectionViewController
- (BOOL)holdBeforeDisplaying;
- (BPSBuddyControllerDelegate)delegate;
- (CHASActivitySetupMetricsCollectionViewController)initWithPresentationContext:(int64_t)context;
- (CHASActivitySetupMetricsCollectionViewController)initWithPresentationContext:(int64_t)context pregnancyStateProvider:(id)provider;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)_footerString;
- (id)_makeFooterView;
- (id)_titleForConfirmButton;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tapToRadarMetadata;
- (void)_contentSizeDidChange;
- (void)_determinePresentationContextIfNeededWithHealthStore:(id)store;
- (void)_endEditingAndDiscardChanges:(BOOL)changes;
- (void)_requestWheelchairDiagnosticsSubmissionIfNecessary;
- (void)_startEdit;
- (void)didTapEditPregnancy;
- (void)shouldReloadPregnancySection;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tappedConfirm:(id)confirm;
- (void)viewDidLoad;
- (void)wheelchairUseSwitchDidChangeTo:(BOOL)to;
@end

@implementation CHASActivitySetupMetricsCollectionViewController

- (CHASActivitySetupMetricsCollectionViewController)initWithPresentationContext:(int64_t)context
{
  v5.receiver = self;
  v5.super_class = CHASActivitySetupMetricsCollectionViewController;
  result = [(CHASActivitySetupMetricsCollectionViewController *)&v5 initWithTitle:&stru_1008680E8 detailText:0 icon:0 adoptTableViewScrollView:1];
  if (result)
  {
    result->_presentationContext = context;
  }

  return result;
}

- (CHASActivitySetupMetricsCollectionViewController)initWithPresentationContext:(int64_t)context pregnancyStateProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = CHASActivitySetupMetricsCollectionViewController;
  v8 = [(CHASActivitySetupMetricsCollectionViewController *)&v11 initWithTitle:&stru_1008680E8 detailText:0 icon:0 adoptTableViewScrollView:1];
  v9 = v8;
  if (v8)
  {
    v8->_presentationContext = context;
    objc_storeStrong(&v8->_pregnancyStateProvider, provider);
  }

  return v9;
}

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = CHASActivitySetupMetricsCollectionViewController;
  [(CHASActivitySetupMetricsCollectionViewController *)&v34 viewDidLoad];
  delegate = [(CHASActivitySetupMetricsCollectionViewController *)self delegate];
  if (delegate)
  {
    delegate2 = [(CHASActivitySetupMetricsCollectionViewController *)self delegate];
    activePairingDevice = [delegate2 activePairingDevice];
  }

  else
  {
    activePairingDevice = FIGetActivePairedDevice();
  }

  v6 = FIUIHealthStoreForDevice();
  v7 = [[FIActivitySettingsController alloc] initWithHealthStore:v6];
  [v7 populateExistingCharacteristics];
  v8 = [[NSUUID alloc] initWithUUIDString:@"E5E86144-6C47-4545-8F52-A5D468C1DA85"];
  v9 = [activePairingDevice supportsCapability:v8];
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
  navigationController = [(CHASActivitySetupMetricsCollectionViewController *)self navigationController];
  self->_isNavigationBarHidden = [navigationController isNavigationBarHidden];

  headerView = [(CHASActivitySetupMetricsCollectionViewController *)self headerView];
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"SET_UP_ACTIVITY" value:&stru_1008680E8 table:@"ActivitySetup"];
  [headerView setTitle:v19];

  headerView2 = [(CHASActivitySetupMetricsCollectionViewController *)self headerView];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"SET_UP_ACTIVITY_DETAIL" value:&stru_1008680E8 table:@"ActivitySetup"];
  [headerView2 setDetailText:v22];

  v23 = +[OBBoldTrayButton boldButton];
  _titleForConfirmButton = [(CHASActivitySetupMetricsCollectionViewController *)self _titleForConfirmButton];
  [v23 addTarget:self action:"tappedConfirm:" forControlEvents:64];
  [v23 setTitle:_titleForConfirmButton forState:0];
  v25 = BPSPillSelectedColor();
  [v23 setTintColor:v25];

  [v23 setAccessibilityIdentifier:@"Fitness.ActivitySetupMetrics.ConfirmButton"];
  buttonTray = [(CHASActivitySetupMetricsCollectionViewController *)self buttonTray];
  [buttonTray addButton:v23];

  v27 = [[CHASActivitySetupContentSizedTableView alloc] initWithFrame:2 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CHASActivitySetupContentSizedTableView *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CHASActivitySetupContentSizedTableView *)v27 setDelegate:self];
  [(CHASActivitySetupContentSizedTableView *)v27 setDataSource:self];
  v28 = BPSSeparatorColor();
  [(CHASActivitySetupContentSizedTableView *)v27 setSeparatorColor:v28];

  v29 = +[ARUIMetricColors keyColors];
  nonGradientTextColor = [v29 nonGradientTextColor];
  [(CHASActivitySetupContentSizedTableView *)v27 _setAccessoryBaseColor:nonGradientTextColor];

  [(CHASActivitySetupMetricsCollectionViewController *)self setShouldAdjustButtonTrayForKeyboard:1];
  _makeFooterView = [(CHASActivitySetupMetricsCollectionViewController *)self _makeFooterView];
  footerView = self->_footerView;
  self->_footerView = _makeFooterView;

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

- (void)tappedConfirm:(id)confirm
{
  confirmCopy = confirm;
  if (self->_isNavigationBarHidden)
  {
    navigationController = [(CHASActivitySetupMetricsCollectionViewController *)self navigationController];
    [navigationController setNavigationBarHidden:1 animated:0];
  }

  editedSettingsController = [(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource editedSettingsController];
  [editedSettingsController commmitWithError:0];

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
      delegate2 = [[v8 alloc] initWithPresentationContext:self->_presentationContext];
      delegate = [(CHASActivitySetupMetricsCollectionViewController *)self delegate];
      [delegate2 setDelegate:delegate];

      navigationController2 = [(CHASActivitySetupMetricsCollectionViewController *)self navigationController];
      [navigationController2 pushViewController:delegate2 animated:1];

LABEL_20:
      goto LABEL_21;
    }

LABEL_18:
    v8 = CHASActivitySetupOnboardingViewController;
    goto LABEL_19;
  }

  if (presentationContext == 5)
  {
    delegate2 = [(CHASActivitySetupMetricsCollectionViewController *)self delegate];
    [delegate2 buddyControllerDone:self];
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
  _footerString = [(CHASActivitySetupMetricsCollectionViewController *)self _footerString];
  [v8 setText:_footerString];

  v10 = +[UIColor secondaryLabelColor];
  [v8 setTextColor:v10];

  v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v8 setFont:v11];

  [v8 setLineBreakMode:0];
  [v8 setNumberOfLines:0];
  [v7 addSubview:v8];
  topAnchor = [v8 topAnchor];
  topAnchor2 = [v7 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v26[0] = v23;
  leadingAnchor = [v8 leadingAnchor];
  leadingAnchor2 = [v7 leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[1] = v12;
  trailingAnchor = [v8 trailingAnchor];
  trailingAnchor2 = [v7 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[2] = v15;
  bottomAnchor = [v8 bottomAnchor];
  bottomAnchor2 = [v7 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v26[3] = v18;
  v19 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v19];

  return v7;
}

- (id)_footerString
{
  delegate = [(CHASActivitySetupMetricsCollectionViewController *)self delegate];
  activePairingDevice = [delegate activePairingDevice];

  v4 = +[_HKBehavior sharedBehavior];
  fitnessMode = [v4 fitnessMode];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = v6;
  if (activePairingDevice)
  {
    v8 = 0;
  }

  else
  {
    v8 = fitnessMode == 2;
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

- (void)_determinePresentationContextIfNeededWithHealthStore:(id)store
{
  storeCopy = store;
  if (!self->_presentationContext)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v6, &location);
    v5 = storeCopy;
    FIUIUserHasExistingMoveGoal();

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (BOOL)holdBeforeDisplaying
{
  delegate = [(CHASActivitySetupMetricsCollectionViewController *)self delegate];
  setupFlowUserInfo = [delegate setupFlowUserInfo];

  v5 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingFlowIsTinkerPairing];
  bOOLValue = [v5 BOOLValue];

  v7 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingFlowIsTinkerHealthSharingEnabled];
  bOOLValue2 = [v7 BOOLValue];

  _HKInitializeLogging();
  v9 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v14 = bOOLValue;
    v15 = 1024;
    v16 = bOOLValue2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CHASActivitySetupMetricsCollectionViewController - controllerNeedsToRun: isTinkerPairing %d isTinkerHealthSharingEnabled %d", buf, 0xEu);
  }

  v10 = bOOLValue ^ 1 | bOOLValue2;
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

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (self->_showWheelchair && [(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource wheelchairSectionIndex]== section)
  {
    tableView = [(CHASActivitySetupMetricsCollectionViewController *)self tableView];
    [tableView frame];
    v9 = v8;
    tableView2 = [(CHASActivitySetupMetricsCollectionViewController *)self tableView];
    [tableView2 directionalLayoutMargins];
    v12 = v9 - v11;
    tableView3 = [(CHASActivitySetupMetricsCollectionViewController *)self tableView];
    [tableView3 directionalLayoutMargins];
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

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if (self->_showWheelchair)
  {
    if ([(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource wheelchairSectionIndex]== section)
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  if ([(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource shouldBypassFirstResponderAction:pathCopy])
  {
    [(CHASActivitySetupMetricsCollectionViewController *)self didTapEditPregnancy];
  }

  else
  {
    v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
    view = [(CHASActivitySetupMetricsCollectionViewController *)self view];
    [view endEditing:1];

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
    navigationController = [(CHASActivitySetupMetricsCollectionViewController *)self navigationController];
    [navigationController setNavigationBarHidden:0 animated:0];
  }

  v4 = [UIBarButtonItem alloc];
  v5 = FIUIBundle();
  v6 = [v5 localizedStringForKey:@"DONE_BUTTON" value:&stru_1008680E8 table:@"Localizable"];
  v13 = [v4 initWithTitle:v6 style:2 target:self action:"_done"];

  navigationItem = [(CHASActivitySetupMetricsCollectionViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v13];

  v8 = [UIBarButtonItem alloc];
  v9 = FIUIBundle();
  v10 = [v9 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_1008680E8 table:@"Localizable"];
  v11 = [v8 initWithTitle:v10 style:0 target:self action:"_cancel"];

  navigationItem2 = [(CHASActivitySetupMetricsCollectionViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v11];

  [(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource startEditing];
}

- (void)_endEditingAndDiscardChanges:(BOOL)changes
{
  changesCopy = changes;
  if (self->_isNavigationBarHidden)
  {
    navigationController = [(CHASActivitySetupMetricsCollectionViewController *)self navigationController];
    [navigationController setNavigationBarHidden:1 animated:0];
  }

  selectedCell = self->_selectedCell;
  self->_selectedCell = 0;

  view = [(CHASActivitySetupMetricsCollectionViewController *)self view];
  [view endEditing:1];

  navigationItem = [(CHASActivitySetupMetricsCollectionViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:0];

  navigationItem2 = [(CHASActivitySetupMetricsCollectionViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:0];

  healthSettingsDataSource = self->_healthSettingsDataSource;

  [(FIUIHealthSettingsDataSource *)healthSettingsDataSource endEditingAndDiscardChanges:changesCopy];
}

- (void)_requestWheelchairDiagnosticsSubmissionIfNecessary
{
  v3 = +[MCProfileConnection sharedConnection];
  isDiagnosticSubmissionAllowed = [v3 isDiagnosticSubmissionAllowed];

  if (isDiagnosticSubmissionAllowed)
  {
    v5 = +[MCProfileConnection sharedConnection];
    hasWheelchairDataSubmissionAllowedBeenSet = [v5 hasWheelchairDataSubmissionAllowedBeenSet];

    if ((hasWheelchairDataSubmissionAllowedBeenSet & 1) == 0)
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [(FIUIHealthSettingsDataSource *)self->_healthSettingsDataSource tableView:view cellForRowAtIndexPath:path];
  textLabel = [v4 textLabel];
  v6 = BPSTextColor();
  [textLabel setTextColor:v6];

  v7 = BPSForegroundColor();
  [v4 setBackgroundColor:v7];

  accessoryView = [v4 accessoryView];
  v9 = BPSAccessoryColor();
  [accessoryView setTintColor:v9];

  v10 = objc_alloc_init(UIView);
  v11 = BPSCellHightlightColor();
  [v10 setBackgroundColor:v11];

  [v4 setSelectedBackgroundView:v10];

  return v4;
}

- (void)wheelchairUseSwitchDidChangeTo:(BOOL)to
{
  if (to)
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