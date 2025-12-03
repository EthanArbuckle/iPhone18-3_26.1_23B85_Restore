@interface RequesterStore
+ (RequesterStore)sharedStore;
- (BOOL)containsRequestWithIdentifier:(id)identifier;
- (RequesterStore)init;
- (id)_migrationItems;
- (id)_requesterRequestWithStoreItem:(id)item;
- (id)getCachedApprovalRequests;
- (id)requestIdentifierWithItemIdentifier:(id)identifier;
- (id)requestWithIdentifier:(id)identifier;
- (id)requestWithItemIdentifier:(id)identifier;
- (id)requestsMatchingUniqueIdentifier:(id)identifier;
- (void)_loadItemsIntoMemory;
- (void)_saveChanges;
- (void)clearExpiredRequests;
- (void)clearRequests;
- (void)storeRequest:(id)request;
@end

@implementation RequesterStore

- (RequesterStore)init
{
  v15.receiver = self;
  v15.super_class = RequesterStore;
  v2 = [(RequesterStore *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AskPermission.RequesterStore", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    itemIdentifierStore = v2->_itemIdentifierStore;
    v2->_itemIdentifierStore = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    requestIdentifierStore = v2->_requestIdentifierStore;
    v2->_requestIdentifierStore = v7;

    v9 = [[RequestStore alloc] initWithFileName:@"UniqueRequestStore.plist"];
    requestStore = v2->_requestStore;
    v2->_requestStore = v9;

    v11 = v2->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000210A4;
    block[3] = &unk_100054C30;
    v14 = v2;
    dispatch_sync(v11, block);
  }

  return v2;
}

+ (RequesterStore)sharedStore
{
  if (qword_100063D30 != -1)
  {
    sub_100022BD0();
  }

  v3 = qword_100063D38;

  return v3;
}

- (void)clearExpiredRequests
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Clearing expired requests", buf, 0xCu);
  }

  accessQueue = [(RequesterStore *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021280;
  block[3] = &unk_100054C30;
  block[4] = self;
  dispatch_sync(accessQueue, block);
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Clearing requests", buf, 0xCu);
  }

  accessQueue = [(RequesterStore *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000215F8;
  block[3] = &unk_100054C30;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (BOOL)containsRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  requestItems = [(RequesterStore *)self requestItems];
  allValues = [requestItems allValues];

  createdDate3 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (createdDate3)
  {
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != createdDate3; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        requestIdentifier = [v11 requestIdentifier];
        v13 = [requestIdentifier isEqualToString:identifierCopy];

        if (v13)
        {
          if (v8)
          {
            createdDate = [v11 createdDate];
            createdDate2 = [v8 createdDate];
            v16 = [createdDate compare:createdDate2];

            if (v16 == 1)
            {
              v17 = v11;

              v8 = v17;
            }
          }

          else
          {
            v8 = v11;
          }
        }
      }

      createdDate3 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (createdDate3);

    if (!v8)
    {
      LOBYTE(createdDate3) = 0;
      goto LABEL_17;
    }

    createdDate3 = [v8 createdDate];
    v18 = [NSDate isDateExpired:createdDate3];

    LOBYTE(createdDate3) = v18 ^ 1;
    allValues = v8;
  }

LABEL_17:
  return createdDate3;
}

- (id)getCachedApprovalRequests
{
  requestItems = [(RequesterStore *)self requestItems];
  allValues = [requestItems allValues];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002190C;
  v7[3] = &unk_1000556E8;
  v7[4] = self;
  v5 = [allValues ams_mapWithTransformIgnoresNil:v7];

  return v5;
}

- (id)requestWithItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  requestItems = [(RequesterStore *)self requestItems];
  allValues = [requestItems allValues];

  v7 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    selfCopy = self;
    v9 = 0;
    v10 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        itemIdentifier = [v12 itemIdentifier];
        v14 = [itemIdentifier isEqualToString:identifierCopy];

        if (v14)
        {
          if (v9)
          {
            createdDate = [v12 createdDate];
            createdDate2 = [v9 createdDate];
            v17 = [createdDate compare:createdDate2];

            if (v17 == 1)
            {
              v18 = v12;

              v9 = v18;
            }
          }

          else
          {
            v9 = v12;
          }
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);

    if (v9)
    {
      createdDate3 = [v9 createdDate];
      v20 = [NSDate isDateExpired:createdDate3];

      if ((v20 & 1) == 0)
      {
        v21 = [(RequesterStore *)selfCopy _requesterRequestWithStoreItem:v9];
        goto LABEL_18;
      }
    }
  }

  else
  {

    v9 = 0;
  }

  v21 = 0;
