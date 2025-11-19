@interface AVAudioSession
- (BOOL)activateVoicemailAudioSession;
- (BOOL)deactivateVoicemailAudioSession;
- (BOOL)isCategoryVoicemail;
@end

@implementation AVAudioSession

- (BOOL)isCategoryVoicemail
{
  v2 = [(AVAudioSession *)self category];
  v3 = [v2 isEqualToString:AVAudioSessionCategoryVoiceMail];

  return v3;
}

- (BOOL)activateVoicemailAudioSession
{
  v3 = vm_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = objc_opt_class();
    v4 = v16;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ is activating an audio session.", buf, 0xCu);
  }

  if (![(AVAudioSession *)self isCategoryVoicemail])
  {
    v5 = AVAudioSessionCategoryVoiceMail;
    v14 = 0;
    v6 = [(AVAudioSession *)self setCategory:AVAudioSessionCategoryVoiceMail error:&v14];
    v7 = v14;
    if ((v6 & 1) == 0)
    {
      v8 = vm_ui_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10005FD2C(v5, v7, v8);
      }
    }
  }

  if (![(AVAudioSession *)self isCategoryVoicemail])
  {
    return 0;
  }

  v13 = 0;
  v9 = [(AVAudioSession *)self setActive:1 error:&v13];
  v10 = v13;
  if (!v9)
  {
    v11 = vm_ui_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10005FDB4(v10, v11);
    }
  }

  return v9;
}

- (BOOL)deactivateVoicemailAudioSession
{
  v3 = vm_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = objc_opt_class();
    v4 = v17;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ is dectivating an audio session.", buf, 0xCu);
  }

  v15 = 0;
  v5 = 1;
  v6 = [(AVAudioSession *)self setActive:0 withOptions:1 error:&v15];
  v7 = v15;
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    v9 = [v7 code];
    v10 = vm_ui_log();
    v11 = v10;
    v5 = v9 == 560030580;
    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = [v8 code];
        *buf = 134217984;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Audio session deactivation was unsucessful, but error code was %ld so treating as success", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10005FE2C(v8, v11);
    }
  }

  return v5;
}

@end