@interface SODaemon
- (BOOL)_doAKshouldProcessURL:(id)l;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SODaemon)initWithXPCConnection:(id)connection;
- (void)_doGetAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion;
- (void)_doPerformAuthorizationWithRequestParameters:(id)parameters profile:(id)profile completion:(id)completion;
- (void)_extensionCleanup;
- (void)_performAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)_updateCallerPropertiesFromAuditTokenInParameters:(id)parameters;
- (void)_updateUsageOfInternalExtensionsInParameters:(id)parameters;
- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error;
- (void)authorizationDidCompleteWithCredential:(id)credential error:(id)error completion:(id)completion;
- (void)beginAuthorizationWithCompletion:(id)completion;
- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)cancelAuthorization:(id)authorization completion:(id)completion;
- (void)configurationWithCompletion:(id)completion;
- (void)connectionInvalidated;
- (void)debugHintsWithCompletion:(id)completion;
- (void)finishAuthorization:(id)authorization completion:(id)completion;
- (void)getAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion;
- (void)isConfigurationActiveForExtensionIdentifier:(id)identifier completion:(id)completion;
- (void)isExtensionProcessWithAuditToken:(id *)token completion:(id)completion;
- (void)performAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)realmsWithCompletion:(id)completion;
@end

@implementation SODaemon

- (SODaemon)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v5 = sub_100001020();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SODaemon initWithXPCConnection:]";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = SODaemon;
  v6 = [(SODaemon *)&v8 init];
  if (v6)
  {
    if (qword_100015E28 != -1)
    {
      sub_100008A04();
    }

    objc_storeWeak(&v6->_xpcConnection, connectionCopy);
  }

  return v6;
}

- (void)getAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v10 = sub_100001020();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136316163;
    v12 = "[SODaemon getAuthorizationHintsWithURL:responseCode:completion:]";
    v13 = 2160;
    v14 = 1752392040;
    v15 = 2117;
    v16 = lCopy;
    v17 = 1024;
    codeCopy = code;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s url: %{sensitive, mask.hash}@, responseCode: %d on %@", &v11, 0x30u);
  }

  [(SODaemon *)self _doGetAuthorizationHintsWithURL:lCopy responseCode:code completion:completionCopy];
}

- (void)_doGetAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v10 = [(SODaemon *)self _doAKshouldProcessURL:lCopy];
  if (v10)
  {
    v11 = +[SOExtensionManager sharedInstance];
    loadedInternalExtension = [v11 loadedInternalExtension];
  }

  else
  {
    v13 = +[SOConfigurationHost defaultManager];
    v11 = [v13 profileForURL:lCopy responseCode:code];

    if (!v11)
    {
      if (!completionCopy)
      {
LABEL_17:
        loadedInternalExtension = 0;
        goto LABEL_18;
      }

      v23 = [sub_100004B1C() invalidURLError:lCopy];
LABEL_16:
      v24 = v23;
      completionCopy[2](completionCopy, 0, v23);

      goto LABEL_17;
    }

    v14 = +[SOExtensionManager sharedInstance];
    extensionBundleIdentifier = [v11 extensionBundleIdentifier];
    loadedInternalExtension = [v14 loadedExtensionWithBundleIdentifier:extensionBundleIdentifier];
  }

  if (!completionCopy)
  {
    goto LABEL_18;
  }

  if (!loadedInternalExtension)
  {
    v21 = sub_100004B1C();
    if (v10)
    {
      v22 = @"No AppSSO IdP extension found (internal extension)";
    }

    else
    {
      v22 = @"No AppSSO IdP extension found";
    }

    v23 = [v21 internalErrorWithMessage:v22];
    goto LABEL_16;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v16 = qword_100015E58;
  v29 = qword_100015E58;
  if (!qword_100015E58)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100008088;
    v25[3] = &unk_100010390;
    v25[4] = &v26;
    sub_100008088(v25);
    v16 = v27[3];
  }

  v17 = v16;
  _Block_object_dispose(&v26, 8);
  v18 = [v16 alloc];
  localizedExtensionDisplayName = [loadedInternalExtension localizedExtensionDisplayName];
  v20 = [v18 initWithLocalizedExtensionBundleDisplayName:localizedExtensionDisplayName];

  (completionCopy)[2](completionCopy, v20, 0);
LABEL_18:
}

