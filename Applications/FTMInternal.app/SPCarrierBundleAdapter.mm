@interface SPCarrierBundleAdapter
- (BOOL)getBoolean:(id)boolean defaultValue:(BOOL)value;
- (BOOL)isDualSimON;
- (BOOL)isLLPHSApplicationEnabled;
- (BOOL)isSlicingSetup;
- (BOOL)isSlicingTestApplicationEnabled;
- (SPCarrierBundleAdapter)init;
- (SPCarrierBundleAdapterDelegate)delegate;
- (dispatch_queue_s)get_queue;
- (id)_getCarrierBundleKeyForDataContext:(id)context;
- (id)_getCarrierBundleKeyValue:(id)value forContext:(id)context;
- (id)getArray:(id)array defaultValue:(id)value;
- (id)getCarrierBundleIdentifier;
- (id)getCarrierBundleVersion;
- (id)getData:(id)data defaultValue:(id)value;
- (id)getDict:(id)dict defaultValue:(id)value;
- (id)getNRSlicingCBConfigCurrentDataContext;
- (id)getPhoneNumber;
- (id)getString:(id)string defaultValue:(id)value;
- (int64_t)getInteger:(id)integer defaultValue:(int64_t)value;
- (void)_handleSubscriptionAndBundleChange:(id)change;
- (void)_loadSlicingConfigForContext:(id)context;
- (void)_loadSubscriptionInfo;
- (void)_loadSubscriptionInfoForContext:(id)context;
- (void)carrierBundleChange:(id)change;
- (void)defaultBundleChange;
- (void)operatorBundleChange:(id)change;
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
  subscriptionsValid = [v4 subscriptionsValid];
  v7 = [subscriptionsValid countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(subscriptionsValid);
        }

        [(SPCarrierBundleAdapter *)self _loadSubscriptionInfoForContext:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [subscriptionsValid countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_loadSubscriptionInfoForContext:(id)context
{
  contextCopy = context;
  validSubscriptions = [(SPCarrierBundleAdapter *)self validSubscriptions];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [contextCopy slotID]);
  v7 = [validSubscriptions objectForKey:v6];

  validSubscriptions2 = [(SPCarrierBundleAdapter *)self validSubscriptions];
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [contextCopy slotID]);
  v10 = [validSubscriptions2 objectForKey:v9];

  if (v10)
  {
    v11 = qword_100382458;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      slotID = [contextCopy slotID];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating context previously found associated to slotID=%ld", &v14, 0xCu);
    }
  }

  validSubscriptions3 = [(SPCarrierBundleAdapter *)self validSubscriptions];
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [contextCopy slotID]);
  [validSubscriptions3 setObject:contextCopy forKey:v13];

  [(SPCarrierBundleAdapter *)self _loadSlicingConfigForContext:contextCopy];
}

- (void)_loadSlicingConfigForContext:(id)context
{
  contextCopy = context;
  client = self->_client;
  carrierBundleType = [(SPCarrierBundleAdapter *)self carrierBundleType];
  v15 = 0;
  v7 = [(CoreTelephonyClient *)client copyCarrierBundleValue:contextCopy key:@"NRSlicing" bundleType:carrierBundleType error:&v15];
  v8 = v15;

  if (v8)
  {
    v9 = qword_100382458;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
    {
      sub_100285834(contextCopy, v8, v9);
    }
  }

  else if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      slicingConfiguration = [(SPCarrierBundleAdapter *)self slicingConfiguration];
      v11 = [NSNumber numberWithInteger:[(__CFString *)contextCopy slotID]];
      [slicingConfiguration setObject:v7 forKey:v11];
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
      v17 = contextCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "no NRSlicing definitions in ctxt=%@", buf, 0xCu);
    }
  }
}

