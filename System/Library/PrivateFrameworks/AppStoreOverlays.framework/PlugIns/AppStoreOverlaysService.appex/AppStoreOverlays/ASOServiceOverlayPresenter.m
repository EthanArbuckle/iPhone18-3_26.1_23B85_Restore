@interface ASOServiceOverlayPresenter
+ (id)log;
- (ASOServiceContext)serviceContext;
- (ASOServiceOverlay)loadedOverlay;
- (ASOServiceOverlayContainerConfiguration)containerConfiguration;
- (ASOServiceOverlayPresenter)initWithConfiguration:(id)a3 remoteDelegate:(id)a4 serviceContext:(id)a5 overlayLoader:(id)a6;
- (id)convertErrorIfNeeded:(id)a3;
- (id)loadOverlayIfNeeded;
- (id)makeMetricsActivity;
- (void)didFailToLoadWithError:(id)a3;
- (void)didFinishDismissal:(id)a3;
- (void)didFinishPresentation:(id)a3;
- (void)hostApplicationDidEnterBackground;
- (void)hostApplicationWillEnterForeground;
- (void)postAppearMetrics;
- (void)postDisappearMetrics;
- (void)setLoadedOverlay:(id)a3;
- (void)willStartDismissal:(id)a3 executeBlock:(id)a4;
- (void)willStartPresentation:(id)a3 executeBlock:(id)a4;
- (void)withLock:(id)a3;
@end

@implementation ASOServiceOverlayPresenter

- (void)withLock:(id)a3
{
  v6 = a3;
  v4 = [(ASOServiceOverlayPresenter *)self stateLock];
  [v4 lock];

  v6[2]();
  v5 = [(ASOServiceOverlayPresenter *)self stateLock];
  [v5 unlock];
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

- (ASOServiceOverlayPresenter)initWithConfiguration:(id)a3 remoteDelegate:(id)a4 serviceContext:(id)a5 overlayLoader:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = ASOServiceOverlayPresenter;
  v15 = [(ASOServiceOverlayPresenter *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configuration, a3);
    objc_storeStrong(&v16->_remoteDelegate, a4);
    objc_storeWeak(&v16->_serviceContext, v13);
    objc_storeStrong(&v16->_overlayLoader, a6);
    v17 = [ASOServiceViewMetricsReporter alloc];
    v18 = [(ASOServiceOverlayPresenter *)v16 makeMetricsActivity];
    v19 = [(ASOServiceViewMetricsReporter *)v17 initWithActivity:v18];
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
  v4 = [(ASOServiceOverlayPresenter *)self serviceContext];
  if ([v4 isAppClip])
  {
    v5 = @"clip";
  }

  else
  {
    v5 = @"app";
  }

  [v3 setObject:v5 forKeyedSubscript:@"hostAppKind"];

  v6 = [(ASOServiceOverlayPresenter *)self serviceContext];
  v7 = [v6 hostAdamID];
  if (v7)
  {
    v8 = [(ASOServiceOverlayPresenter *)self serviceContext];
    v9 = [v8 hostAdamID];
    [v3 setObject:v9 forKeyedSubscript:@"hostItemId"];
  }

  else
  {
    [v3 setObject:&stru_100025778 forKeyedSubscript:@"hostItemId"];
  }

  v10 = [(ASOServiceOverlayPresenter *)self serviceContext];
  v11 = [v10 hostBundleIdentifier];

  if (v11)
  {
    [v3 setObject:v11 forKeyedSubscript:ASCMetricsActivityKeyHostApp];
    [v3 setObject:v11 forKeyedSubscript:ASCMetricsActivityKeyPageContext];
  }

  v12 = [[ASCMetricsActivity alloc] initWithFields:v3];

  return v12;
}

- (id)loadOverlayIfNeeded
{
  v3 = +[ASCOverlaySettings sharedSettings];
  v4 = [v3 overlaysLoadTimeout];

  if (v4)
  {
    v5 = v4;
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

  v8 = [(ASOServiceOverlayPresenter *)self overlayPromise];
  v9 = v8 == 0;

  if (v9)
  {
    v10 = [(ASOServiceOverlayPresenter *)self overlayLoader];
    v11 = [(ASOServiceOverlayPresenter *)self configuration];
    v12 = [(ASOServiceOverlayPresenter *)self remoteDelegate];
    v13 = [(ASOServiceOverlayPresenter *)self serviceContext];
    v14 = [(ASOServiceOverlayPresenter *)self viewMetricsReporter];
    v15 = [v10 loadOverlayForConfiguration:v11 delegate:v12 serviceContext:v13 metricsReporter:v14];
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
    v18 = [(ASOServiceOverlayPresenter *)self overlayPromise];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000064D4;
    v24 = &unk_100024F60;
    objc_copyWeak(&v25, buf);
    [v18 addSuccessBlock:&v21];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  v19 = [(ASOServiceOverlayPresenter *)self overlayPromise:v21];

  return v19;
}

- (ASOServiceOverlayContainerConfiguration)containerConfiguration
{
  v2 = [(ASOServiceOverlayPresenter *)self loadedOverlay];
  v3 = [v2 containerConfiguration];

  return v3;
}

- (void)setLoadedOverlay:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000066CC;
  v4[3] = &unk_100024F88;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ASOServiceOverlayPresenter *)v5 withLock:v4];
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

- (void)didFailToLoadWithError:(id)a3
{
  v4 = a3;
  v5 = [(ASOServiceOverlayPresenter *)self remoteDelegate];
  [v5 remoteStoreOverlayDidFailToLoadWithError:v4];
}

- (void)willStartPresentation:(id)a3 executeBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASOServiceOverlayPresenter *)self remoteDelegate];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006960;
  v10[3] = &unk_100024FD8;
  v11 = v6;
  v9 = v6;
  [v8 remoteStoreOverlayWillStartPresenting:v7 executeBlock:v10];
}