- (void)performAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v50 = "[SODaemon performAuthorizationWithRequestParameters:completion:]";
    v51 = 2114;
    v52 = parametersCopy;
    v53 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", buf, 0x20u);
  }

  v9 = [[SOAuthorizationRequestParameters alloc] initWithAuthorizationRequestParametersCore:parametersCopy];
  [(SODaemon *)self _updateUsageOfInternalExtensionsInParameters:v9];
  [(SODaemon *)self _updateCallerPropertiesFromAuditTokenInParameters:v9];
  authorizationOptions = [v9 authorizationOptions];
  v11 = [authorizationOptions objectForKeyedSubscript:SOAuthorizationOptionRemovedProfileExtensionBundleIdentifier];

  if ([v9 useInternalExtensions])
  {
    v12 = +[SOExtensionManager internalExtensionBundleIdentifier];
    requestQueueIdentifier = self->_requestQueueIdentifier;
    self->_requestQueueIdentifier = v12;
  }

  else if ([v11 length])
  {
    objc_storeStrong(&self->_requestQueueIdentifier, v11);
  }

  else
  {
    v32 = +[SOConfigurationHost defaultManager];
    v33 = [v9 url];
    callerBundleIdentifier2 = [v32 profileForURL:v33 responseCode:{objc_msgSend(v9, "responseCode")}];

    if (!callerBundleIdentifier2)
    {
      if (!completionCopy)
      {
        goto LABEL_43;
      }

      v43 = sub_100004B1C();
      v29 = [v9 url];
      v44 = [v43 invalidURLError:v29];
      completionCopy[2](completionCopy, 0, v44);

      goto LABEL_42;
    }

    extensionBundleIdentifier = [callerBundleIdentifier2 extensionBundleIdentifier];
    v35 = self->_requestQueueIdentifier;
    self->_requestQueueIdentifier = extensionBundleIdentifier;

    if (![(NSString *)self->_requestQueueIdentifier length])
    {
      if (!completionCopy)
      {
        goto LABEL_43;
      }

      v42 = [sub_100004B1C() parameterErrorWithMessage:@"profile has no extension bundle identifier"];
      goto LABEL_41;
    }
  }

  requestedOperation = [v9 requestedOperation];
  v15 = [requestedOperation isEqualToString:SOAuthorizationOperationFetchNetworkCredentials];

  if (!v15 || (v16 = sub_10000521C(), v17 = objc_loadWeakRetained(&self->_xpcConnection), LOBYTE(v16) = [v16 checkEntitlementFromXPC:v17 entitlement:@"com.apple.private.AppSSO.FetchNetworkCredentials"], v17, (v16 & 1) != 0))
  {
    if ([v11 length] || (objc_msgSend(v9, "useInternalExtensions") & 1) != 0)
    {
LABEL_11:
      impersonationBundleIdentifier = [v9 impersonationBundleIdentifier];
      if (!impersonationBundleIdentifier || (v19 = impersonationBundleIdentifier, v20 = sub_10000521C(), WeakRetained = objc_loadWeakRetained(&self->_xpcConnection), LOBYTE(v20) = [v20 checkEntitlementFromXPC:WeakRetained entitlement:@"com.apple.private.network.socket-delegate"], WeakRetained, v19, (v20 & 1) != 0))
      {
        v22 = +[SOExtensionManager sharedInstance];
        v23 = [v22 loadedExtensionWithBundleIdentifier:self->_requestQueueIdentifier];
        extensionRequestsMode = [v23 extensionRequestsMode];

        v25 = sub_100001020();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_100008A40(&self->_requestQueueIdentifier, extensionRequestsMode);
        }

        if (extensionRequestsMode == 2)
        {
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_1000052FC;
          v47[3] = &unk_100010638;
          v48 = completionCopy;
          [(SODaemon *)self _performAuthorizationWithRequestParameters:v9 completion:v47];
          callerBundleIdentifier2 = v48;
LABEL_43:

          goto LABEL_44;
        }

        callerBundleIdentifier2 = [[SORequestQueueItem alloc] initWithService:self requestParameters:v9 completionBlock:completionCopy];
        v29 = [SORequestQueue requestQueueWithIdentifier:self->_requestQueueIdentifier];
        processItemBlock = [v29 processItemBlock];

        if (!processItemBlock)
        {
          v31 = +[SODaemon _processRequestBlock];
          [v29 setProcessItemBlock:v31];
        }

        [v29 enqueueRequest:callerBundleIdentifier2];
LABEL_42:

        goto LABEL_43;
      }

      if (completionCopy)
      {
        v27 = sub_100004B1C();
        v28 = @"com.apple.private.network.socket-delegate";
        goto LABEL_27;
      }

      goto LABEL_44;
    }

    v36 = +[SOConfigurationHost defaultManager];
    v37 = [v9 url];
    responseCode = [v9 responseCode];
    callerBundleIdentifier = [v9 callerBundleIdentifier];
    v40 = [v36 willHandleURL:v37 responseCode:responseCode callerBundleIdentifier:callerBundleIdentifier];

    if (v40 == 3)
    {
      if (!completionCopy)
      {
        goto LABEL_44;
      }

      v46 = sub_100004B1C();
      callerBundleIdentifier2 = [v9 callerBundleIdentifier];
      v42 = [v46 deniedBundleIdentifier:callerBundleIdentifier2];
    }

    else if (v40 == 2)
    {
      if (!completionCopy)
      {
        goto LABEL_44;
      }

      v45 = sub_100004B1C();
      callerBundleIdentifier2 = [v9 callerBundleIdentifier];
      v42 = [v45 doNotHandleBreakingRecursionWithCallerBundleIdentifier:callerBundleIdentifier2];
    }

    else
    {
      if (v40 != 1)
      {
        goto LABEL_11;
      }

      if (!completionCopy)
      {
        goto LABEL_44;
      }

      v41 = sub_100004B1C();
      callerBundleIdentifier2 = [v9 url];
      v42 = [v41 invalidURLError:callerBundleIdentifier2];
    }

