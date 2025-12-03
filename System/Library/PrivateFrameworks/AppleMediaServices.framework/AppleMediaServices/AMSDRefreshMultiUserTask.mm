@interface AMSDRefreshMultiUserTask
- (AMSDRefreshMultiUserTask)initWithMultiUserController:(id)controller homes:(id)homes options:(id)options;
- (BOOL)_createMultiUserTokenForHome:(id)home error:(id *)error;
- (id)_stringForStatusValue:(unint64_t)value;
- (id)performTask;
- (void)_createMultiUserTokensWithErrors:(id)errors;
- (void)_reconcileRecordZonesWithErrors:(id)errors;
@end

@implementation AMSDRefreshMultiUserTask

- (AMSDRefreshMultiUserTask)initWithMultiUserController:(id)controller homes:(id)homes options:(id)options
{
  controllerCopy = controller;
  homesCopy = homes;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = AMSDRefreshMultiUserTask;
  v12 = [(AMSDRefreshMultiUserTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_controller, controller);
    objc_storeStrong(&v13->_homes, homes);
    objc_storeStrong(&v13->_options, options);
  }

  return v13;
}

- (id)performTask
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000881E8;
  v4[3] = &unk_1002B06D8;
  v4[4] = self;
  v2 = [(AMSDRefreshMultiUserTask *)self performTaskWithBlock:v4];

  return v2;
}

