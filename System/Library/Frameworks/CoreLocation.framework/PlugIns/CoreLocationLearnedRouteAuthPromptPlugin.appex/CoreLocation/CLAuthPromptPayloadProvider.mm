@interface CLAuthPromptPayloadProvider
+ (id)provider;
- (id)errorWithReason:(id)a3;
- (void)createLearnedRouteAuthPromptPayloadWithBundlePath:(id)a3 completionHandler:(id)a4;
@end

@implementation CLAuthPromptPayloadProvider

+ (id)provider
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)createLearnedRouteAuthPromptPayloadWithBundlePath:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    if (qword_1000118A8 != -1)
    {
      sub_100005DD0();
    }

    v8 = qword_1000118B0;
    if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v21 = "[CLAuthPromptPayloadProvider createLearnedRouteAuthPromptPayloadWithBundlePath:completionHandler:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }

    v9 = +[RTRoutineManager defaultManager];
    if (qword_1000118A8 != -1)
    {
      sub_100005DE4();
    }

    v10 = qword_1000118B0;
    if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Notifying dispatch group…", buf, 2u);
    }

    v11 = dispatch_group_create();
    v12 = dispatch_get_global_queue(25, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000013B8;
    v15[3] = &unk_10000C368;
    v16 = v6;
    v17 = v9;
    v18 = self;
    v19 = v7;
    v13 = v9;
    dispatch_group_notify(v11, v12, v15);
  }

  else
  {
    if (qword_1000118A8 != -1)
    {
      sub_100005DD0();
    }

    v14 = qword_1000118B0;
    if (os_log_type_enabled(qword_1000118B0, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v21 = "[CLAuthPromptPayloadProvider createLearnedRouteAuthPromptPayloadWithBundlePath:completionHandler:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "%s called, but the feature is disabled; this is a programmer error", buf, 0xCu);
    }

    v11 = [(CLAuthPromptPayloadProvider *)self errorWithReason:@"this method should NEVER be called if the feature flag is off returning nil"];;
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (id)errorWithReason:(id)a3
{
  v3 = kCLErrorDomainPrivate;
  v8 = NSLocalizedDescriptionKey;
  v9 = a3;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [NSError errorWithDomain:v3 code:5 userInfo:v5];

  return v6;
}

@end