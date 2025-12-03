@interface FCUISettingsDataSource
+ (void)initialize;
- (FCUISettingsDataSource)init;
- (id)_cloudSyncingEnabled:(id)enabled;
- (id)_focusStatusDetailLabel:(id)label;
- (id)_listController;
- (id)_modeLabel:(id)label;
- (id)placeholderModeForSemanticType:(int64_t)type;
- (unint64_t)_cloudSyncState;
- (void)_modeSetUp:(id)up;
- (void)_setCloudSyncingEnabled:(id)enabled specifier:(id)specifier;
- (void)dealloc;
- (void)didUpdateActiveModesForActivationManager:(id)manager assertion:(id)assertion;
- (void)globalConfigurationService:(id)service didEditCloudSyncPreference:(BOOL)preference;
- (void)loadSpecifiers;
- (void)modeConfigurationService:(id)service didReceiveAvailableModesUpdate:(id)update;
@end

@implementation FCUISettingsDataSource

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    FCUISettingsRegisterLogging();
  }
}

- (FCUISettingsDataSource)init
{
  v16.receiver = self;
  v16.super_class = FCUISettingsDataSource;
  v2 = [(FCUISettingsDataSource *)&v16 init];
  if (v2)
  {
    v3 = [DNDModeConfigurationService serviceForClientIdentifier:@"com.apple.donotdisturb.preferences"];
    modeConfigurationService = v2->_modeConfigurationService;
    v2->_modeConfigurationService = v3;

    [(DNDModeConfigurationService *)v2->_modeConfigurationService addListener:v2 withCompletionHandler:0];
    v5 = +[FSUIFocusActivationManager sharedInstance];
    focusActivationManager = v2->_focusActivationManager;
    v2->_focusActivationManager = v5;

    [(FSUIFocusActivationManager *)v2->_focusActivationManager addListenerForFocusActivationChanges:v2];
    v7 = [DNDGlobalConfigurationService serviceForClientIdentifier:@"com.apple.donotdisturb.preferences"];
    globalConfigurationService = v2->_globalConfigurationService;
    v2->_globalConfigurationService = v7;

    [(DNDGlobalConfigurationService *)v2->_globalConfigurationService addListener:v2 withCompletionHandler:0];
    v9 = [DNDSettingsService serviceForClientIdentifier:@"com.apple.donotdisturb.preferences"];
    settingsService = v2->_settingsService;
    v2->_settingsService = v9;

    v11 = objc_alloc_init(CNContactStore);
    contactStore = v2->_contactStore;
    v2->_contactStore = v11;

    [(CNContactStore *)v2->_contactStore requestAccessForEntityType:0 completionHandler:&stru_20D90];
    [(DNDSettingsService *)v2->_settingsService addSettingsUpdateListener:v2 withCompletionHandler:0];
    availableModes = v2->_availableModes;
    v2->_availableModes = 0;

    allReservedModes = v2->_allReservedModes;
    v2->_allReservedModes = 0;

    v2->_hasIncompatibleMode = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(DNDGlobalConfigurationService *)self->_globalConfigurationService removeListener:self];
  [(FSUIFocusActivationManager *)self->_focusActivationManager removeListenerForFocusActivationChanges:self];
  focusActivationManager = self->_focusActivationManager;
  self->_focusActivationManager = 0;

  v4.receiver = self;
  v4.super_class = FCUISettingsDataSource;
  [(FCUISettingsDataSource *)&v4 dealloc];
}

- (id)placeholderModeForSemanticType:(int64_t)type
{
  allReservedModes = self->_allReservedModes;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_280C;
  v6[3] = &unk_20DF0;
  v6[4] = type;
  v4 = [(NSSet *)allReservedModes bs_firstObjectPassingTest:v6];

  return v4;
}

