@interface AVAudioSession(Announce)
+ (id)an_mode;
+ (uint64_t)an_categoryOptions;
- (uint64_t)an_configureForEndpointWithError:()Announce;
- (uint64_t)an_configureWithError:()Announce;
@end

@implementation AVAudioSession(Announce)

+ (id)an_mode
{
  v0 = +[ANAnnounceFeatureStatus isVoiceMessagesPlaybackEnabled];
  v1 = MEMORY[0x277CB80E8];
  if (!v0)
  {
    v1 = MEMORY[0x277CB80A8];
  }

  v2 = *v1;

  return v2;
}

+ (uint64_t)an_categoryOptions
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v1 = [v0 an_isSoftwareVolumeEnabled];

  v2 = ANLogHandleAudioSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = &stru_2836DAA20;
    v11 = 1024;
    v12 = v1;
    _os_log_impl(&dword_2237C8000, v2, OS_LOG_TYPE_DEFAULT, "%@Software Volume Enabled: %d", &v9, 0x12u);
  }

  if (v1)
  {
    v3 = 59;
  }

  else if (+[ANDevice isAudioAccessory])
  {
    v3 = 59;
  }

  else
  {
    v3 = 40;
  }

  v4 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v5 = [v4 an_isCarPlayConnected];

  v6 = ANLogHandleAudioSession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = &stru_2836DAA20;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_2237C8000, v6, OS_LOG_TYPE_DEFAULT, "%@CarPlay Connected: %d", &v9, 0x12u);
  }

  if (v5)
  {
    result = 40;
  }

  else
  {
    result = v3;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)an_configureWithError:()Announce
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CB83F8] an_category];
  v6 = [MEMORY[0x277CB83F8] an_mode];
  v7 = [MEMORY[0x277CB83F8] an_categoryOptions];
  v8 = ANLogHandleAudioSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v13 = 138413058;
    v14 = &stru_2836DAA20;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_2237C8000, v8, OS_LOG_TYPE_DEFAULT, "%@Category: %@, Mode: %@, Options: %@", &v13, 0x2Au);
  }

  v10 = [a1 setCategory:v5 mode:v6 options:v7 error:a3];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (uint64_t)an_configureForEndpointWithError:()Announce
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CB8030];
  v6 = [MEMORY[0x277CB83F8] an_mode];
  v7 = ANLogHandleAudioSession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:19];
    v12 = 138413058;
    v13 = &stru_2836DAA20;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_2237C8000, v7, OS_LOG_TYPE_DEFAULT, "%@Category: %@, Mode: %@, Options: %@", &v12, 0x2Au);
  }

  v9 = [a1 setCategory:v5 mode:v6 options:19 error:a3];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end