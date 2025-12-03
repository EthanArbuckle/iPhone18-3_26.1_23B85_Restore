@interface SynchronizeContactProvidersService
+ (BOOL)synchronizeAllContactProviderExtensions:(id *)extensions;
+ (void)run;
@end

@implementation SynchronizeContactProvidersService

+ (void)run
{
  v3 = +[CNContactsDaemonLogs synchronizeContactProviders];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [self activityIdentifier]);
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is running to synchronize all Contact Provider extensions.", buf, 0xCu);
  }

  v10 = 0;
  v5 = [self synchronizeAllContactProviderExtensions:&v10];
  v6 = v10;
  v7 = +[CNContactsDaemonLogs synchronizeContactProviders];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [self activityIdentifier]);
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ has finished synchronizing all Contact Provider extensions.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10002C9C4(self, v6, v8);
  }
}

+ (BOOL)synchronizeAllContactProviderExtensions:(id *)extensions
{
  v4 = objc_alloc_init(CNContactProviderSupportSession);
  [v4 setSynchronizationReason:CNContactProviderSupportSynchronizationReasonScheduledEvent];
  v5 = [CNContactProviderSupportModerator synchronizeAllUsingSession:v4];
  v10 = 0;
  v6 = [v5 result:&v10];
  v7 = v10;
  if (extensions && v7)
  {
    v7 = v7;
    *extensions = v7;
  }

  v8 = v7 == 0;

  return v8;
}

@end