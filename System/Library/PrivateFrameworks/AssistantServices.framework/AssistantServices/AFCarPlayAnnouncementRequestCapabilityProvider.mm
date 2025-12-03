@interface AFCarPlayAnnouncementRequestCapabilityProvider
+ (id)announceableIntentIdentifiersForUserNotificationAnnouncementType:(int64_t)type;
+ (id)provider;
+ (id)requiredIntentIdentifiersForUserNotificationAnnouncementType:(int64_t)type;
- (AFCarPlayAnnouncementRequestCapabilityProvider)initWithQueue:(id)queue;
- (BOOL)currentlyAbleToAnnounce;
- (void)_availableAnnouncementRequestTypesForCarPlayConnectionWithCompletion:(id)completion;
- (void)_isCarPlayConnectedWithCompletion:(id)completion;
- (void)_notifyObserversOfUpdatedAvailableAnnouncementRequestTypes:(unint64_t)types;
- (void)_setLastKnownAvailableAnnouncementRequestTypesAndNotifyObservers:(unint64_t)observers;
- (void)_updateForCarPlaySessionConnected:(BOOL)connected;
- (void)fetchAvailableAnnouncementRequestTypesWithCompletion:(id)completion;
- (void)fetchEligibleAnnouncementRequestTypesWithCompletion:(id)completion;
- (void)isCarPlayConnectedWithCompletion:(id)completion;
- (void)updateForCarPlaySessionConnected:(BOOL)connected;
@end

@implementation AFCarPlayAnnouncementRequestCapabilityProvider

- (void)_notifyObserversOfUpdatedAvailableAnnouncementRequestTypes:(unint64_t)types
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v17 = "[AFCarPlayAnnouncementRequestCapabilityProvider _notifyObserversOfUpdatedAvailableAnnouncementRequestTypes:]";
    v18 = 2048;
    typesCopy = types;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Notifying observers, available announcement request types changed: %lu", buf, 0x16u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_delegates;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) provider:self availableAnnouncementRequestTypesChanged:{types, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_setLastKnownAvailableAnnouncementRequestTypesAndNotifyObservers:(unint64_t)observers
{
  if (self->_lastKnownAvailableAnnouncementRequestTypes != observers)
  {
    self->_lastKnownAvailableAnnouncementRequestTypes = observers;
    [(AFCarPlayAnnouncementRequestCapabilityProvider *)self _notifyObserversOfUpdatedAvailableAnnouncementRequestTypes:?];
  }
}

- (void)_availableAnnouncementRequestTypesForCarPlayConnectionWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001764A0;
  v4[3] = &unk_10051C718;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(AFCarPlayAnnouncementRequestCapabilityProvider *)selfCopy isCarPlayConnectedWithCompletion:v4];
}

- (void)fetchAvailableAnnouncementRequestTypesWithCompletion:(id)completion
{
  completionCopy = completion;
  providerQueue = self->_providerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100176594;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(providerQueue, v7);
}

- (void)fetchEligibleAnnouncementRequestTypesWithCompletion:(id)completion
{
  completionCopy = completion;
  providerQueue = self->_providerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100176638;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(providerQueue, v7);
}

- (void)_updateForCarPlaySessionConnected:(BOOL)connected
{
  v4 = 1;
  if (!connected)
  {
    v4 = 2;
  }

  self->_carPlayConnectionState = v4;
  v5 = [(AFCarPlayAnnouncementRequestCapabilityProvider *)self _requestTypesForCarPlayAvailableOrConnected:?];

  [(AFCarPlayAnnouncementRequestCapabilityProvider *)self _setLastKnownAvailableAnnouncementRequestTypesAndNotifyObservers:v5];
}

- (void)updateForCarPlaySessionConnected:(BOOL)connected
{
  providerQueue = self->_providerQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100176760;
  v4[3] = &unk_10051CBD8;
  v4[4] = self;
  connectedCopy = connected;
  dispatch_async(providerQueue, v4);
}

