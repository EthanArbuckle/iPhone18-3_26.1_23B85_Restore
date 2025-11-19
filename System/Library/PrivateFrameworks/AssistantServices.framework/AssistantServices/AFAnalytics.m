@interface AFAnalytics
+ (id)sharedAnalytics;
- (AFAnalytics)init;
- (AFAnalytics)initWithInstanceContext:(id)a3;
- (id)_ad_contextLoggerWithEventType:(int64_t)a3 context:(id)a4 completion:(id)a5;
- (id)_service:(BOOL)a3;
- (void)_stageEvent:(id)a3;
- (void)_stageEvents:(id)a3;
- (void)barrier:(id)a3;
- (void)beginEventsGrouping;
- (void)boostQueuedEvents:(id)a3;
- (void)configureForDaemon;
- (void)endEventsGrouping;
- (void)logEvent:(id)a3;
- (void)logEventWithType:(int64_t)a3 context:(id)a4;
- (void)logEventWithType:(int64_t)a3 context:(id)a4 contextNoCopy:(BOOL)a5;
- (void)logEventWithType:(int64_t)a3 contextProvider:(id)a4;
- (void)logEventWithType:(int64_t)a3 contextProvider:(id)a4 contextProvidingQueue:(id)a5;
- (void)logEventWithType:(int64_t)a3 contextResolver:(id)a4;
- (void)logEventWithType:(int64_t)a3 machAbsoluteTime:(unint64_t)a4 context:(id)a5;
- (void)logEventWithType:(int64_t)a3 machAbsoluteTime:(unint64_t)a4 context:(id)a5 contextNoCopy:(BOOL)a6;
- (void)logEventWithType:(int64_t)a3 machAbsoluteTime:(unint64_t)a4 contextProvider:(id)a5 contextProvidingQueue:(id)a6;
- (void)logEventWithType:(int64_t)a3 machAbsoluteTime:(unint64_t)a4 contextResolver:(id)a5;
- (void)logEvents:(id)a3;
- (void)logInstrumentation:(id)a3 machAbsoluteTime:(unint64_t)a4 turnContext:(id)a5;
- (void)logInstrumentation:(id)a3 machAbsoluteTime:(unint64_t)a4 turnIdentifier:(id)a5;
- (void)logInstrumentation:(id)a3 turnContext:(id)a4;
- (void)logInstrumentationOfType:(Class)a3 machAbsoluteTime:(unint64_t)a4 turnIdentifier:(id)a5;
- (void)logInstrumentationOfType:(Class)a3 turnIdentifier:(id)a4;
- (void)setService:(id)a3;
@end

@implementation AFAnalytics

+ (id)sharedAnalytics
{
  if (qword_100590628 != -1)
  {
    dispatch_once(&qword_100590628, &stru_1005175C0);
  }

  v3 = qword_100590630;

  return v3;
}

- (void)configureForDaemon
{
  v3 = +[ADAnalyticsService sharedService];
  [(AFAnalytics *)self setService:v3];
}

- (id)_ad_contextLoggerWithEventType:(int64_t)a3 context:(id)a4 completion:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011CA5C;
  v11[3] = &unk_100519310;
  v11[4] = self;
  v12 = a4;
  v13 = a5;
  v14 = a3;
  v7 = v13;
  v8 = v12;
  v9 = objc_retainBlock(v11);

  return v9;
}

- (id)_service:(BOOL)a3
{
  p_service = &self->_service;
  service = self->_service;
  if (service)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
  }

  if (!v5)
  {
    if (qword_100590638 != -1)
    {
      dispatch_once(&qword_100590638, &stru_100517658);
    }

    objc_storeStrong(p_service, qword_100590640);
    service = *p_service;
  }

  return service;
}

- (void)_stageEvents:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [(AFAnalytics *)self _service:1];
    [v4 stageEvents:v5 completion:0];
  }
}

- (void)_stageEvent:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(AFAnalytics *)self _service:1];
    v7 = v4;
    v6 = [NSArray arrayWithObjects:&v7 count:1];

    [v5 stageEvents:v6 completion:0];
  }
}

