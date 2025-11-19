@interface ACCHWComponentAuthService
- (BOOL)_getForVeridianFDRData:(id)a3 intermediateCert:(id *)a4 leafCert:(id *)a5;
- (BOOL)_verifyDeviceIDSN:(unsigned int)a3;
- (BOOL)_verifyDeviceInfo:(unsigned int)a3;
- (BOOL)_verifyModuleFDR:(id)a3 forModuleType:(int)a4;
- (int)_signChallenge:(id)a3;
- (int)_verifyBatteryMatch:(id)a3 outputBatteryCode:(unsigned __int16 *)a4;
- (int)_verifyCertificate:(id)a3;
- (int)_verifyModuleCertificate:(id)a3 forModuleType:(int)a4;
- (int)_verifySignature:(id)a3;
- (unsigned)_findModuleAuthService:(int)a3 withAuthFlags:(unsigned int *)a4;
- (void)_authenticateModuleWithChallenge:(id)a3 completionHandler:(id)a4 moduleType:(int)a5 updateRegistry:(BOOL)a6 updateUIProperty:(BOOL)a7 logToAnalytics:(BOOL)a8;
- (void)_logToAnalytics:(int)a3 authError:(int)a4 fdrValidationStatus:(int)a5 authDurationInMS:(unint64_t)a6;
- (void)_notifyComponentAuthFailure;
- (void)authenticateBatteryWithChallenge:(id)a3 completionHandler:(id)a4;
- (void)authenticateLASWithChallenge:(id)a3 completionHandler:(id)a4 updateRegistry:(BOOL)a5;
- (void)authenticateTouchControllerWithChallenge:(id)a3 completionHandler:(id)a4 updateRegistry:(BOOL)a5;
- (void)authenticateVeridianWithChallenge:(id)a3 completionHandler:(id)a4;
- (void)authenticateVeridianWithChallenge:(id)a3 completionHandler:(id)a4 updateRegistry:(BOOL)a5 updateUIProperty:(BOOL)a6 logToAnalytics:(BOOL)a7;
- (void)signVeridianChallenge:(id)a3 completionHandler:(id)a4;
- (void)verifyBatteryMatch:(id)a3 completionHandler:(id)a4;
@end

@implementation ACCHWComponentAuthService

- (void)authenticateBatteryWithChallenge:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (authenticateBatteryWithChallenge_completionHandler__onceToken != -1)
  {
    [ACCHWComponentAuthService authenticateBatteryWithChallenge:completionHandler:];
  }

  v8 = authenticateBatteryWithChallenge_completionHandler__batteryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__ACCHWComponentAuthService_authenticateBatteryWithChallenge_completionHandler___block_invoke_2;
  block[3] = &unk_278BF6530;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __80__ACCHWComponentAuthService_authenticateBatteryWithChallenge_completionHandler___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.ACCHWComponentAuthService.battery", 0);
  v1 = authenticateBatteryWithChallenge_completionHandler__batteryQueue;
  authenticateBatteryWithChallenge_completionHandler__batteryQueue = v0;

  v2 = authenticateBatteryWithChallenge_completionHandler__batteryQueue;
  v3 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v2, v3);
}

- (void)authenticateTouchControllerWithChallenge:(id)a3 completionHandler:(id)a4 updateRegistry:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (authenticateTouchControllerWithChallenge_completionHandler_updateRegistry__onceToken != -1)
  {
    [ACCHWComponentAuthService authenticateTouchControllerWithChallenge:completionHandler:updateRegistry:];
  }

  v10 = authenticateTouchControllerWithChallenge_completionHandler_updateRegistry__touchControllerQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__ACCHWComponentAuthService_authenticateTouchControllerWithChallenge_completionHandler_updateRegistry___block_invoke_2;
  v13[3] = &unk_278BF6558;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __103__ACCHWComponentAuthService_authenticateTouchControllerWithChallenge_completionHandler_updateRegistry___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.ACCHWComponentAuthService.touchcontroller", 0);
  v1 = authenticateTouchControllerWithChallenge_completionHandler_updateRegistry__touchControllerQueue;
  authenticateTouchControllerWithChallenge_completionHandler_updateRegistry__touchControllerQueue = v0;

  v2 = authenticateTouchControllerWithChallenge_completionHandler_updateRegistry__touchControllerQueue;
  v3 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v2, v3);
}

- (void)authenticateVeridianWithChallenge:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (authenticateVeridianWithChallenge_completionHandler__onceToken != -1)
  {
    [ACCHWComponentAuthService authenticateVeridianWithChallenge:completionHandler:];
  }

  v8 = authenticateVeridianWithChallenge_completionHandler__veridianQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__ACCHWComponentAuthService_authenticateVeridianWithChallenge_completionHandler___block_invoke_2;
  block[3] = &unk_278BF6530;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __81__ACCHWComponentAuthService_authenticateVeridianWithChallenge_completionHandler___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.ACCHWComponentAuthService.veridian", 0);
  v1 = authenticateVeridianWithChallenge_completionHandler__veridianQueue;
  authenticateVeridianWithChallenge_completionHandler__veridianQueue = v0;

  v2 = authenticateVeridianWithChallenge_completionHandler__veridianQueue;
  v3 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v2, v3);
}

- (void)authenticateVeridianWithChallenge:(id)a3 completionHandler:(id)a4 updateRegistry:(BOOL)a5 updateUIProperty:(BOOL)a6 logToAnalytics:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  if (authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics__onceToken != -1)
  {
    [ACCHWComponentAuthService authenticateVeridianWithChallenge:completionHandler:updateRegistry:updateUIProperty:logToAnalytics:];
  }

  v14 = authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics__veridianQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __128__ACCHWComponentAuthService_authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics___block_invoke_2;
  v17[3] = &unk_278BF6580;
  v17[4] = self;
  v18 = v12;
  v19 = v13;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v15 = v13;
  v16 = v12;
  dispatch_async(v14, v17);
}

void __128__ACCHWComponentAuthService_authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.ACCHWComponentAuthService.veridian", 0);
  v1 = authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics__veridianQueue;
  authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics__veridianQueue = v0;

  v2 = authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics__veridianQueue;
  v3 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v2, v3);
}

- (void)authenticateLASWithChallenge:(id)a3 completionHandler:(id)a4 updateRegistry:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (authenticateLASWithChallenge_completionHandler_updateRegistry__onceToken != -1)
  {
    [ACCHWComponentAuthService authenticateLASWithChallenge:completionHandler:updateRegistry:];
  }

  v10 = authenticateLASWithChallenge_completionHandler_updateRegistry__LASQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__ACCHWComponentAuthService_authenticateLASWithChallenge_completionHandler_updateRegistry___block_invoke_2;
  v13[3] = &unk_278BF6558;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __91__ACCHWComponentAuthService_authenticateLASWithChallenge_completionHandler_updateRegistry___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.ACCHWComponentAuthService.las", 0);
  v1 = authenticateLASWithChallenge_completionHandler_updateRegistry__LASQueue;
  authenticateLASWithChallenge_completionHandler_updateRegistry__LASQueue = v0;

  v2 = authenticateLASWithChallenge_completionHandler_updateRegistry__LASQueue;
  v3 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v2, v3);
}

