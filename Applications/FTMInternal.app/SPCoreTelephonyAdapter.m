@interface SPCoreTelephonyAdapter
- (SPCoreTelephonyAdapter)init;
- (SPCoreTelephonyAdapterDelegate)delegate;
- (dispatch_queue_s)get_queue;
- (id)getPDPInfo;
- (id)getTrafficDescriptors;
- (id)setApplicationCategory:(id)a3;
- (void)nrSliceAppStateChanged:(id)a3 status:(BOOL)a4 trafficDescriptors:(id)a5;
- (void)nrSlicedRunningAppStateChanged:(id)a3;
- (void)updateDelegate:(id)a3 status:(BOOL)a4 trafficDescriptors:(id)a5;
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

- (id)setApplicationCategory:(id)a3
{
  v4 = a3;
  v5 = qword_100382458;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "settings application category to %@", &v10, 0xCu);
  }

  v6 = [(SPCoreTelephonyAdapter *)self client];
  v7 = [v6 setApplicationCategory:v4];

  if (v7)
  {
    v8 = qword_100382458;
    if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_ERROR))
    {
      sub_100285B5C(v4, v7, v8);
    }
  }

  return v7;
}

- (void)updateDelegate:(id)a3 status:(BOOL)a4 trafficDescriptors:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SPCoreTelephonyAdapter *)self delegate];
  if (v10)
  {
    v11 = v10;
    v12 = [(SPCoreTelephonyAdapter *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      [SPSlicingDescriptor _coreTelephonyContainer:v9];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000A8BA0;
      v15[3] = &unk_100317CD8;
      v16 = v15[4] = self;
      v17 = v8;
      v18 = a4;
      v14 = v16;
      dispatch_async(&_dispatch_main_q, v15);
    }
  }
}

- (id)getTrafficDescriptors
{
  v2 = [(SPCoreTelephonyAdapter *)self client];
  v9 = 0;
  v3 = [v2 getSliceTrafficDescriptors:&v9];
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
    v7 = [v3 trafficDescriptors];
    v6 = [SPSlicingDescriptor _coreTelephonyDescritorList:v7];
  }

  return v6;
}

- (id)getPDPInfo
{
  v3 = [(SPCoreTelephonyAdapter *)self client];
  v18 = 0;
  v4 = [v3 getCurrentDataSubscriptionContextSync:&v18];
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
    v8 = &stru_10032B7E0;
  }

  else
  {
    v5 = 0;
    v7 = 28;
    v8 = &stru_10032B7E0;
    while (1)
    {
      v9 = v5;
      v10 = [(SPCoreTelephonyAdapter *)self client];
      v17 = v5;
      v11 = [v10 getConnectionState:v4 connectionType:v7 error:&v17];
      v5 = v17;

      if (v11)
      {
        if (!v5)
        {
          v12 = [v11 interfaceName];
          if (v12)
          {
            v13 = v12;
            v14 = [v11 interfaceName];
            v15 = [v14 isEqualToString:&stru_10032B7E0];

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

    v8 = [v11 interfaceName];
    v5 = v11;
  }

LABEL_14:

  return v8;
}

- (void)nrSliceAppStateChanged:(id)a3 status:(BOOL)a4 trafficDescriptors:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = qword_100382458;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"false";
    *buf = 138412802;
    v23 = v8;
    v24 = 2112;
    if (v6)
    {
      v11 = @"true";
    }

    v25 = v11;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Slicing AppId=%@ state changed status=%@ %@", buf, 0x20u);
  }

  v12 = [(SPCoreTelephonyAdapter *)self delegate];
  if (v12 && (v13 = v12, [(SPCoreTelephonyAdapter *)self delegate], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_opt_respondsToSelector(), v14, v13, (v15 & 1) != 0))
  {
    objc_initWeak(buf, self);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000A9070;
    v17[3] = &unk_100317D00;
    objc_copyWeak(&v20, buf);
    v18 = v8;
    v21 = v6;
    v19 = v9;
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

- (void)nrSlicedRunningAppStateChanged:(id)a3
{
  v4 = a3;
  v5 = qword_100382458;
  if (os_log_type_enabled(qword_100382458, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Slicing App state changed %@", buf, 0xCu);
  }

  v6 = [SPSlicingApplicationContainer _coreTelephonyAppInfoContainer:v4];
  v7 = [(SPCoreTelephonyAdapter *)self delegate];
  if (v7 && (v8 = v7, [(SPCoreTelephonyAdapter *)self delegate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
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