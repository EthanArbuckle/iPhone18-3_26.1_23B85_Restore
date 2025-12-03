@interface ADAnnouncementRequest
- (ADAnnouncementRequest)initWithAnnouncementRequestType:(unint64_t)type platform:(int64_t)platform completion:(id)completion;
- (ADAnnouncementRequest)initWithRemoteAnnouncement:(id)announcement completion:(id)completion;
- (id)_initWithAnnouncementRequestType:(unint64_t)type platform:(int64_t)platform announcementIdentifier:(id)identifier timeOfRequestArrival:(id)arrival startLocalRequest:(id)request completion:(id)completion;
- (void)completeRequestWithSuccess:(BOOL)success forReason:(int64_t)reason shouldEmitInstrumentationEvent:(BOOL)event;
- (void)dealloc;
@end

@implementation ADAnnouncementRequest

- (void)dealloc
{
  if (self->_completion)
  {
    [ADExternalNotificationInstrumentationEmitter emitCoreAnalyticsEventForAnnouncementRequest:self completionReason:0];
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v6 = "[ADAnnouncementRequest dealloc]";
      v7 = 2112;
      selfCopy = self;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Dealloc before completion called for announce request: %@", buf, 0x16u);
    }

    (*(self->_completion + 2))();
  }

  v4.receiver = self;
  v4.super_class = ADAnnouncementRequest;
  [(ADAnnouncementRequest *)&v4 dealloc];
}

- (void)completeRequestWithSuccess:(BOOL)success forReason:(int64_t)reason shouldEmitInstrumentationEvent:(BOOL)event
{
  completion = self->_completion;
  if (completion)
  {
    successCopy = success;
    if (event)
    {
      [ADExternalNotificationInstrumentationEmitter emitCoreAnalyticsEventForAnnouncementRequest:self completionReason:reason];
      completion = self->_completion;
    }

    completion[2](completion, successCopy, success, reason);
    v8 = self->_completion;
    self->_completion = 0;
  }
}

- (ADAnnouncementRequest)initWithRemoteAnnouncement:(id)announcement completion:(id)completion
{
  completionCopy = completion;
  announcementCopy = announcement;
  announcementPlatform = [announcementCopy announcementPlatform];
  unsignedIntValue = [announcementPlatform unsignedIntValue];

  announcementType = [announcementCopy announcementType];
  unsignedIntValue2 = [announcementType unsignedIntValue];

  startLocalRequest = [announcementCopy startLocalRequest];
  v13 = [NSUUID alloc];
  announcementIdentifier = [announcementCopy announcementIdentifier];

  v15 = [v13 initWithUUIDString:announcementIdentifier];
  v16 = +[NSDate date];
  v17 = [(ADAnnouncementRequest *)self _initWithAnnouncementRequestType:unsignedIntValue2 platform:unsignedIntValue announcementIdentifier:v15 timeOfRequestArrival:v16 startLocalRequest:startLocalRequest completion:completionCopy];

  return v17;
}

- (ADAnnouncementRequest)initWithAnnouncementRequestType:(unint64_t)type platform:(int64_t)platform completion:(id)completion
{
  completionCopy = completion;
  v9 = +[NSUUID UUID];
  v10 = +[NSDate date];
  v11 = [(ADAnnouncementRequest *)self _initWithAnnouncementRequestType:type platform:platform announcementIdentifier:v9 timeOfRequestArrival:v10 startLocalRequest:0 completion:completionCopy];

  return v11;
}

- (id)_initWithAnnouncementRequestType:(unint64_t)type platform:(int64_t)platform announcementIdentifier:(id)identifier timeOfRequestArrival:(id)arrival startLocalRequest:(id)request completion:(id)completion
{
  identifierCopy = identifier;
  requestCopy = request;
  completionCopy = completion;
  v25.receiver = self;
  v25.super_class = ADAnnouncementRequest;
  v17 = [(ADAnnouncementRequest *)&v25 init];
  v18 = v17;
  if (v17)
  {
    v17->_requestType = type;
    v19 = [completionCopy copy];
    completion = v18->_completion;
    v18->_completion = v19;

    v18->_platform = platform;
    objc_storeStrong(&v18->_announcementIdentifier, identifier);
    v21 = +[NSDate date];
    timeOfRequestArrival = v18->_timeOfRequestArrival;
    v18->_timeOfRequestArrival = v21;

    objc_storeStrong(&v18->_startLocalRequest, request);
    v18->_requiresOpportuneTime = 0;
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v27 = "[ADAnnouncementRequest _initWithAnnouncementRequestType:platform:announcementIdentifier:timeOfRequestArrival:startLocalRequest:completion:]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Going to skip Opportune Speaking Module since the platform is not headphones", buf, 0xCu);
    }

    v18->_shouldSkipTriggerlessReply = platform != 1;
  }

  return v18;
}

@end