- (void)_authenticateModuleWithChallenge:(id)a3 completionHandler:(id)a4 moduleType:(int)a5 updateRegistry:(BOOL)a6 updateUIProperty:(BOOL)a7 logToAnalytics:(BOOL)a8
{
  v8 = a8;
  v173 = a7;
  v175 = a6;
  v190 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  init_logging();
  v13 = objc_alloc_init(ACCHWComponentAuthServiceParams);
  v186 = -1431655766;
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  valuePtr = 0;
  CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
  v182[0] = MEMORY[0x277D85DD0];
  v182[1] = 3221225472;
  v182[2] = __138__ACCHWComponentAuthService__authenticateModuleWithChallenge_completionHandler_moduleType_updateRegistry_updateUIProperty_logToAnalytics___block_invoke;
  v182[3] = &__block_descriptor_36_e5_v8__0l;
  v179 = a5;
  v183 = a5;
  v15 = v182;
  if (_authenticateModuleWithChallenge_completionHandler_moduleType_updateRegistry_updateUIProperty_logToAnalytics__onceToken != -1)
  {
    dispatch_once(&_authenticateModuleWithChallenge_completionHandler_moduleType_updateRegistry_updateUIProperty_logToAnalytics__onceToken, v15);
  }

  v178 = v12;
  v176 = v8;
  v174 = CurrentUnixTimeMS;
  if (_authenticateModuleWithChallenge_completionHandler_moduleType_updateRegistry_updateUIProperty_logToAnalytics__disableAuth == 1)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v16 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ACASignVeridianChallenge_cold_2();
      }

      v16 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    v177 = v11;
    v19 = a5;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a5;
      _os_log_impl(&dword_23DC14000, v16, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) skip component auth", buf, 8u);
    }

    [(ACCHWComponentAuthServiceParams *)v13 setSignature:0];
    [(ACCHWComponentAuthServiceParams *)v13 setCertificate:0];
    [(ACCHWComponentAuthServiceParams *)v13 setCertificateInfo:0];
    [(ACCHWComponentAuthServiceParams *)v13 setSkipComms:0];
    v20 = 0;
    v21 = 1;
    goto LABEL_289;
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v17 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v17 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a5;
    _os_log_impl(&dword_23DC14000, v17, OS_LOG_TYPE_DEFAULT, "(moduleType=%d)", buf, 8u);
  }

  clock_gettime(_CLOCK_REALTIME, &__tp);
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v23 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v23 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = a5;
    *&buf[8] = 1024;
    *&buf[10] = 389;
    *&buf[14] = 2048;
    *&buf[16] = __tp.tv_sec;
    *&buf[24] = 2048;
    *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
    _os_log_impl(&dword_23DC14000, v23, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
  }

  [(ACCHWComponentAuthServiceParams *)v13 setModuleAuthService:[(ACCHWComponentAuthService *)self _findModuleAuthService:a5 withAuthFlags:&v186]];
  if (![(ACCHWComponentAuthServiceParams *)v13 moduleAuthService])
  {
    v177 = v11;
    [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    v21 = 0;
    v129 = 0;
    v20 = 22;
    v19 = a5;
    goto LABEL_290;
  }

  v25 = MEMORY[0x277CBECE8];
  v63 = a5 == 3;
  v26 = a5 != 3;
  if (v63)
  {
    v28 = *MEMORY[0x277CBECE8];
  }

  else
  {
    v27 = [(ACCHWComponentAuthServiceParams *)v13 moduleAuthService];
    v28 = *v25;
    if (!IORegistryEntryCreateCFProperty(v27, @"iboot-auth", *v25, 0))
    {
      v26 = 0;
      v19 = v179;
      if (v11)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }
  }

  v29 = IORegistryEntryCreateCFProperty([(ACCHWComponentAuthServiceParams *)v13 moduleAuthService], @"pretend_auth", v28, 0);
  v19 = v179;
  if (v29)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 charValue];
      if ((v30 - 3) >= 0xFEu)
      {
        v177 = v11;
        v21 = v30 == 2;
        if (v30 == 2)
        {
          v20 = 0;
        }

        else
        {
          v20 = 29;
        }

        [(ACCHWComponentAuthServiceParams *)v13 setSignature:0];
        [(ACCHWComponentAuthServiceParams *)v13 setCertificate:0];
        [(ACCHWComponentAuthServiceParams *)v13 setCertificateInfo:0];
        [(ACCHWComponentAuthServiceParams *)v13 setSkipComms:0];

        goto LABEL_289;
      }
    }
  }

  if (!v11)
  {
LABEL_39:
    if (!v26)
    {
      *&v31 = 0xAAAAAAAAAAAAAAAALL;
      *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *buf = v31;
      *&buf[16] = v31;
      arc4random_buf(buf, 0x20uLL);
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:32];
    }
  }

LABEL_41:
  v32 = !v26;
  if (v11)
  {
    v32 = 1;
  }

  if ((v32 & 1) == 0)
  {
    v33 = IORegistryEntryCreateCFProperty([(ACCHWComponentAuthServiceParams *)v13 moduleAuthService], @"Challenge", v28, 0);
    if (v33)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v33;
        [(ACCHWComponentAuthServiceParams *)v13 setChallenge:v11];
        v34 = IORegistryEntryCreateCFProperty([(ACCHWComponentAuthServiceParams *)v13 moduleAuthService], @"Signature", v28, 0);
        if (v34)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ACCHWComponentAuthServiceParams *)v13 setSignature:v34];
            CFProperty = IORegistryEntryCreateCFProperty([(ACCHWComponentAuthServiceParams *)v13 moduleAuthService], @"authError", v28, 0);
            CFNumberGetValue(CFProperty, kCFNumberSInt8Type, &valuePtr);
            if (valuePtr >= 0x20u)
            {
              valuePtr = 0;
            }

            [(ACCHWComponentAuthServiceParams *)v13 setCertificate:0];
            [(ACCHWComponentAuthServiceParams *)v13 setCertificateInfo:0];
            [(ACCHWComponentAuthServiceParams *)v13 setSkipComms:1];

            goto LABEL_52;
          }
        }

        v177 = v11;
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      else
      {
        v34 = logObjectForModule();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_impl(&dword_23DC14000, v34, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) Error: challenge==NULL", buf, 8u);
        }

        v177 = 0;
      }

      v21 = 0;
      v20 = 20;
      goto LABEL_289;
    }

    *&v36 = 0xAAAAAAAAAAAAAAAALL;
    *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v36;
    *&buf[16] = v36;
    arc4random_buf(buf, 0x20uLL);
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:32];
LABEL_52:
  }

  [(ACCHWComponentAuthServiceParams *)v13 setChallenge:v11];
  [(ACCHWComponentAuthServiceParams *)v13 setAuthFlags:v186];
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v37 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v37 = MEMORY[0x277D86220];
    v38 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    [ACCHWComponentAuthService _authenticateModuleWithChallenge:v13 completionHandler:? moduleType:? updateRegistry:? updateUIProperty:? logToAnalytics:?];
  }

  v177 = v11;

  if (v19 != 2)
  {
    v69 = 0;
    v70 = MEMORY[0x277D86220];
    *&v39 = 67109376;
    v172 = v39;
    while (1)
    {
      v71 = gLogObjects;
      v72 = gNumLogObjects;
      if (gLogObjects)
      {
        v73 = gNumLogObjects < 4;
      }

      else
      {
        v73 = 1;
      }

      if (v73)
      {
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v71;
          *&buf[12] = 1024;
          *&buf[14] = v72;
          _os_log_error_impl(&dword_23DC14000, v70, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v74 = v70;
        v75 = v70;
      }

      else
      {
        v75 = *(gLogObjects + 24);
      }

      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = v69 + 1;
        *&buf[14] = 1024;
        *&buf[16] = 3;
        _os_log_debug_impl(&dword_23DC14000, v75, OS_LOG_TYPE_DEBUG, "(moduleType=%d) tryCount = %d (max tries %d)", buf, 0x14u);
      }

      clock_gettime(_CLOCK_REALTIME, &__tp);
      v76 = gLogObjects;
      v77 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v78 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v76;
          *&buf[12] = 1024;
          *&buf[14] = v77;
          _os_log_error_impl(&dword_23DC14000, v70, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v79 = v70;
        v78 = v70;
      }

      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = 544;
        *&buf[14] = 2048;
        *&buf[16] = __tp.tv_sec;
        *&buf[24] = 2048;
        *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
        _os_log_impl(&dword_23DC14000, v78, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
      }

      if (![(ACCHWComponentAuthService *)self _verifyDeviceInfo:[(ACCHWComponentAuthServiceParams *)v13 moduleAuthService]])
      {
        v83 = gLogObjects;
        v84 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v85 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v83;
            *&buf[12] = 1024;
            *&buf[14] = v84;
            _os_log_error_impl(&dword_23DC14000, v70, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v90 = v70;
          v85 = v70;
        }

        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_error_impl(&dword_23DC14000, v85, OS_LOG_TYPE_ERROR, "(moduleType=%d) authError = eAuthDeviceInfoError after _verifyDeviceInfo", buf, 8u);
        }

        v20 = 1;
        goto LABEL_227;
      }

      clock_gettime(_CLOCK_REALTIME, &__tp);
      v80 = gLogObjects;
      v81 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v82 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v80;
          *&buf[12] = 1024;
          *&buf[14] = v81;
          _os_log_error_impl(&dword_23DC14000, v70, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v86 = v70;
        v82 = v70;
      }

      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = 553;
        *&buf[14] = 2048;
        *&buf[16] = __tp.tv_sec;
        *&buf[24] = 2048;
        *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
        _os_log_impl(&dword_23DC14000, v82, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
      }

      if (![(ACCHWComponentAuthService *)self _verifyDeviceIDSN:[(ACCHWComponentAuthServiceParams *)v13 moduleAuthService]])
      {
        v91 = gLogObjects;
        v92 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v85 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v91;
            *&buf[12] = 1024;
            *&buf[14] = v92;
            _os_log_error_impl(&dword_23DC14000, v70, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v97 = v70;
          v85 = v70;
        }

        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_error_impl(&dword_23DC14000, v85, OS_LOG_TYPE_ERROR, "(moduleType=%d) authError = eNoDeviceIDSNError after _verifyDeviceIDSN", buf, 8u);
        }

        v20 = 18;
        goto LABEL_227;
      }

      clock_gettime(_CLOCK_REALTIME, &__tp);
      v87 = gLogObjects;
      v88 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v89 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v87;
          *&buf[12] = 1024;
          *&buf[14] = v88;
          _os_log_error_impl(&dword_23DC14000, v70, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v93 = v70;
        v89 = v70;
      }

      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = 562;
        *&buf[14] = 2048;
        *&buf[16] = __tp.tv_sec;
        *&buf[24] = 2048;
        *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
        _os_log_impl(&dword_23DC14000, v89, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
      }

      v94 = [(ACCHWComponentAuthService *)self _verifyCertificate:v13];
      if (v94)
      {
        v20 = v94;
        v95 = gLogObjects;
        v96 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v85 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v95;
            *&buf[12] = 1024;
            *&buf[14] = v96;
            _os_log_error_impl(&dword_23DC14000, v70, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v101 = v70;
          v85 = v70;
        }

        if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_227;
        }

        *buf = v172;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = v20;
        v102 = v85;
        v103 = "(moduleType=%d) authError %d after _verifyCertificate";
        goto LABEL_226;
      }

      if (![(ACCHWComponentAuthServiceParams *)v13 skipComms])
      {
        clock_gettime(_CLOCK_REALTIME, &__tp);
        v98 = gLogObjects;
        v99 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v100 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v98;
            *&buf[12] = 1024;
            *&buf[14] = v99;
            _os_log_error_impl(&dword_23DC14000, v70, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v104 = v70;
          v100 = v70;
        }

        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          *&buf[4] = v19;
          *&buf[8] = 1024;
          *&buf[10] = 571;
          *&buf[14] = 2048;
          *&buf[16] = __tp.tv_sec;
          *&buf[24] = 2048;
          *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
          _os_log_impl(&dword_23DC14000, v100, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
        }

        v105 = [(ACCHWComponentAuthService *)self _verifySignature:v13];
        if (v105)
        {
          break;
        }
      }

      clock_gettime(_CLOCK_REALTIME, &__tp);
      v108 = gLogObjects;
      v109 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v110 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v108;
          *&buf[12] = 1024;
          *&buf[14] = v109;
          _os_log_error_impl(&dword_23DC14000, v70, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v111 = v70;
        v110 = v70;
      }

      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = 580;
        *&buf[14] = 2048;
        *&buf[16] = __tp.tv_sec;
        *&buf[24] = 2048;
        *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
        _os_log_impl(&dword_23DC14000, v110, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
      }

      v20 = [(ACCHWComponentAuthService *)self _verifyModuleCertificate:v13 forModuleType:v19];
      if (!v20)
      {
LABEL_228:
        clock_gettime(_CLOCK_REALTIME, &__tp);
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v116 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ACASignVeridianChallenge_cold_2();
          }

          v116 = MEMORY[0x277D86220];
          v117 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          *&buf[4] = v19;
          *&buf[8] = 1024;
          *&buf[10] = 593;
          *&buf[14] = 2048;
          *&buf[16] = __tp.tv_sec;
          *&buf[24] = 2048;
          *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
          _os_log_impl(&dword_23DC14000, v116, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
        }

        v21 = [(ACCHWComponentAuthService *)self _verifyModuleFDR:v13 forModuleType:v19];
        goto LABEL_277;
      }

      v112 = gLogObjects;
      v113 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v85 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v112;
          *&buf[12] = 1024;
          *&buf[14] = v113;
          _os_log_error_impl(&dword_23DC14000, v70, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v114 = v70;
        v85 = v70;
      }

      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        *buf = v172;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = v20;
        v102 = v85;
        v103 = "(moduleType=%d) authError = %d after _verifyModuleCertificate";
