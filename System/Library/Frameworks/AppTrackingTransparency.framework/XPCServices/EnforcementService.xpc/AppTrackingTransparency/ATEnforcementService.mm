@interface ATEnforcementService
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)appTrackingTransparencyBag;
+ (int64_t)reasonCodeFromNumberValue:(id)value;
- (int64_t)numberOfDayFrom:(id)from andNow:(id)now;
- (void)appTrackingEnforcement:(id)enforcement;
@end

@implementation ATEnforcementService

+ (NSString)bagSubProfile
{
  if (qword_100008BE8 != -1)
  {
    sub_100002320();
  }

  v3 = qword_100008BF0;

  return v3;
}

+ (NSString)bagSubProfileVersion
{
  if (qword_100008BF8 != -1)
  {
    sub_100002334();
  }

  v3 = qword_100008C00;

  return v3;
}

+ (id)appTrackingTransparencyBag
{
  if (qword_100008C08 != -1)
  {
    sub_100002348();
  }

  v2 = [[AMSProcessInfo alloc] initWithBundleIdentifier:@"com.apple.AppTrackingTransparency.EnforcementService"];
  executableName = [v2 executableName];
  v4 = [executableName length];

  if (!v4)
  {
    v5 = +[NSProcessInfo processInfo];
    processName = [v5 processName];
    [v2 setExecutableName:processName];
  }

  v7 = +[ATEnforcementService bagSubProfile];
  v8 = +[ATEnforcementService bagSubProfileVersion];
  v9 = [AMSBag bagForProfile:v7 profileVersion:v8 processInfo:v2];

  return v9;
}

- (void)appTrackingEnforcement:(id)enforcement
{
  enforcementCopy = enforcement;
  if (![(ATEnforcementService *)self isInternalInstall])
  {
LABEL_6:
    v5 = +[NSDate date];
    v38[0] = 0;
    v9 = [ATKeychainStore objectForKey:@"EnforcementService.enforced" error:v38];
    v10 = v38[0];
    v37 = v10;
    v11 = [ATKeychainStore objectForKey:@"EnforcementService.reasonCode" error:&v37];
    v12 = v37;

    v36 = v12;
    v13 = [ATKeychainStore objectForKey:@"EnforcementService.lastBagLookup" error:&v36];
    v14 = v36;

    if (v9 && v13 && !v14)
    {
      enforcementCopy[2](enforcementCopy, [v9 BOOLValue], +[ATEnforcementService reasonCodeFromNumberValue:](ATEnforcementService, "reasonCodeFromNumberValue:", v11), 0);
    }

    else
    {
      enforcementCopy[2](enforcementCopy, 1, 0, 1);
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    if ([(ATEnforcementService *)self numberOfDayFrom:v13 andNow:v5]< 1)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v22 = v11;
    v15 = dispatch_group_create();
    v16 = +[ATEnforcementService appTrackingTransparencyBag];
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v35 = 1;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v33[3] = 0;
    dispatch_group_enter(v15);
    v17 = [v16 BOOLForKey:@"IsAppTrackingTransparencyEnforced"];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100001E28;
    v30[3] = &unk_100004378;
    v32 = v34;
    v30[4] = self;
    v18 = v15;
    v31 = v18;
    [v17 valueWithCompletion:v30];

    dispatch_group_enter(v18);
    v19 = [v16 integerForKey:@"AppTrackingTransparencyEnforcementReason"];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100001F3C;
    v27[3] = &unk_100004378;
    v29 = v33;
    v27[4] = self;
    v20 = v18;
    v28 = v20;
    [v19 valueWithCompletion:v27];

    v21 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002058;
    block[3] = &unk_1000043A0;
    block[4] = self;
    v25 = v33;
    v26 = v34;
    v24 = v5;
    dispatch_group_notify(v20, v21, block);

    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v34, 8);

    v11 = v22;
    goto LABEL_13;
  }

  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.AppTrackingTransparency"];
  v6 = [v5 objectForKey:@"TrackingEnforced"];
  if (!v6 || (v7 = v6, [v5 objectForKey:@"ReasonCode"], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {

    goto LABEL_6;
  }

  enforcementCopy[2](enforcementCopy, [v5 BOOLForKey:@"TrackingEnforced"], objc_msgSend(v5, "integerForKey:", @"ReasonCode"), 1);
LABEL_14:
}

- (int64_t)numberOfDayFrom:(id)from andNow:(id)now
{
  if (!from)
  {
    return 1;
  }

  nowCopy = now;
  fromCopy = from;
  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 startOfDayForDate:fromCopy];

  v9 = [v7 startOfDayForDate:nowCopy];

  v10 = [v7 components:16 fromDate:v8 toDate:v9 options:0];

  v11 = [v10 day];
  return v11;
}

+ (int64_t)reasonCodeFromNumberValue:(id)value
{
  result = [value integerValue];
  if (result == 1001)
  {
    v4 = 1001;
  }

  else
  {
    v4 = 0;
  }

  if (result != 1002)
  {
    return v4;
  }

  return result;
}

@end