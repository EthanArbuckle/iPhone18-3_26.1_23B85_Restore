@interface CARLiveActivitiesSpecifier
- (CARLiveActivitiesSpecifier)initWithPrototype:(id)a3 traitCollection:(id)a4;
- (void)_preferenceValueSet;
- (void)dealloc;
- (void)performAction:(id)a3;
@end

@implementation CARLiveActivitiesSpecifier

- (CARLiveActivitiesSpecifier)initWithPrototype:(id)a3 traitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.live-activities"];
  v9 = sub_10001C80C(@"LIVE_ACTIVITIES");
  v20.receiver = self;
  v20.super_class = CARLiveActivitiesSpecifier;
  v10 = [(CARSettingsSwitchCellSpecifier *)&v20 initWithTitle:v9 image:0 icon:v8];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v10, sub_1000138CC, @"com.apple.CarPlay.internal.refreshLiveActivity", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if (v10)
  {
    objc_initWeak(&location, v10);
    v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 valueBool] ^ 1);
    [(CARSettingsCellSpecifier *)v10 setCellValue:v12];

    [(CARLiveActivitiesSpecifier *)v10 setLiveActivitiesDisabledPref:v6];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000138DC;
    v17 = &unk_1000DAE40;
    objc_copyWeak(&v18, &location);
    [(CARSettingsCellSpecifier *)v10 setActionBlock:&v14];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  [(CARSettingsCellSpecifier *)v10 setAccessibilityIdentifier:@"CPSettingsLiveActivitiesCell", v14, v15, v16, v17];

  return v10;
}

- (void)performAction:(id)a3
{
  if (a3)
  {
    v4 = ([a3 BOOLValue] ^ 1);
  }

  else
  {
    v4 = [(CARPrototypeBoolPref *)self->_liveActivitiesDisabledPref valueBool];
  }

  v5 = [NSNumber numberWithInt:v4 ^ 1];
  [(CARSettingsCellSpecifier *)self setCellValue:v5];

  liveActivitiesDisabledPref = self->_liveActivitiesDisabledPref;

  [(CARPrototypeBoolPref *)liveActivitiesDisabledPref setState:v4];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = CARLiveActivitiesSpecifier;
  [(CARLiveActivitiesSpecifier *)&v4 dealloc];
}

- (void)_preferenceValueSet
{
  v3 = [(CARSettingsCellSpecifier *)self cellValue];
  v4 = [v3 BOOLValue];

  v5 = [(CARPrototypeBoolPref *)self->_liveActivitiesDisabledPref valueBool];
  if (v4 == v5)
  {
    v6 = [NSNumber numberWithBool:v5 ^ 1];
    [(CARSettingsCellSpecifier *)self setCellValue:v6];
  }
}

@end