LABEL_226:
        _os_log_error_impl(&dword_23DC14000, v102, OS_LOG_TYPE_ERROR, v103, buf, 0xEu);
      }

LABEL_227:

      if (++v69 >= 3)
      {
        goto LABEL_228;
      }
    }

    v20 = v105;
    v106 = gLogObjects;
    v107 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v85 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v106;
        *&buf[12] = 1024;
        *&buf[14] = v107;
        _os_log_error_impl(&dword_23DC14000, v70, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v115 = v70;
      v85 = v70;
    }

    if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_227;
    }

    *buf = v172;
    *&buf[4] = v19;
    *&buf[8] = 1024;
    *&buf[10] = v20;
    v102 = v85;
    v103 = "(moduleType=%d) authError %d after _verifySignature";
    goto LABEL_226;
  }

  v40 = 0;
  v41 = MEMORY[0x277D86220];
  while (1)
  {
    v42 = gLogObjects;
    v43 = gNumLogObjects;
    if (gLogObjects)
    {
      v44 = gNumLogObjects < 4;
    }

    else
    {
      v44 = 1;
    }

    if (v44)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v42;
        *&buf[12] = 1024;
        *&buf[14] = v43;
        _os_log_error_impl(&dword_23DC14000, v41, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v45 = v41;
      v46 = v41;
    }

    else
    {
      v46 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      *&buf[4] = 2;
      *&buf[8] = 1024;
      *&buf[10] = v40 + 1;
      *&buf[14] = 1024;
      *&buf[16] = 3;
      _os_log_debug_impl(&dword_23DC14000, v46, OS_LOG_TYPE_DEBUG, "(moduleType=%d) tryCount = %d (max tries %d)", buf, 0x14u);
    }

    clock_gettime(_CLOCK_REALTIME, &__tp);
    v47 = gLogObjects;
    v48 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v49 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v47;
        *&buf[12] = 1024;
        *&buf[14] = v48;
        _os_log_error_impl(&dword_23DC14000, v41, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v50 = v41;
      v49 = v41;
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = 2;
      *&buf[8] = 1024;
      *&buf[10] = 497;
      *&buf[14] = 2048;
      *&buf[16] = __tp.tv_sec;
      *&buf[24] = 2048;
      *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
      _os_log_impl(&dword_23DC14000, v49, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
    }

    if (![(ACCHWComponentAuthService *)self _verifyDeviceIDSN:[(ACCHWComponentAuthServiceParams *)v13 moduleAuthService]])
    {
      v54 = gLogObjects;
      v55 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v56 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v54;
          *&buf[12] = 1024;
          *&buf[14] = v55;
          _os_log_error_impl(&dword_23DC14000, v41, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v61 = v41;
        v56 = v41;
      }

      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:v187 completionHandler:v188 moduleType:v56 updateRegistry:? updateUIProperty:? logToAnalytics:?];
      }

      v58 = 18;
      goto LABEL_108;
    }

    clock_gettime(_CLOCK_REALTIME, &__tp);
    v51 = gLogObjects;
    v52 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v53 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v51;
        *&buf[12] = 1024;
        *&buf[14] = v52;
        _os_log_error_impl(&dword_23DC14000, v41, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v57 = v41;
      v53 = v41;
    }

    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = 2;
      *&buf[8] = 1024;
      *&buf[10] = 506;
      *&buf[14] = 2048;
      *&buf[16] = __tp.tv_sec;
      *&buf[24] = 2048;
      *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
      _os_log_impl(&dword_23DC14000, v53, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
    }

    v58 = [(ACCHWComponentAuthService *)self _signChallenge:v13];
    if (!v58)
    {
      break;
    }

    v59 = gLogObjects;
    v60 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v56 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v59;
        *&buf[12] = 1024;
        *&buf[14] = v60;
        _os_log_error_impl(&dword_23DC14000, v41, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v62 = v41;
      v56 = v41;
    }

    v19 = v179;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = 2;
      *&buf[8] = 1024;
      *&buf[10] = v58;
      _os_log_error_impl(&dword_23DC14000, v56, OS_LOG_TYPE_ERROR, "(moduleType=%d) authError %d after _signChallenge", buf, 0xEu);
    }

LABEL_108:

    v63 = v58 == 18 || v58 == 30;
    v64 = v63;
    if ((v40 + 1) <= 2 && v64)
    {
      v65 = gLogObjects;
      v66 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v67 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v65;
          *&buf[12] = 1024;
          *&buf[14] = v66;
          _os_log_error_impl(&dword_23DC14000, v41, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v68 = v41;
        v67 = v41;
      }

      v19 = v179;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = 2;
        *&buf[8] = 1024;
        *&buf[10] = 20;
        _os_log_error_impl(&dword_23DC14000, v67, OS_LOG_TYPE_ERROR, "(moduleType=%d) sleeping for %d seconds before retrying auth", buf, 0xEu);
      }

      sleep(0x14u);
    }

    if (++v40 >= 3)
    {
      goto LABEL_238;
    }
  }

  v19 = v179;
LABEL_238:
  clock_gettime(_CLOCK_REALTIME, &__tp);
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v118 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v118 = MEMORY[0x277D86220];
    v119 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = 2;
    *&buf[8] = 1024;
    *&buf[10] = 524;
    *&buf[14] = 2048;
    *&buf[16] = __tp.tv_sec;
    *&buf[24] = 2048;
    *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
    _os_log_impl(&dword_23DC14000, v118, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
  }

  v120 = [(ACCHWComponentAuthService *)self _verifyModuleFDR:v13 forModuleType:2];
  v21 = v120;
  if (v120)
  {
    v121 = 0;
  }

  else
  {
    v121 = 21;
  }

  if (v58)
  {
    v20 = v58;
  }

  else
  {
    v20 = v121;
  }

  if (!v58 && v120)
  {
    clock_gettime(_CLOCK_REALTIME, &__tp);
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v122 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ACASignVeridianChallenge_cold_2();
      }

      v122 = MEMORY[0x277D86220];
      v123 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = 2;
      *&buf[8] = 1024;
      *&buf[10] = 532;
      *&buf[14] = 2048;
      *&buf[16] = __tp.tv_sec;
      *&buf[24] = 2048;
      *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
      _os_log_impl(&dword_23DC14000, v122, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
    }

    v20 = [(ACCHWComponentAuthService *)self _verifyModuleCertificate:v13 forModuleType:2];
    if (v20)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v124 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ACASignVeridianChallenge_cold_2();
        }

        v124 = MEMORY[0x277D86220];
        v125 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }
    }

    v21 = 1;
  }

