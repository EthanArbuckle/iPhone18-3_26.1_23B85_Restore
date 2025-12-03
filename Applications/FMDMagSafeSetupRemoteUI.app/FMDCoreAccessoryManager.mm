@interface FMDCoreAccessoryManager
- (FMDCoreAccessoryManager)initWithDelegate:(id)delegate;
- (FMDCoreAccessoryManagerDelegateProtocol)delegate;
- (NSDictionary)accessoryRawInfo;
- (void)accessoryConnectionAttached:(id)attached type:(int)type info:(id)info properties:(id)properties;
- (void)accessoryConnectionDetached:(id)detached;
- (void)accessoryConnectionInfoPropertyChanged:(id)changed properties:(id)properties;
- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection;
- (void)accessoryEndpointInfoPropertyChanged:(id)changed properties:(id)properties forConnection:(id)connection;
- (void)accessoryEndpointUpdate:(id)update protocol:(int)protocol properties:(id)properties forConnection:(id)connection;
@end

@implementation FMDCoreAccessoryManager

- (FMDCoreAccessoryManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = FMDCoreAccessoryManager;
  v5 = [(FMDCoreAccessoryManager *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_new();
    cache = v5->_cache;
    v5->_cache = v6;

    [(FMDCoreAccessoryManager *)v5 setDelegate:delegateCopy];
    v8 = dispatch_queue_create("FMDCoreAccessoryManager.serialQueue", 0);
    [(FMDCoreAccessoryManager *)v5 setSerialQueue:v8];

    v9 = +[FMDACCConnectionInfoFactory connectionInfo];
    [(FMDCoreAccessoryManager *)v5 setConnectionInfo:v9];

    v16 = ACCConnectionInfoFilterAllowConnectionType;
    v17 = &off_10003D9A8;
    v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    connectionInfo = [(FMDCoreAccessoryManager *)v5 connectionInfo];
    [connectionInfo registerDelegate:v5 withFilter:v10];

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
  cache = [(FMDCoreAccessoryManager *)self cache];
  accessoriesRawInfo = [cache accessoriesRawInfo];

  return accessoriesRawInfo;
}

- (void)accessoryConnectionAttached:(id)attached type:(int)type info:(id)info properties:(id)properties
{
  attachedCopy = attached;
  infoCopy = info;
  propertiesCopy = properties;
  serialQueue = [(FMDCoreAccessoryManager *)self serialQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100013370;
  v16[3] = &unk_100039990;
  v17 = attachedCopy;
  v18 = infoCopy;
  v19 = propertiesCopy;
  selfCopy = self;
  v13 = propertiesCopy;
  v14 = infoCopy;
  v15 = attachedCopy;
  dispatch_async(serialQueue, v16);
}

- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection
{
  attachedCopy = attached;
  propertiesCopy = properties;
  connectionCopy = connection;
  serialQueue = [(FMDCoreAccessoryManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001361C;
  block[3] = &unk_1000399B8;
  v20 = connectionCopy;
  v21 = propertiesCopy;
  selfCopy = self;
  v23 = attachedCopy;
  protocolCopy = protocol;
  typeCopy = type;
  v16 = attachedCopy;
  v17 = propertiesCopy;
  v18 = connectionCopy;
  dispatch_async(serialQueue, block);
}

- (void)accessoryConnectionDetached:(id)detached
{
  detachedCopy = detached;
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[FMDCoreAccessoryManager accessoryConnectionDetached:]";
    v12 = 2112;
    v13 = detachedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA %s %@", buf, 0x16u);
  }

  serialQueue = [(FMDCoreAccessoryManager *)self serialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013AF4;
  v8[3] = &unk_100038858;
  v8[4] = self;
  v9 = detachedCopy;
  v7 = detachedCopy;
  dispatch_async(serialQueue, v8);
}

- (void)accessoryEndpointUpdate:(id)update protocol:(int)protocol properties:(id)properties forConnection:(id)connection
{
  propertiesCopy = properties;
  connectionCopy = connection;
  v9 = sub_100002400();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[FMDCoreAccessoryManager accessoryEndpointUpdate:protocol:properties:forConnection:]";
    v12 = 2112;
    v13 = connectionCopy;
    v14 = 2112;
    v15 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#CA %s %@ %@", &v10, 0x20u);
  }
}

- (void)accessoryConnectionInfoPropertyChanged:(id)changed properties:(id)properties
{
  changedCopy = changed;
  propertiesCopy = properties;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[FMDCoreAccessoryManager accessoryConnectionInfoPropertyChanged:properties:]";
    v10 = 2112;
    v11 = changedCopy;
    v12 = 2112;
    v13 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#CA %s %@ %@", &v8, 0x20u);
  }
}

- (void)accessoryEndpointInfoPropertyChanged:(id)changed properties:(id)properties forConnection:(id)connection
{
  propertiesCopy = properties;
  connectionCopy = connection;
  v9 = sub_100002400();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[FMDCoreAccessoryManager accessoryEndpointInfoPropertyChanged:properties:forConnection:]";
    v18 = 2112;
    v19 = connectionCopy;
    v20 = 2112;
    v21 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#CA %s %@ %@", buf, 0x20u);
  }

  serialQueue = [(FMDCoreAccessoryManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013FF8;
  block[3] = &unk_100039A30;
  block[4] = self;
  v14 = connectionCopy;
  v15 = propertiesCopy;
  v11 = propertiesCopy;
  v12 = connectionCopy;
  dispatch_async(serialQueue, block);
}

- (FMDCoreAccessoryManagerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end