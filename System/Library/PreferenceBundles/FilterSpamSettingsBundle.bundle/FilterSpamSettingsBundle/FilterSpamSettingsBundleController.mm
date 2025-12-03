@interface FilterSpamSettingsBundleController
+ (id)localizedStringForKey:(id)key;
- (FilterSpamSettingsBundleController)initWithParentListController:(id)controller;
- (PSListController)parentListController;
- (id)getFilterSpamEnabledForFaceTime:(id)time;
- (id)specifierForFaceTime;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)initSilenceJunkCallingController;
- (void)refreshView;
- (void)setFilterSpamEnabledForFaceTime:(id)time specifier:(id)specifier;
@end

@implementation FilterSpamSettingsBundleController

- (FilterSpamSettingsBundleController)initWithParentListController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = FilterSpamSettingsBundleController;
  v5 = [(FilterSpamSettingsBundleController *)&v14 initWithParentListController:controllerCopy];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"handleSettingDidChangeNotification:" name:@"FilterSpamSettingsChangedNotification" object:0];

    v7 = objc_alloc_init(TUConfigurationProvider);
    configurationProvider = v5->_configurationProvider;
    v5->_configurationProvider = v7;

    [(TUConfigurationProvider *)v5->_configurationProvider setDelegate:v5];
    specifierID = [controllerCopy specifierID];
    if ([specifierID isEqualToString:@"com.apple.preferences.facetime"])
    {

LABEL_5:
      v5->_inFaceTimeSection = 1;
      goto LABEL_9;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_5;
    }

    [(FilterSpamSettingsBundleController *)v5 initSilenceJunkCallingController];
    v11 = PHDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "FILTER SPAM TOGGLE for PHONE: SilenceJunkCallingController initialized successfully", v13, 2u);
    }
  }

LABEL_9:

  return v5;
}

- (void)initSilenceJunkCallingController
{
  v12 = [NSString stringWithFormat:@"com.apple.calls.queue.%@.%p", objc_opt_class(), self];
  v3 = v12;
  uTF8String = [v12 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(uTF8String, v5);
  queue = self->_queue;
  self->_queue = v6;

  v8 = [[CoreTelephonyClient alloc] initWithQueue:self->_queue];
  ctClient = self->_ctClient;
  self->_ctClient = v8;

  [(CoreTelephonyClient *)self->_ctClient setDelegate:self];
  v10 = [[PHSilenceJunkCallingController alloc] initWithCoreTelephonyClient:self->_ctClient queue:self->_queue];
  silenceJunkCallingController = self->_silenceJunkCallingController;
  self->_silenceJunkCallingController = v10;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = +[NSMutableArray array];
  if ([(FilterSpamSettingsBundleController *)self inFaceTimeSection])
  {
    specifierForFaceTime = [(FilterSpamSettingsBundleController *)self specifierForFaceTime];
    if (specifierForFaceTime)
    {
      [v5 addObject:specifierForFaceTime];
      [(FilterSpamSettingsBundleController *)self setActiveSpecifier:specifierCopy];
      v7 = PHDefaultLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v15 = 0;
      v8 = "FILTER SPAM TOGGLE for FT: Adding specifierForFaceTime to page";
      v9 = &v15;
    }

    else
    {
      v7 = PHDefaultLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v14 = 0;
      v8 = "FILTER SPAM TOGGLE for FT: No specifierForFaceTime returned, so we're not displaying anything";
      v9 = &v14;
    }
  }

  else
  {
    specifierForFaceTime = [(PHSilenceJunkCallingController *)self->_silenceJunkCallingController specifiers];
    if (specifierForFaceTime)
    {
      [v5 addObjectsFromArray:specifierForFaceTime];
      v7 = PHDefaultLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v13 = 0;
      v8 = "FILTER SPAM TOGGLE for PHONE: Adding specifiersForPhone to page";
      v9 = &v13;
    }

    else
    {
      v7 = PHDefaultLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v12 = 0;
      v8 = "FILTER SPAM TOGGLE for PHONE: No specifiersForPhone returned, so we're not displaying anything";
      v9 = &v12;
    }
  }

  _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
LABEL_13:

  v10 = [v5 copy];

  return v10;
}

- (id)specifierForFaceTime
{
  v3 = [FilterSpamSettingsBundleController localizedStringForKey:@"FILTER_SPAM_TOGGLE_TITLE_FACETIME"];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setFilterSpamEnabledForFaceTime:specifier:" get:"getFilterSpamEnabledForFaceTime:" detail:0 cell:6 edit:0];
  v5 = [FilterSpamSettingsBundleController localizedStringForKey:@"FILTER_SPAM_EXPLANATION_FACETIME"];
  [v4 setProperty:v5 forKey:PSTableCellSubtitleTextKey];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  if (v4)
  {
    [v4 setIdentifier:@"FILTER_SPAM"];
    v6 = v4;
  }

  return v4;
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  localizationTableName = [self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_42E0 table:localizationTableName];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView
{
  parentListController = [(FilterSpamSettingsBundleController *)self parentListController];
  activeSpecifier = [(FilterSpamSettingsBundleController *)self activeSpecifier];
  [parentListController reloadSpecifier:activeSpecifier];
}

- (void)setFilterSpamEnabledForFaceTime:(id)time specifier:(id)specifier
{
  bOOLValue = [time BOOLValue];
  configurationProvider = [(FilterSpamSettingsBundleController *)self configurationProvider];
  [configurationProvider setSpamFilterEnabledForFaceTime:bOOLValue];
}

- (id)getFilterSpamEnabledForFaceTime:(id)time
{
  configurationProvider = [(FilterSpamSettingsBundleController *)self configurationProvider];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [configurationProvider isSpamFilterEnabledForFaceTime]);

  return v4;
}

@end