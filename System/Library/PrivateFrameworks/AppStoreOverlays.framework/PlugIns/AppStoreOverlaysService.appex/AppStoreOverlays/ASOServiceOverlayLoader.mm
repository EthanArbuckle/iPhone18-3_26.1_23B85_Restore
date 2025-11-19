@interface ASOServiceOverlayLoader
+ (OS_os_log)log;
- (id)loadOverlayForConfiguration:(id)a3 delegate:(id)a4 serviceContext:(id)a5 metricsReporter:(id)a6;
- (id)processReengagement;
- (void)recordClickThroughImpressionWithDidInitiateDownload:(BOOL)a3;
- (void)serviceOverlayPresenterDidFinishDismissing;
- (void)serviceOverlayPresenterDidFinishPresenting;
@end

@implementation ASOServiceOverlayLoader

+ (OS_os_log)log
{
  if (qword_10002C740 != -1)
  {
    sub_100017B20();
  }

  v3 = qword_10002C748;

  return v3;
}

- (id)loadOverlayForConfiguration:(id)a3 delegate:(id)a4 serviceContext:(id)a5 metricsReporter:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[ASOServiceOverlayLoader log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Finding provider to use to load overlay", buf, 2u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = +[ASOServiceOverlayLoader log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Using ASOServiceOverlayAppLockupProvider", v25, 2u);
    }

    [(ASOServiceOverlayLoader *)self setConfig:v10];
    [(ASOServiceOverlayLoader *)self setServiceContext:v12];
    v16 = objc_alloc_init(ASOServiceOverlayAppLockupProvider);
    [(ASOServiceOverlayAppLockupProvider *)v16 setAdInteractionAttributor:self];
    v17 = v16;
LABEL_11:
    v21 = [(ASOServiceOverlayAppClipLockupProvider *)v17 loadOverlayForConfiguration:v10 delegate:v11 serviceContext:v12 metricsReporter:v13];
    goto LABEL_15;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v19 = +[ASOServiceOverlayLoader log];
  v20 = v19;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Using ASOServiceOverlayAppClipLockupProvider", v24, 2u);
    }

    v17 = objc_alloc_init(ASOServiceOverlayAppClipLockupProvider);
    v16 = v17;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_100017B34(v20);
  }

  v16 = [NSError errorWithDomain:@"ASOErrorDomain" code:1 userInfo:0];
  v21 = [AMSPromise promiseWithError:v16];
LABEL_15:
  v22 = v21;

  return v22;
}

- (void)serviceOverlayPresenterDidFinishPresenting
{
  v3 = [(ASOServiceOverlayLoader *)self config];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    objc_initWeak(&location, self);
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_100005834;
    v9 = &unk_100024EB0;
    objc_copyWeak(&v10, &location);
    v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v6 block:3.0];
    [(ASOServiceOverlayLoader *)self setAttributionTimer:v5, v6, v7, v8, v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)serviceOverlayPresenterDidFinishDismissing
{
  v3 = [(ASOServiceOverlayLoader *)self config];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = [(ASOServiceOverlayLoader *)self attributionTimer];
    [v5 invalidate];
  }
}

- (void)recordClickThroughImpressionWithDidInitiateDownload:(BOOL)a3
{
  v3 = a3;
  v5 = [(ASOServiceOverlayLoader *)self config];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = [(ASOServiceOverlayLoader *)self attributionTimer];
    [v7 invalidate];

    v8 = [(ASOServiceOverlayLoader *)self config];
    v9 = [v8 storage];
    v10 = [(ASOServiceOverlayLoader *)self config];
    v11 = [v10 appIdentifier];
    v12 = [(ASOServiceOverlayLoader *)self serviceContext];
    v13 = [v12 hostAdamID];
    v14 = [(ASOServiceOverlayLoader *)self serviceContext];
    [v14 hostBundleIdentifier];
    v15 = v16 = v3;
    [ASOServiceAdAttribution recordImpressionWithParameters:v9 storeIdentifier:v11 hostAdamID:v13 clientBundleId:v15 interactionType:1];

    if (v16)
    {

      [(ASOServiceOverlayLoader *)self setDidInitiateDownload:1];
    }
  }
}

- (id)processReengagement
{
  v3 = [(ASOServiceOverlayLoader *)self config];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_8;
  }

  if ([(ASOServiceOverlayLoader *)self didInitiateDownload])
  {
    v5 = +[ASOServiceOverlayLoader log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100017B78(v5);
    }

    goto LABEL_6;
  }

  v7 = [(ASOServiceOverlayLoader *)self attributionTimer];
  [v7 invalidate];

  v8 = [(ASOServiceOverlayLoader *)self config];
  v9 = [v8 storage];
  v10 = [(ASOServiceOverlayLoader *)self config];
  v11 = [v10 appIdentifier];
  v12 = [(ASOServiceOverlayLoader *)self serviceContext];
  v13 = [v12 hostBundleIdentifier];
  v6 = [ASOServiceAdAttribution processReengagementWithParameters:v9 storeIdentifier:v11 clientBundleID:v13];

LABEL_8:

  return v6;
}

@end