LABEL_277:
  if (v19 == 2)
  {
    clock_gettime(_CLOCK_REALTIME, &__tp);
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v126 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ACASignVeridianChallenge_cold_2();
      }

      v126 = MEMORY[0x277D86220];
      v127 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = 2;
      *&buf[8] = 1024;
      *&buf[10] = 602;
      *&buf[14] = 2048;
      *&buf[16] = __tp.tv_sec;
      *&buf[24] = 2048;
      *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
      _os_log_impl(&dword_23DC14000, v126, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
    }

    if (!v20)
    {
      *buf = 0;
      [(ACCHWComponentAuthServiceParams *)v13 setBatteryCode:0];
      v128 = [(ACCHWComponentAuthServiceParams *)v13 certificate];
      v20 = [(ACCHWComponentAuthService *)self _verifyBatteryMatch:v128 outputBatteryCode:buf];

      if (*buf)
      {
        [(ACCHWComponentAuthServiceParams *)v13 setBatteryCode:bswap32(*buf) >> 16];
      }
    }
  }

LABEL_289:
  v129 = v175;
LABEL_290:
  v130 = v20 == 0;
  if ([(ACCHWComponentAuthServiceParams *)v13 skipComms])
  {
    v131 = v20 == 0;
    v130 = v131 ^ (v131 && valuePtr != 0);
    if (v131 && valuePtr != 0)
    {
      v20 = valuePtr;
    }

    else
    {
      v20 = v20;
    }
  }

  v132 = v130 & v21;
  if (v20 != 22 && !v132)
  {
    [(ACCHWComponentAuthService *)self _notifyComponentAuthFailure];
  }

  if (v129)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v133 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ACASignVeridianChallenge_cold_2();
      }

      v133 = MEMORY[0x277D86220];
      v134 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v19;
      _os_log_impl(&dword_23DC14000, v133, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) updateRegistry", buf, 8u);
    }

    if (![(ACCHWComponentAuthServiceParams *)v13 moduleAuthService])
    {
      [(ACCHWComponentAuthServiceParams *)v13 setModuleAuthService:[(ACCHWComponentAuthService *)self _findModuleAuthService:v19 withAuthFlags:&v186]];
    }

    if ([(ACCHWComponentAuthServiceParams *)v13 moduleAuthService])
    {
      connect = 0;
      v135 = [(ACCHWComponentAuthServiceParams *)v13 moduleAuthService];
      if (!IOServiceOpen(v135, *MEMORY[0x277D85F48], 0, &connect))
      {
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v136 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ACASignVeridianChallenge_cold_2();
          }

          v136 = MEMORY[0x277D86220];
          v137 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_impl(&dword_23DC14000, v136, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) updateRegistry: cpSetAuthStatus, cpSetTrustStatus", buf, 8u);
        }

        v138 = cpSetAuthStatus(connect, v130 & 1);
        if (v138)
        {
          v139 = v138;
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v140 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ACASignVeridianChallenge_cold_2();
            }

            v140 = MEMORY[0x277D86220];
            v141 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v19;
            *&buf[8] = 1024;
            *&buf[10] = v139;
            _os_log_impl(&dword_23DC14000, v140, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) cpSetAuthStatus failed: 0x%x", buf, 0xEu);
          }
        }

        v142 = cpSetTrustStatus(connect, v132);
        if (v142)
        {
          v143 = v142;
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v144 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ACASignVeridianChallenge_cold_2();
            }

            v144 = MEMORY[0x277D86220];
            v145 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v19;
            *&buf[8] = 1024;
            *&buf[10] = v143;
            _os_log_impl(&dword_23DC14000, v144, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) cpSetTrustStatus failed: 0x%x", buf, 0xEu);
          }
        }

        if (v132 && v173)
        {
          v146 = cpSetTrustStatusForUI(connect, 1u);
          if (v146)
          {
            v147 = v146;
            if (gLogObjects && gNumLogObjects >= 4)
            {
              v148 = *(gLogObjects + 24);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                ACASignVeridianChallenge_cold_2();
              }

              v148 = MEMORY[0x277D86220];
              v149 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = v19;
              *&buf[8] = 1024;
              *&buf[10] = v147;
              _os_log_impl(&dword_23DC14000, v148, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) cpSetTrustStatusForUI failed: 0x%x", buf, 0xEu);
            }
          }
        }

        v150 = cpSetAuthError(connect, v20);
        if (v150)
        {
          v151 = v150;
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v152 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ACASignVeridianChallenge_cold_2();
            }

            v152 = MEMORY[0x277D86220];
            v153 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v19;
            *&buf[8] = 1024;
            *&buf[10] = v151;
            _os_log_impl(&dword_23DC14000, v152, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) cpSetAuthError failed: 0x%x", buf, 0xEu);
          }
        }

        if (v20 > 0x1E)
        {
          v154 = "UninitializedAuthError";
        }

        else
        {
          v154 = kACCTransport_IOAccessoryAuthCP_AuthError_Strings[v20];
        }

        v155 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v154, 0x8000100u);
        if (v155)
        {
          v156 = v155;
          cpSetAuthErrorDescription(connect, v155);
          CFRelease(v156);
        }

        IOServiceClose(connect);
      }
    }
  }

  if (v130)
  {
    v157 = [(ACCHWComponentAuthServiceParams *)v13 batteryCode];
    if (v19 == 2)
    {
      if (v157)
      {
        if (![(ACCHWComponentAuthServiceParams *)v13 moduleAuthService])
        {
          [(ACCHWComponentAuthServiceParams *)v13 setModuleAuthService:[(ACCHWComponentAuthService *)self _findModuleAuthService:2 withAuthFlags:&v186]];
        }

        if ([(ACCHWComponentAuthServiceParams *)v13 moduleAuthService])
        {
          connect = 0;
          v158 = [(ACCHWComponentAuthServiceParams *)v13 moduleAuthService];
          if (!IOServiceOpen(v158, *MEMORY[0x277D85F48], 0, &connect))
          {
            v159 = cpSetBatteryCode(connect, [(ACCHWComponentAuthServiceParams *)v13 batteryCode]);
            if (v159)
            {
              v160 = v159;
              if (gLogObjects && gNumLogObjects >= 4)
              {
                v161 = *(gLogObjects + 24);
              }

              else
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  ACASignVeridianChallenge_cold_2();
                }

                v161 = MEMORY[0x277D86220];
                v162 = MEMORY[0x277D86220];
              }

              if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *&buf[4] = 2;
                *&buf[8] = 1024;
                *&buf[10] = v160;
                _os_log_impl(&dword_23DC14000, v161, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) cpSetBatteryCode failed: 0x%x", buf, 0xEu);
              }
            }

            IOServiceClose(connect);
          }
        }
      }
    }
  }

  if (v176)
  {
    v163 = systemInfo_getCurrentUnixTimeMS() - v174;
    if (v21)
    {
      v164 = 2;
    }

    else
    {
      v164 = 1;
    }

    [(ACCHWComponentAuthService *)self _logToAnalytics:v19 authError:v20 fdrValidationStatus:v164 authDurationInMS:v163, v172];
  }

  clock_gettime(_CLOCK_REALTIME, &__tp);
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v165 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v165 = MEMORY[0x277D86220];
    v166 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = v179;
    *&buf[8] = 1024;
    *&buf[10] = 744;
    *&buf[14] = 2048;
    *&buf[16] = __tp.tv_sec;
    *&buf[24] = 2048;
    *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
    _os_log_impl(&dword_23DC14000, v165, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v167 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v167 = MEMORY[0x277D86220];
    v168 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = v179;
    *&buf[8] = 1024;
    *&buf[10] = v130 & 1;
    *&buf[14] = 1024;
    *&buf[16] = v21;
    *&buf[20] = 1024;
    *&buf[22] = v20;
    _os_log_impl(&dword_23DC14000, v167, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) Replying with authPassed = %d, fdrValid = %d, authError = %d", buf, 0x1Au);
  }

  v169 = [(ACCHWComponentAuthServiceParams *)v13 certificate];
  v170 = [(ACCHWComponentAuthServiceParams *)v13 signature];
  (v178)[2](v178, v130 & 1, v169, v170, v21, v20);

  v171 = *MEMORY[0x277D85DE8];
}

- (unsigned)_findModuleAuthService:(int)a3 withAuthFlags:(unsigned int *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = IOServiceMatching("AppleAuthCP");
  v27 = a4;
  if (a4)
  {
    valuePtr = -1431655766;
    existing = -1431655766;
    MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x277CD28A0], v6, &existing);
    if (MatchingServices)
    {
      v8 = MatchingServices;
      if (gLogObjects)
      {
        v9 = gNumLogObjects < 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ACASignVeridianChallenge_cold_2();
        }

        v12 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      else
      {
        v12 = *(gLogObjects + 24);
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = mach_error_string(v8);
        *buf = 67109378;
        LODWORD(v31) = a3;
        WORD2(v31) = 2080;
        *(&v31 + 6) = v13;
        _os_log_impl(&dword_23DC14000, v12, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) Could not find authcp services: %s\n", buf, 0x12u);
      }
    }

    v14 = IOIteratorNext(existing);
    if (v14)
    {
      v15 = v14;
      v11 = 0;
      v16 = *MEMORY[0x277CBECE8];
      v17 = MEMORY[0x277D86220];
      while (1)
      {
        CFProperty = IORegistryEntryCreateCFProperty(v15, @"flags", v16, 0);
        if (CFProperty)
        {
          break;
        }

LABEL_39:
        IOObjectRelease(v15);
        v15 = IOIteratorNext(existing);
        if (!v15)
        {
          goto LABEL_46;
        }
      }

      v19 = CFProperty;
      if (CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr))
      {
        v20 = gLogObjects;
        v21 = gNumLogObjects;
        if (gLogObjects)
        {
          v22 = gNumLogObjects < 4;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&v31 = v20;
            WORD4(v31) = 1024;
            *(&v31 + 10) = v21;
            _os_log_error_impl(&dword_23DC14000, v17, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v23 = v17;
          v24 = v17;
        }

        else
        {
          v24 = *(gLogObjects + 24);
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 67109632;
          LODWORD(v31) = a3;
          WORD2(v31) = 1024;
          *(&v31 + 6) = v15;
          WORD5(v31) = 1024;
          HIDWORD(v31) = valuePtr;
          _os_log_impl(&dword_23DC14000, v24, OS_LOG_TYPE_INFO, "(moduleType=%d) authCP service %d tmpAuthFlags == 0x%x", buf, 0x14u);
        }

        if (a3 > 1)
        {
          if (a3 == 2)
          {
            if ((valuePtr & 0xFF000C) != 0x10008)
            {
              goto LABEL_38;
            }
          }

          else if (a3 != 3 || BYTE2(valuePtr) << 16 != 0x80000)
          {
            goto LABEL_38;
          }
        }

        else if (a3)
        {
          if (a3 != 1 || BYTE2(valuePtr) << 16 != 196608)
          {
            goto LABEL_38;
          }
        }

        else if (BYTE2(valuePtr) << 16 != 0x10000)
        {
          goto LABEL_38;
        }

        IOObjectRetain(v15);
        *v27 = valuePtr;
        v11 = v15;
      }

LABEL_38:
      CFRelease(v19);
      goto LABEL_39;
    }

    v11 = 0;
