@interface ADOpportuneSpeakingStateManager
- (ADOpportuneSpeakingStateManager)initWithQueue:(id)queue;
- (void)_listeningEdgeDetectorIDsChanged;
- (void)beginListeningForEdgeDetectorWithID:(id)d;
- (void)endListeningForEdgeDetectorWithID:(id)d;
@end

@implementation ADOpportuneSpeakingStateManager

- (void)_listeningEdgeDetectorIDsChanged
{
  v3 = [(NSMutableSet *)self->_listeningEdgeDetectorIDs count]!= 0;
  statePublisher = self->_statePublisher;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002277D8;
  v5[3] = &unk_100517118;
  v6 = v3;
  [(AFNotifyStatePublisher *)statePublisher publishStateWithBlock:v5];
}

- (void)endListeningForEdgeDetectorWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v10 = "[ADOpportuneSpeakingStateManager endListeningForEdgeDetectorWithID:]";
      v11 = 2112;
      v12 = dCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s edgeDetectorID = %@", buf, 0x16u);
    }

    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002279E8;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = dCopy;
    dispatch_async(queue, v7);
  }
}

- (void)beginListeningForEdgeDetectorWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v10 = "[ADOpportuneSpeakingStateManager beginListeningForEdgeDetectorWithID:]";
      v11 = 2112;
      v12 = dCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s edgeDetectorID = %@", buf, 0x16u);
    }

    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100227B60;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = dCopy;
    dispatch_async(queue, v7);
  }
}

- (ADOpportuneSpeakingStateManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = ADOpportuneSpeakingStateManager;
  v6 = [(ADOpportuneSpeakingStateManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(NSMutableSet);
    listeningEdgeDetectorIDs = v7->_listeningEdgeDetectorIDs;
    v7->_listeningEdgeDetectorIDs = v8;

    v10 = [AFNotifyStatePublisher alloc];
    v11 = [[NSString alloc] initWithUTF8String:"com.apple.siri.opportune-speaking-module-state-changed"];
    v12 = [v10 initWithName:v11 queue:v7->_queue];
    statePublisher = v7->_statePublisher;
    v7->_statePublisher = v12;
  }

  return v7;
}

@end