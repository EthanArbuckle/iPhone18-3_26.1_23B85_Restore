@interface SODaemon
- (BOOL)_doAKshouldProcessURL:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SODaemon)initWithXPCConnection:(id)a3;
- (void)_doGetAuthorizationHintsWithURL:(id)a3 responseCode:(int64_t)a4 completion:(id)a5;
- (void)_doPerformAuthorizationWithRequestParameters:(id)a3 profile:(id)a4 completion:(id)a5;
- (void)_extensionCleanup;
- (void)_performAuthorizationWithRequestParameters:(id)a3 completion:(id)a4;
- (void)_updateCallerPropertiesFromAuditTokenInParameters:(id)a3;
- (void)_updateUsageOfInternalExtensionsInParameters:(id)a3;
- (void)authorization:(id)a3 didCompleteWithCredential:(id)a4 error:(id)a5;
- (void)authorizationDidCompleteWithCredential:(id)a3 error:(id)a4 completion:(id)a5;
- (void)beginAuthorizationWithCompletion:(id)a3;
- (void)beginAuthorizationWithRequestParameters:(id)a3 completion:(id)a4;
- (void)cancelAuthorization:(id)a3 completion:(id)a4;
- (void)configurationWithCompletion:(id)a3;
- (void)connectionInvalidated;
- (void)debugHintsWithCompletion:(id)a3;
- (void)finishAuthorization:(id)a3 completion:(id)a4;
- (void)getAuthorizationHintsWithURL:(id)a3 responseCode:(int64_t)a4 completion:(id)a5;
- (void)isConfigurationActiveForExtensionIdentifier:(id)a3 completion:(id)a4;
- (void)isExtensionProcessWithAuditToken:(id *)a3 completion:(id)a4;
- (void)performAuthorizationWithRequestParameters:(id)a3 completion:(id)a4;
- (void)realmsWithCompletion:(id)a3;
@end

@implementation SODaemon

- (SODaemon)initWithXPCConnection:(id)a3
{
  v4 = a3;
  v5 = sub_100001020();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SODaemon initWithXPCConnection:]";
    v11 = 2112;
    v12 = self;
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

    objc_storeWeak(&v6->_xpcConnection, v4);
  }

  return v6;
}

- (void)getAuthorizationHintsWithURL:(id)a3 responseCode:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100001020();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136316163;
    v12 = "[SODaemon getAuthorizationHintsWithURL:responseCode:completion:]";
    v13 = 2160;
    v14 = 1752392040;
    v15 = 2117;
    v16 = v8;
    v17 = 1024;
    v18 = a4;
    v19 = 2112;
    v20 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s url: %{sensitive, mask.hash}@, responseCode: %d on %@", &v11, 0x30u);
  }

  [(SODaemon *)self _doGetAuthorizationHintsWithURL:v8 responseCode:a4 completion:v9];
}

- (void)_doGetAuthorizationHintsWithURL:(id)a3 responseCode:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SODaemon *)self _doAKshouldProcessURL:v8];
  if (v10)
  {
    v11 = +[SOExtensionManager sharedInstance];
    v12 = [v11 loadedInternalExtension];
  }

  else
  {
    v13 = +[SOConfigurationHost defaultManager];
    v11 = [v13 profileForURL:v8 responseCode:a4];

    if (!v11)
    {
      if (!v9)
      {
LABEL_17:
        v12 = 0;
        goto LABEL_18;
      }

      v23 = [sub_100004B1C() invalidURLError:v8];
LABEL_16:
      v24 = v23;
      v9[2](v9, 0, v23);

      goto LABEL_17;
    }

    v14 = +[SOExtensionManager sharedInstance];
    v15 = [v11 extensionBundleIdentifier];
    v12 = [v14 loadedExtensionWithBundleIdentifier:v15];
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  if (!v12)
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
  v19 = [v12 localizedExtensionDisplayName];
  v20 = [v18 initWithLocalizedExtensionBundleDisplayName:v19];

  (v9)[2](v9, v20, 0);
LABEL_18:
}

- (void)performAuthorizationWithRequestParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v50 = "[SODaemon performAuthorizationWithRequestParameters:completion:]";
    v51 = 2114;
    v52 = v6;
    v53 = 2112;
    v54 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", buf, 0x20u);
  }

  v9 = [[SOAuthorizationRequestParameters alloc] initWithAuthorizationRequestParametersCore:v6];
  [(SODaemon *)self _updateUsageOfInternalExtensionsInParameters:v9];
  [(SODaemon *)self _updateCallerPropertiesFromAuditTokenInParameters:v9];
  v10 = [v9 authorizationOptions];
  v11 = [v10 objectForKeyedSubscript:SOAuthorizationOptionRemovedProfileExtensionBundleIdentifier];

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
    v26 = [v32 profileForURL:v33 responseCode:{objc_msgSend(v9, "responseCode")}];

    if (!v26)
    {
      if (!v7)
      {
        goto LABEL_43;
      }

      v43 = sub_100004B1C();
      v29 = [v9 url];
      v44 = [v43 invalidURLError:v29];
      v7[2](v7, 0, v44);

      goto LABEL_42;
    }

    v34 = [v26 extensionBundleIdentifier];
    v35 = self->_requestQueueIdentifier;
    self->_requestQueueIdentifier = v34;

    if (![(NSString *)self->_requestQueueIdentifier length])
    {
      if (!v7)
      {
        goto LABEL_43;
      }

      v42 = [sub_100004B1C() parameterErrorWithMessage:@"profile has no extension bundle identifier"];
      goto LABEL_41;
    }
  }

  v14 = [v9 requestedOperation];
  v15 = [v14 isEqualToString:SOAuthorizationOperationFetchNetworkCredentials];

  if (!v15 || (v16 = sub_10000521C(), v17 = objc_loadWeakRetained(&self->_xpcConnection), LOBYTE(v16) = [v16 checkEntitlementFromXPC:v17 entitlement:@"com.apple.private.AppSSO.FetchNetworkCredentials"], v17, (v16 & 1) != 0))
  {
    if ([v11 length] || (objc_msgSend(v9, "useInternalExtensions") & 1) != 0)
    {
LABEL_11:
      v18 = [v9 impersonationBundleIdentifier];
      if (!v18 || (v19 = v18, v20 = sub_10000521C(), WeakRetained = objc_loadWeakRetained(&self->_xpcConnection), LOBYTE(v20) = [v20 checkEntitlementFromXPC:WeakRetained entitlement:@"com.apple.private.network.socket-delegate"], WeakRetained, v19, (v20 & 1) != 0))
      {
        v22 = +[SOExtensionManager sharedInstance];
        v23 = [v22 loadedExtensionWithBundleIdentifier:self->_requestQueueIdentifier];
        v24 = [v23 extensionRequestsMode];

        v25 = sub_100001020();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_100008A40(&self->_requestQueueIdentifier, v24);
        }

        if (v24 == 2)
        {
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_1000052FC;
          v47[3] = &unk_100010638;
          v48 = v7;
          [(SODaemon *)self _performAuthorizationWithRequestParameters:v9 completion:v47];
          v26 = v48;
LABEL_43:

          goto LABEL_44;
        }

        v26 = [[SORequestQueueItem alloc] initWithService:self requestParameters:v9 completionBlock:v7];
        v29 = [SORequestQueue requestQueueWithIdentifier:self->_requestQueueIdentifier];
        v30 = [v29 processItemBlock];

        if (!v30)
        {
          v31 = +[SODaemon _processRequestBlock];
          [v29 setProcessItemBlock:v31];
        }

        [v29 enqueueRequest:v26];
LABEL_42:

        goto LABEL_43;
      }

      if (v7)
      {
        v27 = sub_100004B1C();
        v28 = @"com.apple.private.network.socket-delegate";
        goto LABEL_27;
      }

      goto LABEL_44;
    }

    v36 = +[SOConfigurationHost defaultManager];
    v37 = [v9 url];
    v38 = [v9 responseCode];
    v39 = [v9 callerBundleIdentifier];
    v40 = [v36 willHandleURL:v37 responseCode:v38 callerBundleIdentifier:v39];

    if (v40 == 3)
    {
      if (!v7)
      {
        goto LABEL_44;
      }

      v46 = sub_100004B1C();
      v26 = [v9 callerBundleIdentifier];
      v42 = [v46 deniedBundleIdentifier:v26];
    }

    else if (v40 == 2)
    {
      if (!v7)
      {
        goto LABEL_44;
      }

      v45 = sub_100004B1C();
      v26 = [v9 callerBundleIdentifier];
      v42 = [v45 doNotHandleBreakingRecursionWithCallerBundleIdentifier:v26];
    }

    else
    {
      if (v40 != 1)
      {
        goto LABEL_11;
      }

      if (!v7)
      {
        goto LABEL_44;
      }

      v41 = sub_100004B1C();
      v26 = [v9 url];
      v42 = [v41 invalidURLError:v26];
    }

