@interface ADAVSystemControllerLifecycleManager
+ (id)sharedManager;
- (ADAVSystemControllerLifecycleManager)init;
- (void)_flushPendingCompletions;
- (void)_setAVSystemController:(id)controller;
- (void)addObserver:(id)observer;
- (void)avSystemControllerDied:(id)died;
- (void)fetchAVSystemControllerInBackground;
- (void)getAVSystemControllerWithTimeout:(double)timeout completion:(id)completion;
- (void)removeObserver:(id)observer;
@end

@implementation ADAVSystemControllerLifecycleManager

- (void)_flushPendingCompletions
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_pendingCompletions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) invokeWithValue:{self->_avSystemController, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_pendingCompletions removeAllObjects];
}

- (void)_setAVSystemController:(id)controller
{
  controllerCopy = controller;
  avSystemController = self->_avSystemController;
  if (avSystemController != controllerCopy)
  {
    if (avSystemController)
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 removeObserver:self name:AVSystemController_ServerConnectionDiedNotification object:self->_avSystemController];
    }

    objc_storeStrong(&self->_avSystemController, controller);
    if (self->_avSystemController)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"avSystemControllerDied:" name:AVSystemController_ServerConnectionDiedNotification object:self->_avSystemController];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = self->_observers;
    v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * i) adAVSystemControllerDidChange:{self, v14}];
        }

        v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)avSystemControllerDied:(id)died
{
  diedCopy = died;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[ADAVSystemControllerLifecycleManager avSystemControllerDied:]";
    v10 = 2112;
    v11 = diedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s notification = %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163514;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
  [(ADAVSystemControllerLifecycleManager *)self fetchAVSystemControllerInBackground];
}

- (void)fetchAVSystemControllerInBackground
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100163594;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100163714;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001637B8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)getAVSystemControllerWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = [AFOneArgumentSafetyBlock alloc];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001638EC;
    v14[3] = &unk_100513900;
    v15 = completionCopy;
    v8 = [v7 initWithBlock:v14 defaultValue:0];
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001638FC;
    v11[3] = &unk_10051E128;
    v11[4] = self;
    v12 = v8;
    timeoutCopy = timeout;
    v10 = v8;
    dispatch_async(queue, v11);
  }
}

- (ADAVSystemControllerLifecycleManager)init
{
  v16.receiver = self;
  v16.super_class = ADAVSystemControllerLifecycleManager;
  v2 = [(ADAVSystemControllerLifecycleManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.assistant.avsystemcontroller.lifecycle-manager", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_DEFAULT, 0);

    v9 = dispatch_queue_create("com.apple.assistant.avsystemcontroller.access", v8);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v9;

    v11 = objc_alloc_init(NSMutableArray);
    pendingCompletions = v2->_pendingCompletions;
    v2->_pendingCompletions = v11;

    v13 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v13;

    [(ADAVSystemControllerLifecycleManager *)v2 fetchAVSystemControllerInBackground];
  }

  return v2;
}

+ (id)sharedManager
{
  if (qword_100590378 != -1)
  {
    dispatch_once(&qword_100590378, &stru_1005138D8);
  }

  v3 = qword_100590380;

  return v3;
}

@end