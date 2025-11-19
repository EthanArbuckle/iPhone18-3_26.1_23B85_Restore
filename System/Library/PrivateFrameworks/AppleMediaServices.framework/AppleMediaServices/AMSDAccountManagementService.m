@interface AMSDAccountManagementService
+ (AMSDAccountManagementService)sharedService;
+ (BOOL)isConnectionEntitled:(id)a3;
- (id)_getOrCreateLocalAccountWithIdentifier:(id)a3 error:(id *)a4;
- (id)_getOrCreateLocalAccountWithType:(id)a3 error:(id *)a4;
- (id)_localAccountWithType:(id)a3;
- (id)_newLocalAccountWithAccountType:(id)a3;
- (void)performCreateLocalAccountWithIdentifier:(id)a3 completion:(id)a4;
@end

@implementation AMSDAccountManagementService

+ (AMSDAccountManagementService)sharedService
{
  if (qword_1002E3180 != -1)
  {
    sub_10021B124();
  }

  v3 = qword_1002E3188;

  return v3;
}

+ (BOOL)isConnectionEntitled:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ([v5 BOOLValue])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 valueForEntitlement:@"com.apple.itunesstored.private"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v6 = [v8 BOOLValue];
  }

  return v6;
}

- (void)performCreateLocalAccountWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AMSSetLogKey();
  if ([v6 isEqualToString:ACAccountTypeIdentifieriTunesStore] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", ACAccountTypeIdentifieriTunesStoreSandbox))
  {
    if (qword_1002E3198 != -1)
    {
      sub_10021B138();
    }

    v9 = qword_1002E31A0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v30 = sub_10003F2C0;
    v31 = sub_10003F2EC;
    v32 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10003F2F4;
    v24[3] = &unk_1002AFF00;
    v25 = v8;
    v26 = self;
    v10 = v9;
    v27 = v10;
    v28 = buf;
    v11 = objc_retainBlock(v24);
    v12 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v11;

    v13 = [AMSPair alloc];
    v14 = objc_retainBlock(v7);
    v15 = [v13 initWithFirst:v6 second:v14];

    os_unfair_lock_lock_with_options();
    [v10 addObject:v15];
    v16 = [v10 count];
    os_unfair_lock_unlock(&unk_1002E3190);
    if (v16 == 1)
    {
      v17 = *(*&buf[8] + 40);
      v18 = [v15 first];
      v19 = [v15 second];
      (*(v17 + 16))(v17, v18, v19);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v20 = +[AMSLogConfig sharedAccountsConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      if (v8)
      {
        [NSString stringWithFormat:@"%@: [%@] ", v22, v8];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v22];
      }
      v23 = ;
      *buf = 138543618;
      *&buf[4] = v23;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@Local account can only be created for iTunesStore identifiers. Identifier = %{public}@", buf, 0x16u);
    }

    v10 = AMSError();
    (*(v7 + 2))(v7, 0, v10);
  }
}

- (id)_getOrCreateLocalAccountWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[ACAccountStore ams_sharedAccountStore];
  v14 = 0;
  v8 = [v7 accountTypeWithAccountTypeIdentifier:v6 error:&v14];

  v9 = v14;
  if (v9)
  {
    if (a4)
    {
      AMSError();
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v13 = 0;
    v10 = [(AMSDAccountManagementService *)self _getOrCreateLocalAccountWithType:v8 error:&v13];
    v11 = v13;
    if (a4 && v11)
    {
      v11 = v11;
      *a4 = v11;
    }
  }

  return v10;
}