LABEL_41:
    v29 = v42;
    v7[2](v7, 0, v42);
    goto LABEL_42;
  }

  if (v7)
  {
    v27 = sub_100004B1C();
    v28 = @"com.apple.private.AppSSO.FetchNetworkCredentials";
LABEL_27:
    v26 = [v27 missingEntitlementError:v28];
    v7[2](v7, 0, v26);
    goto LABEL_43;
  }

LABEL_44:
}

- (void)_performAuthorizationWithRequestParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "[SODaemon _performAuthorizationWithRequestParameters:completion:]";
    v26 = 2112;
    v27 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v24, 0x16u);
  }

  if ([v6 useInternalExtensions])
  {
    v9 = 0;
LABEL_12:
    [(SODaemon *)self _doPerformAuthorizationWithRequestParameters:v6 profile:v9 completion:v7];
    v12 = v9;
    goto LABEL_13;
  }

  v10 = [v6 authorizationOptions];
  v11 = SOAuthorizationOptionRemovedProfileExtensionBundleIdentifier;
  v12 = [v10 objectForKeyedSubscript:SOAuthorizationOptionRemovedProfileExtensionBundleIdentifier];

  if (v12)
  {
    v13 = [v6 authorizationOptions];
    v14 = [v13 mutableCopy];

    [v14 removeObjectForKey:v11];
    [v6 setAuthorizationOptions:v14];
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
    v18 = [v6 url];
    v9 = [v17 profileForURL:v18 responseCode:{objc_msgSend(v6, "responseCode")}];
  }

  if (v9)
  {
    v19 = [v9 extensionData];
    [v6 setExtensionData:v19];

    v20 = [v9 realm];
    [v6 setRealm:v20];

    goto LABEL_12;
  }

  if (v7)
  {
    v21 = sub_100004B1C();
    v22 = [v6 url];
    v23 = [v21 invalidURLError:v22];
    v7[2](v7, 0, v23);
  }

LABEL_13:
}

