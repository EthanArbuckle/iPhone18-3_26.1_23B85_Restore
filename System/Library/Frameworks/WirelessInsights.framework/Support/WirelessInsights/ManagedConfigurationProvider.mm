@interface ManagedConfigurationProvider
- (BOOL)queryBasebandLoggingProfileInstalled;
- (ManagedConfigurationProvider)init;
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation ManagedConfigurationProvider

- (ManagedConfigurationProvider)init
{
  v10.receiver = self;
  v10.super_class = ManagedConfigurationProvider;
  v2 = [(ManagedConfigurationProvider *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(ManagedConfigurationProvider *)v2 setImproveSafetyAllowed:0];
    v4 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 4);
    v3->_mcDylibHandle = v4;
    if (v4)
    {
      Class = objc_getClass("MCProfileConnection");
      qword_1002D85F8 = Class;
      if (Class)
      {
        v6 = [(objc_class *)Class sharedConnection];
        v3->_managedConfigurationConnection = v6;
        [(MCProfileConnection *)v6 registerObserver:v3];
        [(ManagedConfigurationProvider *)v3 setImproveSafetyAllowed:[(MCProfileConnection *)v3->_managedConfigurationConnection isSafetyDataSubmissionAllowed]];
        [(ManagedConfigurationProvider *)v3 setBasebandLoggingProfileInstalled:[(ManagedConfigurationProvider *)v3 queryBasebandLoggingProfileInstalled]];
      }

      else
      {
        v8 = *(qword_1002DBE98 + 112);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10020BD98(v8);
        }
      }
    }

    else
    {
      v7 = *(qword_1002DBE98 + 112);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10020BDDC(v7);
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  [objc_msgSend(qword_1002D85F8 "sharedConnection")];
  mcDylibHandle = self->_mcDylibHandle;
  if (mcDylibHandle)
  {
    dlclose(mcDylibHandle);
  }

  v4.receiver = self;
  v4.super_class = ManagedConfigurationProvider;
  [(ManagedConfigurationProvider *)&v4 dealloc];
}

- (BOOL)queryBasebandLoggingProfileInstalled
{
  v7 = 0;
  v2 = [(MCProfileConnection *)self->_managedConfigurationConnection isProfileInstalledWithIdentifier:@"com.apple.basebandlogging" outError:&v7];
  v3 = v7;
  v4 = *(qword_1002DBE98 + 112);
  if (v7)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
    {
      sub_10020BE20(v3, v4);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#I Check for isBasebandProfileInstalled=%{BOOL}d", buf, 8u);
    }
  }

  return v5;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [a3 isSafetyDataSubmissionAllowed];
  v6 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10020BEB0(v5, v6);
  }

  if (v5 != [(ManagedConfigurationProvider *)self improveSafetyAllowed])
  {
    [(ManagedConfigurationProvider *)self setImproveSafetyAllowed:v5];
  }
}

- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10020BF2C(v5);
  }

  [(ManagedConfigurationProvider *)self setBasebandLoggingProfileInstalled:[(ManagedConfigurationProvider *)self queryBasebandLoggingProfileInstalled]];
}

@end