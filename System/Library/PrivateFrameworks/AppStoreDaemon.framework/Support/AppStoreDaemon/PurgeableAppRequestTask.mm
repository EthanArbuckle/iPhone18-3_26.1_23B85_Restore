@interface PurgeableAppRequestTask
- (void)main;
@end

@implementation PurgeableAppRequestTask

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
      v7 = self->super._options;
      client = self->super._client;
      v9 = v7;
    }

    else
    {
      v7 = 0;
      v9 = 0;
      client = 0;
    }

    v10 = client;
    v11 = [(XPCClient *)v10 clientID];
    v31 = 138544130;
    v32 = v5;
    v33 = 2114;
    v34 = v3;
    v35 = 2114;
    v36 = v7;
    v37 = 2114;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Purgeable request with options: %{public}@ client: %{public}@", &v31, 0x2Au);
  }

  v12 = sub_10029869C();
  v13 = v12;
  if (v12)
  {
    v14 = *(v12 + 48);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (self)
  {
    options = self->super._options;
  }

  else
  {
    options = 0;
  }

  v17 = options;
  v18 = sub_1001E99F8(v15, v17, v3);

  v19 = [v18 error];

  v20 = ASDLogHandleForCategory();
  v21 = v20;
  if (v19)
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v22 = objc_opt_class();
    v23 = v22;
    v24 = [v18 error];
    v31 = 138543874;
    v32 = v22;
    v33 = 2114;
    v34 = v3;
    v35 = 2114;
    v36 = v24;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Purgable app request resulted in error: %{public}@", &v31, 0x20u);
  }

  else
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v25 = objc_opt_class();
    v23 = v25;
    v26 = [v18 purgeableSize];
    v31 = 138543874;
    v32 = v25;
    v33 = 2114;
    v34 = v3;
    v35 = 2048;
    v36 = v26;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Purgeable request complete with purgeableSize: %lld", &v31, 0x20u);
  }

LABEL_15:
  sub_10020F258(self, v18);
  v27 = [v18 success];
  if (self)
  {
    self->super.super._success = v27;
  }

  v28 = [v18 error];
  v30 = ASDErrorWithSafeUserInfo();
  if (self)
  {
    objc_setProperty_atomic_copy(self, v29, v30, 32);
  }
}

@end