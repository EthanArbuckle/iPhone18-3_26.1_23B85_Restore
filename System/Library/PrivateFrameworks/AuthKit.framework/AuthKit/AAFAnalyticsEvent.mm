@interface AAFAnalyticsEvent
+ (id)ak_analyticsEventWithContext:(id)context client:(id)client eventName:(id)name error:(id)error;
+ (id)ak_analyticsEventWithContext:(id)context eventName:(id)name error:(id)error;
+ (id)ak_analyticsEventWithEventName:(id)name account:(id)account error:(id)error;
+ (id)ak_analyticsEventWithEventName:(id)name error:(id)error;
+ (id)ak_analyticsEventWithRUITelemetryElement:(id)element eventName:(id)name error:(id)error;
+ (id)encodedURLWithPrefix:(id)prefix url:(id)url;
+ (unint64_t)elementIndex:(id)index;
+ (void)encodeElementNameWithIndexPostFix:(id)fix prefix:(id)prefix element:(id)element activeElements:(id)elements;
+ (void)encodedElementNameWithDomainPrefix:(id)prefix element:(id)element activeElements:(id)elements;
- (void)ak_updateTelemetryIdWithAccount:(id)account;
- (void)ak_updateWithAuthenticationResults:(id)results authContext:(id)context error:(id)error;
@end

@implementation AAFAnalyticsEvent

