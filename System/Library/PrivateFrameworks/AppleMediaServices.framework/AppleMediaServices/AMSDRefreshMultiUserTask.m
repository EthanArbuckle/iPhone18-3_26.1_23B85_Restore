@interface AMSDRefreshMultiUserTask
- (AMSDRefreshMultiUserTask)initWithMultiUserController:(id)a3 homes:(id)a4 options:(id)a5;
- (BOOL)_createMultiUserTokenForHome:(id)a3 error:(id *)a4;
- (id)_stringForStatusValue:(unint64_t)a3;
- (id)performTask;
- (void)_createMultiUserTokensWithErrors:(id)a3;
- (void)_reconcileRecordZonesWithErrors:(id)a3;
@end

@implementation AMSDRefreshMultiUserTask

- (AMSDRefreshMultiUserTask)initWithMultiUserController:(id)a3 homes:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AMSDRefreshMultiUserTask;
  v12 = [(AMSDRefreshMultiUserTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_controller, a3);
    objc_storeStrong(&v13->_homes, a4);
    objc_storeStrong(&v13->_options, a5);
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

- (BOOL)_createMultiUserTokenForHome:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 isCurrentUserRestrictedGuest];
  v8 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543874;
      v92 = v11;
      v93 = 2114;
      v94 = v12;
      v95 = 2114;
      v96 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping multi-user token generation restricted guest in home = %{public}@", buf, 0x20u);
    }

    goto LABEL_7;
  }

  if (!v8)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v9 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating a Multi-User token if necessary. home = %{public}@", buf, 0x20u);
  }

  v18 = +[ACAccountStore ams_sharedAccountStore];
  v9 = [v18 ams_activeiTunesAccount];

  if (v9)
  {
    v86 = a4;
    v19 = [AMSDFetchMultiUserRecordZoneTask alloc];
    v20 = [v6 currentUser];
    v21 = [(AMSDRefreshMultiUserTask *)self controller];
    v22 = [v21 cloudContainer];
    v23 = [v22 privateDatabase];
    v24 = [(AMSDRefreshMultiUserTask *)self metrics];
    v25 = [(AMSDFetchMultiUserRecordZoneTask *)v19 initWithHome:v6 homeUser:v20 database:v23 metrics:v24];

    [(AMSDFetchMultiUserRecordZoneTask *)v25 setRunMode:1];
    v87 = v25;
    v26 = [(AMSDFetchMultiUserRecordZoneTask *)v25 performTask];
    v90 = 0;
    v27 = [v26 resultWithError:&v90];
    v28 = v90;
    if (!v27)
    {
      v47 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v47)
      {
        v47 = +[AMSLogConfig sharedConfig];
      }

      v48 = [v47 OSLogObject];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
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
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to fetch a home's record zone. error = %{public}@", buf, 0x20u);

        v27 = 0;
      }

      if (v86)
      {
        v52 = v28;
        v13 = 0;
        *v86 = v28;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_66;
    }

    v84 = v26;
    v29 = [(AMSDRefreshMultiUserTask *)self controller];
    [v29 cloudContainer];
    v31 = v30 = v27;
    v32 = [v31 privateDatabase];
    v83 = v30;
    v33 = [v30 identifier];
    v34 = [v32 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v33];
    v89 = v28;
    v35 = [v34 resultWithError:&v89];
    v85 = v89;

    v36 = v35;
    if (!v35 && ([v85 ams_hasDomain:@"AMSDCloudDataErrorDomain" code:7] & 1) == 0)
    {
      v74 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      v75 = v86;
      if (!v74)
      {
        v74 = +[AMSLogConfig sharedConfig];
      }

      v76 = [v74 OSLogObject];
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
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
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to fetch a HomeParticipant record. error = %{public}@", buf, 0x20u);

        v36 = 0;
        v75 = v86;
      }

      v28 = v85;
      if (v75)
      {
        v80 = v85;
        *v75 = v85;
      }

      v55 = [(AMSDRefreshMultiUserTask *)self metrics];
      v81 = [v55 enqueueCloudKitFetchFailedEventWithError:v85];
      v13 = 0;
      goto LABEL_65;
    }

    v37 = [(AMSDRefreshMultiUserTask *)self metrics];
    v38 = [v37 enqueueCloudKitFetchSuccessEvent];

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

    v53 = [v42 BOOLValue];
    v54 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    v55 = v54;
    if ((isKindOfClass & 1) != 0 && (v53 & 1) == 0)
    {
      if (!v54)
      {
        v55 = +[AMSLogConfig sharedConfig];
      }

      v56 = [v55 OSLogObject];
      v28 = v85;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = objc_opt_class();
        v58 = AMSLogKey();
        *buf = 138543618;
        v92 = v57;
        v93 = 2114;
        v94 = v58;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] A Multi-User token already exists.", buf, 0x16u);
      }

      v13 = 1;
