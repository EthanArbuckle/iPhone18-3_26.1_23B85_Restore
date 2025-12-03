@interface LegacyManifestRequestTask
- (void)main;
@end

@implementation LegacyManifestRequestTask

- (void)main
{
  if (self)
  {
    options = self->super._options;
  }

  else
  {
    options = 0;
  }

  v4 = options;
  manifest = [(ASDRequestOptions *)v4 manifest];

  manifestType = [manifest manifestType];
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

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v26 = objc_opt_class();
    v27 = 2114;
    v28 = manifest;
    v29 = 2114;
    v30 = clientID;
    v11 = v26;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Installing manifest: %{public}@ for client: %{public}@", buf, 0x20u);
  }

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1001F4EA8;
  v20 = &unk_10051C8B0;
  v21 = objc_alloc_init(NSMutableArray);
  v22 = clientID;
  selfCopy = self;
  v24 = manifestType;
  v12 = clientID;
  v13 = v21;
  [manifest enumerateActivitiesUsingBlock:&v17];
  v14 = [ASDInstallManifestRequestResponse alloc];
  v15 = [v14 initWithResults:{v13, v17, v18, v19, v20}];
  sub_10020F258(self, v15);

  if (self)
  {
    self->super.super._success = 1;
    objc_setProperty_atomic_copy(self, v16, 0, 32);
  }
}

@end