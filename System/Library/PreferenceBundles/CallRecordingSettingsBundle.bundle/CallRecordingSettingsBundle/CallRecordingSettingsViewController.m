@interface CallRecordingSettingsViewController
+ (id)localizedStringForKey:(id)a3 withArgument:(id)a4;
- (CallRecordingSettingsViewController)init;
- (PSListController)parentListController;
- (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4;
- (id)getCallRecordingEnabled:(id)a3;
- (id)specifiers;
- (void)configurationChanged;
- (void)emitNavigationEvent;
- (void)setCallRecordingEnabled:(id)a3 specifier:(id)a4;
- (void)setValueInUserDefaults:(id)a3 forKey:(id)a4;
@end

@implementation CallRecordingSettingsViewController

- (CallRecordingSettingsViewController)init
{
  v6.receiver = self;
  v6.super_class = CallRecordingSettingsViewController;
  v2 = [(CallRecordingSettingsViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUConfigurationProvider);
    configurationProvider = v2->_configurationProvider;
    v2->_configurationProvider = v3;

    [(TUConfigurationProvider *)v2->_configurationProvider setDelegate:v2];
  }

  return v2;
}

- (void)emitNavigationEvent
{
  v3 = TUBundleIdentifierPhoneApplication;
  v17 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/%@/%@", TUBundleIdentifierPhoneApplication, @"CALL_RECORDING"];
  v4 = [NSURL URLWithString:v17];
  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 bundleURL];
  v9 = [v5 initWithKey:@"Call Recording" table:0 locale:v6 bundleURL:v8];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Apps" table:0 locale:v11 bundleURL:v13];

  v15 = TUResolvedPhoneResource();
  v18[0] = v14;
  v18[1] = v15;
  v16 = [NSArray arrayWithObjects:v18 count:2];
  [(CallRecordingSettingsViewController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v3 title:v9 localizedNavigationComponents:v16 deepLink:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CallRecordingSettingsViewController *)self loadSpecifiersFromPlistName:@"CallRecordingSettings" target:self];
    v6 = [PSSpecifier groupSpecifierWithID:@"CallRecordingSettingsGroup" name:&stru_8588];
    v7 = objc_alloc_init(_TtC27CallRecordingSettingsBundle34GenerativeModelAvailabilityControl);
    if ([(GenerativeModelAvailabilityControl *)v7 getAvailability]|| (TUCallTranscriptionSupported() & 1) == 0)
    {
      if (TUCallTranscriptionSupported())
      {
        v8 = @"CALL_RECORDING_EXPLANATION_WITH_TRANSCRIPTION_%@";
      }

      else
      {
        v8 = @"CALL_RECORDING_EXPLANATION_%@";
      }
    }

    else
    {
      v8 = @"CALL_RECORDING_EXPLANATION_WITH_TRANSCRIPTION_AND_SUMMARIZATION_%@";
    }

    v9 = TUResolvedPhoneString();
    v10 = [CallRecordingSettingsViewController localizedStringForKey:v8 withArgument:v9];
    [v6 setProperty:v10 forKey:PSFooterTextGroupKey];
    if (v6)
    {
      [v5 addObject:v6];
      v11 = [CallRecordingSettingsViewController localizedStringForKey:@"CALL_RECORDING_TOGGLE_TITLE"];
      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setCallRecordingEnabled:specifier:" get:"getCallRecordingEnabled:" detail:0 cell:6 edit:0];
      if (v12)
      {
        [v5 addObject:v12];
      }
    }

    v13 = [v5 copy];
    v14 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v13;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

+ (id)localizedStringForKey:(id)a3 withArgument:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [a1 localizationTableName];
  v10 = [v8 localizedStringForKey:v7 value:&stru_8588 table:v9];

  if (v6)
  {
    v11 = [NSString stringWithFormat:v10, v6];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;

  return v12;
}

- (id)getCallRecordingEnabled:(id)a3
{
  v3 = [(CallRecordingSettingsViewController *)self getBooleanFromUserDefaults:TUCallRecordingDisabledKey default:&off_86E8];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 BOOLValue] ^ 1);

  return v4;
}

- (void)setCallRecordingEnabled:(id)a3 specifier:(id)a4
{
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a3 BOOLValue] ^ 1);
  [(CallRecordingSettingsViewController *)self setValueInUserDefaults:v5 forKey:TUCallRecordingDisabledKey];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"CallRecordingSettingsChangedNotification" object:0];
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

- (void)setValueInUserDefaults:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSUserDefaults alloc];
  v8 = [v7 initWithSuiteName:TUBundleIdentifierTelephonyUtilitiesFramework];
  [v8 setValue:v6 forKey:v5];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"CallRecordingSettingsChangedNotification" object:0];
}

- (void)configurationChanged
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"CallRecordingSettingsChangedNotification" object:0];
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentListController);

  return WeakRetained;
}

@end