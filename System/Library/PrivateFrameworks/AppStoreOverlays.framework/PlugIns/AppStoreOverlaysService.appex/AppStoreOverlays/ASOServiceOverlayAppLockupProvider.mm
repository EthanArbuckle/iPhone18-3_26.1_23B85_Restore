@interface ASOServiceOverlayAppLockupProvider
+ (OS_os_log)log;
+ (id)configureLockupView:(id)a3 forAppWithConfiguration:(id)a4 serviceContext:(id)a5 metricsReporter:(id)a6;
- (id)loadOverlayForConfiguration:(id)a3 delegate:(id)a4 serviceContext:(id)a5 metricsReporter:(id)a6;
- (id)lockupDefinitionForConfiguration:(id)a3 serviceContext:(id)a4;
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

- (id)loadOverlayForConfiguration:(id)a3 delegate:(id)a4 serviceContext:(id)a5 metricsReporter:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[ASOServiceOverlayAppLockupProvider log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100017A70();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v10;
    v16 = [v15 appIdentifier];

    if (v16)
    {
      v17 = [v12 hostAdamID];
      if ([v12 isAppClip] && v17 && (objc_msgSend(v15, "appIdentifier"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqualToString:", v18), v18, v19))
      {
        v20 = objc_opt_new();
        v21 = [v20 loadOverlayForConfiguration:v15 delegate:v11 serviceContext:v12 metricsReporter:v13];
      }

      else
      {
        v22 = [(ASOServiceOverlayAppLockupProvider *)self lockupDefinitionForConfiguration:v15 serviceContext:v12];
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
        v32 = v13;
        v25 = v23;
        v33 = v25;
        v34 = self;
        v35 = v30;
        v36 = v12;
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

      v17 = [NSError errorWithDomain:@"ASOErrorDomain" code:2 userInfo:0];
      v21 = [AMSPromise promiseWithError:v17];
    }
  }

  else
  {
    v15 = [NSError errorWithDomain:@"ASOErrorDomain" code:1 userInfo:0];
    v21 = [AMSPromise promiseWithError:v15];
  }

  return v21;
}

- (id)lockupDefinitionForConfiguration:(id)a3 serviceContext:(id)a4
{
  v4 = a3;
  v5 = [ASCAdamID alloc];
  v6 = [v4 appIdentifier];
  v7 = [v5 initWithStringValue:v6];

  v8 = [ASCLockupRequest alloc];
  v9 = ASCLockupKindApp;
  v10 = ASCLockupContextOverlay;
  v11 = [v4 latestReleaseID];
  v12 = [v4 productVariantID];

  v13 = [v8 _initWithID:v7 kind:v9 context:v10 minExternalVersionID:0 latestReleaseID:v11 productVariantID:v12];
  v14 = [[ASOServiceLockupDefinition alloc] initWithRequest:v13];

  return v14;
}

+ (id)configureLockupView:(id)a3 forAppWithConfiguration:(id)a4 serviceContext:(id)a5 metricsReporter:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [v8 loadLockupPromise];
  v12 = [v11 promiseAdapter];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004814;
  v18[3] = &unk_100024E48;
  v19 = v9;
  v20 = v10;
  v21 = v8;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  v16 = [v12 thenWithBlock:v18];

  return v16;
}

@end