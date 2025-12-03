@interface ApproverStore
+ (ApproverStore)inMemoryStore;
+ (ApproverStore)sharedStore;
- (ApproverStore)initWithInMemoryStore:(BOOL)store;
- (BOOL)containsApprovalRequestWithIdentifier:(id)identifier;
- (NSMutableDictionary)approverStoreItems;
- (id)_approvalRequestWithStoreItem:(id)item;
- (id)_migrationItems;
- (id)approvalRequestIdentifierWithItemIdentifier:(id)identifier;
- (id)approvalRequestWithRequestIdentifier:(id)identifier;
- (id)approvalRequestWithUniqueIdentifier:(id)identifier;
- (id)approvalRequestsMatchingUniqueIdentifier:(id)identifier;
- (id)getCachedApprovalRequests;
- (id)requestWithItemIdentifier:(id)identifier;
- (void)_loadItemsIntoMemory;
- (void)_saveChanges;
- (void)clearRequests;
- (void)removeApprovalRequestWithIdentifier:(id)identifier;
- (void)setApproverStoreItems:(id)items;
- (void)storeApprovalRequest:(id)request;
@end

@implementation ApproverStore

- (ApproverStore)initWithInMemoryStore:(BOOL)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = ApproverStore;
  v4 = [(ApproverStore *)&v14 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.AskPermission.ApproverStore", 0);
    accessQueue = v4->_accessQueue;
    v4->_accessQueue = v5;

    if (storeCopy)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      [(ApproverStore *)v4 setApproverStoreItems:v7];
    }

    else
    {
      v8 = [[RequestStore alloc] initWithFileName:@"UniqueApproverStore.plist"];
      requestStore = v4->_requestStore;
      v4->_requestStore = v8;

      v10 = v4->_accessQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100005FA0;
      block[3] = &unk_100054C30;
      v13 = v4;
      dispatch_sync(v10, block);
      v7 = v13;
    }
  }

  return v4;
}