- (BOOL)isDualSimON
{
  client = [(SPCarrierBundleAdapter *)self client];
  v8 = 0;
  v4 = [client getDualSimCapability:&v8];

  if (v4 != 2)
  {
    return 0;
  }

  validSubscriptions = [(SPCarrierBundleAdapter *)self validSubscriptions];
  v6 = [validSubscriptions count] > 1;

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
  subscriptionsValid = [v5 subscriptionsValid];
  v8 = [subscriptionsValid countByEnumeratingWithState:&v24 objects:v31 count:16];
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
          objc_enumerationMutation(subscriptionsValid);
        }

        v13 = *(*(&v24 + 1) + 8 * v11);
        client = [(SPCarrierBundleAdapter *)self client];
        v23 = v12;
        v15 = [client copyCarrierBundleVersion:v13 error:&v23];
        v6 = v23;

        if (v15)
        {
          [v3 addObject:v15];
        }

        v11 = v11 + 1;
        v12 = v6;
      }

      while (v9 != v11);
      v9 = [subscriptionsValid countByEnumeratingWithState:&v24 objects:v31 count:16];
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
  subscriptionsValid = [v4 subscriptionsValid];
  v7 = [subscriptionsValid countByEnumeratingWithState:&v25 objects:v32 count:16];
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
          objc_enumerationMutation(subscriptionsValid);
        }

        v12 = *(*(&v25 + 1) + 8 * v10);
        client = [(SPCarrierBundleAdapter *)self client];
        carrierBundleType = [(SPCarrierBundleAdapter *)self carrierBundleType];
        v24 = v11;
        v15 = [client copyBundleIdentifier:v12 bundleType:carrierBundleType error:&v24];
        v5 = v24;

        if (v15)
        {
          [v23 addObject:v15];
        }

        v10 = v10 + 1;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [subscriptionsValid countByEnumeratingWithState:&v25 objects:v32 count:16];
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
  client = [(SPCarrierBundleAdapter *)self client];
  v7 = 0;
  v3 = [client getCurrentDataSubscriptionContextSync:&v7];
  v4 = v7;

  if (v4)
  {
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
    {
      sub_1002859B4();
    }

    phoneNumber = 0;
  }

  else
  {
    phoneNumber = [v3 phoneNumber];
  }

  return phoneNumber;
}

- (id)getNRSlicingCBConfigCurrentDataContext
{
  client = [(SPCarrierBundleAdapter *)self client];
  v13 = 0;
  v4 = [client getCurrentDataSubscriptionContextSync:&v13];
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
    slicingConfiguration = [(SPCarrierBundleAdapter *)self slicingConfiguration];
    allKeys = [slicingConfiguration allKeys];
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 slotID]);
    if ([allKeys containsObject:v9])
    {
      slicingConfiguration2 = [(SPCarrierBundleAdapter *)self slicingConfiguration];
      v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 slotID]);
      v6 = [slicingConfiguration2 objectForKey:v11];
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
  getNRSlicingCBConfigCurrentDataContext = [(SPCarrierBundleAdapter *)self getNRSlicingCBConfigCurrentDataContext];
  allValues = [getNRSlicingCBConfigCurrentDataContext allValues];
  if ([allValues count])
  {
    allValues2 = [getNRSlicingCBConfigCurrentDataContext allValues];
    v5 = [allValues2 count] != 0;
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
  slicingConfiguration = [(SPCarrierBundleAdapter *)self slicingConfiguration];
  allKeys = [slicingConfiguration allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v24 objects:v34 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        slicingConfiguration2 = [(SPCarrierBundleAdapter *)self slicingConfiguration];
        v12 = [slicingConfiguration2 objectForKey:v10];

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
              bOOLValue = [v18 BOOLValue];
              v21 = @"Disabled";
              *buf = 134218498;
              v29 = v10;
              if (bOOLValue)
              {
                v21 = @"Enabled";
              }

              v30 = 2112;
              v31 = @"Enabled";
              v32 = 2112;
              v33 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Slicing Test Application for slot=%ld %@=%@", buf, 0x20u);
            }

            bOOLValue2 = [v18 BOOLValue];
          }

          else
          {
            if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
            {
              sub_1002859F4();
            }

            bOOLValue2 = 0;
          }

          return bOOLValue2;
        }

        v14 = qword_100382458;
        if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v23;
          v29 = @"__SlicingTestModule__";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Missing key %@. Defaulting to disabled", buf, 0xCu);
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = qword_100382458;
  bOOLValue2 = 0;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Slicing Test Application enabled=NO", buf, 2u);
    return 0;
  }

  return bOOLValue2;
}