LABEL_65:

      v27 = v83;
      v26 = v84;
LABEL_66:

      goto LABEL_67;
    }

    if (isKindOfClass)
    {
      if (!v54)
      {
        v55 = +[AMSLogConfig sharedConfig];
      }

      v59 = [v55 OSLogObject];
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
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
        v55 = +[AMSLogConfig sharedConfig];
      }

      v59 = [v55 OSLogObject];
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
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

    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, v62, buf, 0x16u);

LABEL_49:
    v64 = objc_opt_class();
    v65 = [(AMSDRefreshMultiUserTask *)self controller];
    v55 = [v64 _createGenerateMultiUserTokenTaskForAccount:v9 withController:v65 home:v6 multiUserTokenExists:isKindOfClass & 1];

    v66 = [v55 performTask];
    v88 = v85;
    v67 = [v66 resultWithError:&v88];
    v28 = v88;

    v13 = v67 != 0;
    if (!v67)
    {
      v68 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v68)
      {
        v68 = +[AMSLogConfig sharedConfig];
      }

      v69 = [v68 OSLogObject];
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
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
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error generating multi-user token: %{public}@", buf, 0x20u);
      }

      if (v86)
      {
        v73 = v28;
        v13 = 0;
        *v86 = v28;
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

  v44 = [v43 OSLogObject];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = objc_opt_class();
    v46 = AMSLogKey();
    *buf = 138543618;
    v92 = v45;
    v93 = 2114;
    v94 = v46;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to generate a multi-user token for the home. There's no active iTunes account.", buf, 0x16u);
  }

  if (a4)
  {
    AMSError();
    *a4 = v13 = 0;
    goto LABEL_67;
  }

LABEL_7:
  v13 = 0;
LABEL_67:

  return v13;
}

- (void)_createMultiUserTokensWithErrors:(id)a3
{
  v4 = a3;
  if (+[AMSDMultiUserController deviceCanManageMultiUser])
  {
    if (([(AMSDRefreshMultiUserTask *)self isCancelled]& 1) == 0 && (sub_100048940(v4, v5) & 1) == 0)
    {
      v6 = [(AMSDRefreshMultiUserTask *)self options];
      v7 = [v6 shouldUseCloudData];

      if (v7)
      {
        v8 = [(AMSDRefreshMultiUserTask *)self homes];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100089254;
        v9[3] = &unk_1002B2278;
        v9[4] = self;
        v10 = v4;
        [v8 enumerateObjectsUsingBlock:v9];
      }
    }
  }
}

- (void)_reconcileRecordZonesWithErrors:(id)a3
{
  v4 = a3;
  if (+[AMSDMultiUserController deviceCanManageMultiUser])
  {
    if (([(AMSDRefreshMultiUserTask *)self isCancelled]& 1) == 0 && (sub_100048940(v4, v5) & 1) == 0)
    {
      v6 = [(AMSDRefreshMultiUserTask *)self options];
      v7 = [v6 shouldUseCloudData];

      if (v7)
      {
        v8 = [(AMSDRefreshMultiUserTask *)self controller];
        v9 = [v8 cloudContainer];
        v10 = [v9 privateDatabase];

        v11 = [v10 fetchRecordZones];
        v24 = 0;
        v12 = [v11 resultWithError:&v24];
        v13 = v24;

        if (v12)
        {
          v14 = [v12 results];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100089568;
          v20[3] = &unk_1002B22A0;
          v21 = v10;
          v22 = self;
          v23 = v4;
          [v14 enumerateKeysAndObjectsUsingBlock:v20];
        }

        else
        {
          v15 = +[AMSLogConfig sharedAccountsMultiUserConfig];
          if (!v15)
          {
            v15 = +[AMSLogConfig sharedConfig];
          }

          v16 = [v15 OSLogObject];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
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
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch all record zones. error = %{public}@", buf, 0x20u);
          }

          [v4 addObject:v13];
        }
      }
    }
  }
}

- (id)_stringForStatusValue:(unint64_t)a3
{
  v3 = @"unknown";
  if (a3 == 1)
  {
    v3 = @"disabled";
  }

  if (a3 == 2)
  {
    return @"enabled";
  }

  else
  {
    return v3;
  }
}

@end