@interface ADNotificationManager
+ (id)_createBBObserverWithQueue:(id)a3;
+ (id)sharedManager;
- (ADNotificationManagerDataSource)dataSource;
- (BOOL)_isAppRestrictedAndSiriRelated:(id)a3;
- (BOOL)hasIncomingCallNotification;
- (id)_afbulletinForBBBulletin:(id)a3 forFeed:(unint64_t)a4;
- (id)_displayNameForBulletin:(id)a3;
- (id)_init;
- (id)_siriRelatedRestrictedAppsForApps:(id)a3;
- (void)_bulletinsDidChange;
- (void)_fetchFromDataSourceIfNecessary;
- (void)_fetchInitialState;
- (void)_getNotificationsFromBulletinBoard;
- (void)_getRestrictedAppsFromBulletinBoard;
- (void)_notifyDelegatesDidAddBulletin:(id)a3;
- (void)_notifyDelegatesDidRemoveBulletin:(id)a3;
- (void)_performActionWithIdentifier:(id)a3 forAFBulletin:(id)a4 completion:(id)a5;
- (void)_setUpBBObserver;
- (void)fetchActionsForBulletinWithID:(id)a3 completion:(id)a4;
- (void)fetchAllBulletinsWithCompletion:(id)a3;
- (void)fetchBulletinWithID:(id)a3 completion:(id)a4;
- (void)fetchBulletinsAfterBulletinWithID:(id)a3 completion:(id)a4;
- (void)fetchBulletinsOnLockScreenWithCompletion:(id)a3;
- (void)fetchSiriRelatedNotificationPreviewRestrictedAppsWithCompletion:(id)a3;
- (void)fetchSpokenNotificationEnabledAppsWithCompletion:(id)a3;
- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5;
- (void)observer:(id)a3 modifyBulletin:(id)a4 forFeed:(unint64_t)a5;
- (void)observer:(id)a3 noteInvalidatedBulletinIDs:(id)a4;
- (void)observer:(id)a3 noteServerConnectionStateChanged:(BOOL)a4;
- (void)observer:(id)a3 purgeReferencesToBulletinID:(id)a4;
- (void)observer:(id)a3 removeBulletin:(id)a4;
- (void)observer:(id)a3 removeBulletin:(id)a4 forFeed:(unint64_t)a5;
- (void)observer:(id)a3 updateSectionInfo:(id)a4;
- (void)performActionWithIdentifier:(id)a3 forBulletinWithIdentifier:(id)a4 completion:(id)a5;
- (void)performActionWithIdentifier:(id)a3 forUNNotificationWithIdentifier:(id)a4 completion:(id)a5;
- (void)setDataSource:(id)a3;
@end

@implementation ADNotificationManager

+ (id)sharedManager
{
  if (qword_100590B90 != -1)
  {
    dispatch_once(&qword_100590B90, &stru_10051DFC0);
  }

  v3 = qword_100590B98;

  return v3;
}

- (BOOL)hasIncomingCallNotification
{
  if (+[AFFeatureFlags isHSAnswerCallNotificationEnabled])
  {
    v3 = [(ADCallNotificationObserver *)self->_callNotificationObserver hasIncomingCallNotification];
    v4 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
    v5 = [v4 currentRequest];

    if ([v5 requestType] == 1)
    {
      v6 = [v5 announcementType] == 7;
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = 0;
      if (!v3)
      {
LABEL_8:
        v7 = v3 & !v6;

        return v7;
      }
    }

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v10 = @"NO";
      v11 = 136315650;
      v12 = "[ADNotificationManager hasIncomingCallNotification]";
      v13 = 2112;
      v14 = @"YES";
      if (v6)
      {
        v10 = @"YES";
      }

      v15 = 2112;
      v16 = v10;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s isOnPhoneCall: %@, and beingAnnounced: %@ for call notification", &v11, 0x20u);
    }

    goto LABEL_8;
  }

  return 0;
}

