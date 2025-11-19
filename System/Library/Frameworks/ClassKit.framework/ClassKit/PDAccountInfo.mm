@interface PDAccountInfo
+ (BOOL)isVerifiedMAIDAccount:(id)a3;
+ (id)_orgAdminUserRecordID:(id *)a3;
+ (id)_schoolworkUbiquitousContainerURL:(id *)a3;
+ (id)_userRecordID:(id *)a3;
+ (id)accountInfo;
+ (id)stringFromACAccountCredentialRenewResult:(int64_t)a3;
+ (id)tokenForAccount:(id)a3 withAltDSID:(id)a4 forService:(id)a5 fromAccountStore:(id)a6;
+ (void)_fetchOrgAdminUserRecordIDWithCompletion:(id)a3;
+ (void)_fetchUserRecordIDWithCompletion:(id)a3;
+ (void)checkForiCloudDriveInitialSync;
- (id)description;
- (void)_updateOrgAdminUserRecordID;
- (void)_updateUserRecordID;
@end

@implementation PDAccountInfo

+ (id)_schoolworkUbiquitousContainerURL:(id *)a3
{
  if (qword_10024D8A0 != -1)
  {
    dispatch_once(&qword_10024D8A0, &stru_100202BF8);
  }

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 ubiquityIdentityToken];

  os_unfair_lock_lock(&unk_10024D888);
  v6 = qword_10024D890;
  if (v5)
  {
    if (qword_10024D890)
    {
LABEL_10:
      v14 = v6;
      goto LABEL_16;
    }

    CLSLogDebugCurrentPersona();
    v7 = CLSUbiquitousContainerID();
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 URLForUbiquityContainerIdentifier:v7];
    v10 = qword_10024D890;
    qword_10024D890 = v9;

    if (!qword_10024D890)
    {
      v11 = [NSError cls_createErrorWithCode:100 format:@"Failed to get URLForUbiquityContainerIdentifier:'%@'", v7];
      v12 = qword_10024D898;
      qword_10024D898 = v11;

      CLSInitLog();
      v13 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = qword_10024D898;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "_schoolworkUbiquitousContainerURL failed with error: %{public}@", buf, 0xCu);
        if (!a3)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if (a3)
      {
LABEL_8:
        *a3 = qword_10024D898;
      }
    }

LABEL_9:

    v6 = qword_10024D890;
    goto LABEL_10;
  }

  qword_10024D890 = 0;

  v15 = [NSError cls_createErrorWithCode:100 format:@"[[NSFileManager defaultManager] ubiquityIdentityToken] returned nil"];
  v16 = qword_10024D898;
  qword_10024D898 = v15;

  CLSInitLog();
  v17 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v20 = qword_10024D898;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "_schoolworkUbiquitousContainerURL failed with error: %{public}@", buf, 0xCu);
    if (a3)
    {
      goto LABEL_13;
    }
  }

  else if (a3)
  {
LABEL_13:
    v14 = 0;
    *a3 = qword_10024D898;
    goto LABEL_16;
  }

  v14 = 0;
LABEL_16:
  os_unfair_lock_unlock(&unk_10024D888);

  return v14;
}

+ (void)_fetchOrgAdminUserRecordIDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 _cloudDocsContainer];
  CLSInitLog();
  v6 = CLSLogAuthorization;
  if (os_log_type_enabled(CLSLogAuthorization, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "About to fetch ORG admin user recordID", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003D72C;
  v8[3] = &unk_100202C20;
  v9 = v4;
  v7 = v4;
  [v5 fetchOrgAdminUserRecordIDWithCompletionHandler:v8];
}

+ (void)_fetchUserRecordIDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 _cloudDocsContainer];
  CLSInitLog();
  v6 = CLSLogAuthorization;
  if (os_log_type_enabled(CLSLogAuthorization, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "About to fetch current user recordID", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003D954;
  v8[3] = &unk_100202C20;
  v9 = v4;
  v7 = v4;
  [v5 fetchUserRecordIDWithCompletionHandler:v8];
}

+ (id)_orgAdminUserRecordID:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10003DC74;
  v26 = sub_10003DC84;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10003DC74;
  v20 = sub_10003DC84;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003DC90;
  v12[3] = &unk_100202C68;
  v14 = &v16;
  v15 = &v22;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &stru_100202C40);
  v13 = v5;
  [a1 _fetchOrgAdminUserRecordIDWithCompletion:v12];
  v6 = dispatch_time(0, 20000000000);
  if (dispatch_block_wait(v5, v6))
  {
    v7 = [NSError cls_createErrorWithCode:320 description:@"Timed out getting ORG admin user recordID"];
    v8 = v23[5];
    v23[5] = v7;
  }

  v9 = v23[5];
  if (a3)
  {
    *a3 = v9;
  }

  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

