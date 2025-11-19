@interface AppAttestTaskCreator
+ (id)create;
+ (id)createForDefaultAttest;
+ (id)createForDeviceAttestKeychain;
+ (id)createForWebAuthAttestKeychain;
@end

@implementation AppAttestTaskCreator

+ (id)create
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = [a1 createForDefaultAttest];
  v4 = [a1 createForWebAuthAttestKeychain];
  v9[1] = v4;
  v5 = [a1 createForDeviceAttestKeychain];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)createForDefaultAttest
{
  v2 = [[DCBGSTask alloc] initWithTaskIdentifier:@"com.apple.devicecheck.notify.attest" observerIdentifier:@"AAACleanupInterval"];
  [(DCBGSTask *)v2 setTaskHandler:&__block_literal_global_0];

  return v2;
}

void __46__AppAttestTaskCreator_createForDefaultAttest__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    removeAllKeychainItemsForMissingAppsWithShouldExit(a3);
    [v4 setTaskCompleted];
  }

  else
  {
    if (AAInternalLogSystem_onceToken_0 != -1)
    {
      __46__AppAttestTaskCreator_createForDefaultAttest__block_invoke_cold_1();
    }

    v5 = AAInternalLogSystem_log_0;
    if (os_log_type_enabled(AAInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      v6 = 0;
      v7 = 0;
      v8 = 47;
      do
      {
        v9 = &aLibraryCachesC_0[v6];
        if (v8 == 47)
        {
          v7 = &aLibraryCachesC_0[v6];
        }

        v8 = v9[1];
        if (!v9[1])
        {
          break;
        }
      }

      while (v6++ < 0xFFF);
      if (v7)
      {
        v11 = v7 + 1;
      }

      else
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestTaskCreator.m";
      }

      v13 = 136315394;
      v14 = v11;
      v15 = 1024;
      v16 = 51;
      _os_log_impl(&dword_226177000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to cast system task type.", &v13, 0x12u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)createForWebAuthAttestKeychain
{
  v2 = [[DCBGSTask alloc] initWithTaskIdentifier:@"com.apple.devicecheck.notify.webauthattest.keychain" observerIdentifier:@"webAuthAttestKeychainCleanupInterval"];
  [(DCBGSTask *)v2 setTaskHandler:&__block_literal_global_17];

  return v2;
}

void __54__AppAttestTaskCreator_createForWebAuthAttestKeychain__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v22 = 0;
    v3 = delete_keychain_item(@"appattest-webauthn", 0, &v22);
    v4 = v22;
    v5 = v4;
    if (!v3 || v4 != 0)
    {
      if (AAInternalLogSystem_onceToken_0 != -1)
      {
        __54__AppAttestTaskCreator_createForWebAuthAttestKeychain__block_invoke_cold_1();
      }

      v7 = AAInternalLogSystem_log_0;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 0;
        v9 = 0;
        v10 = 47;
        do
        {
          v11 = &aLibraryCachesC_0[v8];
          if (v10 == 47)
          {
            v9 = &aLibraryCachesC_0[v8];
          }

          v10 = v11[1];
          if (!v11[1])
          {
            break;
          }

          v12 = v8++ >= 0xFFF;
        }

        while (!v12);
        if (v9)
        {
          v13 = v9 + 1;
        }

        else
        {
          v13 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestTaskCreator.m";
        }

        v14 = [v5 localizedDescription];
        *buf = 136315906;
        v24 = v13;
        v25 = 1024;
        v26 = 75;
        v27 = 2112;
        v28 = @"appattest-webauthn";
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_226177000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to delete keychain items. { accessGroup=%@, error=%@ }", buf, 0x26u);
      }
    }

    [v2 setTaskCompleted];
  }

  else
  {
    if (AAInternalLogSystem_onceToken_0 != -1)
    {
      __46__AppAttestTaskCreator_createForDefaultAttest__block_invoke_cold_1();
    }

    v15 = AAInternalLogSystem_log_0;
    if (os_log_type_enabled(AAInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      v16 = 0;
      v17 = 0;
      v18 = 47;
      do
      {
        v19 = &aLibraryCachesC_0[v16];
        if (v18 == 47)
        {
          v17 = &aLibraryCachesC_0[v16];
        }

        v18 = v19[1];
        if (!v19[1])
        {
          break;
        }

        v12 = v16++ >= 0xFFF;
      }

      while (!v12);
      if (v17)
      {
        v20 = v17 + 1;
      }

      else
      {
        v20 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestTaskCreator.m";
      }

      *buf = 136315394;
      v24 = v20;
      v25 = 1024;
      v26 = 69;
      _os_log_impl(&dword_226177000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to cast system task type.", buf, 0x12u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)createForDeviceAttestKeychain
{
  v2 = [[DCBGSTask alloc] initWithTaskIdentifier:@"com.apple.devicecheck.notify.deviceattest.keychain" observerIdentifier:@"deviceAttestKeychainCleanupInterval"];
  [(DCBGSTask *)v2 setTaskHandler:&__block_literal_global_19];

  return v2;
}

void __53__AppAttestTaskCreator_createForDeviceAttestKeychain__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v22 = 0;
    v3 = delete_keychain_item(@"appattest-device", 0, &v22);
    v4 = v22;
    v5 = v4;
    if (!v3 || v4 != 0)
    {
      if (AAInternalLogSystem_onceToken_0 != -1)
      {
        __54__AppAttestTaskCreator_createForWebAuthAttestKeychain__block_invoke_cold_1();
      }

      v7 = AAInternalLogSystem_log_0;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 0;
        v9 = 0;
        v10 = 47;
        do
        {
          v11 = &aLibraryCachesC_0[v8];
          if (v10 == 47)
          {
            v9 = &aLibraryCachesC_0[v8];
          }

          v10 = v11[1];
          if (!v11[1])
          {
            break;
          }

          v12 = v8++ >= 0xFFF;
        }

        while (!v12);
        if (v9)
        {
          v13 = v9 + 1;
        }

        else
        {
          v13 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestTaskCreator.m";
        }

        v14 = [v5 localizedDescription];
        *buf = 136315906;
        v24 = v13;
        v25 = 1024;
        v26 = 96;
        v27 = 2112;
        v28 = @"appattest-device";
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_226177000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to delete keychain items. { accessGroup=%@, error=%@ }", buf, 0x26u);
      }
    }

    [v2 setTaskCompleted];
  }

  else
  {
    if (AAInternalLogSystem_onceToken_0 != -1)
    {
      __46__AppAttestTaskCreator_createForDefaultAttest__block_invoke_cold_1();
    }

    v15 = AAInternalLogSystem_log_0;
    if (os_log_type_enabled(AAInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      v16 = 0;
      v17 = 0;
      v18 = 47;
      do
      {
        v19 = &aLibraryCachesC_0[v16];
        if (v18 == 47)
        {
          v17 = &aLibraryCachesC_0[v16];
        }

        v18 = v19[1];
        if (!v19[1])
        {
          break;
        }

        v12 = v16++ >= 0xFFF;
      }

      while (!v12);
      if (v17)
      {
        v20 = v17 + 1;
      }

      else
      {
        v20 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestTaskCreator.m";
      }

      *buf = 136315394;
      v24 = v20;
      v25 = 1024;
      v26 = 90;
      _os_log_impl(&dword_226177000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to cast system task type.", buf, 0x12u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end