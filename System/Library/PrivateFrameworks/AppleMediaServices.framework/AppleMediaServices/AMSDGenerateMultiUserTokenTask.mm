@interface AMSDGenerateMultiUserTokenTask
+ (double)_scheduleRefreshInterval;
- (AMSDGenerateMultiUserTokenTask)initWithController:(id)controller account:(id)account home:(id)home;
- (BOOL)_saveMultiUserToken:(id)token forHomeParticipant:(id)participant iCloudAccount:(id)account error:(id *)error;
- (BOOL)_shouldGenerateInviteToken;
- (id)_generateAppProvidedDataWithAction:(id)action inviteToken:(id)token;
- (id)_generateMultiUserTokenWithAction:(id)action iCloudAccount:(id)account inviteToken:(id)token error:(id *)error;
- (id)_saveRecord:(id)record database:(id)database;
- (id)_shareRecord:(id)record withError:(id *)error;
- (id)performTask;
@end

@implementation AMSDGenerateMultiUserTokenTask

- (AMSDGenerateMultiUserTokenTask)initWithController:(id)controller account:(id)account home:(id)home
{
  controllerCopy = controller;
  accountCopy = account;
  homeCopy = home;
  v15.receiver = self;
  v15.super_class = AMSDGenerateMultiUserTokenTask;
  v12 = [(AMSDGenerateMultiUserTokenTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    objc_storeStrong(&v13->_controller, controller);
    objc_storeStrong(&v13->_home, home);
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

- (id)_generateAppProvidedDataWithAction:(id)action inviteToken:(id)token
{
  tokenCopy = token;
  actionCopy = action;
  home = [(AMSDGenerateMultiUserTokenTask *)self home];
  v9 = [AMSAuthenticateOptions amsd_createAppProvidedDataWithMultiUserAction:actionCopy home:home];

  account = [(AMSDGenerateMultiUserTokenTask *)self account];
  ams_altDSID = [account ams_altDSID];
  [v9 ams_setNullableObject:ams_altDSID forKey:@"inviteeiTunesAltDsId"];

  [v9 ams_setNullableObject:@"com.apple.gs.itunes.mu.invite" forKey:@"inviteeiTunesAuthTokenType"];
  [v9 ams_setNullableObject:tokenCopy forKey:@"muInviteCode"];

  v12 = +[ACAccountStore ams_sharedAccountStore];
  account2 = [(AMSDGenerateMultiUserTokenTask *)self account];
  v27 = 0;
  v14 = [v12 ams_fetchGrandSlamTokenForAccount:account2 withIdentifier:AMSAccountGrandSlamTokenIdentifierMultiUser error:&v27];
  v15 = v27;

  if (!v14)
  {
    v16 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the GrandSlam token. error = %{public}@", buf, 0x20u);
    }
  }

  [v9 ams_setNullableObject:v14 forKey:@"inviteeiTunesAuthToken"];
  v21 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v21)
  {
    v21 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v21 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] appProvidedData = %{public}@", buf, 0x20u);
  }

  return v9;
}

- (id)_shareRecord:(id)record withError:(id *)error
{
  recordCopy = record;
  v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543618;
    v46 = v8;
    v47 = 2114;
    v48 = v9;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sharing a record.", buf, 0x16u);
  }

  controller = [(AMSDGenerateMultiUserTokenTask *)self controller];
  cloudContainer = [controller cloudContainer];
  privateDatabase = [cloudContainer privateDatabase];

  identifier = [recordCopy identifier];

  zoneIdentifier = [identifier zoneIdentifier];
  v15 = [privateDatabase shareForRecordZoneIdentifier:zoneIdentifier];

  identifier2 = [v15 identifier];
  v17 = [privateDatabase fetchRecordWithRecordIdentifier:identifier2];

  v18 = v17;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10005FFE4;
  v42[3] = &unk_1002B0B20;
  v42[4] = self;
  v19 = v15;
  v43 = v19;
  v20 = privateDatabase;
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

    oSLogObject2 = [v28 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to share the record. error = %{public}@", buf, 0x20u);
    }

    v18 = v36;
    if (error)
    {
      v32 = v26;
      *error = v26;
    }
  }

  return v25;
}

- (id)_generateMultiUserTokenWithAction:(id)action iCloudAccount:(id)account inviteToken:(id)token error:(id *)error
{
  accountCopy = account;
  v11 = [(AMSDGenerateMultiUserTokenTask *)self _generateAppProvidedDataWithAction:action inviteToken:token];
  v12 = [AMSAuthenticateOptions amsd_multiUserAuthenticateOptionsWithAppProvidedData:v11];
  [v12 setAuthenticationType:1];
  [v12 setDebugReason:@"Generating a multi-user token"];
  v13 = [[AMSAuthKitUpdateTask alloc] initWithAccount:accountCopy options:v12];

  [v13 setRunMode:1];
  performAuthKitUpdate = [v13 performAuthKitUpdate];
  v15 = [performAuthKitUpdate thenWithBlock:&stru_1002B0C68];

  v16 = [v15 resultWithError:error];

  return v16;
}

- (BOOL)_saveMultiUserToken:(id)token forHomeParticipant:(id)participant iCloudAccount:(id)account error:(id *)error
{
  accountCopy = account;
  participantCopy = participant;
  tokenCopy = token;
  ams_altDSID = [accountCopy ams_altDSID];
  [participantCopy setField:ams_altDSID forKey:@"AMSHomeParticipant_iCloudAltDSID"];

  ams_DSID = [accountCopy ams_DSID];

  [participantCopy setField:ams_DSID forKey:@"AMSHomeParticipant_iCloudDSID"];
  account = [(AMSDGenerateMultiUserTokenTask *)self account];
  ams_altDSID2 = [account ams_altDSID];
  [participantCopy setField:ams_altDSID2 forKey:@"AMSHomeParticipant_iTunesAltDSID"];

  account2 = [(AMSDGenerateMultiUserTokenTask *)self account];
  ams_DSID2 = [account2 ams_DSID];
  [participantCopy setField:ams_DSID2 forKey:@"AMSHomeParticipant_iTunesDSID"];

  account3 = [(AMSDGenerateMultiUserTokenTask *)self account];
  username = [account3 username];
  [participantCopy setField:username forKey:@"AMSHomeParticipant_iTunesUsername"];

  [participantCopy setField:tokenCopy forKey:@"AMSHomeParticipant_MultiUserToken"];
  [participantCopy setField:&__kCFBooleanFalse forKey:@"AMSHomeParticipant_MultiUserTokenInvalid"];
  controller = [(AMSDGenerateMultiUserTokenTask *)self controller];
  cloudContainer = [controller cloudContainer];
  privateDatabase = [cloudContainer privateDatabase];
  v24 = [(AMSDGenerateMultiUserTokenTask *)self _saveRecord:participantCopy database:privateDatabase];

  v25 = [v24 resultWithError:error];
  LOBYTE(error) = v25 != 0;

  return error;
}

- (id)_saveRecord:(id)record database:(id)database
{
  v5 = [database saveRecord:record];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (*&qword_1002E3218 == 0.0)
  {
    v3 = 60.0;
  }

  else
  {
    v3 = *&qword_1002E3218 + *&qword_1002E3218;
  }

  qword_1002E3218 = *&v3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)_shouldGenerateInviteToken
{
  home = [(AMSDGenerateMultiUserTokenTask *)self home];
  isCurrentUserOwner = [home isCurrentUserOwner];

  return isCurrentUserOwner ^ 1;
}

@end