- (void)loadSpecifiers
{
  v3 = +[NSBundle fcui_focusSettingsLocalizationBundle];
  specifiers = [(FCUISettingsDataSource *)self specifiers];
  modeConfigurationService = self->_modeConfigurationService;
  v72 = 0;
  v5 = [(DNDModeConfigurationService *)modeConfigurationService allModesReturningError:&v72];
  v6 = v72;
  allReservedModes = self->_allReservedModes;
  self->_allReservedModes = v5;

  v8 = [(NSSet *)self->_allReservedModes bs_filter:&stru_20E10];
  availableModes = self->_availableModes;
  self->_availableModes = v8;

  v10 = [(NSSet *)self->_allReservedModes bs_reduce:&off_21BE0 block:&stru_20E50];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  [(FCUISettingsDataSource *)self _listController];
  v12 = &_s15FocusSettingsUI022ActivityDetailViewHostF5ModelC14_titleBarTitle7Combine9PublishedV9PublisherVySS_GvgTj_ptr;
  v57 = v61 = unsignedIntegerValue;
  [v57 setAddButtonHidden:{unsignedIntegerValue >= +[DNDMode maxUIAddableModes](DNDMode, "maxUIAddableModes")}];
  if (v6 && os_log_type_enabled(FCUILogSettings, OS_LOG_TYPE_ERROR))
  {
    sub_13244();
  }

  v58 = v6;
  if ([(NSSet *)self->_availableModes count])
  {
    v13 = +[PSSpecifier emptyGroupSpecifier];
    v56 = v3;
    v14 = [v3 localizedStringForKey:@"FOCUS_MODES_FOOTER_TEXT" value:&stru_21648 table:0];
    [v13 setProperty:v14 forKey:PSFooterTextGroupKey];

    v55 = v13;
    [specifiers addObject:v13];
    allObjects = [(NSSet *)self->_availableModes allObjects];
    v16 = [allObjects sortedArrayUsingComparator:&stru_20E90];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v16;
    v66 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    if (!v66)
    {
      goto LABEL_28;
    }

    v17 = *v69;
    v63 = PSIDKey;
    v59 = PSIconImageKey;
    v60 = *v69;
    while (1)
    {
      for (i = 0; i != v66; i = i + 1)
      {
        if (*v69 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v68 + 1) + 8 * i);
        name = [v19 name];
        v21 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:"_modeLabel:" detail:0 cell:2 edit:0];

        if ([v19 isPlaceholder])
        {
          if (v61 >= [v12[250] maxUIAddableModes])
          {
            goto LABEL_26;
          }

          [v21 setControllerLoadAction:"_modeSetUp:"];
        }

        else
        {
          [v21 setDetailControllerClass:objc_opt_class()];
        }

        modeIdentifier = [v19 modeIdentifier];
        [v21 setProperty:modeIdentifier forKey:v63];

        symbolImageName = [v19 symbolImageName];
        if (symbolImageName)
        {
          v24 = [UIImage _systemImageNamed:symbolImageName];
          if (v24)
          {
            v25 = v24;
            selfCopy = self;
            tintColorName = [v19 tintColorName];
            v28 = tintColorName;
            if (tintColorName)
            {
              defaultTintColorName = tintColorName;
            }

            else
            {
              defaultTintColorName = [v12[250] defaultTintColorName];
            }

            v30 = defaultTintColorName;

            v31 = NSSelectorFromString(v30);
            if (objc_opt_respondsToSelector())
            {
              v32 = [UIColor performSelector:v31];
              if (v32)
              {
                v33 = v32;
                v34 = [v25 imageWithTintColor:v32 renderingMode:1];

                v25 = v34;
              }
            }

            [v21 setProperty:v25 forKey:v59];

            self = selfCopy;
            v12 = &_s15FocusSettingsUI022ActivityDetailViewHostF5ModelC14_titleBarTitle7Combine9PublishedV9PublisherVySS_GvgTj_ptr;
            v17 = v60;
          }
        }

        v35 = +[_TtC13FocusSettings30SettingsActivityViewController dndModeKey];
        [v21 setProperty:v19 forKey:v35];

        v36 = [(FCUISettingsDataSource *)self _modeLabel:v21];
        if (v36)
        {
          [v21 setProperty:v36 forKey:@"FCUIDetailKey"];
        }

        [specifiers addObject:v21];

LABEL_26:
      }

      v66 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (!v66)
      {
LABEL_28:

        v3 = v56;
        break;
      }
    }
  }

  v37 = +[PSSpecifier emptyGroupSpecifier];
  _cloudSyncState = [(FCUISettingsDataSource *)self _cloudSyncState];
  v39 = _cloudSyncState & 0xE;
  if (v39 == 14)
  {
    goto LABEL_37;
  }

  if ((_cloudSyncState & 8) != 0)
  {
    if ((_cloudSyncState & 4) != 0)
    {
      if ((_cloudSyncState & 2) != 0)
      {
LABEL_37:
        v41 = [v3 localizedStringForKey:@"CLOUD_SYNCING_FOOTER_TEXT" value:&stru_21648 table:0];
        goto LABEL_38;
      }

      v40 = @"CLOUD_SYNCING_MISSING_HSA2_TEXT";
    }

    else
    {
      v40 = @"CLOUD_SYNCING_MISSING_ACCOUNT_TEXT";
    }
  }

  else
  {
    v40 = @"CLOUD_SYNCING_UNSUPPORTED_DEVICE_TEXT";
  }

  v41 = [v3 localizedStringForKey:v40 value:&stru_21648 table:0];
  if (!v41)
  {
    goto LABEL_37;
  }

