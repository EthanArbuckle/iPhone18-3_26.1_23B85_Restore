@interface AccountLookupRequestTask
- (void)main;
@end

@implementation AccountLookupRequestTask

- (void)main
{
  v3 = objc_alloc_init(_TtC9appstored6LogKey);
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    if (self)
    {
      client = self->super._client;
    }

    else
    {
      client = 0;
    }

    v8 = client;
    clientID = [(XPCClient *)v8 clientID];
    if (self)
    {
      options = self->super._options;
    }

    else
    {
      options = 0;
    }

    v11 = options;
    *buf = 138544130;
    v29 = v5;
    v30 = 2114;
    v31 = v3;
    v32 = 2114;
    v33 = clientID;
    v34 = 1024;
    LODWORD(v35) = [(ASDRequestOptions *)v11 authIfNeeded];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Account lookup request by client: %{public}@ for authIfNeeded: %d", buf, 0x26u);
  }

  v12 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v12 ams_activeiTunesAccount];
  ams_DSID = [ams_activeiTunesAccount ams_DSID];

  v27 = 0;
  v15 = sub_100405768();
  if (self)
  {
    v16 = self->super._options;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v26 = 0;
  v18 = sub_100405844(v15, v3, 1, [(ASDRequestOptions *)v17 authIfNeeded], &v27, &v26);
  v19 = v26;

  v20 = [ASDAccountLookupResponse alloc];
  if (v19)
  {
    v21 = [v20 initWithError:v19];
  }

  else
  {
    v21 = [v20 initWithAccountID:ams_DSID askToBuyEnabled:v18];
  }

  v22 = v21;
  sub_10020F258(self, v21);
  if (self)
  {
    self->super.super._success = v19 == 0;
  }

  v23 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_opt_class();
    *buf = 138544130;
    v29 = v24;
    v30 = 2114;
    v31 = v3;
    v32 = 2114;
    v33 = ams_DSID;
    v34 = 2048;
    v35 = v18;
    v25 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Account lookup request complete with accountID: %{public}@ for askToBuy: %ld", buf, 0x2Au);
  }
}

@end