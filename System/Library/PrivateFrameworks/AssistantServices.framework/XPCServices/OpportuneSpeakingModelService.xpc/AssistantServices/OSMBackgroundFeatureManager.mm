@interface OSMBackgroundFeatureManager
+ (id)sharedBackgroundFeatureManager;
- (BOOL)hasOngoingEvent;
- (id)_init;
- (id)motionConfidence;
- (id)musicPlayingState;
- (unint64_t)mediaType;
- (unint64_t)motionActivity;
- (void)dealloc;
- (void)startMonitoringActivity;
- (void)stopMonitoringActivity;
@end

@implementation OSMBackgroundFeatureManager

- (unint64_t)mediaType
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  v8 = v3;
  AFGetNowPlayingInfoDictionary();
  v5 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v8, v5);
  v6 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)musicPlayingState
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000057C4;
  v13 = sub_1000057D4;
  v14 = objc_alloc_init(SAMPQueueState);
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  v8 = v3;
  AFGetNowPlayingQueueState();
  v5 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v8, v5);
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)motionConfidence
{
  motionActivity = self->_motionActivity;
  if (motionActivity && (v3 = [(CMMotionActivity *)motionActivity confidence], v3 <= 2))
  {
    return off_100010588[v3];
  }

  else
  {
    return @"None";
  }
}

- (unint64_t)motionActivity
{
  result = self->_motionActivity;
  if (result)
  {
    if ([result stationary] && -[CMMotionActivity automotive](self->_motionActivity, "automotive"))
    {
      return 6;
    }

    else if ([(CMMotionActivity *)self->_motionActivity stationary])
    {
      return 1;
    }

    else if ([(CMMotionActivity *)self->_motionActivity walking])
    {
      return 2;
    }

    else if ([(CMMotionActivity *)self->_motionActivity running])
    {
      return 3;
    }

    else if ([(CMMotionActivity *)self->_motionActivity cycling])
    {
      return 4;
    }

    else if ([(CMMotionActivity *)self->_motionActivity automotive])
    {
      return 5;
    }

    else if ([(CMMotionActivity *)self->_motionActivity unknown])
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)stopMonitoringActivity
{
  motionActivityManager = self->_motionActivityManager;
  if (motionActivityManager)
  {
    v4 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315138;
      v6 = "[OSMBackgroundFeatureManager stopMonitoringActivity]";
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s OSM Stoping User Activity Monitoring.", &v5, 0xCu);
      motionActivityManager = self->_motionActivityManager;
    }

    [(CMMotionActivityManager *)motionActivityManager stopActivityUpdates];
  }
}

- (void)startMonitoringActivity
{
  v3 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[OSMBackgroundFeatureManager startMonitoringActivity]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s OSM Starting User Activity Monitoring.", buf, 0xCu);
  }

  if (!self->_motionActivityManager)
  {
    v4 = objc_alloc_init(CMMotionActivityManager);
    motionActivityManager = self->_motionActivityManager;
    self->_motionActivityManager = v4;
  }

  v6 = objc_alloc_init(NSOperationQueue);
  motionActivityQueue = self->_motionActivityQueue;
  self->_motionActivityQueue = v6;

  [(NSOperationQueue *)self->_motionActivityQueue setUnderlyingQueue:self->_queue];
  v8 = self->_motionActivityManager;
  v9 = self->_motionActivityQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005B54;
  v10[3] = &unk_100010518;
  v10[4] = self;
  [(CMMotionActivityManager *)v8 startActivityUpdatesToQueue:v9 withHandler:v10];
}

- (BOOL)hasOngoingEvent
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005C58;
  block[3] = &unk_1000104F0;
  v9 = v3;
  v10 = &v11;
  block[4] = self;
  v5 = v3;
  dispatch_async(queue, block);
  v6 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v5, v6);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (void)dealloc
{
  [(OSMBackgroundFeatureManager *)self stopMonitoringActivity];
  v3.receiver = self;
  v3.super_class = OSMBackgroundFeatureManager;
  [(OSMBackgroundFeatureManager *)&v3 dealloc];
}

- (id)_init
{
  v12.receiver = self;
  v12.super_class = OSMBackgroundFeatureManager;
  v2 = [(OSMBackgroundFeatureManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("OSMBackgroundFeatureManager", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(EKEventStore);
    eventStore = v2->_eventStore;
    v2->_eventStore = v6;

    v8 = objc_alloc_init(AFOpportuneSpeakingModelFeedbackManager);
    feedbackManager = v2->_feedbackManager;
    v2->_feedbackManager = v8;

    if (+[CMMotionActivityManager isActivityAvailable])
    {
      [(OSMBackgroundFeatureManager *)v2 startMonitoringActivity];
    }

    else
    {
      v10 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v14 = "[OSMBackgroundFeatureManager _init]";
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s CMMotionActivity unavailable.", buf, 0xCu);
      }
    }
  }

  return v2;
}

+ (id)sharedBackgroundFeatureManager
{
  if (qword_1000155D0 != -1)
  {
    dispatch_once(&qword_1000155D0, &stru_1000104A0);
  }

  v3 = qword_1000155D8;

  return v3;
}

@end