- (void)didFinishPresentation:(id)a3
{
  v4 = a3;
  [(ASOServiceOverlayPresenter *)self postAppearMetrics];
  v5 = [(ASOServiceOverlayPresenter *)self overlayLoader];
  [v5 serviceOverlayPresenterDidFinishPresenting];

  v6 = [(ASOServiceOverlayPresenter *)self remoteDelegate];
  [v6 remoteStoreOverlayDidFinishPresentation:v4];
}

- (void)willStartDismissal:(id)a3 executeBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASOServiceOverlayPresenter *)self remoteDelegate];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006BB8;
  v10[3] = &unk_100024FD8;
  v11 = v6;
  v9 = v6;
  [v8 remoteStoreOverlayWillStartDismissing:v7 executeBlock:v10];
}

- (void)didFinishDismissal:(id)a3
{
  v4 = a3;
  [(ASOServiceOverlayPresenter *)self postDisappearMetrics];
  v5 = [(ASOServiceOverlayPresenter *)self overlayLoader];
  [v5 serviceOverlayPresenterDidFinishDismissing];

  v6 = [(ASOServiceOverlayPresenter *)self remoteDelegate];
  [v6 remoteStoreOverlayDidFinishDismissal:v4];
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
  v3 = [(ASOServiceOverlayPresenter *)self loadedOverlay];
  v5 = [v3 viewMetrics];

  if (v5)
  {
    v4 = [(ASOServiceOverlayPresenter *)self viewMetricsReporter];
    [v4 reportDisappearWithViewMetrics:v5];
  }
}

- (void)postAppearMetrics
{
  v3 = [(ASOServiceOverlayPresenter *)self loadedOverlay];
  v5 = [v3 viewMetrics];

  if (v5)
  {
    v4 = [(ASOServiceOverlayPresenter *)self viewMetricsReporter];
    [v4 reportAppearWithViewMetrics:v5];
  }
}

- (id)convertErrorIfNeeded:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 == AMSErrorDomain)
  {
    v6 = [v3 code];

    if (v6 == 1)
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

  v8 = v3;
LABEL_6:

  return v8;
}

- (ASOServiceContext)serviceContext
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceContext);

  return WeakRetained;
}

@end