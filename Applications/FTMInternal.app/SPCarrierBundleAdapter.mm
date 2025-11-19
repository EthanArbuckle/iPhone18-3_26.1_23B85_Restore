@interface SPCarrierBundleAdapter
- (BOOL)getBoolean:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)isDualSimON;
- (BOOL)isLLPHSApplicationEnabled;
- (BOOL)isSlicingSetup;
- (BOOL)isSlicingTestApplicationEnabled;
- (SPCarrierBundleAdapter)init;
- (SPCarrierBundleAdapterDelegate)delegate;
- (dispatch_queue_s)get_queue;
- (id)_getCarrierBundleKeyForDataContext:(id)a3;
- (id)_getCarrierBundleKeyValue:(id)a3 forContext:(id)a4;
- (id)getArray:(id)a3 defaultValue:(id)a4;
- (id)getCarrierBundleIdentifier;
- (id)getCarrierBundleVersion;
- (id)getData:(id)a3 defaultValue:(id)a4;
- (id)getDict:(id)a3 defaultValue:(id)a4;
- (id)getNRSlicingCBConfigCurrentDataContext;
- (id)getPhoneNumber;
- (id)getString:(id)a3 defaultValue:(id)a4;
- (int64_t)getInteger:(id)a3 defaultValue:(int64_t)a4;
- (void)_handleSubscriptionAndBundleChange:(id)a3;
- (void)_loadSlicingConfigForContext:(id)a3;
- (void)_loadSubscriptionInfo;
- (void)_loadSubscriptionInfoForContext:(id)a3;
- (void)carrierBundleChange:(id)a3;
- (void)defaultBundleChange;
- (void)operatorBundleChange:(id)a3;
@end

@implementation SPCarrierBundleAdapter

- (SPCarrierBundleAdapter)init
{
  v14.receiver = self;
  v14.super_class = SPCarrierBundleAdapter;
  v2 = [(SPCarrierBundleAdapter *)&v14 init];
  if (v2)
  {
    +[SPLog bootstrap];
    v3 = [[CTBundle alloc] initWithBundleType:1];
    carrierBundleType = v2->_carrierBundleType;
    v2->_carrierBundleType = v3;

    v5 = [[CTBundle alloc] initWithBundleType:2];
    operatorBundleType = v2->_operatorBundleType;
    v2->_operatorBundleType = v5;

    v7 = [[CoreTelephonyClient alloc] initWithQueue:{-[SPCarrierBundleAdapter get_queue](v2, "get_queue")}];
    client = v2->_client;
    v2->_client = v7;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
    v9 = objc_opt_new();
    validSubscriptions = v2->_validSubscriptions;
    v2->_validSubscriptions = v9;

    v11 = objc_opt_new();
    slicingConfiguration = v2->_slicingConfiguration;
    v2->_slicingConfiguration = v11;

    [(SPCarrierBundleAdapter *)v2 _loadSubscriptionInfo];
  }

  return v2;
}

- (void)_loadSubscriptionInfo
{
  client = self->_client;
  v15 = 0;
  v4 = [(CoreTelephonyClient *)client getSubscriptionInfoWithError:&v15];
  v5 = v15;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v4 subscriptionsValid];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SPCarrierBundleAdapter *)self _loadSubscriptionInfoForContext:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_loadSubscriptionInfoForContext:(id)a3
{
  v4 = a3;
  v5 = [(SPCarrierBundleAdapter *)self validSubscriptions];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 slotID]);
  v7 = [v5 objectForKey:v6];

  v8 = [(SPCarrierBundleAdapter *)self validSubscriptions];
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 slotID]);
  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    v11 = qword_100382458;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = [v4 slotID];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating context previously found associated to slotID=%ld", &v14, 0xCu);
    }
  }

  v12 = [(SPCarrierBundleAdapter *)self validSubscriptions];
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 slotID]);
  [v12 setObject:v4 forKey:v13];

  [(SPCarrierBundleAdapter *)self _loadSlicingConfigForContext:v4];
}

- (void)_loadSlicingConfigForContext:(id)a3
{
  v4 = a3;
  client = self->_client;
  v6 = [(SPCarrierBundleAdapter *)self carrierBundleType];
  v15 = 0;
  v7 = [(CoreTelephonyClient *)client copyCarrierBundleValue:v4 key:@"NRSlicing" bundleType:v6 error:&v15];
  v8 = v15;

  if (v8)
  {
    v9 = qword_100382458;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
    {
      sub_100285834(v4, v8, v9);
    }
  }

  else if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(SPCarrierBundleAdapter *)self slicingConfiguration];
      v11 = [NSNumber numberWithInteger:[(__CFString *)v4 slotID]];
      [v10 setObject:v7 forKey:v11];
    }

    else
    {
      v13 = qword_100382458;
      if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [objc_opt_class() description];
        *buf = 138412802;
        v17 = @"NRSlicing";
        v18 = 2112;
        v19 = v14;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "key %@ expected NSDictionary type but found %@ <%@>", buf, 0x20u);
      }
    }
  }

  else
  {
    v12 = qword_100382458;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "no NRSlicing definitions in ctxt=%@", buf, 0xCu);
    }
  }
}

