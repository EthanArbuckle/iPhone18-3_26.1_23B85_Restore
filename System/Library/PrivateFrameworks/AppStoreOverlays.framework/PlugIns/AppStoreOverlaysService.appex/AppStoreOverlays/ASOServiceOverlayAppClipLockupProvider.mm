@interface ASOServiceOverlayAppClipLockupProvider
+ (id)configureLockupView:(id)view forAppClipWithConfiguration:(id)configuration serviceContext:(id)context metricsReporter:(id)reporter;
+ (id)log;
- (id)loadOverlayForConfiguration:(id)configuration delegate:(id)delegate serviceContext:(id)context metricsReporter:(id)reporter;
- (id)loadOverlayFromDefinition:(id)definition configuration:(id)configuration serviceContext:(id)context metricsReporter:(id)reporter;
- (id)lockupDefinitionForConfiguration:(id)configuration serviceContext:(id)context;
- (id)parentAppLockupRequestForConfiguration:(id)configuration serviceContext:(id)context;
@end

@implementation ASOServiceOverlayAppClipLockupProvider

+ (id)log
{
  if (qword_10002C710 != -1)
  {
    sub_1000178B4();
  }

  v3 = qword_10002C718;

  return v3;
}

- (id)loadOverlayForConfiguration:(id)configuration delegate:(id)delegate serviceContext:(id)context metricsReporter:(id)reporter
{
  configurationCopy = configuration;
  contextCopy = context;
  reporterCopy = reporter;
  v12 = +[ASOServiceOverlayAppClipLockupProvider log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000178C8();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = configurationCopy;
    v14 = [v13 additionalValueForKey:ASOOverlayConfigurationPrivateParameterOverrideIsAppClip serviceContext:contextCopy];
    isAppClip = [contextCopy isAppClip];
    if (v14)
    {
      isAppClip = [v14 BOOLValue];
    }

    if (isAppClip)
    {
      v16 = [(ASOServiceOverlayAppClipLockupProvider *)self lockupDefinitionForConfiguration:v13 serviceContext:contextCopy];
      if (v16)
      {
        v17 = [(ASOServiceOverlayAppClipLockupProvider *)self loadOverlayFromDefinition:v16 configuration:v13 serviceContext:contextCopy metricsReporter:reporterCopy];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100002FC8;
        v23[3] = &unk_100024D60;
        v24 = v13;
        v25 = contextCopy;
        selfCopy = self;
        v27 = reporterCopy;
        v28 = v17;
        v18 = v17;
        v19 = [v18 catchWithBlock:v23];
      }

      else
      {
        v21 = +[ASOServiceOverlayAppClipLockupProvider log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100017974();
        }

        v18 = [NSError errorWithDomain:@"ASOErrorDomain" code:3 userInfo:0];
        v19 = [AMSPromise promiseWithError:v18];
      }
    }

    else
    {
      v20 = +[ASOServiceOverlayAppClipLockupProvider log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000178FC(v13, v20);
      }

      v16 = [NSError errorWithDomain:@"ASOErrorDomain" code:3 userInfo:0];
      v19 = [AMSPromise promiseWithError:v16];
    }
  }

  else
  {
    v13 = [NSError errorWithDomain:@"ASOErrorDomain" code:1 userInfo:0];
    v19 = [AMSPromise promiseWithError:v13];
  }

  return v19;
}

