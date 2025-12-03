@interface ExceptionRequestStore
+ (ExceptionRequestStore)sharedStore;
+ (id)inMemoryStore;
- (ExceptionRequestStore)initWithInMemoryStore:(BOOL)store;
- (NSMutableDictionary)requestItems;
- (id)getExceptionRequestWithUniqueIdentifier:(id)identifier;
- (id)getExceptionRequests;
- (id)getExceptionRequestsWithBundleID:(id)d;
- (id)getExceptionRequestsWithBundleID:(id)d adamID:(id)iD ratingValue:(id)value;
- (id)getExceptionRequestsWithDistributorID:(id)d;
- (void)_loadItemsIntoMemory;
- (void)_saveChanges;
- (void)clearRequests;
- (void)removeExceptionRequestWithUniqueIdentifier:(id)identifier;
- (void)setRequestItems:(id)items;
- (void)storeRequest:(id)request;
@end

@implementation ExceptionRequestStore

- (ExceptionRequestStore)initWithInMemoryStore:(BOOL)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = ExceptionRequestStore;
  v4 = [(ExceptionRequestStore *)&v14 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.AskPermission.ApproverStore", 0);
    accessQueue = v4->_accessQueue;
    v4->_accessQueue = v5;

    if (storeCopy)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      [(ExceptionRequestStore *)v4 setRequestItems:v7];
    }

    else
    {
      v8 = [[RequestStore alloc] initWithFileName:@"ExceptionStore.plist"];
      requestStore = v4->_requestStore;
      v4->_requestStore = v8;

      v10 = v4->_accessQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001D698;
      block[3] = &unk_100054C30;
      v13 = v4;
      dispatch_sync(v10, block);
      v7 = v13;
    }
  }

  return v4;
}

- (NSMutableDictionary)requestItems
{
  accessQueue = [(ExceptionRequestStore *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001D7D4;
  v12 = sub_10001D7E4;
  v13 = 0;
  accessQueue2 = [(ExceptionRequestStore *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D7EC;
  v7[3] = &unk_100054D48;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setRequestItems:(id)items
{
  itemsCopy = items;
  accessQueue = [(ExceptionRequestStore *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ExceptionRequestStore *)self accessQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001D8CC;
  v8[3] = &unk_100054D70;
  v8[4] = self;
  v9 = itemsCopy;
  v7 = itemsCopy;
  dispatch_async(accessQueue2, v8);
}

+ (id)inMemoryStore
{
  if (qword_100063D10 != -1)
  {
    sub_10001E794();
  }

  v3 = qword_100063D18;

  return v3;
}

+ (ExceptionRequestStore)sharedStore
{
  if (qword_100063D20 != -1)
  {
    sub_10001E7A8();
  }

  v3 = qword_100063D28;

  return v3;
}

- (void)clearRequests
{
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Clearing Exception Requests", buf, 0xCu);
  }

  accessQueue = [(ExceptionRequestStore *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DB34;
  block[3] = &unk_100054C30;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (id)getExceptionRequests
{
  requestItems = [(ExceptionRequestStore *)self requestItems];
  allValues = [requestItems allValues];
  v4 = [allValues ams_mapWithTransformIgnoresNil:&stru_100055650];

  return v4;
}

- (id)getExceptionRequestsWithBundleID:(id)d
{
  dCopy = d;
  requestItems = [(ExceptionRequestStore *)self requestItems];
  allValues = [requestItems allValues];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001DD08;
  v10[3] = &unk_100055678;
  v11 = dCopy;
  v7 = dCopy;
  v8 = [allValues ams_mapWithTransformIgnoresNil:v10];

  return v8;
}

- (id)getExceptionRequestsWithBundleID:(id)d adamID:(id)iD ratingValue:(id)value
{
  dCopy = d;
  iDCopy = iD;
  valueCopy = value;
  requestItems = [(ExceptionRequestStore *)self requestItems];
  allValues = [requestItems allValues];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001DEB0;
  v18[3] = &unk_1000556A0;
  v19 = dCopy;
  v20 = iDCopy;
  v21 = valueCopy;
  v13 = valueCopy;
  v14 = iDCopy;
  v15 = dCopy;
  v16 = [allValues ams_mapWithTransformIgnoresNil:v18];

  return v16;
}

- (id)getExceptionRequestsWithDistributorID:(id)d
{
  dCopy = d;
  requestItems = [(ExceptionRequestStore *)self requestItems];
  allValues = [requestItems allValues];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001E05C;
  v10[3] = &unk_100055678;
  v11 = dCopy;
  v7 = dCopy;
  v8 = [allValues ams_mapWithTransformIgnoresNil:v10];

  return v8;
}

- (id)getExceptionRequestWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requestItems = [(ExceptionRequestStore *)self requestItems];
  v6 = [requestItems objectForKeyedSubscript:identifierCopy];

  v7 = [v6 copy];

  return v7;
}

- (void)removeExceptionRequestWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = identifierCopy;
    v7 = v13;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing request. Request identifier: %{public}@", buf, 0x16u);
  }

  accessQueue = [(ExceptionRequestStore *)self accessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001E2DC;
  v10[3] = &unk_100054D70;
  v10[4] = self;
  v11 = identifierCopy;
  v9 = identifierCopy;
  dispatch_async(accessQueue, v10);
}

- (void)storeRequest:(id)request
{
  requestCopy = request;
  accessQueue = [(ExceptionRequestStore *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001E3D4;
  v7[3] = &unk_100054D70;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(accessQueue, v7);
}

- (void)_saveChanges
{
  accessQueue = [(ExceptionRequestStore *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_requestItems allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        compile = [*(*(&v12 + 1) + 8 * v9) compile];
        if (compile)
        {
          [v4 addObject:compile];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  requestStore = [(ExceptionRequestStore *)self requestStore];
  [requestStore storeItems:v4];
}

- (void)_loadItemsIntoMemory
{
  accessQueue = [(ExceptionRequestStore *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  requestStore = [(ExceptionRequestStore *)self requestStore];
  items = [requestStore items];

  v6 = objc_alloc_init(NSMutableDictionary);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = items;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = [ExceptionRequest alloc];
        v14 = [(ExceptionRequest *)v13 initWithDictionary:v12, v18];
        v15 = v14;
        if (v14)
        {
          uniqueIdentifier = [(ExceptionRequest *)v14 uniqueIdentifier];
          [(NSMutableDictionary *)v6 setObject:v15 forKeyedSubscript:uniqueIdentifier];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  requestItems = self->_requestItems;
  self->_requestItems = v6;
}

@end