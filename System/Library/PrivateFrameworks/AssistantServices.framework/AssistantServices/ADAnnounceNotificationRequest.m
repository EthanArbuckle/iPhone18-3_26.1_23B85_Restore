@interface ADAnnounceNotificationRequest
- (ADAnnounceNotificationRequest)initWithNotification:(id)a3 appID:(id)a4 platform:(int64_t)a5 summaryDecision:(int64_t)a6 summary:(id)a7 completion:(id)a8;
- (BOOL)supportsImmediateBurstMode;
- (int64_t)_announceNotificationRequestTypeForNotification:(id)a3 appID:(id)a4 platform:(int64_t)a5;
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

  v6 = [(ADAnnounceNotificationRequest *)self announcementType];
  if (v6 <= 9)
  {
    v4 = 0x3Au >> v6;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

- (int64_t)_announceNotificationRequestTypeForNotification:(id)a3 appID:(id)a4 platform:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 request];
  v11 = [v10 content];

  v12 = [v8 intentIdentifiers];
  v13 = [AFSiriAnnouncementRequestCapabilityManager notificationAnnouncementTypeForNotificationFromApp:v9 withIntentIDs:v12 notificationContent:v11 onPlatform:a5];

  if (a5 != 2 && v13 != 3)
  {
    v14 = [APApplication applicationWithBundleIdentifier:v9];
    v15 = [v14 isLocked];

    if (v15)
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
      v18 = [v16 currentNotificationSettingsCenter];
      v19 = [v18 notificationSourceWithIdentifier:v9];
      v20 = [v19 sourceSettings];
      v21 = [v20 notificationSettings];
      v22 = [v21 showPreviewsSetting];
      v23 = AFSiriLogContextConnection;
      v24 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
      if (v22 == 2)
      {
        if (v24)
        {
          *buf = 136315394;
          *&buf[4] = "[ADAnnounceNotificationRequest _announceNotificationRequestTypeForNotification:appID:platform:]";
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Notification from locked app: %@ received, using generic notification announcement", buf, 0x16u);
        }

        v13 = 3;
      }

      else if (v24)
      {
        *buf = 136315394;
        *&buf[4] = "[ADAnnounceNotificationRequest _announceNotificationRequestTypeForNotification:appID:platform:]";
        *&buf[12] = 2112;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s Notification from locked app: %@ received, but show previews is enabled", buf, 0x16u);
      }
    }

    else if (![(NSString *)self->_appID hasPrefix:@"com.apple"]&& (sub_100216380(v9) & 1) == 0)
    {
      v25 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[ADAnnounceNotificationRequest _announceNotificationRequestTypeForNotification:appID:platform:]";
        *&buf[12] = 2112;
        *&buf[14] = v9;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Siri TCC not enabled for app: %@ using generic notification announcement", buf, 0x16u);
      }

      v13 = 3;
    }
  }

  return v13;
}

- (ADAnnounceNotificationRequest)initWithNotification:(id)a3 appID:(id)a4 platform:(int64_t)a5 summaryDecision:(int64_t)a6 summary:(id)a7 completion:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = ADAnnounceNotificationRequest;
  v18 = [(ADAnnouncementRequest *)&v23 initWithAnnouncementRequestType:1 platform:a5 completion:a8];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_notification, a3);
    v20 = [v16 copy];
    appID = v19->_appID;
    v19->_appID = v20;

    v19->_announcementType = [(ADAnnounceNotificationRequest *)v19 _announceNotificationRequestTypeForNotification:v15 appID:v16 platform:a5];
    objc_storeStrong(&v19->_summary, a7);
    v19->_summaryDecision = a6;
    [(ADAnnouncementRequest *)v19 setRequiresOpportuneTime:a5 == 1];
    if (a5 == 1)
    {
      [(ADAnnouncementRequest *)v19 setRequestSupportsBargeIn:[(ADAnnounceNotificationRequest *)v19 _supportsBargeInForAnnounceNotificationType:v19->_announcementType]];
    }
  }

  return v19;
}

@end