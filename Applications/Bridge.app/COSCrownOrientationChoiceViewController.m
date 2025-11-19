@interface COSCrownOrientationChoiceViewController
+ (BOOL)controllerNeedsToRun;
+ (void)resumePairingDidFinishIPEWithSavedValue:(id)a3;
+ (void)resumePairingWithSavedValue:(id)a3;
+ (void)sendCrownOnRightChoiceToWatch:(BOOL)a3;
- (COSCrownOrientationChoiceViewController)init;
- (id)detailString;
- (id)sideBySideImageResource:(id)a3;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)choiceView:(id)a3 didSelectChoice:(unint64_t)a4;
- (void)dealloc;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
- (void)selectedCrownOnRight:(BOOL)a3;
- (void)suggestedButtonPressed:(id)a3;
- (void)tappedCrownImage:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v3 = [UIApp setupController];
  v4 = [v3 resumePairingController];
  LOBYTE(a1) = [v4 didRestoreValueForPaneClass:a1];

  return a1 ^ 1;
}

+ (void)resumePairingWithSavedValue:(id)a3
{
  v4 = [a3 BOOLValue];

  [a1 sendCrownOnRightChoiceToWatch:v4];
}

+ (void)resumePairingDidFinishIPEWithSavedValue:(id)a3
{
  v4 = [a3 BOOLValue];

  [a1 sendCrownOnRightChoiceToWatch:v4];
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

  v4 = [(COSCrownOrientationChoiceViewController *)self primarySideBySideImage];
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 activeWatch];

  if (v6)
  {
    v7 = [PBBridgeWatchAttributeController sizeFromDevice:v6];
    if (v7 == 25 || v7 == 19)
    {
      v9 = [(COSCrownOrientationChoiceViewController *)self agaveSideBySideImage];

      v4 = v9;
    }
  }

  v10 = [[UIImageView alloc] initWithImage:v4];
  sideBySideImageView = self->_sideBySideImageView;
  self->_sideBySideImageView = v10;

  v12 = [(UIImageView *)self->_sideBySideImageView layer];
  [v12 setMinificationFilter:kCAFilterTrilinear];

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
  v22 = [(COSCrownOrientationChoiceViewController *)self contentView];
  [v22 addSubview:self->_sideBySideImageView];

  [(UIImageView *)self->_sideBySideImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [(COSCrownOrientationChoiceViewController *)self contentView];
  [v23 addSubview:self->_choiceView];

  [(COSHorizontalCheckmarkChoiceView *)self->_choiceView setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [(UIImageView *)self->_sideBySideImageView centerXAnchor];
  v25 = [(COSCrownOrientationChoiceViewController *)self view];
  v26 = [v25 centerXAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v27 setActive:1];

  v28 = [(UIImageView *)self->_sideBySideImageView topAnchor];
  v29 = [(COSCrownOrientationChoiceViewController *)self contentView];
  v30 = [v29 topAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [v31 setActive:1];

  v32 = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView topAnchor];
  v33 = [(UIImageView *)self->_sideBySideImageView bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView leadingAnchor];
  v36 = [(UIImageView *)self->_sideBySideImageView leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v37 setActive:1];

  v38 = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView trailingAnchor];
  v39 = [(UIImageView *)self->_sideBySideImageView trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  [v40 setActive:1];

  v41 = [(COSHorizontalCheckmarkChoiceView *)self->_choiceView bottomAnchor];
  v42 = [(COSCrownOrientationChoiceViewController *)self contentView];
  v43 = [v42 bottomAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];
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

- (id)sideBySideImageResource:(id)a3
{
  v3 = sub_10002D528(a3);
  v4 = [UIImage imageNamed:v3];

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = COSCrownOrientationChoiceViewController;
  [(COSCrownOrientationChoiceViewController *)&v7 viewWillAppear:a3];
  v4 = [(COSCrownOrientationChoiceViewController *)self choiceView];
  v5 = [v4 selectedChoice] != 0;

  v6 = [(COSCrownOrientationChoiceViewController *)self suggestedChoiceButton];
  [v6 setEnabled:v5];
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

- (void)suggestedButtonPressed:(id)a3
{
  v4 = [(COSCrownOrientationChoiceViewController *)self suggestedChoiceButton];
  [v4 setEnabled:0];

  v5 = +[UIApplication sharedApplication];
  v6 = [v5 activeWatch];

  v7 = [v6 valueForProperty:NRDevicePropertyPairingID];
  v8 = NRDevicePropertyLocalPairingDataStorePath;
  v9 = [v6 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  if (sub_10002D16C())
  {
LABEL_8:
    [COSCrownOrientationChoiceViewController sendCrownOnRightChoiceToWatch:self->_selectedRightCrown];
    goto LABEL_15;
  }

  if (v6 && v7)
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
      sub_1001898E4(v6, v11);
    }

    objc_storeStrong(&self->_observedDevice, v6);
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
      sub_10018985C(v6, v7, v13);
    }
  }

LABEL_15:
  v16 = [(COSCrownOrientationChoiceViewController *)self delegate];
  v17 = [v16 resumePairingController];
  [v17 saveBoolValue:self->_selectedRightCrown forPaneClass:objc_opt_class()];

  if (PBLogPerformanceMetrics())
  {
    v18 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v18 beginMacroActivity:@"COSPostWristChoiceUserWaitPhase" beginTime:CFAbsoluteTimeGetCurrent()];
  }

  v19 = [(COSCrownOrientationChoiceViewController *)self delegate];
  [v19 buddyControllerDone:self];
}

