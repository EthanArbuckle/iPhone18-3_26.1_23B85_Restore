@interface CalendarSettingsController
- (BOOL)_showSendReceive;
- (id)_calendarCardViewSpecifier;
- (id)_isSharedCalendarUpdateEnabled:(id)enabled;
- (id)_loadCalendarSettingInfoSpecifier;
- (id)_loadSendReceiveSpecifier;
- (id)_loadSharedCalenderUpdateSpecifier;
- (id)getSendReceiveState:(id)state;
- (id)specifiers;
- (void)_calendarSettingRefreshNotification:(id)notification;
- (void)_enableSharedCalendarUpdate:(id)update forSpecifier:(id)specifier;
- (void)_sendReceiveSpecifierWasTapped:(id)tapped;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CalendarSettingsController

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = CalendarSettingsController;
  [(CalendarSettingsController *)&v21 viewDidLoad];
  table = [(CalendarSettingsController *)self table];
  v4 = objc_opt_class();
  v5 = +[_TtC22icloudCalendarSettings19CalendarPlacardCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];

  if ([(CalendarSettingsController *)self _showSendReceive])
  {
    v6 = OBJC_IVAR___PSListController__specifiers;
    v7 = [*&self->ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers] specifierForID:@"Send_AND_RECEIVE_SPECIFIER_ID"];
    v8 = [*&self->ACUIDataclassConfigurationViewController_opaque[v6] specifierForID:@"SHARED_CALENDAR_SPECIFIER_ID"];
    v9 = [CalendarReadSettingsRequest alloc];
    appleAccount = self->_appleAccount;
    accountStore = [(ACAccount *)appleAccount accountStore];
    v12 = [(CalendarReadSettingsRequest *)v9 initWithAccount:appleAccount accountStore:accountStore];

    objc_initWeak(&location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1E74;
    v15[3] = &unk_146C8;
    objc_copyWeak(&v19, &location);
    v13 = v7;
    v16 = v13;
    v14 = v8;
    v17 = v14;
    selfCopy = self;
    [(CalendarReadSettingsRequest *)v12 performRequestWithCallback:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    userInfo = [*&self->ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    userInfoDictionary = self->_userInfoDictionary;
    self->_userInfoDictionary = userInfo;

    v8 = [(NSMutableDictionary *)self->_userInfoDictionary objectForKey:ACUIAccountKey];
    appleAccount = self->_appleAccount;
    self->_appleAccount = v8;

    if (self->_appleAccount)
    {
      _calendarCardViewSpecifier = [(CalendarSettingsController *)self _calendarCardViewSpecifier];
      [v5 addObjectsFromArray:_calendarCardViewSpecifier];

      if ([(CalendarSettingsController *)self _showSendReceive])
      {
        _loadSendReceiveSpecifier = [(CalendarSettingsController *)self _loadSendReceiveSpecifier];
        [v5 addObjectsFromArray:_loadSendReceiveSpecifier];

        _loadSharedCalenderUpdateSpecifier = [(CalendarSettingsController *)self _loadSharedCalenderUpdateSpecifier];
        [v5 addObjectsFromArray:_loadSharedCalenderUpdateSpecifier];

        _loadCalendarSettingInfoSpecifier = [(CalendarSettingsController *)self _loadCalendarSettingInfoSpecifier];
        [v5 addObjectsFromArray:_loadCalendarSettingInfoSpecifier];
      }

      v14 = _CalLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "calendar settings card view loaded", v20, 2u);
      }
    }

    else
    {
      v14 = _CalLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_AFC8(&self->_userInfoDictionary);
      }
    }

    v15 = *&self->ACUIDataclassConfigurationViewController_opaque[v3];
    *&self->ACUIDataclassConfigurationViewController_opaque[v3] = v5;
    v16 = v5;

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 removeObserver:self name:@"CALENDAR_SETTING_REFRESH_NOTIFICATION" object:0];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:self selector:"_calendarSettingRefreshNotification:" name:@"CALENDAR_SETTING_REFRESH_NOTIFICATION" object:0];

    v4 = *&self->ACUIDataclassConfigurationViewController_opaque[v3];
  }

  return v4;
}

