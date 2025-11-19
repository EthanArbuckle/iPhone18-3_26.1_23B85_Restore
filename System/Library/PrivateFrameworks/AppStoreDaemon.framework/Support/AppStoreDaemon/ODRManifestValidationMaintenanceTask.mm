@interface ODRManifestValidationMaintenanceTask
- (void)main;
@end

@implementation ODRManifestValidationMaintenanceTask

- (void)main
{
  v3 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.ODRMainfestValidationMaintenanceOperation"];
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Executing the Validate Manifests task.", buf, 2u);
  }

  if ([(ODRManifestValidationMaintenanceTask *)self isCancelled])
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Validate manifests operation has been cancelled.", buf, 2u);
    }
  }

  else
  {
    v6 = sub_100208FBC();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100362CE0;
    v8[3] = &unk_10051AF70;
    v8[4] = self;
    [v6 modifyUsingTransaction:v8];

    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Validate Manifests task has finished.", buf, 2u);
    }

    [(Task *)self completeWithSuccess];
  }
}

@end