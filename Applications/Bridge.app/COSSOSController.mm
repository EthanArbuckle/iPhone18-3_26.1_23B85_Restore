@interface COSSOSController
- (BOOL)shouldShowBacktrack;
- (BOOL)shouldShowKappa;
- (BOOL)shouldShowMandrake;
- (BOOL)shouldShowSkipper;
- (COSSOSController)init;
- (id)assetNameForSafetyFeatureRow:(int64_t)row;
- (id)backtrackSubtitle;
- (id)detailString;
- (id)emergencySOSSubtitle;
- (id)fallDetectionSubtitle;
- (id)fallDetectionTitle;
- (id)getSafetyFeatureRows;
- (id)imageWithAssetName:(id)name;
- (id)kappaSubtitle;
- (id)linkButtonForAssetName:(id)name;
- (id)mandrakeSubtitle;
- (id)safetyFeaturesFromRows:(id)rows;
- (id)satelliteSubtitle;
- (id)skipperLinkButton;
- (id)subtitleForSafetyFeatureRow:(int64_t)row;
- (id)suggestedButtonTitle;
- (id)tintColorForAssetName:(id)name;
- (id)titleForSafetyFeatureRow:(int64_t)row;
- (id)titleString;
- (void)_fetchNewtonEligibility:(id)eligibility;
- (void)_startLoading;
- (void)_stopLoading;
- (void)didEstablishHold;
- (void)setNewtonSettingBasedOnEligibility;
- (void)suggestedButtonPressed:(id)pressed;
- (void)updateAvailableSafetyFeatures;
- (void)viewDidLoad;
@end

@implementation COSSOSController

- (COSSOSController)init
{
  v8.receiver = self;
  v8.super_class = COSSOSController;
  v2 = [(COSOptinViewController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(COSSOSController *)v2 setStyle:2];
    v3->_newtonEligibility = 2;
    v4 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
    device = v3->_device;
    v3->_device = v4;

    v6 = [(NRDevice *)v3->_device valueForProperty:NRDevicePropertyIsAltAccount];
    v3->_isTinker = [v6 BOOLValue];
  }

  return v3;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = COSSOSController;
  [(COSSOSController *)&v14 viewDidLoad];
  [(COSSOSController *)self setFinishedLoadingNewton:0];
  v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  spinner = self->_spinner;
  self->_spinner = v3;

  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  view = [(COSSOSController *)self view];
  [view addSubview:self->_spinner];

  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  centerXAnchor = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  buttonTray = [(COSSOSController *)self buttonTray];
  centerXAnchor2 = [buttonTray centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v9 setActive:1];

  bottomAnchor = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
  buttonTray2 = [(COSSOSController *)self buttonTray];
  topAnchor = [buttonTray2 topAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:topAnchor];
  [v13 setActive:1];

  [(COSSOSController *)self setNewtonSettingBasedOnEligibility];
}

- (void)_startLoading
{
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  suggestedChoiceButton = [(COSSOSController *)self suggestedChoiceButton];
  [suggestedChoiceButton setEnabled:0];
}

- (void)_stopLoading
{
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  suggestedChoiceButton = [(COSSOSController *)self suggestedChoiceButton];
  [suggestedChoiceButton setEnabled:1];
}

- (id)titleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_SAFETY_TITLE" value:&stru_10026E598 table:@"SOSSettings"];

  return v3;
}

- (id)detailString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_SAFETY_SUBTITLE" value:&stru_10026E598 table:@"SOSSettings"];

  return v3;
}

- (id)suggestedButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_SAFETY_CONTINUE" value:&stru_10026E598 table:@"SOSSettings"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  delegate = [(COSSOSController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (BOOL)shouldShowKappa
{
  isKappaDetectionSupportedOnActiveWatch = [sub_1000124B0() isKappaDetectionSupportedOnActiveWatch];
  if (isKappaDetectionSupportedOnActiveWatch)
  {
    v3 = sub_1000124B0();

    LOBYTE(isKappaDetectionSupportedOnActiveWatch) = [v3 isKappaVisible];
  }

  return isKappaDetectionSupportedOnActiveWatch;
}

- (BOOL)shouldShowMandrake
{
  v2 = sub_1000124B0();

  return [v2 activeDeviceSupportsMandrake];
}

