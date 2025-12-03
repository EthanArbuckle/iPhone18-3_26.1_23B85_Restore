@interface ComfortSoundsTinnitusControlsDetailViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (ComfortSoundsTinnitusControlsDetailViewController)init;
- (id)localizedFilterMode:(unint64_t)mode;
- (id)localizedFilterModeDescription:(unint64_t)description;
- (id)specIDFilterMode:(unint64_t)mode;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tinnitusBalance:(id)balance;
- (id)tinnitusFiltersEnabled:(id)enabled;
- (void)_registerNotifications;
- (void)_unregisterNotifications;
- (void)balanceSliderDidChangeToValue:(double)value;
- (void)setPlayingSample:(BOOL)sample;
- (void)setTinnitusBalance:(id)balance specifier:(id)specifier;
- (void)setTinnitusFiltersEnabled:(id)enabled specifier:(id)specifier;
- (void)showBalanceConflictAlert:(id)alert comfortSoundsDirection:(id)direction;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)userUpdatedChartValue;
- (void)viewDidLoad;
@end

@implementation ComfortSoundsTinnitusControlsDetailViewController

- (ComfortSoundsTinnitusControlsDetailViewController)init
{
  v11.receiver = self;
  v11.super_class = ComfortSoundsTinnitusControlsDetailViewController;
  v2 = [(ComfortSoundsTinnitusControlsDetailViewController *)&v11 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[HUComfortSoundsSettings sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_E4C8;
    v8[3] = &unk_48918;
    objc_copyWeak(&v9, &location);
    [v3 registerUpdateBlock:v8 forRetrieveSelector:"tinnitusFilterEnabled" withListener:v2];

    v4 = +[HUComfortSoundsSettings sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_E614;
    v6[3] = &unk_48918;
    objc_copyWeak(&v7, &location);
    [v4 registerUpdateBlock:v6 forRetrieveSelector:"tinnitusFilterMode" withListener:v2];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [objc_allocWithZone(NSMutableArray) init];
    v6 = &__AXStringForVariables_ptr;
    v7 = +[PSSpecifier emptyGroupSpecifier];
    v8 = comfortSoundsLocString();
    v9 = PSFooterTextGroupKey;
    [v7 setProperty:v8 forKey:PSFooterTextGroupKey];

    [v5 addObject:v7];
    v10 = comfortSoundsLocString();
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setTinnitusFiltersEnabled:specifier:" get:"tinnitusFiltersEnabled:" detail:0 cell:6 edit:0];

    [v11 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v11 setProperty:@"ComfortSoundsTinnitusFilterTitle" forKey:PSIDKey];
    [v11 setIdentifier:@"CSTinnitusToggleSpecID"];
    [v5 addObject:v11];
    v12 = +[HUComfortSoundsSettings sharedInstance];
    tinnitusFilterEnabled = [v12 tinnitusFilterEnabled];

    if (tinnitusFilterEnabled)
    {
      v41 = v3;
      v14 = comfortSoundsLocString();
      v15 = [PSSpecifier groupSpecifierWithName:v14];

      [v15 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
      v16 = +[HUComfortSoundsSettings sharedInstance];
      v17 = -[ComfortSoundsTinnitusControlsDetailViewController localizedFilterModeDescription:](self, "localizedFilterModeDescription:", [v16 tinnitusFilterMode]);
      [v15 setProperty:v17 forKey:v9];

      [v15 setIdentifier:@"CSTinnitusFilterDescriptionSpecID"];
      v43 = v15;
      [v5 addObject:v15];
      v18 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:3 edit:0];

      v19 = objc_opt_class();
      v42 = PSCellClassKey;
      [v18 setProperty:v19 forKey:?];
      [v18 setIdentifier:@"CSTinnitusFilterChartSpecID"];
      v40 = v18;
      [v5 addObject:v18];
      v20 = 0;
      v21 = PSRadioGroupCheckedSpecifierKey;
      v22 = 1;
      do
      {
        v23 = v22;
        v24 = v6;
        v25 = v6[178];
        v26 = [(ComfortSoundsTinnitusControlsDetailViewController *)self localizedFilterMode:v20];
        v27 = [v25 preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:0 cell:3 edit:0];

        v28 = [NSNumber numberWithUnsignedInteger:v20];
        [v27 setUserInfo:v28];

        v29 = [(ComfortSoundsTinnitusControlsDetailViewController *)self specIDFilterMode:v20];
        [v27 setIdentifier:v29];

        v30 = +[HUComfortSoundsSettings sharedInstance];
        tinnitusFilterMode = [v30 tinnitusFilterMode];

        if (tinnitusFilterMode == v20)
        {
          [v43 setProperty:v27 forKey:v21];
        }

        [v5 addObject:v27];

        v22 = 0;
        v20 = 1;
        v6 = v24;
      }

      while ((v23 & 1) != 0);
      v7 = v43;
      v11 = v40;
      v3 = v41;
    }

    else
    {
      v42 = PSCellClassKey;
    }

    v32 = v6[178];
    v33 = comfortSoundsLocString();
    v34 = paLocString();
    v35 = [v32 groupSpecifierWithName:v34];

    [v5 addObject:v35];
    v36 = [v6[178] preferenceSpecifierNamed:&stru_49868 target:self set:"setTinnitusBalance:specifier:" get:"tinnitusBalance:" detail:0 cell:5 edit:0];

    [v36 setProperty:&__kCFBooleanTrue forKey:PSSliderIsContinuous];
    [v36 setProperty:objc_opt_class() forKey:v42];
    [v36 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v36 setUserInfo:self];
    [v36 setIdentifier:@"CSTinnitusFilterBalanceSpecID"];
    [v5 addObject:v36];
    v37 = [v5 copy];
    v38 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v37;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)_registerNotifications
{
  v3 = +[AXHAServer sharedInstance];
  [v3 startServerWithDelegate:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_willResignActive" name:UIApplicationWillResignActiveNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_didResignKey" name:UIWindowDidResignKeyNotification object:0];
}

- (void)_unregisterNotifications
{
  v3 = +[AXHAServer sharedInstance];
  [v3 setDelegate:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = ComfortSoundsTinnitusControlsDetailViewController;
  pathCopy = path;
  [(ComfortSoundsTinnitusControlsDetailViewController *)&v14 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(ComfortSoundsTinnitusControlsDetailViewController *)self specifierAtIndexPath:pathCopy, v14.receiver, v14.super_class];

  identifier = [v7 identifier];
  if ([identifier isEqual:@"CSTinnitusFilterModeFineSpecID"])
  {

LABEL_4:
    userInfo = [v7 userInfo];
    unsignedIntegerValue = [userInfo unsignedIntegerValue];

    v13 = +[HUComfortSoundsSettings sharedInstance];
    [v13 setTinnitusFilterMode:unsignedIntegerValue];

    goto LABEL_5;
  }

  identifier2 = [v7 identifier];
  v10 = [identifier2 isEqual:@"CSTinnitusFilterModeCoarseSpecID"];

  if (v10)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = ComfortSoundsTinnitusControlsDetailViewController;
  v5 = [(ComfortSoundsTinnitusControlsDetailViewController *)&v7 tableView:view cellForRowAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v5 setDelegate:self];
  }

  return v5;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(ComfortSoundsTinnitusControlsDetailViewController *)self specifierAtIndexPath:pathCopy];
  identifier = [v8 identifier];
  v10 = [identifier isEqual:@"CSTinnitusFilterChartSpecID"];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ComfortSoundsTinnitusControlsDetailViewController;
    v11 = [(ComfortSoundsTinnitusControlsDetailViewController *)&v13 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy];
  }

  return v11;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = ComfortSoundsTinnitusControlsDetailViewController;
  [(ComfortSoundsTinnitusControlsDetailViewController *)&v9 viewDidLoad];
  table = [(ComfortSoundsTinnitusControlsDetailViewController *)self table];
  v4 = objc_opt_class();
  v5 = +[HUIEQChartSettingsCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];

  table2 = [(ComfortSoundsTinnitusControlsDetailViewController *)self table];
  v7 = objc_opt_class();
  v8 = +[HearingSettingsBalanceSliderCell cellReuseIdentifier];
  [table2 registerClass:v7 forCellReuseIdentifier:v8];
}

- (id)localizedFilterMode:(unint64_t)mode
{
  if (mode <= 1)
  {
    self = comfortSoundsLocString();
  }

  return self;
}

- (id)localizedFilterModeDescription:(unint64_t)description
{
  if (description <= 1)
  {
    self = comfortSoundsLocString();
  }

  return self;
}

- (id)specIDFilterMode:(unint64_t)mode
{
  if (mode)
  {
    return @"CSTinnitusFilterModeFineSpecID";
  }

  else
  {
    return @"CSTinnitusFilterModeCoarseSpecID";
  }
}

- (void)setTinnitusFiltersEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[HUComfortSoundsSettings sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setTinnitusFilterEnabled:bOOLValue];
}