LABEL_41:
    v29 = v42;
    completionCopy[2](completionCopy, 0, v42);
    goto LABEL_42;
  }

  if (completionCopy)
  {
    v27 = sub_100004B1C();
    v28 = @"com.apple.private.AppSSO.FetchNetworkCredentials";
LABEL_27:
    callerBundleIdentifier2 = [v27 missingEntitlementError:v28];
    completionCopy[2](completionCopy, 0, callerBundleIdentifier2);
    goto LABEL_43;
  }

LABEL_44:
}

- (void)_performAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "[SODaemon _performAuthorizationWithRequestParameters:completion:]";
    v26 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v24, 0x16u);
  }

  if ([parametersCopy useInternalExtensions])
  {
    v9 = 0;
LABEL_12:
    [(SODaemon *)self _doPerformAuthorizationWithRequestParameters:parametersCopy profile:v9 completion:completionCopy];
    v12 = v9;
    goto LABEL_13;
  }

  authorizationOptions = [parametersCopy authorizationOptions];
  v11 = SOAuthorizationOptionRemovedProfileExtensionBundleIdentifier;
  v12 = [authorizationOptions objectForKeyedSubscript:SOAuthorizationOptionRemovedProfileExtensionBundleIdentifier];

  if (v12)
  {
    authorizationOptions2 = [parametersCopy authorizationOptions];
    v14 = [authorizationOptions2 mutableCopy];

    [v14 removeObjectForKey:v11];
    [parametersCopy setAuthorizationOptions:v14];
  }

  v15 = [v12 length];
  v16 = +[SOConfigurationHost defaultManager];
  v17 = v16;
  if (v15)
  {
    v9 = [v16 removedProfileForExtensionBundleIdentifier:v12];
  }

  else
  {
    v18 = [parametersCopy url];
    v9 = [v17 profileForURL:v18 responseCode:{objc_msgSend(parametersCopy, "responseCode")}];
  }

  if (v9)
  {
    extensionData = [v9 extensionData];
    [parametersCopy setExtensionData:extensionData];

    realm = [v9 realm];
    [parametersCopy setRealm:realm];

    goto LABEL_12;
  }

  if (completionCopy)
  {
    v21 = sub_100004B1C();
    v22 = [parametersCopy url];
    v23 = [v21 invalidURLError:v22];
    completionCopy[2](completionCopy, 0, v23);
  }

LABEL_13:
}

- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v44 = 136315650;
    v45 = "[SODaemon beginAuthorizationWithRequestParameters:completion:]";
    v46 = 2112;
    v47 = parametersCopy;
    v48 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s %@ on %@", &v44, 0x20u);
  }

  v9 = [[SOAuthorizationRequestParameters alloc] initWithAuthorizationRequestParametersCore:parametersCopy];
  [(SODaemon *)self _updateUsageOfInternalExtensionsInParameters:v9];
  [(SODaemon *)self _updateCallerPropertiesFromAuditTokenInParameters:v9];
  requestedOperation = [v9 requestedOperation];
  v11 = [requestedOperation isEqualToString:SOAuthorizationOperationFetchNetworkCredentials];

  if (v11)
  {
    v12 = sub_10000521C();
    WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
    LOBYTE(v12) = [v12 checkEntitlementFromXPC:WeakRetained entitlement:@"com.apple.private.AppSSO.FetchNetworkCredentials"];

    if ((v12 & 1) == 0)
    {
      if (completionCopy)
      {
        callerBundleIdentifier2 = [sub_100004B1C() missingEntitlementError:@"com.apple.private.AppSSO.FetchNetworkCredentials"];
        (*(completionCopy + 2))(completionCopy, 0, 0, callerBundleIdentifier2);
LABEL_34:
        loadedInternalExtension = 0;
        v16 = 0;
        goto LABEL_35;
      }

      goto LABEL_36;
    }
  }

  if (([v9 useInternalExtensions] & 1) == 0)
  {
    v17 = +[SOConfigurationHost defaultManager];
    v18 = [v9 url];
    responseCode = [v9 responseCode];
    callerBundleIdentifier = [v9 callerBundleIdentifier];
    v21 = [v17 willHandleURL:v18 responseCode:responseCode callerBundleIdentifier:callerBundleIdentifier];

    if (v21 == 3)
    {
      if (completionCopy)
      {
        v42 = sub_100004B1C();
        callerBundleIdentifier2 = [v9 callerBundleIdentifier];
        v40 = [v42 deniedBundleIdentifier:callerBundleIdentifier2];
        goto LABEL_33;
      }

      goto LABEL_36;
    }

    if (v21 == 2)
    {
      if (completionCopy)
      {
        v41 = sub_100004B1C();
        callerBundleIdentifier2 = [v9 callerBundleIdentifier];
        v40 = [v41 doNotHandleBreakingRecursionWithCallerBundleIdentifier:callerBundleIdentifier2];
        goto LABEL_33;
      }

LABEL_36:
      loadedInternalExtension = 0;
      v16 = 0;
      goto LABEL_37;
    }

    if (v21 == 1)
    {
      goto LABEL_25;
    }
  }

  if ([v9 useInternalExtensions])
  {
    v14 = +[SOExtensionManager sharedInstance];
    loadedInternalExtension = [v14 loadedInternalExtension];
    v16 = 0;
    goto LABEL_16;
  }

  v23 = +[SOConfigurationHost defaultManager];
  v24 = [v9 url];
  v16 = [v23 profileForURL:v24 responseCode:{objc_msgSend(v9, "responseCode")}];

  if (!v16)
  {
LABEL_25:
    if (completionCopy)
    {
      v39 = sub_100004B1C();
      callerBundleIdentifier2 = [v9 url];
      v40 = [v39 invalidURLError:callerBundleIdentifier2];
LABEL_33:
      v43 = v40;
      (*(completionCopy + 2))(completionCopy, 0, 0, v40);

      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v14 = +[SOExtensionManager sharedInstance];
  extensionBundleIdentifier = [v16 extensionBundleIdentifier];
  loadedInternalExtension = [v14 loadedExtensionWithBundleIdentifier:extensionBundleIdentifier];

LABEL_16:
  v26 = sub_100001020();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    localizedExtensionDisplayName = [loadedInternalExtension localizedExtensionDisplayName];
    v44 = 138543362;
    v45 = localizedExtensionDisplayName;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "loadedExtensionWithBundleIdentifier: extension = %{public}@", &v44, 0xCu);
  }

  if (!loadedInternalExtension)
  {
    if (!completionCopy)
    {
      loadedInternalExtension = 0;
      goto LABEL_37;
    }

    callerBundleIdentifier2 = [sub_100004B1C() internalErrorWithMessage:@"No AppSSO IdP extension found"];
    (*(completionCopy + 2))(completionCopy, 0, 0, callerBundleIdentifier2);
    loadedInternalExtension = 0;
    goto LABEL_35;
  }

  impersonationBundleIdentifier = [v9 impersonationBundleIdentifier];
  if (impersonationBundleIdentifier)
  {
    v29 = impersonationBundleIdentifier;
    v30 = sub_10000521C();
    v31 = objc_loadWeakRetained(&self->_xpcConnection);
    LOBYTE(v30) = [v30 checkEntitlementFromXPC:v31 entitlement:@"com.apple.private.network.socket-delegate"];

    if ((v30 & 1) == 0)
    {
      if (!completionCopy)
      {
        goto LABEL_37;
      }

      callerBundleIdentifier2 = [sub_100004B1C() missingEntitlementError:@"com.apple.private.network.socket-delegate"];
      (*(completionCopy + 2))(completionCopy, 0, 0, callerBundleIdentifier2);
      goto LABEL_35;
    }
  }

  objc_storeStrong(&self->_requestParameters, v9);
  extensionData = [v16 extensionData];
  [(SOAuthorizationRequestParameters *)self->_requestParameters setExtensionData:extensionData];

  realm = [v16 realm];
  [(SOAuthorizationRequestParameters *)self->_requestParameters setRealm:realm];

  v34 = +[NSXPCListener anonymousListener];
  p_extensionXpcListener = &self->_extensionXpcListener;
  extensionXpcListener = self->_extensionXpcListener;
  self->_extensionXpcListener = v34;

  [(NSXPCListener *)self->_extensionXpcListener setDelegate:self];
  [(NSXPCListener *)self->_extensionXpcListener resume];
  v37 = sub_100001020();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    sub_100008AEC(loadedInternalExtension, p_extensionXpcListener);
  }

  if (completionCopy)
  {
    callerBundleIdentifier2 = [loadedInternalExtension extensionBundleIdentifier];
    endpoint = [(NSXPCListener *)*p_extensionXpcListener endpoint];
    (*(completionCopy + 2))(completionCopy, callerBundleIdentifier2, endpoint, 0);

LABEL_35:
  }

