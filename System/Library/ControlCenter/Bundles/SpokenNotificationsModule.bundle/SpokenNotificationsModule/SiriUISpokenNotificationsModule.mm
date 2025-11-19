@interface SiriUISpokenNotificationsModule
- (BOOL)_isEligibleForAnnounceNotificationsWithVendorID:(unsigned int)a3 productID:(unsigned int)a4;
- (BOOL)isDeviceInEligibleAnnounceNotificationsConfiguration;
- (SiriUISpokenNotificationsModule)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_createMenuItems;
- (void)_fetchAnnounceSettingsAndRefreshState;
- (void)_muteSpokenMessages;
- (void)_refreshState;
- (void)_refreshStateWithSelected:(BOOL)a3 expanded:(BOOL)a4;
- (void)_turnOffSpokenMessagesForTheDay;
- (void)_turnOnSpokenMessages;
- (void)_updateMenuItems;
- (void)_updateMenuItemsWithDate:(id)a3;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)didTransitionToExpandedContentMode:(BOOL)a3;
- (void)setContentModuleContext:(id)a3;
- (void)viewDidLoad;
@end

@implementation SiriUISpokenNotificationsModule

- (SiriUISpokenNotificationsModule)initWithNibName:(id)a3 bundle:(id)a4
{
  v11.receiver = self;
  v11.super_class = SiriUISpokenNotificationsModule;
  v4 = [(CCUIMenuModuleViewController *)&v11 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(CCUIMenuModuleViewController *)v4 setIndentation:2];
    if ([(CCUIButtonModuleViewController *)v5 isExpanded])
    {
      [(SiriUISpokenNotificationsModule *)v5 _updateMenuItems];
    }

    v6 = dispatch_queue_create("com.apple.siri.SpokenNotificationsModuleQueue", 0);
    spokenNotificationsModuleQueue = v5->_spokenNotificationsModuleQueue;
    v5->_spokenNotificationsModuleQueue = v6;

    v8 = [objc_alloc(MEMORY[0x29EDBFE40]) initWithQueue:v5->_spokenNotificationsModuleQueue];
    settingsGateway = v5->_settingsGateway;
    v5->_settingsGateway = v8;
  }

  return v5;
}

- (void)_updateMenuItems
{
  if (!self->_menuItems)
  {
    [(SiriUISpokenNotificationsModule *)self _createMenuItems];
  }

  objc_initWeak(&location, self);
  v3 = [MEMORY[0x29EDBFAA0] sharedPreferences];
  v4 = MEMORY[0x29EDCA5F8];
  v5 = 3221225472;
  v6 = sub_29C9EE034;
  v7 = &unk_29F33EB58;
  objc_copyWeak(&v8, &location);
  [v3 getSpokenNotificationTemporarilyDisabledEndDateWithCompletion:&v4];

  [(CCUIMenuModuleViewController *)self setMenuItems:self->_menuItems, v4, v5, v6, v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_updateMenuItemsWithDate:(id)a3
{
  v19 = a3;
  [(SiriUISpokenNotificationsModule *)self _createMenuItems];
  if (v19)
  {
    v4 = [MEMORY[0x29EDB8D98] currentCalendar];
    v5 = [MEMORY[0x29EDB8DB0] date];
    v6 = [v4 isDate:v19 inSameDayAsDate:v5];

    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x29EDB9F78]);
      [v7 setDateStyle:0];
      [v7 setTimeStyle:1];
      v8 = [MEMORY[0x29EDB8D98] currentCalendar];
      v9 = [v8 component:32 fromDate:v19];

      if (v9 % 12 == 1)
      {
        v10 = @"SPOKEN_NOTIFICATIONS_MUTED_UNTIL_TIME_SUBTEXT_SINGULAR";
      }

      else
      {
        v10 = @"SPOKEN_NOTIFICATIONS_MUTED_UNTIL_TIME_SUBTEXT_PLURAL";
      }

      v11 = MEMORY[0x29EDBA0F8];
      v12 = MEMORY[0x29EDB9F48];
      v13 = v10;
      v14 = [v12 bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:v13 value:&stru_2A23F1BE8 table:0];

      v16 = [v7 stringFromDate:v19];
      v17 = [v11 stringWithFormat:v15, v16];

      [(CCUIMenuModuleItem *)self->_menuItemMute setSelected:1];
      [(CCUIMenuModuleItem *)self->_menuItemMute setSubtitle:v17];

      goto LABEL_10;
    }

    v18 = 1320;
  }

  else
  {
    v18 = 1304;
  }

  [*(&self->super.super.super.super.super.isa + v18) setSelected:1];
