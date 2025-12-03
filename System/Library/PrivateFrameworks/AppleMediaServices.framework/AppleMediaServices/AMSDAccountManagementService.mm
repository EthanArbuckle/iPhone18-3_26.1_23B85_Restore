@interface AMSDAccountManagementService
+ (AMSDAccountManagementService)sharedService;
+ (BOOL)isConnectionEntitled:(id)entitled;
- (id)_getOrCreateLocalAccountWithIdentifier:(id)identifier error:(id *)error;
- (id)_getOrCreateLocalAccountWithType:(id)type error:(id *)error;
- (id)_localAccountWithType:(id)type;
- (id)_newLocalAccountWithAccountType:(id)type;
- (void)performCreateLocalAccountWithIdentifier:(id)identifier completion:(id)completion;
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

+ (BOOL)isConnectionEntitled:(id)entitled
{
  entitledCopy = entitled;
  v4 = [entitledCopy valueForEntitlement:@"com.apple.private.applemediaservices"];
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
    bOOLValue = 1;
  }

  else
  {
    v7 = [entitledCopy valueForEntitlement:@"com.apple.itunesstored.private"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    bOOLValue = [v8 BOOLValue];
  }

  return bOOLValue;
}

- (void)performCreateLocalAccountWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = AMSSetLogKey();
  if ([identifierCopy isEqualToString:ACAccountTypeIdentifieriTunesStore] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", ACAccountTypeIdentifieriTunesStoreSandbox))
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
    selfCopy = self;
    v10 = v9;
    v27 = v10;
    v28 = buf;
    v11 = objc_retainBlock(v24);
    v12 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v11;

    v13 = [AMSPair alloc];
    v14 = objc_retainBlock(completionCopy);
    v15 = [v13 initWithFirst:identifierCopy second:v14];

    os_unfair_lock_lock_with_options();
    [v10 addObject:v15];
    v16 = [v10 count];
    os_unfair_lock_unlock(&unk_1002E3190);
    if (v16 == 1)
    {
      v17 = *(*&buf[8] + 40);
      first = [v15 first];
      second = [v15 second];
      (*(v17 + 16))(v17, first, second);
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

    oSLogObject = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
      *&buf[14] = identifierCopy;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Local account can only be created for iTunesStore identifiers. Identifier = %{public}@", buf, 0x16u);
    }

    v10 = AMSError();
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

- (id)_getOrCreateLocalAccountWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[ACAccountStore ams_sharedAccountStore];
  v14 = 0;
  v8 = [v7 accountTypeWithAccountTypeIdentifier:identifierCopy error:&v14];

  v9 = v14;
  if (v9)
  {
    if (error)
    {
      AMSError();
      *error = v10 = 0;
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
    if (error && v11)
    {
      v11 = v11;
      *error = v11;
    }
  }

  return v10;
}

- (id)_getOrCreateLocalAccountWithType:(id)type error:(id *)error
{
  typeCopy = type;
  v9 = +[AMSLogConfig sharedAccountsConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Checking for local account", buf, 0xCu);
    if (v11)
    {

      v5 = v4;
    }
  }

  v14 = [(AMSDAccountManagementService *)self _localAccountWithType:typeCopy];
  v15 = +[AMSLogConfig sharedAccountsConfig];
  v16 = v15;
  if (v14)
  {
    if (!v15)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
      selfCopy = ;
      identifier = [typeCopy identifier];
      *buf = 138543618;
      v51 = selfCopy;
      v52 = 2114;
      v53 = identifier;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Local account already exists for type = %{public}@", buf, 0x16u);

      if (v18)
      {

        selfCopy = self;
      }
    }

LABEL_58:
    goto LABEL_59;
  }

  if (!v15)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
    identifier2 = [typeCopy identifier];
    *buf = 138543618;
    v51 = v5;
    v52 = 2114;
    v53 = identifier2;
    _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@Local account does not exist for type = %{public}@", buf, 0x16u);

    if (v23)
    {

      v5 = v4;
    }
  }

  v28 = [(AMSDAccountManagementService *)self _newLocalAccountWithAccountType:typeCopy];
  if (v28)
  {
    v16 = v28;
    v29 = +[AMSLogConfig sharedAccountsConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v29 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      errorCopy = error;
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
      identifier3 = [typeCopy identifier];
      *buf = 138543874;
      v51 = v34;
      v52 = 2114;
      v53 = identifier3;
      v54 = 2114;
      v55 = v16;
      _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@Creating new local account for type = %{public}@ | account = %{public}@", buf, 0x20u);

      if (v31)
      {

        v34 = v5;
      }

      error = errorCopy;
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

      oSLogObject5 = [v39 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
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
        selfCopy2 = ;
        identifier4 = [typeCopy identifier];
        *buf = 138543618;
        v51 = selfCopy2;
        v52 = 2114;
        v53 = identifier4;
        _os_log_impl(&_mh_execute_header, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@Local account added for type = %{public}@", buf, 0x16u);

        if (v41)
        {

          selfCopy2 = self;
        }
      }

      v14 = v16;
    }

    else if (error)
    {
      v45 = v38;
      v14 = 0;
      *error = v38;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_58;
  }

  if (error)
  {
    AMSError();
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_59:

  return v14;
}

- (id)_localAccountWithType:(id)type
{
  typeCopy = type;
  v4 = +[ACAccountStore ams_sharedAccountStore];
  ams_alliTunesAccounts = [v4 ams_alliTunesAccounts];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003FEC0;
  v9[3] = &unk_1002AFF28;
  v10 = typeCopy;
  v6 = typeCopy;
  v7 = [ams_alliTunesAccounts ams_firstObjectPassingTest:v9];

  return v7;
}

- (id)_newLocalAccountWithAccountType:(id)type
{
  typeCopy = type;
  v4 = [[ACAccount alloc] initWithAccountType:typeCopy];

  [v4 setActive:0];
  [v4 setUsername:@"local"];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isLocalAccount"];
  return v4;
}

@end