@interface CellularMonitor
- (CellularMonitor)init;
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)internetDataStatus:(id)status;
- (void)servingNetworkChanged:(id)changed;
@end

@implementation CellularMonitor

- (CellularMonitor)init
{
  v17.receiver = self;
  v17.super_class = CellularMonitor;
  v2 = [(CellularMonitor *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.CellularMonitor", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = [[CoreTelephonyClient alloc] initWithQueue:v2->_dispatchQueue];
    telephonyClient = v2->_telephonyClient;
    v2->_telephonyClient = v6;

    [(CoreTelephonyClient *)v2->_telephonyClient setDelegate:v2];
    if (os_variant_has_internal_content())
    {
      objc_initWeak(&location, v2);
      v8 = dispatch_get_global_queue(21, 0);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10032C628;
      handler[3] = &unk_10051DDD0;
      objc_copyWeak(&v15, &location);
      notify_register_dispatch("com.apple.appstored.emulatenetwork", &v2->_emulationToken, v8, handler);

      v9 = sub_100296A50();
      sub_10032C690(v2, v9);

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    v10 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10032C734;
    block[3] = &unk_10051AF98;
    v13 = v2;
    dispatch_async(v10, block);
  }

  return v2;
}

- (void)dealloc
{
  [(CoreTelephonyClient *)self->_telephonyClient setDelegate:0];
  v3.receiver = self;
  v3.super_class = CellularMonitor;
  [(CellularMonitor *)&v3 dealloc];
}

- (void)internetDataStatus:(id)status
{
  v4 = -[ASDCellularIdentity copyWithRoaming:](self->_identity, "copyWithRoaming:", [status inHomeCountry] ^ 1);
  identity = self->_identity;
  self->_identity = v4;
}

- (void)servingNetworkChanged:(id)changed
{
  if (self)
  {
    subscriptionContext = self->_subscriptionContext;
    telephonyClient = self->_telephonyClient;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10032CF5C;
    v5[3] = &unk_100523878;
    v5[4] = self;
    [(CoreTelephonyClient *)telephonyClient getDataStatus:subscriptionContext completion:v5];
  }
}

- (void)activeSubscriptionsDidChange
{
  telephonyClient = self->_telephonyClient;
  v25 = 0;
  v4 = [(CoreTelephonyClient *)telephonyClient getCurrentDataSubscriptionContextSync:&v25];
  v5 = v25;
  subscriptionContext = self->_subscriptionContext;
  self->_subscriptionContext = v4;

  v7 = self->_subscriptionContext;
  if (v7)
  {
    v8 = self->_telephonyClient;
    v24 = v5;
    v9 = [ASDCellularIdentity identityForSubscription:v7 usingClient:v8 error:&v24];
    v10 = v24;

    identity = self->_identity;
    self->_identity = v9;

    simIdentity = [(ASDCellularIdentity *)self->_identity simIdentity];
    LOBYTE(v9) = [simIdentity isEqualToString:@"00000000000000000000"];

    if (v9)
    {
      v13 = ASDLogHandleForCategory();
      v14 = v13;
      if (v10)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v27 = v10;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[Network] Unable to identify cellular data subscription: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Network] There is no cellular data subscription", buf, 2u);
        }

        v10 = v14;
      }
    }

    else
    {
      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        simIdentity2 = [(ASDCellularIdentity *)self->_identity simIdentity];
        v20 = sub_1002C56F4(simIdentity2);
        *buf = 138543362;
        v27 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[Network] Cellular data subscription became: %{public}@", buf, 0xCu);
      }

      v21 = sub_1002B0154();
      v22 = sub_1002B0280(v21);

      if (v22 && (v22[18] & 1) != 0)
      {
        defaultsKey = [(ASDCellularIdentity *)self->_identity defaultsKey];
        sub_1003D4024(AppDefaultsManager, defaultsKey, @"ActiveCompanionSim");
      }
    }
  }

  else
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v5;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[Network] Unable to fetch current cellular data subscription: %{public}@", buf, 0xCu);
    }

    v16 = +[ASDCellularIdentity nullIdentity];
    v17 = self->_identity;
    self->_identity = v16;

    v10 = v5;
  }
}

@end