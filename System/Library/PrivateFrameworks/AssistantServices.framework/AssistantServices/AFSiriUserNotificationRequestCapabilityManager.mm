@interface AFSiriUserNotificationRequestCapabilityManager
+ (BOOL)supportedByApplicationWithBundleID:(id)d;
+ (Class)_classForPlatform:(int64_t)platform;
+ (id)sharedManager;
- (BOOL)hasEligibleSetup;
- (BOOL)requestCanBeHandled;
- (id)_initWithPlatform:(int64_t)platform;
- (void)fetchEligibleSetupStateWithCompletion:(id)completion;
- (void)fetchRequestCanBeHandledStateWithCompletion:(id)completion;
- (void)notifyObserversOfCurrentEligibleSetupState:(BOOL)state onPlatform:(int64_t)platform;
- (void)notifyObserversOfCurrentRequestCanBeHandledState:(BOOL)state onPlatform:(int64_t)platform;
- (void)provider:(id)provider availableAnnouncementRequestTypesChanged:(unint64_t)changed;
- (void)provider:(id)provider eligibleAnnouncementRequestTypesChanged:(unint64_t)changed;
@end

@implementation AFSiriUserNotificationRequestCapabilityManager

- (void)provider:(id)provider availableAnnouncementRequestTypesChanged:(unint64_t)changed
{
  changedCopy = changed;
  platform = [objc_opt_class() platform];

  [(AFSiriUserNotificationRequestCapabilityManager *)self notifyObserversOfCurrentRequestCanBeHandledState:changedCopy & 1 onPlatform:platform];
}

- (void)provider:(id)provider eligibleAnnouncementRequestTypesChanged:(unint64_t)changed
{
  changedCopy = changed;
  platform = [objc_opt_class() platform];

  [(AFSiriUserNotificationRequestCapabilityManager *)self notifyObserversOfCurrentEligibleSetupState:changedCopy & 1 onPlatform:platform];
}

- (void)notifyObserversOfCurrentRequestCanBeHandledState:(BOOL)state onPlatform:(int64_t)platform
{
  stateCopy = state;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    observers = self->_observers;
    v15 = v7;
    *buf = 136315650;
    v22 = "[AFSiriUserNotificationRequestCapabilityManager notifyObserversOfCurrentRequestCanBeHandledState:onPlatform:]";
    v23 = 2048;
    v24 = [(NSHashTable *)observers count];
    v25 = 1024;
    v26 = stateCopy;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Notifying %lu observers, request can be handled? %d", buf, 0x1Cu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_observers;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 requestCanBeHandledChanged:stateCopy onPlatform:{platform, v16}];
        }

        if (platform == 1)
        {
          [v13 requestCanBeHandledChanged:stateCopy];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)notifyObserversOfCurrentEligibleSetupState:(BOOL)state onPlatform:(int64_t)platform
{
  stateCopy = state;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 hasEligibleSetupChanged:stateCopy onPlatform:{platform, v12}];
        }

        if (platform == 1)
        {
          [v11 hasEligibleSetupChanged:stateCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)requestCanBeHandled
{
  if (AFIsInternalInstall() && _AFPreferencesSpokenNotificationIsAlwaysOpportune())
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v25) = 136315138;
      *(&v25 + 4) = "[AFSiriUserNotificationRequestCapabilityManager requestCanBeHandled]";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Always Opportune, requests can be handled. This should only be used for testing.", &v25, 0xCu);
    }

    v4 = 1;
  }

  else
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v25) = 136315138;
      *(&v25 + 4) = "[AFSiriUserNotificationRequestCapabilityManager requestCanBeHandled]";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", &v25, 0xCu);
    }

    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v7 = [AFSafetyBlock alloc];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10023ACE4;
    v19[3] = &unk_10051BF08;
    v8 = v6;
    v20 = v8;
    v9 = [v7 initWithBlock:v19];
    *&v25 = 0;
    *(&v25 + 1) = &v25;
    v26 = 0x2020000000;
    v27 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10023ACEC;
    v16[3] = &unk_100519220;
    v18 = &v25;
    v10 = v9;
    v17 = v10;
    [(AFSiriUserNotificationRequestCapabilityManager *)self fetchRequestCanBeHandledStateWithCompletion:v16];
    v11 = dispatch_time(0, 2000000000);
    v12 = dispatch_group_wait(v8, v11);
    [v10 invoke];
    v13 = AFSiriLogContextConnection;
    if (v12)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "[AFSiriUserNotificationRequestCapabilityManager requestCanBeHandled]";
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Timed out fetching request can be handled", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(*(&v25 + 1) + 24);
      *buf = 136315394;
      v22 = "[AFSiriUserNotificationRequestCapabilityManager requestCanBeHandled]";
      v23 = 1024;
      v24 = v15;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Request can be handled: %d", buf, 0x12u);
    }

    v4 = *(*(&v25 + 1) + 24);

    _Block_object_dispose(&v25, 8);
  }

  return v4 & 1;
}

- (void)fetchRequestCanBeHandledStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10023ADA8;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (BOOL)hasEligibleSetup
{
  if (AFIsInternalInstall() && _AFPreferencesSpokenNotificationIsAlwaysOpportune())
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v26) = 136315138;
      *(&v26 + 4) = "[AFSiriUserNotificationRequestCapabilityManager hasEligibleSetup]";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Always Opportune so marking as eligible setup. This should only be used for testing.", &v26, 0xCu);
    }

    v4 = 1;
  }

  else
  {
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v6 = [AFSafetyBlock alloc];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10023B164;
    v20[3] = &unk_10051BF08;
    v7 = v5;
    v21 = v7;
    v8 = [v6 initWithBlock:v20];
    v4 = [(AFAnnouncementRequestCapabilityProviding *)self->_capabilityProvider lastKnownEligibleAnnouncementRequestTypes]& 1;
    *&v26 = 0;
    *(&v26 + 1) = &v26;
    v27 = 0x2020000000;
    v28 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10023B16C;
    v15[3] = &unk_1005176C8;
    v18 = &v26;
    v9 = v8;
    v19 = v4;
    v16 = v9;
    selfCopy = self;
    [(AFSiriUserNotificationRequestCapabilityManager *)self fetchEligibleSetupStateWithCompletion:v15];
    v10 = dispatch_time(0, 2000000000);
    v11 = dispatch_group_wait(v7, v10);
    [v9 invoke];
    v12 = AFSiriLogContextConnection;
    if (v11)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v23 = "[AFSiriUserNotificationRequestCapabilityManager hasEligibleSetup]";
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Timed out fetching eligible setup", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(*(&v26 + 1) + 24);
        *buf = 136315394;
        v23 = "[AFSiriUserNotificationRequestCapabilityManager hasEligibleSetup]";
        v24 = 2048;
        v25 = v14;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Eligble Setup: %lu", buf, 0x16u);
      }

      v4 = *(*(&v26 + 1) + 24);
    }

    _Block_object_dispose(&v26, 8);
  }

  return v4 & 1;
}

- (void)fetchEligibleSetupStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10023B324;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (id)_initWithPlatform:(int64_t)platform
{
  v14.receiver = self;
  v14.super_class = AFSiriUserNotificationRequestCapabilityManager;
  v4 = [(AFSiriUserNotificationRequestCapabilityManager *)&v14 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("AFSiriUserNotificationRequestCapabilityManager", v5);

    queue = v4->_queue;
    v4->_queue = v6;

    v8 = +[NSHashTable weakObjectsHashTable];
    observers = v4->_observers;
    v4->_observers = v8;

    v10 = [objc_opt_class() _classForPlatform:platform];
    v4->_platform = [v10 platform];
    provider = [v10 provider];
    capabilityProvider = v4->_capabilityProvider;
    v4->_capabilityProvider = provider;

    [(AFAnnouncementRequestCapabilityProviding *)v4->_capabilityProvider addDelegate:v4];
  }

  return v4;
}

+ (BOOL)supportedByApplicationWithBundleID:(id)d
{
  dCopy = d;
  if (AFIsInternalInstall() && _AFPreferencesSpokenNotificationShouldAnnounceAllNotifications())
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "+[AFSiriUserNotificationRequestCapabilityManager supportedByApplicationWithBundleID:]";
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Allow all notifications to be announced. This should only be used for testing.", &v8, 0xCu);
    }

    v5 = 1;
  }

  else
  {
    v5 = 1;
    v6 = [AFSiriAnnouncementRequestCapabilityManager supportedAnnouncementTypesForBundleId:dCopy onPlatform:1];
    if (([v6 containsObject:&off_100533CF8] & 1) == 0)
    {
      v5 = [v6 containsObject:&off_100533D10];
    }
  }

  return v5;
}

+ (Class)_classForPlatform:(int64_t)platform
{
  IsValid = AFSiriAnnouncementPlatformGetIsValid();
  if ((IsValid & 1) == 0)
  {
    v5 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      IsValid = objc_opt_class();
      goto LABEL_8;
    }

LABEL_12:
    v7 = 136315394;
    v8 = "+[AFSiriUserNotificationRequestCapabilityManager _classForPlatform:]";
    v9 = 2048;
    platformCopy = platform;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s platform %li is not valid, using headphones provider.", &v7, 0x16u);
    goto LABEL_7;
  }

  if (platform <= 5)
  {
    if (((1 << platform) & 0x1A) != 0)
    {
      goto LABEL_7;
    }

    v5 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_8:

  return IsValid;
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023B7D4;
  block[3] = &unk_10051E200;
  block[4] = self;
  if (qword_100590658 != -1)
  {
    dispatch_once(&qword_100590658, block);
  }

  v2 = qword_100590660;

  return v2;
}

@end