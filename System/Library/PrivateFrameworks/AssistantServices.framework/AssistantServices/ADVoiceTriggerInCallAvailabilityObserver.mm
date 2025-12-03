@interface ADVoiceTriggerInCallAvailabilityObserver
+ (id)sharedObserver;
- (ADVoiceTriggerInCallAvailabilityObserver)init;
- (void)_startObserving;
- (void)_stopObserving;
- (void)_voiceTriggerEnabledDidChange;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)notifyDelegates;
- (void)removeDelegate:(id)delegate;
@end

@implementation ADVoiceTriggerInCallAvailabilityObserver

- (void)dealloc
{
  [(ADVoiceTriggerInCallAvailabilityObserver *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = ADVoiceTriggerInCallAvailabilityObserver;
  [(ADVoiceTriggerInCallAvailabilityObserver *)&v3 dealloc];
}

- (void)notifyDelegates
{
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_delegates;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7) voiceTriggerInCallAvailabilityChanged:{self->_available, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10031C4B8;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10031C5AC;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (void)_voiceTriggerEnabledDidChange
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031C680;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_stopObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = kVTPreferencesVoiceTriggerEnabledDidChangeDarwinNotification;

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);
}

- (void)_startObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = kVTPreferencesVoiceTriggerEnabledDidChangeDarwinNotification;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_10031C9A8, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (ADVoiceTriggerInCallAvailabilityObserver)init
{
  v9.receiver = self;
  v9.super_class = ADVoiceTriggerInCallAvailabilityObserver;
  v2 = [(ADVoiceTriggerInCallAvailabilityObserver *)&v9 init];
  if (v2)
  {
    v2->_available = AFSupportsCallHangUp();
    v3 = +[NSHashTable weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("ADVoiceTriggerInCallAvailabilityObserver", v5);

    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

+ (id)sharedObserver
{
  if (qword_100590A80 != -1)
  {
    dispatch_once(&qword_100590A80, &stru_10051BDE0);
  }

  v3 = qword_100590A88;

  return v3;
}

@end