@interface COSCrownOrientationChoiceViewController
+ (BOOL)controllerNeedsToRun;
+ (void)resumePairingDidFinishIPEWithSavedValue:(id)value;
+ (void)resumePairingWithSavedValue:(id)value;
+ (void)sendCrownOnRightChoiceToWatch:(BOOL)watch;
- (COSCrownOrientationChoiceViewController)init;
- (id)detailString;
- (id)sideBySideImageResource:(id)resource;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)choiceView:(id)view didSelectChoice:(unint64_t)choice;
- (void)dealloc;
- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value;
- (void)selectedCrownOnRight:(BOOL)right;
- (void)suggestedButtonPressed:(id)pressed;
- (void)tappedCrownImage:(id)image;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSCrownOrientationChoiceViewController

- (COSCrownOrientationChoiceViewController)init
{
  v5.receiver = self;
  v5.super_class = COSCrownOrientationChoiceViewController;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSCrownOrientationChoiceViewController *)v2 setStyle:2];
  }

  return v3;
}

- (void)dealloc
{
  observedDevice = self->_observedDevice;
  v6 = NRDevicePropertyLocalPairingDataStorePath;
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [(NRDevice *)observedDevice removePropertyObserver:self forPropertyChanges:v4];

  v5.receiver = self;
  v5.super_class = COSCrownOrientationChoiceViewController;
  [(COSCrownOrientationChoiceViewController *)&v5 dealloc];
}

+ (BOOL)controllerNeedsToRun
{
  setupController = [UIApp setupController];
  resumePairingController = [setupController resumePairingController];
  LOBYTE(self) = [resumePairingController didRestoreValueForPaneClass:self];

  return self ^ 1;
}

+ (void)resumePairingWithSavedValue:(id)value
{
  bOOLValue = [value BOOLValue];

  [self sendCrownOnRightChoiceToWatch:bOOLValue];
}

+ (void)resumePairingDidFinishIPEWithSavedValue:(id)value
{
  bOOLValue = [value BOOLValue];

  [self sendCrownOnRightChoiceToWatch:bOOLValue];
}

- (void)viewDidLoad
{
  v52.receiver = self;
  v52.super_class = COSCrownOrientationChoiceViewController;
  [(COSCrownOrientationChoiceViewController *)&v52 viewDidLoad];
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%p CrownOrientationChoiceViewController viewDidLoad", buf, 0xCu);
  }

  primarySideBySideImage = [(COSCrownOrientationChoiceViewController *)self primarySideBySideImage];
  v5 = +[UIApplication sharedApplication];
  activeWatch = [v5 activeWatch];

  if (activeWatch)
  {
    v7 = [PBBridgeWatchAttributeController sizeFromDevice:activeWatch];
    if (v7 == 25 || v7 == 19)
    {
      agaveSideBySideImage = [(COSCrownOrientationChoiceViewController *)self agaveSideBySideImage];

      primarySideBySideImage = agaveSideBySideImage;
    }
  }

  v10 = [[UIImageView alloc] initWithImage:primarySideBySideImage];
  sideBySideImageView = self->_sideBySideImageView;
  self->_sideBySideImageView = v10;

  layer = [(UIImageView *)self->_sideBySideImageView layer];
  [layer setMinificationFilter:kCAFilterTrilinear];

  [(UIImageView *)self->_sideBySideImageView setContentMode:1];
  v13 = [COSHorizontalCheckmarkChoiceView alloc];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"CROWN_DOWN" value:&stru_10026E598 table:@"Localizable"];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"CROWN_UP" value:&stru_10026E598 table:@"Localizable"];
  v18 = [(COSHorizontalCheckmarkChoiceView *)v13 initWithLeftTitle:v15 rightTitle:v17];
  choiceView = self->_choiceView;
  self->_choiceView = v18;

  [(COSHorizontalCheckmarkChoiceView *)self->_choiceView setDelegate:self];
  v20 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tappedCrownImage:"];
  watchTapRecognizer = self->_watchTapRecognizer;
  self->_watchTapRecognizer = v20;

  [(UIImageView *)self->_sideBySideImageView addGestureRecognizer:self->_watchTapRecognizer];
  [(UIImageView *)self->_sideBySideImageView setUserInteractionEnabled:1];
  contentView = [(COSCrownOrientationChoiceViewController *)self contentView];
  [contentView addSubview:self->_sideBySideImageView];

  [(UIImageView *)self->_sideBySideImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(COSCrownOrientationChoiceViewController *)self contentView];
  [contentView2 addSubview:self->_choiceView];

  [(COSHorizontalCheckmarkChoiceView *)self->_choiceView setTranslatesAutoresizingMaskIntoConstraints:0];
  centerXAnchor = [(UIImageView *)self->_sideBySideImageView centerXAnchor];
  view = [(COSCrownOrientationChoiceViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v27 setActive:1];

  topAnchor = [(UIImageView *)self->_sideBySideImageView topAnchor];
  contentView3 = [(COSCrownOrientationChoiceViewController *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v31 setActive:1];

  topAnchor3 = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView topAnchor];
  bottomAnchor = [(UIImageView *)self->_sideBySideImageView bottomAnchor];
  v34 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  [v34 setActive:1];

  leadingAnchor = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView leadingAnchor];
  leadingAnchor2 = [(UIImageView *)self->_sideBySideImageView leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v37 setActive:1];

  trailingAnchor = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView trailingAnchor];
  trailingAnchor2 = [(UIImageView *)self->_sideBySideImageView trailingAnchor];
  v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v40 setActive:1];

  bottomAnchor2 = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView bottomAnchor];
  contentView4 = [(COSCrownOrientationChoiceViewController *)self contentView];
  bottomAnchor3 = [contentView4 bottomAnchor];
  v44 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v44 setActive:1];

  v55 = &off_100281CD8;
  v56 = &off_100281F40;
  v45 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  *buf = 0x3FF0000000000000;
  memset(&buf[8], 0, 48);
  v54 = 0;
  BPSScreenValueGetRelevantZoomValue();
  v47 = v46;
  v48 = v46 > 0.0;

  [(COSCrownOrientationChoiceViewController *)self set_shouldInlineButtontray:v48];
  if (v47 <= 0.0)
  {
    v49 = *&CGAffineTransformIdentity.c;
    *&v51.a = *&CGAffineTransformIdentity.a;
    *&v51.c = v49;
    *&v51.tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    CGAffineTransformMakeScale(&v51, 0.75, 0.75);
  }

  v50 = self->_sideBySideImageView;
  *buf = v51;
  [(UIImageView *)v50 setTransform:buf];
}

