@interface ApproverStore
+ (ApproverStore)inMemoryStore;
+ (ApproverStore)sharedStore;
- (ApproverStore)initWithInMemoryStore:(BOOL)a3;
- (BOOL)containsApprovalRequestWithIdentifier:(id)a3;
- (NSMutableDictionary)approverStoreItems;
- (id)_approvalRequestWithStoreItem:(id)a3;
- (id)_migrationItems;
- (id)approvalRequestIdentifierWithItemIdentifier:(id)a3;
- (id)approvalRequestWithRequestIdentifier:(id)a3;
- (id)approvalRequestWithUniqueIdentifier:(id)a3;
- (id)approvalRequestsMatchingUniqueIdentifier:(id)a3;
- (id)getCachedApprovalRequests;
- (id)requestWithItemIdentifier:(id)a3;
- (void)_loadItemsIntoMemory;
- (void)_saveChanges;
- (void)clearRequests;
- (void)removeApprovalRequestWithIdentifier:(id)a3;
- (void)setApproverStoreItems:(id)a3;
- (void)storeApprovalRequest:(id)a3;
@end

@implementation ApproverStore

- (ApproverStore)initWithInMemoryStore:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = ApproverStore;
  v4 = [(ApproverStore *)&v14 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.AskPermission.ApproverStore", 0);
    accessQueue = v4->_accessQueue;
    v4->_accessQueue = v5;

    if (v3)
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
  v3 = [(ApproverStore *)self accessQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000060DC;
  v12 = sub_1000060EC;
  v13 = 0;
  v4 = [(ApproverStore *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000060F4;
  v7[3] = &unk_100054D48;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setApproverStoreItems:(id)a3
{
  v4 = a3;
  v5 = [(ApproverStore *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(ApproverStore *)self accessQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000061D4;
  v8[3] = &unk_100054D70;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
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

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Clearing Ask To Buy Requests", buf, 0xCu);
  }

  v6 = [(ApproverStore *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000643C;
  block[3] = &unk_100054C30;
  block[4] = self;
  dispatch_async(v6, block);
}

- (BOOL)containsApprovalRequestWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ApproverStore *)self approverStoreItems];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 createdDate];
  LOBYTE(v5) = [NSDate isDateExpired:v7];

  return v5 ^ 1;
}

- (void)removeApprovalRequestWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v4;
    v7 = v13;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing request. Request identifier: %{public}@", buf, 0x16u);
  }

  v8 = [(ApproverStore *)self accessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000066AC;
  v10[3] = &unk_100054D70;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_async(v8, v10);
}

- (id)approvalRequestIdentifierWithItemIdentifier:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(ApproverStore *)self approverStoreItems];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 itemIdentifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = [v10 createdDate];
          v14 = [NSDate isDateExpired:v13];

          if (v14)
          {
            v7 = 0;
          }

          else
          {
            v7 = [v10 requestIdentifier];
          }

          goto LABEL_13;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

- (id)approvalRequestWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ApproverStore *)self approverStoreItems];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v9 = +[APLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = v4;
      v14 = v18;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Error finding request - %@", &v17, 0x16u);
    }

    goto LABEL_11;
  }

  v7 = [v6 createdDate];
  v8 = [NSDate isDateExpired:v7];

  if (v8)
  {
    v9 = +[APLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [v6 createdDate];
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Request Item Expired - %@", &v17, 0x16u);
    }

LABEL_11:

    v15 = 0;
    goto LABEL_13;
  }

  v15 = [(ApproverStore *)self _approvalRequestWithStoreItem:v6];
LABEL_13:

  return v15;
}

