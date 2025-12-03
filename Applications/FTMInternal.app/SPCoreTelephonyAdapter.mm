@interface SPCoreTelephonyAdapter
- (SPCoreTelephonyAdapter)init;
- (SPCoreTelephonyAdapterDelegate)delegate;
- (dispatch_queue_s)get_queue;
- (id)getPDPInfo;
- (id)getTrafficDescriptors;
- (id)setApplicationCategory:(id)category;
- (void)nrSliceAppStateChanged:(id)changed status:(BOOL)status trafficDescriptors:(id)descriptors;
- (void)nrSlicedRunningAppStateChanged:(id)changed;
- (void)updateDelegate:(id)delegate status:(BOOL)status trafficDescriptors:(id)descriptors;
@end

@implementation SPCoreTelephonyAdapter

- (SPCoreTelephonyAdapter)init
{
  v6.receiver = self;
  v6.super_class = SPCoreTelephonyAdapter;
  v2 = [(SPCoreTelephonyAdapter *)&v6 init];
  if (v2)
  {
    v3 = [[CoreTelephonyClient alloc] initWithQueue:{-[SPCoreTelephonyAdapter get_queue](v2, "get_queue")}];
    client = v2->_client;
    v2->_client = v3;
  }

  return v2;
}

- (dispatch_queue_s)get_queue
{
  if (qword_10037A530 != -1)
  {
    sub_100285B48();
  }

  return qword_10037A538;
}

- (id)setApplicationCategory:(id)category
{
  categoryCopy = category;
  v5 = qword_100382458;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = categoryCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "settings application category to %@", &v10, 0xCu);
  }

  client = [(SPCoreTelephonyAdapter *)self client];
  v7 = [client setApplicationCategory:categoryCopy];

  if (v7)
  {
    v8 = qword_100382458;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
    {
      sub_100285B5C(categoryCopy, v7, v8);
    }
  }

  return v7;
}

- (void)updateDelegate:(id)delegate status:(BOOL)status trafficDescriptors:(id)descriptors
{
  delegateCopy = delegate;
  descriptorsCopy = descriptors;
  delegate = [(SPCoreTelephonyAdapter *)self delegate];
  if (delegate)
  {
    v11 = delegate;
    delegate2 = [(SPCoreTelephonyAdapter *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      [SPSlicingDescriptor _coreTelephonyContainer:descriptorsCopy];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000A8BA0;
      v15[3] = &unk_100317CD8;
      v16 = v15[4] = self;
      v17 = delegateCopy;
      statusCopy = status;
      v14 = v16;
      dispatch_async(&_dispatch_main_q, v15);
    }
  }
}

- (id)getTrafficDescriptors
{
  client = [(SPCoreTelephonyAdapter *)self client];
  v9 = 0;
  v3 = [client getSliceTrafficDescriptors:&v9];
  v4 = v9;

  if (v4)
  {
    v5 = qword_100382458;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
    {
      sub_100285BE4(v4, v5);
    }

    v6 = 0;
  }

  else
  {
    trafficDescriptors = [v3 trafficDescriptors];
    v6 = [SPSlicingDescriptor _coreTelephonyDescritorList:trafficDescriptors];
  }

  return v6;
}

- (id)getPDPInfo
{
  client = [(SPCoreTelephonyAdapter *)self client];
  v18 = 0;
  v4 = [client getCurrentDataSubscriptionContextSync:&v18];
  v5 = v18;

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    interfaceName3 = &stru_10032B7E0;
  }

  else
  {
    v5 = 0;
    v7 = 28;
    interfaceName3 = &stru_10032B7E0;
    while (1)
    {
      v9 = v5;
      client2 = [(SPCoreTelephonyAdapter *)self client];
      v17 = v5;
      v11 = [client2 getConnectionState:v4 connectionType:v7 error:&v17];
      v5 = v17;

      if (v11)
      {
        if (!v5)
        {
          interfaceName = [v11 interfaceName];
          if (interfaceName)
          {
            v13 = interfaceName;
            interfaceName2 = [v11 interfaceName];
            v15 = [interfaceName2 isEqualToString:&stru_10032B7E0];

            if (!v15)
            {
              break;
            }
          }
        }
      }

      v7 = (v7 + 1);
      if (v7 == 36)
      {
        goto LABEL_14;
      }
    }

    interfaceName3 = [v11 interfaceName];
    v5 = v11;
  }

LABEL_14:

  return interfaceName3;
}

- (void)nrSliceAppStateChanged:(id)changed status:(BOOL)status trafficDescriptors:(id)descriptors
{
  statusCopy = status;
  changedCopy = changed;
  descriptorsCopy = descriptors;
  v10 = qword_100382458;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"false";
    *buf = 138412802;
    v23 = changedCopy;
    v24 = 2112;
    if (statusCopy)
    {
      v11 = @"true";
    }

    v25 = v11;
    v26 = 2112;
    v27 = descriptorsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Slicing AppId=%@ state changed status=%@ %@", buf, 0x20u);
  }

  delegate = [(SPCoreTelephonyAdapter *)self delegate];
  if (delegate && (v13 = delegate, [(SPCoreTelephonyAdapter *)self delegate], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_opt_respondsToSelector(), v14, v13, (v15 & 1) != 0))
  {
    objc_initWeak(buf, self);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000A9070;
    v17[3] = &unk_100317D00;
    objc_copyWeak(&v20, buf);
    v18 = changedCopy;
    v21 = statusCopy;
    v19 = descriptorsCopy;
    dispatch_async(&_dispatch_main_q, v17);

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = qword_100382458;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "there is not delegate set. Ignoring callback", buf, 2u);
    }
  }
}

- (void)nrSlicedRunningAppStateChanged:(id)changed
{
  changedCopy = changed;
  v5 = qword_100382458;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Slicing App state changed %@", buf, 0xCu);
  }

  v6 = [SPSlicingApplicationContainer _coreTelephonyAppInfoContainer:changedCopy];
  delegate = [(SPCoreTelephonyAdapter *)self delegate];
  if (delegate && (v8 = delegate, [(SPCoreTelephonyAdapter *)self delegate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
  {
    objc_initWeak(buf, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000A92B4;
    v12[3] = &unk_100317D28;
    objc_copyWeak(&v14, buf);
    v13 = v6;
    dispatch_async(&_dispatch_main_q, v12);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = qword_100382458;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "there is not delegate set. Ignoring callback", buf, 2u);
    }
  }
}

- (SPCoreTelephonyAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end