- (id)tinnitusFiltersEnabled:(id)enabled
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 tinnitusFilterEnabled]);

  return v4;
}

- (id)tinnitusBalance:(id)balance
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  [v3 tinnitusBalance];
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

- (void)setTinnitusBalance:(id)balance specifier:(id)specifier
{
  balanceCopy = balance;
  v7 = +[HUComfortSoundsSettings sharedInstance];
  [balanceCopy doubleValue];
  v6 = v5;

  [v7 setTinnitusBalance:v6];
}

- (void)userUpdatedChartValue
{
  [(ComfortSoundsTinnitusControlsDetailViewController *)self setPlayingSample:1];
  v2 = +[HUComfortSoundsSettings sharedInstance];
  tinnitusFilterEnabled = [v2 tinnitusFilterEnabled];

  if ((tinnitusFilterEnabled & 1) == 0)
  {
    v4 = +[HUComfortSoundsSettings sharedInstance];
    [v4 setTinnitusFilterEnabled:1];
  }
}

- (void)setPlayingSample:(BOOL)sample
{
  if (self->_playingSample != sample)
  {
    sampleCopy = sample;
    self->_playingSample = sample;
    v5 = +[AXHAServer sharedInstance];
    v6 = v5;
    if (sampleCopy)
    {
      [v5 startComfortSoundsPreview];
    }

    else
    {
      [v5 stopComfortSoundsPreview];
    }
  }
}