LABEL_10:
  [(CCUIMenuModuleViewController *)self setMenuItems:self->_menuItems];
}

- (void)_createMenuItems
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  menuItems = self->_menuItems;
  self->_menuItems = v3;

  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x29EDC0CE0]);
  v6 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_ON" value:&stru_2A23F1BE8 table:0];
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = sub_29C9EE6DC;
  v27[3] = &unk_29F33EB80;
  objc_copyWeak(&v28, &location);
  v8 = [v5 initWithTitle:v7 identifier:@"SPOKEN_NOTIFICATIONS_ON" handler:v27];
  menuItemOn = self->_menuItemOn;
  self->_menuItemOn = v8;

  v10 = objc_alloc(MEMORY[0x29EDC0CE0]);
  v11 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_MUTE" value:&stru_2A23F1BE8 table:0];
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = sub_29C9EE720;
  v25[3] = &unk_29F33EB80;
  objc_copyWeak(&v26, &location);
  v13 = [v10 initWithTitle:v12 identifier:@"SPOKEN_NOTIFICATIONS_MUTE" handler:v25];
  menuItemMute = self->_menuItemMute;
  self->_menuItemMute = v13;

  v15 = objc_alloc(MEMORY[0x29EDC0CE0]);
  v16 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_OFF" value:&stru_2A23F1BE8 table:0];
  v20 = MEMORY[0x29EDCA5F8];
  v21 = 3221225472;
  v22 = sub_29C9EE764;
  v23 = &unk_29F33EB80;
  objc_copyWeak(&v24, &location);
  v18 = [v15 initWithTitle:v17 identifier:@"SPOKEN_NOTIFICATIONS_OFF" handler:&v20];
  menuItemOffForTheDay = self->_menuItemOffForTheDay;
  self->_menuItemOffForTheDay = v18;

  [(NSMutableArray *)self->_menuItems addObject:self->_menuItemOn, v20, v21, v22, v23];
  [(NSMutableArray *)self->_menuItems addObject:self->_menuItemMute];
  [(NSMutableArray *)self->_menuItems addObject:self->_menuItemOffForTheDay];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)_turnOnSpokenMessages
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDBFA98];
  if (os_log_type_enabled(*MEMORY[0x29EDBFA98], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SiriUISpokenNotificationsModule _turnOnSpokenMessages]";
    _os_log_impl(&dword_29C9ED000, v3, OS_LOG_TYPE_DEFAULT, "%s Turning on Spoken Messages", &v11, 0xCu);
  }

  v4 = [MEMORY[0x29EDBFAA0] sharedPreferences];
  [v4 setSpokenNotificationTemporarilyDisabledUntil:0];

  contentModuleContext = self->_contentModuleContext;
  v6 = MEMORY[0x29EDC0CF0];
  v7 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_ON_STATUS_UPDATE" value:&stru_2A23F1BE8 table:0];
  v9 = [v6 statusUpdateWithMessage:v8 type:0];
  [(CCUIContentModuleContext *)contentModuleContext enqueueStatusUpdate:v9];

  v10 = *MEMORY[0x29EDCA608];
}

- (void)_muteSpokenMessages
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDBFA98];
  if (os_log_type_enabled(*MEMORY[0x29EDBFA98], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[SiriUISpokenNotificationsModule _muteSpokenMessages]";
    _os_log_impl(&dword_29C9ED000, v3, OS_LOG_TYPE_DEFAULT, "%s Muting Spoken Messages for an hour", &v12, 0xCu);
  }

  v4 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:3600.0];
  v5 = [MEMORY[0x29EDBFAA0] sharedPreferences];
  [v5 setSpokenNotificationTemporarilyDisabledUntil:v4];

  contentModuleContext = self->_contentModuleContext;
  v7 = MEMORY[0x29EDC0CF0];
  v8 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_MUTE_STATUS_UPDATE" value:&stru_2A23F1BE8 table:0];
  v10 = [v7 statusUpdateWithMessage:v9 type:0];
  [(CCUIContentModuleContext *)contentModuleContext enqueueStatusUpdate:v10];

  v11 = *MEMORY[0x29EDCA608];
}