- (BOOL)_createMultiUserTokenForHome:(id)home error:(id *)error
{
  homeCopy = home;
  isCurrentUserRestrictedGuest = [homeCopy isCurrentUserRestrictedGuest];
  v8 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  ams_activeiTunesAccount = v8;
  if (isCurrentUserRestrictedGuest)
  {
    if (!v8)
    {
      ams_activeiTunesAccount = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [ams_activeiTunesAccount OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543874;
      v92 = v11;
      v93 = 2114;
      v94 = v12;
      v95 = 2114;
      v96 = homeCopy;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping multi-user token generation restricted guest in home = %{public}@", buf, 0x20u);
    }

    goto LABEL_7;
  }

  if (!v8)
  {
    ams_activeiTunesAccount = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [ams_activeiTunesAccount OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = AMSLogKey();
    v17 = AMSHashIfNeeded();
    *buf = 138543874;
    v92 = v15;
    v93 = 2114;
    v94 = v16;
    v95 = 2114;
    v96 = v17;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating a Multi-User token if necessary. home = %{public}@", buf, 0x20u);
  }

  v18 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v18 ams_activeiTunesAccount];

  if (ams_activeiTunesAccount)
  {
    errorCopy = error;
    v19 = [AMSDFetchMultiUserRecordZoneTask alloc];
    currentUser = [homeCopy currentUser];
    controller = [(AMSDRefreshMultiUserTask *)self controller];
    cloudContainer = [controller cloudContainer];
    privateDatabase = [cloudContainer privateDatabase];
    metrics = [(AMSDRefreshMultiUserTask *)self metrics];
    v25 = [(AMSDFetchMultiUserRecordZoneTask *)v19 initWithHome:homeCopy homeUser:currentUser database:privateDatabase metrics:metrics];

    [(AMSDFetchMultiUserRecordZoneTask *)v25 setRunMode:1];
    v87 = v25;
    performTask = [(AMSDFetchMultiUserRecordZoneTask *)v25 performTask];
    v90 = 0;
    v27 = [performTask resultWithError:&v90];
    v28 = v90;
    if (!v27)
    {
      v47 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v47)
      {
        v47 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v47 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v49 = objc_opt_class();
        v50 = AMSLogKey();
        v51 = AMSLogableError();
        *buf = 138543874;
        v92 = v49;
        v93 = 2114;
        v94 = v50;
        v95 = 2114;
        v96 = v51;
        _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to fetch a home's record zone. error = %{public}@", buf, 0x20u);

        v27 = 0;
      }

      if (errorCopy)
      {
        v52 = v28;
        v13 = 0;
        *errorCopy = v28;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_66;
    }

    v84 = performTask;
    controller2 = [(AMSDRefreshMultiUserTask *)self controller];
    [controller2 cloudContainer];
    v31 = v30 = v27;
    privateDatabase2 = [v31 privateDatabase];
    v83 = v30;
    identifier = [v30 identifier];
    v34 = [privateDatabase2 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:identifier];
    v89 = v28;
    v35 = [v34 resultWithError:&v89];
    v85 = v89;

    v36 = v35;
    if (!v35 && ([v85 ams_hasDomain:@"AMSDCloudDataErrorDomain" code:7] & 1) == 0)
    {
      v74 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      v75 = errorCopy;
      if (!v74)
      {
        v74 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v74 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
      {
        v77 = objc_opt_class();
        v78 = AMSLogKey();
        v79 = AMSLogableError();
        *buf = 138543874;
        v92 = v77;
        v93 = 2114;
        v94 = v78;
        v95 = 2114;
        v96 = v79;
        _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to fetch a HomeParticipant record. error = %{public}@", buf, 0x20u);

        v36 = 0;
        v75 = errorCopy;
      }

      v28 = v85;
      if (v75)
      {
        v80 = v85;
        *v75 = v85;
      }

      metrics2 = [(AMSDRefreshMultiUserTask *)self metrics];
      v81 = [metrics2 enqueueCloudKitFetchFailedEventWithError:v85];
      v13 = 0;
      goto LABEL_65;
    }

    metrics3 = [(AMSDRefreshMultiUserTask *)self metrics];
    enqueueCloudKitFetchSuccessEvent = [metrics3 enqueueCloudKitFetchSuccessEvent];

    v39 = [v35 fieldForKey:@"AMSHomeParticipant_MultiUserToken"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v41 = [v35 fieldForKey:@"AMSHomeParticipant_MultiUserTokenInvalid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    bOOLValue = [v42 BOOLValue];
    v54 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    metrics2 = v54;
    if ((isKindOfClass & 1) != 0 && (bOOLValue & 1) == 0)
    {
      if (!v54)
      {
        metrics2 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject5 = [metrics2 OSLogObject];
      v28 = v85;
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v57 = objc_opt_class();
        v58 = AMSLogKey();
        *buf = 138543618;
        v92 = v57;
        v93 = 2114;
        v94 = v58;
        _os_log_impl(&_mh_execute_header, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] A Multi-User token already exists.", buf, 0x16u);
      }

      v13 = 1;
LABEL_65:

      v27 = v83;
      performTask = v84;
LABEL_66:

      goto LABEL_67;
    }

    if (isKindOfClass)
    {
      if (!v54)
      {
        metrics2 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject6 = [metrics2 OSLogObject];
      if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v60 = objc_opt_class();
      v61 = AMSLogKey();
      *buf = 138543618;
      v92 = v60;
      v93 = 2114;
      v94 = v61;
      v62 = "%{public}@: [%{public}@] A Multi-User token exists but is invalid.";
    }

    else
    {
      if (!v54)
      {
        metrics2 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject6 = [metrics2 OSLogObject];
      if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v63 = objc_opt_class();
      v61 = AMSLogKey();
      *buf = 138543618;
      v92 = v63;
      v93 = 2114;
      v94 = v61;
      v62 = "%{public}@: [%{public}@] No Multi-User token exists.";
    }

    _os_log_impl(&_mh_execute_header, oSLogObject6, OS_LOG_TYPE_DEFAULT, v62, buf, 0x16u);

LABEL_49:
    v64 = objc_opt_class();
    controller3 = [(AMSDRefreshMultiUserTask *)self controller];
    metrics2 = [v64 _createGenerateMultiUserTokenTaskForAccount:ams_activeiTunesAccount withController:controller3 home:homeCopy multiUserTokenExists:isKindOfClass & 1];

    performTask2 = [metrics2 performTask];
    v88 = v85;
    v67 = [performTask2 resultWithError:&v88];
    v28 = v88;

    v13 = v67 != 0;
    if (!v67)
    {
      v68 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v68)
      {
        v68 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject7 = [v68 OSLogObject];
      if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
      {
        v70 = objc_opt_class();
        v71 = AMSLogKey();
        v72 = AMSLogableError();
        *buf = 138543874;
        v92 = v70;
        v93 = 2114;
        v94 = v71;
        v95 = 2114;
        v96 = v72;
        _os_log_impl(&_mh_execute_header, oSLogObject7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error generating multi-user token: %{public}@", buf, 0x20u);
      }

      if (errorCopy)
      {
        v73 = v28;
        v13 = 0;
        *errorCopy = v28;
      }

      else
      {
        v13 = 0;
      }

      v36 = v35;
    }

    goto LABEL_65;
  }

  v43 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v43)
  {
    v43 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject8 = [v43 OSLogObject];
  if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_ERROR))
  {
    v45 = objc_opt_class();
    v46 = AMSLogKey();
    *buf = 138543618;
    v92 = v45;
    v93 = 2114;
    v94 = v46;
    _os_log_impl(&_mh_execute_header, oSLogObject8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to generate a multi-user token for the home. There's no active iTunes account.", buf, 0x16u);
  }

  if (error)
  {
    AMSError();
    *error = v13 = 0;
    goto LABEL_67;
  }

LABEL_7:
  v13 = 0;
LABEL_67:

  return v13;
}

- (void)_createMultiUserTokensWithErrors:(id)errors
{
  errorsCopy = errors;
  if (+[AMSDMultiUserController deviceCanManageMultiUser])
  {
    if (([(AMSDRefreshMultiUserTask *)self isCancelled]& 1) == 0 && (sub_100048940(errorsCopy, v5) & 1) == 0)
    {
      options = [(AMSDRefreshMultiUserTask *)self options];
      shouldUseCloudData = [options shouldUseCloudData];

      if (shouldUseCloudData)
      {
        homes = [(AMSDRefreshMultiUserTask *)self homes];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100089254;
        v9[3] = &unk_1002B2278;
        v9[4] = self;
        v10 = errorsCopy;
        [homes enumerateObjectsUsingBlock:v9];
      }
    }
  }
}

- (void)_reconcileRecordZonesWithErrors:(id)errors
{
  errorsCopy = errors;
  if (+[AMSDMultiUserController deviceCanManageMultiUser])
  {
    if (([(AMSDRefreshMultiUserTask *)self isCancelled]& 1) == 0 && (sub_100048940(errorsCopy, v5) & 1) == 0)
    {
      options = [(AMSDRefreshMultiUserTask *)self options];
      shouldUseCloudData = [options shouldUseCloudData];

      if (shouldUseCloudData)
      {
        controller = [(AMSDRefreshMultiUserTask *)self controller];
        cloudContainer = [controller cloudContainer];
        privateDatabase = [cloudContainer privateDatabase];

        fetchRecordZones = [privateDatabase fetchRecordZones];
        v24 = 0;
        v12 = [fetchRecordZones resultWithError:&v24];
        v13 = v24;

        if (v12)
        {
          results = [v12 results];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100089568;
          v20[3] = &unk_1002B22A0;
          v21 = privateDatabase;
          selfCopy = self;
          v23 = errorsCopy;
          [results enumerateKeysAndObjectsUsingBlock:v20];
        }

        else
        {
          v15 = +[AMSLogConfig sharedAccountsMultiUserConfig];
          if (!v15)
          {
            v15 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [v15 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v17 = objc_opt_class();
            v18 = AMSLogKey();
            v19 = AMSLogableError();
            *buf = 138543874;
            v26 = v17;
            v27 = 2114;
            v28 = v18;
            v29 = 2114;
            v30 = v19;
            _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch all record zones. error = %{public}@", buf, 0x20u);
          }

          [errorsCopy addObject:v13];
        }
      }
    }
  }
}

- (id)_stringForStatusValue:(unint64_t)value
{
  v3 = @"unknown";
  if (value == 1)
  {
    v3 = @"disabled";
  }

  if (value == 2)
  {
    return @"enabled";
  }

  else
  {
    return v3;
  }
}

@end