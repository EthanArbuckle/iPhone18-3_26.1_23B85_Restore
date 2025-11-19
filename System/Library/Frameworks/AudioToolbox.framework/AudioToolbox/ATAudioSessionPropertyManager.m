@interface ATAudioSessionPropertyManager
- (ATAudioSessionPropertyManager)initWithATAudioSessionClientImpl:(id)a3;
@end

@implementation ATAudioSessionPropertyManager

- (ATAudioSessionPropertyManager)initWithATAudioSessionClientImpl:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (kAudioSessionClientLogSubsystem)
  {
    v5 = *kAudioSessionClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v15 = "ATAudioSessionPropertyManager.mm";
    v16 = 1024;
    v17 = 40;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating ATAudioSessionPropertyManager", buf, 0x12u);
  }

LABEL_8:
  v13.receiver = self;
  v13.super_class = ATAudioSessionPropertyManager;
  v7 = [(ATAudioSessionPropertyManager *)&v13 init];
  v8 = v7;
  if (!v7)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if (!v4)
  {
    if (kAudioSessionClientLogSubsystem)
    {
      v9 = *kAudioSessionClientLogSubsystem;
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "ATAudioSessionPropertyManager.mm";
      v16 = 1024;
      v17 = 46;
      _os_log_impl(&dword_1B9A08000, &v9->super, OS_LOG_TYPE_ERROR, "%25s:%-5d Passing nil ATAudioSessionClientImpl", buf, 0x12u);
    }

    goto LABEL_18;
  }

  objc_storeWeak(&v7->mAsClientImpl, v4);
  v9 = v8;
LABEL_19:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

@end