@interface TKHostTokenDriver
- (BOOL)configureWithError:(id *)error;
- (BOOL)valid;
- (NSString)classID;
- (TKHostTokenDriver)initWithExtension:(id)extension cache:(id)cache;
- (TKHostTokenDriverCache)cache;
- (TKTokenDriverHostContext)context;
- (id)_contextWithError:(id *)error;
- (id)contextWithError:(id *)error;
- (id)description;
- (void)acquireTokenWithTokenID:(id)d completion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)keepAlive:(BOOL)alive;
- (void)releaseTokenWithTokenID:(id)d;
@end

@implementation TKHostTokenDriver

- (TKHostTokenDriver)initWithExtension:(id)extension cache:(id)cache
{
  extensionCopy = extension;
  cacheCopy = cache;
  v12.receiver = self;
  v12.super_class = TKHostTokenDriver;
  v9 = [(TKHostTokenDriver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extension, extension);
    objc_storeWeak(&v10->_cache, cacheCopy);
  }

  return v10;
}

- (id)description
{
  extension = [(TKHostTokenDriver *)self extension];
  identifier = [extension identifier];
  requestIdentifier = [(TKHostTokenDriver *)self requestIdentifier];
  v6 = [NSString stringWithFormat:@"<TKHostTokenDriver:%p %@(%@)>", self, identifier, requestIdentifier];

  return v6;
}

- (NSString)classID
{
  extension = [(TKHostTokenDriver *)self extension];
  attributes = [extension attributes];
  v5 = TKTokenClassDriverClassIDKey;
  v6 = [attributes objectForKeyedSubscript:TKTokenClassDriverClassIDKey];

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

- (void)keepAlive:(BOOL)alive
{
  alive = self->_alive;
  if (alive)
  {
    if (alive)
    {
      sub_100020E5C(a2, self);
    }

    extension = [(TKHostTokenDriver *)self extension];
    identifier = [extension identifier];
    v6 = [NSString stringWithFormat:@"extension holder for '%@'", identifier];
    [v6 UTF8String];
    v7 = os_transaction_create();
    v8 = self->_alive;
    self->_alive = v7;

    alive = extension;
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_invalidated = 1;
  [(TKHostTokenDriver *)selfCopy keepAlive:0];
  objc_sync_exit(selfCopy);
}

- (BOOL)valid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  invalidated = selfCopy->_invalidated;
  objc_sync_exit(selfCopy);

  return !invalidated;
}

- (id)contextWithError:(id *)error
{
  v4 = [(TKHostTokenDriver *)self _contextWithError:error];
  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cache);
    classID = [(TKHostTokenDriver *)self classID];
    [WeakRetained removeDriverWithClassID:classID];
  }

  return v4;
}