- (void)barrier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    p_queue = &self->_queue;
    queue = self->_queue;
    v7 = p_queue[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100236D9C;
    block[3] = &unk_10051CF58;
    v10 = v4;
    dispatch_group_notify(v7, queue, block);
  }
}

- (void)logEvents:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100236E44;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)logEvent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100236EE8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)logEventWithType:(int64_t)a3 machAbsoluteTime:(unint64_t)a4 contextResolver:(id)a5
{
  if (a5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100236FD4;
    v7[3] = &unk_100517638;
    v7[4] = self;
    v7[5] = a3;
    v7[6] = a4;
    (*(a5 + 2))(a5, v7);
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100237078;
    v6[3] = &unk_10051C678;
    v6[5] = a3;
    v6[6] = a4;
    v6[4] = self;
    dispatch_async(queue, v6);
  }
}

- (void)logEventWithType:(int64_t)a3 machAbsoluteTime:(unint64_t)a4 contextProvider:(id)a5 contextProvidingQueue:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (v11)
  {
    dispatch_group_enter(self->_group);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10023726C;
    v18[3] = &unk_100517610;
    v19[1] = a3;
    v19[2] = a4;
    v12 = v19;
    v18[4] = self;
    v19[0] = v10;
    v13 = v18;
    v14 = v11;
  }

  else
  {
    queue = self->_queue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10023731C;
    v16[3] = &unk_100517610;
    v17[1] = a3;
    v17[2] = a4;
    v12 = v17;
    v16[4] = self;
    v17[0] = v10;
    v13 = v16;
    v14 = queue;
  }

  dispatch_async(v14, v13);
}

- (void)logEventWithType:(int64_t)a3 machAbsoluteTime:(unint64_t)a4 context:(id)a5 contextNoCopy:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = v10;
  if (v6)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v10 copy];
  }

  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002374D0;
  v15[3] = &unk_10051D278;
  v18 = a3;
  v19 = a4;
  v16 = v12;
  v17 = self;
  v14 = v12;
  dispatch_async(queue, v15);
}

- (void)setService:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002375C8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)boostQueuedEvents:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[AFAnalytics boostQueuedEvents:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100237714;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v8);
  dispatch_async(self->_queue, v7);
}

- (void)logInstrumentationOfType:(Class)a3 machAbsoluteTime:(unint64_t)a4 turnIdentifier:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100237894;
  v11[3] = &unk_1005175E8;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, v11);
}

- (void)logInstrumentationOfType:(Class)a3 turnIdentifier:(id)a4
{
  v6 = a4;
  [(AFAnalytics *)self logInstrumentationOfType:a3 machAbsoluteTime:mach_absolute_time() turnIdentifier:v6];
}

- (void)endEventsGrouping
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002379DC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)beginEventsGrouping
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100237A98;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)logInstrumentation:(id)a3 machAbsoluteTime:(unint64_t)a4 turnContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[AFPreferences sharedPreferences];
  v11 = [v10 isDictationHIPAACompliant];

  if (v11)
  {
    v12 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "[AFAnalytics logInstrumentation:machAbsoluteTime:turnContext:]";
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Not logging instrumentation event %@ because we have HIPAA On-Device Dictation enabled: %@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  if (!v8)
  {
    v15 = AFSiriLogContextAnalytics;
    if (!os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v30 = "[AFAnalytics logInstrumentation:machAbsoluteTime:turnContext:]";
    v16 = "%s Attempted to log nil instrumentation event.";
    v17 = v15;
    v18 = 12;
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    goto LABEL_16;
  }

  if (!a4)
  {
    v19 = AFSiriLogContextAnalytics;
    if (!os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315650;
    v30 = "[AFAnalytics logInstrumentation:machAbsoluteTime:turnContext:]";
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    v16 = "%s Not logging instrumentation event %@ because it has no associated time. Turn context: %@";
    v17 = v19;
    v18 = 32;
    goto LABEL_12;
  }

  objc_opt_class();
  v13 = SIReflectionInferEventTypeFromClass();
  if (v13)
  {
    queue = self->_queue;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100237DF4;
    v24[3] = &unk_10051DBB8;
    v25 = v9;
    v26 = v8;
    v27 = self;
    v28 = a4;
    dispatch_async(queue, v24);
  }

  else
  {
    v20 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 136315650;
      v30 = "[AFAnalytics logInstrumentation:machAbsoluteTime:turnContext:]";
      v31 = 2112;
      v32 = v23;
      v33 = 2112;
      v34 = v8;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Not logging instrumentation type %@ because it is of an unknown type. Context: %@", buf, 0x20u);
    }
  }

LABEL_16:
}

- (void)logInstrumentation:(id)a3 machAbsoluteTime:(unint64_t)a4 turnIdentifier:(id)a5
{
  v8 = a5;
  v9 = a3;
  v11 = objc_alloc_init(SISchemaClientTurnContext);
  v10 = AFTurnIdentifierGetBytes();

  [v11 setTurnID:v10];
  [(AFAnalytics *)self logInstrumentation:v9 machAbsoluteTime:a4 turnContext:v11];
}

- (void)logInstrumentation:(id)a3 turnContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AFAnalytics *)self logInstrumentation:v7 machAbsoluteTime:mach_absolute_time() turnContext:v6];
}

