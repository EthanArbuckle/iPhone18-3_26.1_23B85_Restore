@interface AMSDCloudDataSubscriptionTask
+ (BOOL)resetLastAttemptDate;
- (AMSDCloudDataSubscriptionTask)initWithDatabase:(id)a3 identifier:(id)a4;
- (AMSDCloudDataSubscriptionTask)initWithDatabase:(id)a3 identifier:(id)a4 storage:(id)a5;
- (BOOL)_shouldRenewSubscriptionForIdentifier:(id)a3;
- (BOOL)_shouldRenewSubscriptionForIdentifier:(id)a3 maxAge:(double)a4;
- (id)_performSubscriptionModification:(id)a3;
- (id)_readSubscriptionDateForIdentifier:(id)a3;
- (id)_subscribeWithIdentifier:(id)a3 attempt:(unint64_t)a4;
- (id)_subscriptionForIdentifier:(id)a3;
- (id)perform;
- (void)_writeSubscriptionDateForIdentifier:(id)a3;
@end

@implementation AMSDCloudDataSubscriptionTask

- (AMSDCloudDataSubscriptionTask)initWithDatabase:(id)a3 identifier:(id)a4 storage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AMSDCloudDataSubscriptionTask;
  v11 = [(AMSDCloudDataSubscriptionTask *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(AMSDCloudDataSubscriptionTask *)v11 setDatabase:v8];
    [(AMSDCloudDataSubscriptionTask *)v12 setIdentifier:v9];
    [(AMSDCloudDataSubscriptionTask *)v12 setMaxRetries:10];
    [(AMSDCloudDataSubscriptionTask *)v12 setMaxAge:86400.0];
    [(AMSDCloudDataSubscriptionTask *)v12 setStorage:v10];
  }

  return v12;
}

- (AMSDCloudDataSubscriptionTask)initWithDatabase:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(AMSDCloudDataSubscriptionStorage);
  v9 = [(AMSDCloudDataSubscriptionTask *)self initWithDatabase:v7 identifier:v6 storage:v8];

  return v9;
}

+ (BOOL)resetLastAttemptDate
{
  v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = AMSLogKey();
    v6 = objc_opt_class();
    v7 = v6;
    if (v5)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v7, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v6];
    }
    v8 = ;
    *buf = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting all Subscription Dates.", buf, 0xCu);
    if (v5)
    {

      v8 = a1;
    }
  }

  +[AMSDCloudDataSubscriptionStorage resetStorage];
  return 1;
}

- (id)perform
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004A908;
  v4[3] = &unk_1002AFDB0;
  v4[4] = self;
  v2 = [(AMSDCloudDataSubscriptionTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

- (id)_subscribeWithIdentifier:(id)a3 attempt:(unint64_t)a4
{
  v6 = a3;
  v7 = [(AMSDCloudDataSubscriptionTask *)self _subscriptionForIdentifier:v6];
  v16 = v7;
  v8 = [NSArray arrayWithObjects:&v16 count:1];
  v9 = [(AMSDCloudDataSubscriptionTask *)self _performSubscriptionModification:v8];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004ADA4;
  v13[3] = &unk_1002B02C0;
  v13[4] = self;
  v14 = v6;
  v15 = a4;
  v10 = v6;
  v11 = [v9 continueWithBlock:v13];

  return v11;
}

- (id)_subscriptionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CKNotificationInfo);
  [v5 setShouldSendContentAvailable:1];
  v6 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:v4];

  [v6 setNotificationInfo:v5];
  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = objc_opt_class();
    v11 = v10;
    if (v9)
    {
      self = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v11, self];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    v13 = AMSHashIfNeeded();
    *buf = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Creating database subscription: %{public}@", buf, 0x16u);
    if (v9)
    {

      v12 = self;
    }
  }

  return v6;
}

