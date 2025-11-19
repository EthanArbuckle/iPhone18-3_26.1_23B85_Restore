@interface _LSStartupJournalledInstallNotification
- (_LSStartupJournalledInstallNotification)initWithNotification:(int)a3 appProxies:(id)a4 plugins:(BOOL)a5;
- (void)dispatchToObserver:(id)a3 forInstallProgressService:(id)a4;
@end

@implementation _LSStartupJournalledInstallNotification

- (_LSStartupJournalledInstallNotification)initWithNotification:(int)a3 appProxies:(id)a4 plugins:(BOOL)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _LSStartupJournalledInstallNotification;
  v9 = [(_LSStartupJournalledInstallNotification *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_notification = a3;
    v11 = [v8 copy];
    proxies = v10->_proxies;
    v10->_proxies = v11;

    v10->_plugins = a5;
  }

  return v10;
}

- (void)dispatchToObserver:(id)a3 forInstallProgressService:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = _LSProgressLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(_LSStartupJournalledInstallNotification *)self notification];
    v10 = [(_LSStartupJournalledInstallNotification *)self proxies];
    v14 = 134218242;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_INFO, "Sending notification %lu for proxies %@ to observer.", &v14, 0x16u);
  }

  v11 = [(_LSStartupJournalledInstallNotification *)self notification];
  v12 = [(_LSStartupJournalledInstallNotification *)self proxies];
  [v6 directlySendNotification:v11 withProxies:v12 toObserver:v7];

  v13 = *MEMORY[0x1E69E9840];
}

@end