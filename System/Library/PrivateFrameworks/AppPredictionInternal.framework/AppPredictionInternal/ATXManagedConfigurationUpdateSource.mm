@interface ATXManagedConfigurationUpdateSource
- (ATXManagedConfigurationUpdateSource)init;
- (ATXManagedConfigurationUpdateSource)initWithProfileConnection:(id)connection;
- (ATXUpdatePredictionsDelegate)delegate;
- (void)_registerForRestrictionChangedNotifications;
- (void)handleProfileChangedNotification;
@end

@implementation ATXManagedConfigurationUpdateSource

- (ATXManagedConfigurationUpdateSource)init
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [(ATXManagedConfigurationUpdateSource *)self initWithProfileConnection:mEMORY[0x277D262A0]];

  return v4;
}

- (ATXManagedConfigurationUpdateSource)initWithProfileConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = ATXManagedConfigurationUpdateSource;
  v6 = [(ATXManagedConfigurationUpdateSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profileConnection, connection);
    [(ATXManagedConfigurationUpdateSource *)v7 _registerForRestrictionChangedNotifications];
  }

  return v7;
}

- (void)_registerForRestrictionChangedNotifications
{
  if (!self->_restrictionChangedNotificationToken)
  {
    v9[7] = v2;
    v9[8] = v3;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277D26178];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__ATXManagedConfigurationUpdateSource__registerForRestrictionChangedNotifications__block_invoke;
    v9[3] = &unk_278599D40;
    v9[4] = self;
    v7 = [defaultCenter addObserverForName:v6 object:0 queue:0 usingBlock:v9];
    restrictionChangedNotificationToken = self->_restrictionChangedNotificationToken;
    self->_restrictionChangedNotificationToken = v7;
  }
}

- (void)handleProfileChangedNotification
{
  v17 = *MEMORY[0x277D85DE8];
  isAppClipsAllowed = [(MCProfileConnection *)self->_profileConnection isAppClipsAllowed];
  [(MCProfileConnection *)self->_profileConnection invalidateRestrictionCache];
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    v8 = @"NO";
    if (isAppClipsAllowed)
    {
      v8 = @"YES";
    }

    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - MCProfileConnection isAppClipsAllowed status changed to: %@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (isAppClipsAllowed)
  {
    [WeakRetained tryUpdatePredictionsDefaultIntervalWithReason:19];
  }

  else
  {
    [WeakRetained forceUpdatePredictionsImmediatelyWithReason:19];
  }

  v11 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v11 updateRecents];

  v12 = *MEMORY[0x277D85DE8];
}

- (ATXUpdatePredictionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end