+ (id)_userRecordID:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10003DC74;
  v26 = sub_10003DC84;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10003DC74;
  v20 = sub_10003DC84;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003DF2C;
  v12[3] = &unk_100202C68;
  v14 = &v16;
  v15 = &v22;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &stru_100202C88);
  v13 = v5;
  [a1 _fetchUserRecordIDWithCompletion:v12];
  v6 = dispatch_time(0, 20000000000);
  if (dispatch_block_wait(v5, v6))
  {
    v7 = [NSError cls_createErrorWithCode:320 description:@"Timed out getting current user recordID"];
    v8 = v23[5];
    v23[5] = v7;
  }

  v9 = v23[5];
  if (a3)
  {
    *a3 = v9;
  }

  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

+ (id)stringFromACAccountCredentialRenewResult:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100202EB8 + a3);
  }
}

+ (id)tokenForAccount:(id)a3 withAltDSID:(id)a4 forService:(id)a5 fromAccountStore:(id)a6
{
  v9 = a5;
  v17 = 0;
  v10 = [a6 credentialForAccount:a3 serviceID:v9 error:&v17];
  v11 = v17;
  v12 = v11;
  if (!a4 || !v10)
  {
    if (!v11)
    {
      goto LABEL_8;
    }

    CLSInitLog();
    v14 = CLSLogDefault;
    if (!os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138543362;
    v19 = v12;
    v15 = "credentialForAccount:serviceID error: = %{public}@;";
    goto LABEL_13;
  }

  v13 = [v10 token];
  if (v13)
  {
    goto LABEL_9;
  }

  CLSInitLog();
  v14 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v19 = v9;
    v15 = "Did not get a service token for service: %{public}@.";
LABEL_13:
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
  }

LABEL_8:
  v13 = 0;
LABEL_9:

  return v13;
}

+ (BOOL)isVerifiedMAIDAccount:(id)a3
{
  v3 = a3;
  if ([v3 aa_isManagedAppleID])
  {
    v4 = [v3 aa_isPrimaryEmailVerified];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)checkForiCloudDriveInitialSync
{
  v2 = CLSUbiquitousContainerID();
  BRRegisterInitialSyncHandlerForContainer();
}

+ (id)accountInfo
{
  v2 = +[PDUserDefaults sharedDefaults];
  v3 = [v2 enableVerboseLogging];

  if (v3)
  {
    CLSLogDebugCurrentPersona();
  }

  v4 = +[ACAccountStore defaultStore];
  v35 = 0;
  v34 = 0;
  v33 = 0;
  [ACAccountStore cls_getEligibleAccount:&v34 isDataSeparated:&v35 personaUniqueIdentifier:&v33];
  v5 = v34;
  v6 = v33;
  v7 = v33;
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      CLSInitLog();
      v9 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get a persona for the chosen account.", buf, 2u);
      }
    }

    v10 = sub_10003F2E8([PDAccountInfo alloc], v5);
    if (([v5 isAuthenticated] & 1) == 0 && v10)
    {
      *(v10 + 6) = 0x100000001;
      *(v10 + 5) = 1;
    }

    v11 = [v5 aa_personID];
    v12 = [v11 copy];
    v14 = v12;
    if (v10)
    {
      objc_setProperty_nonatomic_copy(v10, v13, v12, 32);

      v15 = [v5 identifier];
      objc_storeStrong(v10 + 8, v15);

      objc_storeStrong(v10 + 9, v6);
      *(v10 + 8) = v35;
      *(v10 + 9) = [v5 isEnabledForDataclass:ACAccountDataclassUbiquity];
      if (v35)
      {
LABEL_12:
        v16 = +[MCProfileConnection sharedConnection];
        v17 = [v16 mayOpenFromManagedToUnmanaged];
        if (v10)
        {
          *(v10 + 10) = v17;
          *(v10 + 11) = [v16 mayOpenFromUnmanagedToManaged];
        }

        else
        {
          [v16 mayOpenFromUnmanagedToManaged];
        }

        goto LABEL_19;
      }

      v10[5] = 257;
    }

    else
    {

      [v5 identifier];
      [v5 isEnabledForDataclass:ACAccountDataclassUbiquity];
      if (v35 == 1)
      {
        goto LABEL_12;
      }
    }