- (void)_turnOffSpokenMessagesForTheDay
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDBFA98];
  if (os_log_type_enabled(*MEMORY[0x29EDBFA98], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[SiriUISpokenNotificationsModule _turnOffSpokenMessagesForTheDay]";
    _os_log_impl(&dword_29C9ED000, v3, OS_LOG_TYPE_DEFAULT, "%s Muting SpokenMessages until tomorrow", &v14, 0xCu);
  }

  v4 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:86400.0];
  v5 = [MEMORY[0x29EDB8D98] currentCalendar];
  v6 = [v5 startOfDayForDate:v4];

  v7 = [MEMORY[0x29EDBFAA0] sharedPreferences];
  [v7 setSpokenNotificationTemporarilyDisabledUntil:v6];

  contentModuleContext = self->_contentModuleContext;
  v9 = MEMORY[0x29EDC0CF0];
  v10 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_OFF_STATUS_UPDATE" value:&stru_2A23F1BE8 table:0];
  v12 = [v9 statusUpdateWithMessage:v11 type:0];
  [(CCUIContentModuleContext *)contentModuleContext enqueueStatusUpdate:v12];

  v13 = *MEMORY[0x29EDCA608];
}

- (BOOL)_isEligibleForAnnounceNotificationsWithVendorID:(unsigned int)a3 productID:(unsigned int)a4
{
  if (a3 != 76)
  {
    return 0;
  }

  v4 = (a4 != 8209) & ((a4 - 8194 > 0xE) | (0x3F64u >> (a4 - 2)));
  if (a4 == 8230)
  {
    LOBYTE(v4) = 0;
  }

  return (a4 - 8194 < 0x2E) & (0x207C7BB7FF9BuLL >> (a4 - 2)) & v4;
}

- (BOOL)isDeviceInEligibleAnnounceNotificationsConfiguration
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDBFE18] sharedInstance];
  v4 = [v3 available];

  if (!v4)
  {
    v12 = *MEMORY[0x29EDBFA98];
    if (os_log_type_enabled(*MEMORY[0x29EDBFA98], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[SiriUISpokenNotificationsModule isDeviceInEligibleAnnounceNotificationsConfiguration]";
      _os_log_impl(&dword_29C9ED000, v12, OS_LOG_TYPE_DEFAULT, "%s BT is not available, falling back to assume an eligible device is connected", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [MEMORY[0x29EDBFE18] sharedInstance];
  v6 = [v5 connectedDevices];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (!v7)
  {

    goto LABEL_16;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v17;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v9 |= -[SiriUISpokenNotificationsModule _isEligibleForAnnounceNotificationsWithVendorID:productID:](self, "_isEligibleForAnnounceNotificationsWithVendorID:productID:", [*(*(&v16 + 1) + 8 * i) vendorId], objc_msgSend(*(*(&v16 + 1) + 8 * i), "productId"));
    }

    v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  }

  while (v8);

  if (v9)
  {
LABEL_13:
    if (self->_headphonesAnnounceEnabled)
    {
      goto LABEL_17;
    }
  }

LABEL_16:
  if (!self->_hearingAidsAnnounceEnabled)
  {
    builtInSpeakerAnnounceEnabled = self->_builtInSpeakerAnnounceEnabled;
    goto LABEL_19;
  }

LABEL_17:
  builtInSpeakerAnnounceEnabled = 1;
LABEL_19:
  v14 = *MEMORY[0x29EDCA608];
  return builtInSpeakerAnnounceEnabled;
}

- (void)_refreshState
{
  v3 = [MEMORY[0x29EDBFAA0] sharedPreferences];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C9EEF38;
  v4[3] = &unk_29F33EBD0;
  v4[4] = self;
  [v3 getSpokenNotificationTemporarilyDisabledStatusWithCompletion:v4];
}

- (void)_fetchAnnounceSettingsAndRefreshState
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDBFAA0] sharedPreferences];
  v4 = [v3 announceNotificationsOnHearingAidsSupported];

  v5 = [MEMORY[0x29EDBFAA0] sharedPreferences];
  v6 = [v5 announceNotificationsOnHearingAidsEnabled];

  self->_headphonesAnnounceEnabled = [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalAnnounceHeadphonesSetting]!= 0;
  self->_hearingAidsAnnounceEnabled = v4 & v6;
  v7 = [MEMORY[0x29EDBFAA0] sharedPreferences];
  self->_builtInSpeakerAnnounceEnabled = [v7 announceNotificationsOnBuiltInSpeakerEnabled];

  v8 = *MEMORY[0x29EDBFA98];
  if (os_log_type_enabled(*MEMORY[0x29EDBFA98], OS_LOG_TYPE_DEFAULT))
  {
    headphonesAnnounceEnabled = self->_headphonesAnnounceEnabled;
    builtInSpeakerAnnounceEnabled = self->_builtInSpeakerAnnounceEnabled;
    v12 = 136316162;
    v13 = "[SiriUISpokenNotificationsModule _fetchAnnounceSettingsAndRefreshState]";
    v14 = 1024;
    v15 = headphonesAnnounceEnabled;
    v16 = 1024;
    v17 = v4;
    v18 = 1024;
    v19 = v6 & 1;
    v20 = 1024;
    v21 = builtInSpeakerAnnounceEnabled;
    _os_log_impl(&dword_29C9ED000, v8, OS_LOG_TYPE_DEFAULT, "%s fetched announce settings: headphones:%d, hearing aids supported: %d, hearing aids enabled: %d, builtin speaker: %d", &v12, 0x24u);
  }

  [(SiriUISpokenNotificationsModule *)self _refreshState];
  v11 = *MEMORY[0x29EDCA608];
}

