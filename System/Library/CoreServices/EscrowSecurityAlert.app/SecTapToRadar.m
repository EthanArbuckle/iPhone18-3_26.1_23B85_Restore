@interface SecTapToRadar
+ (BOOL)askUserIfTTR:(id)a3;
+ (BOOL)isRateLimited:(id)a3;
+ (id)keyname:(id)a3;
+ (void)triggerTapToRadar:(id)a3;
- (BOOL)isRateLimited;
- (id)initTapToRadar:(id)a3 description:(id)a4 radar:(id)a5;
- (void)clearRetryTimestamp;
- (void)trigger;
- (void)updateRetryTimestamp;
@end

@implementation SecTapToRadar

- (id)initTapToRadar:(id)a3 description:(id)a4 radar:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = SecTapToRadar;
  v12 = [(SecTapToRadar *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_alert, a3);
    objc_storeStrong(&v13->_radarDescription, a4);
    objc_storeStrong(&v13->_radarnumber, a5);
    v14 = dispatch_queue_create("com.apple.EscrowSecurityAlert.diagnostic-queue", 0);
    queue = v13->_queue;
    v13->_queue = v14;

    v16 = v13->_queue;
    v17 = dispatch_get_global_queue(-32768, 0);
    dispatch_set_target_queue(v16, v17);

    componentName = v13->_componentName;
    v13->_componentName = @"CloudServices";

    componentVersion = v13->_componentVersion;
    v13->_componentVersion = @"all";

    componentID = v13->_componentID;
    v13->_componentID = @"507587";

    v21 = v13;
  }

  return v13;
}

+ (id)keyname:(id)a3
{
  v3 = [a3 radarnumber];
  v4 = [NSString stringWithFormat:@"%@-%@", @"NextTTRDate", v3];

  return v4;
}

+ (BOOL)isRateLimited:(id)a3
{
  if (byte_100015AB8)
  {
    return 1;
  }

  else
  {
    return [a3 isRateLimited];
  }
}

- (BOOL)isRateLimited
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.EscrowSecurityAlert"];
  v4 = [objc_opt_class() keyname:self];
  v5 = [v3 valueForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = +[NSDate date];
    v7 = [v5 compare:v6] != -1;
  }

  else
  {
    [v3 removeObjectForKey:v4];
    v7 = 0;
  }

  return v7;
}

- (void)updateRetryTimestamp
{
  v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.EscrowSecurityAlert"];
  v3 = +[NSDate date];
  v4 = [v3 dateByAddingTimeInterval:86400.0];
  v5 = [objc_opt_class() keyname:self];
  [v6 setObject:v4 forKey:v5];
}

- (void)clearRetryTimestamp
{
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.EscrowSecurityAlert"];
  v3 = [objc_opt_class() keyname:self];
  [v4 removeObjectForKey:v3];
}

+ (void)triggerTapToRadar:(id)a3
{
  v3 = a3;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 alert];
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Triggering TTR: %@", buf, 0xCu);
  }

  v6 = [v3 queue];
  dispatch_assert_queue_V2(v6);

  if (qword_100015AC0 != -1)
  {
    sub_100007F0C();
  }

  v7 = [v3 alert];
  v8 = [v3 radarnumber];
  v23 = [NSString stringWithFormat:@"Triggered ESATTR: %@ - %@", v7, v8];

  v21 = [v23 stringByAddingPercentEncodingWithAllowedCharacters:qword_100015AC8];
  v9 = [v3 radarDescription];
  v10 = [v3 radarnumber];
  v22 = [NSString stringWithFormat:@"%@\nRelated radar: rdar://%@", v9, v10];

  v11 = [v22 stringByAddingPercentEncodingWithAllowedCharacters:qword_100015AC8];
  v12 = [v3 componentName];
  v13 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:qword_100015AC8];
  v14 = [v3 componentVersion];
  v15 = [v14 stringByAddingPercentEncodingWithAllowedCharacters:qword_100015AC8];
  v16 = [v3 componentID];
  v17 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:qword_100015AC8];
  v18 = [NSString stringWithFormat:@"tap-to-radar://new?Title=%@&ComponentName=%@&ComponentVersion=%@&Reproducibility=Not%%20Applicable&ComponentID=%@&Classification=Crash/Hang/Data%%20Loss&Description=%@", v21, v13, v15, v17, v11];

  v19 = [NSURL URLWithString:v18];
  v20 = +[LSApplicationWorkspace defaultWorkspace];
  [v20 openURL:v19 configuration:0 completionHandler:&stru_1000106C8];
}

+ (BOOL)askUserIfTTR:(id)a3
{
  v12[0] = kCFUserNotificationDefaultButtonTitleKey;
  v12[1] = kCFUserNotificationAlternateButtonTitleKey;
  v13[0] = @"Tap-To-Radar";
  v13[1] = @"Go away";
  v12[2] = kCFUserNotificationAlertMessageKey;
  v3 = [a3 alert];
  v12[3] = kCFUserNotificationAlertHeaderKey;
  v13[2] = v3;
  v13[3] = @"EscrowSecurityAlert";
  v4 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

  error = 0;
  v5 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v4);
  if (v5)
  {
    v6 = v5;
    responseFlags = 0;
    CFUserNotificationReceiveResponse(v5, 180.0, &responseFlags);
    v7 = (responseFlags & 3) == 0;
    CFRelease(v6);
  }

  else
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100007F34(&error, v8);
    }

    v7 = 0;
  }

  return v7;
}

- (void)trigger
{
  v3 = [(SecTapToRadar *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004F60;
  block[3] = &unk_1000105A0;
  block[4] = self;
  dispatch_sync(v3, block);
}

@end