LABEL_46:
    IOObjectRelease(existing);
  }

  else
  {
    v11 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_verifyDeviceIDSN:(unsigned int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  DeviceIDSN = cpGetDeviceIDSN(a3, &v11, &v10);
  if (DeviceIDSN)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 4;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ACASignVeridianChallenge_cold_2();
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = mach_error_string(DeviceIDSN);
      *buf = 136315138;
      v13 = v7;
      _os_log_impl(&dword_23DC14000, v6, OS_LOG_TYPE_DEFAULT, "Could not cpGetDeviceIDSN: %s\n", buf, 0xCu);
    }
  }

  result = DeviceIDSN == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_verifyDeviceInfo:(unsigned int)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = -86;
  v13 = -86;
  v12 = -86;
  v11 = -86;
  v10 = -1431655766;
  DeviceInfo = cpGetDeviceInfo(a3, &v14, &v13, &v12, &v11, &v10);
  if (DeviceInfo)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 4;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ACASignVeridianChallenge_cold_2();
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = mach_error_string(DeviceInfo);
      *buf = 136315138;
      v16 = v7;
      _os_log_impl(&dword_23DC14000, v6, OS_LOG_TYPE_DEFAULT, "Could not cpGetDeviceInfo: %s\n", buf, 0xCu);
    }
  }

  result = DeviceInfo == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)_verifyCertificate:(id)a3
{
  v3 = a3;
  if (([v3 authFlags] & 0xC) == 8)
  {
    [ACCHWComponentAuthService _verifyCertificate:];
    v6 = 0;
    v10 = 0;
    v8 = 0;
    v4 = 0;
LABEL_7:
    v11 = [v10 objectForKey:@"LeafCertData"];
    [v3 setCertificate:v11];

    [v3 setCertificateInfo:v10];
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v12 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ACASignVeridianChallenge_cold_2();
      }

      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACCHWComponentAuthService _verifyCertificate:v3];
    }

    v14 = 0;
    goto LABEL_16;
  }

  v4 = cpCopyCertificate([v3 moduleAuthService]);
  if (!v4)
  {
    v16 = logObjectForModule();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23DC14000, v16, OS_LOG_TYPE_DEFAULT, "error getting certificate", buf, 2u);
    }

    v6 = 0;
    v10 = 0;
    v8 = 0;
    v14 = 3;
    goto LABEL_36;
  }

  v5 = [MEMORY[0x277D24E20] sharedManager];
  if (!v5)
  {
    v16 = logObjectForModule();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_23DC14000, v16, OS_LOG_TYPE_DEFAULT, "error getting MFAACertificateManager", v22, 2u);
    }

    v6 = 0;
    goto LABEL_28;
  }

  v6 = v5;
  v7 = [v5 copyParsedCertificateChainInfo:v4];
  if (!v7)
  {
    v16 = logObjectForModule();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_23DC14000, v16, OS_LOG_TYPE_DEFAULT, "error parsing certificate", v21, 2u);
    }

LABEL_28:
    v10 = 0;
    v8 = 0;
LABEL_32:
    v14 = 4;
    goto LABEL_36;
  }

  v8 = v7;
  v9 = [v6 copyEvaluatedCertificateChainInfo:v7];
  if (!v9)
  {
    v16 = logObjectForModule();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_23DC14000, v16, OS_LOG_TYPE_DEFAULT, "error evaluating certificate", v20, 2u);
    }

    v10 = 0;
    goto LABEL_32;
  }

  v10 = v9;
  if (MFAAVerifyCertificateSerialNumber())
  {
    goto LABEL_7;
  }

  v16 = logObjectForModule();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_23DC14000, v16, OS_LOG_TYPE_DEFAULT, "error verifying serial number", v19, 2u);
  }

  v14 = 5;
LABEL_36:

  connect = 0;
  v17 = [v3 moduleAuthService];
  if (!IOServiceOpen(v17, *MEMORY[0x277D85F48], 0, &connect))
  {
    cpClearCertificate(connect);
    IOServiceClose(connect);
  }

LABEL_16:
  if (v4)
  {
    CFRelease(v4);
  }

  return v14;
}

- (int)_verifySignature:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  connect = -1431655766;
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v40 = 926;
    *&v40[4] = 2048;
    *&v40[6] = __tp.tv_sec;
    v41 = 2048;
    v42 = __tp.tv_nsec / 0xF4240uLL;
    _os_log_impl(&dword_23DC14000, v6, OS_LOG_TYPE_DEFAULT, "_verifySignature %d: %ld.%03llu", buf, 0x1Cu);
  }

  v7 = [v3 moduleAuthService];
  v8 = IOServiceOpen(v7, *MEMORY[0x277D85F48], 0, &connect);
  if (!v8)
  {
    v36 = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_REALTIME, &__tp);
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v11 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ACASignVeridianChallenge_cold_2();
      }

      v11 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *v40 = 937;
      *&v40[4] = 2048;
      *&v40[6] = __tp.tv_sec;
      v41 = 2048;
      v42 = __tp.tv_nsec / 0xF4240uLL;
      _os_log_impl(&dword_23DC14000, v11, OS_LOG_TYPE_DEFAULT, "_verifySignature %d: %ld.%03llu", buf, 0x1Cu);
    }

    v16 = connect;
    v17 = [v3 challenge];
    v18 = cpCreateSignature(v16, v17, &v36);

    IOServiceClose(connect);
    if ((v18 & 0xE3FFBF00) == 0xE3FF8000)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v19 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ACASignVeridianChallenge_cold_2();
        }

        v19 = MEMORY[0x277D86220];
        v20 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      *buf = 67109120;
      *v40 = v18;
      v21 = "error generating signature: auth cp error code %#x\n";
      v22 = v19;
      v23 = 8;
    }

    else
    {
      if (!v18)
      {
        clock_gettime(_CLOCK_REALTIME, &__tp);
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v24 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ACASignVeridianChallenge_cold_2();
          }

          v24 = MEMORY[0x277D86220];
          v29 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *v40 = 954;
          *&v40[4] = 2048;
          *&v40[6] = __tp.tv_sec;
          v41 = 2048;
          v42 = __tp.tv_nsec / 0xF4240uLL;
          _os_log_impl(&dword_23DC14000, v24, OS_LOG_TYPE_DEFAULT, "_verifySignature %d: %ld.%03llu", buf, 0x1Cu);
        }

        v30 = [v3 certificate];
        v31 = [v3 challenge];
        v32 = MFAAVerifyNonceSignature();

        if (gLogObjects && gNumLogObjects >= 4)
        {
          v33 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ACASignVeridianChallenge_cold_2();
          }

          v33 = MEMORY[0x277D86220];
          v34 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v35 = @"no";
          if (v32)
          {
            v35 = @"yes";
          }

          *buf = 138412290;
          *v40 = v35;
          _os_log_impl(&dword_23DC14000, v33, OS_LOG_TYPE_DEFAULT, "signatureValid ? %@", buf, 0xCu);
        }

        if (v32)
        {
          v14 = 0;
        }

        else
        {
          v14 = 12;
        }

        v19 = v36;
        [v3 setSignature:{v36, v36}];
        goto LABEL_52;
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v19 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ACASignVeridianChallenge_cold_2();
        }

        v19 = MEMORY[0x277D86220];
        v25 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
LABEL_51:
        v14 = 11;
LABEL_52:

        goto LABEL_53;
      }

      v26 = mach_error_string(v18);
      *buf = 136315138;
      *v40 = v26;
      v21 = "error generating signature: %s\n";
      v22 = v19;
      v23 = 12;
    }

    _os_log_impl(&dword_23DC14000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    goto LABEL_51;
  }

  v9 = v8;
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v10 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v10 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = mach_error_string(v9);
    *buf = 136315138;
    *v40 = v13;
    _os_log_impl(&dword_23DC14000, v10, OS_LOG_TYPE_DEFAULT, "could not open service: %s\n", buf, 0xCu);
  }

  v14 = 23;