- (void)_refreshStateWithSelected:(BOOL)a3 expanded:(BOOL)a4
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C9EF288;
  v4[3] = &unk_29F33EBF8;
  v5 = a4;
  v4[4] = self;
  v6 = a3;
  [MEMORY[0x29EDC7DA0] performWithoutAnimation:v4];
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SiriUISpokenNotificationsModule *)self isDeviceInEligibleAnnounceNotificationsConfiguration])
  {
    objc_initWeak(&location, self);
    v8 = [MEMORY[0x29EDBFAA0] sharedPreferences];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = sub_29C9EF4B0;
    v14[3] = &unk_29F33EC20;
    objc_copyWeak(&v15, &location);
    [v8 getSpokenNotificationTemporarilyDisabledStatusWithCompletion:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    contentModuleContext = self->_contentModuleContext;
    v10 = MEMORY[0x29EDC0CF0];
    v11 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_REQUIRES_H1_STATUS_UPDATE" value:&stru_2A23F1BE8 table:0];
    v13 = [v10 statusUpdateWithMessage:v12 type:0];
    [(CCUIContentModuleContext *)contentModuleContext enqueueStatusUpdate:v13];
  }
}

- (void)didTransitionToExpandedContentMode:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SiriUISpokenNotificationsModule;
  [(CCUIMenuModuleViewController *)&v5 didTransitionToExpandedContentMode:?];
  if (!a3)
  {
    [(SiriUISpokenNotificationsModule *)self _refreshState];
  }
}

- (void)setContentModuleContext:(id)a3
{
  objc_storeStrong(&self->_contentModuleContext, a3);
  v5 = a3;
  v6.receiver = self;
  v6.super_class = SiriUISpokenNotificationsModule;
  [(CCUIMenuModuleViewController *)&v6 setContentModuleContext:v5];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SiriUISpokenNotificationsModule;
  [(CCUIMenuModuleViewController *)&v8 viewDidLoad];
  v3 = MEMORY[0x29EDC0CA0];
  v4 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v5 = [v3 descriptionForPackageNamed:@"AnnounceNotifications" inBundle:v4];

  [(CCUIMenuModuleViewController *)self setGlyphPackageDescription:v5];
  v6 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_TITLE" value:&stru_2A23F1BE8 table:0];
  [(CCUIMenuModuleViewController *)self setTitle:v7];
}

@end