- (void)_getRestrictedAppsFromBulletinBoard
{
  if (self->_observer)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[ADNotificationManager _getRestrictedAppsFromBulletinBoard]";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &buf, 0xCu);
    }

    v4 = objc_alloc_init(NSMutableArray);
    v5 = objc_alloc_init(NSMutableArray);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x3032000000;
    v25 = sub_1003711D4;
    v26 = sub_1003711E4;
    v27 = 0;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10006CDA0;
    v22[3] = &unk_10051E178;
    v22[4] = self;
    v22[5] = &buf;
    v6 = [[AFSafetyBlock alloc] initWithBlock:v22];
    v7 = [AFWatchdogTimer alloc];
    queue = self->_queue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1003711EC;
    v20[3] = &unk_10051DFE8;
    v9 = v6;
    v21 = v9;
    v10 = [v7 initWithTimeoutInterval:queue onQueue:v20 timeoutHandler:5.0];
    v11 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v10;

    dispatch_group_enter(self->_settingsGroup);
    [*(*(&buf + 1) + 40) start];
    observer = self->_observer;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006CB30;
    v16[3] = &unk_10051E1A0;
    v16[4] = self;
    v13 = v4;
    v17 = v13;
    v14 = v5;
    v18 = v14;
    v15 = v9;
    v19 = v15;
    [(BBObserver *)observer getSectionInfoWithCompletion:v16];
    self->_batchedUpdatePending = 0;

    _Block_object_dispose(&buf, 8);
  }
}

- (ADNotificationManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BOOL)_isAppRestrictedAndSiriRelated:(id)a3
{
  v4 = a3;
  v5 = [v4 sectionID];
  if ([v4 allowsNotifications] && objc_msgSend(v4, "lockScreenSetting") == 2 && objc_msgSend(v4, "contentPreviewSetting") == 1)
  {
    v6 = 0;
  }

  else
  {
    v10 = v5;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    v8 = [(ADNotificationManager *)self _siriRelatedRestrictedAppsForApps:v7];
    v6 = [v8 count] != 0;
  }

  return v6;
}

- (id)_displayNameForBulletin:(id)a3
{
  v3 = a3;
  v4 = [v3 sectionID];
  v5 = [v4 isEqualToString:@"com.apple.cmas"];

  if (v5)
  {
    v6 = [v3 title];
  }

  else
  {
    v6 = [v3 sectionDisplayName];
    if (![v6 length])
    {
      v7 = [v3 sectionID];
      v8 = [LSApplicationProxy applicationProxyForIdentifier:v7];
      v9 = [v8 localizedNameForContext:0];

      v6 = v9;
    }
  }

  return v6;
}

- (void)_notifyDelegatesDidRemoveBulletin:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_delegates;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 notificationManager:self didRemoveBulletin:{v4, v11}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDelegatesDidAddBulletin:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_delegates;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 notificationManager:self didAddBulletin:{v4, v11}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_bulletinsDidChange
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
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

        [*(*(&v8 + 1) + 8 * v7) notificationManagerDidChangeBulletins:{self, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_getNotificationsFromBulletinBoard
{
  observer = self->_observer;
  if (observer)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315138;
      v6 = "[ADNotificationManager _getNotificationsFromBulletinBoard]";
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
      observer = self->_observer;
    }

    [(BBObserver *)observer requestNoticesBulletinsForAllSections];
  }
}

- (id)_afbulletinForBBBulletin:(id)a3 forFeed:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(AFBulletin);
  [v7 setRead:0];
  [v7 setBulletin:v6 forFeed:a4];

  bulletinsOnLockScreen = self->_bulletinsOnLockScreen;
  v9 = [v7 internalID];
  v10 = [(NSMutableDictionary *)bulletinsOnLockScreen objectForKey:v9];

  [v7 setAvailableOnLockScreen:{objc_msgSend(v10, "availableOnLockScreen")}];
  [v7 setSupportsSpokenNotification:{objc_msgSend(v10, "supportsSpokenNotification")}];

  return v7;
}

- (void)_fetchFromDataSourceIfNecessary
{
  if (!self->_initialFetchSuccess)
  {
    dispatch_group_enter(self->_notificationsGroup);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100371870;
    v4[3] = &unk_10051E150;
    v4[4] = self;
    [WeakRetained fetchBulletinsOnLockScreenForNotificationManager:self completion:v4];
  }
}

