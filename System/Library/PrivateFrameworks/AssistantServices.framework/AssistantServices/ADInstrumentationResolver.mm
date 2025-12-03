@interface ADInstrumentationResolver
- (ADInstrumentationResolver)init;
- (ADInstrumentationResolver)initWithQueue:(id)queue;
- (id)wallClockTimeForTimestamp:(unint64_t)timestamp;
- (void)buildDeviceDynamicContextRelativeToTimestamp:(unint64_t)timestamp withCompletion:(id)completion;
- (void)logInstrumentationOfType:(id)type machAbsoluteTime:(unint64_t)time turnIdentifier:(id)identifier;
@end

@implementation ADInstrumentationResolver

- (id)wallClockTimeForTimestamp:(unint64_t)timestamp
{
  v3 = +[NSDate date];
  mach_absolute_time();
  AFMachAbsoluteTimeGetTimeInterval();
  v5 = v4;
  AFMachAbsoluteTimeGetTimeInterval();
  v7 = [NSDate dateWithTimeInterval:v3 sinceDate:v6 - v5];

  return v7;
}

- (void)buildDeviceDynamicContextRelativeToTimestamp:(unint64_t)timestamp withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = [(ADInstrumentationResolver *)self wallClockTimeForTimestamp:timestamp];
  v8 = objc_alloc_init(SISchemaDeviceDynamicContext);
  [v7 timeIntervalSince1970];
  [v8 setTimeIntervalSince1970:?];
  v9 = +[ADCommandCenter sharedCommandCenter];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10022C208;
  v12[3] = &unk_100517310;
  v13 = v8;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  [v9 fetchLastLocationWithCompletion:v12];
}

- (void)logInstrumentationOfType:(id)type machAbsoluteTime:(unint64_t)time turnIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  if (!typeCopy)
  {
    v13 = AFSiriLogContextAnalytics;
    if (!os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 136315138;
    v22 = "[ADInstrumentationResolver logInstrumentationOfType:machAbsoluteTime:turnIdentifier:]";
    v14 = "%s Nil instrumentation class provided";
    v15 = v13;
    v16 = 12;
LABEL_9:
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    goto LABEL_7;
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [typeCopy isEqualToString:v11];

  if (!v12)
  {
    v17 = AFSiriLogContextAnalytics;
    if (!os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v22 = "[ADInstrumentationResolver logInstrumentationOfType:machAbsoluteTime:turnIdentifier:]";
    v23 = 2112;
    v24 = typeCopy;
    v14 = "%s Unsupported instrumentation class provided %@";
    v15 = v17;
    v16 = 22;
    goto LABEL_9;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10022C5E0;
  v18[3] = &unk_1005172E8;
  timeCopy = time;
  v19 = identifierCopy;
  [(ADInstrumentationResolver *)self buildDeviceDynamicContextRelativeToTimestamp:time withCompletion:v18];

LABEL_7:
}

- (ADInstrumentationResolver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = ADInstrumentationResolver;
  v6 = [(ADInstrumentationResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_externalQueue, queue);
  }

  return v7;
}

- (ADInstrumentationResolver)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ADInstrumentationResolver.m" lineNumber:56 description:{@"%s is marked as NS_UNAVAILABLE. Use 'initWithQueue:' instead.", "-[ADInstrumentationResolver init]"}];

  return 0;
}

@end