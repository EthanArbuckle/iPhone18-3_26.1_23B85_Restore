@interface AMSDGenerateMultiUserTokenTask
+ (double)_scheduleRefreshInterval;
- (AMSDGenerateMultiUserTokenTask)initWithController:(id)a3 account:(id)a4 home:(id)a5;
- (BOOL)_saveMultiUserToken:(id)a3 forHomeParticipant:(id)a4 iCloudAccount:(id)a5 error:(id *)a6;
- (BOOL)_shouldGenerateInviteToken;
- (id)_generateAppProvidedDataWithAction:(id)a3 inviteToken:(id)a4;
- (id)_generateMultiUserTokenWithAction:(id)a3 iCloudAccount:(id)a4 inviteToken:(id)a5 error:(id *)a6;
- (id)_saveRecord:(id)a3 database:(id)a4;
- (id)_shareRecord:(id)a3 withError:(id *)a4;
- (id)performTask;
@end

@implementation AMSDGenerateMultiUserTokenTask

- (AMSDGenerateMultiUserTokenTask)initWithController:(id)a3 account:(id)a4 home:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AMSDGenerateMultiUserTokenTask;
  v12 = [(AMSDGenerateMultiUserTokenTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, a4);
    objc_storeStrong(&v13->_controller, a3);
    objc_storeStrong(&v13->_home, a5);
  }

  return v13;
}

- (id)performTask
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005E8AC;
  v5[3] = &unk_1002B0B98;
  objc_copyWeak(&v6, &location);
  v3 = [(AMSDGenerateMultiUserTokenTask *)self performTaskWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (id)_generateAppProvidedDataWithAction:(id)a3 inviteToken:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSDGenerateMultiUserTokenTask *)self home];
  v9 = [AMSAuthenticateOptions amsd_createAppProvidedDataWithMultiUserAction:v7 home:v8];

  v10 = [(AMSDGenerateMultiUserTokenTask *)self account];
  v11 = [v10 ams_altDSID];
  [v9 ams_setNullableObject:v11 forKey:@"inviteeiTunesAltDsId"];

  [v9 ams_setNullableObject:@"com.apple.gs.itunes.mu.invite" forKey:@"inviteeiTunesAuthTokenType"];
  [v9 ams_setNullableObject:v6 forKey:@"muInviteCode"];

  v12 = +[ACAccountStore ams_sharedAccountStore];
  v13 = [(AMSDGenerateMultiUserTokenTask *)self account];
  v27 = 0;
  v14 = [v12 ams_fetchGrandSlamTokenForAccount:v13 withIdentifier:AMSAccountGrandSlamTokenIdentifierMultiUser error:&v27];
  v15 = v27;

  if (!v14)
  {
    v16 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      v20 = AMSHashIfNeeded();
      *buf = 138543874;
      v29 = v18;
      v30 = 2114;
      v31 = v19;
      v32 = 2114;
      v33 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the GrandSlam token. error = %{public}@", buf, 0x20u);
    }
  }

  [v9 ams_setNullableObject:v14 forKey:@"inviteeiTunesAuthToken"];
  v21 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v21)
  {
    v21 = +[AMSLogConfig sharedConfig];
  }

  v22 = [v21 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    v24 = AMSLogKey();
    v25 = AMSHashIfNeeded();
    *buf = 138543874;
    v29 = v23;
    v30 = 2114;
    v31 = v24;
    v32 = 2114;
    v33 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] appProvidedData = %{public}@", buf, 0x20u);
  }

  return v9;
}

