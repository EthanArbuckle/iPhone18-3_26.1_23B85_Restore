@interface DCAppAttestWebAuthService
+ (DCAppAttestWebAuthService)sharedService;
- (BOOL)hasEntitlement;
- (BOOL)isSupported;
- (DCAppAttestController)appAttestController;
- (void)attestKey:(__SecKey *)a3 clientDataHash:(id)a4 authData:(id)a5 completionHandler:(id)a6;
@end

@implementation DCAppAttestWebAuthService

- (DCAppAttestController)appAttestController
{
  appAttestController = self->_appAttestController;
  if (!appAttestController)
  {
    v4 = [[DCAppAttestController alloc] initWithType:2];
    v5 = self->_appAttestController;
    self->_appAttestController = v4;

    appAttestController = self->_appAttestController;
  }

  return appAttestController;
}

+ (DCAppAttestWebAuthService)sharedService
{
  if (sharedService_onceToken_2 != -1)
  {
    +[DCAppAttestWebAuthService sharedService];
  }

  v3 = sharedService_sharedService_2;

  return v3;
}

uint64_t __42__DCAppAttestWebAuthService_sharedService__block_invoke()
{
  sharedService_sharedService_2 = objc_alloc_init(DCAppAttestWebAuthService);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isSupported
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(DCAppAttestWebAuthService *)self hasEntitlement])
  {
    v3 = [(DCAppAttestWebAuthService *)self appAttestController];
    v4 = [v3 isSupported];

    v5 = *MEMORY[0x277D85DE8];
    return v4;
  }

  else
  {
    if (DCLogSystem_onceToken_3 != -1)
    {
      [DCAppAttestWebAuthService isSupported];
    }

    v7 = DCLogSystem_log_3;
    if (os_log_type_enabled(DCLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 0;
      v9 = 0;
      v10 = 47;
      do
      {
        v11 = &aLibraryCachesC_3[v8];
        if (v10 == 47)
        {
          v9 = &aLibraryCachesC_3[v8];
        }

        v10 = v11[1];
        if (!v11[1])
        {
          break;
        }
      }

      while (v8++ < 0xFFF);
      if (v9)
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheck/Source/Interfaces/Private/DCAppAttestWebAuthService.m";
      }

      v15 = 136315394;
      v16 = v13;
      v17 = 1024;
      v18 = 60;
      _os_log_impl(&dword_238044000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client is missing WebAuth API entitlement.", &v15, 0x12u);
    }

    v14 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (void)attestKey:(__SecKey *)a3 clientDataHash:(id)a4 authData:(id)a5 completionHandler:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(DCAppAttestWebAuthService *)self isSupported])
  {
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];

    v34 = 0;
    v15 = store_keychain_item(a3, @"appattest-webauthn", v14, &v34);
    v16 = v34;
    if (v15)
    {
      v17 = SecKeyCopyAttributes(a3);
      v18 = [(DCAppAttestWebAuthService *)self appAttestController];
      [v18 attestKey:v14 keyAttributes:v17 clientDataHash:v10 authData:v11 options:0 completionHandler:v12];
    }

    else
    {
      if (DCLogSystem_onceToken_3 != -1)
      {
        [DCAppAttestWebAuthService attestKey:clientDataHash:authData:completionHandler:];
      }

      v26 = DCLogSystem_log_3;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = 0;
        v28 = 0;
        v29 = 47;
        do
        {
          v30 = &aLibraryCachesC_3[v27];
          if (v29 == 47)
          {
            v28 = &aLibraryCachesC_3[v27];
          }

          v29 = v30[1];
          if (!v30[1])
          {
            break;
          }

          v24 = v27++ >= 0xFFF;
        }

        while (!v24);
        if (v28)
        {
          v31 = v28 + 1;
        }

        else
        {
          v31 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheck/Source/Interfaces/Private/DCAppAttestWebAuthService.m";
        }

        v32 = [v16 localizedDescription];
        *buf = 136315650;
        v36 = v31;
        v37 = 1024;
        v38 = 83;
        v39 = 2112;
        v40 = v32;
        _os_log_impl(&dword_238044000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to save key to keychain. { error=%@ }", buf, 0x1Cu);
      }

      v17 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
      v12[2](v12, 0, v17);
    }
  }

  else
  {
    if (DCLogSystem_onceToken_3 != -1)
    {
      [DCAppAttestWebAuthService isSupported];
    }

    v19 = DCLogSystem_log_3;
    if (os_log_type_enabled(DCLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v21 = 0;
      v22 = 47;
      do
      {
        v23 = &aLibraryCachesC_3[v20];
        if (v22 == 47)
        {
          v21 = &aLibraryCachesC_3[v20];
        }

        v22 = v23[1];
        if (!v23[1])
        {
          break;
        }

        v24 = v20++ >= 0xFFF;
      }

      while (!v24);
      if (v21)
      {
        v25 = v21 + 1;
      }

      else
      {
        v25 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheck/Source/Interfaces/Private/DCAppAttestWebAuthService.m";
      }

      *buf = 136315394;
      v36 = v25;
      v37 = 1024;
      v38 = 74;
      _os_log_impl(&dword_238044000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client not supported, cannot attest key.", buf, 0x12u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasEntitlement
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __43__DCAppAttestWebAuthService_hasEntitlement__block_invoke;
  v22[3] = &__block_descriptor_40_e5_v8__0l;
  v22[4] = v2;
  v3 = MEMORY[0x2383E6220](v22);
  v20[4] = 0;
  error = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __43__DCAppAttestWebAuthService_hasEntitlement__block_invoke_2;
  v20[3] = &__block_descriptor_40_e5_v8__0l;
  v4 = MEMORY[0x2383E6220](v20);
  v5 = SecTaskCopyValueForEntitlement(v2, @"com.apple.devicecheck.private.webauth", &error);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __43__DCAppAttestWebAuthService_hasEntitlement__block_invoke_3;
  v19[3] = &__block_descriptor_40_e5_v8__0l;
  v19[4] = v5;
  v6 = MEMORY[0x2383E6220](v19);
  if (error)
  {
    if (DCLogSystem_onceToken_3 != -1)
    {
      [DCAppAttestWebAuthService attestKey:clientDataHash:authData:completionHandler:];
    }

    v7 = DCLogSystem_log_3;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 0;
      v9 = 0;
      v10 = 47;
      do
      {
        v11 = &aLibraryCachesC_3[v8];
        if (v10 == 47)
        {
          v9 = &aLibraryCachesC_3[v8];
        }

        v10 = v11[1];
        if (!v11[1])
        {
          break;
        }
      }

      while (v8++ < 0xFFF);
      v13 = CFErrorCopyDescription(error);
      if (v9)
      {
        v14 = v9 + 1;
      }

      else
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheck/Source/Interfaces/Private/DCAppAttestWebAuthService.m";
      }

      *buf = 136315650;
      v24 = v14;
      v25 = 1024;
      v26 = 108;
      v27 = 2112;
      v28 = v13;
      v15 = v13;
      _os_log_impl(&dword_238044000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch entitlement. { error=%@ }", buf, 0x1Cu);
    }

    v16 = 0;
  }

  else
  {
    v16 = v5 == *MEMORY[0x277CBED28];
  }

  v6[2](v6);

  v4[2](v4);
  v3[2](v3);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void __43__DCAppAttestWebAuthService_hasEntitlement__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __43__DCAppAttestWebAuthService_hasEntitlement__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __43__DCAppAttestWebAuthService_hasEntitlement__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

@end