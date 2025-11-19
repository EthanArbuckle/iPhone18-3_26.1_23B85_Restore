@interface AMSDFetchMultiUserRecordZoneTask
- (AMSDFetchMultiUserRecordZoneTask)initWithHome:(id)a3 homeUser:(id)a4 database:(id)a5 metrics:(id)a6;
- (id)_createRecordZoneWithError:(id *)a3;
- (id)_fetchRecordZoneWithError:(id *)a3;
- (id)performTask;
- (void)enqueBeginMetrics;
- (void)enqueFailedMetrics:(id)a3;
@end

@implementation AMSDFetchMultiUserRecordZoneTask

- (AMSDFetchMultiUserRecordZoneTask)initWithHome:(id)a3 homeUser:(id)a4 database:(id)a5 metrics:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = AMSDFetchMultiUserRecordZoneTask;
  v15 = [(AMSDFetchMultiUserRecordZoneTask *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_createIfMissing = 1;
    objc_storeStrong(&v15->_database, a5);
    objc_storeStrong(&v16->_home, a3);
    objc_storeStrong(&v16->_user, a4);
    v16->_qualityOfService = 17;
    objc_storeStrong(&v16->_metrics, a6);
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

- (id)_createRecordZoneWithError:(id *)a3
{
  v5 = [(AMSDFetchMultiUserRecordZoneTask *)self database];
  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 createRecordZoneWithRecordZoneName:v7];

  v9 = [(AMSDFetchMultiUserRecordZoneTask *)self database];
  v10 = [v9 saveRecordZone:v8];
  v11 = [v10 resultWithError:a3];

  if (v11)
  {
    v12 = [(AMSDFetchMultiUserRecordZoneTask *)self database];
    v13 = [v12 createRecordWithRecordName:@"AMSHomeParticipant" recordType:@"AMSHomeParticipant" recordZone:v11];

    v14 = [(AMSDFetchMultiUserRecordZoneTask *)self home];
    v15 = [v14 identifier];
    v16 = [v15 UUIDString];
    [v13 setField:v16 forKey:@"AMSHomeParticipant_HomeIdentifier"];

    v17 = [(AMSDFetchMultiUserRecordZoneTask *)self user];
    v18 = [v17 identifier];
    v19 = [v18 UUIDString];
    [v13 setField:v19 forKey:@"AMSHomeParticipant_HomeUserIdentifier"];

    v20 = [(AMSDFetchMultiUserRecordZoneTask *)self database];
    v21 = [v20 saveRecord:v13];
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

      v27 = [v26 OSLogObject];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
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
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create a HomeParticipant record inside a record zone. error = %{public}@", buf, 0x20u);
      }

      v31 = [(AMSDFetchMultiUserRecordZoneTask *)self database];
      v32 = [v11 identifier];
      v46 = v32;
      v33 = [NSArray arrayWithObjects:&v46 count:1];
      v34 = [v31 deleteRecordZonesWithRecordZoneIdentifiers:v33];
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

        v37 = [v36 OSLogObject];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
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
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to delete the record zone. error = %{public}@", buf, 0x20u);
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
  v3 = [(AMSDFetchMultiUserRecordZoneTask *)self metrics];

  if (v3)
  {
    v5 = [(AMSDFetchMultiUserRecordZoneTask *)self metrics];
    v4 = [v5 enqueueCloudKitFetchBeganEvent];
  }
}

- (void)enqueFailedMetrics:(id)a3
{
  v7 = a3;
  v4 = [(AMSDFetchMultiUserRecordZoneTask *)self metrics];

  if (v4)
  {
    v5 = [(AMSDFetchMultiUserRecordZoneTask *)self metrics];
    v6 = [v5 enqueueCloudKitFetchFailedEventWithError:v7];
  }
}

- (id)_fetchRecordZoneWithError:(id *)a3
{
  v4 = self;
  v5 = [(AMSDFetchMultiUserRecordZoneTask *)self database];
  v6 = [v5 fetchRecordZonesWithQualityOfService:{-[AMSDFetchMultiUserRecordZoneTask qualityOfService](v4, "qualityOfService")}];
  v7 = [v6 resultWithError:a3];

  if (v7)
  {
    v8 = [v7 results];
    v9 = [v8 allValues];

    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_100058FB4;
    v88[3] = &unk_1002B0700;
    v88[4] = v4;
    v10 = [v9 ams_filterUsingTest:v88];

    v11 = [v10 firstObject];
    v73 = v10;
    v12 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    if ([v10 count] >= 2)
    {
      v13 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      v70 = a3;
      v71 = v11;
      v78 = v4;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = AMSLogKey();
        v17 = [(AMSDFetchMultiUserRecordZoneTask *)v4 home];
        v18 = AMSHashIfNeeded();
        v19 = [(AMSDFetchMultiUserRecordZoneTask *)v4 user];
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
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] There are duplicate record zones for a home/user. home = %{public}@ | user = %{public}@ | recordZones = %{public}@", buf, 0x34u);

        a3 = v70;
        v12 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;

        v4 = v78;
        v11 = v71;
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
            v26 = [(AMSDFetchMultiUserRecordZoneTask *)v78 database];
            v27 = [v25 identifier];
            v28 = [v26 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v27 qualityOfService:{-[AMSDFetchMultiUserRecordZoneTask qualityOfService](v78, "qualityOfService")}];
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

            v34 = [v33 BOOLValue];
            if ([v31 length] && (v34 & 1) == 0)
            {
              v35 = v25;

              v11 = v35;
              v7 = v69;
              a3 = v70;
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
        a3 = v70;
        v11 = v71;
LABEL_24:
        v4 = v78;
        v12 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
      }

      v36 = [(AMSDFetchMultiUserRecordZoneTask *)v4 database];
      v37 = [v36 isPrivateDatabase];

      if (v37)
      {
        v38 = [obj mutableCopy];
        v72 = v11;
        [v38 removeObject:v11];
        v39 = [v12[95] sharedAccountsMultiUserConfig];
        if (!v39)
        {
          v39 = [v12[95] sharedConfig];
        }

        v40 = [v39 OSLogObject];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
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
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Removing duplicate record zones. duplicateRecordZones = %{public}@", buf, 0x20u);
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
              v48 = [(AMSDFetchMultiUserRecordZoneTask *)v4 database];
              v49 = [v47 identifier];
              v89 = v49;
              v50 = [NSArray arrayWithObjects:&v89 count:1];
              v51 = [v48 deleteRecordZonesWithRecordZoneIdentifiers:v50];
              v52 = [v51 binaryPromiseAdapter];
              v79 = 0;
              v53 = [v52 resultWithError:&v79];
              v54 = v79;

              if ((v53 & 1) == 0)
              {
                v55 = +[AMSLogConfig sharedAccountsMultiUserConfig];
                if (!v55)
                {
                  v55 = +[AMSLogConfig sharedConfig];
                }

                v56 = [v55 OSLogObject];
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
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
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to remove a record zone. recordZone = %{public}@ | error = %{public}@", buf, 0x2Au);
                }
              }

              v4 = v78;
            }

            v45 = [obja countByEnumeratingWithState:&v80 objects:v90 count:16];
          }

          while (v45);
        }

        v7 = v69;
        a3 = v70;
        v11 = v72;
        v12 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
      }
    }

    v61 = [v12[95] sharedAccountsMultiUserConfig];
    if (!v61)
    {
      v61 = [v12[95] sharedConfig];
    }

    v62 = [v61 OSLogObject];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = objc_opt_class();
      AMSLogKey();
      v65 = v64 = v11;
      AMSHashIfNeeded();
      v67 = v66 = v7;
      *buf = 138543874;
      v93 = v63;
      v94 = 2114;
      v95 = v65;
      v96 = 2114;
      v97 = v67;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished fetching record zone: %{public}@", buf, 0x20u);

      v7 = v66;
      v11 = v64;
    }

    if (a3 && !v11)
    {
      *a3 = AMSCustomError();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end