- (void)observer:(id)a3 noteServerConnectionStateChanged:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[ADNotificationManager observer:noteServerConnectionStateChanged:]";
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
  }

  if (!v4 && self->_observer == v6)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100371B94;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)observer:(id)a3 updateSectionInfo:(id)a4
{
  v5 = a4;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADNotificationManager observer:updateSectionInfo:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100371D00;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)observer:(id)a3 noteInvalidatedBulletinIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ADNotificationManager *)self observer:v6 purgeReferencesToBulletinID:*(*(&v12 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)observer:(id)a3 purgeReferencesToBulletinID:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100371FDC;
  v8[3] = &unk_10051E010;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)observer:(id)a3 removeBulletin:(id)a4 forFeed:(unint64_t)a5
{
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100372228;
  block[3] = &unk_10051E128;
  v11 = v7;
  v12 = self;
  v13 = a5;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)observer:(id)a3 removeBulletin:(id)a4
{
  v6 = a3;
  v7 = [a4 bulletinID];
  [(ADNotificationManager *)self observer:v6 purgeReferencesToBulletinID:v7];
}

- (void)observer:(id)a3 modifyBulletin:(id)a4 forFeed:(unint64_t)a5
{
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100372508;
  block[3] = &unk_10051E128;
  block[4] = self;
  v11 = v7;
  v12 = a5;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5
{
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100372730;
  block[3] = &unk_10051E128;
  v11 = v7;
  v12 = self;
  v13 = a5;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)fetchSpokenNotificationEnabledAppsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    settingsGroup = self->_settingsGroup;
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100372A1C;
    v8[3] = &unk_10051E038;
    v8[4] = self;
    v9 = v4;
    dispatch_group_notify(settingsGroup, queue, v8);
  }
}

- (void)fetchSiriRelatedNotificationPreviewRestrictedAppsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    settingsGroup = self->_settingsGroup;
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100372AE0;
    v8[3] = &unk_10051E038;
    v8[4] = self;
    v9 = v4;
    dispatch_group_notify(settingsGroup, queue, v8);
  }
}

- (id)_siriRelatedRestrictedAppsForApps:(id)a3
{
  v3 = a3;
  v17 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v4 = [[NSSet alloc] initWithObjects:{@"com.apple.MobileSMS", @"com.apple.mobilephone", @"com.apple.facetime", @"com.apple.NanoPhone", @"com.apple.tincan", 0}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if ([v4 containsObject:v9])
        {
          [v17 addObject:v9];
        }

        else
        {
          v10 = objc_autoreleasePoolPush();
          v11 = [LSApplicationProxy applicationProxyForIdentifier:v9];
          v12 = [INAppInfo appInfoWithAppProxy:v11];
          v13 = [v12 supportedIntents];
          v14 = [v13 count];

          if (v14)
          {
            [v17 addObject:v9];
          }

          objc_autoreleasePoolPop(v10);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v17;
}

- (void)_performActionWithIdentifier:(id)a3 forAFBulletin:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v8 length])
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[ADNotificationManager _performActionWithIdentifier:forAFBulletin:completion:]";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Missing action identifier", buf, 0xCu);
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    else if (!v10)
    {
      goto LABEL_9;
    }

    v10[2](v10, 0);
    goto LABEL_9;
  }

  v11 = [v9 actionForIdentifier:v8];
  v12 = v11;
  if (!v11)
  {
    v18 = [v8 isEqualToString:UNNotificationDismissActionIdentifier];
    v19 = AFSiriLogContextDaemon;
    if (v18)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v29 = v19;
        v30 = [v9 bulletinID];
        v31 = [v9 sectionID];
        *buf = 136315650;
        v36 = "[ADNotificationManager _performActionWithIdentifier:forAFBulletin:completion:]";
        v37 = 2112;
        v38 = v30;
        v39 = 2112;
        v40 = v31;
        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s Clearing bulletin: %@ from section: %@", buf, 0x20u);
      }

      v20 = [v9 bbBulletin];

      if (v20)
      {
        v21 = [NSSet alloc];
        v22 = [v9 bbBulletin];
        v34 = v22;
        v23 = [NSArray arrayWithObjects:&v34 count:1];
        v13 = [v21 initWithArray:v23];

        observer = self->_observer;
        v25 = [v9 sectionID];
        [(BBObserver *)observer clearBulletins:v13 inSection:v25];

        goto LABEL_4;
      }

      v28 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315138;
      v36 = "[ADNotificationManager _performActionWithIdentifier:forAFBulletin:completion:]";
      v26 = "%s bbBulletin field is nil on bulletin";
      v27 = v28;
    }

    else
    {
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
LABEL_18:
        if (!v10)
        {
          goto LABEL_5;
        }

LABEL_19:
        v10[2](v10, 0);
        goto LABEL_5;
      }

      *buf = 136315138;
      v36 = "[ADNotificationManager _performActionWithIdentifier:forAFBulletin:completion:]";
      v26 = "%s Could not find action to perform";
      v27 = v19;
    }

    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v13 = [v11 bbAction];
  v14 = [v9 bbBulletin];
  v15 = [v14 responseForAction:v13];

  v16 = self->_observer;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10037310C;
  v32[3] = &unk_10051E100;
  v33 = v10;
  [(BBObserver *)v16 sendResponse:v15 withCompletion:v32];