LABEL_18:

  return v21;
}

- (id)requestIdentifierWithItemIdentifier:(id)identifier
{
  v3 = [(RequesterStore *)self requestWithItemIdentifier:identifier];
  requestIdentifier = [v3 requestIdentifier];

  return requestIdentifier;
}

- (id)requestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requestItems = [(RequesterStore *)self requestItems];
  v6 = [requestItems objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    goto LABEL_2;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  requestItems2 = [(RequesterStore *)self requestItems];
  allValues = [requestItems2 allValues];

  v12 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v12)
  {

    v6 = 0;
    goto LABEL_21;
  }

  v13 = v12;
  selfCopy = self;
  v6 = 0;
  v14 = *v27;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v27 != v14)
      {
        objc_enumerationMutation(allValues);
      }

      v16 = *(*(&v26 + 1) + 8 * i);
      requestIdentifier = [v16 requestIdentifier];
      if ([requestIdentifier isEqualToString:identifierCopy])
      {
      }

      else
      {
        uniqueIdentifier = [v16 uniqueIdentifier];
        v19 = [uniqueIdentifier isEqualToString:identifierCopy];

        if (!v19)
        {
          continue;
        }
      }

      if (v6)
      {
        createdDate = [v16 createdDate];
        createdDate2 = [v6 createdDate];
        v22 = [createdDate compare:createdDate2];

        if (v22 == 1)
        {
          v23 = v16;

          v6 = v23;
        }
      }

      else
      {
        v6 = v16;
      }
    }

    v13 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v13);

  self = selfCopy;
  if (!v6)
  {
LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

LABEL_2:
  createdDate3 = [v6 createdDate];
  v8 = [NSDate isDateExpired:createdDate3];

  if (v8)
  {
    goto LABEL_21;
  }

  v9 = [(RequesterStore *)self _requesterRequestWithStoreItem:v6];
LABEL_22:

  return v9;
}

- (id)requestsMatchingUniqueIdentifier:(id)identifier
{
  v4 = [(RequesterStore *)self requestWithIdentifier:identifier];
  v21 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  requestItems = [(RequesterStore *)self requestItems];
  allValues = [requestItems allValues];

  v7 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        requestIdentifier = [v11 requestIdentifier];
        requestIdentifier2 = [v4 requestIdentifier];
        v14 = [requestIdentifier isEqualToString:requestIdentifier2];

        if (v14)
        {
          createdDate = [v11 createdDate];
          v16 = [NSDate isDateExpired:createdDate];

          if ((v16 & 1) == 0)
          {
            v17 = [(RequesterStore *)selfCopy _requesterRequestWithStoreItem:v11];
            v18 = v17;
            if (v17 && [v17 status] == -1)
            {
              [v21 addObject:v18];
            }
          }
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v19 = [NSArray arrayWithArray:v21];

  return v19;
}

- (void)storeRequest:(id)request
{
  requestCopy = request;
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = requestCopy;
    v7 = *&buf[4];
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Storing request: %{public}@", buf, 0x16u);
  }

  v8 = [[RequestStoreItem alloc] initWithRequest:requestCopy];
  uniqueIdentifier = [(RequestStoreItem *)v8 uniqueIdentifier];
  v10 = uniqueIdentifier == 0;

  if (!v10)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v20 = sub_1000222A0;
    v21 = sub_1000222B0;
    v22 = 0;
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000222B8;
    block[3] = &unk_100055710;
    v18 = buf;
    block[4] = self;
    v12 = v8;
    v17 = v12;
    dispatch_sync(accessQueue, block);
    if (*(*&buf[8] + 40))
    {
      [(RequestStoreItem *)v12 overlayItem:?];
    }

    v13 = self->_accessQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002233C;
    v14[3] = &unk_100054D70;
    v14[4] = self;
    v15 = v12;
    dispatch_sync(v13, v14);

    _Block_object_dispose(buf, 8);
  }
}

