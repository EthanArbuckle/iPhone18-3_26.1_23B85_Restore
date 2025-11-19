@interface TKHostTokenDriver
- (BOOL)configureWithError:(id *)a3;
- (BOOL)valid;
- (NSString)classID;
- (TKHostTokenDriver)initWithExtension:(id)a3 cache:(id)a4;
- (TKHostTokenDriverCache)cache;
- (TKTokenDriverHostContext)context;
- (id)_contextWithError:(id *)a3;
- (id)contextWithError:(id *)a3;
- (id)description;
- (void)acquireTokenWithTokenID:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)keepAlive:(BOOL)a3;
- (void)releaseTokenWithTokenID:(id)a3;
@end

@implementation TKHostTokenDriver

- (TKHostTokenDriver)initWithExtension:(id)a3 cache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TKHostTokenDriver;
  v9 = [(TKHostTokenDriver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extension, a3);
    objc_storeWeak(&v10->_cache, v8);
  }

  return v10;
}

- (id)description
{
  v3 = [(TKHostTokenDriver *)self extension];
  v4 = [v3 identifier];
  v5 = [(TKHostTokenDriver *)self requestIdentifier];
  v6 = [NSString stringWithFormat:@"<TKHostTokenDriver:%p %@(%@)>", self, v4, v5];

  return v6;
}

- (NSString)classID
{
  v3 = [(TKHostTokenDriver *)self extension];
  v4 = [v3 attributes];
  v5 = TKTokenClassDriverClassIDKey;
  v6 = [v4 objectForKeyedSubscript:TKTokenClassDriverClassIDKey];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = sub_100018CF8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100020DA8(v5, self);
    }
  }

  return v6;
}

- (void)keepAlive:(BOOL)a3
{
  alive = self->_alive;
  if (a3)
  {
    if (alive)
    {
      sub_100020E5C(a2, self);
    }

    v9 = [(TKHostTokenDriver *)self extension];
    v5 = [v9 identifier];
    v6 = [NSString stringWithFormat:@"extension holder for '%@'", v5];
    [v6 UTF8String];
    v7 = os_transaction_create();
    v8 = self->_alive;
    self->_alive = v7;

    alive = v9;
  }

  else
  {
    self->_alive = 0;
  }
}

- (void)invalidate
{
  v3 = sub_100018CF8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100020ED0();
  }

  v4 = self;
  objc_sync_enter(v4);
  v4->_invalidated = 1;
  [(TKHostTokenDriver *)v4 keepAlive:0];
  objc_sync_exit(v4);
}

- (BOOL)valid
{
  v2 = self;
  objc_sync_enter(v2);
  invalidated = v2->_invalidated;
  objc_sync_exit(v2);

  return !invalidated;
}

- (id)contextWithError:(id *)a3
{
  v4 = [(TKHostTokenDriver *)self _contextWithError:a3];
  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cache);
    v6 = [(TKHostTokenDriver *)self classID];
    [WeakRetained removeDriverWithClassID:v6];
  }

  return v4;
}