- (id)loadOverlayFromDefinition:(id)definition configuration:(id)configuration serviceContext:(id)context metricsReporter:(id)reporter
{
  definitionCopy = definition;
  configurationCopy = configuration;
  contextCopy = context;
  reporterCopy = reporter;
  v13 = objc_alloc_init(AMSMutablePromise);
  v14 = +[ASOServiceOverlayAppClipLockupProvider log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1000179B4();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003214;
  block[3] = &unk_100024D88;
  v24 = configurationCopy;
  v25 = definitionCopy;
  v26 = reporterCopy;
  v15 = v13;
  v27 = v15;
  v28 = contextCopy;
  v16 = contextCopy;
  v17 = reporterCopy;
  v18 = definitionCopy;
  v19 = configurationCopy;
  dispatch_async(&_dispatch_main_q, block);
  v20 = v28;
  v21 = v15;

  return v15;
}

+ (id)configureLockupView:(id)view forAppClipWithConfiguration:(id)configuration serviceContext:(id)context metricsReporter:(id)reporter
{
  viewCopy = view;
  configurationCopy = configuration;
  contextCopy = context;
  reporterCopy = reporter;
  v13 = [configurationCopy additionalValueForKey:ASOOverlayConfigurationPrivateParameterOverrideIsArcadeApp serviceContext:contextCopy];
  loadLockupPromise = [viewCopy loadLockupPromise];
  promiseAdapter = [loadLockupPromise promiseAdapter];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100003620;
  v23[3] = &unk_100024DB0;
  v24 = configurationCopy;
  v25 = reporterCopy;
  v26 = viewCopy;
  v27 = contextCopy;
  v28 = v13;
  v16 = v13;
  v17 = contextCopy;
  v18 = viewCopy;
  v19 = reporterCopy;
  v20 = configurationCopy;
  v21 = [promiseAdapter thenWithBlock:v23];

  return v21;
}

- (id)lockupDefinitionForConfiguration:(id)configuration serviceContext:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  v8 = [(ASOServiceOverlayAppClipLockupProvider *)self parentAppLockupRequestForConfiguration:configurationCopy serviceContext:contextCopy];
  if (!v8)
  {
    v11 = [configurationCopy additionalValueForKey:ASOOverlayConfigurationPrivateParameterOverrideIsDevelopment serviceContext:contextCopy];
    isDevelopmentApp = [contextCopy isDevelopmentApp];
    if (v11)
    {
      isDevelopmentApp = [v11 BOOLValue];
    }

    v13 = isDevelopmentApp;
    v14 = [configurationCopy additionalValueForKey:ASOOverlayConfigurationPrivateParameterOverrideIsBetaApp serviceContext:contextCopy];
    isBetaApp = [contextCopy isBetaApp];
    if (v14)
    {
      isBetaApp = [v14 BOOLValue];
    }

    if (((v13 | isBetaApp) & 1) == 0)
    {
      v17 = +[ASOServiceOverlayAppClipLockupProvider log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Stopping lockup definition search because this is a production app.", &v23, 2u);
      }

      v10 = 0;
      goto LABEL_24;
    }

    v16 = [ASOServiceOverlayDevelopmentLockupProvider parentAppDevelopmentLockupForConfiguration:configurationCopy serviceContext:contextCopy];
    if (v16)
    {
      v17 = v16;
      v18 = +[ASOServiceOverlayAppClipLockupProvider log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = configurationCopy;
        v19 = "Using parent app development lockup: %@";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v19, &v23, 0xCu);
      }
    }

    else
    {
      v20 = [ASOServiceOverlayDevelopmentLockupProvider appDevelopmentLockupForConfiguration:configurationCopy serviceContext:contextCopy];
      if (!v20)
      {
        v21 = [ASOServiceOverlayDevelopmentLockupProvider placeholderAppDevelopmentLockupForConfiguration:configurationCopy serviceContext:contextCopy];
        if (!v21)
        {
          v10 = 0;
          goto LABEL_25;
        }

        v17 = v21;
        v18 = +[ASOServiceOverlayAppClipLockupProvider log];
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_23;
        }

        v23 = 138412290;
        v24 = configurationCopy;
        v19 = "Using placeholder app development lockup: %@";
        goto LABEL_22;
      }

      v17 = v20;
      v18 = +[ASOServiceOverlayAppClipLockupProvider log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = configurationCopy;
        v19 = "Using app development lockup: %@";
        goto LABEL_22;
      }
    }

LABEL_23:

    v10 = [[ASOServiceLockupDefinition alloc] initWithLockup:v17];
LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  v9 = +[ASOServiceOverlayAppClipLockupProvider log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v23 = 138412290;
    v24 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Using parent app production lockup: %@", &v23, 0xCu);
  }

  v10 = [[ASOServiceLockupDefinition alloc] initWithRequest:v8];
LABEL_26:

  return v10;
}

- (id)parentAppLockupRequestForConfiguration:(id)configuration serviceContext:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  v7 = [configurationCopy additionalValueForKey:ASOOverlayConfigurationPrivateParameterIgnoreAdamID serviceContext:contextCopy];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = 0;
  }

  else
  {
    hostAdamID = [configurationCopy additionalValueForKey:ASOOverlayConfigurationPrivateParameterOverrideParentAppAdamID serviceContext:contextCopy];
    if (!hostAdamID)
    {
      hostAdamID = [contextCopy hostAdamID];
    }

    v11 = +[ASOServiceOverlayAppClipLockupProvider log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v25 = hostAdamID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Parent app adam ID is: %{public}@", buf, 0xCu);
    }

    if (hostAdamID)
    {
      applicationRecord = [contextCopy applicationRecord];
      v22 = [[ASCAdamID alloc] initWithStringValue:hostAdamID];
      iTunesMetadata = [applicationRecord iTunesMetadata];
      v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [iTunesMetadata versionIdentifier]);
      stringValue = [v13 stringValue];

      v15 = [ASCLockupRequest alloc];
      v16 = ASCLockupKindApp;
      v17 = ASCLockupContextOverlayClip;
      latestReleaseID = [configurationCopy latestReleaseID];
      productVariantID = [configurationCopy productVariantID];
      v9 = [v15 _initWithID:v22 kind:v16 context:v17 minExternalVersionID:stringValue latestReleaseID:latestReleaseID productVariantID:productVariantID];

      v20 = applicationRecord;
    }

    else
    {
      v20 = +[ASOServiceOverlayAppClipLockupProvider log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = configurationCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Unable to build lockup request for parent app: %@", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  return v9;
}

@end