- (id)sideBySideImageResource:(id)resource
{
  v3 = sub_10002D528(resource);
  v4 = [UIImage imageNamed:v3];

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = COSCrownOrientationChoiceViewController;
  [(COSCrownOrientationChoiceViewController *)&v7 viewWillAppear:appear];
  choiceView = [(COSCrownOrientationChoiceViewController *)self choiceView];
  v5 = [choiceView selectedChoice] != 0;

  suggestedChoiceButton = [(COSCrownOrientationChoiceViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton setEnabled:v5];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CROWN_CHOICE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CROWN_CHOICE_DETAIL" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CONTINUE_BUTTON_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  suggestedChoiceButton = [(COSCrownOrientationChoiceViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton setEnabled:0];

  v5 = +[UIApplication sharedApplication];
  activeWatch = [v5 activeWatch];

  v7 = [activeWatch valueForProperty:NRDevicePropertyPairingID];
  v8 = NRDevicePropertyLocalPairingDataStorePath;
  v9 = [activeWatch valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  if (sub_10002D16C())
  {
LABEL_8:
    [COSCrownOrientationChoiceViewController sendCrownOnRightChoiceToWatch:self->_selectedRightCrown];
    goto LABEL_15;
  }

  if (activeWatch && v7)
  {
    v10 = pbb_setupflow_log();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [NSNumber numberWithBool:self->_selectedRightCrown];
        v20 = 138412290;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fast Path Crown Choice: Left: %@", &v20, 0xCu);
      }

      goto LABEL_8;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001898E4(activeWatch, v11);
    }

    objc_storeStrong(&self->_observedDevice, activeWatch);
    observedDevice = self->_observedDevice;
    v22 = v8;
    v15 = [NSArray arrayWithObjects:&v22 count:1];
    [(NRDevice *)observedDevice addPropertyObserver:self forPropertyChanges:v15];
  }

  else
  {
    v13 = pbb_setupflow_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10018985C(activeWatch, v7, v13);
    }
  }

