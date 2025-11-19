@interface CallRecordingSettingsBundleController
+ (id)localizedStringForKey:(id)a3;
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3;
- (CallRecordingSettingsBundleController)initWithParentListController:(id)a3;
- (PSListController)parentListController;
- (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4;
- (id)getCallRecordingLabel:(id)a3;
- (id)specifiersWithSpecifier:(id)a3;
- (void)handleSettingDidChangeNotification:(id)a3;
- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4;
- (void)performButtonActionForSpecifier:(id)a3;
@end

@implementation CallRecordingSettingsBundleController

- (CallRecordingSettingsBundleController)initWithParentListController:(id)a3
{
  v8.receiver = self;
  v8.super_class = CallRecordingSettingsBundleController;
  v3 = [(CallRecordingSettingsBundleController *)&v8 initWithParentListController:a3];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"handleSettingDidChangeNotification:" name:@"CallRecordingSettingsChangedNotification" object:0];

    v5 = objc_alloc_init(TUConfigurationProvider);
    configurationProvider = v3->_configurationProvider;
    v3->_configurationProvider = v5;
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = +[NSMutableArray array];
  v5 = [(CallRecordingSettingsBundleController *)self configurationProvider];
  v6 = [v5 isCallRecordingAvailable];

  if (v6)
  {
    v7 = [(CallRecordingSettingsBundleController *)self activeSpecifier];

    if (!v7)
    {
      v8 = [CallRecordingSettingsBundleController localizedStringForKey:@"CALL_RECORDING_TOGGLE_TITLE"];
      v9 = [(CallRecordingSettingsBundleController *)self parentListController];
      v10 = [(CallRecordingSettingsBundleController *)self isStateDrivenNavigationPossibleWithParentController:v9];

      if (v10)
      {
        v11 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"getCallRecordingLabel:" detail:0 cell:2 edit:0];
        [v11 setButtonAction:"performButtonActionForSpecifier:"];
        if (!v11)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v11 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"getCallRecordingLabel:" detail:objc_opt_class() cell:2 edit:0];
        if (!v11)
        {
LABEL_8:
          [(CallRecordingSettingsBundleController *)self setActiveSpecifier:v11];

          goto LABEL_9;
        }
      }

      [v11 setIdentifier:@"CALL_RECORDING"];
      [v4 addObject:v11];
      goto LABEL_8;
    }
  }

LABEL_9:
  v12 = [v4 copy];

  return v12;
}

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_8588 table:v6];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)handleSettingDidChangeNotification:(id)a3
{
  v5 = [(CallRecordingSettingsBundleController *)self parentListController];
  v4 = [(CallRecordingSettingsBundleController *)self activeSpecifier];
  [v5 reloadSpecifier:v4];
}

- (id)getCallRecordingLabel:(id)a3
{
  v3 = [(CallRecordingSettingsBundleController *)self getBooleanFromUserDefaults:TUCallRecordingDisabledKey default:&off_86D0];
  if ([v3 BOOLValue])
  {
    v4 = @"CALL_RECORDING_OFF";
  }

  else
  {
    v4 = @"CALL_RECORDING_ON";
  }

  v5 = [CallRecordingSettingsBundleController localizedStringForKey:v4];

  return v5;
}

- (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSUserDefaults alloc];
  v8 = [v7 initWithSuiteName:TUBundleIdentifierTelephonyUtilitiesFramework];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v10;
}

- (void)performButtonActionForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(CallRecordingSettingsBundleController *)self parentListController];
  [(CallRecordingSettingsBundleController *)self handleUserDidTapOnMainSpecifier:v4 parentController:v5];
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)a3
{
  v4 = sub_3AE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = [v9 traitCollection];
  sub_3B04();

  LOBYTE(v10) = sub_3AC4();
  (*(v5 + 8))(v8, v4);
  return v10 & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)a3 parentController:(id)a4
{
  v5 = sub_3AE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_3B24() - 8) + 64);
  __chkstk_darwin();
  v11 = sub_3AB4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a4;
  sub_3B14();
  sub_3AA4();
  v17 = [v16 traitCollection];
  sub_3B04();

  sub_3498();
  sub_3AD4();

  (*(v6 + 8))(v9, v5);
  (*(v12 + 8))(v15, v11);
}

@end