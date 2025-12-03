@interface CARDashboardSuggestionsSpecifier
- (BOOL)smartWidgetHidden;
- (CARDashboardSuggestionsSpecifier)initWithTraitCollection:(id)collection;
- (void)_performAction:(id)action;
- (void)dealloc;
- (void)setSmartWidgetHidden:(BOOL)hidden;
@end

@implementation CARDashboardSuggestionsSpecifier

- (CARDashboardSuggestionsSpecifier)initWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = sub_10001C80C(@"SUGGESTIONS_TITLE");
  v16.receiver = self;
  v16.super_class = CARDashboardSuggestionsSpecifier;
  v6 = [(CARSettingsSwitchCellSpecifier *)&v16 initWithTitle:v5 image:0 icon:0];

  if (v6)
  {
    objc_initWeak(&location, v6);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10002A9B4;
    v13 = &unk_1000DAE40;
    objc_copyWeak(&v14, &location);
    [(CARSettingsCellSpecifier *)v6 setActionBlock:&v10];
    v7 = [NSNumber numberWithInt:[(CARDashboardSuggestionsSpecifier *)v6 smartWidgetHidden:v10]^ 1];
    [(CARSettingsCellSpecifier *)v6 setCellValue:v7];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_10002AA10, @"CARSmartWidgetHiddenDefaultChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = CARDashboardSuggestionsSpecifier;
  [(CARDashboardSuggestionsSpecifier *)&v4 dealloc];
}

- (void)_performAction:(id)action
{
  if (action)
  {
    bOOLValue = [action BOOLValue];
  }

  else
  {
    bOOLValue = [(CARDashboardSuggestionsSpecifier *)self smartWidgetHidden];
  }

  v5 = bOOLValue;
  [(CARDashboardSuggestionsSpecifier *)self setSmartWidgetHidden:bOOLValue ^ 1];
  v6 = [NSNumber numberWithBool:v5];
  [(CARSettingsCellSpecifier *)self setCellValue:v6];
}

- (BOOL)smartWidgetHidden
{
  CFPreferencesAppSynchronize(@"com.apple.CarPlay");
  v2 = CFPreferencesCopyAppValue(@"CARSmartWidgetHidden", @"com.apple.CarPlayApp");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setSmartWidgetHidden:(BOOL)hidden
{
  CFPreferencesSetAppValue(@"CARSmartWidgetHidden", [NSNumber numberWithBool:hidden], @"com.apple.CarPlayApp");
  CFPreferencesAppSynchronize(@"com.apple.CarPlay");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CARSmartWidgetHiddenDefaultChanged", 0, 0, 1u);
}

@end