- (void)beginAuthorizationWithRequestParameters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v44 = 136315650;
    v45 = "[SODaemon beginAuthorizationWithRequestParameters:completion:]";
    v46 = 2112;
    v47 = v6;
    v48 = 2112;
    v49 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s %@ on %@", &v44, 0x20u);
  }

  v9 = [[SOAuthorizationRequestParameters alloc] initWithAuthorizationRequestParametersCore:v6];
  [(SODaemon *)self _updateUsageOfInternalExtensionsInParameters:v9];
  [(SODaemon *)self _updateCallerPropertiesFromAuditTokenInParameters:v9];
  v10 = [v9 requestedOperation];
  v11 = [v10 isEqualToString:SOAuthorizationOperationFetchNetworkCredentials];

  if (v11)
  {
    v12 = sub_10000521C();
    WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
    LOBYTE(v12) = [v12 checkEntitlementFromXPC:WeakRetained entitlement:@"com.apple.private.AppSSO.FetchNetworkCredentials"];

    if ((v12 & 1) == 0)
    {
      if (v7)
      {
        v22 = [sub_100004B1C() missingEntitlementError:@"com.apple.private.AppSSO.FetchNetworkCredentials"];
        (*(v7 + 2))(v7, 0, 0, v22);
LABEL_34:
        v15 = 0;
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
    v19 = [v9 responseCode];
    v20 = [v9 callerBundleIdentifier];
    v21 = [v17 willHandleURL:v18 responseCode:v19 callerBundleIdentifier:v20];

    if (v21 == 3)
    {
      if (v7)
      {
        v42 = sub_100004B1C();
        v22 = [v9 callerBundleIdentifier];
        v40 = [v42 deniedBundleIdentifier:v22];
        goto LABEL_33;
      }

      goto LABEL_36;
    }

    if (v21 == 2)
    {
      if (v7)
      {
        v41 = sub_100004B1C();
        v22 = [v9 callerBundleIdentifier];
        v40 = [v41 doNotHandleBreakingRecursionWithCallerBundleIdentifier:v22];
        goto LABEL_33;
      }

LABEL_36:
      v15 = 0;
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
    v15 = [v14 loadedInternalExtension];
    v16 = 0;
    goto LABEL_16;
  }

  v23 = +[SOConfigurationHost defaultManager];
  v24 = [v9 url];
  v16 = [v23 profileForURL:v24 responseCode:{objc_msgSend(v9, "responseCode")}];

  if (!v16)
  {
LABEL_25:
    if (v7)
    {
      v39 = sub_100004B1C();
      v22 = [v9 url];
      v40 = [v39 invalidURLError:v22];
LABEL_33:
      v43 = v40;
      (*(v7 + 2))(v7, 0, 0, v40);

      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v14 = +[SOExtensionManager sharedInstance];
  v25 = [v16 extensionBundleIdentifier];
  v15 = [v14 loadedExtensionWithBundleIdentifier:v25];

LABEL_16:
  v26 = sub_100001020();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v15 localizedExtensionDisplayName];
    v44 = 138543362;
    v45 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "loadedExtensionWithBundleIdentifier: extension = %{public}@", &v44, 0xCu);
  }

  if (!v15)
  {
    if (!v7)
    {
      v15 = 0;
      goto LABEL_37;
    }

    v22 = [sub_100004B1C() internalErrorWithMessage:@"No AppSSO IdP extension found"];
    (*(v7 + 2))(v7, 0, 0, v22);
    v15 = 0;
    goto LABEL_35;
  }

  v28 = [v9 impersonationBundleIdentifier];
  if (v28)
  {
    v29 = v28;
    v30 = sub_10000521C();
    v31 = objc_loadWeakRetained(&self->_xpcConnection);
    LOBYTE(v30) = [v30 checkEntitlementFromXPC:v31 entitlement:@"com.apple.private.network.socket-delegate"];

    if ((v30 & 1) == 0)
    {
      if (!v7)
      {
        goto LABEL_37;
      }

      v22 = [sub_100004B1C() missingEntitlementError:@"com.apple.private.network.socket-delegate"];
      (*(v7 + 2))(v7, 0, 0, v22);
      goto LABEL_35;
    }
  }

  objc_storeStrong(&self->_requestParameters, v9);
  v32 = [v16 extensionData];
  [(SOAuthorizationRequestParameters *)self->_requestParameters setExtensionData:v32];

  v33 = [v16 realm];
  [(SOAuthorizationRequestParameters *)self->_requestParameters setRealm:v33];

  v34 = +[NSXPCListener anonymousListener];
  p_extensionXpcListener = &self->_extensionXpcListener;
  extensionXpcListener = self->_extensionXpcListener;
  self->_extensionXpcListener = v34;

  [(NSXPCListener *)self->_extensionXpcListener setDelegate:self];
  [(NSXPCListener *)self->_extensionXpcListener resume];
  v37 = sub_100001020();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    sub_100008AEC(v15, p_extensionXpcListener);
  }

  if (v7)
  {
    v22 = [v15 extensionBundleIdentifier];
    v38 = [(NSXPCListener *)*p_extensionXpcListener endpoint];
    (*(v7 + 2))(v7, v22, v38, 0);

LABEL_35:
  }

LABEL_37:
}

