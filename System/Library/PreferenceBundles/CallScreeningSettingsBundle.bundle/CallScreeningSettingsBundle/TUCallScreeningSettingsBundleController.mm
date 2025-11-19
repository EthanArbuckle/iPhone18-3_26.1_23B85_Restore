@interface TUCallScreeningSettingsBundleController
+ (id)localizedStringForKey:(id)a3;
- (PSListController)parentListController;
- (TUCallScreeningSettingsBundleController)initWithParentListController:(id)a3;
- (id)getCallScreeningEnabled:(id)a3;
- (id)specifiersWithSpecifier:(id)a3;
- (void)refreshView;
- (void)setCallScreeningEnabled:(id)a3 specifier:(id)a4;
@end

@implementation TUCallScreeningSettingsBundleController

- (TUCallScreeningSettingsBundleController)initWithParentListController:(id)a3
{
  v12.receiver = self;
  v12.super_class = TUCallScreeningSettingsBundleController;
  v3 = [(TUCallScreeningSettingsBundleController *)&v12 initWithParentListController:a3];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"handleSettingDidChangeNotification:" name:@"TUCallScreeningSettingsChangedNotification" object:0];

    v5 = objc_alloc_init(_TtC27CallScreeningSettingsBundle32TUCallScreeningAnalyticsReporter);
    analyticsReporter = v3->_analyticsReporter;
    v3->_analyticsReporter = v5;

    v7 = objc_alloc_init(TUFeatureFlags);
    tuFeatureFlags = v3->_tuFeatureFlags;
    v3->_tuFeatureFlags = v7;

    if ([(TUFeatureFlags *)v3->_tuFeatureFlags deviceExpertMigrationEnabled])
    {
      v9 = objc_alloc_init(TUConfigurationProvider);
      configurationProvider = v3->_configurationProvider;
      v3->_configurationProvider = v9;

      [(TUConfigurationProvider *)v3->_configurationProvider setDelegate:v3];
    }
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = +[NSMutableArray array];
  v5 = [(TUCallScreeningSettingsBundleController *)self tuFeatureFlags];
  if ([v5 deviceExpertMigrationEnabled])
  {
    v6 = [(TUCallScreeningSettingsBundleController *)self configurationProvider];
    v7 = [v6 isCallScreeningAvailable];

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = TUCallScreeningActivatable();

    if (!v8)
    {
      goto LABEL_11;
    }
  }

  v9 = [(TUCallScreeningSettingsBundleController *)self activeSpecifier];

  if (!v9)
  {
    v10 = [PSSpecifier groupSpecifierWithID:@"CALL_SCREENING_GROUP" name:&stru_8688];
    v11 = [TUCallScreeningSettingsBundleController localizedStringForKey:@"CALL_SCREENING_EXPLANATION"];
    [v10 setProperty:v11 forKey:PSFooterTextGroupKey];
    if (v10)
    {
      [v4 addObject:v10];
      v12 = [TUCallScreeningSettingsBundleController localizedStringForKey:@"CALL_SCREENING_TOGGLE_TITLE"];
      v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:"setCallScreeningEnabled:specifier:" get:"getCallScreeningEnabled:" detail:0 cell:6 edit:0];
      [v13 setIdentifier:@"CALL_SCREENING_ROW"];
      if (v13)
      {
        [v4 addObject:v13];
        [(TUCallScreeningSettingsBundleController *)self setActiveSpecifier:v13];
      }
    }
  }

LABEL_11:
  v14 = [v4 copy];

  return v14;
}

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_8688 table:v6];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView
{
  v4 = [(TUCallScreeningSettingsBundleController *)self parentListController];
  v3 = [(TUCallScreeningSettingsBundleController *)self activeSpecifier];
  [v4 reloadSpecifier:v3];
}

- (id)getCallScreeningEnabled:(id)a3
{
  v3 = [(TUCallScreeningSettingsBundleController *)self configurationProvider];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isCallScreeningEnabled]);

  return v4;
}

- (void)setCallScreeningEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [v5 BOOLValue];
  v7 = [(TUCallScreeningSettingsBundleController *)self configurationProvider];
  v8 = [v7 getSelectedIntelligentCallScreeningMenuOptionForPhone];

  LOBYTE(v7) = [v5 BOOLValue];
  if ((v7 & 1) != 0 || v8 != &dword_0 + 1)
  {

    [(TUCallScreeningSettingsBundleController *)self setCallScreeningEnabled:v6 logAnalytics:1];
  }

  else
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Attempting to turn off Live Voicemail when Receptionist is on", buf, 2u);
    }

    v10 = [TUCallScreeningSettingsBundleController localizedStringForKey:@"CALL_SCREENING_RECEPTIONIST_WARNING_TITLE"];
    v11 = [TUCallScreeningSettingsBundleController localizedStringForKey:@"CALL_SCREENING_RECEPTIONIST_WARNING_MESSAGE"];
    v12 = [UIAlertController alertControllerWithTitle:v10 message:v11 preferredStyle:1];
    v13 = [TUCallScreeningSettingsBundleController localizedStringForKey:@"CALL_SCREENING_RECEPTIONIST_WARNING_CONTINUE"];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_183C;
    v19[3] = &unk_8370;
    v19[4] = self;
    v20 = v6;
    v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v19];
    [v12 addAction:v14];
    v15 = [TUCallScreeningSettingsBundleController localizedStringForKey:@"CALL_SCREENING_RECEPTIONIST_WARNING_CANCEL"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_18C8;
    v18[3] = &unk_8398;
    v18[4] = self;
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:v18];
    [v12 addAction:v16];
    [v12 setPreferredAction:v14];
    v17 = [(TUCallScreeningSettingsBundleController *)self parentListController];
    [v17 presentViewController:v12 animated:1 completion:0];
  }
}

@end