- (NSMutableDictionary)approverStoreItems
{
  accessQueue = [(ApproverStore *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000060DC;
  v12 = sub_1000060EC;
  v13 = 0;
  accessQueue2 = [(ApproverStore *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000060F4;
  v7[3] = &unk_100054D48;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setApproverStoreItems:(id)items
{
  itemsCopy = items;
  accessQueue = [(ApproverStore *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ApproverStore *)self accessQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000061D4;
  v8[3] = &unk_100054D70;
  v8[4] = self;
  v9 = itemsCopy;
  v7 = itemsCopy;
  dispatch_async(accessQueue2, v8);
}

+ (ApproverStore)inMemoryStore
{
  if (qword_100063C90 != -1)
  {
    sub_100007C68();
  }

  v3 = qword_100063C98;

  return v3;
}

+ (ApproverStore)sharedStore
{
  if (qword_100063CA0 != -1)
  {
    sub_100007C7C();
  }

  v3 = qword_100063CA8;

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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Clearing Ask To Buy Requests", buf, 0xCu);
  }

  accessQueue = [(ApproverStore *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000643C;
  block[3] = &unk_100054C30;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (BOOL)containsApprovalRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  approverStoreItems = [(ApproverStore *)self approverStoreItems];
  v6 = [approverStoreItems objectForKeyedSubscript:identifierCopy];

  createdDate = [v6 createdDate];
  LOBYTE(approverStoreItems) = [NSDate isDateExpired:createdDate];

  return approverStoreItems ^ 1;
}

- (void)removeApprovalRequestWithIdentifier:(id)identifier
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

  accessQueue = [(ApproverStore *)self accessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000066AC;
  v10[3] = &unk_100054D70;
  v10[4] = self;
  v11 = identifierCopy;
  v9 = identifierCopy;
  dispatch_async(accessQueue, v10);
}

- (id)approvalRequestIdentifierWithItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  approverStoreItems = [(ApproverStore *)self approverStoreItems];
  allValues = [approverStoreItems allValues];

  requestIdentifier = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (requestIdentifier)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != requestIdentifier; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        itemIdentifier = [v10 itemIdentifier];
        v12 = [itemIdentifier isEqualToString:identifierCopy];

        if (v12)
        {
          createdDate = [v10 createdDate];
          v14 = [NSDate isDateExpired:createdDate];

          if (v14)
          {
            requestIdentifier = 0;
          }

          else
          {
            requestIdentifier = [v10 requestIdentifier];
          }

          goto LABEL_13;
        }
      }

      requestIdentifier = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (requestIdentifier)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return requestIdentifier;
}

- (id)approvalRequestWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  approverStoreItems = [(ApproverStore *)self approverStoreItems];
  v6 = [approverStoreItems objectForKeyedSubscript:identifierCopy];

  if (!v6)
  {
    v9 = +[APLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = identifierCopy;
      v14 = v18;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Error finding request - %@", &v17, 0x16u);
    }

    goto LABEL_11;
  }

  createdDate = [v6 createdDate];
  v8 = [NSDate isDateExpired:createdDate];

  if (v8)
  {
    v9 = +[APLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = v11;
      createdDate2 = [v6 createdDate];
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = createdDate2;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Request Item Expired - %@", &v17, 0x16u);
    }

LABEL_11:

    v15 = 0;
    goto LABEL_13;
  }

  v15 = [(ApproverStore *)self _approvalRequestWithStoreItem:v6];
LABEL_13:

  return v15;
}

- (id)approvalRequestsMatchingUniqueIdentifier:(id)identifier
{
  v4 = [(ApproverStore *)self approvalRequestWithUniqueIdentifier:identifier];
  v21 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  approverStoreItems = [(ApproverStore *)self approverStoreItems];
  allValues = [approverStoreItems allValues];

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
            v17 = [(ApproverStore *)selfCopy _approvalRequestWithStoreItem:v11];
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

- (id)approvalRequestWithRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy)
  {
    v5 = [identifierCopy componentsSeparatedByString:@"_"];
    if ([v5 count] == 2)
    {
      firstObject = [v5 firstObject];
      lastObject = [v5 lastObject];
    }

    else
    {
      lastObject = 0;
      firstObject = 0;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    approverStoreItems = [(ApproverStore *)self approverStoreItems];
    allValues = [approverStoreItems allValues];

    v10 = [allValues countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v28 = v5;
      v30 = 0;
      v12 = *v33;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(allValues);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          createdDate = [v14 createdDate];
          v16 = [NSDate isDateExpired:createdDate];

          if ((v16 & 1) == 0)
          {
            uniqueIdentifier = [v14 uniqueIdentifier];
            v18 = [uniqueIdentifier isEqualToString:v4];

            if (v18)
            {
              v7 = [(ApproverStore *)self _approvalRequestWithStoreItem:v14];

              allValues = v30;
              v5 = v28;
              goto LABEL_24;
            }

            requestIdentifier = [v14 requestIdentifier];
            v20 = [requestIdentifier isEqualToString:lastObject];

            if (v20)
            {
              v21 = firstObject == 0;
            }

            else
            {
              v21 = 1;
            }

            if (!v21)
            {
              createdDate2 = [v14 createdDate];
              [createdDate2 timeIntervalSinceReferenceDate];
              v24 = v23;

              [firstObject doubleValue];
              if (vabdd_f64(v24, v25) <= 5)
              {
                v26 = [(ApproverStore *)self _approvalRequestWithStoreItem:v14];

                v30 = v26;
              }
            }
          }
        }

        v11 = [allValues countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v5 = v28;
      v7 = v30;
    }

    else
    {
      v7 = 0;
    }

LABEL_24:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getCachedApprovalRequests
{
  approverStoreItems = [(ApproverStore *)self approverStoreItems];
  allValues = [approverStoreItems allValues];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000706C;
  v7[3] = &unk_100054DF8;
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
  approverStoreItems = [(ApproverStore *)self approverStoreItems];
  allValues = [approverStoreItems allValues];

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
        v21 = [(ApproverStore *)selfCopy _approvalRequestWithStoreItem:v9];
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

- (void)storeApprovalRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    accessQueue = [(ApproverStore *)self accessQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100007410;
    v9[3] = &unk_100054D70;
    v9[4] = self;
    v10 = requestCopy;
    dispatch_async(accessQueue, v9);
  }

  else
  {
    v6 = +[APLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = objc_opt_class();
      v8 = v12;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Error storing request. The request is missing!", buf, 0xCu);
    }
  }
}

- (id)_approvalRequestWithStoreItem:(id)item
{
  itemCopy = item;
  v4 = [[ApprovalRequest alloc] initWithApproverStorageItem:itemCopy];

  return v4;
}

- (void)_saveChanges
{
  accessQueue = [(ApproverStore *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_approverStoreItems allValues];
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

  requestStore = [(ApproverStore *)self requestStore];
  [requestStore storeItems:v4];
}

- (void)_loadItemsIntoMemory
{
  accessQueue = [(ApproverStore *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  selfCopy = self;
  requestStore = [(ApproverStore *)self requestStore];
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

        v12 = [[ApproverStoreItem alloc] initWithDictionary:*(*(&v34 + 1) + 8 * i)];
        v13 = v12;
        if (v12)
        {
          createdDate = [(ApproverStoreItem *)v12 createdDate];
          v15 = [NSDate isDateExpired:createdDate];

          if ((v15 & 1) == 0)
          {
            modifiedDate = [(ApproverStoreItem *)v13 modifiedDate];
            v17 = [NSDate isDateInFuture:modifiedDate];

            if (v17)
            {
              v18 = +[NSDate date];
              [(ApproverStoreItem *)v13 setModifiedDate:v18];
            }

            uniqueIdentifier = [(ApproverStoreItem *)v13 uniqueIdentifier];
            [(NSMutableDictionary *)v6 setObject:v13 forKeyedSubscript:uniqueIdentifier];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  _migrationItems = [(ApproverStore *)selfCopy _migrationItems];
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

  approverStoreItems = selfCopy->_approverStoreItems;
  selfCopy->_approverStoreItems = v6;
}

- (id)_migrationItems
{
  v24 = [[RequestStore alloc] initWithFileName:@"ApproverStore.plist"];
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

        v8 = [[ApproverStoreItem alloc] initWithDictionary:*(*(&v26 + 1) + 8 * i)];
        v9 = v8;
        if (v8)
        {
          createdDate = [(ApproverStoreItem *)v8 createdDate];
          v11 = [NSDate isDateExpired:createdDate];

          if ((v11 & 1) == 0)
          {
            modifiedDate = [(ApproverStoreItem *)v9 modifiedDate];
            v13 = [NSDate isDateInFuture:modifiedDate];

            if (v13)
            {
              v14 = +[NSDate date];
              [(ApproverStoreItem *)v9 setModifiedDate:v14];
            }

            uniqueIdentifier = [(ApproverStoreItem *)v9 uniqueIdentifier];
            if (!uniqueIdentifier || (v16 = uniqueIdentifier, -[ApproverStoreItem uniqueIdentifier](v9, "uniqueIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 length], v17, v16, !v18))
            {
              requestIdentifier = [(ApproverStoreItem *)v9 requestIdentifier];
              createdDate2 = [(ApproverStoreItem *)v9 createdDate];
              v21 = [ApprovalRequest createUniqueIDFromRequestID:requestIdentifier andCreatedDate:createdDate2];
              [(ApproverStoreItem *)v9 setUniqueIdentifier:v21];
            }

            uniqueIdentifier2 = [(ApproverStoreItem *)v9 uniqueIdentifier];
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