- (id)_performSubscriptionModification:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = [[CKModifySubscriptionsOperation alloc] initWithSubscriptionsToSave:v4 subscriptionIDsToDelete:0];

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10004B700;
  v15 = &unk_1002B02E8;
  v16 = self;
  v7 = v5;
  v17 = v7;
  [v6 setModifySubscriptionsCompletionBlock:&v12];
  v8 = [(AMSDCloudDataSubscriptionTask *)self database:v12];
  [v8 addOperation:v6];

  v9 = v17;
  v10 = v7;

  return v7;
}

- (void)_writeSubscriptionDateForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AMSDCloudDataSubscriptionTask *)self storage];
  v6 = +[NSDate date];
  [v5 writeSubscriptionDate:v6 identifier:v4];

  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = objc_opt_class();
    v11 = v10;
    if (v9)
    {
      self = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v11, self];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    *buf = 138543618;
    v14 = v12;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Wrote subscription date for identifier: %{public}@", buf, 0x16u);
    if (v9)
    {

      v12 = self;
    }
  }
}

- (id)_readSubscriptionDateForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AMSDCloudDataSubscriptionTask *)self storage];
  v6 = [v5 subscriptionDateForIdentifier:v4];

  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = AMSLogKey();
      v11 = objc_opt_class();
      v12 = v11;
      if (v10)
      {
        self = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v12, self];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      *buf = 138543874;
      v21 = v13;
      v22 = 2114;
      v23 = v4;
      v24 = 2114;
      v25 = v6;
      v16 = "%{public}@Found subscription date for identifier %{public}@: %{public}@";
      v17 = v9;
      v18 = 32;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      if (v10)
      {

        v13 = self;
      }
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = AMSLogKey();
      v14 = objc_opt_class();
      v15 = v14;
      if (v10)
      {
        self = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v15, self];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v14];
      }
      v13 = ;
      *buf = 138543618;
      v21 = v13;
      v22 = 2114;
      v23 = v4;
      v16 = "%{public}@No subscription date found for identifier: %{public}@";
      v17 = v9;
      v18 = 22;
      goto LABEL_16;
    }
  }

  return v6;
}

- (BOOL)_shouldRenewSubscriptionForIdentifier:(id)a3 maxAge:(double)a4
{
  v6 = a3;
  v7 = [(AMSDCloudDataSubscriptionTask *)self _readSubscriptionDateForIdentifier:v6];
  if (v7)
  {
    v8 = +[NSDate date];
    [v8 timeIntervalSinceDate:v7];
    v10 = v9;

    v11 = v10 > a4;
    v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = AMSLogKey();
      v15 = objc_opt_class();
      v16 = v15;
      if (v14)
      {
        self = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v16, self];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      v22 = @"NO";
      *buf = 138544386;
      v25 = v17;
      v26 = 2114;
      if (v10 > a4)
      {
        v22 = @"YES";
      }

      v27 = v6;
      v28 = 2048;
      v29 = v10;
      v30 = 2048;
      v31 = a4;
      v32 = 2114;
      v33 = v22;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Time since last subscription for %{public}@: %.2f seconds. Max age: %.2f seconds. Should renew: %{public}@", buf, 0x34u);
      if (v14)
      {

        v17 = self;
      }
    }
  }

  else
  {
    v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = AMSLogKey();
      v19 = objc_opt_class();
      v20 = v19;
      if (v18)
      {
        self = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v20, self];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v19];
      }
      v21 = ;
      *buf = 138543618;
      v25 = v21;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@No previous subscription date found for %{public}@. Should renew.", buf, 0x16u);
      if (v18)
      {

        v21 = self;
      }
    }

    v11 = 1;
  }

  return v11;
}

- (BOOL)_shouldRenewSubscriptionForIdentifier:(id)a3
{
  v4 = a3;
  [(AMSDCloudDataSubscriptionTask *)self maxAge];
  LOBYTE(self) = [(AMSDCloudDataSubscriptionTask *)self _shouldRenewSubscriptionForIdentifier:v4 maxAge:?];

  return self;
}

@end