@interface ASOServiceOverlayPresenter
+ (id)log;
- (ASOServiceContext)serviceContext;
- (ASOServiceOverlay)loadedOverlay;
- (ASOServiceOverlayContainerConfiguration)containerConfiguration;
- (ASOServiceOverlayPresenter)initWithConfiguration:(id)configuration remoteDelegate:(id)delegate serviceContext:(id)context overlayLoader:(id)loader;
- (id)convertErrorIfNeeded:(id)needed;
- (id)loadOverlayIfNeeded;
- (id)makeMetricsActivity;
- (void)didFailToLoadWithError:(id)error;
- (void)didFinishDismissal:(id)dismissal;
- (void)didFinishPresentation:(id)presentation;
- (void)hostApplicationDidEnterBackground;
- (void)hostApplicationWillEnterForeground;
- (void)postAppearMetrics;
- (void)postDisappearMetrics;
- (void)setLoadedOverlay:(id)overlay;
- (void)willStartDismissal:(id)dismissal executeBlock:(id)block;
- (void)willStartPresentation:(id)presentation executeBlock:(id)block;
- (void)withLock:(id)lock;
@end

@implementation ASOServiceOverlayPresenter

- (void)withLock:(id)lock
{
  lockCopy = lock;
  stateLock = [(ASOServiceOverlayPresenter *)self stateLock];
  [stateLock lock];

  lockCopy[2]();
  stateLock2 = [(ASOServiceOverlayPresenter *)self stateLock];
  [stateLock2 unlock];
}

+ (id)log
{
  if (qword_10002C750 != -1)
  {
    sub_100017BBC();
  }

  v3 = qword_10002C758;

  return v3;
}

- (ASOServiceOverlayPresenter)initWithConfiguration:(id)configuration remoteDelegate:(id)delegate serviceContext:(id)context overlayLoader:(id)loader
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  contextCopy = context;
  loaderCopy = loader;
  v23.receiver = self;
  v23.super_class = ASOServiceOverlayPresenter;
  v15 = [(ASOServiceOverlayPresenter *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configuration, configuration);
    objc_storeStrong(&v16->_remoteDelegate, delegate);
    objc_storeWeak(&v16->_serviceContext, contextCopy);
    objc_storeStrong(&v16->_overlayLoader, loader);
    v17 = [ASOServiceViewMetricsReporter alloc];
    makeMetricsActivity = [(ASOServiceOverlayPresenter *)v16 makeMetricsActivity];
    v19 = [(ASOServiceViewMetricsReporter *)v17 initWithActivity:makeMetricsActivity];
    viewMetricsReporter = v16->_viewMetricsReporter;
    v16->_viewMetricsReporter = v19;

    unlockedLoadedOverlay = v16->_unlockedLoadedOverlay;
    v16->_unlockedLoadedOverlay = 0;
  }

  return v16;
}

- (id)makeMetricsActivity
{
  v3 = objc_opt_new();
  serviceContext = [(ASOServiceOverlayPresenter *)self serviceContext];
  if ([serviceContext isAppClip])
  {
    v5 = @"clip";
  }

  else
  {
    v5 = @"app";
  }

  [v3 setObject:v5 forKeyedSubscript:@"hostAppKind"];

  serviceContext2 = [(ASOServiceOverlayPresenter *)self serviceContext];
  hostAdamID = [serviceContext2 hostAdamID];
  if (hostAdamID)
  {
    serviceContext3 = [(ASOServiceOverlayPresenter *)self serviceContext];
    hostAdamID2 = [serviceContext3 hostAdamID];
    [v3 setObject:hostAdamID2 forKeyedSubscript:@"hostItemId"];
  }

  else
  {
    [v3 setObject:&stru_100025778 forKeyedSubscript:@"hostItemId"];
  }

  serviceContext4 = [(ASOServiceOverlayPresenter *)self serviceContext];
  hostBundleIdentifier = [serviceContext4 hostBundleIdentifier];

  if (hostBundleIdentifier)
  {
    [v3 setObject:hostBundleIdentifier forKeyedSubscript:ASCMetricsActivityKeyHostApp];
    [v3 setObject:hostBundleIdentifier forKeyedSubscript:ASCMetricsActivityKeyPageContext];
  }

  v12 = [[ASCMetricsActivity alloc] initWithFields:v3];

  return v12;
}

- (id)loadOverlayIfNeeded
{
  v3 = +[ASCOverlaySettings sharedSettings];
  overlaysLoadTimeout = [v3 overlaysLoadTimeout];

  if (overlaysLoadTimeout)
  {
    v5 = overlaysLoadTimeout;
  }

  else
  {
    v5 = &off_100025B10;
  }

  v6 = +[ASOServiceOverlayPresenter log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    [v5 doubleValue];
    *buf = 134217984;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Loading overlay with timeout: %f", buf, 0xCu);
  }

  overlayPromise = [(ASOServiceOverlayPresenter *)self overlayPromise];
  v9 = overlayPromise == 0;

  if (v9)
  {
    overlayLoader = [(ASOServiceOverlayPresenter *)self overlayLoader];
    configuration = [(ASOServiceOverlayPresenter *)self configuration];
    remoteDelegate = [(ASOServiceOverlayPresenter *)self remoteDelegate];
    serviceContext = [(ASOServiceOverlayPresenter *)self serviceContext];
    viewMetricsReporter = [(ASOServiceOverlayPresenter *)self viewMetricsReporter];
    v15 = [overlayLoader loadOverlayForConfiguration:configuration delegate:remoteDelegate serviceContext:serviceContext metricsReporter:viewMetricsReporter];
    [v5 doubleValue];
    v16 = [v15 promiseWithTimeout:?];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100006470;
    v26[3] = &unk_100024EF8;
    v26[4] = self;
    v17 = [v16 catchWithBlock:v26];
    [(ASOServiceOverlayPresenter *)self setOverlayPromise:v17];

    objc_initWeak(buf, self);
    overlayPromise2 = [(ASOServiceOverlayPresenter *)self overlayPromise];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000064D4;
    v24 = &unk_100024F60;
    objc_copyWeak(&v25, buf);
    [overlayPromise2 addSuccessBlock:&v21];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  v19 = [(ASOServiceOverlayPresenter *)self overlayPromise:v21];

  return v19;
}

- (ASOServiceOverlayContainerConfiguration)containerConfiguration
{
  loadedOverlay = [(ASOServiceOverlayPresenter *)self loadedOverlay];
  containerConfiguration = [loadedOverlay containerConfiguration];

  return containerConfiguration;
}

- (void)setLoadedOverlay:(id)overlay
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000066CC;
  v4[3] = &unk_100024F88;
  selfCopy = self;
  overlayCopy = overlay;
  v3 = overlayCopy;
  [(ASOServiceOverlayPresenter *)selfCopy withLock:v4];
}

