@interface PurgeAppsRequestTask
- (void)main;
@end

@implementation PurgeAppsRequestTask

- (void)main
{
  v3 = objc_alloc_init(_TtC9appstored6LogKey);
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v47 = v5;
    if (self)
    {
      v6 = self->super._options;
      client = self->super._client;
      v8 = v6;
    }

    else
    {
      v6 = 0;
      v8 = 0;
      client = 0;
    }

    v9 = client;
    v10 = [(XPCClient *)v9 clientID];
    *buf = 138544130;
    v50 = v5;
    v51 = 2114;
    v52 = v3;
    v53 = 2114;
    v54 = v6;
    v55 = 2114;
    v56 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Purge request with options: %{public}@ client: %{public}@", buf, 0x2Au);
  }

  v11 = sub_10029869C();
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 48);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  objc_opt_class();
  v15 = v14;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v17 = v15;
    if (self)
    {
      v18 = self->super._options;
      v19 = self->super._client;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v20 = v19;
    v21 = [(XPCClient *)v20 clientID];
    v22 = sub_1001EC7EC(v17, v18, v3, v21);

    v23 = [v22 error];

    v24 = ASDLogHandleForCategory();
    v25 = v24;
    if (v23)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = v26;
        v28 = [v22 error];
        *buf = 138543874;
        v50 = v26;
        v51 = 2114;
        v52 = v3;
        v53 = 2114;
        v54 = v28;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Purge app request resulted in error: %{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v48 = v31;
      if (self)
      {
        v32 = self->super._client;
      }

      else
      {
        v32 = 0;
      }

      v46 = v32;
      v45 = [(XPCClient *)v46 clientID];
      if (self)
      {
        options = self->super._options;
      }

      else
      {
        options = 0;
      }

      v44 = options;
      v34 = [(ASDRequestOptions *)v44 desiredPurgeAmount];
      v35 = [v22 purgedApps];
      v36 = [v35 count];
      v37 = [v22 purgedSize];
      *buf = 138544642;
      v50 = v31;
      v51 = 2114;
      v52 = v3;
      v53 = 2114;
      v54 = v45;
      v55 = 2114;
      v56 = v34;
      v57 = 2048;
      v58 = v36;
      v59 = 2048;
      v60 = v37;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Purged request for client: %{public}@ with desired amount: %{public}@ purged %ld app(s) with a total purge amount: %ld", buf, 0x3Eu);
    }

    sub_10020F258(self, v22);
    v38 = [v22 success];
    if (self)
    {
      self->super.super._success = v38;
    }

    v39 = [v22 error];
    v41 = ASDErrorWithSafeUserInfo();
    if (self)
    {
      objc_setProperty_atomic_copy(self, v40, v41, 32);
    }
  }

  else
  {
    v29 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_opt_class();
      *buf = 138543618;
      v50 = v42;
      v51 = 2114;
      v52 = v3;
      v43 = v42;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Unable to cast appPurgeCoordinator to a AppPurgeCoordinator", buf, 0x16u);
    }

    v17 = ASDErrorWithDescription();
    v22 = ASDErrorWithSafeUserInfo();
    if (self)
    {
      objc_setProperty_atomic_copy(self, v30, v22, 32);
    }
  }
}

@end