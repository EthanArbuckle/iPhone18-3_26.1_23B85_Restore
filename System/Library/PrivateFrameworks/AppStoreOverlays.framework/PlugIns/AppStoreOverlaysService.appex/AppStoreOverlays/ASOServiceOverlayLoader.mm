@interface ASOServiceOverlayLoader
+ (OS_os_log)log;
- (id)loadOverlayForConfiguration:(id)configuration delegate:(id)delegate serviceContext:(id)context metricsReporter:(id)reporter;
- (id)processReengagement;
- (void)recordClickThroughImpressionWithDidInitiateDownload:(BOOL)download;
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

- (id)loadOverlayForConfiguration:(id)configuration delegate:(id)delegate serviceContext:(id)context metricsReporter:(id)reporter
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  contextCopy = context;
  reporterCopy = reporter;
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

    [(ASOServiceOverlayLoader *)self setConfig:configurationCopy];
    [(ASOServiceOverlayLoader *)self setServiceContext:contextCopy];
    v16 = objc_alloc_init(ASOServiceOverlayAppLockupProvider);
    [(ASOServiceOverlayAppLockupProvider *)v16 setAdInteractionAttributor:self];
    v17 = v16;
LABEL_11:
    v21 = [(ASOServiceOverlayAppClipLockupProvider *)v17 loadOverlayForConfiguration:configurationCopy delegate:delegateCopy serviceContext:contextCopy metricsReporter:reporterCopy];
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
  config = [(ASOServiceOverlayLoader *)self config];
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
  config = [(ASOServiceOverlayLoader *)self config];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    attributionTimer = [(ASOServiceOverlayLoader *)self attributionTimer];
    [attributionTimer invalidate];
  }
}

- (void)recordClickThroughImpressionWithDidInitiateDownload:(BOOL)download
{
  downloadCopy = download;
  config = [(ASOServiceOverlayLoader *)self config];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    attributionTimer = [(ASOServiceOverlayLoader *)self attributionTimer];
    [attributionTimer invalidate];

    config2 = [(ASOServiceOverlayLoader *)self config];
    storage = [config2 storage];
    config3 = [(ASOServiceOverlayLoader *)self config];
    appIdentifier = [config3 appIdentifier];
    serviceContext = [(ASOServiceOverlayLoader *)self serviceContext];
    hostAdamID = [serviceContext hostAdamID];
    serviceContext2 = [(ASOServiceOverlayLoader *)self serviceContext];
    [serviceContext2 hostBundleIdentifier];
    v15 = v16 = downloadCopy;
    [ASOServiceAdAttribution recordImpressionWithParameters:storage storeIdentifier:appIdentifier hostAdamID:hostAdamID clientBundleId:v15 interactionType:1];

    if (v16)
    {

      [(ASOServiceOverlayLoader *)self setDidInitiateDownload:1];
    }
  }
}

- (id)processReengagement
{
  config = [(ASOServiceOverlayLoader *)self config];
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

  attributionTimer = [(ASOServiceOverlayLoader *)self attributionTimer];
  [attributionTimer invalidate];

  config2 = [(ASOServiceOverlayLoader *)self config];
  storage = [config2 storage];
  config3 = [(ASOServiceOverlayLoader *)self config];
  appIdentifier = [config3 appIdentifier];
  serviceContext = [(ASOServiceOverlayLoader *)self serviceContext];
  hostBundleIdentifier = [serviceContext hostBundleIdentifier];
  v6 = [ASOServiceAdAttribution processReengagementWithParameters:storage storeIdentifier:appIdentifier clientBundleID:hostBundleIdentifier];

LABEL_8:

  return v6;
}

@end