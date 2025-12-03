@interface AFSiriAnnouncementRequestCapabilityManager
+ (BOOL)_supportsAnnouncementType:(int64_t)type forSupportedIntents:(id)intents forBundleId:(id)id onPlatform:(int64_t)platform;
+ (Class)_classForPlatform:(int64_t)platform;
+ (id)_candidateAnnounceNotificationTypesFromApp:(id)app withIntentIDs:(id)ds notificationContentType:(id)type onPlatform:(int64_t)platform;
+ (id)_requiredBundleIDsForNotificationAnnouncementType:(int64_t)type;
+ (id)_requiredPlatformsForNotificationAnnouncementType:(int64_t)type;
+ (id)supportedAnnouncementTypesForBundleId:(id)id onPlatform:(int64_t)platform;
+ (int64_t)notificationAnnouncementTypeForNotificationFromApp:(id)app withIntentIDs:(id)ds notificationContent:(id)content onPlatform:(int64_t)platform;
- (AFSiriAnnouncementRequestCapabilityManager)initWithPlatform:(int64_t)platform;
- (void)addObserver:(id)observer;
- (void)fetchAvailableAnnouncementRequestTypesWithCompletion:(id)completion;
- (void)fetchEligibleAnnouncementRequestTypesWithCompletion:(id)completion;
- (void)provider:(id)provider availableAnnouncementRequestTypesChanged:(unint64_t)changed;
- (void)provider:(id)provider eligibleAnnouncementRequestTypesChanged:(unint64_t)changed;
- (void)removeObserver:(id)observer;
@end

@implementation AFSiriAnnouncementRequestCapabilityManager

- (void)provider:(id)provider availableAnnouncementRequestTypesChanged:(unint64_t)changed
{
  providerCopy = provider;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *location = 136315394;
    *&location[4] = "[AFSiriAnnouncementRequestCapabilityManager provider:availableAnnouncementRequestTypesChanged:]";
    v14 = 2048;
    changedCopy = changed;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Notifying observers available announcement request types changed: %lu", location, 0x16u);
  }

  objc_initWeak(location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003183E8;
  block[3] = &unk_10051BCD0;
  objc_copyWeak(v12, location);
  v12[1] = changed;
  v11 = providerCopy;
  v9 = providerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v12);
  objc_destroyWeak(location);
}

- (void)provider:(id)provider eligibleAnnouncementRequestTypesChanged:(unint64_t)changed
{
  providerCopy = provider;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *location = 136315394;
    *&location[4] = "[AFSiriAnnouncementRequestCapabilityManager provider:eligibleAnnouncementRequestTypesChanged:]";
    v14 = 2048;
    changedCopy = changed;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Notifying observers eligible announcement request types changed: %lu", location, 0x16u);
  }

  objc_initWeak(location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100318680;
  block[3] = &unk_10051BCD0;
  objc_copyWeak(v12, location);
  v12[1] = changed;
  v11 = providerCopy;
  v9 = providerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v12);
  objc_destroyWeak(location);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031887C;
  block[3] = &unk_10051C650;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003189A0;
  block[3] = &unk_10051C650;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)fetchAvailableAnnouncementRequestTypesWithCompletion:(id)completion
{
  if (completion)
  {
    [(AFAnnouncementRequestCapabilityProviding *)self->_capabilityProvider fetchAvailableAnnouncementRequestTypesWithCompletion:?];
  }
}

- (void)fetchEligibleAnnouncementRequestTypesWithCompletion:(id)completion
{
  if (completion)
  {
    [(AFAnnouncementRequestCapabilityProviding *)self->_capabilityProvider fetchEligibleAnnouncementRequestTypesWithCompletion:?];
  }
}

