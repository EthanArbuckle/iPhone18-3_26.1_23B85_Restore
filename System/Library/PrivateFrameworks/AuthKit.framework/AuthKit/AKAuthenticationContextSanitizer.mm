@interface AKAuthenticationContextSanitizer
- (AKAccountManager)accountManager;
- (AKAuthenticationContextSanitizer)init;
- (AKDevice)device;
- (BOOL)_sanitizeContext:(id)a3;
- (BOOL)_validateAppleIDAuthContext:(id)a3;
- (BOOL)_validateAppleIDAuthContext:(id)a3 forAuthMode:(unint64_t)a4;
- (BOOL)_validateAuthContext:(id)a3;
- (BOOL)_validateFederatedAppleIDAuthContext:(id)a3;
- (BOOL)_validateNativeAppleIDAuthContext:(id)a3;
- (BOOL)_validatePasswordlessAppleIDAuthContext:(id)a3;
- (BOOL)_validateSilentPreferredFederatedAppleIDAuthContext:(id)a3;
- (BOOL)sanitizeContext:(id)a3;
- (id)_accountForAppleIDAuthContext:(id)a3;
- (void)_annotateTransformationOfProperty:(id)a3 fromValue:(id)a4 toValue:(id)a5;
- (void)setAccountManager:(id)a3;
- (void)setDevice:(id)a3;
@end

@implementation AKAuthenticationContextSanitizer

- (AKAuthenticationContextSanitizer)init
{
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = AKAuthenticationContextSanitizer;
  v13 = [(AKAuthenticationContextSanitizer *)&v11 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v2 = +[AKDevice currentDevice];
    device = v13->_device;
    v13->_device = v2;
    _objc_release(device);
    v4 = +[AKAccountManager sharedInstance];
    accountManager = v13->_accountManager;
    v13->_accountManager = v4;
    _objc_release(accountManager);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.akd.context-validator", v10);
    queue = v13->_queue;
    v13->_queue = v6;
    _objc_release(queue);
    _objc_release(v10);
  }

  v9 = _objc_retain(v13);
  objc_storeStrong(&v13, 0);
  return v9;
}

- (BOOL)sanitizeContext:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  queue = v19->_queue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10010FEE4;
  v10 = &unk_100323940;
  v12[1] = &v13;
  v11 = _objc_retain(v19);
  v12[0] = _objc_retain(location[0]);
  dispatch_sync(queue, &v6);
  v5 = *(v14 + 24);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (AKAccountManager)accountManager
{
  v17[2] = self;
  v17[1] = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 838860800;
  v14 = 48;
  v15 = sub_100003AE4;
  v16 = sub_100011260;
  v17[0] = 0;
  queue = self->_queue;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100110098;
  v9 = &unk_100321010;
  v10[1] = &v11;
  v10[0] = _objc_retain(self);
  dispatch_sync(queue, &v5);
  v4 = _objc_retain(v12[5]);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  objc_storeStrong(v17, 0);

  return v4;
}

