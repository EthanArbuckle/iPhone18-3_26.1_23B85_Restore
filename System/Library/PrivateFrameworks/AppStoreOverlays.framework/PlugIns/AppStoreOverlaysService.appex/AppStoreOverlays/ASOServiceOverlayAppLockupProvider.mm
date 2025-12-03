@interface ASOServiceOverlayAppLockupProvider
+ (OS_os_log)log;
+ (id)configureLockupView:(id)view forAppWithConfiguration:(id)configuration serviceContext:(id)context metricsReporter:(id)reporter;
- (id)loadOverlayForConfiguration:(id)configuration delegate:(id)delegate serviceContext:(id)context metricsReporter:(id)reporter;
- (id)lockupDefinitionForConfiguration:(id)configuration serviceContext:(id)context;
@end

@implementation ASOServiceOverlayAppLockupProvider

+ (OS_os_log)log
{
  if (qword_10002C720 != -1)
  {
    sub_100017A5C();
  }

  v3 = qword_10002C728;

  return v3;
}

- (id)loadOverlayForConfiguration:(id)configuration delegate:(id)delegate serviceContext:(id)context metricsReporter:(id)reporter
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  contextCopy = context;
  reporterCopy = reporter;
  v14 = +[ASOServiceOverlayAppLockupProvider log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100017A70();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = configurationCopy;
    appIdentifier = [v15 appIdentifier];

    if (appIdentifier)
    {
      hostAdamID = [contextCopy hostAdamID];
      if ([contextCopy isAppClip] && hostAdamID && (objc_msgSend(v15, "appIdentifier"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(hostAdamID, "isEqualToString:", v18), v18, v19))
      {
        v20 = objc_opt_new();
        v21 = [v20 loadOverlayForConfiguration:v15 delegate:delegateCopy serviceContext:contextCopy metricsReporter:reporterCopy];
      }

      else
      {
        v22 = [(ASOServiceOverlayAppLockupProvider *)self lockupDefinitionForConfiguration:v15 serviceContext:contextCopy];
        v23 = objc_alloc_init(AMSMutablePromise);
        v24 = +[ASOServiceOverlayAppLockupProvider log];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          sub_1000179B4();
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000432C;
        block[3] = &unk_100024DF8;
        v30 = v15;
        v31 = v22;
        v32 = reporterCopy;
        v25 = v23;
        v33 = v25;
        selfCopy = self;
        v35 = v30;
        v36 = contextCopy;
        v20 = v22;
        dispatch_async(&_dispatch_main_q, block);
        v26 = v36;
        v21 = v25;
      }
    }

    else
    {
      v27 = +[ASOServiceOverlayAppLockupProvider log];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_100017AA4();
      }

      hostAdamID = [NSError errorWithDomain:@"ASOErrorDomain" code:2 userInfo:0];
      v21 = [AMSPromise promiseWithError:hostAdamID];
    }
  }

  else
  {
    v15 = [NSError errorWithDomain:@"ASOErrorDomain" code:1 userInfo:0];
    v21 = [AMSPromise promiseWithError:v15];
  }

  return v21;
}

- (id)lockupDefinitionForConfiguration:(id)configuration serviceContext:(id)context
{
  configurationCopy = configuration;
  v5 = [ASCAdamID alloc];
  appIdentifier = [configurationCopy appIdentifier];
  v7 = [v5 initWithStringValue:appIdentifier];

  v8 = [ASCLockupRequest alloc];
  v9 = ASCLockupKindApp;
  v10 = ASCLockupContextOverlay;
  latestReleaseID = [configurationCopy latestReleaseID];
  productVariantID = [configurationCopy productVariantID];

  v13 = [v8 _initWithID:v7 kind:v9 context:v10 minExternalVersionID:0 latestReleaseID:latestReleaseID productVariantID:productVariantID];
  v14 = [[ASOServiceLockupDefinition alloc] initWithRequest:v13];

  return v14;
}

+ (id)configureLockupView:(id)view forAppWithConfiguration:(id)configuration serviceContext:(id)context metricsReporter:(id)reporter
{
  viewCopy = view;
  configurationCopy = configuration;
  reporterCopy = reporter;
  loadLockupPromise = [viewCopy loadLockupPromise];
  promiseAdapter = [loadLockupPromise promiseAdapter];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004814;
  v18[3] = &unk_100024E48;
  v19 = configurationCopy;
  v20 = reporterCopy;
  v21 = viewCopy;
  v13 = viewCopy;
  v14 = reporterCopy;
  v15 = configurationCopy;
  v16 = [promiseAdapter thenWithBlock:v18];

  return v16;
}

@end