@interface ASOServiceOverlayAppClipLockupProvider
+ (id)configureLockupView:(id)a3 forAppClipWithConfiguration:(id)a4 serviceContext:(id)a5 metricsReporter:(id)a6;
+ (id)log;
- (id)loadOverlayForConfiguration:(id)a3 delegate:(id)a4 serviceContext:(id)a5 metricsReporter:(id)a6;
- (id)loadOverlayFromDefinition:(id)a3 configuration:(id)a4 serviceContext:(id)a5 metricsReporter:(id)a6;
- (id)lockupDefinitionForConfiguration:(id)a3 serviceContext:(id)a4;
- (id)parentAppLockupRequestForConfiguration:(id)a3 serviceContext:(id)a4;
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

- (id)loadOverlayForConfiguration:(id)a3 delegate:(id)a4 serviceContext:(id)a5 metricsReporter:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = +[ASOServiceOverlayAppClipLockupProvider log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000178C8();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
    v14 = [v13 additionalValueForKey:ASOOverlayConfigurationPrivateParameterOverrideIsAppClip serviceContext:v10];
    v15 = [v10 isAppClip];
    if (v14)
    {
      v15 = [v14 BOOLValue];
    }

    if (v15)
    {
      v16 = [(ASOServiceOverlayAppClipLockupProvider *)self lockupDefinitionForConfiguration:v13 serviceContext:v10];
      if (v16)
      {
        v17 = [(ASOServiceOverlayAppClipLockupProvider *)self loadOverlayFromDefinition:v16 configuration:v13 serviceContext:v10 metricsReporter:v11];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100002FC8;
        v23[3] = &unk_100024D60;
        v24 = v13;
        v25 = v10;
        v26 = self;
        v27 = v11;
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

- (id)loadOverlayFromDefinition:(id)a3 configuration:(id)a4 serviceContext:(id)a5 metricsReporter:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
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
  v24 = v10;
  v25 = v9;
  v26 = v12;
  v15 = v13;
  v27 = v15;
  v28 = v11;
  v16 = v11;
  v17 = v12;
  v18 = v9;
  v19 = v10;
  dispatch_async(&_dispatch_main_q, block);
  v20 = v28;
  v21 = v15;

  return v15;
}

+ (id)configureLockupView:(id)a3 forAppClipWithConfiguration:(id)a4 serviceContext:(id)a5 metricsReporter:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 additionalValueForKey:ASOOverlayConfigurationPrivateParameterOverrideIsArcadeApp serviceContext:v11];
  v14 = [v9 loadLockupPromise];
  v15 = [v14 promiseAdapter];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100003620;
  v23[3] = &unk_100024DB0;
  v24 = v10;
  v25 = v12;
  v26 = v9;
  v27 = v11;
  v28 = v13;
  v16 = v13;
  v17 = v11;
  v18 = v9;
  v19 = v12;
  v20 = v10;
  v21 = [v15 thenWithBlock:v23];

  return v21;
}

- (id)lockupDefinitionForConfiguration:(id)a3 serviceContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASOServiceOverlayAppClipLockupProvider *)self parentAppLockupRequestForConfiguration:v6 serviceContext:v7];
  if (!v8)
  {
    v11 = [v6 additionalValueForKey:ASOOverlayConfigurationPrivateParameterOverrideIsDevelopment serviceContext:v7];
    v12 = [v7 isDevelopmentApp];
    if (v11)
    {
      v12 = [v11 BOOLValue];
    }

    v13 = v12;
    v14 = [v6 additionalValueForKey:ASOOverlayConfigurationPrivateParameterOverrideIsBetaApp serviceContext:v7];
    v15 = [v7 isBetaApp];
    if (v14)
    {
      v15 = [v14 BOOLValue];
    }

    if (((v13 | v15) & 1) == 0)
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

    v16 = [ASOServiceOverlayDevelopmentLockupProvider parentAppDevelopmentLockupForConfiguration:v6 serviceContext:v7];
    if (v16)
    {
      v17 = v16;
      v18 = +[ASOServiceOverlayAppClipLockupProvider log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = v6;
        v19 = "Using parent app development lockup: %@";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v19, &v23, 0xCu);
      }
    }

    else
    {
      v20 = [ASOServiceOverlayDevelopmentLockupProvider appDevelopmentLockupForConfiguration:v6 serviceContext:v7];
      if (!v20)
      {
        v21 = [ASOServiceOverlayDevelopmentLockupProvider placeholderAppDevelopmentLockupForConfiguration:v6 serviceContext:v7];
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
        v24 = v6;
        v19 = "Using placeholder app development lockup: %@";
        goto LABEL_22;
      }

      v17 = v20;
      v18 = +[ASOServiceOverlayAppClipLockupProvider log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = v6;
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
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Using parent app production lockup: %@", &v23, 0xCu);
  }

  v10 = [[ASOServiceLockupDefinition alloc] initWithRequest:v8];
LABEL_26:

  return v10;
}

- (id)parentAppLockupRequestForConfiguration:(id)a3 serviceContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 additionalValueForKey:ASOOverlayConfigurationPrivateParameterIgnoreAdamID serviceContext:v6];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v5 additionalValueForKey:ASOOverlayConfigurationPrivateParameterOverrideParentAppAdamID serviceContext:v6];
    if (!v10)
    {
      v10 = [v6 hostAdamID];
    }

    v11 = +[ASOServiceOverlayAppClipLockupProvider log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Parent app adam ID is: %{public}@", buf, 0xCu);
    }

    if (v10)
    {
      v23 = [v6 applicationRecord];
      v22 = [[ASCAdamID alloc] initWithStringValue:v10];
      v12 = [v23 iTunesMetadata];
      v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 versionIdentifier]);
      v14 = [v13 stringValue];

      v15 = [ASCLockupRequest alloc];
      v16 = ASCLockupKindApp;
      v17 = ASCLockupContextOverlayClip;
      v18 = [v5 latestReleaseID];
      v19 = [v5 productVariantID];
      v9 = [v15 _initWithID:v22 kind:v16 context:v17 minExternalVersionID:v14 latestReleaseID:v18 productVariantID:v19];

      v20 = v23;
    }

    else
    {
      v20 = +[ASOServiceOverlayAppClipLockupProvider log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v5;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Unable to build lockup request for parent app: %@", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  return v9;
}

@end