+ (id)ak_analyticsEventWithEventName:(id)name error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v9 = 0;
  objc_storeStrong(&v9, error);
  v8 = +[AKAccountManager sharedInstance];
  primaryAuthKitAccount = [(AKAccountManager *)v8 primaryAuthKitAccount];
  v6 = [selfCopy ak_analyticsEventWithEventName:location[0] account:primaryAuthKitAccount error:v9];
  objc_storeStrong(&primaryAuthKitAccount, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)ak_analyticsEventWithEventName:(id)name account:(id)account error:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v12 = 0;
  objc_storeStrong(&v12, account);
  v11 = 0;
  objc_storeStrong(&v11, error);
  v5 = [AAFAnalyticsEvent alloc];
  v10 = [v5 initWithEventName:location[0] eventCategory:&off_100339070 initData:0];
  if (v11)
  {
    [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:kAAFDidSucceed];
  }

  else
  {
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:kAAFDidSucceed];
  }

  [v10 populateUnderlyingErrorsStartingWithRootError:v11];
  [v10 ak_updateTelemetryIdWithAccount:v12];
  v7 = _objc_retain(v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (void)ak_updateTelemetryIdWithAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  if (location[0])
  {
    v4 = [(AAFAnalyticsEvent *)selfCopy objectForKeyedSubscript:kAAFDeviceSessionIdString];
    _objc_release(v4);
    if (!v4)
    {
      v7 = +[AKAccountManager sharedInstance];
      v3 = [(AKAccountManager *)v7 telemetryDeviceSessionIDForAccount:location[0]];
      [AAFAnalyticsEvent setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
      _objc_release(v3);
      objc_storeStrong(&v7, 0);
    }

    v8 = 0;
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = 2;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      log = v11;
      type = v10;
      sub_10001CEEC(v9);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Not updating analytics event with nil account", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    v8 = 1;
  }

  objc_storeStrong(location, 0);
}

+ (id)ak_analyticsEventWithContext:(id)context eventName:(id)name error:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v19 = 0;
  objc_storeStrong(&v19, name);
  v18 = 0;
  objc_storeStrong(&v18, error);
  v17 = [location[0] authKitAccount:0];
  v16 = [AAFAnalyticsEvent ak_analyticsEventWithEventName:v19 account:v17 error:v18];
  telemetryFlowID = [location[0] telemetryFlowID];
  _objc_release(telemetryFlowID);
  if (!telemetryFlowID)
  {
    v15 = _AKLogSystem();
    v14 = 2;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      log = v15;
      type = v14;
      sub_10001CEEC(v13);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Received nil flowId in AKAppleIDAuthenticationContext", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
  }

  telemetryFlowID2 = [location[0] telemetryFlowID];
  [v16 setObject:? forKeyedSubscript:?];
  _objc_release(telemetryFlowID2);
  v7 = _objc_retain(v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)ak_analyticsEventWithContext:(id)context client:(id)client eventName:(id)name error:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v15 = 0;
  objc_storeStrong(&v15, client);
  v14 = 0;
  objc_storeStrong(&v14, name);
  v13 = 0;
  objc_storeStrong(&v13, error);
  v12 = [AAFAnalyticsEvent ak_analyticsEventWithContext:location[0] eventName:v14 error:v13];
  name = [v15 name];
  [v12 setObject:? forKeyedSubscript:?];
  _objc_release(name);
  v11 = _objc_retain(v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (void)ak_updateWithAuthenticationResults:(id)results authContext:(id)context error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v17 = 0;
  objc_storeStrong(&v17, context);
  v16 = 0;
  objc_storeStrong(&v16, error);
  v15 = 0;
  v13 = 0;
  v9 = [v17 authKitAccount:&v13];
  objc_storeStrong(&v15, v13);
  v14 = v9;
  if (!v9 || v15)
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v20, v16);
      _os_log_debug_impl(&_mh_execute_header, v12, v11, "Error getting account from context during auth for telemetry: %@", v20, 0xCu);
    }

    objc_storeStrong(&v12, 0);
  }

  telemetryFlowID = [v17 telemetryFlowID];
  [AAFAnalyticsEvent setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(telemetryFlowID);
  [(AAFAnalyticsEvent *)selfCopy ak_updateTelemetryIdWithAccount:v14];
  if (location[0])
  {
    [(AAFAnalyticsEvent *)selfCopy setObject:&__kCFBooleanTrue forKeyedSubscript:kAAFDidSucceed];
  }

  else
  {
    [(AAFAnalyticsEvent *)selfCopy setObject:&__kCFBooleanFalse forKeyedSubscript:kAAFDidSucceed];
    [(AAFAnalyticsEvent *)selfCopy populateUnderlyingErrorsStartingWithRootError:v16];
  }

  v10 = +[AKAccountManager sharedInstance];
  if (v14)
  {
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 securityLevelForAccount:v14]);
    [AAFAnalyticsEvent setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    _objc_release(v5);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

+ (id)encodedURLWithPrefix:(id)prefix url:(id)url
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, prefix);
  v12 = 0;
  objc_storeStrong(&v12, url);
  if (v12 && (v9 = [v12 host], _objc_release(v9), v9))
  {
    pathComponents = [v12 pathComponents];
    v11 = [pathComponents mutableCopy];
    _objc_release(pathComponents);
    if ([v11 count] <= 1)
    {
      v14 = _objc_retain(location[0]);
    }

    else
    {
      [v11 removeObjectAtIndex:0];
      v6 = location[0];
      v7 = [v11 componentsJoinedByString:@"_"];
      v14 = [NSString stringWithFormat:@"%@%@%@", v6, @".", v7];
      _objc_release(v7);
    }

    objc_storeStrong(&v11, 0);
  }

  else
  {
    v14 = _objc_retain(&stru_100330538);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  v4 = v14;

  return v4;
}

