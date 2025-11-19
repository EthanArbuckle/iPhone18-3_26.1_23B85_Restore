@interface PHRingtoneController
- (BOOL)_isActivePreferredOutputPort:(id)a3;
- (BOOL)_shouldAnnounceCalls:(id)a3;
- (PHRingtoneController)init;
- (unsigned)audioSessionIdentifier;
- (unsigned)audioSessionIdentifierForSessionDescriptors:(id)a3;
- (void)_playCallAnnouncement:(id)a3;
- (void)dealloc;
- (void)handleAVSystemController_ServerConnectionDiedNotification:(id)a3;
- (void)handleAVSystemController_SomeSessionIsPlayingDidChangeNotification:(id)a3;
- (void)playAnnouncementForCall:(id)a3;
- (void)playDowntimeStartingAnnouncementForCall:(id)a3;
- (void)setAudioSessionIdentifier:(unsigned int)a3;
- (void)startObservingNotificationsForAVSystemController:(id)a3;
- (void)stopAnnouncement;
- (void)stopObservingNotificationsForAVSystemController:(id)a3;
@end

@implementation PHRingtoneController

- (void)stopAnnouncement
{
  v3 = [(PHRingtoneController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B1F4;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_async(v3, block);
}

- (PHRingtoneController)init
{
  v13.receiver = self;
  v13.super_class = PHRingtoneController;
  v2 = [(PHRingtoneController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_audioSessionIdentifier = 0;
    v4 = objc_alloc_init(TUUserConfiguration);
    userConfiguration = v3->_userConfiguration;
    v3->_userConfiguration = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.InCallService.PHRingtoneController", v6);
    queue = v3->_queue;
    v3->_queue = v7;

    v9 = v3->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E67C;
    block[3] = &unk_100356988;
    v12 = v3;
    dispatch_async(v9, block);
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[AVSystemController sharedAVSystemController];
  [(PHRingtoneController *)self stopObservingNotificationsForAVSystemController:v3];

  v4.receiver = self;
  v4.super_class = PHRingtoneController;
  [(PHRingtoneController *)&v4 dealloc];
}

- (void)startObservingNotificationsForAVSystemController:(id)a3
{
  v4 = a3;
  v5 = [(PHRingtoneController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 attributeForKey:AVSystemController_PlayingSessionsDescriptionAttribute];
  if (v6)
  {
    [(PHRingtoneController *)self setAudioSessionIdentifier:[(PHRingtoneController *)self audioSessionIdentifierForSessionDescriptors:v6]];
  }

  v12[0] = AVSystemController_ServerConnectionDiedNotification;
  v12[1] = AVSystemController_SomeSessionIsPlayingDidChangeNotification;
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v11 = 0;
  v8 = [v4 setAttribute:v7 forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"handleAVSystemController_ServerConnectionDiedNotification:" name:AVSystemController_ServerConnectionDiedNotification object:v4];
    [v10 addObserver:self selector:"handleAVSystemController_SomeSessionIsPlayingDidChangeNotification:" name:AVSystemController_SomeSessionIsPlayingDidChangeNotification object:v4];
  }

  else
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1002546A8(v9, v10);
    }
  }
}

- (void)stopObservingNotificationsForAVSystemController:(id)a3
{
  v4 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:AVSystemController_ServerConnectionDiedNotification object:v4];
  [v5 removeObserver:self name:AVSystemController_SomeSessionIsPlayingDidChangeNotification object:v4];
}

- (BOOL)_isActivePreferredOutputPort:(id)a3
{
  v3 = a3;
  v4 = +[TUAudioSystemController sharedAudioSystemController];
  v5 = [v3 UID];

  v6 = [v4 pickableRouteWithUniqueIdentifier:v5];

  v7 = [v6 isPreferredAndActive];
  if (v7)
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = @"YES";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Preferred output port detected, setting preferredOutputPortEnabled = %@.", &v10, 0xCu);
    }
  }

  return v7;
}