- (ASOServiceOverlay)loadedOverlay
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000067D4;
  v9 = sub_1000067E4;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000067EC;
  v4[3] = &unk_100024FB0;
  v4[4] = self;
  v4[5] = &v5;
  [(ASOServiceOverlayPresenter *)self withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)didFailToLoadWithError:(id)error
{
  errorCopy = error;
  remoteDelegate = [(ASOServiceOverlayPresenter *)self remoteDelegate];
  [remoteDelegate remoteStoreOverlayDidFailToLoadWithError:errorCopy];
}

- (void)willStartPresentation:(id)presentation executeBlock:(id)block
{
  blockCopy = block;
  presentationCopy = presentation;
  remoteDelegate = [(ASOServiceOverlayPresenter *)self remoteDelegate];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006960;
  v10[3] = &unk_100024FD8;
  v11 = blockCopy;
  v9 = blockCopy;
  [remoteDelegate remoteStoreOverlayWillStartPresenting:presentationCopy executeBlock:v10];
}

- (void)didFinishPresentation:(id)presentation
{
  presentationCopy = presentation;
  [(ASOServiceOverlayPresenter *)self postAppearMetrics];
  overlayLoader = [(ASOServiceOverlayPresenter *)self overlayLoader];
  [overlayLoader serviceOverlayPresenterDidFinishPresenting];

  remoteDelegate = [(ASOServiceOverlayPresenter *)self remoteDelegate];
  [remoteDelegate remoteStoreOverlayDidFinishPresentation:presentationCopy];
}

- (void)willStartDismissal:(id)dismissal executeBlock:(id)block
{
  blockCopy = block;
  dismissalCopy = dismissal;
  remoteDelegate = [(ASOServiceOverlayPresenter *)self remoteDelegate];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006BB8;
  v10[3] = &unk_100024FD8;
  v11 = blockCopy;
  v9 = blockCopy;
  [remoteDelegate remoteStoreOverlayWillStartDismissing:dismissalCopy executeBlock:v10];
}

- (void)didFinishDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  [(ASOServiceOverlayPresenter *)self postDisappearMetrics];
  overlayLoader = [(ASOServiceOverlayPresenter *)self overlayLoader];
  [overlayLoader serviceOverlayPresenterDidFinishDismissing];

  remoteDelegate = [(ASOServiceOverlayPresenter *)self remoteDelegate];
  [remoteDelegate remoteStoreOverlayDidFinishDismissal:dismissalCopy];
}

- (void)hostApplicationDidEnterBackground
{
  v3 = +[ASOServiceOverlayPresenter log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Host application did enter background", v4, 2u);
  }

  [(ASOServiceOverlayPresenter *)self postDisappearMetrics];
}

- (void)hostApplicationWillEnterForeground
{
  v3 = +[ASOServiceOverlayPresenter log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Host application will enter foreground", v4, 2u);
  }

  [(ASOServiceOverlayPresenter *)self postAppearMetrics];
}

- (void)postDisappearMetrics
{
  loadedOverlay = [(ASOServiceOverlayPresenter *)self loadedOverlay];
  viewMetrics = [loadedOverlay viewMetrics];

  if (viewMetrics)
  {
    viewMetricsReporter = [(ASOServiceOverlayPresenter *)self viewMetricsReporter];
    [viewMetricsReporter reportDisappearWithViewMetrics:viewMetrics];
  }
}

- (void)postAppearMetrics
{
  loadedOverlay = [(ASOServiceOverlayPresenter *)self loadedOverlay];
  viewMetrics = [loadedOverlay viewMetrics];

  if (viewMetrics)
  {
    viewMetricsReporter = [(ASOServiceOverlayPresenter *)self viewMetricsReporter];
    [viewMetricsReporter reportAppearWithViewMetrics:viewMetrics];
  }
}

- (id)convertErrorIfNeeded:(id)needed
{
  neededCopy = needed;
  domain = [neededCopy domain];
  v5 = domain;
  if (domain == AMSErrorDomain)
  {
    code = [neededCopy code];

    if (code == 1)
    {
      v10 = NSLocalizedDescriptionKey;
      v11 = @"Overlay timed out";
      v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v8 = [NSError errorWithDomain:@"ASOErrorDomain" code:6 userInfo:v7];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = neededCopy;
LABEL_6:

  return v8;
}

- (ASOServiceContext)serviceContext
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceContext);

  return WeakRetained;
}

@end