- (BOOL)shouldShowBacktrack
{
  device = self->_device;
  v4 = [[NSUUID alloc] initWithUUIDString:@"4AF61239-2126-4FD6-8E7A-CDA2D7A0BFE9"];
  if ([(NRDevice *)device supportsCapability:v4])
  {
    v5 = ![(COSSOSController *)self isTinker];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldShowSkipper
{
  device = self->_device;
  v3 = [[NSUUID alloc] initWithUUIDString:@"5C0637DC-16EA-495F-8D4A-4539FEFF618C"];
  LOBYTE(device) = [(NRDevice *)device supportsCapability:v3];

  return device;
}

- (void)updateAvailableSafetyFeatures
{
  getSafetyFeatureRows = [(COSSOSController *)self getSafetyFeatureRows];
  [(COSSOSController *)self safetyFeaturesFromRows:?];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v16 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v16)
  {
    v15 = *v18;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v17 + 1) + 8 * i);
        title = [v4 title];
        subtitle = [v4 subtitle];
        assetName = [v4 assetName];
        v8 = [(COSSOSController *)self imageWithAssetName:assetName];
        assetName2 = [v4 assetName];
        v10 = [(COSSOSController *)self tintColorForAssetName:assetName2];
        assetName3 = [v4 assetName];
        v12 = [(COSSOSController *)self linkButtonForAssetName:assetName3];
        [(COSSOSController *)self addBulletedListItemWithTitle:title description:subtitle image:v8 tintColor:v10 linkButton:v12];
      }

      v16 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v16);
  }
}

- (id)skipperLinkButton
{
  v3 = +[UIButtonConfiguration plainButtonConfiguration];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"LEARN_MORE" value:&stru_10026E598 table:@"Localizable-Skipper"];
  [v3 setTitle:v5];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000129CC;
  v9[3] = &unk_100268130;
  v9[4] = self;
  v6 = [UIAction actionWithHandler:v9];
  v7 = [OBBulletedListItemLinkButton buttonWithConfiguration:v3 primaryAction:v6];

  return v7;
}

- (id)tintColorForAssetName:(id)name
{
  nameCopy = name;
  v5 = [(COSSOSController *)self assetNameForSafetyFeatureRow:5];
  v6 = [nameCopy isEqualToString:v5];

  if (v6)
  {
    +[UIColor systemBlackColor];
  }

  else
  {
    +[UIColor systemRedColor];
  }
  v7 = ;

  return v7;
}

- (id)linkButtonForAssetName:(id)name
{
  nameCopy = name;
  v5 = [(COSSOSController *)self assetNameForSafetyFeatureRow:5];
  v6 = [nameCopy isEqualToString:v5];

  if (v6)
  {
    skipperLinkButton = [(COSSOSController *)self skipperLinkButton];
  }

  else
  {
    skipperLinkButton = 0;
  }

  return skipperLinkButton;
}

- (id)imageWithAssetName:(id)name
{
  nameCopy = name;
  v4 = +[NSBundle mainBundle];
  v5 = [UIImage imageNamed:nameCopy inBundle:v4];

  if (!v5)
  {
    v6 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:22.0];
    v7 = [UIImage systemImageNamed:nameCopy withConfiguration:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [UIImage _systemImageNamed:nameCopy withConfiguration:v6];
    }

    v5 = v9;
  }

  return v5;
}

- (id)getSafetyFeatureRows
{
  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObject:&off_1002818B8];
  if ([(COSSOSController *)self shouldShowNewtonForEligibility:[(COSSOSController *)self newtonEligibility]])
  {
    [v3 addObject:&off_1002818D0];
  }

  if ([(COSSOSController *)self shouldShowKappa])
  {
    [v3 addObject:&off_1002818E8];
  }

  if ([(COSSOSController *)self shouldShowMandrake])
  {
    [v3 addObject:&off_100281900];
  }

  if ([(COSSOSController *)self shouldShowBacktrack])
  {
    [v3 addObject:&off_100281918];
  }

  if ([(COSSOSController *)self shouldShowSkipper])
  {
    [v3 addObject:&off_100281930];
  }

  return v3;
}