LABEL_38:
  v42 = v39 == 14;
  v65 = PSFooterTextGroupKey;
  [v37 setProperty:v41 forKey:?];
  [specifiers addObject:v37];
  [v3 localizedStringForKey:@"CLOUD_SYNCING" value:&stru_21648 table:0];
  v67 = v37;
  v44 = v43 = v3;
  v45 = [PSSpecifier preferenceSpecifierNamed:v44 target:self set:"_setCloudSyncingEnabled:specifier:" get:"_cloudSyncingEnabled:" detail:0 cell:6 edit:0];
  cloudSyncingSpecifier = self->_cloudSyncingSpecifier;
  self->_cloudSyncingSpecifier = v45;

  v47 = self->_cloudSyncingSpecifier;
  v48 = [NSNumber numberWithBool:v42];
  [(PSSpecifier *)v47 setProperty:v48 forKey:PSEnabledKey];

  v49 = PSAllowMultilineTitleKey;
  [(PSSpecifier *)self->_cloudSyncingSpecifier setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [specifiers addObject:self->_cloudSyncingSpecifier];
  v50 = +[PSSpecifier emptyGroupSpecifier];
  v51 = [v43 localizedStringForKey:@"FOCUS_STATUS" value:&stru_21648 table:0];
  v52 = [PSSpecifier preferenceSpecifierNamed:v51 target:self set:0 get:"_focusStatusDetailLabel:" detail:0 cell:2 edit:0];
  focusStatusSpecifier = self->_focusStatusSpecifier;
  self->_focusStatusSpecifier = v52;

  [(PSSpecifier *)self->_focusStatusSpecifier setProperty:&__kCFBooleanTrue forKey:v49];
  [(PSSpecifier *)self->_focusStatusSpecifier setDetailControllerClass:objc_opt_class()];
  v54 = [v43 localizedStringForKey:@"FOCUS_STATUS_DESCRIPTION" value:&stru_21648 table:0];
  [v50 setProperty:v54 forKey:v65];

  [specifiers addObject:v50];
  [specifiers addObject:self->_focusStatusSpecifier];
}

