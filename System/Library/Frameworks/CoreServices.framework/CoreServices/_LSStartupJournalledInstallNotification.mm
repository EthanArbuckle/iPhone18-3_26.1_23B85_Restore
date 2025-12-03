@interface _LSStartupJournalledInstallNotification
- (_LSStartupJournalledInstallNotification)initWithNotification:(int)notification appProxies:(id)proxies plugins:(BOOL)plugins;
- (void)dispatchToObserver:(id)observer forInstallProgressService:(id)service;
@end

@implementation _LSStartupJournalledInstallNotification

- (_LSStartupJournalledInstallNotification)initWithNotification:(int)notification appProxies:(id)proxies plugins:(BOOL)plugins
{
  proxiesCopy = proxies;
  v14.receiver = self;
  v14.super_class = _LSStartupJournalledInstallNotification;
  v9 = [(_LSStartupJournalledInstallNotification *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_notification = notification;
    v11 = [proxiesCopy copy];
    proxies = v10->_proxies;
    v10->_proxies = v11;

    v10->_plugins = plugins;
  }

  return v10;
}

- (void)dispatchToObserver:(id)observer forInstallProgressService:(id)service
{
  v18 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  observerCopy = observer;
  v8 = _LSProgressLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    notification = [(_LSStartupJournalledInstallNotification *)self notification];
    proxies = [(_LSStartupJournalledInstallNotification *)self proxies];
    v14 = 134218242;
    v15 = notification;
    v16 = 2112;
    v17 = proxies;
    _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_INFO, "Sending notification %lu for proxies %@ to observer.", &v14, 0x16u);
  }

  notification2 = [(_LSStartupJournalledInstallNotification *)self notification];
  proxies2 = [(_LSStartupJournalledInstallNotification *)self proxies];
  [serviceCopy directlySendNotification:notification2 withProxies:proxies2 toObserver:observerCopy];

  v13 = *MEMORY[0x1E69E9840];
}

@end