- (id)safetyFeaturesFromRows:(id)rows
{
  rowsCopy = rows;
  v5 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = rowsCopy;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        integerValue = [*(*(&v17 + 1) + 8 * i) integerValue];
        v11 = [(COSSOSController *)self titleForSafetyFeatureRow:integerValue];
        v12 = [(COSSOSController *)self subtitleForSafetyFeatureRow:integerValue];
        v13 = [(COSSOSController *)self assetNameForSafetyFeatureRow:integerValue];
        v14 = [[COSSOSSafetyFeature alloc] initWithTitle:v11 subtitle:v12 assetName:v13];
        [v5 addObject:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)titleForSafetyFeatureRow:(int64_t)row
{
  if (row > 2)
  {
    switch(row)
    {
      case 3:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"SOS_MANDRAKE_TITLE";
        v7 = @"Localizable-Mandrake";
        break;
      case 4:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"SOS_FOOTPRINT_TITLE";
        v7 = @"Localizable-Footprint";
        break;
      case 5:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"SOS_SATELLITE_TITLE";
        v7 = @"Localizable-Skipper";
        break;
      default:
        goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!row)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"SOS_EMERGENCY_SOS_TITLE";
    v7 = @"SOSSettings";
    goto LABEL_15;
  }

  if (row == 1)
  {
    fallDetectionTitle = [(COSSOSController *)self fallDetectionTitle];
    goto LABEL_16;
  }

  if (row != 2)
  {
    goto LABEL_16;
  }

  if ([sub_1000124B0() isKappaUnmasked])
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"SOS_KAPPA_TITLE";
    v7 = @"Localizable-Kappa";
LABEL_15:
    fallDetectionTitle = [v4 localizedStringForKey:v6 value:&stru_10026E598 table:v7];

    goto LABEL_16;
  }

  fallDetectionTitle = @"Kappa";
LABEL_16:

  return fallDetectionTitle;
}

- (id)subtitleForSafetyFeatureRow:(int64_t)row
{
  if (row > 2)
  {
    switch(row)
    {
      case 3:
        mandrakeSubtitle = [(COSSOSController *)self mandrakeSubtitle];
        break;
      case 4:
        mandrakeSubtitle = [(COSSOSController *)self backtrackSubtitle];
        break;
      case 5:
        mandrakeSubtitle = [(COSSOSController *)self satelliteSubtitle];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (row)
  {
    if (row == 1)
    {
      mandrakeSubtitle = [(COSSOSController *)self fallDetectionSubtitle];
    }

    else
    {
      if (row != 2)
      {
        goto LABEL_15;
      }

      mandrakeSubtitle = [(COSSOSController *)self kappaSubtitle];
    }
  }

  else
  {
    mandrakeSubtitle = [(COSSOSController *)self emergencySOSSubtitle];
  }

  a2 = mandrakeSubtitle;
LABEL_15:

  return a2;
}

- (id)assetNameForSafetyFeatureRow:(int64_t)row
{
  device = self->_device;
  v5 = [[NSUUID alloc] initWithUUIDString:@"622B6312-95FA-4F09-9148-69E286A9C31F"];
  v6 = [(NRDevice *)device supportsCapability:v5];

  v7 = @"SOS";
  if (row <= 2)
  {
    if (row == 1)
    {
      v7 = @"fall_detection";
      goto LABEL_17;
    }

    if (row != 2)
    {
      goto LABEL_17;
    }

    isKappaUnmasked = [sub_1000124B0() isKappaUnmasked];
    v9 = @"CrDetect_Icon_45";
    if (!isKappaUnmasked)
    {
      v9 = @"SOS";
    }

LABEL_15:
    v7 = v9;
    goto LABEL_17;
  }

  switch(row)
  {
    case 3:
      v7 = @"Mandrake_Icon_40";
      break;
    case 4:
      v9 = @"Backtrack_Icon_40";
      if (v6)
      {
        v9 = @"BacktrackWorkout_Icon_40";
      }

      goto LABEL_15;
    case 5:
      v7 = @"satellite_40";
      break;
  }

LABEL_17:

  return v7;
}

- (id)emergencySOSSubtitle
{
  if ([(COSSOSController *)self isTinker])
  {
    setupController = [UIApp setupController];
    tinkerUserName = [setupController tinkerUserName];
    localizedCapitalizedString = [tinkerUserName localizedCapitalizedString];
    v5 = localizedCapitalizedString;
    if (localizedCapitalizedString)
    {
      v6 = localizedCapitalizedString;
    }

    else
    {
      v6 = &stru_10026E598;
    }

    v7 = v6;

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SOS_EMERGENCY_SOS_SUBTITLE_TINKER" value:&stru_10026E598 table:@"SOSSettings"];

    v10 = [NSString stringWithFormat:v9, v7];
  }

  else
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"SOS_EMERGENCY_SOS_SUBTITLE" value:&stru_10026E598 table:@"SOSSettings"];
  }

  return v10;
}