- (id)_contextWithError:(id *)a3
{
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_invalidated)
  {
    v4 = sub_100018CF8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100021008();
    }

    if (!a3)
    {
LABEL_25:
      v6 = 0;
      goto LABEL_31;
    }

    v5 = [NSError errorWithDomain:NSCocoaErrorDomain code:4097 userInfo:0];
    v6 = 0;
    goto LABEL_30;
  }

  v7 = [(TKHostTokenDriver *)v3 requestIdentifier];

  v55 = v7;
  if (!v7)
  {
    v18 = [(TKHostTokenDriver *)v3 classID];
    objc_initWeak(&location, v3);
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100019BD8;
    v62[3] = &unk_1000390E0;
    v19 = v18;
    v63 = v19;
    objc_copyWeak(&v64, &location);
    v20 = [(TKHostTokenDriver *)v3 extension];
    [v20 setRequestInterruptionBlock:v62];

    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100019C6C;
    v59[3] = &unk_100039108;
    v54 = v19;
    v60 = v54;
    objc_copyWeak(&v61, &location);
    v21 = [(TKHostTokenDriver *)v3 extension];
    [v21 setRequestCancellationBlock:v59];

    v22 = sub_100018CF8();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_100020F38();
    }

    v23 = objc_alloc_init(NSExtensionItem);
    v71[0] = @"idleTimeout";
    WeakRetained = objc_loadWeakRetained(&v3->_cache);
    [WeakRetained idleTimeout];
    v25 = [NSNumber numberWithDouble:?];
    v71[1] = @"avoidInitialKeepAlive";
    v72[0] = v25;
    v26 = objc_loadWeakRetained(&v3->_cache);
    v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v26 avoidInitialKeepAlive]);
    v72[1] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];
    [v23 setUserInfo:v28];

    for (i = 0; ; ++i)
    {
      v30 = [(TKHostTokenDriver *)v3 extension];
      v70 = v23;
      v31 = [NSArray arrayWithObjects:&v70 count:1];
      v58 = 0;
      v32 = [v30 beginExtensionRequestWithOptions:0 inputItems:v31 error:&v58];
      v33 = v58;
      [(TKHostTokenDriver *)v3 setRequestIdentifier:v32];

      v34 = [(TKHostTokenDriver *)v3 requestIdentifier];
      LODWORD(v32) = v34 == 0;

      if (!v32)
      {
        break;
      }

      if (i == 8 || [v33 code] != 4099 || (objc_msgSend(v33, "domain"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "isEqualToString:", NSCocoaErrorDomain), v35, !v36))
      {
        v40 = sub_100018CF8();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v47 = [(TKHostTokenDriver *)v3 extension];
          v48 = [v47 identifier];
          *buf = 138543618;
          v67 = v48;
          v68 = 2114;
          v69 = v33;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Token driver extension %{public}@ failed to start: %{public}@", buf, 0x16u);
        }

        if (a3)
        {
          v41 = v33;
          *a3 = v33;
        }

        objc_destroyWeak(&v61);
        objc_destroyWeak(&v64);

        objc_destroyWeak(&location);
        goto LABEL_25;
      }

      v37 = sub_100018CF8();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v38 = [(TKHostTokenDriver *)v3 extension];
        v39 = [v38 identifier];
        *buf = 138543618;
        v67 = v39;
        v68 = 1024;
        LODWORD(v69) = i;
        _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "beginExtensionRequest for %{public}@ failed %d time, retrying", buf, 0x12u);
      }
    }

    v44 = sub_100018CF8();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      sub_100020FA0();
    }

    v45 = [(TKHostTokenDriver *)v3 requestIdentifier];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v52 = +[NSAssertionHandler currentHandler];
      v53 = [(TKHostTokenDriver *)v3 requestIdentifier];
      [v52 handleFailureInMethod:a2 object:v3 file:@"TKHostTokenDriver.m" lineNumber:228 description:{@"requestIdentifier of unexpected type: %@", v53}];
    }

    [(TKHostTokenDriver *)v3 keepAlive:1];

    objc_destroyWeak(&v61);
    objc_destroyWeak(&v64);

    objc_destroyWeak(&location);
  }

  v8 = [(TKHostTokenDriver *)v3 extension];
  v9 = [(TKHostTokenDriver *)v3 requestIdentifier];
  v6 = [v8 _extensionContextForUUID:v9];

  if (v6)
  {
    v10 = [(TKHostTokenDriver *)v3 cache];
    v11 = [v10 registry];
    [v6 setRegistry:v11];

    v12 = [(TKHostTokenDriver *)v3 cache];
    v13 = [v12 smartCardTokenRegistrationRegistry];
    [v6 setSmartCardRegistrationRegistry:v13];

    if (!v55)
    {
      v14 = [v6 tokenDriverProtocol];
      v15 = [v6 registry];
      v16 = [v15 listener];
      v17 = [v16 endpoint];
      [v14 setConfigurationEndpoint:v17 reply:&stru_100039128];
    }
  }

  else
  {
    v42 = sub_100018CF8();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v49 = [(TKHostTokenDriver *)v3 extension];
      v50 = [v49 identifier];
      v51 = [(TKHostTokenDriver *)v3 requestIdentifier];
      *buf = 138543618;
      v67 = v50;
      v68 = 2114;
      v69 = v51;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}@ failed to resolve requestIdentifier %{public}@ to context", buf, 0x16u);
    }

    if (a3)
    {
      v5 = [NSError errorWithDomain:TKErrorDomain code:-7 userInfo:0];
LABEL_30:
      *a3 = v5;
    }
  }

