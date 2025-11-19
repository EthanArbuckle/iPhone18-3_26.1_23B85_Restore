@interface SettingsDefaultAppsService
+ (SettingsDefaultAppsService)sharedInstance;
+ (id)makeWorkQueueUsingSchedulerProvider:(id)a3;
- (BOOL)checkDefaultAppChanged:(unint64_t)a3 forPersistedKey:(__CFString *)a4;
- (BOOL)checkEligibleDefaultAppsCountChanged:(unint64_t)a3 forPersistedKey:(__CFString *)a4;
- (SettingsDefaultAppsService)init;
- (void)checkForAnyDefaultAppChanged;
- (void)coalesceChangeEvent;
- (void)configureCallCapabilitiesWithScheduler:(id)a3;
- (void)didChangeRelayCallingCapabilities;
- (void)didChangeTelephonyCallingSupport;
- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)a3;
- (void)handleCoalescedEvent:(id)a3;
- (void)handleNotificationName:(id)a3;
@end

@implementation SettingsDefaultAppsService

+ (SettingsDefaultAppsService)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009DC8;
  block[3] = &unk_100045580;
  block[4] = a1;
  if (qword_10004E038 != -1)
  {
    dispatch_once(&qword_10004E038, block);
  }

  v2 = qword_10004E040;

  return v2;
}

- (SettingsDefaultAppsService)init
{
  v19.receiver = self;
  v19.super_class = SettingsDefaultAppsService;
  v2 = [(SettingsDefaultAppsService *)&v19 init];
  if (v2)
  {
    v3 = +[CNSchedulerProvider defaultProvider];
    v4 = [objc_opt_class() makeWorkQueueUsingSchedulerProvider:v3];
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v6 = objc_alloc_init(CNPublishingSubject);
    coalescer = v2->_coalescer;
    v2->_coalescer = v6;

    v8 = [(CNPublishingSubject *)v2->_coalescer throttle:2 options:v3 schedulerProvider:2.0];
    v9 = [CNObserver observerWithWeakTarget:v2 resultSelector:"handleCoalescedEvent:"];
    v10 = [v8 subscribe:v9];
    coalescingToken = v2->_coalescingToken;
    v2->_coalescingToken = v10;

    v12 = objc_alloc_init(CNLaunchServices);
    launchServices = v2->_launchServices;
    v2->_launchServices = v12;

    v14 = dispatch_queue_create("com.apple.contactsd.callcapabilitiesmonitor", 0);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v14;

    v16 = [v3 backgroundScheduler];
    [(SettingsDefaultAppsService *)v2 configureCallCapabilitiesWithScheduler:v16];

    v17 = v2;
  }

  return v2;
}

+ (id)makeWorkQueueUsingSchedulerProvider:(id)a3
{
  v3 = [a3 newSerialSchedulerWithName:@"com.apple.contactsd.SettingsDefaultAppsService"];
  v4 = [[CNQualityOfServiceSchedulerDecorator alloc] initWithScheduler:v3 qualityOfService:2];

  return v4;
}

- (void)configureCallCapabilitiesWithScheduler:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000A038;
  v3[3] = &unk_1000455E8;
  v3[4] = self;
  [a3 performBlock:v3];
}

- (void)handleCoalescedEvent:(id)a3
{
  v4 = [(SettingsDefaultAppsService *)self workQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000A2E0;
  v5[3] = &unk_1000455E8;
  v5[4] = self;
  [v4 performBlock:v5];
}

- (void)handleNotificationName:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"com.apple.LaunchServices.database"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"com.apple.TelephonyUtilities.DefaultAppRelayTelephonySettingChanged"))
  {
    v5 = +[CNContactsDaemonLogs settingsDefaultApps];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "event %@", &v6, 0xCu);
    }

    [(SettingsDefaultAppsService *)self coalesceChangeEvent];
  }
}

- (void)didChangeTelephonyCallingSupport
{
  v3 = +[CNContactsDaemonLogs settingsDefaultApps];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "event didChangeTelephonyCallingSupport", v4, 2u);
  }

  [(SettingsDefaultAppsService *)self coalesceChangeEvent];
}

- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)a3
{
  v4 = +[CNContactsDaemonLogs settingsDefaultApps];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "event didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID", v5, 2u);
  }

  [(SettingsDefaultAppsService *)self coalesceChangeEvent];
}

- (void)didChangeRelayCallingCapabilities
{
  v3 = +[CNContactsDaemonLogs settingsDefaultApps];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "event didChangeRelayCallingCapabilities", v4, 2u);
  }

  [(SettingsDefaultAppsService *)self coalesceChangeEvent];
}

- (void)coalesceChangeEvent
{
  v3 = [(SettingsDefaultAppsService *)self workQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000A63C;
  v4[3] = &unk_1000455E8;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)checkForAnyDefaultAppChanged
{
  v3 = +[CNContactsDaemonLogs settingsDefaultApps];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SettingsDefaultAppsService will perform check.", buf, 2u);
  }

  v4 = [(SettingsDefaultAppsService *)self checkDefaultAppChanged:0 forPersistedKey:@"CNDefaultAppForMessaging"];
  v5 = [(SettingsDefaultAppsService *)self checkDefaultAppChanged:1 forPersistedKey:@"CNDefaultAppForCalling"];
  v6 = [(SettingsDefaultAppsService *)self checkEligibleDefaultAppsCountChanged:0 forPersistedKey:@"CNDefaultEligibleAppsCountForMessaging"];
  v7 = [(SettingsDefaultAppsService *)self checkEligibleDefaultAppsCountChanged:1 forPersistedKey:@"CNDefaultElibibleAppsCountForCalling"];
  if ((v4 & 1) != 0 || (v5 & 1) != 0 || (v6 & 1) != 0 || v7)
  {
    v8 = +[CNContactsDaemonLogs settingsDefaultApps];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SettingsDefaultAppsService found settings changed, posting notification.", v10, 2u);
    }

    v9 = +[NSDistributedNotificationCenter defaultCenter];
    [v9 postNotificationName:CNContactStoreSettingsDefaultAppsDidChangeNotification object:0];
  }
}

- (BOOL)checkDefaultAppChanged:(unint64_t)a3 forPersistedKey:(__CFString *)a4
{
  v7 = CFPreferencesCopyAppValue(a4, kCFPreferencesCurrentApplication);
  v8 = [(SettingsDefaultAppsService *)self launchServices];
  v9 = [v8 defaultApplicationForDefaultAppCategory:a3];

  v10 = [v9 bundleIdentifier];
  if (v7 | v10 && ([v7 isEqual:v10] & 1) == 0)
  {
    CFPreferencesSetAppValue(a4, v10, kCFPreferencesCurrentApplication);
    v12 = +[CNContactsDaemonLogs settingsDefaultApps];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"calling";
      if (!a3)
      {
        v13 = @"messaging";
      }

      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "SettingsDefaultAppsService found default app changed to %@ for %@ category", &v15, 0x16u);
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)checkEligibleDefaultAppsCountChanged:(unint64_t)a3 forPersistedKey:(__CFString *)a4
{
  AppIntegerValue = CFPreferencesGetAppIntegerValue(a4, kCFPreferencesCurrentApplication, 0);
  v8 = [(SettingsDefaultAppsService *)self launchServices];
  v9 = [v8 applicationsAvailableForDefaultAppCategory:a3];

  v10 = [v9 count];
  if (AppIntegerValue != v10)
  {
    CFPreferencesSetAppValue(a4, [NSNumber numberWithLong:v10], kCFPreferencesCurrentApplication);
    v11 = +[CNContactsDaemonLogs settingsDefaultApps];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [NSNumber numberWithLong:v10];
      v13 = v12;
      v14 = @"calling";
      if (!a3)
      {
        v14 = @"messaging";
      }

      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "SettingsDefaultAppsService found eligible default apps count changed to %@ for %@ category", &v16, 0x16u);
    }
  }

  return AppIntegerValue != v10;
}

@end