- (void)logEventWithType:(int64_t)a3 contextResolver:(id)a4
{
  v7 = a4;
  v6 = mach_absolute_time();
  kdebug_trace();
  [(AFAnalytics *)self logEventWithType:a3 machAbsoluteTime:v6 contextResolver:v7];
}

- (void)logEventWithType:(int64_t)a3 contextProvider:(id)a4 contextProvidingQueue:(id)a5
{
  v8 = a5;
  v10 = a4;
  v9 = mach_absolute_time();
  kdebug_trace();
  [(AFAnalytics *)self logEventWithType:a3 machAbsoluteTime:v9 contextProvider:v10 contextProvidingQueue:v8];
}

- (void)logEventWithType:(int64_t)a3 contextProvider:(id)a4
{
  v7 = a4;
  v6 = mach_absolute_time();
  kdebug_trace();
  [(AFAnalytics *)self logEventWithType:a3 machAbsoluteTime:v6 contextProvider:v7 contextProvidingQueue:0];
}

- (void)logEventWithType:(int64_t)a3 context:(id)a4 contextNoCopy:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  v8 = mach_absolute_time();
  kdebug_trace();
  [(AFAnalytics *)self logEventWithType:a3 machAbsoluteTime:v8 context:v9 contextNoCopy:v5];
}

- (void)logEventWithType:(int64_t)a3 context:(id)a4
{
  v7 = a4;
  v6 = mach_absolute_time();
  kdebug_trace();
  [(AFAnalytics *)self logEventWithType:a3 machAbsoluteTime:v6 context:v7 contextNoCopy:0];
}

- (void)logEventWithType:(int64_t)a3 machAbsoluteTime:(unint64_t)a4 context:(id)a5
{
  v8 = a5;
  if (a4)
  {
    [(AFAnalytics *)self logEventWithType:a3 machAbsoluteTime:a4 context:v8 contextNoCopy:0];
  }

  else
  {
    v9 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = AFAnalyticsEventTypeGetName();
      v12 = 136315650;
      v13 = "[AFAnalytics logEventWithType:machAbsoluteTime:context:]";
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Not logging event %@ because it has no associated time. Context: %@", &v12, 0x20u);
    }
  }
}

- (AFAnalytics)initWithInstanceContext:(id)a3
{
  v11.receiver = self;
  v11.super_class = AFAnalytics;
  v3 = [(AFAnalytics *)&v11 init];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);

    v6 = dispatch_queue_create("com.apple.assistant.analytics.client", v5);
    queue = v3->_queue;
    v3->_queue = v6;

    v8 = dispatch_group_create();
    group = v3->_group;
    v3->_group = v8;
  }

  return v3;
}

- (AFAnalytics)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"AFAnalytics.m" lineNumber:41 description:{@"%s is marked as NS_UNAVAILABLE. Use the designated initializer instead.", "-[AFAnalytics init]"}];

  return 0;
}

@end