- (id)fallDetectionTitle
{
  if ([(COSSOSController *)self finishedLoadingNewton]&& [(COSSOSController *)self newtonEligibility]== 4)
  {
    v3 = @"SOS_NEWTON_WOMODE_TITLE";
  }

  else
  {
    v3 = @"SOS_NEWTON_TITLE";
  }

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_10026E598 table:@"SOSSettings"];

  return v5;
}

- (id)fallDetectionSubtitle
{
  isTinker = [(COSSOSController *)self isTinker];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isTinker)
  {
    v5 = @"SOS_NEWTON_SUBTITLE_TINKER";
  }

  else
  {
    v5 = @"SOS_NEWTON_SUBTITLE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"SOSSettings"];

  return v6;
}

- (id)kappaSubtitle
{
  isTinker = [(COSSOSController *)self isTinker];
  isKappaUnmasked = [sub_1000124B0() isKappaUnmasked];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = @"SOS_KAPPA_SUBTITLE_TINKER_MASKED";
  if (isKappaUnmasked)
  {
    v6 = @"SOS_KAPPA_SUBTITLE_TINKER";
  }

  v7 = @"SOS_KAPPA_SUBTITLE";
  if (!isKappaUnmasked)
  {
    v7 = @"SOS_KAPPA_SUBTITLE_MASKED";
  }

  if (isTinker)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v4 localizedStringForKey:v8 value:&stru_10026E598 table:@"Localizable-Kappa"];

  return v9;
}

- (id)mandrakeSubtitle
{
  isTinker = [(COSSOSController *)self isTinker];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isTinker)
  {
    v5 = @"SOS_MANDRAKE_SUBTITLE_TINKER";
  }

  else
  {
    v5 = @"SOS_MANDRAKE_SUBTITLE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable-Mandrake"];

  return v6;
}

- (id)backtrackSubtitle
{
  isTinker = [(COSSOSController *)self isTinker];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isTinker)
  {
    v5 = @"SOS_FOOTPRINT_SUBTITLE_TINKER";
  }

  else
  {
    v5 = @"SOS_FOOTPRINT_SUBTITLE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable-Footprint"];

  return v6;
}

- (id)satelliteSubtitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SOS_SATELLITE_SUBTITLE_UNKNOWN" value:&stru_10026E598 table:@"Localizable-Skipper"];

  return v3;
}

- (void)setNewtonSettingBasedOnEligibility
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100013968;
  v10[3] = &unk_100268158;
  v10[4] = self;
  v3 = objc_retainBlock(v10);
  newtonTriggersEmergencySOSNumber = [sub_1000124B0() newtonTriggersEmergencySOSNumber];
  v5 = newtonTriggersEmergencySOSNumber;
  if (newtonTriggersEmergencySOSNumber)
  {
    if ([newtonTriggersEmergencySOSNumber BOOLValue])
    {
      if ([sub_1000124B0() newtonTriggersEmergencySOSWorkouts])
      {
        v6 = 4;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 1;
    }

    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(COSSOSController) newton previously set, using newtonEligibility:%lu", buf, 0xCu);
    }

    (v3[2])(v3, v6);
  }

  else
  {
    [(COSSOSController *)self _startLoading];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100013AB0;
    v8[3] = &unk_1002681A8;
    v8[4] = self;
    v9 = v3;
    [(COSSOSController *)self _fetchNewtonEligibility:v8];
  }
}

- (void)_fetchNewtonEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  if ([(COSSOSController *)self isTinker])
  {
    device = [(COSSOSController *)self device];
    pairingID = [device pairingID];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100013D3C;
    v13[3] = &unk_1002681F8;
    v7 = &v14;
    v14 = eligibilityCopy;
    v8 = eligibilityCopy;
    sub_10002E5B0(pairingID, &_dispatch_main_q, v13);
  }

  else
  {
    v9 = sub_100013E84();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100014028;
    v11[3] = &unk_1002681D0;
    v7 = &v12;
    v12 = eligibilityCopy;
    v10 = eligibilityCopy;
    [v9 newtonEligibilityWithCompletion:v11];
  }
}

- (void)didEstablishHold
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001417C;
  v2[3] = &unk_100268158;
  v2[4] = self;
  [(COSSOSController *)self _fetchNewtonEligibility:v2];
}

@end