LABEL_15:
  delegate = [(COSCrownOrientationChoiceViewController *)self delegate];
  resumePairingController = [delegate resumePairingController];
  [resumePairingController saveBoolValue:self->_selectedRightCrown forPaneClass:objc_opt_class()];

  if (PBLogPerformanceMetrics())
  {
    v18 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v18 beginMacroActivity:@"COSPostWristChoiceUserWaitPhase" beginTime:CFAbsoluteTimeGetCurrent()];
  }

  delegate2 = [(COSCrownOrientationChoiceViewController *)self delegate];
  [delegate2 buddyControllerDone:self];
}

- (void)tappedCrownImage:(id)image
{
  [image locationInView:self->_sideBySideImageView];
  v5 = v4;
  [(UIImageView *)self->_sideBySideImageView bounds];
  v6 = CGRectGetWidth(v10) * 0.5;
  if (v5 <= floorf(v6))
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  choiceView = [(COSCrownOrientationChoiceViewController *)self choiceView];
  [choiceView setSelectedChoice:v7];
}

- (void)choiceView:(id)view didSelectChoice:(unint64_t)choice
{
  viewCopy = view;
  if (choice == 1)
  {
    v8 = viewCopy;
    v7 = 0;
  }

  else
  {
    if (choice != 2)
    {
      goto LABEL_6;
    }

    v8 = viewCopy;
    v7 = 1;
  }

  [(COSCrownOrientationChoiceViewController *)self selectedCrownOnRight:v7];
  viewCopy = v8;
LABEL_6:
}

- (void)selectedCrownOnRight:(BOOL)right
{
  rightCopy = right;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Left";
    if (rightCopy)
    {
      v6 = @"Right";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Selected Crown on %@", &v8, 0xCu);
  }

  self->_selectedRightCrown = rightCopy;
  suggestedChoiceButton = [(COSCrownOrientationChoiceViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton setEnabled:1];
}

+ (void)sendCrownOnRightChoiceToWatch:(BOOL)watch
{
  watchCopy = watch;
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Left";
    if (watchCopy)
    {
      v5 = @"Right";
    }

    v19 = 136315394;
    v20 = "+[COSCrownOrientationChoiceViewController sendCrownOnRightChoiceToWatch:]";
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s %@", &v19, 0x16u);
  }

  if (sub_10002D16C())
  {
    activeWatch = +[COSInternalUserStudyDataManager sharedManager];
    [activeWatch setCrownChoice:watchCopy ^ 1];
  }

  else
  {
    v7 = +[UIApplication sharedApplication];
    activeWatch = [v7 activeWatch];

    v8 = [activeWatch valueForProperty:NRDevicePropertyPairingID];
    v9 = [activeWatch valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v10 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano" pairingID:v8 pairingDataStore:v9];
    [v10 setBool:watchCopy ^ 1 forKey:@"invertUI"];
    synchronize = [v10 synchronize];
    if (watchCopy)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    [PBBridgeCAReporter recordPairingInitiatedDeviceOrientationChoice:v12 pairingSelectionType:1];
    v13 = +[NRPairedDeviceRegistry sharedInstance];
    compatibilityState = [v13 compatibilityState];

    v15 = pbb_setupflow_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "+[COSCrownOrientationChoiceViewController sendCrownOnRightChoiceToWatch:]";
      v21 = 1024;
      LODWORD(v22) = compatibilityState;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s NRCompatibilityState is %i", &v19, 0x12u);
    }

    if (compatibilityState >= 3)
    {
      v16 = pbb_setupflow_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "+[COSCrownOrientationChoiceViewController sendCrownOnRightChoiceToWatch:]";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s IPE is complete, sending crown orientation directly to gizmo.", &v19, 0xCu);
      }

      v17 = +[UIApplication sharedApplication];
      bridgeController = [v17 bridgeController];
      [bridgeController tellGizmoToSetCrownOrientationRight:watchCopy];
    }
  }
}

- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value
{
  deviceCopy = device;
  changeCopy = change;
  v9 = NRDevicePropertyLocalPairingDataStorePath;
  v10 = [deviceCopy valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  if (v10 && [changeCopy isEqualToString:v9])
  {
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = deviceCopy;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NRDevice propertyDidChange %@ %@", buf, 0x16u);
    }

    v13 = v9;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [deviceCopy removePropertyObserver:self forPropertyChanges:v12];

    [COSCrownOrientationChoiceViewController sendCrownOnRightChoiceToWatch:self->_selectedRightCrown];
  }
}

@end