+ (void)encodeElementNameWithIndexPostFix:(id)fix prefix:(id)prefix element:(id)element activeElements:(id)elements
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fix);
  v43 = 0;
  objc_storeStrong(&v43, prefix);
  v42 = 0;
  objc_storeStrong(&v42, element);
  v41 = 0;
  objc_storeStrong(&v41, elements);
  v40 = 0;
  children = [v42 children];
  v28 = [children count];
  _objc_release(children);
  if (v28)
  {
    v37 = objc_alloc_init(NSMutableDictionary);
    children2 = [v42 children];
    v29 = _NSConcreteStackBlock;
    v30 = -1073741824;
    v31 = 0;
    v32 = sub_1000FB670;
    v33 = &unk_100323488;
    v34 = _objc_retain(v37);
    v35 = _objc_retain(v43);
    v36 = _objc_retain(v41);
    [children2 enumerateObjectsUsingBlock:&v29];
    _objc_release(children2);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v37, 0);
    v38 = 0;
  }

  else
  {
    v11 = location[0];
    name = [v42 name];
    v6 = [v11 objectForKeyedSubscript:?];
    v7 = v40;
    v40 = v6;
    _objc_release(v7);
    _objc_release(name);
    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v40 intValue] + 1);
    v9 = v40;
    v40 = v8;
    _objc_release(v9);
    v13 = location[0];
    name2 = [v42 name];
    [v13 setObject:v40 forKeyedSubscript:?];
    _objc_release(name2);
    v15 = v43;
    v16 = [v42 url];
    v39 = [AAFAnalyticsEvent encodedURLWithPrefix:v15 url:?];
    _objc_release(v16);
    v19 = v41;
    v18 = v39;
    name3 = [v42 name];
    v17 = location[0];
    name4 = [v42 name];
    v21 = [v17 objectForKeyedSubscript:?];
    v20 = [NSString stringWithFormat:@"%@_%@_%@", v18, name3, v21];
    [v19 addObject:?];
    _objc_release(v20);
    _objc_release(v21);
    _objc_release(name4);
    _objc_release(name3);
    v38 = 1;
    objc_storeStrong(&v39, 0);
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
}

+ (void)encodedElementNameWithDomainPrefix:(id)prefix element:(id)element activeElements:(id)elements
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, prefix);
  v9 = 0;
  objc_storeStrong(&v9, element);
  v8 = 0;
  objc_storeStrong(&v8, elements);
  v7 = objc_alloc_init(NSMutableDictionary);
  [AAFAnalyticsEvent encodeElementNameWithIndexPostFix:v7 prefix:location[0] element:v9 activeElements:v8];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

+ (unint64_t)elementIndex:(id)index
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, index);
  parent = [location[0] parent];
  if (parent)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x20000000;
    v14 = 32;
    v15 = 0;
    children = [parent children];
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_1000FB9A4;
    v9 = &unk_1003234B0;
    v10[0] = _objc_retain(location[0]);
    v10[1] = &v11;
    [children enumerateObjectsUsingBlock:&v5];
    _objc_release(children);
    v19 = v12[3];
    v16 = 1;
    objc_storeStrong(v10, 0);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v19 = 0;
    v16 = 1;
  }

  objc_storeStrong(&parent, 0);
  objc_storeStrong(location, 0);
  return v19;
}

+ (id)ak_analyticsEventWithRUITelemetryElement:(id)element eventName:(id)name error:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  v21 = 0;
  objc_storeStrong(&v21, name);
  v20 = 0;
  objc_storeStrong(&v20, error);
  v19 = _objc_retain(@"com.apple.remoteui");
  v18 = [AAFAnalyticsEvent ak_analyticsEventWithEventName:v21 error:v20];
  v13 = [location[0] url];
  v17 = [AAFAnalyticsEvent encodedURLWithPrefix:v19 url:?];
  _objc_release(v13);
  v16 = [AAFAnalyticsEvent elementIndex:location[0]];
  name = [location[0] name];
  v15 = [name length];
  _objc_release(name);
  if (v15)
  {
    if (v16)
    {
      name2 = [location[0] name];
      v9 = [NSString stringWithFormat:@"%@_%@_%lu", v17, name2, v16];
      [v18 setObject:? forKeyedSubscript:?];
      _objc_release(v9);
      _objc_release(name2);
    }

    else
    {
      name3 = [location[0] name];
      v7 = [NSString stringWithFormat:@"%@_%@", v17, name3];
      [v18 setObject:? forKeyedSubscript:?];
      _objc_release(v7);
      _objc_release(name3);
    }
  }

  else
  {
    [v18 setObject:v17 forKeyedSubscript:@"elementIdentifier"];
  }

  if (v20)
  {
    [v18 populateUnderlyingErrorsStartingWithRootError:v20];
  }

  v6 = _objc_retain(v18);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end