- (void)tappedCrownImage:(id)a3
{
  [a3 locationInView:self->_sideBySideImageView];
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

  v8 = [(COSCrownOrientationChoiceViewController *)self choiceView];
  [v8 setSelectedChoice:v7];
}

- (void)choiceView:(id)a3 didSelectChoice:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v8 = v6;
    v7 = 0;
  }

  else
  {
    if (a4 != 2)
    {
      goto LABEL_6;
    }

    v8 = v6;
    v7 = 1;
  }

  [(COSCrownOrientationChoiceViewController *)self selectedCrownOnRight:v7];
  v6 = v8;
LABEL_6:
}

- (void)selectedCrownOnRight:(BOOL)a3
{
  v3 = a3;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Left";
    if (v3)
    {
      v6 = @"Right";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Selected Crown on %@", &v8, 0xCu);
  }

  self->_selectedRightCrown = v3;
  v7 = [(COSCrownOrientationChoiceViewController *)self suggestedChoiceButton];
  [v7 setEnabled:1];
}

+ (void)sendCrownOnRightChoiceToWatch:(BOOL)a3
{
  v3 = a3;
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Left";
    if (v3)
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
    v6 = +[COSInternalUserStudyDataManager sharedManager];
    [v6 setCrownChoice:v3 ^ 1];
  }

  else
  {
    v7 = +[UIApplication sharedApplication];
    v6 = [v7 activeWatch];

    v8 = [v6 valueForProperty:NRDevicePropertyPairingID];
    v9 = [v6 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v10 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano" pairingID:v8 pairingDataStore:v9];
    [v10 setBool:v3 ^ 1 forKey:@"invertUI"];
    v11 = [v10 synchronize];
    if (v3)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    [PBBridgeCAReporter recordPairingInitiatedDeviceOrientationChoice:v12 pairingSelectionType:1];
    v13 = +[NRPairedDeviceRegistry sharedInstance];
    v14 = [v13 compatibilityState];

    v15 = pbb_setupflow_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "+[COSCrownOrientationChoiceViewController sendCrownOnRightChoiceToWatch:]";
      v21 = 1024;
      LODWORD(v22) = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s NRCompatibilityState is %i", &v19, 0x12u);
    }

    if (v14 >= 3)
    {
      v16 = pbb_setupflow_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "+[COSCrownOrientationChoiceViewController sendCrownOnRightChoiceToWatch:]";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s IPE is complete, sending crown orientation directly to gizmo.", &v19, 0xCu);
      }

      v17 = +[UIApplication sharedApplication];
      v18 = [v17 bridgeController];
      [v18 tellGizmoToSetCrownOrientationRight:v3];
    }
  }
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = NRDevicePropertyLocalPairingDataStorePath;
  v10 = [v7 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  if (v10 && [v8 isEqualToString:v9])
  {
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NRDevice propertyDidChange %@ %@", buf, 0x16u);
    }

    v13 = v9;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [v7 removePropertyObserver:self forPropertyChanges:v12];

    [COSCrownOrientationChoiceViewController sendCrownOnRightChoiceToWatch:self->_selectedRightCrown];
  }
}

@end