LABEL_53:

  v27 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)_signChallenge:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  connect = -1431655766;
  v4 = [v3 moduleAuthService];
  v5 = IOServiceOpen(v4, *MEMORY[0x277D85F48], 0, &connect);
  if (v5)
  {
    v6 = v5;
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 4;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ACASignVeridianChallenge_cold_2();
      }

      v13 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    else
    {
      v13 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _signChallenge:v6];
    }

    v14 = 23;
  }

  else
  {
    v29 = 0;
    v9 = connect;
    v10 = [v3 challenge];
    v11 = cpCreateSignature(v9, v10, &v29);

    IOServiceClose(connect);
    if ((v11 & 0xE3FFBF00) == 0xE3FF8000)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v12 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ACASignVeridianChallenge_cold_2();
        }

        v12 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v32) = v11;
        _os_log_impl(&dword_23DC14000, v12, OS_LOG_TYPE_DEFAULT, "error generating signature: auth cp error code %#x\n", buf, 8u);
      }

      v14 = 11;
    }

    else if (v11)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v15 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ACASignVeridianChallenge_cold_2();
        }

        v15 = MEMORY[0x277D86220];
        v20 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v21 = mach_error_string(v11);
        *buf = 136315138;
        v32 = v21;
        _os_log_impl(&dword_23DC14000, v15, OS_LOG_TYPE_DEFAULT, "error generating signature: %s\n", buf, 0xCu);
      }

      if ((v11 + 536870187) >= 2)
      {
        v14 = 11;
      }

      else
      {
        v14 = 30;
      }
    }

    else
    {
      v17 = v29;
      [v3 setSignature:v29];

      v18 = cpCopyDeviceNonce([v3 moduleAuthService]);
      [v3 setDeviceNonce:v18];

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v19 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ACASignVeridianChallenge_cold_2();
        }

        v19 = MEMORY[0x277D86220];
        v22 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v3 signature];
        *buf = 138412290;
        v32 = v23;
        _os_log_impl(&dword_23DC14000, v19, OS_LOG_TYPE_DEFAULT, "Battery signature = %@", buf, 0xCu);
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v24 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ACASignVeridianChallenge_cold_2();
        }

        v24 = MEMORY[0x277D86220];
        v25 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v3 deviceNonce];
        *buf = 138412290;
        v32 = v26;
        _os_log_impl(&dword_23DC14000, v24, OS_LOG_TYPE_DEFAULT, "Battery device nonce = %@", buf, 0xCu);
      }

      v14 = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)_verifyModuleCertificate:(id)a3 forModuleType:(int)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 certificateInfo];

  if (!v6)
  {
    [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
LABEL_63:
    v29 = 13;
    goto LABEL_58;
  }

  v7 = MEMORY[0x277D24E20];
  v8 = [v5 certificateInfo];
  v9 = [v7 isMFi2_3CertInfo:v8];

  v10 = MEMORY[0x277D24E20];
  v11 = [v5 certificateInfo];
  v12 = [v10 isComponentCertInfo:v11];

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v13 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 67109632;
    v42 = a4;
    v43 = 1024;
    v44 = v9;
    v45 = 1024;
    v46 = v12;
    _os_log_impl(&dword_23DC14000, v13, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) mfi2_3:%d, mfi4:%d", &v41, 0x14u);
  }

  if (!v9)
  {
    if (!v12)
    {
LABEL_53:
      v16 = 0;
      goto LABEL_54;
    }

    v17 = [v5 certificateInfo];
    v18 = [v17 objectForKey:@"ExtensionValue"];

    if (!v18)
    {
      v19 = logObjectForModule();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
      }

      goto LABEL_60;
    }

    switch(a4)
    {
      case 3:
        v23 = MEMORY[0x277CBEA90];
        v24 = "Mac LAS";
        break;
      case 2:
        v23 = MEMORY[0x277CBEA90];
        v24 = "Battery";
        break;
      case 1:
        v19 = systemInfo_copyDeviceClass();
        if ([v19 isEqualToString:@"iPhone"])
        {
          v20 = MEMORY[0x277CBEA90];
          v21 = "Phone Display";
          v22 = 13;
        }

        else
        {
          if (![v19 isEqualToString:@"iPad"])
          {
LABEL_59:
            [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
LABEL_60:

            v29 = 16;
            goto LABEL_58;
          }

          v20 = MEMORY[0x277CBEA90];
          v21 = "iPad Display";
          v22 = 12;
        }

        v30 = [v20 dataWithBytes:v21 length:v22];
        if (v30)
        {
          if ([v18 isEqualToData:v30])
          {

            v16 = 0;
            goto LABEL_29;
          }

          if (gLogObjects && gNumLogObjects >= 4)
          {
            v31 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              ACASignVeridianChallenge_cold_2();
            }

            v31 = MEMORY[0x277D86220];
            v32 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [(ACCHWComponentAuthService *)v18 _verifyModuleCertificate:v31 forModuleType:v33, v34, v35, v36, v37, v38];
          }

          goto LABEL_52;
        }

        goto LABEL_59;
      default:
LABEL_52:

        goto LABEL_53;
    }

    v25 = [v23 dataWithBytes:v24 length:7];
    v26 = [v18 isEqualToData:v25];

    v16 = 0;
    if (v26)
    {
      goto LABEL_29;
    }

LABEL_54:
    v27 = logObjectForModule();
    v29 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
    }

    goto LABEL_56;
  }

  v15 = [v5 certificate];
  v16 = MFAACreateCapsFromAuthCert();

  if (!v16)
  {
    [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
    goto LABEL_63;
  }

  if (a4 == 1)
  {
    if (MFAAIsAppleTouchControllerModule())
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

  if (a4)
  {
    goto LABEL_54;
  }

  if (([v5 authFlags] & 0xC) == 8)
  {
    [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
    v29 = 0;
    goto LABEL_57;
  }

  if ((MFAAIsAppleBatteryModule() & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_29:
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v27 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v27 = MEMORY[0x277D86220];
    v28 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 67109120;
    v42 = a4;
    _os_log_impl(&dword_23DC14000, v27, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) Success: validated cert caps", &v41, 8u);
  }

  v29 = 0;
LABEL_56:

  if (v16)
  {
LABEL_57:
    MFAADeallocAuthCertCaps();
  }

LABEL_58:

  v39 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)_verifyModuleFDR:(id)a3 forModuleType:(int)a4
{
  v53[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v52 = @"CopyAllowUnsealed";
  v53[0] = MEMORY[0x277CBEC38];
  v6 = 1;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  LOBYTE(v8) = 0;
  v9 = 0;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        goto LABEL_7;
      }

      goto LABEL_59;
    }

LABEL_10:
    v9 = AMFDRSealingMapCopyLocalDataForClass();
    if (!v9)
    {
      v22 = logObjectForModule();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _verifyModuleFDR:forModuleType:];
      }

      v9 = 0;
      goto LABEL_46;
    }

    if (v6)
    {
      v10 = [v5 certificate];
      if (v10)
      {
        v11 = v10;
        v12 = [v5 certificateInfo];

        if (v12)
        {
          v13 = MEMORY[0x277D24E20];
          v14 = [v5 certificateInfo];
          v15 = [v13 isMFi2_3CertInfo:v14];

          v16 = MEMORY[0x277D24E20];
          v17 = [v5 certificateInfo];
          v18 = [v16 isComponentCertInfo:v17];

          if (v15)
          {
            v19 = copyCertificateForFDRData(v9);
            if (v19)
            {
              v20 = v19;
              v21 = [v5 certificate];
              if (([(__CFData *)v20 isEqualToData:v21]& 1) != 0)
              {
                LODWORD(v8) = 1;
              }

              else
              {
                v43 = [v5 certificateInfo];
                v44 = [v43 objectForKey:@"FullCertData"];
                LODWORD(v8) = [(__CFData *)v20 isEqualToData:v44];
              }

              goto LABEL_50;
            }

            v22 = logObjectForModule();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [ACCHWComponentAuthService _verifyModuleFDR:forModuleType:];
            }

            goto LABEL_46;
          }

          if (!v18)
          {
            LODWORD(v8) = 0;
            goto LABEL_50;
          }

          v33 = [MEMORY[0x277D24E20] sharedManager];
          v34 = v33;
          if (!v33)
          {
            v41 = 0;
            LODWORD(v8) = 0;
LABEL_39:

            if (!v41)
            {
              LOBYTE(v8) = 0;
              goto LABEL_59;
            }

LABEL_50:
            if (gLogObjects && gNumLogObjects >= 4)
            {
              v22 = *(gLogObjects + 24);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                ACASignVeridianChallenge_cold_2();
              }

              v22 = MEMORY[0x277D86220];
              v45 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              v49 = a4;
              v50 = 1024;
              v51 = v8;
              _os_log_impl(&dword_23DC14000, v22, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) equal:%d", buf, 0xEu);
            }

            goto LABEL_58;
          }

          v35 = [v33 copyParsedCertificateChainInfo:v9];
          if (v35)
          {
            v36 = v35;
            v37 = [v34 copyEvaluatedCertificateChainInfo:v35];
            if (v37)
            {
              v38 = v37;
              v39 = [v37 objectForKey:@"LeafCertData"];
              v40 = [v5 certificate];
              LODWORD(v8) = [v39 isEqualToData:v40];

              v41 = 1;
LABEL_38:

              goto LABEL_39;
            }

            [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
          }

          else
          {
            v36 = logObjectForModule();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [ACCHWComponentAuthService _verifyModuleFDR:forModuleType:];
            }
          }

          v41 = 0;
          LODWORD(v8) = 0;
          goto LABEL_38;
        }
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v22 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ACASignVeridianChallenge_cold_2();
        }

        v22 = MEMORY[0x277D86220];
        v42 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _verifyModuleFDR:forModuleType:];
      }

