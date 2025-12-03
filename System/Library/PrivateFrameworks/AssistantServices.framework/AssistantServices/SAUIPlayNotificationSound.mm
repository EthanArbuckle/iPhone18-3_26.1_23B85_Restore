@interface SAUIPlayNotificationSound
- (id)_soundURLForAnnouncePlatform:(int64_t)platform;
- (int64_t)_soundIDForAnnouncePlatform:(int64_t)platform;
- (void)_adui_handleWithCompletion:(id)completion;
@end

@implementation SAUIPlayNotificationSound

- (void)_adui_handleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v48 = "[SAUIPlayNotificationSound(ADUIService) _adui_handleWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = [AFTwoArgumentSafetyBlock alloc];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100285784;
  v45[3] = &unk_100519680;
  v45[4] = self;
  v7 = completionCopy;
  v46 = v7;
  v8 = [v6 initWithBlock:v45 defaultValue1:0 defaultValue2:0];
  v9 = +[ADCommandCenter sharedCommandCenter];
  v10 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
  announcePlatformForCurrentRequest = [v10 announcePlatformForCurrentRequest];

  v12 = [(SAUIPlayNotificationSound *)self _soundURLForAnnouncePlatform:announcePlatformForCurrentRequest];
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v48 = "[SAUIPlayNotificationSound(ADUIService) _adui_handleWithCompletion:]";
    v49 = 2112;
    v50 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Chose sound URL: %@", buf, 0x16u);
  }

  if (v12)
  {
    v14 = [AFAudioPlaybackRequest alloc];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100285890;
    v42[3] = &unk_1005187A0;
    v43 = v12;
    selfCopy = self;
    v15 = [v14 initWithBuilder:v42];
    v16 = [AFSpeechRequestOptions alloc];
    if (announcePlatformForCurrentRequest == 2)
    {
      v17 = 32;
    }

    else
    {
      v17 = 21;
    }

    v18 = [v16 initWithActivationEvent:{v17, v7}];
    [v18 setAnnouncementPlatform:announcePlatformForCurrentRequest];
    notificationType = [(SAUIPlayNotificationSound *)self notificationType];
    v20 = [notificationType isEqualToString:SANotificationTypeConnectedCallValue];

    if (v20)
    {
      v21 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v48 = "[SAUIPlayNotificationSound(ADUIService) _adui_handleWithCompletion:]";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Related reply to announce incoming request", buf, 0xCu);
      }

      v22 = +[AFAnalytics sharedAnalytics];
      [v22 logEventWithType:6011 context:0];

      notificationId = [(SAUIPlayNotificationSound *)self notificationId];

      if (!notificationId)
      {
        v31 = objc_alloc_init(SACommandSucceeded);
        [v8 invokeWithValue:v31 andValue:0];
LABEL_21:

        v30 = v43;
        v7 = v32;
        goto LABEL_22;
      }

      [v18 setIsOnPhoneCall:1];
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100285938;
    v35[3] = &unk_100518868;
    v24 = v9;
    v36 = v24;
    v37 = v18;
    v41 = v20;
    v38 = v15;
    v40 = announcePlatformForCurrentRequest;
    v39 = v8;
    v25 = objc_retainBlock(v35);
    v26 = v25;
    if (v20)
    {
      v27 = dispatch_time(0, 750000000);
      _queue = [v24 _queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100285A7C;
      block[3] = &unk_10051CF58;
      v34 = v26;
      dispatch_after(v27, _queue, block);
    }

    else
    {
      (v25[2])(v25);
    }

    v31 = v36;
    goto LABEL_21;
  }

  v29 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v48 = "[SAUIPlayNotificationSound(ADUIService) _adui_handleWithCompletion:]";
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s Error resolving sound URL for SAUIPlayNotificationSound", buf, 0xCu);
  }

  v30 = objc_alloc_init(SACommandFailed);
  [v8 invokeWithValue:v30 andValue:0];
LABEL_22:
}

- (id)_soundURLForAnnouncePlatform:(int64_t)platform
{
  notificationType = [(SAUIPlayNotificationSound *)self notificationType];
  v6 = [notificationType isEqualToString:SANotificationTypeConnectedCallValue];

  if (v6)
  {
    v7 = [[NSURL alloc] initFileURLWithPath:@"/System/Library/Audio/UISounds/nano/vc~invitation-accepted.caf" isDirectory:0];
  }

  else
  {
    v8 = [(SAUIPlayNotificationSound *)self _soundIDForAnnouncePlatform:platform];
    if (v8)
    {
      v9 = v8;
      v10 = +[AFBundleResourceManager sharedManager];
      v7 = [v10 URLForSoundID:v9];
    }

    else
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v13 = v11;
        notificationType2 = [(SAUIPlayNotificationSound *)self notificationType];
        v15 = 136315394;
        v16 = "[SAUIPlayNotificationSound(ADUIService) _soundURLForAnnouncePlatform:]";
        v17 = 2112;
        v18 = notificationType2;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Unsupported notificationType: %@", &v15, 0x16u);
      }

      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)_soundIDForAnnouncePlatform:(int64_t)platform
{
  notificationType = [(SAUIPlayNotificationSound *)self notificationType];

  if (!notificationType)
  {
    return 0;
  }

  notificationType2 = [(SAUIPlayNotificationSound *)self notificationType];
  v7 = [notificationType2 isEqualToString:SANotificationTypeIncomingMessageValue];

  if (v7)
  {
    if (platform == 2)
    {
      return 7;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    notificationType3 = [(SAUIPlayNotificationSound *)self notificationType];
    v10 = [notificationType3 isEqualToString:SANotificationTypeIncomingHomeCommunicationValue];

    if (v10)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }
}

@end