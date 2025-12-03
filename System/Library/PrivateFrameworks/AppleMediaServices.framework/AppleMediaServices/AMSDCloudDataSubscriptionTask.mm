@interface AMSDCloudDataSubscriptionTask
+ (BOOL)resetLastAttemptDate;
- (AMSDCloudDataSubscriptionTask)initWithDatabase:(id)database identifier:(id)identifier;
- (AMSDCloudDataSubscriptionTask)initWithDatabase:(id)database identifier:(id)identifier storage:(id)storage;
- (BOOL)_shouldRenewSubscriptionForIdentifier:(id)identifier;
- (BOOL)_shouldRenewSubscriptionForIdentifier:(id)identifier maxAge:(double)age;
- (id)_performSubscriptionModification:(id)modification;
- (id)_readSubscriptionDateForIdentifier:(id)identifier;
- (id)_subscribeWithIdentifier:(id)identifier attempt:(unint64_t)attempt;
- (id)_subscriptionForIdentifier:(id)identifier;
- (id)perform;
- (void)_writeSubscriptionDateForIdentifier:(id)identifier;
@end

@implementation AMSDCloudDataSubscriptionTask

- (AMSDCloudDataSubscriptionTask)initWithDatabase:(id)database identifier:(id)identifier storage:(id)storage
{
  databaseCopy = database;
  identifierCopy = identifier;
  storageCopy = storage;
  v14.receiver = self;
  v14.super_class = AMSDCloudDataSubscriptionTask;
  v11 = [(AMSDCloudDataSubscriptionTask *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(AMSDCloudDataSubscriptionTask *)v11 setDatabase:databaseCopy];
    [(AMSDCloudDataSubscriptionTask *)v12 setIdentifier:identifierCopy];
    [(AMSDCloudDataSubscriptionTask *)v12 setMaxRetries:10];
    [(AMSDCloudDataSubscriptionTask *)v12 setMaxAge:86400.0];
    [(AMSDCloudDataSubscriptionTask *)v12 setStorage:storageCopy];
  }

  return v12;
}

- (AMSDCloudDataSubscriptionTask)initWithDatabase:(id)database identifier:(id)identifier
{
  identifierCopy = identifier;
  databaseCopy = database;
  v8 = objc_alloc_init(AMSDCloudDataSubscriptionStorage);
  v9 = [(AMSDCloudDataSubscriptionTask *)self initWithDatabase:databaseCopy identifier:identifierCopy storage:v8];

  return v9;
}

+ (BOOL)resetLastAttemptDate
{
  v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = AMSLogKey();
    v6 = objc_opt_class();
    v7 = v6;
    if (v5)
    {
      self = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v7, self];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v6];
    }
    selfCopy = ;
    *buf = 138543362;
    v11 = selfCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting all Subscription Dates.", buf, 0xCu);
    if (v5)
    {

      selfCopy = self;
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

- (id)_subscribeWithIdentifier:(id)identifier attempt:(unint64_t)attempt
{
  identifierCopy = identifier;
  v7 = [(AMSDCloudDataSubscriptionTask *)self _subscriptionForIdentifier:identifierCopy];
  v16 = v7;
  v8 = [NSArray arrayWithObjects:&v16 count:1];
  v9 = [(AMSDCloudDataSubscriptionTask *)self _performSubscriptionModification:v8];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004ADA4;
  v13[3] = &unk_1002B02C0;
  v13[4] = self;
  v14 = identifierCopy;
  attemptCopy = attempt;
  v10 = identifierCopy;
  v11 = [v9 continueWithBlock:v13];

  return v11;
}

- (id)_subscriptionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(CKNotificationInfo);
  [v5 setShouldSendContentAvailable:1];
  v6 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:identifierCopy];

  [v6 setNotificationInfo:v5];
  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    selfCopy = ;
    v13 = AMSHashIfNeeded();
    *buf = 138543618;
    v16 = selfCopy;
    v17 = 2114;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Creating database subscription: %{public}@", buf, 0x16u);
    if (v9)
    {

      selfCopy = self;
    }
  }

  return v6;
}

