@interface MFNanoAccountsSettingsDataSource
- (BOOL)canMakeChanges:(id)changes;
- (BOOL)isAccountActive:(id)active;
- (BOOL)isAccountDisabled:(id)disabled;
- (BOOL)isAccountRequiringAttention:(id)attention;
- (BOOL)isGmailAccount:(id)account;
- (BOOL)isiCloudAccount:(id)account;
- (MFNanoAccountsSettingsDataSource)init;
- (unint64_t)activeAccountCount;
- (unint64_t)numberOfAccountsRequiringAttention;
- (void)_handleAccountAuthenticationFailed:(id)failed;
- (void)_handleWatchAccountStatusChanged;
- (void)dealloc;
- (void)refreshAccounts;
- (void)syncStandaloneAccountIdentity:(id)identity;
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
  activeAccounts = [(MFNanoBridgeSettingsManager *)self->_settingsManager activeAccounts];
  standaloneAccountStateByAccountId = [(MFNanoBridgeSettingsManager *)self->_settingsManager standaloneAccountStateByAccountId];
  v4 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = activeAccounts;
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

        nano_account = [*(*(&v17 + 1) + 8 * i) nano_account];
        localId = [nano_account localId];
        v11 = [standaloneAccountStateByAccountId objectForKeyedSubscript:localId];
        [nano_account setStandaloneState:{objc_msgSend(v11, "unsignedIntegerValue")}];

        v12 = MFLogGeneral();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          username = [nano_account username];
          standaloneState = [nano_account standaloneState];
          *buf = 138412546;
          v22 = username;
          v23 = 2048;
          v24 = standaloneState;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "#Nano Account %@, State: %lu", buf, 0x16u);
        }

        [v4 addObject:nano_account];
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  [(MFNanoAccountsSettingsDataSource *)self setAccounts:v4];
}

- (void)syncStandaloneAccountIdentity:(id)identity
{
  identityCopy = identity;
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  accountIdentities = [v5 accountIdentities];

  if (accountIdentities)
  {
    v7 = [accountIdentities mutableCopy];
  }

  else
  {
    v7 = +[NSMutableArray array];
  }

  v8 = v7;
  [v7 addObject:identityCopy];
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

- (BOOL)isAccountRequiringAttention:(id)attention
{
  attentionCopy = attention;
  if ([(MFNanoAccountsSettingsDataSource *)self isAccountActive:attentionCopy]|| [(MFNanoAccountsSettingsDataSource *)self isAccountDisabled:attentionCopy])
  {
    v5 = 0;
  }

  else if ([attentionCopy standaloneState])
  {
    v5 = [attentionCopy standaloneState] == &dword_0 + 3;
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

- (void)_handleAccountAuthenticationFailed:(id)failed
{
  failedCopy = failed;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = failedCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "#Nano Received Darwin Notification Account Authentication Failed. %@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6B6C;
  v7[3] = &unk_34A48;
  v8 = failedCopy;
  selfCopy = self;
  v6 = failedCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (BOOL)isGmailAccount:(id)account
{
  localId = [account localId];
  v4 = [MailAccount accountWithUniqueId:localId];

  statisticsKind = [v4 statisticsKind];
  v6 = [statisticsKind isEqualToString:MSMailAccountStatisticsKindGmail];

  return v6;
}

- (BOOL)isiCloudAccount:(id)account
{
  localId = [account localId];
  v4 = [MailAccount accountWithUniqueId:localId];

  statisticsKind = [v4 statisticsKind];
  v6 = [statisticsKind isEqualToString:MSMailAccountStatisticsKindICloud];

  return v6;
}

- (BOOL)isAccountDisabled:(id)disabled
{
  disabledCopy = disabled;
  if ([(MFNanoAccountsSettingsDataSource *)self isiCloudAccount:disabledCopy])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(MFNanoAccountsSettingsDataSource *)self isGmailAccount:disabledCopy];
  }

  return v5;
}

- (BOOL)isAccountActive:(id)active
{
  activeCopy = active;
  if ([activeCopy standaloneState] == &dword_0 + 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(MFNanoAccountsSettingsDataSource *)self isiCloudAccount:activeCopy];
  }

  return v5;
}

- (BOOL)canMakeChanges:(id)changes
{
  changesCopy = changes;
  v5 = -[MFNanoAccountsSettingsDataSource isGmailAccount:](self, "isGmailAccount:", changesCopy) && [changesCopy standaloneState] != &dword_0 + 2 && objc_msgSend(changesCopy, "standaloneState") != &dword_0 + 1;

  return v5;
}

@end