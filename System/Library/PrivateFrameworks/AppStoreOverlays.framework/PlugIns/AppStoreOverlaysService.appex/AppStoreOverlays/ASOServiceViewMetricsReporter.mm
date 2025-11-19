@interface ASOServiceViewMetricsReporter
+ (id)log;
- (ASOServiceViewMetricsReporter)initWithActivity:(id)a3;
- (ASOServiceViewMetricsReporter)initWithMetrics:(id)a3 activity:(id)a4;
- (void)recordCampaignToken:(id)a3 providerToken:(id)a4 withLockup:(id)a5;
- (void)reportInvocationPoint:(id)a3 viewMetrics:(id)a4;
- (void)setActivity:(id)a3;
@end

@implementation ASOServiceViewMetricsReporter

+ (id)log
{
  if (qword_10002C760 != -1)
  {
    sub_100017BD0();
  }

  v3 = qword_10002C768;

  return v3;
}

- (ASOServiceViewMetricsReporter)initWithMetrics:(id)a3 activity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASOServiceViewMetricsReporter;
  v9 = [(ASOServiceViewMetricsReporter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metrics, a3);
    objc_storeStrong(&v10->_activity, a4);
  }

  return v10;
}

- (ASOServiceViewMetricsReporter)initWithActivity:(id)a3
{
  v4 = a3;
  v5 = +[ASCMetrics sharedMetrics];
  v6 = [(ASOServiceViewMetricsReporter *)self initWithMetrics:v5 activity:v4];

  return v6;
}

- (void)setActivity:(id)a3
{
  v4 = a3;
  v5 = +[ASOServiceViewMetricsReporter log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Updating metrics activity", v7, 2u);
  }

  activity = self->_activity;
  self->_activity = v4;
}

- (void)recordCampaignToken:(id)a3 providerToken:(id)a4 withLockup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[ASOServiceViewMetricsReporter log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 138478339;
    v15 = v8;
    v16 = 2113;
    v17 = v9;
    v18 = 2113;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Recording campaignToken=%{private}@ providerToken=%{private}@ for lockup: %{private}@", &v14, 0x20u);
  }

  v12 = [(ASOServiceViewMetricsReporter *)self metrics];
  v13 = [v12 recordCampaignToken:v8 providerToken:v9 withLockup:v10];
}

- (void)reportInvocationPoint:(id)a3 viewMetrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ASOServiceViewMetricsReporter log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Acquiring post events process assertion", buf, 2u);
  }

  v9 = [[ASOKeepAlive alloc] initWithName:@"ViewService.postEvents" explanation:@"Acquiring post events process assertion"];
  [(ASOKeepAlive *)v9 acquire];
  v10 = +[ASOServiceViewMetricsReporter log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v26 = self;
    v27 = 2114;
    v28 = v6;
    v29 = 2114;
    v30 = v7;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@ posting %{public}@ metrics of %{public}@", buf, 0x20u);
  }

  v11 = [(ASOServiceViewMetricsReporter *)self metrics];
  v12 = [(ASOServiceViewMetricsReporter *)self activity];
  v13 = [v11 processViewMetrics:v7 atInvocationPoint:v6 withActivity:v12];

  objc_initWeak(buf, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100007864;
  v22[3] = &unk_100025020;
  objc_copyWeak(&v24, buf);
  v14 = v6;
  v23 = v14;
  [v13 addSuccessBlock:v22];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000078B8;
  v19[3] = &unk_100025048;
  objc_copyWeak(&v21, buf);
  v15 = v14;
  v20 = v15;
  [v13 addErrorBlock:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100007924;
  v17[3] = &unk_100025070;
  v16 = v9;
  v18 = v16;
  [v13 addFinishBlock:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

@end