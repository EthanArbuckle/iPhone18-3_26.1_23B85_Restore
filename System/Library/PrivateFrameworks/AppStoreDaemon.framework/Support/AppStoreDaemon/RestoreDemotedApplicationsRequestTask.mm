@interface RestoreDemotedApplicationsRequestTask
- (id)initForClient:(id)client withOptions:(id)options;
- (void)main;
@end

@implementation RestoreDemotedApplicationsRequestTask

- (id)initForClient:(id)client withOptions:(id)options
{
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = RestoreDemotedApplicationsRequestTask;
  v7 = [(RequestTask *)&v18 initForClient:client withOptions:optionsCopy];
  if (v7)
  {
    accountID = [optionsCopy accountID];
    v9 = [accountID copy];
    v10 = v7[8];
    v7[8] = v9;

    appleID = [optionsCopy appleID];
    v12 = [appleID copy];
    v13 = v7[9];
    v7[9] = v12;

    bundleIDs = [optionsCopy bundleIDs];
    v15 = [bundleIDs copy];
    v16 = v7[10];
    v7[10] = v15;
  }

  return v7;
}

- (void)main
{
  appleID = self->_appleID;
  v4 = ASDLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (appleID)
  {
    if (v5)
    {
      accountID = self->_accountID;
      v7 = self->_appleID;
      *buf = 138543618;
      v28 = accountID;
      v29 = 2114;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Looking for demoted applications for accountID: %{public}@ appleID: %{public}@", buf, 0x16u);
    }

    v8 = sub_1002856D4();
    v9 = self->_appleID;
    v26 = 0;
    v10 = sub_100286B40(v8, v9, &v26);
    v11 = v26;

    if (v11)
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to log into account due to error: %{public}@", buf, 0xCu);
      }
    }

    if (v10)
    {
      v13 = sub_1002856D4();
      sub_1002898BC(v13, v10, 0);

      v14 = sub_1002856D4();
      ams_DSID = [v10 ams_DSID];
      sub_100287648(v14, ams_DSID);

      v16 = 1;
    }

    else
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_accountID;
        v23 = self->_appleID;
        *buf = 138543618;
        v28 = v22;
        v29 = 2114;
        v30 = v23;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Could not find account for accountID: %{public}@] appleID: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      v16 = 0;
    }
  }

  else
  {
    if (v5)
    {
      v17 = [(NSArray *)self->_bundleIDs componentsJoinedByString:@", "];
      *buf = 138543362;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating jobs for demoted apps: [%{public}@]", buf, 0xCu);
    }

    v10 = sub_10027F51C([ImportJobsForDemotedAppsTask alloc], self->_bundleIDs);
    v25 = 0;
    v16 = [(Task *)self runSubTask:v10 returningError:&v25];
    v11 = v25;
    v18 = ASDLogHandleForCategory();
    v14 = v18;
    if (v11)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        if (v10)
        {
          Property = objc_getProperty(v10, v19, 32, 1);
        }

        else
        {
          Property = 0;
        }

        v21 = Property;
        *buf = 138543362;
        v28 = v21;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Completed request with error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Completed Restore Demoted request successfully", buf, 2u);
      }

      v11 = 0;
    }
  }

  self->super.super._success = v16;
  objc_setProperty_atomic_copy(self, v24, v11, 32);
}

@end