LABEL_37:
}

- (void)_doPerformAuthorizationWithRequestParameters:(id)parameters profile:(id)profile completion:(id)completion
{
  parametersCopy = parameters;
  profileCopy = profile;
  completionCopy = completion;
  v11 = objc_retainBlock(completionCopy);
  authenticateCompletion = self->_authenticateCompletion;
  self->_authenticateCompletion = v11;

  if ([parametersCopy isUserInteractionEnabled])
  {
    v13 = objc_opt_new();
    daemonUIManager = self->_daemonUIManager;
    self->_daemonUIManager = v13;

    [(SODaemonUIManager *)self->_daemonUIManager setDelegate:self];
    v15 = self->_daemonUIManager;
    v31 = 0;
    v16 = [(SODaemonUIManager *)v15 beginAuthorizationWithRequestParameters:parametersCopy profile:profileCopy error:&v31];
    identifier = v31;
    if ((v16 & 1) == 0)
    {
      v18 = self->_authenticateCompletion;
      self->_authenticateCompletion = 0;

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, identifier);
      }
    }

    goto LABEL_13;
  }

  useInternalExtensions = [parametersCopy useInternalExtensions];
  v20 = +[SOExtensionManager sharedInstance];
  v21 = v20;
  if (useInternalExtensions)
  {
    loadInternalExtension = [v20 loadInternalExtension];
    extension = self->_extension;
    self->_extension = loadInternalExtension;
  }

  else
  {
    extension = [profileCopy extensionBundleIdentifier];
    v24 = [v21 loadExtensionWithBundleIdentifier:extension];
    v25 = self->_extension;
    self->_extension = v24;
  }

  v26 = sub_100001020();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    localizedExtensionDisplayName = [(SOExtension *)self->_extension localizedExtensionDisplayName];
    *buf = 138543362;
    v35 = localizedExtensionDisplayName;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "loadedExtensionWithBundleIdentifier: extension = %{public}@", buf, 0xCu);
  }

  v28 = self->_extension;
  identifier = [parametersCopy identifier];
  if (!v28)
  {
    v30 = [sub_100004B1C() internalErrorWithMessage:@"No active AppSSO IdP extension"];
    [(SODaemon *)self authorization:identifier didCompleteWithCredential:0 error:v30];

LABEL_13:
    goto LABEL_14;
  }

  [(SOExtension *)v28 saveDelegate:self forRequestIdentifier:identifier];

  v29 = self->_extension;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100005E90;
  v32[3] = &unk_100010660;
  v32[4] = self;
  v33 = parametersCopy;
  [(SOExtension *)v29 setupNonUISessionWithCompletion:v32];

