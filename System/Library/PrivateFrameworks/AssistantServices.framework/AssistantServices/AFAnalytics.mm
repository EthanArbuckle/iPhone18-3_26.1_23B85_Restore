@interface AFAnalytics
+ (id)sharedAnalytics;
- (AFAnalytics)init;
- (AFAnalytics)initWithInstanceContext:(id)context;
- (id)_ad_contextLoggerWithEventType:(int64_t)type context:(id)context completion:(id)completion;
- (id)_service:(BOOL)_service;
- (void)_stageEvent:(id)event;
- (void)_stageEvents:(id)events;
- (void)barrier:(id)barrier;
- (void)beginEventsGrouping;
- (void)boostQueuedEvents:(id)events;
- (void)configureForDaemon;
- (void)endEventsGrouping;
- (void)logEvent:(id)event;
- (void)logEventWithType:(int64_t)type context:(id)context;
- (void)logEventWithType:(int64_t)type context:(id)context contextNoCopy:(BOOL)copy;
- (void)logEventWithType:(int64_t)type contextProvider:(id)provider;
- (void)logEventWithType:(int64_t)type contextProvider:(id)provider contextProvidingQueue:(id)queue;
- (void)logEventWithType:(int64_t)type contextResolver:(id)resolver;
- (void)logEventWithType:(int64_t)type machAbsoluteTime:(unint64_t)time context:(id)context;
- (void)logEventWithType:(int64_t)type machAbsoluteTime:(unint64_t)time context:(id)context contextNoCopy:(BOOL)copy;
- (void)logEventWithType:(int64_t)type machAbsoluteTime:(unint64_t)time contextProvider:(id)provider contextProvidingQueue:(id)queue;
- (void)logEventWithType:(int64_t)type machAbsoluteTime:(unint64_t)time contextResolver:(id)resolver;
- (void)logEvents:(id)events;
- (void)logInstrumentation:(id)instrumentation machAbsoluteTime:(unint64_t)time turnContext:(id)context;
- (void)logInstrumentation:(id)instrumentation machAbsoluteTime:(unint64_t)time turnIdentifier:(id)identifier;
- (void)logInstrumentation:(id)instrumentation turnContext:(id)context;
- (void)logInstrumentationOfType:(Class)type machAbsoluteTime:(unint64_t)time turnIdentifier:(id)identifier;
- (void)logInstrumentationOfType:(Class)type turnIdentifier:(id)identifier;
- (void)setService:(id)service;
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

- (id)_ad_contextLoggerWithEventType:(int64_t)type context:(id)context completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011CA5C;
  v11[3] = &unk_100519310;
  v11[4] = self;
  contextCopy = context;
  completionCopy = completion;
  typeCopy = type;
  v7 = completionCopy;
  v8 = contextCopy;
  v9 = objc_retainBlock(v11);

  return v9;
}

- (id)_service:(BOOL)_service
{
  p_service = &self->_service;
  service = self->_service;
  if (service)
  {
    v5 = 1;
  }

  else
  {
    v5 = !_service;
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

- (void)_stageEvents:(id)events
{
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v4 = [(AFAnalytics *)self _service:1];
    [v4 stageEvents:eventsCopy completion:0];
  }
}

- (void)_stageEvent:(id)event
{
  if (event)
  {
    eventCopy = event;
    v5 = [(AFAnalytics *)self _service:1];
    v7 = eventCopy;
    v6 = [NSArray arrayWithObjects:&v7 count:1];

    [v5 stageEvents:v6 completion:0];
  }
}

- (void)barrier:(id)barrier
{
  barrierCopy = barrier;
  v5 = barrierCopy;
  if (barrierCopy)
  {
    p_queue = &self->_queue;
    queue = self->_queue;
    v7 = p_queue[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100236D9C;
    block[3] = &unk_10051CF58;
    v10 = barrierCopy;
    dispatch_group_notify(v7, queue, block);
  }
}

- (void)logEvents:(id)events
{
  eventsCopy = events;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100236E44;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = eventsCopy;
  v6 = eventsCopy;
  dispatch_async(queue, v7);
}

- (void)logEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100236EE8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

- (void)logEventWithType:(int64_t)type machAbsoluteTime:(unint64_t)time contextResolver:(id)resolver
{
  if (resolver)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100236FD4;
    v7[3] = &unk_100517638;
    v7[4] = self;
    v7[5] = type;
    v7[6] = time;
    (*(resolver + 2))(resolver, v7);
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100237078;
    v6[3] = &unk_10051C678;
    v6[5] = type;
    v6[6] = time;
    v6[4] = self;
    dispatch_async(queue, v6);
  }
}

- (void)logEventWithType:(int64_t)type machAbsoluteTime:(unint64_t)time contextProvider:(id)provider contextProvidingQueue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  if (queueCopy)
  {
    dispatch_group_enter(self->_group);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10023726C;
    v18[3] = &unk_100517610;
    v19[1] = type;
    v19[2] = time;
    v12 = v19;
    v18[4] = self;
    v19[0] = providerCopy;
    v13 = v18;
    queueCopy2 = queueCopy;
  }

  else
  {
    queue = self->_queue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10023731C;
    v16[3] = &unk_100517610;
    v17[1] = type;
    v17[2] = time;
    v12 = v17;
    v16[4] = self;
    v17[0] = providerCopy;
    v13 = v16;
    queueCopy2 = queue;
  }

  dispatch_async(queueCopy2, v13);
}

