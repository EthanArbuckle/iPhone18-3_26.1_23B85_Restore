@interface APSConfiguration
+ (id)_onQueue_configurationForEnvironment:(id)a3 connectionType:(int64_t)a4;
+ (id)configurationForEnvironment:(id)a3 connectionType:(int64_t)a4;
+ (void)initialize;
+ (void)invalidateConfigurationForEnvironment:(id)a3 connectionType:(int64_t)a4;
+ (void)loadConfigurationForEnvironment:(id)a3 connectionType:(int64_t)a4 block:(id)a5;
- (APSConfiguration)initWithEnvironment:(id)a3 connectionType:(int64_t)a4;
- (BOOL)_isExpired;
- (int)status;
- (unint64_t)serverCount;
- (void)_callCompletionBlocksWithError:(id)a3;
- (void)_failWithError:(id)a3;
- (void)_finishLoadWithResponse:(id)a3 urlHost:(id)a4 data:(id)a5;
- (void)addCompletionBlock:(id)a3;
- (void)dealloc;
- (void)setExpiryInterval:(double)a3 expirationBlock:(id)a4;
@end

@implementation APSConfiguration

- (BOOL)_isExpired
{
  expiry = self->_expiry;
  v3 = +[NSDate date];
  LOBYTE(expiry) = [(NSDate *)expiry compare:v3]!= 1;

  return expiry;
}

+ (void)initialize
{
  v2 = [[NSURLCache alloc] initWithMemoryCapacity:0 diskCapacity:0 diskPath:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v2 = [NSURLCache setSharedURLCache:v2];
    v3 = v4;
  }

  _objc_release_x1(v2, v3);
}

+ (id)_onQueue_configurationForEnvironment:(id)a3 connectionType:(int64_t)a4
{
  v5 = a3;
  v6 = sub_100012D68(a4);
  v7 = [v5 name];
  v8 = [v6 objectForKey:v7];

  if (v8 && [v8 _isExpired])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 name];
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Config %@ for env %@ expired, flushing", &v13, 0x16u);
    }

    v10 = sub_100012D68(a4);
    v11 = [v5 name];
    [v10 removeObjectForKey:v11];

    v8 = 0;
  }

  return v8;
}

+ (id)configurationForEnvironment:(id)a3 connectionType:(int64_t)a4
{
  v7 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_10010B244(a2, a1);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100014034;
  v21 = sub_1000146AC;
  v22 = 0;
  v8 = sub_100012D24();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000780C8;
  v12[3] = &unk_100187EA0;
  v13 = v7;
  v14 = &v17;
  v15 = a1;
  v16 = a4;
  v9 = v7;
  dispatch_sync(v8, v12);

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

+ (void)loadConfigurationForEnvironment:(id)a3 connectionType:(int64_t)a4 block:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!+[NSThread isMainThread])
  {
    sub_10010B2B8(a2, a1);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 name];
    v12 = sub_10001B3FC(a4);
    *buf = 138412802;
    v22 = v9;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "loadConfigurationForEnvironment: %@ %@ interface: %@", buf, 0x20u);
  }

  v13 = sub_100012D24();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000782D4;
  v16[3] = &unk_100187EC8;
  v19 = a1;
  v20 = a4;
  v17 = v9;
  v18 = v10;
  v14 = v10;
  v15 = v9;
  dispatch_sync(v13, v16);
}

+ (void)invalidateConfigurationForEnvironment:(id)a3 connectionType:(int64_t)a4
{
  v7 = a3;
  if (!+[NSThread isMainThread])
  {
    sub_10010B32C(a2, a1);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v7 name];
    *buf = 138412802;
    v15 = a1;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: invalidateConfigurationForEnvironment: %@ %@", buf, 0x20u);
  }

  v9 = sub_100012D24();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007850C;
  v11[3] = &unk_100187EF0;
  v12 = v7;
  v13 = a4;
  v10 = v7;
  dispatch_sync(v9, v11);
}