LABEL_14:
}

- (BOOL)_doAKshouldProcessURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = [AKAuthorizationController shouldProcessURL:lCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100001020();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = "[SODaemon _doAKshouldProcessURL:]";
    v11 = 2160;
    v8 = @"NO";
    v12 = 1752392040;
    v13 = 2117;
    v9 = 136316163;
    if (v5)
    {
      v8 = @"YES";
    }

    v14 = lCopy;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s URL = %{sensitive, mask.hash}@, result = %@ on %@", &v9, 0x34u);
  }

  return v5;
}

- (void)cancelAuthorization:(id)authorization completion:(id)completion
{
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[SODaemon cancelAuthorization:completion:]";
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  extension = self->_extension;
  if (extension)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100006464;
    v16[3] = &unk_100010688;
    v16[4] = self;
    v17 = authorizationCopy;
    v18 = completionCopy;
    [(SOExtension *)extension cancelAuthorization:v17 completion:v16];
  }

  else
  {
    daemonUIManager = self->_daemonUIManager;
    v15 = 0;
    v11 = [(SODaemonUIManager *)daemonUIManager cancelAuthorization:authorizationCopy error:&v15];
    v12 = v15;
    if (!v11 && self->_requestQueueIdentifier)
    {
      v13 = [SORequestQueue requestQueueWithIdentifier:?];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000064CC;
      v14[3] = &unk_1000106B0;
      v14[4] = self;
      [v13 removeRequestWithIdentifier:authorizationCopy block:v14];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v11, v12);
    }
  }
}

- (void)configurationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100001020();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SODaemon configurationWithCompletion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = +[SOConfigurationHost defaultManager];
  v9 = 0;
  v7 = [v6 configurationForClientWithError:&v9];
  v8 = v9;

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v7, v8);
  }
}

- (void)realmsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100001020();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SODaemon realmsWithCompletion:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  v6 = +[SOConfigurationHost defaultManager];
  realms = [v6 realms];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, realms, 0);
  }
}

- (void)debugHintsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100001020();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SODaemon debugHintsWithCompletion:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  v6 = +[SODebugHints sharedInstance];
  [v6 debugHintsWithCompletion:completionCopy];
}

- (void)finishAuthorization:(id)authorization completion:(id)completion
{
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    requestQueueIdentifier = self->_requestQueueIdentifier;
    extension = self->_extension;
    *buf = 136315906;
    v30 = "[SODaemon finishAuthorization:completion:]";
    v31 = 2114;
    v32 = extension;
    v33 = 2114;
    v34 = requestQueueIdentifier;
    v35 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s extension = %{public}@, queue = %{public}@ on %@", buf, 0x2Au);
  }

  [(SOExtension *)self->_extension removeDelegateForRequestIdentifier:authorizationCopy];
  if (self->_requestQueueIdentifier)
  {
    v11 = [SORequestQueue requestQueueWithIdentifier:?];
  }

  else
  {
    v11 = 0;
  }

  daemonUIManager = self->_extension;
  if (daemonUIManager)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100006AB0;
    v26[3] = &unk_1000106D8;
    v13 = v27;
    v27[0] = v11;
    v27[1] = self;
    v14 = &v28;
    v28 = completionCopy;
    v15 = completionCopy;
    v16 = v11;
    v17 = v26;
  }

  else
  {
    daemonUIManager = self->_daemonUIManager;
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100006B6C;
    v23 = &unk_1000106D8;
    v13 = v24;
    v24[0] = v11;
    v24[1] = self;
    v14 = &v25;
    v25 = completionCopy;
    v18 = completionCopy;
    v19 = v11;
    v17 = &v20;
  }

  [daemonUIManager finishAuthorization:authorizationCopy completion:{v17, v20, v21, v22, v23}];
}