LABEL_4:
LABEL_5:

LABEL_9:
}

- (void)performActionWithIdentifier:(id)a3 forUNNotificationWithIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 length])
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "[ADNotificationManager performActionWithIdentifier:forUNNotificationWithIdentifier:completion:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Missing notification identifier", buf, 0xCu);
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    else if (!v10)
    {
      goto LABEL_6;
    }

    v10[2](v10, 0);
    goto LABEL_6;
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003732C4;
  v13[3] = &unk_10051E0D8;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v16 = v10;
  dispatch_async(queue, v13);

LABEL_6:
}

- (void)performActionWithIdentifier:(id)a3 forBulletinWithIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 length])
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[ADNotificationManager performActionWithIdentifier:forBulletinWithIdentifier:completion:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Missing bulletin identifer", buf, 0xCu);
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    else if (!v10)
    {
      goto LABEL_6;
    }

    v10[2](v10, 0);
    goto LABEL_6;
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003734C0;
  v13[3] = &unk_10051E0D8;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v17 = v10;
  dispatch_async(queue, v13);

LABEL_6:
}

- (void)fetchActionsForBulletinWithID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003735E8;
    v8[3] = &unk_10051E0B0;
    v9 = v6;
    [(ADNotificationManager *)self fetchBulletinWithID:a3 completion:v8];
  }
}

- (void)fetchBulletinWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10037370C;
    block[3] = &unk_10051E088;
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_async(queue, block);
  }
}

- (void)fetchBulletinsAfterBulletinWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003738D8;
    block[3] = &unk_10051E088;
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_async(queue, block);
  }
}

- (void)fetchBulletinsOnLockScreenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100373B08;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)fetchAllBulletinsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100373D30;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)setDataSource:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100373EA0;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_fetchInitialState
{
  [(ADNotificationManager *)self _getNotificationsFromBulletinBoard];

  [(ADNotificationManager *)self _getRestrictedAppsFromBulletinBoard];
}

- (void)_setUpBBObserver
{
  if ((AFIsHorseman() & 1) == 0 && (!AFIsNano() || AFDeviceSupportsANE()))
  {
    v3 = [objc_opt_class() _createBBObserverWithQueue:self->_queue];
    observer = self->_observer;
    self->_observer = v3;

    [(BBObserver *)self->_observer setDelegate:self];
    v5 = self->_observer;

    [(BBObserver *)v5 setObserverFeed:0xFFFFLL];
  }
}

- (id)_init
{
  v23.receiver = self;
  v23.super_class = ADNotificationManager;
  v2 = [(ADNotificationManager *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

    v5 = dispatch_queue_create("ADNotificationManager", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_group_create();
    settingsGroup = v2->_settingsGroup;
    v2->_settingsGroup = v7;

    v9 = dispatch_group_create();
    notificationsGroup = v2->_notificationsGroup;
    v2->_notificationsGroup = v9;

    v11 = objc_opt_new();
    allBulletins = v2->_allBulletins;
    v2->_allBulletins = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    bulletinsOnLockScreen = v2->_bulletinsOnLockScreen;
    v2->_bulletinsOnLockScreen = v13;

    v15 = +[NSHashTable weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = v15;

    [(ADNotificationManager *)v2 _setUpBBObserver];
    v17 = objc_alloc_init(ADCallNotificationObserver);
    callNotificationObserver = v2->_callNotificationObserver;
    v2->_callNotificationObserver = v17;

    [(ADNotificationManager *)v2 addDelegate:v2->_callNotificationObserver];
    v19 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100374180;
    block[3] = &unk_10051DFE8;
    v22 = v2;
    dispatch_async(v19, block);
  }

  return v2;
}

+ (id)_createBBObserverWithQueue:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = qword_100590BA0;
  v12 = qword_100590BA0;
  if (!qword_100590BA0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10037428C;
    v8[3] = &unk_10051E1C8;
    v8[4] = &v9;
    sub_10037428C(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [[v4 alloc] initWithQueue:v3 calloutQueue:v3];

  return v6;
}

@end