LABEL_46:
      LOBYTE(v8) = 0;
      goto LABEL_58;
    }

    v22 = [MEMORY[0x277D24E20] sharedManager];
    if (!v22)
    {
      goto LABEL_46;
    }

    v8 = [v5 challenge];

    if (!v8)
    {
      goto LABEL_58;
    }

    v8 = [v5 signature];

    if (!v8)
    {
      goto LABEL_58;
    }

    v8 = [v5 deviceNonce];

    if (!v8)
    {
      goto LABEL_58;
    }

    v23 = [v22 copyParsedCertificateChainInfo:v9];
    if (v23)
    {
      v24 = v23;
      v8 = [v22 copyEvaluatedCertificateChainInfo:v23];
      if (!v8)
      {
        [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
        goto LABEL_29;
      }

      v25 = [v5 deviceNonce];
      v26 = [v5 challenge];
      v27 = [v22 createVeridianNonce:v25 withChallenge:v26];

      if (v27)
      {
        if (a4 == 2)
        {
          v28 = +[ACCUserDefaults sharedDefaults];
          v29 = [v28 BOOLForKey:@"SkipGaugeSignatureCheck"];

          if (v29)
          {
            goto LABEL_28;
          }
        }

        v30 = [v5 signature];
        v31 = [v22 verifyNonceSignature:v8 nonce:v27 signature:v30];

        if (v31)
        {
LABEL_28:
          v32 = [v8 objectForKey:@"LeafCertData"];
          [v5 setCertificate:v32];

          [v5 setCertificateInfo:v8];
          LOBYTE(v8) = 1;
LABEL_29:

LABEL_58:
          goto LABEL_59;
        }

        [(ACCHWComponentAuthService *)a4 _verifyModuleFDR:v27 forModuleType:v8];
      }

      else
      {
        [ACCHWComponentAuthService _verifyModuleFDR:a4 forModuleType:v8];
      }
    }

    else
    {
      v24 = logObjectForModule();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _verifyModuleFDR:forModuleType:];
      }
    }

    LOBYTE(v8) = 0;
    goto LABEL_29;
  }

  if (a4 == 2)
  {
    v6 = 0;
    goto LABEL_10;
  }

  if (a4 == 3)
  {
LABEL_7:
    v6 = 1;
    goto LABEL_10;
  }

LABEL_59:

  v46 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (BOOL)_getForVeridianFDRData:(id)a3 intermediateCert:(id *)a4 leafCert:(id *)a5
{
  v7 = a3;
  memset(v14, 170, sizeof(v14));
  v13[0] = [v7 bytes];
  v13[1] = [v7 length];
  if (DERDecodeItem(v13, v14) || v14[0] != 0x2000000000000010 || (v8 = v14[1] - v13[0] + v14[2], v8 > [v7 length]) || (objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", v13[0], v8), *a4 = objc_claimAutoreleasedReturnValue(), v12[0] = objc_msgSend(v7, "bytes") + v8, v12[1] = objc_msgSend(v7, "length") - v8, DERDecodeItem(v12, v14)) || v14[0] != 0x2000000000000010 || (v9 = v14[1] - v12[0] + v14[2], v9 + v8 > objc_msgSend(v7, "length")))
  {
    NSLog(&cfstr_SError.isa, "[ACCHWComponentAuthService _getForVeridianFDRData:intermediateCert:leafCert:]");
    v10 = 0;
  }

  else
  {
    *a5 = [MEMORY[0x277CBEA90] dataWithBytes:v12[0] length:v9];
    v10 = 1;
  }

  return v10;
}

- (void)_notifyComponentAuthFailure
{
  v8 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "com.apple.accessories.hwComponent.isTrusted.failure";
    _os_log_impl(&dword_23DC14000, v4, OS_LOG_TYPE_DEFAULT, "Notifying clients of %s", &v6, 0xCu);
  }

  notify_post("com.apple.accessories.hwComponent.isTrusted.failure");
  v5 = *MEMORY[0x277D85DE8];
}

- (int)_verifyBatteryMatch:(id)a3 outputBatteryCode:(unsigned __int16 *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v20.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v20.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  v5 = a3;
  clock_gettime(_CLOCK_REALTIME, &v20);
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 4;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v22 = 1334;
    v23 = 2048;
    tv_sec = v20.tv_sec;
    v25 = 2048;
    v26 = v20.tv_nsec / 0xF4240uLL;
    _os_log_impl(&dword_23DC14000, v8, OS_LOG_TYPE_DEFAULT, "_verifyBatteryMatch %d: %ld.%03llu", buf, 0x1Cu);
  }

  v9 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], v5);
  v10 = SecCertificateCopyComponentAttributes();
  v11 = [v10 objectForKey:&unk_284FFDD10];
  v12 = [v10 objectForKey:&unk_284FFDD28];
  if (v10)
  {
    v13 = MGGetBoolAnswer();
    if ([v11 BOOLValue])
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v17 = 28;
      if (!v9)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v15 = [v11 BOOLValue];
    if (v13)
    {
      v16 = 27;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    if (a4 && v12 && ((v15 | v13 ^ 1) & 1) != 0)
    {
      *buf = 0;
      [v12 getBytes:buf length:2];
      *a4 = *buf;
      if (!v9)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

LABEL_30:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)signVeridianChallenge:(id)a3 completionHandler:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v42 = a4;
  init_logging();
  v7 = objc_alloc_init(ACCHWComponentAuthServiceParams);
  v43 = -1431655766;
  [(ACCHWComponentAuthServiceParams *)v7 setChallenge:v6];
  [(ACCHWComponentAuthServiceParams *)v7 setModuleAuthService:[(ACCHWComponentAuthService *)self _findModuleAuthService:2 withAuthFlags:&v43]];
  [(ACCHWComponentAuthServiceParams *)v7 setAuthFlags:v43];
  v8 = [(ACCHWComponentAuthServiceParams *)v7 moduleAuthService];
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v8)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ACASignVeridianChallenge_cold_2();
      }

      v11 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ACCHWComponentAuthService signVeridianChallenge:v7 completionHandler:?];
    }

    v14 = 0;
    v15 = MEMORY[0x277D86220];
    while (1)
    {
      v16 = gLogObjects;
      v17 = gNumLogObjects;
      if (!gLogObjects || gNumLogObjects < 4)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v45 = v16;
          *&v45[8] = 1024;
          LODWORD(v46) = v17;
          _os_log_error_impl(&dword_23DC14000, v15, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v19 = v15;
        v20 = v15;
      }

      else
      {
        v20 = *(gLogObjects + 24);
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v45 = v14 + 1;
        *&v45[4] = 1024;
        *&v45[6] = 3;
        _os_log_debug_impl(&dword_23DC14000, v20, OS_LOG_TYPE_DEBUG, "tryCount = %d (max tries %d)", buf, 0xEu);
      }

      v21 = [(ACCHWComponentAuthService *)self _signChallenge:v7];
      v22 = gLogObjects;
      v23 = gNumLogObjects;
      v24 = !gLogObjects || gNumLogObjects <= 3;
      v25 = !v24;
      if (!v21)
      {
        break;
      }

      v26 = v21;
      if (v25)
      {
        v27 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v45 = v22;
          *&v45[8] = 1024;
          LODWORD(v46) = v23;
          _os_log_error_impl(&dword_23DC14000, v15, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v28 = v15;
        v27 = v15;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v45 = v26;
        _os_log_impl(&dword_23DC14000, v27, OS_LOG_TYPE_DEFAULT, "authError %d after _signChallenge", buf, 8u);
      }

      if ((v14 + 1) <= 2 && v26 == 30)
      {
        v29 = gLogObjects;
        v30 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v31 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v45 = v29;
            *&v45[8] = 1024;
            LODWORD(v46) = v30;
            _os_log_error_impl(&dword_23DC14000, v15, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v32 = v15;
          v31 = v15;
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(ACCHWComponentAuthService *)v49 signVeridianChallenge:v31 completionHandler:?];
        }

        sleep(0x14u);
      }

      if (++v14 > 2)
      {
        goto LABEL_70;
      }
    }

    if (v25)
    {
      v12 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v45 = v22;
        *&v45[8] = 1024;
        LODWORD(v46) = v23;
        _os_log_error_impl(&dword_23DC14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v12 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23DC14000, v12, OS_LOG_TYPE_DEFAULT, "no error after _signChallenge!", buf, 2u);
    }

    v26 = 0;
  }

  else
  {
    if (v10)
    {
      v12 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ACASignVeridianChallenge_cold_2();
      }

      v12 = MEMORY[0x277D86220];
      v33 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23DC14000, v12, OS_LOG_TYPE_DEFAULT, "ERROR No batteryAuth io_service_t is found!", buf, 2u);
    }

    v26 = 22;
  }