- (void)isExtensionProcessWithAuditToken:(id *)token completion:(id)completion
{
  completionCopy = completion;
  v7 = sub_100001020();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 136315394;
    *&v19[4] = "[SODaemon isExtensionProcessWithAuditToken:completion:]";
    *&v19[12] = 2112;
    *&v19[14] = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", v19, 0x16u);
  }

  v8 = sub_10000521C();
  v9 = *&token->var0[4];
  *v19 = *token->var0;
  *&v19[16] = v9;
  v10 = [v8 pidFromAuditToken:v19];
  v11 = sub_10000521C();
  v12 = *&token->var0[4];
  *v19 = *token->var0;
  *&v19[16] = v12;
  v13 = [v11 bundleIdentifierFromAuditToken:v19];
  if (v13)
  {
    v14 = +[SOExtensionManager sharedInstance];
    v15 = [v14 loadedExtensionWithBundleIdentifier:v13];
    v16 = v15 != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_100001020();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    *v19 = 138478339;
    *&v19[4] = v13;
    if (v16)
    {
      v18 = @"YES";
    }

    *&v19[12] = 1024;
    *&v19[14] = v10;
    *&v19[18] = 2114;
    *&v19[20] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{private}@(%u) isExtensionProcess = %{public}@", v19, 0x1Cu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v16, 0);
  }
}

- (void)isConfigurationActiveForExtensionIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[SODaemon isConfigurationActiveForExtensionIdentifier:completion:]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v9 = +[SOConfigurationHost defaultManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006FE0;
  v11[3] = &unk_100010740;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 isConfigurationActiveForExtensionIdentifier:identifierCopy runningAsAgent:1 completion:v11];
}

- (void)authorizationDidCompleteWithCredential:(id)credential error:(id)error completion:(id)completion
{
  credentialCopy = credential;
  errorCopy = error;
  completionCopy = completion;
  v11 = sub_100001020();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_retainBlock(self->_authenticateCompletion);
    *buf = 136315650;
    *&buf[4] = "[SODaemon authorizationDidCompleteWithCredential:error:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s authenticateCompletion = %@ on %@", buf, 0x20u);
  }

  authenticateCompletion = self->_authenticateCompletion;
  if (authenticateCompletion)
  {
    if (credentialCopy)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2050000000;
      v14 = qword_100015E68;
      v23 = qword_100015E68;
      if (!qword_100015E68)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100008138;
        selfCopy = &unk_100010390;
        v26 = &v20;
        sub_100008138(buf);
        v14 = v21[3];
      }

      v15 = v14;
      _Block_object_dispose(&v20, 8);
      v16 = [v14 alloc];
      v17 = [v16 initWithAuthorizationCredential:{credentialCopy, v20}];
      authenticateCompletion = self->_authenticateCompletion;
    }

    else
    {
      v17 = 0;
    }

    authenticateCompletion[2](authenticateCompletion, v17, errorCopy);
    v19 = self->_authenticateCompletion;
    self->_authenticateCompletion = 0;

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    goto LABEL_15;
  }

  v18 = sub_100001020();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "authorization already finished => ignoring complete request", buf, 2u);
  }

  if (completionCopy)
  {
    v17 = [sub_100004B1C() silentInternalErrorWithMessage:@"authorization already finished => ignoring complete request"];
    (completionCopy)[2](completionCopy, 0, v17);
LABEL_15:
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SODaemon listener:shouldAcceptNewConnection:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v16 = qword_100015E70;
  v27 = qword_100015E70;
  if (!qword_100015E70)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100008190;
    v29 = &unk_100010390;
    v30 = &v24;
    sub_100008190(buf, v9, v10, v11, v12, v13, v14, v15, v21);
    v16 = v25[3];
  }

  v17 = v16;
  _Block_object_dispose(&v24, 8);
  v18 = [v16 interfaceWithInternalProtocol:&OBJC_PROTOCOL___SORemoteExtensionServiceProtocol];
  [connectionCopy setExportedInterface:v18];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];
  objc_initWeak(buf, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100007518;
  v22[3] = &unk_100010328;
  objc_copyWeak(&v23, buf);
  [(SODaemon *)self setInvalidationHandler:v22];
  invalidationHandler = [(SODaemon *)self invalidationHandler];
  [connectionCopy setInvalidationHandler:invalidationHandler];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);

  return 1;
}

- (void)connectionInvalidated
{
  v3 = sub_100001020();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SODaemon connectionInvalidated]";
    v6 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v4, 0x16u);
  }
}

- (void)beginAuthorizationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100001020();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SODaemon beginAuthorizationWithCompletion:]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, self->_requestParameters, 0);
  }
}