- (APSConfiguration)initWithEnvironment:(id)a3 connectionType:(int64_t)a4
{
  v6 = a3;
  v35.receiver = self;
  v35.super_class = APSConfiguration;
  v7 = [(APSConfiguration *)&v35 init];
  if (v7)
  {
    v8 = [v6 name];
    v9 = [v8 copy];
    name = v7->_name;
    v7->_name = v9;

    v11 = [v6 configurationURL];
    v12 = [v11 copy];
    url = v7->_url;
    v7->_url = v12;

    v7->_isLoadBalanced = [v6 isLoadBalanced];
    v7->_connectionType = a4;
    v7->_isLoaded = 0;
    v14 = [NSDate dateWithTimeIntervalSinceNow:900.0];
    expiry = v7->_expiry;
    v7->_expiry = v14;

    v16 = [v6 configurationURL];
    v17 = [NSURLComponents componentsWithURL:v16 resolvingAgainstBaseURL:1];

    v18 = +[NSMutableArray array];
    v31 = [NSURLQueryItem queryItemWithName:@"v" value:@"1"];
    [v18 addObject:?];
    if (v7->_connectionType)
    {
      v19 = @"WiFi";
    }

    else
    {
      v20 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
      v21 = [v20 networkCode];

      if ([v21 length])
      {
        v19 = v21;
      }

      else
      {
        v19 = @"unknown";
      }
    }

    v22 = [NSURLQueryItem queryItemWithName:@"c" value:v19];
    [v18 addObject:v22];
    [v17 setQueryItems:v18];
    v23 = [v17 URL];
    v24 = [NSMutableURLRequest requestWithURL:v23 cachePolicy:1 timeoutInterval:20.0];

    [v24 setHTTPShouldHandleCookies:0];
    if (qword_1001BF7D0 != -1)
    {
      sub_10010B3A0();
    }

    v25 = [NSString stringWithFormat:@"%@/%@ (%@)", qword_1001BF7B8, qword_1001BF7C0, qword_1001BF7C8];
    [v24 setValue:v25 forHTTPHeaderField:@"User-Agent"];

    if (sub_10000712C())
    {
      [v24 setValue:@"true" forHTTPHeaderField:@"x-internal"];
    }

    v26 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v26 set_tlsTrustPinningPolicyName:kSecPolicyNameApplePushService];
    [v26 _setAllowsUCA:1];
    v27 = [NSURLSession sessionWithConfiguration:v26];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000789A0;
    v32[3] = &unk_100187F40;
    v33 = v7;
    v34 = v27;
    v28 = v27;
    v29 = [v28 dataTaskWithRequest:v24 completionHandler:v32];
    [v29 resume];
  }

  return v7;
}

- (void)dealloc
{
  expireTimer = self->_expireTimer;
  if (expireTimer)
  {
    dispatch_source_cancel(expireTimer);
  }

  v4.receiver = self;
  v4.super_class = APSConfiguration;
  [(APSConfiguration *)&v4 dealloc];
}

- (void)addCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = sub_100012D24();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100078CAC;
  v7[3] = &unk_1001872B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_callCompletionBlocksWithError:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    expiry = self->_expiry;
    *buf = 138412802;
    v15 = self;
    v16 = 2112;
    v17 = expiry;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ Calling configuration completion blocks, expiration date %@ error: %@", buf, 0x20u);
  }

  v6 = self->_pendingCompletionBlocks;
  pendingCompletionBlocks = self->_pendingCompletionBlocks;
  self->_pendingCompletionBlocks = 0;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100078EC0;
  block[3] = &unk_100186330;
  v11 = v6;
  v12 = self;
  v13 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_failWithError:(id)a3
{
  v4 = a3;
  v5 = sub_100012D24();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007906C;
  v7[3] = &unk_1001864D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_finishLoadWithResponse:(id)a3 urlHost:(id)a4 data:(id)a5
{
  v18 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:a5 options:0 format:0 error:&v18];
  v7 = v18;
  if (!v6)
  {
    v15 = APSUnderlyingError();
LABEL_9:
    v16 = v15;

    [(APSConfiguration *)self _failWithError:v16];
    v7 = v16;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = APSError();
    goto LABEL_9;
  }

  if (self->_isLoadBalanced && ([v6 objectForKey:@"APNSCourierHostcount"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "unsignedIntegerValue"), v8, !v9))
  {
    v10 = APSError();
    [(APSConfiguration *)self _failWithError:v10];
  }

  else
  {
    objc_storeStrong(&self->_plist, v6);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000792D4;
    v17[3] = &unk_100186D90;
    v17[4] = self;
    v10 = objc_retainBlock(v17);
    v11 = [(APSConfiguration *)self bagExpiryInterval];
    v12 = [v11 integerValue];

    [(APSConfiguration *)self setExpiryInterval:v10 expirationBlock:v12];
    v13 = +[NSDate date];
    fetchDate = self->_fetchDate;
    self->_fetchDate = v13;

    *&self->_isLoaded = 257;
    [(APSConfiguration *)self _callCompletionBlocksWithError:0];
  }

LABEL_10:
}

- (unint64_t)serverCount
{
  v2 = [(NSDictionary *)self->_plist objectForKey:@"APNSCourierHostcount"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)status
{
  v2 = [(NSDictionary *)self->_plist objectForKey:@"APNSCourierStatus"];
  v3 = [v2 BOOLValue];

  return v3 ^ 1;
}

- (void)setExpiryInterval:(double)a3 expirationBlock:(id)a4
{
  v6 = a4;
  if (a3 <= 0.0)
  {
    v10 = [NSDate dateWithTimeIntervalSinceNow:900.0];
    expiry = self->_expiry;
    self->_expiry = v10;
  }

  else
  {
    v7 = [NSDate dateWithTimeIntervalSinceNow:a3];
    v8 = self->_expiry;
    self->_expiry = v7;

    expireTimer = self->_expireTimer;
    if (expireTimer)
    {
      dispatch_source_cancel(expireTimer);
    }

    else
    {
      v12 = sub_100012D24();
      v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v12);
      v14 = self->_expireTimer;
      self->_expireTimer = v13;

      v15 = self->_expireTimer;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000799F0;
      v18[3] = &unk_1001872B8;
      v18[4] = self;
      v19 = v6;
      dispatch_source_set_event_handler(v15, v18);
    }

    v16 = self->_expireTimer;
    v17 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, (a3 / 10.0 * 1000000000.0));
    dispatch_resume(self->_expireTimer);
  }
}

@end