- (id)approvalRequestsMatchingUniqueIdentifier:(id)a3
{
  v4 = [(ApproverStore *)self approvalRequestWithUniqueIdentifier:a3];
  v21 = objc_alloc_init(NSMutableArray);
  v22 = self;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(ApproverStore *)self approverStoreItems];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 requestIdentifier];
        v13 = [v4 requestIdentifier];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          v15 = [v11 createdDate];
          v16 = [NSDate isDateExpired:v15];

          if ((v16 & 1) == 0)
          {
            v17 = [(ApproverStore *)v22 _approvalRequestWithStoreItem:v11];
            v18 = v17;
            if (v17 && [v17 status] == -1)
            {
              [v21 addObject:v18];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v19 = [NSArray arrayWithArray:v21];

  return v19;
}

- (id)approvalRequestWithRequestIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 componentsSeparatedByString:@"_"];
    if ([v5 count] == 2)
    {
      v6 = [v5 firstObject];
      v31 = [v5 lastObject];
    }

    else
    {
      v31 = 0;
      v6 = 0;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = [(ApproverStore *)self approverStoreItems];
    v9 = [v8 allValues];

    v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v15 = [v14 createdDate];
          v16 = [NSDate isDateExpired:v15];

          if ((v16 & 1) == 0)
          {
            v17 = [v14 uniqueIdentifier];
            v18 = [v17 isEqualToString:v4];

            if (v18)
            {
              v7 = [(ApproverStore *)self _approvalRequestWithStoreItem:v14];

              v9 = v30;
              v5 = v28;
              goto LABEL_24;
            }

            v19 = [v14 requestIdentifier];
            v20 = [v19 isEqualToString:v31];

            if (v20)
            {
              v21 = v6 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (!v21)
            {
              v22 = [v14 createdDate];
              [v22 timeIntervalSinceReferenceDate];
              v24 = v23;

              [v6 doubleValue];
              if (vabdd_f64(v24, v25) <= 5)
              {
                v26 = [(ApproverStore *)self _approvalRequestWithStoreItem:v14];

                v30 = v26;
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
  v3 = [(ApproverStore *)self approverStoreItems];
  v4 = [v3 allValues];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000706C;
  v7[3] = &unk_100054DF8;
  v7[4] = self;
  v5 = [v4 ams_mapWithTransformIgnoresNil:v7];

  return v5;
}

- (id)requestWithItemIdentifier:(id)a3
{
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(ApproverStore *)self approverStoreItems];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v23 = self;
    v9 = 0;
    v10 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 itemIdentifier];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          if (v9)
          {
            v15 = [v12 createdDate];
            v16 = [v9 createdDate];
            v17 = [v15 compare:v16];

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

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);

    if (v9)
    {
      v19 = [v9 createdDate];
      v20 = [NSDate isDateExpired:v19];

      if ((v20 & 1) == 0)
      {
        v21 = [(ApproverStore *)v23 _approvalRequestWithStoreItem:v9];
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

- (void)storeApprovalRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ApproverStore *)self accessQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100007410;
    v9[3] = &unk_100054D70;
    v9[4] = self;
    v10 = v4;
    dispatch_async(v5, v9);
  }

  else
  {
    v6 = +[APLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = objc_opt_class();
      v8 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: Error storing request. The request is missing!", buf, 0xCu);
    }
  }
}

- (id)_approvalRequestWithStoreItem:(id)a3
{
  v3 = a3;
  v4 = [[ApprovalRequest alloc] initWithApproverStorageItem:v3];

  return v4;
}

- (void)_saveChanges
{
  v3 = [(ApproverStore *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_approverStoreItems allValues];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) compile];
        if (v10)
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = [(ApproverStore *)self requestStore];
  [v11 storeItems:v4];
}

- (void)_loadItemsIntoMemory
{
  v3 = [(ApproverStore *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v29 = self;
  v4 = [(ApproverStore *)self requestStore];
  v5 = [v4 items];

  v6 = objc_alloc_init(NSMutableDictionary);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v5;
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
          v14 = [(ApproverStoreItem *)v12 createdDate];
          v15 = [NSDate isDateExpired:v14];

          if ((v15 & 1) == 0)
          {
            v16 = [(ApproverStoreItem *)v13 modifiedDate];
            v17 = [NSDate isDateInFuture:v16];

            if (v17)
            {
              v18 = +[NSDate date];
              [(ApproverStoreItem *)v13 setModifiedDate:v18];
            }

            v19 = [(ApproverStoreItem *)v13 uniqueIdentifier];
            [(NSMutableDictionary *)v6 setObject:v13 forKeyedSubscript:v19];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  v20 = [(ApproverStore *)v29 _migrationItems];
  if ([v20 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = [v20 allKeys];
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v30 + 1) + 8 * j);
          v27 = [v20 objectForKeyedSubscript:v26];
          [(NSMutableDictionary *)v6 setObject:v27 forKeyedSubscript:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v23);
    }
  }

  approverStoreItems = v29->_approverStoreItems;
  v29->_approverStoreItems = v6;
}

- (id)_migrationItems
{
  v24 = [[RequestStore alloc] initWithFileName:@"ApproverStore.plist"];
  v2 = [(RequestStore *)v24 items];
  v25 = objc_alloc_init(NSMutableDictionary);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = v2;
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
          v10 = [(ApproverStoreItem *)v8 createdDate];
          v11 = [NSDate isDateExpired:v10];

          if ((v11 & 1) == 0)
          {
            v12 = [(ApproverStoreItem *)v9 modifiedDate];
            v13 = [NSDate isDateInFuture:v12];

            if (v13)
            {
              v14 = +[NSDate date];
              [(ApproverStoreItem *)v9 setModifiedDate:v14];
            }

            v15 = [(ApproverStoreItem *)v9 uniqueIdentifier];
            if (!v15 || (v16 = v15, -[ApproverStoreItem uniqueIdentifier](v9, "uniqueIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 length], v17, v16, !v18))
            {
              v19 = [(ApproverStoreItem *)v9 requestIdentifier];
              v20 = [(ApproverStoreItem *)v9 createdDate];
              v21 = [ApprovalRequest createUniqueIDFromRequestID:v19 andCreatedDate:v20];
              [(ApproverStoreItem *)v9 setUniqueIdentifier:v21];
            }

            v22 = [(ApproverStoreItem *)v9 uniqueIdentifier];
            [v25 setObject:v9 forKeyedSubscript:v22];
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