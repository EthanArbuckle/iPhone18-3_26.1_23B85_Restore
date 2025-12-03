@interface ADSiriAnalyticsServiceHost
+ (id)sharedSiriAnalyticsServiceHost;
- (ADSiriAnalyticsServiceHost)init;
- (BOOL)_siriOrDictationIsEnabled;
- (id)messageStream;
- (void)writeLogViewerIdentifierDefaults;
@end

@implementation ADSiriAnalyticsServiceHost

- (BOOL)_siriOrDictationIsEnabled
{
  if (([(AssistantSiriAnalyticsConfiguration *)self->_assistantAnalyticsConfiguration assistantEnabled]& 1) != 0)
  {
    return 1;
  }

  assistantAnalyticsConfiguration = self->_assistantAnalyticsConfiguration;

  return [(AssistantSiriAnalyticsConfiguration *)assistantAnalyticsConfiguration dictationEnabled];
}

- (void)writeLogViewerIdentifierDefaults
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D02AC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)messageStream
{
  v2 = +[AssistantSiriAnalytics sharedAnalytics];
  defaultMessageStream = [v2 defaultMessageStream];

  return defaultMessageStream;
}

- (ADSiriAnalyticsServiceHost)init
{
  v18.receiver = self;
  v18.super_class = ADSiriAnalyticsServiceHost;
  v2 = [(ADSiriAnalyticsServiceHost *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create(0, v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(ADSiriAnalyticsAssistantConfiguration);
    assistantAnalyticsConfiguration = v2->_assistantAnalyticsConfiguration;
    v2->_assistantAnalyticsConfiguration = v7;

    v9 = [[AssistantSiriAnalyticsService alloc] initWithQueue:v2->_queue delegate:v2];
    siriAnalyticsService = v2->_siriAnalyticsService;
    v2->_siriAnalyticsService = v9;

    v11 = [[ADSiriAnalyticsGlobalDimensionMessageResolver alloc] initWithQueue:v2->_queue];
    globalDimensionsResolver = v2->_globalDimensionsResolver;
    v2->_globalDimensionsResolver = v11;

    [(AssistantSiriAnalyticsService *)v2->_siriAnalyticsService registerMessageResolver:v2->_globalDimensionsResolver];
    v13 = v2->_siriAnalyticsService;
    v14 = [[ADSiriAnalyticsPhoneCallStateObserver alloc] initWithDelegate:v13 queue:v2->_queue];
    [(AssistantSiriAnalyticsService *)v13 registerSensitiveConditionsObserver:v14];

    v15 = v2->_siriAnalyticsService;
    v16 = [[ADSiriAnalyticsHIPAAOptInStateObserver alloc] initWithDelegate:v15 queue:v2->_queue];
    [(AssistantSiriAnalyticsService *)v15 registerSensitiveConditionsObserver:v16];
  }

  return v2;
}

+ (id)sharedSiriAnalyticsServiceHost
{
  if (qword_10058FFE8 != -1)
  {
    dispatch_once(&qword_10058FFE8, &stru_100510CE0);
  }

  v3 = qword_10058FFF0;

  return v3;
}

@end