LABEL_31:
  objc_sync_exit(v3);

  return v6;
}

- (TKTokenDriverHostContext)context
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(TKHostTokenDriver *)v2 requestIdentifier];

  if (v3)
  {
    v4 = [(TKHostTokenDriver *)v2 extension];
    v5 = [(TKHostTokenDriver *)v2 requestIdentifier];
    v6 = [v4 _extensionContextForUUID:v5];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v2);

  return v6;
}

- (void)acquireTokenWithTokenID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 classID];
  v10 = [(TKHostTokenDriver *)self classID];
  v11 = [v9 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    sub_100021148(a2, self, v7);
  }

  v12 = sub_100018CF8();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000211CC();
  }

  v34 = 0;
  v13 = [(TKHostTokenDriver *)self contextWithError:&v34];
  v14 = v34;
  if (v13)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_10001A134;
    v32 = sub_10001A144;
    v33 = 0;
    v15 = [v13 tokenDriverProtocol];
    v16 = [v7 instanceID];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10001A14C;
    v25[3] = &unk_100039150;
    v27 = &v28;
    v17 = v13;
    v26 = v17;
    [v15 acquireTokenWithInstanceID:v16 reply:v25];

    if (v8)
    {
      v18 = v29[5];
      v19 = sub_100018CF8();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (v18)
      {
        if (v20)
        {
          sub_100021234();
        }

        v8[2](v8, v29[5], 0);
      }

      else
      {
        if (v20)
        {
          v22 = [(TKHostTokenDriver *)self extension];
          v23 = [v22 identifier];
          v24 = [v17 error];
          *buf = 138543618;
          v36 = v23;
          v37 = 2114;
          v38 = v24;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "failed to acquire token from extension %{public}@, error:%{public}@", buf, 0x16u);
        }

        v21 = [v17 error];
        (v8)[2](v8, 0, v21);
      }
    }

    _Block_object_dispose(&v28, 8);
  }

  else if (v8)
  {
    (v8)[2](v8, 0, v14);
  }
}

- (BOOL)configureWithError:(id *)a3
{
  v5 = sub_100018CF8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000213B4(self, v5);
  }

  v6 = [(TKHostTokenDriver *)self contextWithError:a3];
  v7 = v6;
  if (v6)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v8 = [v6 tokenDriverProtocol];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10001A780;
    v15 = &unk_1000391A0;
    v17 = &v18;
    v9 = v7;
    v16 = v9;
    [v8 configureWithReply:&v12];

    v10 = *(v19 + 24);
    if (a3 && (v19[3] & 1) == 0)
    {
      *a3 = [v9 error];
      v10 = *(v19 + 24);
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (void)releaseTokenWithTokenID:(id)a3
{
  v4 = a3;
  v5 = sub_100018CF8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002145C();
  }

  v6 = [(TKHostTokenDriver *)self context];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 tokenDriverProtocol];
    v9 = [v4 instanceID];
    [v8 releaseTokenWithInstanceID:v9 reply:&stru_1000391C0];
  }

  v10 = sub_100018CF8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000214C4();
  }
}

- (void)dealloc
{
  v3 = sub_100018CF8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10002152C();
  }

  v4 = [(TKHostTokenDriver *)self requestIdentifier];

  if (v4)
  {
    v5 = [(TKHostTokenDriver *)self extension];
    v6 = [(TKHostTokenDriver *)self requestIdentifier];
    [v5 cancelExtensionRequestWithIdentifier:v6];
  }

  v7.receiver = self;
  v7.super_class = TKHostTokenDriver;
  [(TKHostTokenDriver *)&v7 dealloc];
}

- (TKHostTokenDriverCache)cache
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);

  return WeakRetained;
}

@end