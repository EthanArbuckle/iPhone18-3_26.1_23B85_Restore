@interface AMSDFetchMultiUserRecordZoneTask
- (AMSDFetchMultiUserRecordZoneTask)initWithHome:(id)home homeUser:(id)user database:(id)database metrics:(id)metrics;
- (id)_createRecordZoneWithError:(id *)error;
- (id)_fetchRecordZoneWithError:(id *)error;
- (id)performTask;
- (void)enqueBeginMetrics;
- (void)enqueFailedMetrics:(id)metrics;
@end

@implementation AMSDFetchMultiUserRecordZoneTask

- (AMSDFetchMultiUserRecordZoneTask)initWithHome:(id)home homeUser:(id)user database:(id)database metrics:(id)metrics
{
  homeCopy = home;
  userCopy = user;
  databaseCopy = database;
  metricsCopy = metrics;
  v18.receiver = self;
  v18.super_class = AMSDFetchMultiUserRecordZoneTask;
  v15 = [(AMSDFetchMultiUserRecordZoneTask *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_createIfMissing = 1;
    objc_storeStrong(&v15->_database, database);
    objc_storeStrong(&v16->_home, home);
    objc_storeStrong(&v16->_user, user);
    v16->_qualityOfService = 17;
    objc_storeStrong(&v16->_metrics, metrics);
  }

  return v16;
}

- (id)performTask
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100057C3C;
  v4[3] = &unk_1002B06D8;
  v4[4] = self;
  v2 = [(AMSDFetchMultiUserRecordZoneTask *)self performTaskWithBlock:v4];

  return v2;
}

