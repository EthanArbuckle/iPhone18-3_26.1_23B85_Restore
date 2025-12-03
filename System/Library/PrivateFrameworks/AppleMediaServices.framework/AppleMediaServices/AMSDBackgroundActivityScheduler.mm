@interface AMSDBackgroundActivityScheduler
- (AMSDBackgroundActivityScheduler)initWithIdentifier:(id)identifier;
- (void)checkIn;
- (void)invalidate;
- (void)schedule;
- (void)setRequireInexpensiveNetworkConnection:(BOOL)connection;
- (void)setRequireNetworkConnection:(BOOL)connection;
@end

@implementation AMSDBackgroundActivityScheduler

- (AMSDBackgroundActivityScheduler)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = AMSDBackgroundActivityScheduler;
  v6 = [(AMSDBackgroundActivityScheduler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v7->_qualityOfService = 9;
  }

  return v7;
}

- (void)setRequireInexpensiveNetworkConnection:(BOOL)connection
{
  if (self->_requireInexpensiveNetworkConnection != connection)
  {
    self->_requireInexpensiveNetworkConnection = connection;
    if (connection)
    {
      [(AMSDBackgroundActivityScheduler *)self setRequireNetworkConnection:1];
    }
  }
}

- (void)setRequireNetworkConnection:(BOOL)connection
{
  if (self->_requireNetworkConnection != connection)
  {
    self->_requireNetworkConnection = connection;
    if (!connection)
    {
      [(AMSDBackgroundActivityScheduler *)self setRequireInexpensiveNetworkConnection:0];
    }
  }
}

- (void)checkIn
{
  v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    identifier = [(AMSDBackgroundActivityScheduler *)self identifier];
    v12 = 138543874;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = identifier;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Checking in. identifier = %{public}@", &v12, 0x20u);
  }

  v8 = [NSBackgroundActivityScheduler alloc];
  identifier2 = [(AMSDBackgroundActivityScheduler *)self identifier];
  v10 = [v8 initWithIdentifier:identifier2];

  [v10 setPreregistered:1];
  activityBlock = [(AMSDBackgroundActivityScheduler *)self activityBlock];
  [v10 scheduleWithBlock:activityBlock];
}

- (void)invalidate
{
  v3 = [NSBackgroundActivityScheduler alloc];
  identifier = [(AMSDBackgroundActivityScheduler *)self identifier];
  v5 = [v3 initWithIdentifier:identifier];

  [v5 invalidate];
}

- (void)schedule
{
  v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    identifier = [(AMSDBackgroundActivityScheduler *)self identifier];
    v48 = 138543874;
    v49 = v5;
    v50 = 2114;
    v51 = v6;
    v52 = 2114;
    v53 = identifier;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Scheduling a block for later execution. identifier = %{public}@ | options = {", &v48, 0x20u);
  }

  v8 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    if ([(AMSDBackgroundActivityScheduler *)self allowBattery])
    {
      v12 = @"true";
    }

    else
    {
      v12 = @"false";
    }

    v48 = 138543874;
    v49 = v10;
    v50 = 2114;
    v51 = v11;
    v52 = 2114;
    v53 = v12;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@]   allowBattery = %{public}@", &v48, 0x20u);
  }

  v13 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = AMSLogKey();
    [(AMSDBackgroundActivityScheduler *)self interval];
    v48 = 138543874;
    v49 = v15;
    v50 = 2114;
    v51 = v16;
    v52 = 2048;
    v53 = v17;
    _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@]   interval = %lf", &v48, 0x20u);
  }

  v18 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject4 = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = AMSLogKey();
    qualityOfService = [(AMSDBackgroundActivityScheduler *)self qualityOfService];
    v48 = 138543874;
    v49 = v20;
    v50 = 2114;
    v51 = v21;
    v52 = 2048;
    v53 = qualityOfService;
    _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@]   qualityOfService = %ld", &v48, 0x20u);
  }

  v23 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v23)
  {
    v23 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject5 = [v23 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v25 = objc_opt_class();
    v26 = AMSLogKey();
    if ([(AMSDBackgroundActivityScheduler *)self repeats])
    {
      v27 = @"true";
    }

    else
    {
      v27 = @"false";
    }

    v48 = 138543874;
    v49 = v25;
    v50 = 2114;
    v51 = v26;
    v52 = 2114;
    v53 = v27;
    _os_log_impl(&_mh_execute_header, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@]   repeats = %{public}@", &v48, 0x20u);
  }

  v28 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v28)
  {
    v28 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject6 = [v28 OSLogObject];
  if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
  {
    v30 = objc_opt_class();
    v31 = AMSLogKey();
    if ([(AMSDBackgroundActivityScheduler *)self requireInexpensiveNetworkConnection])
    {
      v32 = @"true";
    }

    else
    {
      v32 = @"false";
    }

    v48 = 138543874;
    v49 = v30;
    v50 = 2114;
    v51 = v31;
    v52 = 2114;
    v53 = v32;
    _os_log_impl(&_mh_execute_header, oSLogObject6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@]   requireInexpensiveNetworkConnection = %{public}@", &v48, 0x20u);
  }

  v33 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v33)
  {
    v33 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject7 = [v33 OSLogObject];
  if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
  {
    v35 = objc_opt_class();
    v36 = AMSLogKey();
    if ([(AMSDBackgroundActivityScheduler *)self requireNetworkConnection])
    {
      v37 = @"true";
    }

    else
    {
      v37 = @"false";
    }

    v48 = 138543874;
    v49 = v35;
    v50 = 2114;
    v51 = v36;
    v52 = 2114;
    v53 = v37;
    _os_log_impl(&_mh_execute_header, oSLogObject7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@]   requireNetworkConnection = %{public}@", &v48, 0x20u);
  }

  v38 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v38)
  {
    v38 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject8 = [v38 OSLogObject];
  if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
  {
    v40 = objc_opt_class();
    v41 = AMSLogKey();
    v48 = 138543618;
    v49 = v40;
    v50 = 2114;
    v51 = v41;
    _os_log_impl(&_mh_execute_header, oSLogObject8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] }", &v48, 0x16u);
  }

  v42 = [NSBackgroundActivityScheduler alloc];
  identifier2 = [(AMSDBackgroundActivityScheduler *)self identifier];
  v44 = [v42 initWithIdentifier:identifier2];

  [(AMSDBackgroundActivityScheduler *)self interval];
  [v44 setInterval:{fmax(v45, 2.0)}];
  [v44 setQualityOfService:{-[AMSDBackgroundActivityScheduler qualityOfService](self, "qualityOfService")}];
  [v44 setRepeats:{-[AMSDBackgroundActivityScheduler repeats](self, "repeats")}];
  v46 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v46, XPC_ACTIVITY_ALLOW_BATTERY, [(AMSDBackgroundActivityScheduler *)self allowBattery]);
  xpc_dictionary_set_BOOL(v46, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, [(AMSDBackgroundActivityScheduler *)self requireInexpensiveNetworkConnection]);
  xpc_dictionary_set_BOOL(v46, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, [(AMSDBackgroundActivityScheduler *)self requireNetworkConnection]);
  [v44 _setAdditionalXPCActivityProperties:v46];
  activityBlock = [(AMSDBackgroundActivityScheduler *)self activityBlock];
  [v44 scheduleWithBlock:activityBlock];
}

@end