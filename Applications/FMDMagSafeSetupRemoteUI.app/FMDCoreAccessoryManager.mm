@interface FMDCoreAccessoryManager
- (FMDCoreAccessoryManager)initWithDelegate:(id)a3;
- (FMDCoreAccessoryManagerDelegateProtocol)delegate;
- (NSDictionary)accessoryRawInfo;
- (void)accessoryConnectionAttached:(id)a3 type:(int)a4 info:(id)a5 properties:(id)a6;
- (void)accessoryConnectionDetached:(id)a3;
- (void)accessoryConnectionInfoPropertyChanged:(id)a3 properties:(id)a4;
- (void)accessoryEndpointAttached:(id)a3 transportType:(int)a4 protocol:(int)a5 properties:(id)a6 forConnection:(id)a7;
- (void)accessoryEndpointInfoPropertyChanged:(id)a3 properties:(id)a4 forConnection:(id)a5;
- (void)accessoryEndpointUpdate:(id)a3 protocol:(int)a4 properties:(id)a5 forConnection:(id)a6;
@end

@implementation FMDCoreAccessoryManager

- (FMDCoreAccessoryManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FMDCoreAccessoryManager;
  v5 = [(FMDCoreAccessoryManager *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_new();
    cache = v5->_cache;
    v5->_cache = v6;

    [(FMDCoreAccessoryManager *)v5 setDelegate:v4];
    v8 = dispatch_queue_create("FMDCoreAccessoryManager.serialQueue", 0);
    [(FMDCoreAccessoryManager *)v5 setSerialQueue:v8];

    v9 = +[FMDACCConnectionInfoFactory connectionInfo];
    [(FMDCoreAccessoryManager *)v5 setConnectionInfo:v9];

    v16 = ACCConnectionInfoFilterAllowConnectionType;
    v17 = &off_10003D9A8;
    v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [(FMDCoreAccessoryManager *)v5 connectionInfo];
    [v11 registerDelegate:v5 withFilter:v10];

    v12 = sub_100002400();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDCoreAccessoryManager intialised", v14, 2u);
    }
  }

  return v5;
}

- (NSDictionary)accessoryRawInfo
{
  v2 = [(FMDCoreAccessoryManager *)self cache];
  v3 = [v2 accessoriesRawInfo];

  return v3;
}

- (void)accessoryConnectionAttached:(id)a3 type:(int)a4 info:(id)a5 properties:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(FMDCoreAccessoryManager *)self serialQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100013370;
  v16[3] = &unk_100039990;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = self;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, v16);
}

- (void)accessoryEndpointAttached:(id)a3 transportType:(int)a4 protocol:(int)a5 properties:(id)a6 forConnection:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [(FMDCoreAccessoryManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001361C;
  block[3] = &unk_1000399B8;
  v20 = v14;
  v21 = v13;
  v22 = self;
  v23 = v12;
  v24 = a5;
  v25 = a4;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  dispatch_async(v15, block);
}

- (void)accessoryConnectionDetached:(id)a3
{
  v4 = a3;
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[FMDCoreAccessoryManager accessoryConnectionDetached:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA %s %@", buf, 0x16u);
  }

  v6 = [(FMDCoreAccessoryManager *)self serialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013AF4;
  v8[3] = &unk_100038858;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)accessoryEndpointUpdate:(id)a3 protocol:(int)a4 properties:(id)a5 forConnection:(id)a6
{
  v7 = a5;
  v8 = a6;
  v9 = sub_100002400();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[FMDCoreAccessoryManager accessoryEndpointUpdate:protocol:properties:forConnection:]";
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#CA %s %@ %@", &v10, 0x20u);
  }
}

- (void)accessoryConnectionInfoPropertyChanged:(id)a3 properties:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[FMDCoreAccessoryManager accessoryConnectionInfoPropertyChanged:properties:]";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#CA %s %@ %@", &v8, 0x20u);
  }
}

- (void)accessoryEndpointInfoPropertyChanged:(id)a3 properties:(id)a4 forConnection:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100002400();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[FMDCoreAccessoryManager accessoryEndpointInfoPropertyChanged:properties:forConnection:]";
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#CA %s %@ %@", buf, 0x20u);
  }

  v10 = [(FMDCoreAccessoryManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013FF8;
  block[3] = &unk_100039A30;
  block[4] = self;
  v14 = v8;
  v15 = v7;
  v11 = v7;
  v12 = v8;
  dispatch_async(v10, block);
}

- (FMDCoreAccessoryManagerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end