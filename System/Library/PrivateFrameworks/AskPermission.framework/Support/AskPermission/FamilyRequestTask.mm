@interface FamilyRequestTask
- (FamilyRequestTask)initWithDSID:(id)d;
- (id)_performWithFamilyRequest:(id)request;
- (id)perform;
- (int64_t)_familyMemberType:(id)type;
@end

@implementation FamilyRequestTask

- (FamilyRequestTask)initWithDSID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = FamilyRequestTask;
  v6 = [(FamilyRequestTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_DSID, d);
  }

  return v7;
}

- (id)perform
{
  v3 = objc_alloc_init(FAFetchFamilyCircleRequest);
  v4 = [(FamilyRequestTask *)self _performWithFamilyRequest:v3];

  return v4;
}

- (id)_performWithFamilyRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = objc_opt_class();
    v8 = v24;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching FamilyCircle", buf, 0xCu);
  }

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100014164;
  v20 = &unk_1000553F8;
  selfCopy = self;
  v9 = v5;
  v22 = v9;
  [requestCopy startRequestWithCompletionHandler:&v17];

  v10 = [APLogConfig sharedDaemonConfig:v17];
  if (!v10)
  {
    v10 = +[APLogConfig sharedConfig];
  }

  oSLogObject2 = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    *buf = 138543362;
    v24 = v12;
    v13 = v12;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: Waiting on FamilyCircle", buf, 0xCu);
  }

  v14 = v22;
  v15 = v9;

  return v9;
}

- (int64_t)_familyMemberType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (!typeCopy)
  {
    v5 = +[APLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v19 = 138543362;
    v20 = objc_opt_class();
    v11 = v20;
    v12 = "%{public}@: Family Member == nil. Unable to determine if Guardian or Requester.";
    v13 = oSLogObject;
    v14 = OS_LOG_TYPE_ERROR;
    goto LABEL_14;
  }

  if (([typeCopy isGuardian] & 1) != 0 || (objc_msgSend(v4, "isParent") & 1) != 0 || objc_msgSend(v4, "isOrganizer"))
  {
    v5 = +[APLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = AMSHashIfNeeded();
      v19 = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: I am a Guardian/Parent/Organizer: %{public}@", &v19, 0x16u);
    }

    v10 = 0;
    goto LABEL_16;
  }

  if (([v4 isChildAccount] & 1) == 0 && !objc_msgSend(v4, "isTeenAccount"))
  {
    v5 = +[APLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v19 = 138543362;
    v20 = objc_opt_class();
    v11 = v20;
    v12 = "%{public}@: Unable to determine if Guardian or Requester.";
    v13 = oSLogObject;
    v14 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v13, v14, v12, &v19, 0xCu);

LABEL_15:
    v10 = 2;
    goto LABEL_16;
  }

  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = v16;
    v18 = AMSHashIfNeeded();
    v19 = 138543618;
    v20 = v16;
    v21 = 2114;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: I am a Child/Teen: %{public}@", &v19, 0x16u);
  }

  v10 = 1;
LABEL_16:

  return v10;
}

@end