- (BOOL)isLLPHSApplicationEnabled
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  slicingConfiguration = [(SPCarrierBundleAdapter *)self slicingConfiguration];
  allKeys = [slicingConfiguration allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v23 objects:v33 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        slicingConfiguration2 = [(SPCarrierBundleAdapter *)self slicingConfiguration];
        v12 = [slicingConfiguration2 objectForKey:v10];

        getNRSlicingCBConfigCurrentDataContext = [(SPCarrierBundleAdapter *)self getNRSlicingCBConfigCurrentDataContext];
        if ([(SPCarrierBundleAdapter *)self isSlicingSetup])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [getNRSlicingCBConfigCurrentDataContext objectForKey:@"SupportsLLPHS"];
            v18 = qword_100382458;
            if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
            {
              bOOLValue = [v17 BOOLValue];
              v20 = @"Disabled";
              *buf = 134218498;
              v28 = v10;
              v29 = 2112;
              if (bOOLValue)
              {
                v20 = @"Enabled";
              }

              v30 = @"SupportsLLPHS";
              v31 = 2112;
              v32 = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "LLPHS for slot=%ld %@=%@", buf, 0x20u);
            }

            bOOLValue2 = [v17 BOOLValue];
          }

          else
          {
            if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
            {
              sub_100285A74();
            }

            bOOLValue2 = 0;
          }

          return bOOLValue2;
        }

        v14 = qword_100382458;
        if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v22;
          v28 = @"SupportsLLPHS";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Missing key %@. Defaulting to disabled", buf, 0xCu);
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = qword_100382458;
  bOOLValue2 = 0;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "LLPHS not enabled", buf, 2u);
    return 0;
  }

  return bOOLValue2;
}

- (int64_t)getInteger:(id)integer defaultValue:(int64_t)value
{
  v5 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyForDataContext:integer];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = [v5 integerValue];
    }
  }

  return value;
}

- (id)getString:(id)string defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyForDataContext:string];
  if (!v7 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9 = v7, (isKindOfClass & 1) == 0))
  {
    v9 = valueCopy;
  }

  v10 = v9;

  return v10;
}

- (id)getData:(id)data defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyForDataContext:data];
  if (!v7 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9 = v7, (isKindOfClass & 1) == 0))
  {
    v9 = valueCopy;
  }

  v10 = v9;

  return v10;
}

- (id)getArray:(id)array defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyForDataContext:array];
  if (!v7 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9 = v7, (isKindOfClass & 1) == 0))
  {
    v9 = valueCopy;
  }

  v10 = v9;

  return v10;
}

- (BOOL)getBoolean:(id)boolean defaultValue:(BOOL)value
{
  v5 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyForDataContext:boolean];
  v6 = v5;
  if (v5)
  {
    value = [v5 BOOLValue];
  }

  return value;
}

- (id)getDict:(id)dict defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyForDataContext:dict];
  if (!v7 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9 = v7, (isKindOfClass & 1) == 0))
  {
    v9 = valueCopy;
  }

  v10 = v9;

  return v10;
}

- (id)_getCarrierBundleKeyForDataContext:(id)context
{
  contextCopy = context;
  client = [(SPCarrierBundleAdapter *)self client];
  v10 = 0;
  v6 = [client getCurrentDataSubscriptionContextSync:&v10];
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
    v8 = [(SPCarrierBundleAdapter *)self _getCarrierBundleKeyValue:contextCopy forContext:v6];
  }

  return v8;
}

- (id)_getCarrierBundleKeyValue:(id)value forContext:(id)context
{
  valueCopy = value;
  contextCopy = context;
  client = [(SPCarrierBundleAdapter *)self client];
  carrierBundleType = [(SPCarrierBundleAdapter *)self carrierBundleType];
  v15 = 0;
  v10 = [client copyCarrierBundleValue:contextCopy key:valueCopy bundleType:carrierBundleType error:&v15];
  v11 = v15;

  if (v11)
  {
    v12 = qword_100382458;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v17 = valueCopy;
      v18 = 2112;
      v19 = contextCopy;
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

- (void)_handleSubscriptionAndBundleChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    [(SPCarrierBundleAdapter *)self _loadSubscriptionInfoForContext:changeCopy];
  }

  else
  {
    [(SPCarrierBundleAdapter *)self _loadSubscriptionInfo];
  }

  delegate = [(SPCarrierBundleAdapter *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(SPCarrierBundleAdapter *)self delegate];
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

- (void)carrierBundleChange:(id)change
{
  changeCopy = change;
  v5 = qword_100382458;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "carrier bundle changed for ctxt=%@. reloading configuration", &v6, 0xCu);
  }

  [(SPCarrierBundleAdapter *)self _handleSubscriptionAndBundleChange:changeCopy];
}

- (void)operatorBundleChange:(id)change
{
  v4 = qword_100382458;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    changeCopy = change;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "operator bundle changed for ctxt=%@. Ignoring update", &v5, 0xCu);
  }
}

- (SPCarrierBundleAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end