- (void)_doPerformAuthorizationWithRequestParameters:(id)a3 profile:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_retainBlock(v10);
  authenticateCompletion = self->_authenticateCompletion;
  self->_authenticateCompletion = v11;

  if ([v8 isUserInteractionEnabled])
  {
    v13 = objc_opt_new();
    daemonUIManager = self->_daemonUIManager;
    self->_daemonUIManager = v13;

    [(SODaemonUIManager *)self->_daemonUIManager setDelegate:self];
    v15 = self->_daemonUIManager;
    v31 = 0;
    v16 = [(SODaemonUIManager *)v15 beginAuthorizationWithRequestParameters:v8 profile:v9 error:&v31];
    v17 = v31;
    if ((v16 & 1) == 0)
    {
      v18 = self->_authenticateCompletion;
      self->_authenticateCompletion = 0;

      if (v10)
      {
        (*(v10 + 2))(v10, 0, v17);
      }
    }

    goto LABEL_13;
  }

  v19 = [v8 useInternalExtensions];
  v20 = +[SOExtensionManager sharedInstance];
  v21 = v20;
  if (v19)
  {
    v22 = [v20 loadInternalExtension];
    extension = self->_extension;
    self->_extension = v22;
  }

  else
  {
    extension = [v9 extensionBundleIdentifier];
    v24 = [v21 loadExtensionWithBundleIdentifier:extension];
    v25 = self->_extension;
    self->_extension = v24;
  }

  v26 = sub_100001020();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(SOExtension *)self->_extension localizedExtensionDisplayName];
    *buf = 138543362;
    v35 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "loadedExtensionWithBundleIdentifier: extension = %{public}@", buf, 0xCu);
  }

  v28 = self->_extension;
  v17 = [v8 identifier];
  if (!v28)
  {
    v30 = [sub_100004B1C() internalErrorWithMessage:@"No active AppSSO IdP extension"];
    [(SODaemon *)self authorization:v17 didCompleteWithCredential:0 error:v30];

LABEL_13:
    goto LABEL_14;
  }

  [(SOExtension *)v28 saveDelegate:self forRequestIdentifier:v17];

  v29 = self->_extension;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100005E90;
  v32[3] = &unk_100010660;
  v32[4] = self;
  v33 = v8;
  [(SOExtension *)v29 setupNonUISessionWithCompletion:v32];

LABEL_14:
}

- (BOOL)_doAKshouldProcessURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [AKAuthorizationController shouldProcessURL:v4];
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

    v14 = v4;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = self;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s URL = %{sensitive, mask.hash}@, result = %@ on %@", &v9, 0x34u);
  }

  return v5;
}