- (BOOL)_shouldAnnounceCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHRingtoneController *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([v4 bypassAnnounceCallsPreference])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(PHRingtoneController *)self userConfiguration];
    v6 = [v7 announceCalls];
  }

  v8 = [v4 bypassAnnounceCallsPreference];
  v9 = sub_100004F84();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = [NSString tu_stringWithTUConfigurationAnnounceCalls:v6];
      *buf = 138412290;
      v65 = v11;
      v12 = "Call overwritten to %@";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
    }
  }

  else if (v10)
  {
    v11 = [NSString tu_stringWithTUConfigurationAnnounceCalls:v6];
    *buf = 138412290;
    v65 = v11;
    v12 = "Call announcement preference set to %@";
    goto LABEL_9;
  }

  if (!v6)
  {
    goto LABEL_78;
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    v13 = sub_100004F84();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Suppressing the call announcement, Voice Over is active.", buf, 2u);
    }

    goto LABEL_78;
  }

  v14 = [(PHRingtoneController *)self audioSessionIdentifier];
  if (!v14)
  {
    v15 = sub_100004F84();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Deferring call announcement until audio session is available.", buf, 2u);
    }
  }

  v16 = [AVAudioSession retrieveSessionWithID:v14];
  if (!v16)
  {
    v48 = sub_100004F84();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_100254720(v14, v48);
    }

    goto LABEL_78;
  }

  v17 = v16;
  v18 = [(__CFString *)v16 currentRoute];
  v19 = [v18 outputs];

  if (![v19 count])
  {
    v49 = sub_100004F84();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v65 = v17;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Suppressing the call announcement, could not retrieve any output routes for the specified audio session (%@).", buf, 0xCu);
    }

    goto LABEL_78;
  }

  v54 = v17;
  v55 = v6;
  v56 = v4;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (!v21)
  {
    v57 = 0;
    v59 = 0;
    v23 = 0;
    goto LABEL_74;
  }

  v22 = v21;
  v57 = 0;
  v58 = self;
  v59 = 0;
  v23 = 0;
  v24 = *v61;
  do
  {
    v25 = 0;
    do
    {
      if (*v61 != v24)
      {
        objc_enumerationMutation(v20);
      }

      v26 = *(*(&v60 + 1) + 8 * v25);
      v27 = sub_100004F84();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v26 portName];
        v29 = [v26 endpointType];
        *buf = 138412546;
        v65 = v28;
        v66 = 2048;
        v67 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Verifying call announcement eligibility of output port %@ with endpoint type '%tu'.", buf, 0x16u);
      }

      v30 = [v26 endpointType];
      if (v30 <= 1953790302)
      {
        if (v30 != 1751412846)
        {
          if (v30 != 1936747378)
          {
            goto LABEL_52;
          }

          v32 = sub_100004F84();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v65 = @"YES";
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Connected to an external speaker, setting speakerEnabled = %@.", buf, 0xCu);
          }

          goto LABEL_40;
        }

        v36 = sub_100004F84();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = @"YES";
          v37 = v36;
          v38 = "Headphones output port detected, setting headphonesEnabled = %@.";
LABEL_49:
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 0xCu);
        }

LABEL_50:

        v59 = [(PHRingtoneController *)v58 _isActivePreferredOutputPort:v26];
LABEL_51:
        v23 = 1;
        goto LABEL_52;
      }

      switch(v30)
      {
        case 1953790303:
          v33 = sub_100004F84();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Call announcements via TTY are not supported.", buf, 2u);
          }

          break;
        case 1969977198:
          v34 = [v26 portType];
          v35 = [v34 isEqualToString:AVAudioSessionPortBluetoothHFP];

          if (v35)
          {
            v36 = sub_100004F84();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v65 = @"YES";
              v37 = v36;
              v38 = "Bluetooth Hands-Free Profile output port detected, setting headphonesEnabled = %@.";
              goto LABEL_49;
            }

            goto LABEL_50;
          }

          v39 = [v26 portType];
          v40 = [v39 isEqualToString:AVAudioSessionPortHeadphones];

          if (v40)
          {
            v41 = sub_100004F84();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v65 = @"YES";
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Headphone or headset output port detected, setting headphonesEnabled = %@.", buf, 0xCu);
            }

            goto LABEL_51;
          }

          v42 = [v26 portType];
          v43 = [v42 isEqualToString:AVAudioSessionPortBuiltInSpeaker];

          v44 = sub_100004F84();
          v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
          if (v43)
          {
            if (v45)
            {
              *buf = 138412290;
              v65 = @"YES";
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Built-in speaker output port detected, setting speakerEnabled = %@.", buf, 0xCu);
            }

LABEL_40:
            BYTE4(v57) = 1;
            break;
          }

          if (v45)
          {
            v46 = [v26 portName];
            *buf = 138412290;
            v65 = v46;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Call announcements via %@ are not supported.", buf, 0xCu);
          }

          break;
        case 1986552684:
          v31 = sub_100004F84();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v65 = @"YES";
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Connected to a vehicle via bluetooth, setting connectedToVehicle = %@.", buf, 0xCu);
          }

          LOBYTE(v57) = 1;
          break;
      }

LABEL_52:
      v25 = v25 + 1;
    }

    while (v22 != v25);
    v47 = [v20 countByEnumeratingWithState:&v60 objects:v68 count:16];
    v22 = v47;
  }

  while (v47);
LABEL_74:

  if (v55 == 1)
  {
    v52 = v23 | v59 | BYTE4(v57) | v57;
    v4 = v56;
  }

  else
  {
    v4 = v56;
    if (v55 == 3)
    {
      v50 = v23 & (BYTE4(v57) ^ 1);
      v51 = v59;
LABEL_81:
      v52 = v50 | v51;
    }

    else
    {
      if (v55 == 2)
      {
        v50 = v23 & (BYTE4(v57) ^ 1);
        v51 = v59 | v57;
        goto LABEL_81;
      }

LABEL_78:
      v52 = 0;
    }
  }

  return v52 & 1;
}