- (AFSiriAnnouncementRequestCapabilityManager)initWithPlatform:(int64_t)platform
{
  v13.receiver = self;
  v13.super_class = AFSiriAnnouncementRequestCapabilityManager;
  v4 = [(AFSiriAnnouncementRequestCapabilityManager *)&v13 init];
  if (v4)
  {
    v5 = dispatch_queue_create("AFSiriAnnouncementRequestCapabilityManager", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    v7 = +[NSHashTable weakObjectsHashTable];
    observers = v4->_observers;
    v4->_observers = v7;

    v9 = [objc_opt_class() _classForPlatform:platform];
    v4->_platform = [v9 platform];
    provider = [v9 provider];
    capabilityProvider = v4->_capabilityProvider;
    v4->_capabilityProvider = provider;

    [(AFAnnouncementRequestCapabilityProviding *)v4->_capabilityProvider addDelegate:v4];
  }

  return v4;
}

+ (BOOL)_supportsAnnouncementType:(int64_t)type forSupportedIntents:(id)intents forBundleId:(id)id onPlatform:(int64_t)platform
{
  intentsCopy = intents;
  idCopy = id;
  v12 = [objc_msgSend(self _classForPlatform:{platform), "requiredIntentIdentifiersForUserNotificationAnnouncementType:", type}];
  if (v12)
  {
    v13 = [objc_opt_class() _requiredBundleIDsForNotificationAnnouncementType:type];
    if ([v13 count] && !objc_msgSend(v13, "containsObject:", idCopy))
    {
      v21 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v27 = idCopy;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
LABEL_6:
      v18 = 0;
      while (1)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (![intentsCopy containsObject:*(*(&v28 + 1) + 8 * v18)])
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v16)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:

      v14 = [objc_opt_class() _requiredPlatformsForNotificationAnnouncementType:type];
      if (![v14 count] || (+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", platform), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v14, "containsObject:", v19), v19, (v20 & 1) != 0))
      {
        v21 = 1;
LABEL_20:
        idCopy = v27;

        goto LABEL_21;
      }

      v22 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v24 = v22;
        v25 = AFSiriUserNotificationAnnouncementTypeGetName();
        v26 = AFSiriAnnouncementPlatformGetName();
        *buf = 136315650;
        v33 = "+[AFSiriAnnouncementRequestCapabilityManager _supportsAnnouncementType:forSupportedIntents:forBundleId:onPlatform:]";
        v34 = 2112;
        v35 = v25;
        v36 = 2112;
        v37 = v26;
        _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s rejecting announcementType %@ by platform %@", buf, 0x20u);
      }
    }

    v21 = 0;
    goto LABEL_20;
  }

  v21 = 0;
LABEL_22:

  return v21;
}

+ (id)_requiredPlatformsForNotificationAnnouncementType:(int64_t)type
{
  IsValid = AFSiriUserNotificationAnnouncementTypeGetIsValid();
  v5 = 0;
  if (type == 7 && IsValid)
  {
    v5 = [NSSet setWithObjects:&off_100534028, 0];
  }

  return v5;
}

+ (id)_requiredBundleIDsForNotificationAnnouncementType:(int64_t)type
{
  if (AFSiriUserNotificationAnnouncementTypeGetIsValid() && (type - 2) <= 4)
  {
    return (&off_10051BD20)[type - 2];
  }

  else
  {
    return 0;
  }
}

+ (int64_t)notificationAnnouncementTypeForNotificationFromApp:(id)app withIntentIDs:(id)ds notificationContent:(id)content onPlatform:(int64_t)platform
{
  if (!app)
  {
    return 0;
  }

  dsCopy = ds;
  appCopy = app;
  contentType = [content contentType];
  v13 = [self _candidateAnnounceNotificationTypesFromApp:appCopy withIntentIDs:dsCopy notificationContentType:contentType onPlatform:platform];

  if ([v13 containsObject:&off_100534028])
  {
    v14 = 1;
  }

  else if ([v13 containsObject:&off_100534040])
  {
    v14 = 2;
  }

  else if ([v13 containsObject:&off_100534088])
  {
    v14 = 4;
  }

  else if ([v13 containsObject:&off_100534058])
  {
    v14 = 5;
  }

  else if ([v13 containsObject:&off_1005340A0])
  {
    v14 = 6;
  }

  else if ([v13 containsObject:&off_100534070])
  {
    v14 = 7;
  }

  else if ([v13 containsObject:&off_100534010])
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_candidateAnnounceNotificationTypesFromApp:(id)app withIntentIDs:(id)ds notificationContentType:(id)type onPlatform:(int64_t)platform
{
  appCopy = app;
  dsCopy = ds;
  typeCopy = type;
  v33 = objc_alloc_init(NSMutableSet);
  v12 = [self _classForPlatform:platform];
  v30 = appCopy;
  [objc_opt_class() supportedAnnouncementTypesForBundleId:appCopy onPlatform:platform];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v13 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    do
    {
      v16 = 0;
      v31 = v14;
      do
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(obj);
        }

        integerValue = [*(*(&v38 + 1) + 8 * v16) integerValue];
        v18 = [v12 announceableIntentIdentifiersForUserNotificationAnnouncementType:integerValue];
        v19 = v18;
        if (v18 && ![v18 count])
        {
          v20 = [NSNumber numberWithInteger:integerValue];
          [v33 addObject:v20];
        }

        else
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v20 = v19;
          v21 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = v12;
            v24 = *v35;
            while (2)
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v35 != v24)
                {
                  objc_enumerationMutation(v20);
                }

                if ([dsCopy containsObject:*(*(&v34 + 1) + 8 * i)])
                {
                  v26 = [NSNumber numberWithInteger:integerValue];
                  [v33 addObject:v26];

                  goto LABEL_18;
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }

LABEL_18:
            v12 = v23;
            v14 = v31;
          }
        }

        v16 = v16 + 1;
      }

      while (v16 != v14);
      v14 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v14);
  }

  if (([typeCopy isEqualToString:_UNNotificationContentTypeMessagingDirect] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", _UNNotificationContentTypeMessagingGroup)) && (v27 = &off_100534028, (objc_msgSend(obj, "containsObject:", &off_100534028)) || objc_msgSend(typeCopy, "isEqualToString:", _UNNotificationContentTypeIntercom) && (v27 = &off_100534040, (objc_msgSend(obj, "containsObject:", &off_100534040)) || objc_msgSend(typeCopy, "isEqualToString:", _UNNotificationContentTypeVoicemail) && (v27 = &off_100534058, (objc_msgSend(obj, "containsObject:", &off_100534058)) || objc_msgSend(typeCopy, "isEqualToString:", _UNNotificationContentTypeIncomingCall) && (v27 = &off_100534070, objc_msgSend(obj, "containsObject:", &off_100534070)))
  {
    [v33 addObject:v27];
  }

  return v33;
}

+ (id)supportedAnnouncementTypesForBundleId:(id)id onPlatform:(int64_t)platform
{
  idCopy = id;
  v7 = objc_alloc_init(NSMutableSet);
  [v7 addObject:&off_100534010];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v8 = qword_100590A60;
  v27 = qword_100590A60;
  if (!qword_100590A60)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1003196C8;
    v29 = &unk_10051E1C8;
    v30 = &v24;
    sub_1003196C8(buf);
    v8 = v25[3];
  }

  v9 = v8;
  _Block_object_dispose(&v24, 8);
  v23 = 0;
  v10 = [[v8 alloc] initWithBundleIdentifier:idCopy allowPlaceholder:0 error:&v23];
  v11 = v23;
  if (v11)
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "+[AFSiriAnnouncementRequestCapabilityManager supportedAnnouncementTypesForBundleId:onPlatform:]";
      *&buf[12] = 2112;
      *&buf[14] = idCopy;
      *&buf[22] = 2112;
      v29 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Unable to retrieve LSApplicationRecord for bundle identifier %@: %@", buf, 0x20u);
    }

    v13 = v7;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v14 = qword_100590A70;
    v27 = qword_100590A70;
    if (!qword_100590A70)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1003198B4;
      v29 = &unk_10051E1C8;
      v30 = &v24;
      sub_1003198B4(buf);
      v14 = v25[3];
    }

    v15 = v14;
    _Block_object_dispose(&v24, 8);
    v22 = [v14 appInfoWithApplicationRecord:v10];
    supportedIntents = [v22 supportedIntents];
    for (i = 0; i != 8; ++i)
    {
      if ([self _supportsAnnouncementType:i forSupportedIntents:supportedIntents forBundleId:idCopy onPlatform:platform])
      {
        v18 = [NSNumber numberWithUnsignedInteger:i];
        [v7 addObject:v18];
      }
    }

    v19 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "+[AFSiriAnnouncementRequestCapabilityManager supportedAnnouncementTypesForBundleId:onPlatform:]";
      *&buf[12] = 2112;
      *&buf[14] = idCopy;
      *&buf[22] = 2112;
      v29 = v7;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s application: %@ supports %@", buf, 0x20u);
    }

    v20 = v7;
  }

  return v7;
}

+ (Class)_classForPlatform:(int64_t)platform
{
  IsValid = AFSiriAnnouncementPlatformGetIsValid();
  if ((IsValid & 1) == 0)
  {
    v5 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      IsValid = objc_opt_class();
      goto LABEL_9;
    }

LABEL_14:
    v7 = 136315394;
    v8 = "+[AFSiriAnnouncementRequestCapabilityManager _classForPlatform:]";
    v9 = 2048;
    platformCopy = platform;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s platform %li is not valid, using headphones provider.", &v7, 0x16u);
    goto LABEL_8;
  }

  if (platform <= 5)
  {
    if (((1 << platform) & 0x1A) != 0)
    {
      goto LABEL_8;
    }

    if (((1 << platform) & 0x21) == 0)
    {
      goto LABEL_8;
    }

    v5 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_9:

  return IsValid;
}

@end