@interface MFNanoAccountsSettingsDataSource
- (BOOL)canMakeChanges:(id)a3;
- (BOOL)isAccountActive:(id)a3;
- (BOOL)isAccountDisabled:(id)a3;
- (BOOL)isAccountRequiringAttention:(id)a3;
- (BOOL)isGmailAccount:(id)a3;
- (BOOL)isiCloudAccount:(id)a3;
- (MFNanoAccountsSettingsDataSource)init;
- (unint64_t)activeAccountCount;
- (unint64_t)numberOfAccountsRequiringAttention;
- (void)_handleAccountAuthenticationFailed:(id)a3;
- (void)_handleWatchAccountStatusChanged;
- (void)dealloc;
- (void)refreshAccounts;
- (void)syncStandaloneAccountIdentity:(id)a3;
@end

@implementation MFNanoAccountsSettingsDataSource

- (MFNanoAccountsSettingsDataSource)init
{
  v9.receiver = self;
  v9.super_class = MFNanoAccountsSettingsDataSource;
  v2 = [(MFNanoAccountsSettingsDataSource *)&v9 init];
  if (v2)
  {
    v3 = [[NSHashTable alloc] initWithOptions:5 capacity:4];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = +[MFNanoBridgeSettingsManager sharedInstance];
    settingsManager = v2->_settingsManager;
    v2->_settingsManager = v5;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_6054, @"MFNanoWatchAccountStatusChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_605C, @"MFNanoWatchAuthenticationFailedDarwinNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"MFNanoWatchAccountStatusChanged", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"MFNanoWatchAuthenticationFailedDarwinNotification", 0);
  v4.receiver = self;
  v4.super_class = MFNanoAccountsSettingsDataSource;
  [(MFNanoAccountsSettingsDataSource *)&v4 dealloc];
}

- (void)refreshAccounts
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "#Nano AccountsSettingsDataSource refreshing accounts", buf, 2u);
  }

  [(MFNanoBridgeSettingsManager *)self->_settingsManager reloadCachedAccounts];
  v15 = [(MFNanoBridgeSettingsManager *)self->_settingsManager activeAccounts];
  v3 = [(MFNanoBridgeSettingsManager *)self->_settingsManager standaloneAccountStateByAccountId];
  v4 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v15;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v17 + 1) + 8 * i) nano_account];
        v10 = [v9 localId];
        v11 = [v3 objectForKeyedSubscript:v10];
        [v9 setStandaloneState:{objc_msgSend(v11, "unsignedIntegerValue")}];

        v12 = MFLogGeneral();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v9 username];
          v14 = [v9 standaloneState];
          *buf = 138412546;
          v22 = v13;
          v23 = 2048;
          v24 = v14;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "#Nano Account %@, State: %lu", buf, 0x16u);
        }

        [v4 addObject:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  [(MFNanoAccountsSettingsDataSource *)self setAccounts:v4];
}

- (void)syncStandaloneAccountIdentity:(id)a3
{
  v4 = a3;
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  v6 = [v5 accountIdentities];

  if (v6)
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = +[NSMutableArray array];
  }

  v8 = v7;
  [v7 addObject:v4];
  [(MFNanoBridgeSettingsManager *)self->_settingsManager setAccountIdentities:v8];
  v9 = MFLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "#Nano Posting Darwin Notification Account Identity Available", v11, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"MFNanoAccountIdentityAvailableDarwinNotification", 0, 0, 1u);
}

- (unint64_t)numberOfAccountsRequiringAttention
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_accounts;
  v4 = 0;
  v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v4 += [(MFNanoAccountsSettingsDataSource *)self isAccountRequiringAttention:*(*(&v9 + 1) + 8 * v7), v9];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v4;
}

- (unint64_t)activeAccountCount
{
  accounts = self->_accounts;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6734;
  v6[3] = &unk_349F8;
  v6[4] = self;
  v3 = [(NSArray *)accounts ef_filter:v6];
  v4 = [v3 count];

  return v4;
}

- (BOOL)isAccountRequiringAttention:(id)a3
{
  v4 = a3;
  if ([(MFNanoAccountsSettingsDataSource *)self isAccountActive:v4]|| [(MFNanoAccountsSettingsDataSource *)self isAccountDisabled:v4])
  {
    v5 = 0;
  }

  else if ([v4 standaloneState])
  {
    v5 = [v4 standaloneState] == &dword_0 + 3;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_handleWatchAccountStatusChanged
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "#Nano Received Darwin Notification Watch Account Status Changed", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_68E8;
  block[3] = &unk_34A20;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_handleAccountAuthenticationFailed:(id)a3
{
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "#Nano Received Darwin Notification Account Authentication Failed. %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6B6C;
  v7[3] = &unk_34A48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (BOOL)isGmailAccount:(id)a3
{
  v3 = [a3 localId];
  v4 = [MailAccount accountWithUniqueId:v3];

  v5 = [v4 statisticsKind];
  v6 = [v5 isEqualToString:MSMailAccountStatisticsKindGmail];

  return v6;
}

- (BOOL)isiCloudAccount:(id)a3
{
  v3 = [a3 localId];
  v4 = [MailAccount accountWithUniqueId:v3];

  v5 = [v4 statisticsKind];
  v6 = [v5 isEqualToString:MSMailAccountStatisticsKindICloud];

  return v6;
}

- (BOOL)isAccountDisabled:(id)a3
{
  v4 = a3;
  if ([(MFNanoAccountsSettingsDataSource *)self isiCloudAccount:v4])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(MFNanoAccountsSettingsDataSource *)self isGmailAccount:v4];
  }

  return v5;
}

- (BOOL)isAccountActive:(id)a3
{
  v4 = a3;
  if ([v4 standaloneState] == &dword_0 + 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(MFNanoAccountsSettingsDataSource *)self isiCloudAccount:v4];
  }

  return v5;
}

- (BOOL)canMakeChanges:(id)a3
{
  v4 = a3;
  v5 = -[MFNanoAccountsSettingsDataSource isGmailAccount:](self, "isGmailAccount:", v4) && [v4 standaloneState] != &dword_0 + 2 && objc_msgSend(v4, "standaloneState") != &dword_0 + 1;

  return v5;
}

@end