- (void)cancelAuthorization:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[SODaemon cancelAuthorization:completion:]";
    v21 = 2112;
    v22 = self;
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
    v17 = v6;
    v18 = v7;
    [(SOExtension *)extension cancelAuthorization:v17 completion:v16];
  }

  else
  {
    daemonUIManager = self->_daemonUIManager;
    v15 = 0;
    v11 = [(SODaemonUIManager *)daemonUIManager cancelAuthorization:v6 error:&v15];
    v12 = v15;
    if (!v11 && self->_requestQueueIdentifier)
    {
      v13 = [SORequestQueue requestQueueWithIdentifier:?];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000064CC;
      v14[3] = &unk_1000106B0;
      v14[4] = self;
      [v13 removeRequestWithIdentifier:v6 block:v14];
    }

    if (v7)
    {
      (*(v7 + 2))(v7, v11, v12);
    }
  }
}

- (void)configurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100001020();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SODaemon configurationWithCompletion:]";
    v12 = 2112;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = +[SOConfigurationHost defaultManager];
  v9 = 0;
  v7 = [v6 configurationForClientWithError:&v9];
  v8 = v9;

  if (v4)
  {
    v4[2](v4, v7, v8);
  }
}

- (void)realmsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100001020();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SODaemon realmsWithCompletion:]";
    v10 = 2112;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  v6 = +[SOConfigurationHost defaultManager];
  v7 = [v6 realms];

  if (v4)
  {
    v4[2](v4, v7, 0);
  }
}

- (void)debugHintsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100001020();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SODaemon debugHintsWithCompletion:]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  v6 = +[SODebugHints sharedInstance];
  [v6 debugHintsWithCompletion:v4];
}

- (void)finishAuthorization:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v36 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s extension = %{public}@, queue = %{public}@ on %@", buf, 0x2Au);
  }

  [(SOExtension *)self->_extension removeDelegateForRequestIdentifier:v6];
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
    v28 = v7;
    v15 = v7;
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
    v25 = v7;
    v18 = v7;
    v19 = v11;
    v17 = &v20;
  }

  [daemonUIManager finishAuthorization:v6 completion:{v17, v20, v21, v22, v23}];
}

- (void)isExtensionProcessWithAuditToken:(id *)a3 completion:(id)a4
{
  v6 = a4;
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
  v9 = *&a3->var0[4];
  *v19 = *a3->var0;
  *&v19[16] = v9;
  v10 = [v8 pidFromAuditToken:v19];
  v11 = sub_10000521C();
  v12 = *&a3->var0[4];
  *v19 = *a3->var0;
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

  if (v6)
  {
    v6[2](v6, v16, 0);
  }
}

- (void)isConfigurationActiveForExtensionIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100001020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[SODaemon isConfigurationActiveForExtensionIdentifier:completion:]";
    v15 = 2112;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v9 = +[SOConfigurationHost defaultManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006FE0;
  v11[3] = &unk_100010740;
  v12 = v6;
  v10 = v6;
  [v9 isConfigurationActiveForExtensionIdentifier:v7 runningAsAgent:1 completion:v11];
}

- (void)authorizationDidCompleteWithCredential:(id)a3 error:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100001020();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_retainBlock(self->_authenticateCompletion);
    *buf = 136315650;
    *&buf[4] = "[SODaemon authorizationDidCompleteWithCredential:error:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v25 = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s authenticateCompletion = %@ on %@", buf, 0x20u);
  }

  authenticateCompletion = self->_authenticateCompletion;
  if (authenticateCompletion)
  {
    if (v8)
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
        v25 = &unk_100010390;
        v26 = &v20;
        sub_100008138(buf);
        v14 = v21[3];
      }

      v15 = v14;
      _Block_object_dispose(&v20, 8);
      v16 = [v14 alloc];
      v17 = [v16 initWithAuthorizationCredential:{v8, v20}];
      authenticateCompletion = self->_authenticateCompletion;
    }

    else
    {
      v17 = 0;
    }

    authenticateCompletion[2](authenticateCompletion, v17, v9);
    v19 = self->_authenticateCompletion;
    self->_authenticateCompletion = 0;

    if (v10)
    {
      v10[2](v10, 1, 0);
    }

    goto LABEL_15;
  }

  v18 = sub_100001020();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "authorization already finished => ignoring complete request", buf, 2u);
  }

  if (v10)
  {
    v17 = [sub_100004B1C() silentInternalErrorWithMessage:@"authorization already finished => ignoring complete request"];
    (v10)[2](v10, 0, v17);
LABEL_15:
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [v7 setExportedInterface:v18];

  [v7 setExportedObject:self];
  [v7 resume];
  objc_initWeak(buf, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100007518;
  v22[3] = &unk_100010328;
  objc_copyWeak(&v23, buf);
  [(SODaemon *)self setInvalidationHandler:v22];
  v19 = [(SODaemon *)self invalidationHandler];
  [v7 setInvalidationHandler:v19];

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
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v4, 0x16u);
  }
}