- (id)_createRecordZoneWithError:(id *)error
{
  database = [(AMSDFetchMultiUserRecordZoneTask *)self database];
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];
  v8 = [database createRecordZoneWithRecordZoneName:uUIDString];

  database2 = [(AMSDFetchMultiUserRecordZoneTask *)self database];
  v10 = [database2 saveRecordZone:v8];
  v11 = [v10 resultWithError:error];

  if (v11)
  {
    database3 = [(AMSDFetchMultiUserRecordZoneTask *)self database];
    v13 = [database3 createRecordWithRecordName:@"AMSHomeParticipant" recordType:@"AMSHomeParticipant" recordZone:v11];

    home = [(AMSDFetchMultiUserRecordZoneTask *)self home];
    identifier = [home identifier];
    uUIDString2 = [identifier UUIDString];
    [v13 setField:uUIDString2 forKey:@"AMSHomeParticipant_HomeIdentifier"];

    user = [(AMSDFetchMultiUserRecordZoneTask *)self user];
    identifier2 = [user identifier];
    uUIDString3 = [identifier2 UUIDString];
    [v13 setField:uUIDString3 forKey:@"AMSHomeParticipant_HomeUserIdentifier"];

    database4 = [(AMSDFetchMultiUserRecordZoneTask *)self database];
    v21 = [database4 saveRecord:v13];
    v45 = 0;
    v22 = [v21 resultWithError:&v45];
    v23 = v45;

    if (v22)
    {
      v24 = v11;
      v25 = v23;
    }

    else
    {
      v26 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v26)
      {
        v26 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v26 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = AMSLogKey();
        v30 = AMSHashIfNeeded();
        *buf = 138543874;
        v48 = v28;
        v49 = 2114;
        v50 = v29;
        v51 = 2114;
        v52 = v30;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create a HomeParticipant record inside a record zone. error = %{public}@", buf, 0x20u);
      }

      database5 = [(AMSDFetchMultiUserRecordZoneTask *)self database];
      identifier3 = [v11 identifier];
      v46 = identifier3;
      v33 = [NSArray arrayWithObjects:&v46 count:1];
      v34 = [database5 deleteRecordZonesWithRecordZoneIdentifiers:v33];
      v44 = v23;
      v35 = [v34 resultWithError:&v44];
      v25 = v44;

      if (!v35)
      {
        v36 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        if (!v36)
        {
          v36 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v36 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v39 = AMSLogKey();
          v40 = AMSHashIfNeeded();
          *buf = 138543874;
          v48 = v38;
          v49 = 2114;
          v50 = v39;
          v51 = 2114;
          v52 = v40;
          _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to delete the record zone. error = %{public}@", buf, 0x20u);
        }
      }

      if (v43)
      {
        v41 = v25;
        v24 = 0;
        *v43 = v25;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)enqueBeginMetrics
{
  metrics = [(AMSDFetchMultiUserRecordZoneTask *)self metrics];

  if (metrics)
  {
    metrics2 = [(AMSDFetchMultiUserRecordZoneTask *)self metrics];
    enqueueCloudKitFetchBeganEvent = [metrics2 enqueueCloudKitFetchBeganEvent];
  }
}

- (void)enqueFailedMetrics:(id)metrics
{
  metricsCopy = metrics;
  metrics = [(AMSDFetchMultiUserRecordZoneTask *)self metrics];

  if (metrics)
  {
    metrics2 = [(AMSDFetchMultiUserRecordZoneTask *)self metrics];
    v6 = [metrics2 enqueueCloudKitFetchFailedEventWithError:metricsCopy];
  }
}

- (id)_fetchRecordZoneWithError:(id *)error
{
  selfCopy = self;
  database = [(AMSDFetchMultiUserRecordZoneTask *)self database];
  v6 = [database fetchRecordZonesWithQualityOfService:{-[AMSDFetchMultiUserRecordZoneTask qualityOfService](selfCopy, "qualityOfService")}];
  v7 = [v6 resultWithError:error];

  if (v7)
  {
    results = [v7 results];
    allValues = [results allValues];

    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_100058FB4;
    v88[3] = &unk_1002B0700;
    v88[4] = selfCopy;
    v10 = [allValues ams_filterUsingTest:v88];

    firstObject = [v10 firstObject];
    v73 = v10;
    v12 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    if ([v10 count] >= 2)
    {
      v13 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v13 OSLogObject];
      errorCopy = error;
      v71 = firstObject;
      v78 = selfCopy;
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = AMSLogKey();
        home = [(AMSDFetchMultiUserRecordZoneTask *)selfCopy home];
        v18 = AMSHashIfNeeded();
        user = [(AMSDFetchMultiUserRecordZoneTask *)selfCopy user];
        v20 = AMSHashIfNeeded();
        v21 = AMSHashIfNeeded();
        *buf = 138544386;
        v93 = v15;
        v94 = 2114;
        v95 = v16;
        v96 = 2114;
        v97 = v18;
        v98 = 2114;
        v99 = v20;
        v100 = 2114;
        v101 = v21;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] There are duplicate record zones for a home/user. home = %{public}@ | user = %{public}@ | recordZones = %{public}@", buf, 0x34u);

        error = errorCopy;
        v12 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;

        selfCopy = v78;
        firstObject = v71;
      }

      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      obj = v73;
      v22 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
      v69 = v7;
      if (v22)
      {
        v23 = v22;
        v76 = *v85;
        while (2)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v85 != v76)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v84 + 1) + 8 * i);
            database2 = [(AMSDFetchMultiUserRecordZoneTask *)v78 database];
            identifier = [v25 identifier];
            v28 = [database2 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:identifier qualityOfService:{-[AMSDFetchMultiUserRecordZoneTask qualityOfService](v78, "qualityOfService")}];
            v29 = [v28 resultWithError:0];

            v30 = [v29 fieldForKey:@"AMSHomeParticipant_MultiUserToken"];
            objc_opt_class();
            v31 = 0;
            if (objc_opt_isKindOfClass())
            {
              v31 = v30;
            }

            v32 = [v29 fieldForKey:@"AMSHomeParticipant_MultiUserTokenInvalid"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }

            bOOLValue = [v33 BOOLValue];
            if ([v31 length] && (bOOLValue & 1) == 0)
            {
              v35 = v25;

              firstObject = v35;
              v7 = v69;
              error = errorCopy;
              goto LABEL_24;
            }
          }

          v23 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }

        v7 = v69;
        error = errorCopy;
        firstObject = v71;