- (void)modeConfigurationService:(id)service didReceiveAvailableModesUpdate:(id)update
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3428;
  v5[3] = &unk_20EB8;
  v5[4] = self;
  updateCopy = update;
  v4 = updateCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)globalConfigurationService:(id)service didEditCloudSyncPreference:(BOOL)preference
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_34D4;
  v4[3] = &unk_20EE0;
  objc_copyWeak(&v5, &location);
  dispatch_async(&_dispatch_main_q, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)didUpdateActiveModesForActivationManager:(id)manager assertion:(id)assertion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3590;
  block[3] = &unk_20F08;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (unint64_t)_cloudSyncState
{
  globalConfigurationService = self->_globalConfigurationService;
  v6 = 0;
  v3 = [(DNDGlobalConfigurationService *)globalConfigurationService getCloudSyncStateReturningError:&v6];
  v4 = v6;
  if (v4 && os_log_type_enabled(FCUILogSettings, OS_LOG_TYPE_ERROR))
  {
    sub_132AC();
  }

  return v3;
}

- (id)_cloudSyncingEnabled:(id)enabled
{
  isCloudSyncActive = [(DNDGlobalConfigurationService *)self->_globalConfigurationService isCloudSyncActive];

  return [NSNumber numberWithBool:isCloudSyncActive];
}

- (void)_setCloudSyncingEnabled:(id)enabled specifier:(id)specifier
{
  -[FCUISettingsDataSource _setCloudSyncPreferenceEnabled:](self, "_setCloudSyncPreferenceEnabled:", [enabled BOOLValue]);

  [(FCUISettingsDataSource *)self reloadSpecifiers];
}

- (id)_modeLabel:(id)label
{
  labelCopy = label;
  v5 = +[_TtC13FocusSettings30SettingsActivityViewController dndModeKey];
  v6 = [labelCopy propertyForKey:v5];

  if ([v6 isPlaceholder])
  {
    v7 = @"SETUP";
LABEL_5:
    v8 = +[NSBundle fcui_focusSettingsLocalizationBundle];
    v9 = [v8 localizedStringForKey:v7 value:&stru_21648 table:0];

    goto LABEL_7;
  }

  if ([(FSUIFocusActivationManager *)self->_focusActivationManager isActiveMode:v6])
  {
    v7 = @"ON";
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)_focusStatusDetailLabel:(id)label
{
  v4 = +[NSBundle fcui_focusSettingsLocalizationBundle];
  v5 = @"OFF";
  if ([(DNDGlobalConfigurationService *)self->_globalConfigurationService isCloudSyncActive]&& [(DNDGlobalConfigurationService *)self->_globalConfigurationService modesCanImpactAvailability])
  {
    v5 = @"ON";
  }

  v6 = [v4 localizedStringForKey:v5 value:&stru_21648 table:0];

  return v6;
}

- (void)_modeSetUp:(id)up
{
  upCopy = up;
  v5 = +[_TtC13FocusSettings30SettingsActivityViewController dndModeKey];
  v12 = [upCopy propertyForKey:v5];

  if ([(FCUISettingsDataSource *)self _shouldShowWelcomeController])
  {
    _listController = [(FCUISettingsDataSource *)self _listController];
    [_listController presentSetupControllerForPlaceholderMode:v12];
  }

  else
  {
    v7 = [DNDMode alloc];
    name = [v12 name];
    modeIdentifier = [v12 modeIdentifier];
    symbolImageName = [v12 symbolImageName];
    tintColorName = [v12 tintColorName];
    _listController = [v7 initWithName:name modeIdentifier:modeIdentifier symbolImageName:symbolImageName tintColorName:tintColorName semanticType:{objc_msgSend(v12, "semanticType")}];

    [(FCUISettingsDataSource *)self createDefaultModeConfigurationForMode:_listController];
  }
}

- (id)_listController
{
  v2 = [(FCUISettingsDataSource *)self observersOfClass:objc_opt_class()];
  anyObject = [v2 anyObject];

  return anyObject;
}

@end