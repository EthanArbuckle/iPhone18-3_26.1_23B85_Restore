@interface ACAccountStore
- (id)amsd_iTunesAccountForHomeParticipant:(id)a3 createEphemeral:(BOOL)a4;
@end

@implementation ACAccountStore

- (id)amsd_iTunesAccountForHomeParticipant:(id)a3 createEphemeral:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 fieldForKey:@"AMSHomeParticipant_iTunesAltDSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 fieldForKey:@"AMSHomeParticipant_iTunesDSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 fieldForKey:@"AMSHomeParticipant_iTunesUsername"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v8 || v10 || v12)
  {
    v14 = [(ACAccountStore *)self ams_iTunesAccountWithAltDSID:v8 DSID:v10 username:v12];
    if (!v14)
    {
      v15 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v15)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v15 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = v4;
        v18 = objc_opt_class();
        AMSLogKey();
        v19 = v28 = self;
        v20 = AMSHashIfNeeded();
        *buf = 138543874;
        v30 = v18;
        v4 = v17;
        v31 = 2114;
        v32 = v19;
        v33 = 2114;
        v34 = v20;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] This device isn't signed into an iTunes account associated with a home participant. homeParticipant = %{public}@", buf, 0x20u);

        self = v28;
      }

      if (v4)
      {
        v21 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        if (!v21)
        {
          v21 = +[AMSLogConfig sharedConfig];
        }

        v22 = [v21 OSLogObject];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = objc_opt_class();
          v24 = AMSLogKey();
          *buf = 138543618;
          v30 = v23;
          v31 = 2114;
          v32 = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Creating an ephemeral account.", buf, 0x16u);
        }

        v25 = objc_autoreleasePoolPush();
        v26 = [(ACAccountStore *)self accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifieriTunesStore];
        objc_autoreleasePoolPop(v25);
        v14 = [[ACAccount alloc] initWithAccountType:v26];
        [v14 setActive:0];
        [v14 ams_setAltDSID:v8];
        [v14 ams_setDSID:v10];
        [v14 setUsername:v12];
      }

      else
      {
        v14 = 0;
      }
    }

    v13 = v14;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end