- (id)_contextWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_invalidated)
  {
    v4 = sub_100018CF8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100021008();
    }

    if (!error)
    {
LABEL_25:
      v6 = 0;
      goto LABEL_31;
    }

    v5 = [NSError errorWithDomain:NSCocoaErrorDomain code:4097 userInfo:0];
    v6 = 0;
    goto LABEL_30;
  }

  requestIdentifier = [(TKHostTokenDriver *)selfCopy requestIdentifier];

  v55 = requestIdentifier;
  if (!requestIdentifier)
  {
    classID = [(TKHostTokenDriver *)selfCopy classID];
    objc_initWeak(&location, selfCopy);
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100019BD8;
    v62[3] = &unk_1000390E0;
    v19 = classID;
    v63 = v19;
    objc_copyWeak(&v64, &location);
    extension = [(TKHostTokenDriver *)selfCopy extension];
    [extension setRequestInterruptionBlock:v62];

    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100019C6C;
    v59[3] = &unk_100039108;
    v54 = v19;
    v60 = v54;
    objc_copyWeak(&v61, &location);
    extension2 = [(TKHostTokenDriver *)selfCopy extension];
    [extension2 setRequestCancellationBlock:v59];

    v22 = sub_100018CF8();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_100020F38();
    }

    v23 = objc_alloc_init(NSExtensionItem);
    v71[0] = @"idleTimeout";
    WeakRetained = objc_loadWeakRetained(&selfCopy->_cache);
    [WeakRetained idleTimeout];
    v25 = [NSNumber numberWithDouble:?];
    v71[1] = @"avoidInitialKeepAlive";
    v72[0] = v25;
    v26 = objc_loadWeakRetained(&selfCopy->_cache);
    v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v26 avoidInitialKeepAlive]);
    v72[1] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];
    [v23 setUserInfo:v28];

    for (i = 0; ; ++i)
    {
      extension3 = [(TKHostTokenDriver *)selfCopy extension];
      v70 = v23;
      v31 = [NSArray arrayWithObjects:&v70 count:1];
      v58 = 0;
      v32 = [extension3 beginExtensionRequestWithOptions:0 inputItems:v31 error:&v58];
      v33 = v58;
      [(TKHostTokenDriver *)selfCopy setRequestIdentifier:v32];

      requestIdentifier2 = [(TKHostTokenDriver *)selfCopy requestIdentifier];
      LODWORD(v32) = requestIdentifier2 == 0;

      if (!v32)
      {
        break;
      }

      if (i == 8 || [v33 code] != 4099 || (objc_msgSend(v33, "domain"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "isEqualToString:", NSCocoaErrorDomain), v35, !v36))
      {
        v40 = sub_100018CF8();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          extension4 = [(TKHostTokenDriver *)selfCopy extension];
          identifier = [extension4 identifier];
          *buf = 138543618;
          v67 = identifier;
          v68 = 2114;
          v69 = v33;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Token driver extension %{public}@ failed to start: %{public}@", buf, 0x16u);
        }

        if (error)
        {
          v41 = v33;
          *error = v33;
        }

        objc_destroyWeak(&v61);
        objc_destroyWeak(&v64);

        objc_destroyWeak(&location);
        goto LABEL_25;
      }

      v37 = sub_100018CF8();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        extension5 = [(TKHostTokenDriver *)selfCopy extension];
        identifier2 = [extension5 identifier];
        *buf = 138543618;
        v67 = identifier2;
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

    requestIdentifier3 = [(TKHostTokenDriver *)selfCopy requestIdentifier];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v52 = +[NSAssertionHandler currentHandler];
      requestIdentifier4 = [(TKHostTokenDriver *)selfCopy requestIdentifier];
      [v52 handleFailureInMethod:a2 object:selfCopy file:@"TKHostTokenDriver.m" lineNumber:228 description:{@"requestIdentifier of unexpected type: %@", requestIdentifier4}];
    }

    [(TKHostTokenDriver *)selfCopy keepAlive:1];

    objc_destroyWeak(&v61);
    objc_destroyWeak(&v64);

    objc_destroyWeak(&location);
  }

  extension6 = [(TKHostTokenDriver *)selfCopy extension];
  requestIdentifier5 = [(TKHostTokenDriver *)selfCopy requestIdentifier];
  v6 = [extension6 _extensionContextForUUID:requestIdentifier5];

  if (v6)
  {
    cache = [(TKHostTokenDriver *)selfCopy cache];
    registry = [cache registry];
    [v6 setRegistry:registry];

    cache2 = [(TKHostTokenDriver *)selfCopy cache];
    smartCardTokenRegistrationRegistry = [cache2 smartCardTokenRegistrationRegistry];
    [v6 setSmartCardRegistrationRegistry:smartCardTokenRegistrationRegistry];

    if (!v55)
    {
      tokenDriverProtocol = [v6 tokenDriverProtocol];
      registry2 = [v6 registry];
      listener = [registry2 listener];
      endpoint = [listener endpoint];
      [tokenDriverProtocol setConfigurationEndpoint:endpoint reply:&stru_100039128];
    }
  }

  else
  {
    v42 = sub_100018CF8();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      extension7 = [(TKHostTokenDriver *)selfCopy extension];
      identifier3 = [extension7 identifier];
      requestIdentifier6 = [(TKHostTokenDriver *)selfCopy requestIdentifier];
      *buf = 138543618;
      v67 = identifier3;
      v68 = 2114;
      v69 = requestIdentifier6;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}@ failed to resolve requestIdentifier %{public}@ to context", buf, 0x16u);
    }

    if (error)
    {
      v5 = [NSError errorWithDomain:TKErrorDomain code:-7 userInfo:0];
LABEL_30:
      *error = v5;
    }
  }