- (BOOL)isDualSimON
{
  v3 = [(SPCarrierBundleAdapter *)self client];
  v8 = 0;
  v4 = [v3 getDualSimCapability:&v8];

  if (v4 != 2)
  {
    return 0;
  }

  v5 = [(SPCarrierBundleAdapter *)self validSubscriptions];
  v6 = [v5 count] > 1;

  return v6;
}

- (id)getCarrierBundleVersion
{
  v3 = objc_alloc_init(NSMutableArray);
  client = self->_client;
  v28 = 0;
  v5 = [(CoreTelephonyClient *)client getSubscriptionInfoWithError:&v28];
  v6 = v28;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v22 = v5;
  v7 = [v5 subscriptionsValid];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      v12 = v6;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v24 + 1) + 8 * v11);
        v14 = [(SPCarrierBundleAdapter *)self client];
        v23 = v12;
        v15 = [v14 copyCarrierBundleVersion:v13 error:&v23];
        v6 = v23;

        if (v15)
        {
          [v3 addObject:v15];
        }

        v11 = v11 + 1;
        v12 = v6;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v9);
  }

  v16 = [v3 count];
  v17 = qword_100382458;
  if (v16)
  {
    v18 = v6 == 0;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v19 = v22;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "CBVersion - %@", buf, 0xCu);
    }

    v20 = v3;
  }

  else
  {
    v19 = v22;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
    {
      sub_1002858CC();
    }

    v20 = 0;
  }

  return v20;
}

- (id)getCarrierBundleIdentifier
{
  v23 = objc_alloc_init(NSMutableArray);
  client = self->_client;
  v29 = 0;
  v4 = [(CoreTelephonyClient *)client getSubscriptionInfoWithError:&v29];
  v5 = v29;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = v4;
  v6 = [v4 subscriptionsValid];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v25 + 1) + 8 * v10);
        v13 = [(SPCarrierBundleAdapter *)self client];
        v14 = [(SPCarrierBundleAdapter *)self carrierBundleType];
        v24 = v11;
        v15 = [v13 copyBundleIdentifier:v12 bundleType:v14 error:&v24];
        v5 = v24;

        if (v15)
        {
          [v23 addObject:v15];
        }

        v10 = v10 + 1;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v8);
  }

  v16 = [v23 count];
  v17 = qword_100382458;
  if (v16)
  {
    v18 = v5 == 0;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v19 = v22;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "CBIdentifier - %@", buf, 0xCu);
    }

    v20 = v23;
  }

  else
  {
    v19 = v22;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
    {
      sub_100285940();
    }

    v20 = 0;
  }

  return v20;
}

- (id)getPhoneNumber
{
  v2 = [(SPCarrierBundleAdapter *)self client];
  v7 = 0;
  v3 = [v2 getCurrentDataSubscriptionContextSync:&v7];
  v4 = v7;

  if (v4)
  {
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
    {
      sub_1002859B4();
    }

    v5 = 0;
  }

  else
  {
    v5 = [v3 phoneNumber];
  }

  return v5;
}

- (id)getNRSlicingCBConfigCurrentDataContext
{
  v3 = [(SPCarrierBundleAdapter *)self client];
  v13 = 0;
  v4 = [v3 getCurrentDataSubscriptionContextSync:&v13];
  v5 = v13;

  if (v5)
  {
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
    {
      sub_1002859B4();
    }

    v6 = 0;
  }

  else
  {
    v7 = [(SPCarrierBundleAdapter *)self slicingConfiguration];
    v8 = [v7 allKeys];
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 slotID]);
    if ([v8 containsObject:v9])
    {
      v10 = [(SPCarrierBundleAdapter *)self slicingConfiguration];
      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 slotID]);
      v6 = [v10 objectForKey:v11];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isSlicingSetup
{
  v2 = [(SPCarrierBundleAdapter *)self getNRSlicingCBConfigCurrentDataContext];
  v3 = [v2 allValues];
  if ([v3 count])
  {
    v4 = [v2 allValues];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSlicingTestApplicationEnabled
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(SPCarrierBundleAdapter *)self slicingConfiguration];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v25;
    *&v6 = 138412290;
    v23 = v6;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [(SPCarrierBundleAdapter *)self slicingConfiguration];
        v12 = [v11 objectForKey:v10];

        v13 = [v12 objectForKey:@"__SlicingTestModule__"];
        if (v13)
        {
          v17 = v13;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v17 objectForKey:@"Enabled"];
            v19 = qword_100382458;
            if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [v18 BOOLValue];
              v21 = @"Disabled";
              *buf = 134218498;
              v29 = v10;
              if (v20)
              {
                v21 = @"Enabled";
              }

              v30 = 2112;
              v31 = @"Enabled";
              v32 = 2112;
              v33 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Slicing Test Application for slot=%ld %@=%@", buf, 0x20u);
            }

            v16 = [v18 BOOLValue];
          }

          else
          {
            if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
            {
              sub_1002859F4();
            }

            v16 = 0;
          }

          return v16;
        }

        v14 = qword_100382458;
        if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v23;
          v29 = @"__SlicingTestModule__";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Missing key %@. Defaulting to disabled", buf, 0xCu);
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = qword_100382458;
  v16 = 0;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Slicing Test Application enabled=NO", buf, 2u);
    return 0;
  }

  return v16;
}