- (void)_isCarPlayConnectedWithCompletion:(id)completion
{
  completionCopy = completion;
  if (AFDeviceSupportsCarPlay())
  {
    currentSession = [(CARSessionStatus *)self->_carSessionStatus currentSession];
    if (!currentSession)
    {
      [(CARSessionStatus *)self->_carSessionStatus waitForSessionInitialization];
      currentSession = [(CARSessionStatus *)self->_carSessionStatus currentSession];
    }

    v5 = 1;
    if (!currentSession)
    {
      v5 = 2;
    }

    self->_carPlayConnectionState = v5;
    completionCopy[2](completionCopy, currentSession != 0);
  }

  else
  {
    self->_carPlayConnectionState = 2;
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)currentlyAbleToAnnounce
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  providerQueue = self->_providerQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001768E4;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(providerQueue, v5);
  v3 = v7[3] == 1;
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)isCarPlayConnectedWithCompletion:(id)completion
{
  completionCopy = completion;
  providerQueue = self->_providerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100176AF0;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(providerQueue, v7);
}

- (AFCarPlayAnnouncementRequestCapabilityProvider)initWithQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = AFCarPlayAnnouncementRequestCapabilityProvider;
  v6 = [(AFCarPlayAnnouncementRequestCapabilityProvider *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_providerQueue, queue);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v8 = qword_1005903C8;
    v20 = qword_1005903C8;
    if (!qword_1005903C8)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100176C70;
      v16[3] = &unk_10051E1C8;
      v16[4] = &v17;
      sub_100176C70(v16);
      v8 = v18[3];
    }

    v9 = v8;
    _Block_object_dispose(&v17, 8);
    v10 = objc_alloc_init(v8);
    carSessionStatus = v7->_carSessionStatus;
    v7->_carSessionStatus = v10;

    [(CARSessionStatus *)v7->_carSessionStatus addSessionObserver:v7];
    v7->_carPlayConnectionState = 0;
    v7->_lastKnownAvailableAnnouncementRequestTypes = 0;
    v7->_lastKnownEligibleAnnouncementRequestTypes = 0;
    v12 = +[NSHashTable weakObjectsHashTable];
    delegates = v7->_delegates;
    v7->_delegates = v12;

    v7->_lastKnownEligibleAnnouncementRequestTypes = [(AFCarPlayAnnouncementRequestCapabilityProvider *)v7 _requestTypesForCarPlayAvailableOrConnected:AFDeviceSupportsCarPlay()];
  }

  return v7;
}

+ (id)requiredIntentIdentifiersForUserNotificationAnnouncementType:(int64_t)type
{
  if (!AFSiriUserNotificationAnnouncementTypeGetIsValid())
  {
    goto LABEL_9;
  }

  if ((type - 2) < 6)
  {
    v4 = &__NSArray0__struct;
    goto LABEL_10;
  }

  if (type == 1)
  {
    v5 = sub_1001770F0();
    v16 = v5;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v6 = qword_1005903E8;
    v15 = qword_1005903E8;
    if (!qword_1005903E8)
    {
      v7 = sub_1001772A4();
      v13[3] = dlsym(v7, "INSendMessageIntentIdentifier");
      qword_1005903E8 = v13[3];
      v6 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v6)
    {
      v10 = +[NSAssertionHandler currentHandler];
      v11 = [NSString stringWithUTF8String:"NSString *getINSendMessageIntentIdentifier(void)"];
      [v10 handleFailureInFunction:v11 file:@"AFCarPlayAnnouncementRequestCapabilityProvider.m" lineNumber:30 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v17 = *v6;
    v8 = v17;
    v4 = [NSArray arrayWithObjects:&v16 count:2];
  }

  else
  {
LABEL_9:
    v4 = 0;
  }

LABEL_10:

  return v4;
}

+ (id)announceableIntentIdentifiersForUserNotificationAnnouncementType:(int64_t)type
{
  IsValid = AFSiriUserNotificationAnnouncementTypeGetIsValid();
  v5 = 0;
  if (type == 1 && IsValid)
  {
    v6 = sub_1001770F0();
    v8 = v6;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
  }

  return v5;
}

+ (id)provider
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100177614;
  block[3] = &unk_10051E200;
  block[4] = self;
  if (qword_1005903B8 != -1)
  {
    dispatch_once(&qword_1005903B8, block);
  }

  v2 = qword_1005903C0;

  return v2;
}

@end