LABEL_31:
  objc_sync_exit(selfCopy);

  return v6;
}

- (TKTokenDriverHostContext)context
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  requestIdentifier = [(TKHostTokenDriver *)selfCopy requestIdentifier];

  if (requestIdentifier)
  {
    extension = [(TKHostTokenDriver *)selfCopy extension];
    requestIdentifier2 = [(TKHostTokenDriver *)selfCopy requestIdentifier];
    v6 = [extension _extensionContextForUUID:requestIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (void)acquireTokenWithTokenID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  classID = [dCopy classID];
  classID2 = [(TKHostTokenDriver *)self classID];
  v11 = [classID isEqualToString:classID2];

  if ((v11 & 1) == 0)
  {
    sub_100021148(a2, self, dCopy);
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
    tokenDriverProtocol = [v13 tokenDriverProtocol];
    instanceID = [dCopy instanceID];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10001A14C;
    v25[3] = &unk_100039150;
    v27 = &v28;
    v17 = v13;
    v26 = v17;
    [tokenDriverProtocol acquireTokenWithInstanceID:instanceID reply:v25];

    if (completionCopy)
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

        completionCopy[2](completionCopy, v29[5], 0);
      }

      else
      {
        if (v20)
        {
          extension = [(TKHostTokenDriver *)self extension];
          identifier = [extension identifier];
          error = [v17 error];
          *buf = 138543618;
          v36 = identifier;
          v37 = 2114;
          v38 = error;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "failed to acquire token from extension %{public}@, error:%{public}@", buf, 0x16u);
        }

        error2 = [v17 error];
        (completionCopy)[2](completionCopy, 0, error2);
      }
    }

    _Block_object_dispose(&v28, 8);
  }

  else if (completionCopy)
  {
    (completionCopy)[2](completionCopy, 0, v14);
  }
}

- (BOOL)configureWithError:(id *)error
{
  v5 = sub_100018CF8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000213B4(self, v5);
  }

  v6 = [(TKHostTokenDriver *)self contextWithError:error];
  v7 = v6;
  if (v6)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    tokenDriverProtocol = [v6 tokenDriverProtocol];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10001A780;
    v15 = &unk_1000391A0;
    v17 = &v18;
    v9 = v7;
    v16 = v9;
    [tokenDriverProtocol configureWithReply:&v12];

    v10 = *(v19 + 24);
    if (error && (v19[3] & 1) == 0)
    {
      *error = [v9 error];
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

- (void)releaseTokenWithTokenID:(id)d
{
  dCopy = d;
  v5 = sub_100018CF8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002145C();
  }

  context = [(TKHostTokenDriver *)self context];
  v7 = context;
  if (context)
  {
    tokenDriverProtocol = [context tokenDriverProtocol];
    instanceID = [dCopy instanceID];
    [tokenDriverProtocol releaseTokenWithInstanceID:instanceID reply:&stru_1000391C0];
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

  requestIdentifier = [(TKHostTokenDriver *)self requestIdentifier];

  if (requestIdentifier)
  {
    extension = [(TKHostTokenDriver *)self extension];
    requestIdentifier2 = [(TKHostTokenDriver *)self requestIdentifier];
    [extension cancelExtensionRequestWithIdentifier:requestIdentifier2];
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