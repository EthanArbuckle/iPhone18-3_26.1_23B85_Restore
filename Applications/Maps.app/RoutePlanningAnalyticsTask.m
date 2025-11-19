@interface RoutePlanningAnalyticsTask
- (RoutePlanningSession)routePlanningSession;
- (int)analyticsTarget;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5;
- (void)setRoutePlanningSession:(id)a3;
@end

@implementation RoutePlanningAnalyticsTask

- (RoutePlanningSession)routePlanningSession
{
  WeakRetained = objc_loadWeakRetained(&self->_routePlanningSession);

  return WeakRetained;
}

- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 isSuccess] && objc_msgSend(v8, "currentTransportType") == a5)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100D71104;
    v22 = sub_100D71114;
    v23 = 0;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100D7111C;
    v17[3] = &unk_10165E5B8;
    v17[4] = &v18;
    [v9 withValue:v17 orError:&stru_101653008];
    if (!v19[5])
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v25 = "[RoutePlanningAnalyticsTask routePlanningSession:didUpdateRouteCollectionResult:forTransportType:]";
        v26 = 2080;
        v27 = "RoutePlanningAnalyticsTask.m";
        v28 = 1024;
        v29 = 89;
        v30 = 2080;
        v31 = "routeCollection != nil";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v15 = sub_10006D178();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v25 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v10 = [v19[5] routes];
    v11 = [(RoutePlanningAnalyticsTask *)self routeCollection];
    v12 = [v11 routes];
    v13 = [v10 isEqualToArray:v12];

    [(RoutePlanningAnalyticsTask *)self setRouteCollection:v19[5]];
    if ((v13 & 1) == 0)
    {
      [GEOAPPortal captureUserAction:3039 target:[(RoutePlanningAnalyticsTask *)self analyticsTarget] value:0];
    }

    _Block_object_dispose(&v18, 8);
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(RoutePlanningAnalyticsTask *)self setRoutePlanningSession:v7];
}

- (int)analyticsTarget
{
  v2 = [(RoutePlanningAnalyticsTask *)self routePlanningSession];
  v3 = [v2 currentTransportType];

  v4 = 302;
  if (v3 > 2)
  {
    v5 = 303;
    if (v3 == 5)
    {
      v4 = 305;
    }

    else
    {
      v4 = 302;
    }

    if (v3 == 4)
    {
      v4 = 304;
    }

    v6 = v3 == 3;
    goto LABEL_10;
  }

  if (v3)
  {
    v6 = v3 == 1;
    v5 = 301;
LABEL_10:
    if (v6)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  v8 = sub_10006D178();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315650;
    v12 = "[RoutePlanningAnalyticsTask analyticsTarget]";
    v13 = 2080;
    v14 = "RoutePlanningAnalyticsTask.m";
    v15 = 1024;
    v16 = 64;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v11, 0x1Cu);
  }

  result = sub_100E03634();
  if (result)
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = +[NSThread callStackSymbols];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
    }

    return 0;
  }

  return result;
}

- (void)setRoutePlanningSession:(id)a3
{
  v4 = a3;
  v5 = objc_loadWeakRetained(&self->_routePlanningSession);
  v6 = v4;
  if (v6 | v5)
  {
    obj = v6;
    v7 = [v5 isEqual:v6];

    v6 = obj;
    if ((v7 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_routePlanningSession);
      [WeakRetained unregisterObserver:self];

      v9 = objc_storeWeak(&self->_routePlanningSession, obj);
      [obj registerObserver:self];

      routeCollection = self->_routeCollection;
      self->_routeCollection = 0;

      v6 = obj;
    }
  }
}

@end