- (id)_calendarCardViewSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:v4];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CALENDAR_LABEL" value:&stru_14AB8 table:@"calendarSettings"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  traitCollection = [(CalendarSettingsController *)self traitCollection];
  LODWORD(v6) = [traitCollection pe_isSettingsFeatureDescriptionCellSupported];

  [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];
  if (v6)
  {
    [v7 setProperty:@"com.apple.mobilecal" forKey:PSLazyIconAppID];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v24 = v4;
    v10 = [v9 localizedStringForKey:@"CALENDAR_CARD_SUBTEXT" value:&stru_14AB8 table:@"calendarSettings"];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CALENDAR_LEARN_MORE_PERIOD" value:&stru_14AB8 table:@"calendarSettings"];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CALENDAR_CARD_VIEW_KB_LINK" value:&stru_14AB8 table:@"calendarSettings"];
    v15 = [NSString stringWithFormat:@"%@ [%@](%@)", v10, v12, v14];

    [v7 setProperty:v15 forKey:PSTableCellSubtitleTextKey];
    v4 = v24;
  }

  [v3 addObject:v7];
  v16 = objc_alloc_init(AADeviceInfo);
  deviceClass = [v16 deviceClass];
  uppercaseString = [deviceClass uppercaseString];

  if ([uppercaseString isEqualToString:@"IPHONE"])
  {
    v19 = @"CALENDAR_DATACLASS_SWITCH_TEXT_IPHONE";
  }

  else if ([uppercaseString isEqualToString:@"IPAD"])
  {
    v19 = @"CALENDAR_DATACLASS_SWITCH_TEXT_IPAD";
  }

  else if ([uppercaseString isEqualToString:@"IPOD"])
  {
    v19 = @"CALENDAR_DATACLASS_SWITCH_TEXT_IPOD";
  }

  else if ([uppercaseString isEqualToString:@"IPHONE SIMULATOR"])
  {
    v19 = @"CALENDAR_DATACLASS_SWITCH_TEXT_IPHONE SIMULATOR";
  }

  else
  {
    v19 = @"CALENDAR_DATACLASS_SWITCH_TEXT_OTHER";
  }

  v20 = [(CalendarSettingsController *)self specifierForDataclass:ACAccountDataclassCalendars];
  [v20 removePropertyForKey:PSIconImageKey];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:v19 value:&stru_14AB8 table:@"calendarSettings"];

  [v20 setName:v22];
  [v20 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
  [v3 addObject:v20];

  return v3;
}

- (id)_loadSendReceiveSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CALENDAR_SEND_RECEIVE_INVITATIONS" value:&stru_14AB8 table:@"calendarSettings"];
  v6 = [PSSpecifier groupSpecifierWithName:v5];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CALENDAR_SEND_RECEIVE_FOOTER" value:&stru_14AB8 table:@"calendarSettings"];
  [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

  [v3 addObject:v6];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CALENDAR_SEND_RECEIVE_LABEL" value:&stru_14AB8 table:@"calendarSettings"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"getSendReceiveState:" detail:0 cell:2 edit:0];

  [v11 setIdentifier:@"Send_AND_RECEIVE_SPECIFIER_ID"];
  [v11 setControllerLoadAction:"_sendReceiveSpecifierWasTapped:"];
  if (!self->_getSettingsResponse)
  {
    [v11 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  [v3 addObject:v11];

  return v3;
}

- (id)_loadCalendarSettingInfoSpecifier
{
  v16 = objc_alloc_init(NSMutableArray);
  v2 = +[PSSpecifier emptyGroupSpecifier];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CALENDAR_SETTING_INFO_FOOTER" value:&stru_14AB8 table:@"calendarSettings"];
  [v2 setProperty:v4 forKey:PSFooterTextGroupKey];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CALENDAR_LEARN_MORE_PERIOD" value:&stru_14AB8 table:@"calendarSettings"];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CALENDAR_SETTING_INFO_FOOTER" value:&stru_14AB8 table:@"calendarSettings"];
  v9 = [NSString stringWithFormat:@"%@ %@", v8, v6];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v2 setProperty:v11 forKey:PSFooterCellClassGroupKey];

  [v2 setProperty:v9 forKey:PSFooterHyperlinkViewTitleKey];
  v18.location = [v9 rangeOfString:v6];
  v12 = NSStringFromRange(v18);
  [v2 setProperty:v12 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CALENDAR_SETTING_INFO_KB_LINK" value:&stru_14AB8 table:@"calendarSettings"];
  [v2 setProperty:v14 forKey:PSFooterHyperlinkViewURLKey];

  [v16 addObject:v2];

  return v16;
}

- (id)getSendReceiveState:(id)state
{
  stateCopy = state;
  getSettingsResponse = self->_getSettingsResponse;
  if (getSettingsResponse)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    emails = [(CalGetSettingsResponse *)getSettingsResponse emails];
    address = [emails countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (address)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != address; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(emails);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 send])
          {
            address = [v10 address];
            goto LABEL_12;
          }
        }

        address = [emails countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (address)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    address = 0;
  }

  return address;
}

- (void)_sendReceiveSpecifierWasTapped:(id)tapped
{
  if (self->_getSettingsResponse)
  {
    v4 = [CalendarSendReceiveController alloc];
    emails = [(CalGetSettingsResponse *)self->_getSettingsResponse emails];
    v7 = [(CalendarSendReceiveController *)v4 initWithEmailData:emails userAccount:self->_appleAccount];

    [(CalendarSettingsController *)self showController:v7];
  }

  else
  {
    v6 = _CalLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_B040();
    }
  }
}