- (id)_requesterRequestWithStoreItem:(id)item
{
  itemCopy = item;
  v4 = [[ApprovalRequest alloc] initWithRequestStorageItem:itemCopy];

  return v4;
}

- (void)_saveChanges
{
  accessQueue = [(RequesterStore *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v4 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  requestItems = [(RequesterStore *)self requestItems];
  allKeys = [requestItems allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        requestItems2 = [(RequesterStore *)self requestItems];
        v13 = [requestItems2 objectForKeyedSubscript:v11];

        compile = [v13 compile];
        if (compile)
        {
          [v4 addObject:compile];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  requestStore = [(RequesterStore *)self requestStore];
  [requestStore storeItems:v4];
}

- (void)_loadItemsIntoMemory
{
  accessQueue = [(RequesterStore *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  selfCopy = self;
  requestStore = [(RequesterStore *)self requestStore];
  items = [requestStore items];

  v6 = objc_alloc_init(NSMutableDictionary);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = items;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [[RequestStoreItem alloc] initWithDictionary:*(*(&v34 + 1) + 8 * i)];
        v13 = v12;
        if (v12)
        {
          createdDate = [(RequestStoreItem *)v12 createdDate];
          v15 = [NSDate isDateExpired:createdDate];

          if ((v15 & 1) == 0)
          {
            modifiedDate = [(RequestStoreItem *)v13 modifiedDate];
            v17 = [NSDate isDateInFuture:modifiedDate];

            if (v17)
            {
              v18 = +[NSDate date];
              [(RequestStoreItem *)v13 setModifiedDate:v18];
            }

            uniqueIdentifier = [(RequestStoreItem *)v13 uniqueIdentifier];
            [(NSMutableDictionary *)v6 setObject:v13 forKeyedSubscript:uniqueIdentifier];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  _migrationItems = [(RequesterStore *)selfCopy _migrationItems];
  if ([_migrationItems count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    allKeys = [_migrationItems allKeys];
    v22 = [allKeys countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(allKeys);
          }

          v26 = *(*(&v30 + 1) + 8 * j);
          v27 = [_migrationItems objectForKeyedSubscript:v26];
          [(NSMutableDictionary *)v6 setObject:v27 forKeyedSubscript:v26];
        }

        v23 = [allKeys countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v23);
    }
  }

  requestItems = selfCopy->_requestItems;
  selfCopy->_requestItems = v6;
}

- (id)_migrationItems
{
  v24 = [[RequestStore alloc] initWithFileName:@"RequestStore.plist"];
  items = [(RequestStore *)v24 items];
  v25 = objc_alloc_init(NSMutableDictionary);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = items;
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[RequestStoreItem alloc] initWithDictionary:*(*(&v26 + 1) + 8 * i)];
        v9 = v8;
        if (v8)
        {
          createdDate = [(RequestStoreItem *)v8 createdDate];
          v11 = [NSDate isDateExpired:createdDate];

          if ((v11 & 1) == 0)
          {
            modifiedDate = [(RequestStoreItem *)v9 modifiedDate];
            v13 = [NSDate isDateInFuture:modifiedDate];

            if (v13)
            {
              v14 = +[NSDate date];
              [(RequestStoreItem *)v9 setModifiedDate:v14];
            }

            uniqueIdentifier = [(RequestStoreItem *)v9 uniqueIdentifier];
            if (!uniqueIdentifier || (v16 = uniqueIdentifier, -[RequestStoreItem uniqueIdentifier](v9, "uniqueIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 length], v17, v16, !v18))
            {
              requestIdentifier = [(RequestStoreItem *)v9 requestIdentifier];
              createdDate2 = [(RequestStoreItem *)v9 createdDate];
              v21 = [ApprovalRequest createUniqueIDFromRequestID:requestIdentifier andCreatedDate:createdDate2];
              [(RequestStoreItem *)v9 setUniqueIdentifier:v21];
            }

            uniqueIdentifier2 = [(RequestStoreItem *)v9 uniqueIdentifier];
            [v25 setObject:v9 forKeyedSubscript:uniqueIdentifier2];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  if ([v25 count])
  {
    [(RequestStore *)v24 clearCache];
  }

  return v25;
}

@end