- (id)_shareRecord:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543618;
    v46 = v8;
    v47 = 2114;
    v48 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sharing a record.", buf, 0x16u);
  }

  v10 = [(AMSDGenerateMultiUserTokenTask *)self controller];
  v11 = [v10 cloudContainer];
  v12 = [v11 privateDatabase];

  v13 = [v5 identifier];

  v14 = [v13 zoneIdentifier];
  v15 = [v12 shareForRecordZoneIdentifier:v14];

  v16 = [v15 identifier];
  v17 = [v12 fetchRecordWithRecordIdentifier:v16];

  v18 = v17;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10005FFE4;
  v42[3] = &unk_1002B0B20;
  v42[4] = self;
  v19 = v15;
  v43 = v19;
  v20 = v12;
  v44 = v20;
  v21 = [v18 catchWithBlock:v42];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100060068;
  v40[3] = &unk_1002B0C00;
  v40[4] = self;
  v22 = v20;
  v41 = v22;
  v23 = [v21 thenWithBlock:v40];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000602B8;
  v39[3] = &unk_1002B0C28;
  v39[4] = self;
  v24 = [v23 thenWithBlock:v39];
  v38 = 0;
  v25 = [v24 resultWithError:&v38];
  v26 = v38;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v36 = v18;
    v28 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v35 = AMSLogKey();
      v30 = AMSHashIfNeeded();
      *buf = 138543874;
      v46 = v34;
      v47 = 2114;
      v48 = v35;
      v49 = 2114;
      v50 = v30;
      v31 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to share the record. error = %{public}@", buf, 0x20u);
    }

    v18 = v36;
    if (a4)
    {
      v32 = v26;
      *a4 = v26;
    }
  }

  return v25;
}

- (id)_generateMultiUserTokenWithAction:(id)a3 iCloudAccount:(id)a4 inviteToken:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [(AMSDGenerateMultiUserTokenTask *)self _generateAppProvidedDataWithAction:a3 inviteToken:a5];
  v12 = [AMSAuthenticateOptions amsd_multiUserAuthenticateOptionsWithAppProvidedData:v11];
  [v12 setAuthenticationType:1];
  [v12 setDebugReason:@"Generating a multi-user token"];
  v13 = [[AMSAuthKitUpdateTask alloc] initWithAccount:v10 options:v12];

  [v13 setRunMode:1];
  v14 = [v13 performAuthKitUpdate];
  v15 = [v14 thenWithBlock:&stru_1002B0C68];

  v16 = [v15 resultWithError:a6];

  return v16;
}

- (BOOL)_saveMultiUserToken:(id)a3 forHomeParticipant:(id)a4 iCloudAccount:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v10 ams_altDSID];
  [v11 setField:v13 forKey:@"AMSHomeParticipant_iCloudAltDSID"];

  v14 = [v10 ams_DSID];

  [v11 setField:v14 forKey:@"AMSHomeParticipant_iCloudDSID"];
  v15 = [(AMSDGenerateMultiUserTokenTask *)self account];
  v16 = [v15 ams_altDSID];
  [v11 setField:v16 forKey:@"AMSHomeParticipant_iTunesAltDSID"];

  v17 = [(AMSDGenerateMultiUserTokenTask *)self account];
  v18 = [v17 ams_DSID];
  [v11 setField:v18 forKey:@"AMSHomeParticipant_iTunesDSID"];

  v19 = [(AMSDGenerateMultiUserTokenTask *)self account];
  v20 = [v19 username];
  [v11 setField:v20 forKey:@"AMSHomeParticipant_iTunesUsername"];

  [v11 setField:v12 forKey:@"AMSHomeParticipant_MultiUserToken"];
  [v11 setField:&__kCFBooleanFalse forKey:@"AMSHomeParticipant_MultiUserTokenInvalid"];
  v21 = [(AMSDGenerateMultiUserTokenTask *)self controller];
  v22 = [v21 cloudContainer];
  v23 = [v22 privateDatabase];
  v24 = [(AMSDGenerateMultiUserTokenTask *)self _saveRecord:v11 database:v23];

  v25 = [v24 resultWithError:a6];
  LOBYTE(a6) = v25 != 0;

  return a6;
}

- (id)_saveRecord:(id)a3 database:(id)a4
{
  v5 = [a4 saveRecord:a3];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100060910;
  v7[3] = &unk_1002B0C90;
  v7[4] = self;
  [v5 addFinishBlock:v7];

  return v5;
}

+ (double)_scheduleRefreshInterval
{
  v2 = a1;
  objc_sync_enter(v2);
  if (*&qword_1002E3218 == 0.0)
  {
    v3 = 60.0;
  }

  else
  {
    v3 = *&qword_1002E3218 + *&qword_1002E3218;
  }

  qword_1002E3218 = *&v3;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)_shouldGenerateInviteToken
{
  v2 = [(AMSDGenerateMultiUserTokenTask *)self home];
  v3 = [v2 isCurrentUserOwner];

  return v3 ^ 1;
}

@end