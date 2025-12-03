@interface SecTapToRadar
+ (BOOL)askUserIfTTR:(id)r;
+ (BOOL)isRateLimited:(id)limited;
+ (id)keyname:(id)keyname;
+ (void)triggerTapToRadar:(id)radar;
- (BOOL)isRateLimited;
- (id)initTapToRadar:(id)radar description:(id)description radar:(id)a5;
- (void)clearRetryTimestamp;
- (void)trigger;
- (void)updateRetryTimestamp;
@end

@implementation SecTapToRadar

- (void)trigger
{
  queue = [(SecTapToRadar *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__SecTapToRadar_trigger__block_invoke;
  block[3] = &unk_1E70E4300;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __24__SecTapToRadar_trigger__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (os_variant_allows_internal_security_policies())
  {
    v3 = *(a1 + 32);
    if ([objc_opt_class() isRateLimited:v3])
    {
      v4 = secLogObjForScope("SecTTR");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) alert];
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Not showing ttr due to ratelimiting: %@", &v9, 0xCu);
      }
    }

    else
    {
      v6 = *(a1 + 32);
      if ([objc_opt_class() askUserIfTTR:v6])
      {
        v7 = *(a1 + 32);
        [objc_opt_class() triggerTapToRadar:v7];
      }

      [*(a1 + 32) updateRetryTimestamp];
    }
  }

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)clearRetryTimestamp
{
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.security"];
  v3 = [objc_opt_class() keyname:self];
  [v4 removeObjectForKey:v3];
}

- (void)updateRetryTimestamp
{
  v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.security"];
  date = [MEMORY[0x1E695DF00] date];
  v4 = [date dateByAddingTimeInterval:86400.0];
  v5 = [objc_opt_class() keyname:self];
  [v6 setObject:v4 forKey:v5];
}

- (BOOL)isRateLimited
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.security"];
  v4 = [objc_opt_class() keyname:self];
  v5 = [v3 valueForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    date = [MEMORY[0x1E695DF00] date];
    v7 = [v5 compare:date] != -1;
  }

  else
  {
    [v3 removeObjectForKey:v4];
    v7 = 0;
  }

  return v7;
}

- (id)initTapToRadar:(id)radar description:(id)description radar:(id)a5
{
  radarCopy = radar;
  descriptionCopy = description;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = SecTapToRadar;
  v12 = [(SecTapToRadar *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_alert, radar);
    objc_storeStrong(&v13->_radarDescription, description);
    objc_storeStrong(&v13->_radarnumber, a5);
    v14 = dispatch_queue_create("com.apple.security.diagnostic-queue", 0);
    queue = v13->_queue;
    v13->_queue = v14;

    v16 = v13->_queue;
    v17 = dispatch_get_global_queue(-32768, 0);
    dispatch_set_target_queue(v16, v17);

    date = [MEMORY[0x1E695DF00] date];
    created = v13->_created;
    v13->_created = date;

    componentName = v13->_componentName;
    v13->_componentName = @"Security";

    componentVersion = v13->_componentVersion;
    v13->_componentVersion = @"all";

    componentID = v13->_componentID;
    v13->_componentID = @"606179";

    v23 = v13;
  }

  return v13;
}

+ (BOOL)askUserIfTTR:(id)r
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695EE70];
  v17[0] = *MEMORY[0x1E695EE78];
  v17[1] = v3;
  v18[0] = @"Tap-To-Radar";
  v18[1] = @"Go away";
  v17[2] = *MEMORY[0x1E695EE60];
  rCopy = r;
  alert = [rCopy alert];
  v18[2] = alert;
  v17[3] = *MEMORY[0x1E695EE58];
  componentName = [rCopy componentName];

  v18[3] = componentName;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  error = 0;
  v8 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v7);
  if (v8)
  {
    v9 = v8;
    *responseFlags = 0;
    CFUserNotificationReceiveResponse(v8, 180.0, responseFlags);
    v10 = (responseFlags[0] & 3) == 0;
    CFRelease(v9);
  }

  else
  {
    v11 = secLogObjForScope("SecTTR");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInt:error];
      *responseFlags = 138412290;
      *&responseFlags[4] = v12;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Failed to create notification, error %@", responseFlags, 0xCu);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (void)triggerTapToRadar:(id)radar
{
  v43 = *MEMORY[0x1E69E9840];
  radarCopy = radar;
  v4 = secLogObjForScope("secttr");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    alert = [radarCopy alert];
    *buf = 138412290;
    v42 = alert;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Triggering TTR: %@", buf, 0xCu);
  }

  queue = [radarCopy queue];
  dispatch_assert_queue_V2(queue);

  v7 = MEMORY[0x1E696AEC0];
  alert2 = [radarCopy alert];
  radarnumber = [radarCopy radarnumber];
  v10 = [v7 stringWithFormat:@"SFA: %@ - %@", alert2, radarnumber];

  v11 = MEMORY[0x1E696AEC0];
  radarDescription = [radarCopy radarDescription];
  reason = [radarCopy reason];
  v14 = reason;
  if (reason)
  {
    v15 = reason;
  }

  else
  {
    v15 = &stru_1EFA8C6C8;
  }

  radarnumber2 = [radarCopy radarnumber];
  created = [radarCopy created];
  v18 = [v11 stringWithFormat:@"%@\n%@\nRelated radar: rdar://%@\nRequest triggered at: %@", radarDescription, v15, radarnumber2, created];

  v19 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:@"tap-to-radar://new"];
  queryItems = [v19 queryItems];
  v21 = [queryItems mutableCopy];
  v22 = v21;
  if (v21)
  {
    array = v21;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  v24 = array;

  v25 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Title" value:v10];
  [v24 addObject:v25];

  v26 = objc_alloc(MEMORY[0x1E696AF60]);
  componentName = [radarCopy componentName];
  v28 = [v26 initWithName:@"ComponentName" value:componentName];
  [v24 addObject:v28];

  v29 = objc_alloc(MEMORY[0x1E696AF60]);
  componentVersion = [radarCopy componentVersion];
  v31 = [v29 initWithName:@"ComponentVersion" value:componentVersion];
  [v24 addObject:v31];

  v32 = objc_alloc(MEMORY[0x1E696AF60]);
  componentID = [radarCopy componentID];
  v34 = [v32 initWithName:@"ComponentID" value:componentID];
  [v24 addObject:v34];

  v35 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Reproducibility" value:@"Not Applicable"];
  [v24 addObject:v35];

  v36 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Classification" value:@"Crash/Hang/Data Loss"];
  [v24 addObject:v36];

  v37 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Description" value:v18];
  [v24 addObject:v37];

  [v19 setQueryItems:v24];
  v38 = [v19 URL];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v38 withOptions:0];

  v40 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isRateLimited:(id)limited
{
  if (SecTTRDisabled)
  {
    return 1;
  }

  else
  {
    return [limited isRateLimited];
  }
}

+ (id)keyname:(id)keyname
{
  v3 = MEMORY[0x1E696AEC0];
  radarnumber = [keyname radarnumber];
  v5 = [v3 stringWithFormat:@"%@-%@", @"NextTTRDate", radarnumber];

  return v5;
}

@end