- (void)_playCallAnnouncement:(id)a3
{
  v4 = a3;
  if ([(PHRingtoneController *)self _shouldAnnounceCalls:v4])
  {
    v5 = [(PHRingtoneController *)self callAnnouncement];

    if (v5)
    {
      v6 = sub_100004F84();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(PHRingtoneController *)self callAnnouncement];
        v10 = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Announcements are enabled but already playing a call announcement (%@), so will not play call announcement (%@).", &v10, 0x16u);
      }
    }

    else
    {
      [v4 setAudioSessionIdentifier:{-[PHRingtoneController audioSessionIdentifier](self, "audioSessionIdentifier")}];
      [(PHRingtoneController *)self setCallAnnouncement:v4];
      v8 = sub_100004F84();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(PHRingtoneController *)self callAnnouncement];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Announcements are enabled, playing call announcement (%@).", &v10, 0xCu);
      }

      v6 = [(PHRingtoneController *)self callAnnouncement];
      [v6 start];
    }
  }

  else
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Announcements are disabled, will not play call announcement (%@).", &v10, 0xCu);
    }
  }
}

- (void)playAnnouncementForCall:(id)a3
{
  v4 = [(ICSCallAnnouncement *)ICSSiriCallAnnouncement announcementWithCall:a3];
  v5 = [(PHRingtoneController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F5B0;
  v7[3] = &unk_100357110;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)playDowntimeStartingAnnouncementForCall:(id)a3
{
  v4 = [(ICSCallAnnouncement *)ICSDowntimeAnnouncement announcementWithCall:a3];
  [(PHRingtoneController *)self setCallAnnouncement:v4];
  v5 = [(PHRingtoneController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F680;
  block[3] = &unk_100356988;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (unsigned)audioSessionIdentifier
{
  v3 = [(PHRingtoneController *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_audioSessionIdentifier;
}

- (void)setAudioSessionIdentifier:(unsigned int)a3
{
  v5 = [(PHRingtoneController *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_audioSessionIdentifier != a3)
  {
    self->_audioSessionIdentifier = a3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006F770;
    block[3] = &unk_100356988;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)handleAVSystemController_ServerConnectionDiedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  v6 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006F930;
    v8[3] = &unk_100357110;
    v8[4] = self;
    v9 = v6;
    dispatch_async(queue, v8);
  }
}

- (void)handleAVSystemController_SomeSessionIsPlayingDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:AVSystemController_SomeSessionIsPlayingDidChangeNotificationParameter_Sessions];

  if (v7)
  {
    v8 = [(PHRingtoneController *)self queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006FB0C;
    v9[3] = &unk_100357110;
    v9[4] = self;
    v10 = v7;
    dispatch_async(v8, v9);
  }
}

- (unsigned)audioSessionIdentifierForSessionDescriptors:(id)a3
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v20 = 0;
    v6 = *v28;
    v22 = TUBundleIdentifierCallServicesDaemon;
    v21 = v3;
    v24 = *v28;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = AVSystemController_PlayingSessionsDescriptionKey_ClientPID;
        v10 = [v8 objectForKeyedSubscript:v9];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          continue;
        }

        v11 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v10 intValue]);
        if (!v11)
        {
          v13 = 0;
          v18 = 1;
          goto LABEL_24;
        }

        v26 = 0;
        v12 = [RBSProcessHandle handleForIdentifier:v11 error:&v26];
        v13 = v26;
        if (v12)
        {
          v14 = [RBSProcessPredicate predicateMatchingServiceName:v22];
          if (v14)
          {
            v25 = 0;
            v15 = [RBSProcessHandle handleForPredicate:v14 error:&v25];
            v23 = v25;

            if (v15 && [v12 isEqual:v15])
            {
              v16 = AVSystemController_PlayingSessionsDescriptionKey_AudioSessionID;

              v17 = [v8 objectForKeyedSubscript:v16];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = [v17 unsignedIntValue];
                v18 = 0;
              }

              else
              {
                v18 = 1;
              }

              v10 = v17;
              v9 = v16;
            }

            else
            {
              v18 = 1;
            }

            v13 = v23;
            v3 = v21;
            goto LABEL_23;
          }
        }

        else
        {
          v14 = sub_100004F84();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v13;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Retrieving process handle failed with error %@", buf, 0xCu);
          }
        }

        v18 = 1;
LABEL_23:

        v6 = v24;
LABEL_24:

        if (!v18)
        {
          goto LABEL_29;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (!v5)
      {
        goto LABEL_29;
      }
    }
  }

  v20 = 0;
LABEL_29:

  return v20;
}

@end