- (BOOL)isLLPHSApplicationEnabled
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [(SPCarrierBundleAdapter *)self slicingConfiguration];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 138412290;
    v22 = v6;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [(SPCarrierBundleAdapter *)self slicingConfiguration];
        v12 = [v11 objectForKey:v10];

        v13 = [(SPCarrierBundleAdapter *)self getNRSlicingCBConfigCurrentDataContext];
        if ([(SPCarrierBundleAdapter *)self isSlicingSetup])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v13 objectForKey:@"SupportsLLPHS"];
            v18 = qword_100382458;
            if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v17 BOOLValue];
              v20 = @"Disabled";
              *buf = 134218498;
              v28 = v10;
              v29 = 2112;
              if (v19)
              {
                v20 = @"Enabled";
              }

              v30 = @"SupportsLLPHS";
              v31 = 2112;
              v32 = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "LLPHS for slot=%ld %@=%@", buf, 0x20u);
            }

            v16 = [v17 BOOLValue];
          }

          else
          {
            if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
            {
              sub_100285A74();
            }

            v16 = 0;
          }

          return v16;
        }

        v14 = qword_100382458;
        if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v22;
          v28 = @"SupportsLLPHS";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Missing key %@. Defaulting to disabled", buf, 0xCu);
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = qword_100382458;
  v16 = 0;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "LLPHS not enabled", buf, 2u);
    return 0;
  }

  return v16;
}

- (int64_t)getInteger:(id)a3 defaultValue:(int64_t)a4
{
  v5 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyForDataContext:a3];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a4 = [v5 integerValue];
    }
  }

  return a4;
}

- (id)getString:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyForDataContext:a3];
  if (!v7 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9 = v7, (isKindOfClass & 1) == 0))
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

- (id)getData:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyForDataContext:a3];
  if (!v7 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9 = v7, (isKindOfClass & 1) == 0))
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

- (id)getArray:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyForDataContext:a3];
  if (!v7 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9 = v7, (isKindOfClass & 1) == 0))
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

- (BOOL)getBoolean:(id)a3 defaultValue:(BOOL)a4
{
  v5 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyForDataContext:a3];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (id)getDict:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyForDataContext:a3];
  if (!v7 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9 = v7, (isKindOfClass & 1) == 0))
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

- (id)_getCarrierBundleKeyForDataContext:(id)a3
{
  v4 = a3;
  v5 = [(SPCarrierBundleAdapter *)self client];
  v10 = 0;
  v6 = [v5 getCurrentDataSubscriptionContextSync:&v10];
  v7 = v10;

  if (v7)
  {
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
    {
      sub_100285AF4();
    }

    v8 = 0;
  }

  else
  {
    v8 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyValue:v4 forContext:v6];
  }

  return v8;
}

- (id)_getCarrierBundleKeyValue:(id)a3 forContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SPCarrierBundleAdapter *)self client];
  v9 = [(SPCarrierBundleAdapter *)self carrierBundleType];
  v15 = 0;
  v10 = [v8 copyCarrierBundleValue:v7 key:v6 bundleType:v9 error:&v15];
  v11 = v15;

  if (v11)
  {
    v12 = qword_100382458;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to read key %@ from context=%@ with error=%@", buf, 0x20u);
    }

    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  return v13;
}

- (void)_handleSubscriptionAndBundleChange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(SPCarrierBundleAdapter *)self _loadSubscriptionInfoForContext:v4];
  }

  else
  {
    [(SPCarrierBundleAdapter *)self _loadSubscriptionInfo];
  }

  v5 = [(SPCarrierBundleAdapter *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(SPCarrierBundleAdapter *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = qword_100382458;
      if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notifying carrier bundle update to delegate", buf, 2u);
      }

      objc_initWeak(buf, self);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000218D8;
      block[3] = &unk_100317420;
      objc_copyWeak(&v11, buf);
      dispatch_async(&_dispatch_main_q, block);
      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }
  }
}

- (dispatch_queue_s)get_queue
{
  if (qword_10037A520 != -1)
  {
    sub_100285B34();
  }

  return qword_10037A528;
}

- (void)defaultBundleChange
{
  v3 = qword_100382458;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "default bundle changed. reloading configuration", v4, 2u);
  }

  [(SPCarrierBundleAdapter *)self _handleSubscriptionAndBundleChange:0];
}

- (void)carrierBundleChange:(id)a3
{
  v4 = a3;
  v5 = qword_100382458;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "carrier bundle changed for ctxt=%@. reloading configuration", &v6, 0xCu);
  }

  [(SPCarrierBundleAdapter *)self _handleSubscriptionAndBundleChange:v4];
}

- (void)operatorBundleChange:(id)a3
{
  v4 = qword_100382458;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "operator bundle changed for ctxt=%@. Ignoring update", &v5, 0xCu);
  }
}

- (SPCarrierBundleAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end