- (void)logEventWithType:(int64_t)type machAbsoluteTime:(unint64_t)time context:(id)context contextNoCopy:(BOOL)copy
{
  copyCopy = copy;
  contextCopy = context;
  v11 = contextCopy;
  if (copyCopy)
  {
    v12 = contextCopy;
  }

  else
  {
    v12 = [contextCopy copy];
  }

  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002374D0;
  v15[3] = &unk_10051D278;
  typeCopy = type;
  timeCopy = time;
  v16 = v12;
  selfCopy = self;
  v14 = v12;
  dispatch_async(queue, v15);
}

- (void)setService:(id)service
{
  serviceCopy = service;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002375C8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = serviceCopy;
  v6 = serviceCopy;
  dispatch_async(queue, v7);
}

- (void)boostQueuedEvents:(id)events
{
  eventsCopy = events;
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
  v9 = eventsCopy;
  v6 = eventsCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, v8);
  dispatch_async(self->_queue, v7);
}

- (void)logInstrumentationOfType:(Class)type machAbsoluteTime:(unint64_t)time turnIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100237894;
  v11[3] = &unk_1005175E8;
  typeCopy = type;
  timeCopy = time;
  v11[4] = self;
  v12 = identifierCopy;
  v10 = identifierCopy;
  dispatch_async(queue, v11);
}

- (void)logInstrumentationOfType:(Class)type turnIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(AFAnalytics *)self logInstrumentationOfType:type machAbsoluteTime:mach_absolute_time() turnIdentifier:identifierCopy];
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

- (void)logInstrumentation:(id)instrumentation machAbsoluteTime:(unint64_t)time turnContext:(id)context
{
  instrumentationCopy = instrumentation;
  contextCopy = context;
  v10 = +[AFPreferences sharedPreferences];
  isDictationHIPAACompliant = [v10 isDictationHIPAACompliant];

  if (isDictationHIPAACompliant)
  {
    v12 = AFSiriLogContextAnalytics;
    if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "[AFAnalytics logInstrumentation:machAbsoluteTime:turnContext:]";
      v31 = 2112;
      v32 = instrumentationCopy;
      v33 = 2112;
      v34 = contextCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Not logging instrumentation event %@ because we have HIPAA On-Device Dictation enabled: %@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  if (!instrumentationCopy)
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

  if (!time)
  {
    v19 = AFSiriLogContextAnalytics;
    if (!os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136315650;
    v30 = "[AFAnalytics logInstrumentation:machAbsoluteTime:turnContext:]";
    v31 = 2112;
    v32 = instrumentationCopy;
    v33 = 2112;
    v34 = contextCopy;
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
    v25 = contextCopy;
    v26 = instrumentationCopy;
    selfCopy = self;
    timeCopy = time;
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
      v34 = instrumentationCopy;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Not logging instrumentation type %@ because it is of an unknown type. Context: %@", buf, 0x20u);
    }
  }

LABEL_16:
}

- (void)logInstrumentation:(id)instrumentation machAbsoluteTime:(unint64_t)time turnIdentifier:(id)identifier
{
  identifierCopy = identifier;
  instrumentationCopy = instrumentation;
  v11 = objc_alloc_init(SISchemaClientTurnContext);
  v10 = AFTurnIdentifierGetBytes();

  [v11 setTurnID:v10];
  [(AFAnalytics *)self logInstrumentation:instrumentationCopy machAbsoluteTime:time turnContext:v11];
}

- (void)logInstrumentation:(id)instrumentation turnContext:(id)context
{
  contextCopy = context;
  instrumentationCopy = instrumentation;
  [(AFAnalytics *)self logInstrumentation:instrumentationCopy machAbsoluteTime:mach_absolute_time() turnContext:contextCopy];
}

- (void)logEventWithType:(int64_t)type contextResolver:(id)resolver
{
  resolverCopy = resolver;
  v6 = mach_absolute_time();
  kdebug_trace();
  [(AFAnalytics *)self logEventWithType:type machAbsoluteTime:v6 contextResolver:resolverCopy];
}

- (void)logEventWithType:(int64_t)type contextProvider:(id)provider contextProvidingQueue:(id)queue
{
  queueCopy = queue;
  providerCopy = provider;
  v9 = mach_absolute_time();
  kdebug_trace();
  [(AFAnalytics *)self logEventWithType:type machAbsoluteTime:v9 contextProvider:providerCopy contextProvidingQueue:queueCopy];
}

- (void)logEventWithType:(int64_t)type contextProvider:(id)provider
{
  providerCopy = provider;
  v6 = mach_absolute_time();
  kdebug_trace();
  [(AFAnalytics *)self logEventWithType:type machAbsoluteTime:v6 contextProvider:providerCopy contextProvidingQueue:0];
}

- (void)logEventWithType:(int64_t)type context:(id)context contextNoCopy:(BOOL)copy
{
  copyCopy = copy;
  contextCopy = context;
  v8 = mach_absolute_time();
  kdebug_trace();
  [(AFAnalytics *)self logEventWithType:type machAbsoluteTime:v8 context:contextCopy contextNoCopy:copyCopy];
}

- (void)logEventWithType:(int64_t)type context:(id)context
{
  contextCopy = context;
  v6 = mach_absolute_time();
  kdebug_trace();
  [(AFAnalytics *)self logEventWithType:type machAbsoluteTime:v6 context:contextCopy contextNoCopy:0];
}

- (void)logEventWithType:(int64_t)type machAbsoluteTime:(unint64_t)time context:(id)context
{
  contextCopy = context;
  if (time)
  {
    [(AFAnalytics *)self logEventWithType:type machAbsoluteTime:time context:contextCopy contextNoCopy:0];
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
      v17 = contextCopy;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Not logging event %@ because it has no associated time. Context: %@", &v12, 0x20u);
    }
  }
}

- (AFAnalytics)initWithInstanceContext:(id)context
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