- (id)_getOrCreateLocalAccountWithType:(id)a3 error:(id *)a4
{
  v8 = a3;
  v9 = +[AMSLogConfig sharedAccountsConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = AMSLogKey();
    v12 = objc_opt_class();
    v13 = v12;
    if (v11)
    {
      v4 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v13, v4];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v12];
    }
    v5 = ;
    *buf = 138543362;
    v51 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Checking for local account", buf, 0xCu);
    if (v11)
    {

      v5 = v4;
    }
  }

  v14 = [(AMSDAccountManagementService *)self _localAccountWithType:v8];
  v15 = +[AMSLogConfig sharedAccountsConfig];
  v16 = v15;
  if (v14)
  {
    if (!v15)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = AMSLogKey();
      v19 = objc_opt_class();
      v20 = v19;
      if (v18)
      {
        self = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v20, self];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v19];
      }
      v21 = ;
      v26 = [v8 identifier];
      *buf = 138543618;
      v51 = v21;
      v52 = 2114;
      v53 = v26;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Local account already exists for type = %{public}@", buf, 0x16u);

      if (v18)
      {

        v21 = self;
      }
    }

LABEL_58:
    goto LABEL_59;
  }

  if (!v15)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v22 = [v16 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = AMSLogKey();
    v24 = objc_opt_class();
    v25 = v24;
    if (v23)
    {
      v4 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v25, v4];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v24];
    }
    v5 = ;
    v27 = [v8 identifier];
    *buf = 138543618;
    v51 = v5;
    v52 = 2114;
    v53 = v27;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Local account does not exist for type = %{public}@", buf, 0x16u);

    if (v23)
    {

      v5 = v4;
    }
  }

  v28 = [(AMSDAccountManagementService *)self _newLocalAccountWithAccountType:v8];
  if (v28)
  {
    v16 = v28;
    v29 = +[AMSLogConfig sharedAccountsConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    v30 = [v29 OSLogObject];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v48 = a4;
      v31 = AMSLogKey();
      v32 = objc_opt_class();
      v33 = v32;
      if (v31)
      {
        v5 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v33, v5];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v32];
      }
      v34 = ;
      v35 = [v8 identifier];
      *buf = 138543874;
      v51 = v34;
      v52 = 2114;
      v53 = v35;
      v54 = 2114;
      v55 = v16;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Creating new local account for type = %{public}@ | account = %{public}@", buf, 0x20u);

      if (v31)
      {

        v34 = v5;
      }

      a4 = v48;
    }

    v36 = +[ACAccountStore ams_sharedAccountStore];
    v49 = 0;
    v37 = [v36 ams_saveVerifiedAccount:v16 withOptions:1 error:&v49];
    v38 = v49;

    if (v37)
    {
      v39 = +[AMSLogConfig sharedAccountsConfig];
      if (!v39)
      {
        v39 = +[AMSLogConfig sharedConfig];
      }

      v40 = [v39 OSLogObject];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = AMSLogKey();
        v42 = objc_opt_class();
        v43 = v42;
        if (v41)
        {
          self = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v43, self];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v42];
        }
        v44 = ;
        v46 = [v8 identifier];
        *buf = 138543618;
        v51 = v44;
        v52 = 2114;
        v53 = v46;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Local account added for type = %{public}@", buf, 0x16u);

        if (v41)
        {

          v44 = self;
        }
      }

      v14 = v16;
    }

    else if (a4)
    {
      v45 = v38;
      v14 = 0;
      *a4 = v38;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_58;
  }

  if (a4)
  {
    AMSError();
    *a4 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_59:

  return v14;
}

- (id)_localAccountWithType:(id)a3
{
  v3 = a3;
  v4 = +[ACAccountStore ams_sharedAccountStore];
  v5 = [v4 ams_alliTunesAccounts];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003FEC0;
  v9[3] = &unk_1002AFF28;
  v10 = v3;
  v6 = v3;
  v7 = [v5 ams_firstObjectPassingTest:v9];

  return v7;
}

- (id)_newLocalAccountWithAccountType:(id)a3
{
  v3 = a3;
  v4 = [[ACAccount alloc] initWithAccountType:v3];

  [v4 setActive:0];
  [v4 setUsername:@"local"];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isLocalAccount"];
  return v4;
}

@end