- (void)_updateUsageOfInternalExtensionsInParameters:(id)parameters
{
  parametersCopy = parameters;
  if ([parametersCopy useInternalExtensions])
  {
    v4 = [parametersCopy url];
    [parametersCopy setUseInternalExtensions:{-[SODaemon _doAKshouldProcessURL:](self, "_doAKshouldProcessURL:", v4)}];
  }
}

- (void)_updateCallerPropertiesFromAuditTokenInParameters:(id)parameters
{
  parametersCopy = parameters;
  v27 = 0u;
  v28 = 0u;
  auditTokenData = [parametersCopy auditTokenData];

  if (!auditTokenData || (v6 = sub_10000521C(), [parametersCopy auditTokenData], v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = objc_msgSend(v6, "auditTokenFromData:auditToken:", v7, &v27), v7, (v6 & 1) == 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v27 = *buf;
    v28 = *&buf[16];

    v10 = [NSData dataWithBytes:&v27 length:32];
    [parametersCopy setAuditTokenData:v10];
  }

  v11 = sub_10000521C();
  *buf = v27;
  *&buf[16] = v28;
  v12 = [v11 bundleIdentifierFromAuditToken:buf];
  [parametersCopy setCallerBundleIdentifier:v12];

  v13 = sub_10000521C();
  *buf = v27;
  *&buf[16] = v28;
  v14 = [v13 pidFromAuditToken:buf];
  callerBundleIdentifier = [parametersCopy callerBundleIdentifier];
  [parametersCopy setCallerManaged:{+[SODaemonUtils isAppManagedWithBundleIdentifier:](SODaemonUtils, "isAppManagedWithBundleIdentifier:", callerBundleIdentifier)}];

  v16 = sub_10000521C();
  *buf = v27;
  *&buf[16] = v28;
  v17 = [v16 teamIdentifierFromAuditToken:buf];
  [parametersCopy setCallerTeamIdentifier:v17];

  callerBundleIdentifier2 = [parametersCopy callerBundleIdentifier];
  v19 = [SODaemonUtils localizedAppNameWithBundleIdentifier:callerBundleIdentifier2 pid:v14];
  [parametersCopy setLocalizedCallerDisplayName:v19];

  v20 = sub_100001020();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    auditTokenData2 = [parametersCopy auditTokenData];
    if (auditTokenData2)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    callerBundleIdentifier3 = [parametersCopy callerBundleIdentifier];
    if ([parametersCopy isCallerManaged])
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    callerTeamIdentifier = [parametersCopy callerTeamIdentifier];
    localizedCallerDisplayName = [parametersCopy localizedCallerDisplayName];
    *buf = 67110402;
    *&buf[4] = v14;
    *&buf[8] = 2112;
    *&buf[10] = v22;
    *&buf[18] = 2112;
    *&buf[20] = callerBundleIdentifier3;
    *&buf[28] = 2112;
    *&buf[30] = v24;
    v30 = 2112;
    v31 = callerTeamIdentifier;
    v32 = 2112;
    v33 = localizedCallerDisplayName;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "PID: %u has auditToken: %@, callerBundleIdentifier: %@, callerManaged: %@, callerTeamIdentifier: %@, localizedCallerDisplayName: %@", buf, 0x3Au);
  }
}

- (void)_extensionCleanup
{
  v3 = sub_100001020();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    extension = self->_extension;
    v7 = 136315650;
    v8 = "[SODaemon _extensionCleanup]";
    v9 = 2114;
    v10 = extension;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s extension = %{public}@ on %@", &v7, 0x20u);
  }

  v5 = self->_extension;
  if (v5)
  {
    [(SOExtension *)v5 unload];
    v6 = self->_extension;
    self->_extension = 0;
  }
}

- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error
{
  credentialCopy = credential;
  errorCopy = error;
  v9 = sub_100001020();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v12 = "[SODaemon authorization:didCompleteWithCredential:error:]";
    v13 = 2114;
    v14 = credentialCopy;
    v15 = 2114;
    v16 = errorCopy;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s credential: %{public}@, %{public}@ on %@", buf, 0x2Au);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100007CA4;
  v10[3] = &unk_100010768;
  v10[4] = self;
  [(SODaemon *)self authorizationDidCompleteWithCredential:credentialCopy error:errorCopy completion:v10];
}

@end