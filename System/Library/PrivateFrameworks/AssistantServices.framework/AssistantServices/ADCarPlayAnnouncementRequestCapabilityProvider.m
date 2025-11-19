@interface ADCarPlayAnnouncementRequestCapabilityProvider
- (void)_updateForCarPlaySessionConnected:(BOOL)a3;
@end

@implementation ADCarPlayAnnouncementRequestCapabilityProvider

- (void)_updateForCarPlaySessionConnected:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = ADCarPlayAnnouncementRequestCapabilityProvider;
  [(AFCarPlayAnnouncementRequestCapabilityProvider *)&v9 _updateForCarPlaySessionConnected:?];
  if (v3)
  {
    _AFPreferencesAnnounceNotificationsInCarPlayType();
    v4 = 0;
    v5 = _AFPreferencesAnnounceNotificationsInCarPlayType();
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        _AFPreferencesSetAnnounceNotificationsInCarPlayTemporarilyDisabled();
        v4 = @"Resetting announce notifications in CarPlay to muted.";
LABEL_10:
        v6 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v7 = v6;
          v8 = AFSiriCarPlayAnnounceEnablementTypeGetName();
          *buf = 136315650;
          v11 = "[ADCarPlayAnnouncementRequestCapabilityProvider _updateForCarPlaySessionConnected:]";
          v12 = 2112;
          v13 = v8;
          v14 = 2112;
          v15 = v4;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s New CarPlay connection with setting %@. %@", buf, 0x20u);
        }

        return;
      }

      if (v5 != 4)
      {
        goto LABEL_10;
      }
    }

    else if (v5 >= 2)
    {
      if (v5 == 2)
      {
        _AFPreferencesSetAnnounceNotificationsInCarPlayTemporarilyDisabled();
        v4 = @"Resetting announce notifications in CarPlay to unmuted.";
      }

      goto LABEL_10;
    }

    v4 = @"Not resetting announce notifications.";
    goto LABEL_10;
  }
}

@end