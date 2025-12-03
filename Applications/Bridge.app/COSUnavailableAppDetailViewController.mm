@interface COSUnavailableAppDetailViewController
- (id)specifiers;
- (void)removeRow:(id)row;
@end

@implementation COSUnavailableAppDetailViewController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_opt_new();
    [PSSpecifier groupSpecifierWithID:@"UNAVAILABLE_APP"];
    v28 = v27 = v5;
    [v5 addObject:?];
    v6 = [PSSpecifier alloc];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"CLEAR_UNAVAILABLE_APP" value:&stru_10026E598 table:@"Localizable"];
    v9 = [v6 initWithName:v8 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v9 setIdentifier:@"CLEAR_UNAVAILABLE_APP_ID"];
    [v9 setProperty:&__kCFBooleanTrue forKey:@"isDestructive"];
    v10 = [*&self->BPSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"COSUnavailableApplicationInfoID"];
    v11 = [v10 objectForKeyedSubscript:ACXApplicationBundleIdentiferKey];
    v12 = +[COSSettingsListController unavailableWatchKitApps];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    allKeys = [v12 allKeys];
    integerValue = [allKeys countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (integerValue)
    {
      v26 = v10;
      v15 = *v30;
      while (2)
      {
        for (i = 0; i != integerValue; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(allKeys);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          if ([v11 isEqual:v17])
          {
            v18 = [v12 objectForKeyedSubscript:v17];
            v19 = [v18 objectForKeyedSubscript:ACXServerStatusKey];
            integerValue = [v19 integerValue];

            goto LABEL_12;
          }
        }

        integerValue = [allKeys countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (integerValue)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v10 = v26;
    }

    v20 = pbb_bridge_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [NSNumber numberWithInteger:integerValue];
      *buf = 136315650;
      v34 = "[COSUnavailableAppDetailViewController specifiers]";
      v35 = 2112;
      v36 = v11;
      v37 = 2112;
      v38 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s - %@ State: %@", buf, 0x20u);
    }

    v22 = integerValue <= 2 && !self->_disabled;
    v23 = [NSNumber numberWithInt:v22];
    [v9 setProperty:v23 forKey:PSEnabledKey];

    [v9 setButtonAction:"removeRow:"];
    [v27 addObject:v9];
    v24 = *&self->BPSListController_opaque[v3];
    *&self->BPSListController_opaque[v3] = v27;

    v4 = *&self->BPSListController_opaque[v3];
  }

  return v4;
}

- (void)removeRow:(id)row
{
  v4 = [*&self->BPSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"COSUnavailableApplicationInfoID"];
  v5 = [v4 objectForKeyedSubscript:ACXApplicationBundleIdentiferKey];
  v6 = +[ACXDeviceConnection sharedDeviceConnection];
  activeWatch = [UIApp activeWatch];
  self->_disabled = 1;
  [(COSUnavailableAppDetailViewController *)self reloadSpecifiers];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003F7C4;
  v8[3] = &unk_1002690F8;
  v8[4] = self;
  [v6 removeApplication:v5 fromPairedDevice:activeWatch completion:v8];
}

@end