- (void)balanceSliderDidChangeToValue:(double)value
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v5 = qword_57478;
  v16 = qword_57478;
  if (!qword_57478)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_F994;
    v12[3] = &unk_48A48;
    v12[4] = &v13;
    sub_F994(v12);
    v5 = v14[3];
  }

  v6 = v5;
  _Block_object_dispose(&v13, 8);
  sharedInstance = [v5 sharedInstance];
  [sharedInstance leftRightBalanceValue];
  v9 = v8;

  if (fabs(v9) >= 0.001 && (value > 0.0 && v9 < 0.0 || value < 0.0 && v9 > 0.0))
  {
    v10 = comfortSoundsLocString();
    v11 = comfortSoundsLocString();
    [(ComfortSoundsTinnitusControlsDetailViewController *)self showBalanceConflictAlert:v10 comfortSoundsDirection:v11];
  }
}

- (void)showBalanceConflictAlert:(id)alert comfortSoundsDirection:(id)direction
{
  directionCopy = direction;
  alertCopy = alert;
  v8 = comfortSoundsLocString();
  v9 = comfortSoundsLocString();
  directionCopy = [NSString stringWithFormat:v9, alertCopy, directionCopy];

  v14 = [UIAlertController alertControllerWithTitle:v8 message:directionCopy preferredStyle:1];

  v11 = comfortSoundsLocString();
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];

  view = [v14 view];
  [view setAccessibilityIdentifier:@"CSBalanceAlert"];

  [v12 setAccessibilityIdentifier:@"CSBalanceAlertOkayButton"];
  [v14 addAction:v12];
  [(ComfortSoundsTinnitusControlsDetailViewController *)self presentViewController:v14 animated:1 completion:0];
}

@end