- (id)_performSubscriptionModification:(id)modification
{
  modificationCopy = modification;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = [[CKModifySubscriptionsOperation alloc] initWithSubscriptionsToSave:modificationCopy subscriptionIDsToDelete:0];

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10004B700;
  v15 = &unk_1002B02E8;
  selfCopy = self;
  v7 = v5;
  v17 = v7;
  [v6 setModifySubscriptionsCompletionBlock:&v12];
  v8 = [(AMSDCloudDataSubscriptionTask *)self database:v12];
  [v8 addOperation:v6];

  v9 = v17;
  v10 = v7;

  return v7;
}

- (void)_writeSubscriptionDateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  storage = [(AMSDCloudDataSubscriptionTask *)self storage];
  v6 = +[NSDate date];
  [storage writeSubscriptionDate:v6 identifier:identifierCopy];

  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    selfCopy = ;
    *buf = 138543618;
    v14 = selfCopy;
    v15 = 2114;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Wrote subscription date for identifier: %{public}@", buf, 0x16u);
    if (v9)
    {

      selfCopy = self;
    }
  }
}

- (id)_readSubscriptionDateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  storage = [(AMSDCloudDataSubscriptionTask *)self storage];
  v6 = [storage subscriptionDateForIdentifier:identifierCopy];

  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      selfCopy = ;
      *buf = 138543874;
      v21 = selfCopy;
      v22 = 2114;
      v23 = identifierCopy;
      v24 = 2114;
      v25 = v6;
      v16 = "%{public}@Found subscription date for identifier %{public}@: %{public}@";
      v17 = oSLogObject;
      v18 = 32;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      if (v10)
      {

        selfCopy = self;
      }
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      selfCopy = ;
      *buf = 138543618;
      v21 = selfCopy;
      v22 = 2114;
      v23 = identifierCopy;
      v16 = "%{public}@No subscription date found for identifier: %{public}@";
      v17 = oSLogObject;
      v18 = 22;
      goto LABEL_16;
    }
  }

  return v6;
}

- (BOOL)_shouldRenewSubscriptionForIdentifier:(id)identifier maxAge:(double)age
{
  identifierCopy = identifier;
  v7 = [(AMSDCloudDataSubscriptionTask *)self _readSubscriptionDateForIdentifier:identifierCopy];
  if (v7)
  {
    v8 = +[NSDate date];
    [v8 timeIntervalSinceDate:v7];
    v10 = v9;

    v11 = v10 > age;
    v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      selfCopy = ;
      v22 = @"NO";
      *buf = 138544386;
      v25 = selfCopy;
      v26 = 2114;
      if (v10 > age)
      {
        v22 = @"YES";
      }

      v27 = identifierCopy;
      v28 = 2048;
      v29 = v10;
      v30 = 2048;
      ageCopy = age;
      v32 = 2114;
      v33 = v22;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Time since last subscription for %{public}@: %.2f seconds. Max age: %.2f seconds. Should renew: %{public}@", buf, 0x34u);
      if (v14)
      {

        selfCopy = self;
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

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      selfCopy2 = ;
      *buf = 138543618;
      v25 = selfCopy2;
      v26 = 2114;
      v27 = identifierCopy;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@No previous subscription date found for %{public}@. Should renew.", buf, 0x16u);
      if (v18)
      {

        selfCopy2 = self;
      }
    }

    v11 = 1;
  }

  return v11;
}

- (BOOL)_shouldRenewSubscriptionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(AMSDCloudDataSubscriptionTask *)self maxAge];
  LOBYTE(self) = [(AMSDCloudDataSubscriptionTask *)self _shouldRenewSubscriptionForIdentifier:identifierCopy maxAge:?];

  return self;
}

@end