LABEL_70:
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v35 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v35 = MEMORY[0x277D86220];
    v36 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [(ACCHWComponentAuthServiceParams *)v7 signature];
    v38 = [(ACCHWComponentAuthServiceParams *)v7 deviceNonce];
    *buf = 138412802;
    *v45 = v37;
    *&v45[8] = 2112;
    v46 = v38;
    v47 = 1024;
    v48 = v26;
    _os_log_impl(&dword_23DC14000, v35, OS_LOG_TYPE_DEFAULT, "signVeridianChallenge Replying with signature=%@, deviceNonce=%@, authError = %d", buf, 0x1Cu);
  }

  v39 = [(ACCHWComponentAuthServiceParams *)v7 signature];
  v40 = [(ACCHWComponentAuthServiceParams *)v7 deviceNonce];
  v42[2](v42, v39, v40, v26);

  v41 = *MEMORY[0x277D85DE8];
}

- (void)verifyBatteryMatch:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v27 = a4;
  init_logging();
  v7 = 0;
  v8 = MEMORY[0x277D86220];
  while (1)
  {
    v9 = gLogObjects;
    v10 = gNumLogObjects;
    if (!gLogObjects || gNumLogObjects < 4)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v29 = v9;
        *&v29[8] = 1024;
        v30 = v10;
        _os_log_error_impl(&dword_23DC14000, v8, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v12 = v8;
      v13 = v8;
    }

    else
    {
      v13 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *v29 = v7 + 1;
      *&v29[4] = 1024;
      *&v29[6] = 3;
      _os_log_debug_impl(&dword_23DC14000, v13, OS_LOG_TYPE_DEBUG, "tryCount = %d (max tries %d)", buf, 0xEu);
    }

    v14 = [(ACCHWComponentAuthService *)self _verifyBatteryMatch:v6];
    v15 = v14;
    v16 = gLogObjects;
    v17 = gNumLogObjects;
    v18 = !gLogObjects || gNumLogObjects <= 3;
    v19 = !v18;
    if (!v14)
    {
      break;
    }

    if (v19)
    {
      v20 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v29 = v16;
        *&v29[8] = 1024;
        v30 = v17;
        _os_log_error_impl(&dword_23DC14000, v8, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v21 = v8;
      v20 = v8;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v29 = v15;
      _os_log_impl(&dword_23DC14000, v20, OS_LOG_TYPE_DEFAULT, "authError %d after _verifyBatteryMatch", buf, 8u);
    }

    if (++v7 >= 3)
    {
      goto LABEL_36;
    }
  }

  if (v19)
  {
    v22 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v29 = v16;
      *&v29[8] = 1024;
      v30 = v17;
      _os_log_error_impl(&dword_23DC14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v22 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23DC14000, v22, OS_LOG_TYPE_DEFAULT, "no error after _verifyBatteryMatch!", buf, 2u);
  }

LABEL_36:
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v24 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v24 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v29 = v15;
    _os_log_impl(&dword_23DC14000, v24, OS_LOG_TYPE_DEFAULT, "verifyBatteryMatch Replying with authError = %d", buf, 8u);
  }

  v27[2](v27, v15);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_logToAnalytics:(int)a3 authError:(int)a4 fdrValidationStatus:(int)a5 authDurationInMS:(unint64_t)a6
{
  v32[4] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB38];
  v10 = @"Failed";
  if (!a4)
  {
    v10 = @"Passed";
  }

  v32[0] = v10;
  v31[0] = @"authState";
  v31[1] = @"authErrorDescription";
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:kACCTransport_IOAccessoryAuthCP_AuthError_Strings[a4]];
  v32[1] = v11;
  v31[2] = @"isInductive";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v32[2] = v12;
  v31[3] = @"isPeriodic";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v32[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
  v15 = [v9 dictionaryWithDictionary:v14];

  BucketizedWiredAuthDuration = acc_analytics_createBucketizedWiredAuthDuration(a6);
  [v15 setObject:BucketizedWiredAuthDuration forKey:@"wiredAuthDuration"];

  if ((a3 - 1) < 3)
  {
    v17 = kACCHWComponentAuthServiceInternalModule_Strings[a3];
LABEL_7:
    [v15 setObject:v17 forKey:@"internalModuleType"];
    goto LABEL_8;
  }

  if (!a3)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v15 setObject:v18 forKey:@"isBatteryModule"];

    v17 = @"Battery";
    goto LABEL_7;
  }

LABEL_8:
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:kACCHWComponentAuthServiceFDRStatus_Strings[a5]];
  [v15 setObject:v19 forKey:@"FDRStatus"];

  v20 = [MEMORY[0x277CCAC38] processInfo];
  [v20 systemUptime];
  v22 = v21;

  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
  [v15 setObject:v23 forKey:@"Uptime"];

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v24 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ACASignVeridianChallenge_cold_2();
    }

    v24 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412546;
    v28 = @"com.apple.accessories.authCPEvent";
    v29 = 2112;
    v30 = v15;
    _os_log_impl(&dword_23DC14000, v24, OS_LOG_TYPE_DEFAULT, "CoreAnalytics event: %@\neventDict: %@", &v27, 0x16u);
  }

  AnalyticsSendEvent();
  v26 = *MEMORY[0x277D85DE8];
}

void __138__ACCHWComponentAuthService__authenticateModuleWithChallenge_completionHandler_moduleType_updateRegistry_updateUIProperty_logToAnalytics___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = v2;
      *&buf[12] = 1024;
      *&buf[14] = v3;
      _os_log_error_impl(&dword_23DC14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 67109888;
    *&buf[4] = v7;
    *&buf[8] = 1024;
    *&buf[10] = 363;
    *&buf[14] = 2048;
    *&buf[16] = __tp.tv_sec;
    *&buf[24] = 2048;
    *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
    _os_log_impl(&dword_23DC14000, v6, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
  }

  memset(buf, 170, sizeof(buf));
  v15 = 0;
  v8 = [MEMORY[0x277D25710] sharedDataAccessor];
  v9 = [v8 copyPathForPersonalizedData:2 error:0];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v9];
    v11 = v10;
    if (!v10 || Img4DecodeInitManifest([v10 bytes], objc_msgSend(v10, "length"), buf))
    {
      v12 = 0;
    }

    else if (Img4DecodeGetBooleanFromSection(buf, 0, 1684104054, &v15))
    {
      v12 = 0;
      v15 = 0;
    }

    else
    {
      v12 = v15;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  _authenticateModuleWithChallenge_completionHandler_moduleType_updateRegistry_updateUIProperty_logToAnalytics__disableAuth = v12;
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = logObjectForModule();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_authenticateModuleWithChallenge:(void *)a1 completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:.cold.5(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  [a1 moduleAuthService];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_authenticateModuleWithChallenge:(os_log_t)log completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:.cold.7(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = 2;
  _os_log_error_impl(&dword_23DC14000, log, OS_LOG_TYPE_ERROR, "(moduleType=%d) authError = eNoDeviceIDSNError after _verifyDeviceIDSN", buf, 8u);
}

- (void)_authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:.cold.13()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = logObjectForModule();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_verifyCertificate:.cold.1()
{
  v0 = logObjectForModule();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_4();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
  }
}

- (void)_verifyCertificate:(void *)a1 .cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = [a1 certificate];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_signChallenge:(mach_error_t)a1 .cold.2(mach_error_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(a1);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleCertificate:(uint64_t)a3 forModuleType:(uint64_t)a4 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1(&dword_23DC14000, a2, a3, "(moduleType=%d) Failure: componentType:%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleCertificate:forModuleType:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleCertificate:forModuleType:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleCertificate:forModuleType:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleCertificate:forModuleType:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleCertificate:forModuleType:.cold.9()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleCertificate:forModuleType:.cold.10()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleFDR:(os_log_t)log forModuleType:.cold.1(uint64_t *a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5[0] = 67109634;
  v5[1] = a2;
  v6 = 2080;
  v7 = "[ACCHWComponentAuthService _verifyModuleFDR:forModuleType:]";
  v8 = 2112;
  v9 = v3;
  _os_log_error_impl(&dword_23DC14000, log, OS_LOG_TYPE_ERROR, "(moduleType=%d) %s: AMFDRSealingMapCopyLocalDataForClass returned error=%@", v5, 0x1Cu);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleFDR:(void *)a3 forModuleType:.cold.2(int a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = logObjectForModule();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109634;
    v8[1] = a1;
    OUTLINED_FUNCTION_8();
    v8[5] = 1257;
    _os_log_error_impl(&dword_23DC14000, v6, OS_LOG_TYPE_ERROR, "(moduleType=%d) %s: %d: returned error", v8, 0x18u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleFDR:(int)a1 forModuleType:(void *)a2 .cold.3(int a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = logObjectForModule();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109634;
    v6[1] = a1;
    OUTLINED_FUNCTION_8();
    v6[5] = 1242;
    _os_log_error_impl(&dword_23DC14000, v4, OS_LOG_TYPE_ERROR, "(moduleType=%d) %s: %d: returned error", v6, 0x18u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleFDR:forModuleType:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleFDR:forModuleType:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleFDR:forModuleType:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_verifyModuleFDR:forModuleType:.cold.12()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1(&dword_23DC14000, v0, v1, "(moduleType=%d) %s: AMFDRSealingMapCopyLocalDataForClass: returned NULL", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)signVeridianChallenge:(void *)a1 completionHandler:.cold.2(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  [a1 moduleAuthService];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)signVeridianChallenge:(os_log_t)log completionHandler:.cold.3(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = 20;
  _os_log_error_impl(&dword_23DC14000, log, OS_LOG_TYPE_ERROR, "Sleeping for %d seconds before retrying auth", buf, 8u);
}

@end