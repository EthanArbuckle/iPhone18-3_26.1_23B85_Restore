@interface ADAnnouncementRequest
- (ADAnnouncementRequest)initWithAnnouncementRequestType:(unint64_t)a3 platform:(int64_t)a4 completion:(id)a5;
- (ADAnnouncementRequest)initWithRemoteAnnouncement:(id)a3 completion:(id)a4;
- (id)_initWithAnnouncementRequestType:(unint64_t)a3 platform:(int64_t)a4 announcementIdentifier:(id)a5 timeOfRequestArrival:(id)a6 startLocalRequest:(id)a7 completion:(id)a8;
- (void)completeRequestWithSuccess:(BOOL)a3 forReason:(int64_t)a4 shouldEmitInstrumentationEvent:(BOOL)a5;
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
      v8 = self;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Dealloc before completion called for announce request: %@", buf, 0x16u);
    }

    (*(self->_completion + 2))();
  }

  v4.receiver = self;
  v4.super_class = ADAnnouncementRequest;
  [(ADAnnouncementRequest *)&v4 dealloc];
}

- (void)completeRequestWithSuccess:(BOOL)a3 forReason:(int64_t)a4 shouldEmitInstrumentationEvent:(BOOL)a5
{
  completion = self->_completion;
  if (completion)
  {
    v7 = a3;
    if (a5)
    {
      [ADExternalNotificationInstrumentationEmitter emitCoreAnalyticsEventForAnnouncementRequest:self completionReason:a4];
      completion = self->_completion;
    }

    completion[2](completion, v7, a3, a4);
    v8 = self->_completion;
    self->_completion = 0;
  }
}

- (ADAnnouncementRequest)initWithRemoteAnnouncement:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 announcementPlatform];
  v9 = [v8 unsignedIntValue];

  v10 = [v7 announcementType];
  v11 = [v10 unsignedIntValue];

  v12 = [v7 startLocalRequest];
  v13 = [NSUUID alloc];
  v14 = [v7 announcementIdentifier];

  v15 = [v13 initWithUUIDString:v14];
  v16 = +[NSDate date];
  v17 = [(ADAnnouncementRequest *)self _initWithAnnouncementRequestType:v11 platform:v9 announcementIdentifier:v15 timeOfRequestArrival:v16 startLocalRequest:v12 completion:v6];

  return v17;
}

- (ADAnnouncementRequest)initWithAnnouncementRequestType:(unint64_t)a3 platform:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = +[NSUUID UUID];
  v10 = +[NSDate date];
  v11 = [(ADAnnouncementRequest *)self _initWithAnnouncementRequestType:a3 platform:a4 announcementIdentifier:v9 timeOfRequestArrival:v10 startLocalRequest:0 completion:v8];

  return v11;
}

- (id)_initWithAnnouncementRequestType:(unint64_t)a3 platform:(int64_t)a4 announcementIdentifier:(id)a5 timeOfRequestArrival:(id)a6 startLocalRequest:(id)a7 completion:(id)a8
{
  v14 = a5;
  v15 = a7;
  v16 = a8;
  v25.receiver = self;
  v25.super_class = ADAnnouncementRequest;
  v17 = [(ADAnnouncementRequest *)&v25 init];
  v18 = v17;
  if (v17)
  {
    v17->_requestType = a3;
    v19 = [v16 copy];
    completion = v18->_completion;
    v18->_completion = v19;

    v18->_platform = a4;
    objc_storeStrong(&v18->_announcementIdentifier, a5);
    v21 = +[NSDate date];
    timeOfRequestArrival = v18->_timeOfRequestArrival;
    v18->_timeOfRequestArrival = v21;

    objc_storeStrong(&v18->_startLocalRequest, a7);
    v18->_requiresOpportuneTime = 0;
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v27 = "[ADAnnouncementRequest _initWithAnnouncementRequestType:platform:announcementIdentifier:timeOfRequestArrival:startLocalRequest:completion:]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Going to skip Opportune Speaking Module since the platform is not headphones", buf, 0xCu);
    }

    v18->_shouldSkipTriggerlessReply = a4 != 1;
  }

  return v18;
}

@end