- (void)beginAuthorizationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100001020();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SODaemon beginAuthorizationWithCompletion:]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  if (v4)
  {
    v4[2](v4, self->_requestParameters, 0);
  }
}

- (void)_updateUsageOfInternalExtensionsInParameters:(id)a3
{
  v5 = a3;
  if ([v5 useInternalExtensions])
  {
    v4 = [v5 url];
    [v5 setUseInternalExtensions:{-[SODaemon _doAKshouldProcessURL:](self, "_doAKshouldProcessURL:", v4)}];
  }
}

- (void)_updateCallerPropertiesFromAuditTokenInParameters:(id)a3
{
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v5 = [v4 auditTokenData];

  if (!v5 || (v6 = sub_10000521C(), [v4 auditTokenData], v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = objc_msgSend(v6, "auditTokenFromData:auditToken:", v7, &v27), v7, (v6 & 1) == 0))
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
    [v4 setAuditTokenData:v10];
  }

  v11 = sub_10000521C();
  *buf = v27;
  *&buf[16] = v28;
  v12 = [v11 bundleIdentifierFromAuditToken:buf];
  [v4 setCallerBundleIdentifier:v12];

  v13 = sub_10000521C();
  *buf = v27;
  *&buf[16] = v28;
  v14 = [v13 pidFromAuditToken:buf];
  v15 = [v4 callerBundleIdentifier];
  [v4 setCallerManaged:{+[SODaemonUtils isAppManagedWithBundleIdentifier:](SODaemonUtils, "isAppManagedWithBundleIdentifier:", v15)}];

  v16 = sub_10000521C();
  *buf = v27;
  *&buf[16] = v28;
  v17 = [v16 teamIdentifierFromAuditToken:buf];
  [v4 setCallerTeamIdentifier:v17];

  v18 = [v4 callerBundleIdentifier];
  v19 = [SODaemonUtils localizedAppNameWithBundleIdentifier:v18 pid:v14];
  [v4 setLocalizedCallerDisplayName:v19];

  v20 = sub_100001020();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = [v4 auditTokenData];
    if (v21)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v23 = [v4 callerBundleIdentifier];
    if ([v4 isCallerManaged])
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v25 = [v4 callerTeamIdentifier];
    v26 = [v4 localizedCallerDisplayName];
    *buf = 67110402;
    *&buf[4] = v14;
    *&buf[8] = 2112;
    *&buf[10] = v22;
    *&buf[18] = 2112;
    *&buf[20] = v23;
    *&buf[28] = 2112;
    *&buf[30] = v24;
    v30 = 2112;
    v31 = v25;
    v32 = 2112;
    v33 = v26;
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
    v12 = self;
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

- (void)authorization:(id)a3 didCompleteWithCredential:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100001020();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v12 = "[SODaemon authorization:didCompleteWithCredential:error:]";
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    v17 = 2112;
    v18 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s credential: %{public}@, %{public}@ on %@", buf, 0x2Au);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100007CA4;
  v10[3] = &unk_100010768;
  v10[4] = self;
  [(SODaemon *)self authorizationDidCompleteWithCredential:v7 error:v8 completion:v10];
}

@end