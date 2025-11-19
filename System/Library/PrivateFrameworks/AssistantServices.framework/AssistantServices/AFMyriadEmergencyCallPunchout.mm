@interface AFMyriadEmergencyCallPunchout
- (AFMyriadEmergencyCallPunchout)init;
@end

@implementation AFMyriadEmergencyCallPunchout

void __60__AFMyriadEmergencyCallPunchout_initiateEmergencyCallMyriad__block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[AFMyriadEmergencyCallPunchout initiateEmergencyCallMyriad]_block_invoke";
    _os_log_impl(&dword_1912FE000, v0, OS_LOG_TYPE_INFO, "%s Punching out to Phone app to make emergency call", buf, 0xCu);
  }

  v1 = objc_alloc_init(getTUCallProviderManagerClass());
  v2 = objc_alloc(getTUDialRequestClass());
  v3 = [v1 emergencyProvider];
  v4 = [v2 initWithProvider:v3];

  [v4 setPerformDialAssist:0];
  [v4 setDialType:1];
  v5 = getTUCallSourceIdentifierSpeakerRoute();
  [v4 setAudioSourceIdentifier:v5];

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[AFMyriadEmergencyCallPunchout initiateEmergencyCallMyriad]_block_invoke";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s Emergency beacon handling created dial request %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__AFMyriadEmergencyCallPunchout_initiateEmergencyCallMyriad__block_invoke_24;
  v9[3] = &unk_1E73493C0;
  v10 = v4;
  v7 = v4;
  [v1 launchAppForDialRequest:v7 completion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __60__AFMyriadEmergencyCallPunchout_initiateEmergencyCallMyriad__block_invoke_24(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[AFMyriadEmergencyCallPunchout initiateEmergencyCallMyriad]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Emergency beacon initiated call failed, error: %@", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[AFMyriadEmergencyCallPunchout initiateEmergencyCallMyriad]_block_invoke";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Emergency beacon initiated call created: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (AFMyriadEmergencyCallPunchout)init
{
  v6.receiver = self;
  v6.super_class = AFMyriadEmergencyCallPunchout;
  v2 = [(AFMyriadEmergencyCallPunchout *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.myriad_emergncy_call", 0);
    myriadEmergencyCallingQueue = v2->_myriadEmergencyCallingQueue;
    v2->_myriadEmergencyCallingQueue = v3;
  }

  return v2;
}

@end