- (void)setAccountManager:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_queue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001101F0;
  v8 = &unk_10031F078;
  v9 = _objc_retain(v12);
  v10 = _objc_retain(location[0]);
  dispatch_sync(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (AKDevice)device
{
  v17[2] = self;
  v17[1] = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 838860800;
  v14 = 48;
  v15 = sub_100003AE4;
  v16 = sub_100011260;
  v17[0] = 0;
  queue = self->_queue;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100110390;
  v9 = &unk_100321010;
  v10[1] = &v11;
  v10[0] = _objc_retain(self);
  dispatch_sync(queue, &v5);
  v4 = _objc_retain(v12[5]);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  objc_storeStrong(v17, 0);

  return v4;
}

- (void)setDevice:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_queue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001104E8;
  v8 = &unk_10031F078;
  v9 = _objc_retain(v12);
  v10 = _objc_retain(location[0]);
  dispatch_sync(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_sanitizeContext:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[NSMutableDictionary dictionary];
  transformationAnnotations = v11->_transformationAnnotations;
  v11->_transformationAnnotations = v3;
  _objc_release(transformationAnnotations);
  v9 = [(AKAuthenticationContextSanitizer *)v11 _validateAuthContext:location[0]];
  v6 = v11->_transformationAnnotations;
  v8 = _objc_retain(v11);
  [(NSMutableDictionary *)v6 enumerateKeysAndObjectsUsingBlock:?];
  v7 = v9;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (BOOL)_validateAuthContext:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v11, v9, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, type, "%@: Validating authentication context (%@)", v11, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v3 = objc_opt_class();
  v5 = sub_100110924(v3, location[0]);
  v10 = !v5 || [(AKAuthenticationContextSanitizer *)v9 _validateAppleIDAuthContext:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (BOOL)_validateAppleIDAuthContext:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = -[AKAuthenticationContextSanitizer _validateAppleIDAuthContext:forAuthMode:](v5, "_validateAppleIDAuthContext:forAuthMode:", location[0], [location[0] authenticationMode]);
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)_validateAppleIDAuthContext:(id)a3 forAuthMode:(unint64_t)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4)
  {
    if (a4 == 1)
    {
      if ([(AKAuthenticationContextSanitizer *)v7 _validateNativeAppleIDAuthContext:location[0]])
      {
        goto LABEL_15;
      }

      v8 = 0;
    }

    else
    {
      if (a4 != 2)
      {
        if (a4 == 3 && ![(AKAuthenticationContextSanitizer *)v7 _validatePasswordlessAppleIDAuthContext:location[0]])
        {
          v8 = 0;
          goto LABEL_16;
        }

LABEL_15:
        v8 = 1;
        goto LABEL_16;
      }

      if ([(AKAuthenticationContextSanitizer *)v7 _validateFederatedAppleIDAuthContext:location[0]])
      {
        goto LABEL_15;
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_16:
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (BOOL)_validateNativeAppleIDAuthContext:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] authenticationType] == 3)
  {
    [(AKAuthenticationContextSanitizer *)v15 _annotateTransformationOfProperty:@"authenticationType" fromValue:@"InteractiveUsernameOnly" toValue:@"Interactive"];
    [location[0] setAuthenticationType:2];
  }

  v9 = [location[0] companionDevice];
  v8 = [v9 uniqueDeviceIdentifier];
  v7 = +[AKDevice currentDevice];
  v6 = [v7 uniqueDeviceIdentifier];
  v10 = [v8 isEqualToString:?];
  _objc_release(v6);
  _objc_release(v7);
  _objc_release(v8);
  _objc_release(v9);
  if (v10)
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      log = v13;
      type = v12;
      sub_10001CEEC(v11);
      _os_log_impl(&_mh_execute_header, log, type, "Ignoring companion device and proceeding with silent auth", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    [location[0] setCompanionDevice:0];
  }

  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)_validateFederatedAppleIDAuthContext:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] authenticationType];
  if (v4)
  {
    if (v4 == 2)
    {
      [(AKAuthenticationContextSanitizer *)v6 _annotateTransformationOfProperty:@"authenticationType" fromValue:@"Interactive" toValue:@"InteractiveUsernameOnly"];
      [location[0] setAuthenticationType:3];
    }
  }

  else if (![(AKAuthenticationContextSanitizer *)v6 _validateSilentPreferredFederatedAppleIDAuthContext:location[0]])
  {
    v7 = 0;
    goto LABEL_12;
  }

  if ([location[0] authenticationType] == 3 && (-[AKDevice isMultiUserMode](v6->_device, "isMultiUserMode") & 1) != 0)
  {
    [(AKAuthenticationContextSanitizer *)v6 _annotateTransformationOfProperty:@"authenticationType" fromValue:@"InteractiveUsernameOnly" toValue:@"Interactive"];
    [location[0] setAuthenticationType:2];
  }

  v7 = 1;
LABEL_12:
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (BOOL)_validateSilentPreferredFederatedAppleIDAuthContext:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  v8 = [(AKAuthenticationContextSanitizer *)v11 _accountForAppleIDAuthContext:location[0]];
  if (v8)
  {
    v3 = [(AKAccountManager *)v11->_accountManager continuationTokenForAccount:v8];
    v9 = v3 != 0;
    _objc_release(v3);
  }

  v6 = 0;
  v5 = 1;
  if (v9)
  {
    v7 = [location[0] proxiedDevice];
    v6 = 1;
    v5 = v7 != 0;
  }

  if (v6)
  {
    _objc_release(v7);
  }

  if (v5)
  {
    [(AKAuthenticationContextSanitizer *)v11 _annotateTransformationOfProperty:@"authenticationType" fromValue:@"SilentPreferred" toValue:@"InteractiveUsernameOnly"];
    [location[0] setAuthenticationType:3];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)_validatePasswordlessAppleIDAuthContext:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] authenticationType];
  if (v4 <= 1)
  {
    v7 = 0;
  }

  else
  {
    if (v4 == 2)
    {
      [(AKAuthenticationContextSanitizer *)v6 _annotateTransformationOfProperty:@"authenticationType" fromValue:@"Interactive" toValue:@"InteractiveUsernameOnly"];
      [location[0] setAuthenticationType:3];
    }

    v7 = 1;
  }

  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (id)_accountForAppleIDAuthContext:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  obj = 0;
  v5 = [location[0] authKitAccount:&obj];
  objc_storeStrong(&v9, obj);
  v8 = v5;
  if (v9)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10004DCC8(v12, v11, location[0], v9);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%@: Failed to retrieve AuthKit account for context (%@) with error: %@", v12, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v4 = _objc_retain(v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_annotateTransformationOfProperty:(id)a3 fromValue:(id)a4 toValue:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  v7 = [NSString stringWithFormat:@"%@ -> %@", v9, v8];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end