LABEL_24:
        selfCopy = v78;
        v12 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
      }

      database3 = [(AMSDFetchMultiUserRecordZoneTask *)selfCopy database];
      isPrivateDatabase = [database3 isPrivateDatabase];

      if (isPrivateDatabase)
      {
        v38 = [obj mutableCopy];
        v72 = firstObject;
        [v38 removeObject:firstObject];
        sharedAccountsMultiUserConfig = [v12[95] sharedAccountsMultiUserConfig];
        if (!sharedAccountsMultiUserConfig)
        {
          sharedAccountsMultiUserConfig = [v12[95] sharedConfig];
        }

        oSLogObject2 = [sharedAccountsMultiUserConfig OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_opt_class();
          v42 = AMSLogKey();
          v43 = AMSHashIfNeeded();
          *buf = 138543874;
          v93 = v41;
          v94 = 2114;
          v95 = v42;
          v96 = 2114;
          v97 = v43;
          _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Removing duplicate record zones. duplicateRecordZones = %{public}@", buf, 0x20u);
        }

        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        obja = v38;
        v44 = [obja countByEnumeratingWithState:&v80 objects:v90 count:16];
        if (v44)
        {
          v45 = v44;
          v77 = *v81;
          do
          {
            for (j = 0; j != v45; j = j + 1)
            {
              if (*v81 != v77)
              {
                objc_enumerationMutation(obja);
              }

              v47 = *(*(&v80 + 1) + 8 * j);
              database4 = [(AMSDFetchMultiUserRecordZoneTask *)selfCopy database];
              identifier2 = [v47 identifier];
              v89 = identifier2;
              v50 = [NSArray arrayWithObjects:&v89 count:1];
              v51 = [database4 deleteRecordZonesWithRecordZoneIdentifiers:v50];
              binaryPromiseAdapter = [v51 binaryPromiseAdapter];
              v79 = 0;
              v53 = [binaryPromiseAdapter resultWithError:&v79];
              v54 = v79;

              if ((v53 & 1) == 0)
              {
                v55 = +[AMSLogConfig sharedAccountsMultiUserConfig];
                if (!v55)
                {
                  v55 = +[AMSLogConfig sharedConfig];
                }

                oSLogObject3 = [v55 OSLogObject];
                if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
                {
                  v57 = objc_opt_class();
                  v58 = AMSLogKey();
                  v59 = AMSHashIfNeeded();
                  v60 = AMSHashIfNeeded();
                  *buf = 138544130;
                  v93 = v57;
                  v94 = 2114;
                  v95 = v58;
                  v96 = 2114;
                  v97 = v59;
                  v98 = 2114;
                  v99 = v60;
                  _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to remove a record zone. recordZone = %{public}@ | error = %{public}@", buf, 0x2Au);
                }
              }

              selfCopy = v78;
            }

            v45 = [obja countByEnumeratingWithState:&v80 objects:v90 count:16];
          }

          while (v45);
        }

        v7 = v69;
        error = errorCopy;
        firstObject = v72;
        v12 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
      }
    }

    sharedAccountsMultiUserConfig2 = [v12[95] sharedAccountsMultiUserConfig];
    if (!sharedAccountsMultiUserConfig2)
    {
      sharedAccountsMultiUserConfig2 = [v12[95] sharedConfig];
    }

    oSLogObject4 = [sharedAccountsMultiUserConfig2 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v63 = objc_opt_class();
      AMSLogKey();
      v65 = v64 = firstObject;
      AMSHashIfNeeded();
      v67 = v66 = v7;
      *buf = 138543874;
      v93 = v63;
      v94 = 2114;
      v95 = v65;
      v96 = 2114;
      v97 = v67;
      _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished fetching record zone: %{public}@", buf, 0x20u);

      v7 = v66;
      firstObject = v64;
    }

    if (error && !firstObject)
    {
      *error = AMSCustomError();
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end