LABEL_19:
    v20 = [v5 aa_altDSID];
    v21 = [v20 copy];

    if (v10)
    {
      objc_setProperty_nonatomic_copy(v10, v22, v21, 40);
    }

    v23 = [v4 aida_accountForAltDSID:v21];
    v27 = v10;
    v28 = v23;
    v29 = v21;
    v30 = v4;
    v31 = v5;
    v24 = v21;
    v25 = v23;
    CLSPerformWithPersona();
    v19 = v27;

    goto LABEL_22;
  }

  CLSInitLog();
  v18 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "No valid account found", buf, 2u);
  }

  v19 = sub_10003F2E8([PDAccountInfo alloc], 0);
LABEL_22:

  return v19;
}

- (void)_updateOrgAdminUserRecordID
{
  v6 = 0;
  v3 = [PDAccountInfo _orgAdminUserRecordID:&v6];
  v4 = v6;
  v5 = v6;
  if (self)
  {
    objc_storeStrong(&self->_orgAdminUserRecordID, v3);
    objc_storeStrong(&self->_orgAdminUserFetchError, v4);
  }
}

- (void)_updateUserRecordID
{
  v6 = 0;
  v3 = [PDAccountInfo _userRecordID:&v6];
  v4 = v6;
  v5 = v6;
  if (self)
  {
    objc_storeStrong(&self->_userRecordID, v3);
    objc_storeStrong(&self->_userFetchError, v4);
  }
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"PDAccountInfo: <%p>\n", self];
  if (self)
  {
    [v3 appendFormat:@"  dsID                              : %@\n", self->_dsID];
    [v3 appendFormat:@"  altDSID                           : %@\n", self->_altDSID];
    [v3 appendFormat:@"  orionToken                        : %@\n", self->_orionToken];
    [v3 appendFormat:@"  axmToken                          : %@\n", self->_axmToken];
    if (self->_isDataSeparatedAccount)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    [v3 appendFormat:@"  isDataSeparatedAccount            : %s\n", v4];
    if (([(ACAccount *)self->_account aa_isManagedAppleID]& 1) != 0)
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    [v3 appendFormat:@"  isManagedAccount                  : %s\n", v5];
    if (self->_hasUbiquityEnabled)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    [v3 appendFormat:@"  hasUbiquityEnabled                : %s\n", v6];
    [v3 appendFormat:@"  accountIdentifier                 : %@\n", self->_accountIdentifier];
    [v3 appendFormat:@"  personaUniqueIdentifier           : %@\n", self->_personaUniqueIdentifier];
    if (sub_10004054C(self))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    [v3 appendFormat:@"  valid                             : %s\n", v7];
    if (sub_100040570(self))
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    [v3 appendFormat:@"  hasCredentials                    : %s\n", v8];
    rosterServiceAuthenticationState = self->_rosterServiceAuthenticationState;
  }

  else
  {
    [v3 appendFormat:@"  dsID                              : %@\n", 0];
    [v3 appendFormat:@"  altDSID                           : %@\n", 0];
    [v3 appendFormat:@"  orionToken                        : %@\n", 0];
    [v3 appendFormat:@"  axmToken                          : %@\n", 0];
    [v3 appendFormat:@"  isDataSeparatedAccount            : %s\n", "NO"];
    [v3 appendFormat:@"  isManagedAccount                  : %s\n", "NO"];
    [v3 appendFormat:@"  hasUbiquityEnabled                : %s\n", "NO"];
    [v3 appendFormat:@"  accountIdentifier                 : %@\n", 0];
    [v3 appendFormat:@"  personaUniqueIdentifier           : %@\n", 0];
    [v3 appendFormat:@"  valid                             : %s\n", "NO"];
    [v3 appendFormat:@"  hasCredentials                    : %s\n", "NO"];
  }

  v10 = NSStringFromCLSAuthenticationState();
  [v3 appendFormat:@"  rosterServiceAuthenticationState  : %@\n", v10];

  if (self)
  {
    handoutServiceAuthenticationState = self->_handoutServiceAuthenticationState;
    v12 = NSStringFromCLSAuthenticationState();
    [v3 appendFormat:@"  handoutServiceAuthenticationState : %@\n", v12];

    iCloudDriveAuthenticationState = self->_iCloudDriveAuthenticationState;
  }

  else
  {
    v21 = NSStringFromCLSAuthenticationState();
    [v3 appendFormat:@"  handoutServiceAuthenticationState : %@\n", v21];
  }

  v14 = NSStringFromCLSAuthenticationState();
  [v3 appendFormat:@"  iCloudDriveAuthenticationState    : %@\n", v14];

  if (self)
  {
    if (self->_hasUbiquityEnabled)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    [v3 appendFormat:@"  hasUbiquityEnabled                : %s\n", v15];
    if (self->_mayOpenFromManagedToUnmanaged)
    {
      v16 = "YES";
    }

    else
    {
      v16 = "NO";
    }

    [v3 appendFormat:@"  mayOpenFromManagedToUnmanaged     : %s\n", v16];
    if (self->_mayOpenFromUnmanagedToManaged)
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    [v3 appendFormat:@"  mayOpenFromUnmanagedToManaged     : %s\n", v17];
    [v3 appendFormat:@"  schoolworkUbiquitousContainerURL  : %@\n", self->_schoolworkUbiquitousContainerURL];
    [v3 appendFormat:@"  schoolworkUbiquitousContainerError: %@\n", self->_schoolworkUbiquitousContainerError];
    [v3 appendFormat:@"  orgAdminUserRecordID              : %@\n", self->_orgAdminUserRecordID];
    [v3 appendFormat:@"  orgAdminUserFetchError            : %@\n", self->_orgAdminUserFetchError];
    [v3 appendFormat:@"  userRecordID                      : %@\n", self->_userRecordID];
    [v3 appendFormat:@"  userFetchError                    : %@\n", self->_userFetchError];
    [v3 appendFormat:@"  multimediaCacheDirectoryURL       : %@\n", self->_multimediaCacheDirectoryURL];
    multimediaCacheDirectoryURLError = self->_multimediaCacheDirectoryURLError;
  }

  else
  {
    [v3 appendFormat:@"  hasUbiquityEnabled                : %s\n", "NO"];
    [v3 appendFormat:@"  mayOpenFromManagedToUnmanaged     : %s\n", "NO"];
    [v3 appendFormat:@"  mayOpenFromUnmanagedToManaged     : %s\n", "NO"];
    [v3 appendFormat:@"  schoolworkUbiquitousContainerURL  : %@\n", 0];
    [v3 appendFormat:@"  schoolworkUbiquitousContainerError: %@\n", 0];
    [v3 appendFormat:@"  orgAdminUserRecordID              : %@\n", 0];
    [v3 appendFormat:@"  orgAdminUserFetchError            : %@\n", 0];
    [v3 appendFormat:@"  userRecordID                      : %@\n", 0];
    [v3 appendFormat:@"  userFetchError                    : %@\n", 0];
    [v3 appendFormat:@"  multimediaCacheDirectoryURL       : %@\n", 0];
    multimediaCacheDirectoryURLError = 0;
  }

  [v3 appendFormat:@"  multimediaCacheDirectoryURLError  : %@\n", multimediaCacheDirectoryURLError];
  v19 = [v3 copy];

  return v19;
}

@end