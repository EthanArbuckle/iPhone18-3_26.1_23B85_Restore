@interface FMDMagSafeSetupAgent
+ (id)sharedInstance;
- (FMDMagSafeSetupAgent)init;
- (void)_launchRemoteViewWithContext:(id)a3;
- (void)launchSetupModule:(id)a3;
- (void)launchSetupModuleWith:(id)a3 completion:(id)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation FMDMagSafeSetupAgent

+ (id)sharedInstance
{
  if (qword_100030AF0 != -1)
  {
    sub_1000152E8();
  }

  v3 = qword_100030AE8;

  return v3;
}

- (FMDMagSafeSetupAgent)init
{
  v7.receiver = self;
  v7.super_class = FMDMagSafeSetupAgent;
  v2 = [(FMDMagSafeSetupAgent *)&v7 init];
  if (v2)
  {
    v3 = sub_1000011D8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "intitializing setupAgent", v6, 2u);
    }

    v4 = dispatch_queue_create("FMDMagSafeSetupAgent", 0);
    [(FMDMagSafeSetupAgent *)v2 setSerialQueue:v4];
  }

  return v2;
}

- (void)launchSetupModule:(id)a3
{
  v4 = a3;
  v5 = sub_1000011D8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "received notification %@", &v7, 0xCu);
  }

  if ([v4 isEqualToString:@"com.apple.icloud.FindMy.addMagSafeAccessory"])
  {
    v6 = &off_100028D10;
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  [(FMDMagSafeSetupAgent *)self _launchRemoteViewWithContext:v6];
}

- (void)_launchRemoteViewWithContext:(id)a3
{
  v4 = a3;
  v5 = [(FMDMagSafeSetupAgent *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000076D4;
  v7[3] = &unk_1000249C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)launchSetupModuleWith:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMDMagSafeSetupAgent *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000793C;
  block[3] = &unk_1000249F0;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = sub_1000011D8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "remote handler deactivated", v7, 2u);
  }

  [(FMDMagSafeSetupAgent *)self setRemoteAlertHandle:0];
  v5 = [(FMDMagSafeSetupAgent *)self launchCompleted];

  if (v5)
  {
    v6 = [(FMDMagSafeSetupAgent *)self launchCompleted];
    v6[2](v6, 0);
  }
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a4;
  v6 = sub_1000011D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "remote handler invalidated with error %@", &v9, 0xCu);
  }

  [(FMDMagSafeSetupAgent *)self setRemoteAlertHandle:0];
  v7 = [(FMDMagSafeSetupAgent *)self launchCompleted];

  if (v7)
  {
    v8 = [(FMDMagSafeSetupAgent *)self launchCompleted];
    (v8)[2](v8, v5);
  }
}

@end