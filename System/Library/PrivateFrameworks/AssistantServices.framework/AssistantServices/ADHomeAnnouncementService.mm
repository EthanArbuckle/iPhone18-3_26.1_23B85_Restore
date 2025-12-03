@interface ADHomeAnnouncementService
+ (id)sharedService;
- (ADHomeAnnouncementService)initWithInstanceContext:(id)context;
- (BOOL)_shouldStopPlaybackWhenRequestBegins;
- (void)_stopPlayback;
- (void)_stopPlaybackIfNeeded;
- (void)requestLifecycleObserver:(id)observer requestWillBeginWithInfo:(id)info origin:(int64_t)origin client:(id)client;
- (void)stopPlayback;
@end

@implementation ADHomeAnnouncementService

- (BOOL)_shouldStopPlaybackWhenRequestBegins
{
  v2 = off_10058E9A8();

  return [v2 shouldStopPlaybackOnSiriActivation];
}

- (void)_stopPlayback
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADHomeAnnouncementService _stopPlayback]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Asking Announce to stop playing...", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v8 = 0x3032000000;
  v9 = sub_100316C8C;
  v10 = sub_100316C9C;
  v11 = 0;
  v3 = objc_alloc_init(off_10058E9A0());
  v4 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v3;

  v5 = *(*(&buf + 1) + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100316CA4;
  v6[3] = &unk_10051BC28;
  v6[4] = &buf;
  [v5 stopPlayingAnnouncementsWithCompletionHandler:v6];
  _Block_object_dispose(&buf, 8);
}

- (void)_stopPlaybackIfNeeded
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADHomeAnnouncementService _stopPlaybackIfNeeded]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Checking Announce state...", buf, 0xCu);
  }

  notifyObserver = self->_notifyObserver;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100316F8C;
  v5[3] = &unk_10051C2E0;
  v5[4] = self;
  [(AFNotifyObserver *)notifyObserver getStateWithCompletion:v5];
}

- (void)requestLifecycleObserver:(id)observer requestWillBeginWithInfo:(id)info origin:(int64_t)origin client:(id)client
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003170DC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (ADHomeAnnouncementService)initWithInstanceContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = ADHomeAnnouncementService;
  v5 = [(ADHomeAnnouncementService *)&v18 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.assistant.home-announcement-service", v6);

    queue = v5->_queue;
    v5->_queue = v7;

    if (contextCopy)
    {
      v9 = contextCopy;
    }

    else
    {
      v9 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = v9;

    v11 = off_10058E998();
    if (v11)
    {
      v12 = [[AFNotifyObserver alloc] initWithName:v11 options:1 queue:v5->_queue delegate:0];
      notifyObserver = v5->_notifyObserver;
      v5->_notifyObserver = v12;
    }

    else
    {
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v17 = v5->_instanceContext;
        *buf = 136315394;
        v20 = "[ADHomeAnnouncementService initWithInstanceContext:]";
        v21 = 2112;
        v22 = v17;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Unable to get the notification name for Announce state. (instanceContext = %@)", buf, 0x16u);
      }
    }

    v15 = +[ADRequestLifecycleObserver sharedObserver];
    [v15 addListener:v5];
  }

  return v5;
}

- (void)stopPlayback
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100317458;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

+ (id)sharedService
{
  if (qword_100590A10 != -1)
  {
    dispatch_once(&qword_100590A10, &stru_10051BC00);
  }

  v3 = qword_100590A18;

  return v3;
}

@end