- (id)_loadSharedCalenderUpdateSpecifier
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CALENDAR_SHARED_UPDATE_HEADER" value:&stru_14AB8 table:@"calendarSettings"];
  v6 = [PSSpecifier groupSpecifierWithName:v5];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CALENDAR_SHARED_CALENDAR_UPDATE_FOOTER" value:&stru_14AB8 table:@"calendarSettings"];
  [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

  [v3 addObject:v6];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CALENDAR_SHARED_CALENDAR_UPDATE_SPECIFIER_TEXT" value:&stru_14AB8 table:@"calendarSettings"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"_enableSharedCalendarUpdate:forSpecifier:" get:"_isSharedCalendarUpdateEnabled:" detail:0 cell:6 edit:0];

  [v11 setIdentifier:@"SHARED_CALENDAR_SPECIFIER_ID"];
  v12 = PSControlIsLoadingKey;
  if (!self->_getSettingsResponse)
  {
    [v11 setProperty:&__kCFBooleanTrue forKey:PSControlIsLoadingKey];
    v12 = PSEnabledKey;
  }

  [v11 setProperty:&__kCFBooleanFalse forKey:v12];
  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
  [v11 setControllerLoadAction:"_sendReceiveSpecifierWasTapped:"];
  [v3 addObject:v11];

  return v3;
}

- (void)_enableSharedCalendarUpdate:(id)update forSpecifier:(id)specifier
{
  updateCopy = update;
  specifierCopy = specifier;
  v8 = _CalLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = updateCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "setting %@ for shared calendar update", buf, 0xCu);
  }

  if (self->_getSettingsResponse)
  {
    v9 = [SharedCalendarEmailUpdateRequest alloc];
    appleAccount = self->_appleAccount;
    accountStore = [(ACAccount *)appleAccount accountStore];
    v12 = -[SharedCalendarEmailUpdateRequest initWithAccount:accountStore:sharedCalendarEmail:](v9, "initWithAccount:accountStore:sharedCalendarEmail:", appleAccount, accountStore, [updateCopy BOOLValue]);

    [specifierCopy setProperty:&__kCFBooleanTrue forKey:PSControlIsLoadingKey];
    objc_initWeak(buf, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_342C;
    v13[3] = &unk_146C8;
    objc_copyWeak(&v17, buf);
    v14 = specifierCopy;
    selfCopy = self;
    v16 = updateCopy;
    [v12 performRequestWithCallback:v13];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = _CalLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_B080();
    }
  }
}

- (id)_isSharedCalendarUpdateEnabled:(id)enabled
{
  getSettingsResponse = [(CalendarSettingsController *)self getSettingsResponse];

  if (getSettingsResponse)
  {
    getSettingsResponse2 = [(CalendarSettingsController *)self getSettingsResponse];
    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [getSettingsResponse2 sharedCalendarEmail]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_showSendReceive
{
  if (_os_feature_enabled_impl() && ([(ACAccount *)self->_appleAccount aa_isManagedAppleID]& 1) == 0)
  {
    v4 = [(ACAccount *)self->_appleAccount propertiesForDataclass:@"com.apple.Dataclass.Calendars"];
    v5 = [v4 objectForKeyedSubscript:@"isMakoAccount"];
    v3 = [v5 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = [lCopy objectForKey:@"path"];
  v9 = _CalLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_B0C0();
  }

  if ([v8 isEqualToString:@"CALENDAR_SEND_RECEIVE"])
  {
    v10 = _CalLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_B128();
    }

    if (self->_getSettingsResponse)
    {
      v11 = [CalendarSendReceiveController alloc];
      emails = [(CalGetSettingsResponse *)self->_getSettingsResponse emails];
      v13 = [(CalendarSendReceiveController *)v11 initWithEmailData:emails userAccount:self->_appleAccount];

      [(CalendarSettingsController *)self showController:v13];
    }

    else
    {
      self->needsToNavigateToSendAndReceive = 1;
      v13 = _CalLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_B040();
      }
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_calendarSettingRefreshNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [CalendarReadSettingsRequest alloc];
  appleAccount = self->_appleAccount;
  accountStore = [(ACAccount *)appleAccount accountStore];
  v8 = [(CalendarReadSettingsRequest *)v5 initWithAccount:appleAccount accountStore:accountStore];

  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3B0C;
  v9[3] = &unk_14718;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [(CalendarReadSettingsRequest *)v8 performRequestWithCallback:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v9 = [(CalendarSettingsController *)self specifierAtIndexPath:pathCopy];
  v10 = v9;
  if (v9)
  {
    identifier = [v9 identifier];
    if ([identifier isEqualToString:@"Send_AND_RECEIVE_SPECIFIER_ID"])
    {
      getSettingsResponse = self->_getSettingsResponse;

      if (getSettingsResponse)
      {
LABEL_11:
        [cellCopy reloadWithSpecifier:v10 animated:1];
        goto LABEL_12;
      }

      identifier = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [identifier startAnimating];
      if ([cellCopy isEditing])
      {
        [cellCopy setEditingAccessoryView:identifier];
      }

      else
      {
        [cellCopy setAccessoryView:identifier];
      }
    }

    goto LABEL_11;
  }

  v13 = _CalLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_B268(pathCopy);
  }

LABEL_12:
}

@end