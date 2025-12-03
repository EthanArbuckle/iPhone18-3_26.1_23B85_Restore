@interface NCAssistantPreferencesController
+ (id)sharedInstance;
- (BOOL)announceNotificationsInCarPlayTemporarilyDisabled;
- (NCAssistantPreferencesController)init;
- (int64_t)carPlayAnnounceEnablementType;
- (void)_notifyObserversOfSettingsChangeWithBlock:(id)block;
- (void)_siriPreferencesDidChange;
- (void)_updateAnnounceNotificationsInCarPlayTemporarilyDisabled:(BOOL)disabled;
- (void)_updateCarPlayAnnounceEnablementType:(int64_t)type;
- (void)addObserver:(id)observer;
- (void)clearAnnounceNotificationsInCarPlayTemporarilyDisabled;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setAnnounceNotificationsInCarPlayTemporarilyDisabled:(BOOL)disabled;
- (void)setCarPlayAnnounceEnablementType:(int64_t)type;
@end

@implementation NCAssistantPreferencesController

+ (id)sharedInstance
{
  if (qword_5C560 != -1)
  {
    sub_32B78();
  }

  v3 = qword_5C568;

  return v3;
}

- (NCAssistantPreferencesController)init
{
  v9.receiver = self;
  v9.super_class = NCAssistantPreferencesController;
  v2 = [(NCAssistantPreferencesController *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("NCAssistantPreferencesController", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_siriPreferencesDidChange" name:AFPreferencesDidChangeNotification object:0];

    [(NCAssistantPreferencesController *)v2 _siriPreferencesDidChange];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(NSHashTable *)self->_observers removeAllObjects];
  v4.receiver = self;
  v4.super_class = NCAssistantPreferencesController;
  [(NCAssistantPreferencesController *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = [(NCAssistantPreferencesController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6EC8;
  v7[3] = &unk_4D0D8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = [(NCAssistantPreferencesController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6FD0;
  v7[3] = &unk_4D0D8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (int64_t)carPlayAnnounceEnablementType
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  queue = [(NCAssistantPreferencesController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_7100;
  v6[3] = &unk_4D310;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setCarPlayAnnounceEnablementType:(int64_t)type
{
  v4 = +[AFPreferences sharedPreferences];
  [v4 setAnnounceNotificationsInCarPlayType:type];
}

- (BOOL)announceNotificationsInCarPlayTemporarilyDisabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(NCAssistantPreferencesController *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_7264;
  v5[3] = &unk_4D310;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setAnnounceNotificationsInCarPlayTemporarilyDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v4 = +[AFPreferences sharedPreferences];
  [v4 setAnnounceNotificationsInCarPlayTemporarilyDisabled:disabledCopy];
}

- (void)clearAnnounceNotificationsInCarPlayTemporarilyDisabled
{
  v2 = +[AFPreferences sharedPreferences];
  [v2 clearAnnounceNotificationsInCarPlayTemporarilyDisabled];
}

- (void)_siriPreferencesDidChange
{
  queue = [(NCAssistantPreferencesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_73C0;
  block[3] = &unk_4D388;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_updateAnnounceNotificationsInCarPlayTemporarilyDisabled:(BOOL)disabled
{
  queue = [(NCAssistantPreferencesController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_766C;
  v6[3] = &unk_4D3D8;
  v6[4] = self;
  disabledCopy = disabled;
  dispatch_async(queue, v6);
}

- (void)_updateCarPlayAnnounceEnablementType:(int64_t)type
{
  queue = [(NCAssistantPreferencesController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_77B0;
  v6[3] = &unk_4D428;
  v6[4] = self;
  v6[5] = type;
  dispatch_async(queue, v6);
}

- (void)_notifyObserversOfSettingsChangeWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_observers;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9));
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

@end