@interface FMDMagSafeSetupAgent
+ (id)sharedInstance;
- (FMDMagSafeSetupAgent)init;
- (void)_launchRemoteViewWithContext:(id)context;
- (void)launchSetupModule:(id)module;
- (void)launchSetupModuleWith:(id)with completion:(id)completion;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
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

- (void)launchSetupModule:(id)module
{
  moduleCopy = module;
  v5 = sub_1000011D8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = moduleCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "received notification %@", &v7, 0xCu);
  }

  if ([moduleCopy isEqualToString:@"com.apple.icloud.FindMy.addMagSafeAccessory"])
  {
    v6 = &off_100028D10;
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  [(FMDMagSafeSetupAgent *)self _launchRemoteViewWithContext:v6];
}

- (void)_launchRemoteViewWithContext:(id)context
{
  contextCopy = context;
  serialQueue = [(FMDMagSafeSetupAgent *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000076D4;
  v7[3] = &unk_1000249C8;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(serialQueue, v7);
}

- (void)launchSetupModuleWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  serialQueue = [(FMDMagSafeSetupAgent *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000793C;
  block[3] = &unk_1000249F0;
  v12 = withCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = withCopy;
  v10 = completionCopy;
  dispatch_async(serialQueue, block);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v4 = sub_1000011D8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "remote handler deactivated", v7, 2u);
  }

  [(FMDMagSafeSetupAgent *)self setRemoteAlertHandle:0];
  launchCompleted = [(FMDMagSafeSetupAgent *)self launchCompleted];

  if (launchCompleted)
  {
    launchCompleted2 = [(FMDMagSafeSetupAgent *)self launchCompleted];
    launchCompleted2[2](launchCompleted2, 0);
  }
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  errorCopy = error;
  v6 = sub_1000011D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "remote handler invalidated with error %@", &v9, 0xCu);
  }

  [(FMDMagSafeSetupAgent *)self setRemoteAlertHandle:0];
  launchCompleted = [(FMDMagSafeSetupAgent *)self launchCompleted];

  if (launchCompleted)
  {
    launchCompleted2 = [(FMDMagSafeSetupAgent *)self launchCompleted];
    (launchCompleted2)[2](launchCompleted2, errorCopy);
  }
}

@end