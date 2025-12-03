@interface ADAnnounceNotificationRequest
- (ADAnnounceNotificationRequest)initWithNotification:(id)notification appID:(id)d platform:(int64_t)platform summaryDecision:(int64_t)decision summary:(id)summary completion:(id)completion;
- (BOOL)supportsImmediateBurstMode;
- (int64_t)_announceNotificationRequestTypeForNotification:(id)notification appID:(id)d platform:(int64_t)platform;
@end

@implementation ADAnnounceNotificationRequest

- (BOOL)supportsImmediateBurstMode
{
  if ([(ADAnnouncementRequest *)self platform]== 2 || ([(ADAnnounceNotificationRequest *)self summary], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
LABEL_3:
    v4 = 0;
    return v4 & 1;
  }

  if ((+[AFFeatureFlags isAnnouncePolicyEnhancementsEnabled]& 1) == 0)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[ADAnnounceNotificationRequest supportsImmediateBurstMode]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s isAnnouncePolicyEnhancementsEnabled is disabled, no immediateBurstMode", &v8, 0xCu);
    }

    goto LABEL_3;
  }

  announcementType = [(ADAnnounceNotificationRequest *)self announcementType];
  if (announcementType <= 9)
  {
    v4 = 0x3Au >> announcementType;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

- (int64_t)_announceNotificationRequestTypeForNotification:(id)notification appID:(id)d platform:(int64_t)platform
{
  notificationCopy = notification;
  dCopy = d;
  request = [notificationCopy request];
  content = [request content];

  intentIdentifiers = [notificationCopy intentIdentifiers];
  v13 = [AFSiriAnnouncementRequestCapabilityManager notificationAnnouncementTypeForNotificationFromApp:dCopy withIntentIDs:intentIdentifiers notificationContent:content onPlatform:platform];

  if (platform != 2 && v13 != 3)
  {
    v14 = [APApplication applicationWithBundleIdentifier:dCopy];
    isLocked = [v14 isLocked];

    if (isLocked)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2050000000;
      v16 = qword_10058FE58;
      v30 = qword_10058FE58;
      if (!qword_10058FE58)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10008B790;
        v32 = &unk_10051E1C8;
        v33 = &v27;
        sub_10008B790(buf);
        v16 = v28[3];
      }

      v17 = v16;
      _Block_object_dispose(&v27, 8);
      currentNotificationSettingsCenter = [v16 currentNotificationSettingsCenter];
      v19 = [currentNotificationSettingsCenter notificationSourceWithIdentifier:dCopy];
      sourceSettings = [v19 sourceSettings];
      notificationSettings = [sourceSettings notificationSettings];
      showPreviewsSetting = [notificationSettings showPreviewsSetting];
      v23 = AFSiriLogContextConnection;
      v24 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
      if (showPreviewsSetting == 2)
      {
        if (v24)
        {
          *buf = 136315394;
          *&buf[4] = "[ADAnnounceNotificationRequest _announceNotificationRequestTypeForNotification:appID:platform:]";
          *&buf[12] = 2112;
          *&buf[14] = dCopy;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Notification from locked app: %@ received, using generic notification announcement", buf, 0x16u);
        }

        v13 = 3;
      }

      else if (v24)
      {
        *buf = 136315394;
        *&buf[4] = "[ADAnnounceNotificationRequest _announceNotificationRequestTypeForNotification:appID:platform:]";
        *&buf[12] = 2112;
        *&buf[14] = dCopy;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Notification from locked app: %@ received, but show previews is enabled", buf, 0x16u);
      }
    }

    else if (![(NSString *)self->_appID hasPrefix:@"com.apple"]&& (sub_100216380(dCopy) & 1) == 0)
    {
      v25 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[ADAnnounceNotificationRequest _announceNotificationRequestTypeForNotification:appID:platform:]";
        *&buf[12] = 2112;
        *&buf[14] = dCopy;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Siri TCC not enabled for app: %@ using generic notification announcement", buf, 0x16u);
      }

      v13 = 3;
    }
  }

  return v13;
}

- (ADAnnounceNotificationRequest)initWithNotification:(id)notification appID:(id)d platform:(int64_t)platform summaryDecision:(int64_t)decision summary:(id)summary completion:(id)completion
{
  notificationCopy = notification;
  dCopy = d;
  summaryCopy = summary;
  v23.receiver = self;
  v23.super_class = ADAnnounceNotificationRequest;
  v18 = [(ADAnnouncementRequest *)&v23 initWithAnnouncementRequestType:1 platform:platform completion:completion];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_notification, notification);
    v20 = [dCopy copy];
    appID = v19->_appID;
    v19->_appID = v20;

    v19->_announcementType = [(ADAnnounceNotificationRequest *)v19 _announceNotificationRequestTypeForNotification:notificationCopy appID:dCopy platform:platform];
    objc_storeStrong(&v19->_summary, summary);
    v19->_summaryDecision = decision;
    [(ADAnnouncementRequest *)v19 setRequiresOpportuneTime:platform == 1];
    if (platform == 1)
    {
      [(ADAnnouncementRequest *)v19 setRequestSupportsBargeIn:[(ADAnnounceNotificationRequest *)v19 _supportsBargeInForAnnounceNotificationType:v19->_announcementType]];
    }
  }

  return v19;
}

@end