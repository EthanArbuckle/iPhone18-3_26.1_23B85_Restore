@interface ACCTransportIOAccessoryAuthCP
- (ACCTransportIOAccessoryAuthCPProtocol)delegate;
- (BOOL)_authInternalModuleWithCert:(const __CFData *)cert withError:(int *)error;
- (BOOL)_authWithAuthIC:(unsigned int)c withCert:(const __CFData *)cert withError:(int *)error;
- (BOOL)_copyCertificateAttribute:(__CFData *)attribute forAttributeKey:(__CFNumber *)key withAttributeValue:(const __CFData *)value;
- (BOOL)_handleAuthCertSerialNumber:(__CFString *)number certData:(const __CFData *)data;
- (BOOL)_handleAuthCertificate:(__CFData *)certificate serialNumber:(__CFString *)number authError:(int *)error;
- (BOOL)_handleAuthDeviceInfo:(int)info versionMajor:(unsigned __int8)major versionMinor:(unsigned __int8)minor;
- (BOOL)_handleAuthSignature:(__CFData *)signature certData:(__CFData *)data nonceData:(__CFData *)nonceData;
- (BOOL)_validateCertCapsForCertificate:(__CFData *)certificate authError:(int *)error;
- (BOOL)requiresAuthenticationProcess;
- (__CFDictionary)_copyOrCreateStatsSubDict:(__CFDictionary *)dict forSerialNumber:(__CFString *)number;
- (int)_fdrCertCheck;
- (void)_fdrCertCheck;
- (void)_finishAuthentication:(BOOL)authentication authCert:(__CFData *)cert;
- (void)_handleAuthTimerTimeout;
- (void)_incrementAuthStat:(const __CFString *)stat dict:(__CFDictionary *)dict;
- (void)_logToAnalytics;
- (void)_publishAuth:(BOOL)auth fdrStatus:(int)status trusted:(BOOL)trusted publishToUI:(BOOL)i ioconnect:(unsigned int)ioconnect;
- (void)_publishAuthStats:(BOOL)stats fdrStatus:(int)status;
- (void)_validateAuthCPFlagsForCertificate;
- (void)_validateDownstreamCertSerialNumber;
- (void)dealloc;
- (void)doPostAuthentication;
- (void)startAuthenticationProcess;
- (void)startShutdownProcess;
@end

@implementation ACCTransportIOAccessoryAuthCP

uint64_t __78__ACCTransportIOAccessoryAuthCP_initWithDelegate_andIOService_connectionType___block_invoke(uint64_t a1)
{
  if ([BootArgs intForKey:@"no_prearm_devid"])
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 7;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_DEFAULT, "ACCTransportIOAccessoryAuthCP: Ignore DeviceIdentity prearm", v16, 2u);
    }
  }

  else if (acc_policies_deviceNeedsPreArmDeviceIdentity())
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 7;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "ACCTransportIOAccessoryAuthCP: Test DeviceIdentity need prearm", buf, 2u);
    }

    [*(a1 + 32) setBatteryNotifyPortRef:IONotificationPortCreate(*MEMORY[0x277CD28A0])];
    RunLoopSource = IONotificationPortGetRunLoopSource([*(a1 + 32) batteryNotifyPortRef]);
    if (RunLoopSource)
    {
      v12 = RunLoopSource;
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, v12, *MEMORY[0x277CBF058]);
      v14 = [*(a1 + 32) batteryNotifyPortRef];
      v15 = IOServiceMatching("IOPMPowerSource");
      if (!IOServiceAddMatchingNotification(v14, "IOServiceFirstMatch", v15, __powerBatteryMatch, (*(a1 + 32) + 184), (*(a1 + 32) + 108)))
      {
        __powerBatteryMatch((*(a1 + 32) + 184), *(*(a1 + 32) + 108));
      }
    }
  }

  *(*(a1 + 32) + 64) = 1;
  v7 = MFAAIsDevelopmentHW();
  v8 = MFAAIsDesenseBuild();
  result = MFAAIsInternalBuild();
  gbIsInternalBuild = result;
  if (v7 && ((result | v8) & 1) != 0)
  {
    gbAppleIDAuthAlwaysPasses = CFPreferencesGetAppBooleanValue(@"AppleIDAuthAlwaysPasses", @"com.apple.accessoryd", 0) != 0;
    gbAppleIDAuthForceDownstreamRevoke = CFPreferencesGetAppBooleanValue(@"AppleIDAuthForceDownstreamRevoke", @"com.apple.accessoryd", 0) != 0;
    gbAppleIDAuthCertNotCached = CFPreferencesGetAppBooleanValue(@"AppleIDAuthCertNotCached", @"com.apple.accessoryd", 0) != 0;
    result = CFPreferencesGetAppIntegerValue(@"AppleIDAuthMaxTryCount", @"com.apple.accessoryd", 0);
    if (result)
    {
      gAuthMaxTryCountInductive = result;
      gAuthMaxTryCountAppleIDBusLightning = result;
      gAuthMaxTryCountAppleIDBusSmartConnector = result;
    }
  }

  return result;
}

- (void)startShutdownProcess
{
  v14 = *MEMORY[0x277D85DE8];
  self->_bIsShuttingDown = 1;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 7;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "Starting shutdown process for authCP service %d", buf, 8u);
  }

  if (self->_representsInductiveTransport)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[ACCTransportIOAccessoryBase ioService](self, "ioService")];
    v7 = acc_userNotifications_generateIdentifier(@"io-service", v6);

    v8 = +[ACCUserNotificationManager sharedManager];
    [v8 dismissNotificationsWithGroupIdentifier:v7];
  }

  authWorkQueue = self->_authWorkQueue;
  if (authWorkQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ACCTransportIOAccessoryAuthCP_startShutdownProcess__block_invoke;
    block[3] = &unk_2789E8690;
    block[4] = self;
    dispatch_async(authWorkQueue, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  objc_storeWeak(&self->_delegate, 0);
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 7;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_INFO, "Deallocating authCP service %d", buf, 8u);
  }

  pAuthCertCache = self->_pAuthCertCache;
  MFAADeallocCertificateCache();
  self->_pAuthCertCache = 0;
  ioServiceUpstream = self->_ioServiceUpstream;
  if (ioServiceUpstream)
  {
    IOObjectRelease(ioServiceUpstream);
  }

  pAuthCertificate = self->_pAuthCertificate;
  self->_pAuthCertificate = 0;

  authWorkQueue = self->_authWorkQueue;
  self->_authWorkQueue = 0;

  if (self->_representsInductiveTransport)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[ACCTransportIOAccessoryBase ioService](self, "ioService")];
    v11 = acc_userNotifications_generateIdentifier(@"io-service", v10);

    v12 = +[ACCUserNotificationManager sharedManager];
    [v12 dismissNotificationsWithGroupIdentifier:v11];
  }

  v14.receiver = self;
  v14.super_class = ACCTransportIOAccessoryAuthCP;
  [(ACCTransportIOAccessoryBase *)&v14 dealloc];
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)requiresAuthenticationProcess
{
  v19 = *MEMORY[0x277D85DE8];
  if (IOObjectConformsTo([(ACCTransportIOAccessoryBase *)self ioService], "AppleAuthCPDock"))
  {
LABEL_2:
    v3 = 0;
    goto LABEL_9;
  }

  if ([(ACCTransportIOAccessoryAuthCP *)self _representsHardwareComponent])
  {
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    CFProperty = IORegistryEntryCreateCFProperty(ioService, @"AuthPassed", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      Value = CFBooleanGetValue(CFProperty);
      CFRelease(v6);
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v8 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v8 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v16 = @"yes";
        if (!Value)
        {
          v16 = @"no";
        }

        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_INFO, "For debug purposes: isAuthPassed = %@", &v17, 0xCu);
      }

      goto LABEL_2;
    }
  }

  v3 = 1;
LABEL_9:
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"no";
    if (v3)
    {
      v12 = @"yes";
    }

    v17 = 138412290;
    v18 = v12;
    _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "requiresAuth = %@", &v17, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)doPostAuthentication
{
  if (!self->_bIsShuttingDown)
  {
    block[7] = v2;
    block[8] = v3;
    authWorkQueue = [(ACCTransportIOAccessoryAuthCP *)self authWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ACCTransportIOAccessoryAuthCP_doPostAuthentication__block_invoke;
    block[3] = &unk_2789E8690;
    block[4] = self;
    dispatch_async(authWorkQueue, block);
  }
}

- (BOOL)_authInternalModuleWithCert:(const __CFData *)cert withError:(int *)error
{
  v4 = 0;
  v76 = *MEMORY[0x277D85DE8];
  if (cert && error)
  {
    if (self->_representsInternalModule)
    {
      v65 = 0;
      v66 = &v65;
      v67 = 0x2020000000;
      v68 = 0;
      v61 = 0;
      v62 = &v61;
      v63 = 0x2020000000;
      v64 = 31;
      v55 = 0;
      v56 = &v55;
      v57 = 0x3032000000;
      v58 = __Block_byref_object_copy__1;
      v59 = __Block_byref_object_dispose__1;
      v60 = 0;
      v51 = 0;
      v52 = &v51;
      v53 = 0x2020000000;
      v54 = 0;
      v8 = dispatch_semaphore_create(0);
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      __buf[0] = v9;
      __buf[1] = v9;
      v10 = enhanced_apfs_enabled();
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v11 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v11 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v70) = v10;
        _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_INFO, "eApfsEnabled:%d", buf, 8u);
      }

      if (v10)
      {
        v44 = systemInfo_copyProductVersion();
        v13 = +[ACCUserDefaults sharedDefaults];
        v14 = [v13 stringForKey:@"ProductVersion"];

        if (gLogObjects && gNumLogObjects >= 7)
        {
          v15 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v15 = MEMORY[0x277D86220];
          v17 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v70 = v14;
          v71 = 2112;
          v72 = v44;
          _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, "knownVersion:%@, osVersion:%@", buf, 0x16u);
        }

        v16 = 1800;
        if (v14 && v44)
        {
          if ([(__CFString *)v14 isEqualToString:v44])
          {
            v16 = 0;
          }

          else
          {
            v16 = 1800;
          }
        }
      }

      else
      {
        v44 = 0;
        v16 = 0;
      }

      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __71__ACCTransportIOAccessoryAuthCP__authInternalModuleWithCert_withError___block_invoke;
      v45[3] = &unk_2789E9468;
      v47 = &v65;
      v48 = &v61;
      v49 = &v55;
      v50 = &v51;
      v18 = v8;
      v46 = v18;
      v19 = MEMORY[0x2383A9E30](v45);
      arc4random_buf(__buf, 0x20uLL);
      v43 = [MEMORY[0x277CBEA90] dataWithBytes:__buf length:32];
      mEMORY[0x277CFD218] = [MEMORY[0x277CFD218] sharedManager];
      v21 = mEMORY[0x277CFD218];
      representsInternalModule = self->_representsInternalModule;
      if (representsInternalModule > 2)
      {
        if (representsInternalModule == 3)
        {
          if (!v16)
          {
            v16 = 10;
          }

          [mEMORY[0x277CFD218] authenticateTouchControllerWithChallenge:0 completionHandler:v19 updateRegistry:0];
          v23 = @"Touch";
          goto LABEL_50;
        }

        if (representsInternalModule == 4)
        {
          if (!v16)
          {
            v16 = 10;
          }

          [mEMORY[0x277CFD218] authenticateLASWithChallenge:v43 completionHandler:v19 updateRegistry:0];
          v23 = @"LAS";
          goto LABEL_50;
        }
      }

      else
      {
        if (representsInternalModule == 1)
        {
          if (!v16)
          {
            v16 = 10;
          }

          [mEMORY[0x277CFD218] authenticateBatteryWithChallenge:v43 completionHandler:v19];
          goto LABEL_46;
        }

        if (representsInternalModule == 2)
        {
          if (!v16)
          {
            v16 = 80;
          }

          [mEMORY[0x277CFD218] authenticateVeridianWithChallenge:v43 completionHandler:v19];
LABEL_46:
          v23 = @"Battery";
LABEL_50:
          v25 = dispatch_time(0, 1000000000 * v16);
          if (dispatch_semaphore_wait(v18, v25))
          {
            if (gLogObjects && gNumLogObjects >= 7)
            {
              v26 = *(gLogObjects + 48);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryOOBPairing dealloc];
              }

              v26 = MEMORY[0x277D86220];
              v27 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryAuthCP _authInternalModuleWithCert:withError:];
            }

            *(v62 + 6) = 15;
          }

          if (gLogObjects && gNumLogObjects >= 7)
          {
            v28 = *(gLogObjects + 48);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v28 = MEMORY[0x277D86220];
            v29 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v30 = *(v66 + 24);
            *buf = 138543874;
            v70 = v23;
            v71 = 2080;
            v72 = "[ACCTransportIOAccessoryAuthCP _authInternalModuleWithCert:withError:]";
            v73 = 1024;
            v74 = v30;
            _os_log_impl(&dword_233656000, v28, OS_LOG_TYPE_DEFAULT, "(module:%{public}@) %s: authPassed:%d", buf, 0x1Cu);
          }

          if (*(v52 + 24))
          {
            v31 = 2;
          }

          else
          {
            v31 = 1;
          }

          self->_fdrValidationStatus = v31;
          *error = *(v62 + 6);
          *cert = v56[5];
          v4 = *(v66 + 24);
          if (!v10)
          {
            goto LABEL_88;
          }

          if (gLogObjects && gNumLogObjects >= 7)
          {
            v32 = *(gLogObjects + 48);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v32 = MEMORY[0x277D86220];
            v33 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_233656000, v32, OS_LOG_TYPE_INFO, "store OS version", buf, 2u);
          }

          v24 = +[ACCUserDefaults sharedDefaults];
          [v24 setObject:v44 forKey:@"ProductVersion"];
LABEL_87:

LABEL_88:
          _Block_object_dispose(&v51, 8);
          _Block_object_dispose(&v55, 8);

          _Block_object_dispose(&v61, 8);
          _Block_object_dispose(&v65, 8);
          goto LABEL_89;
        }
      }

      if (gLogObjects && gNumLogObjects >= 7)
      {
        v24 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v24 = MEMORY[0x277D86220];
        v34 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(ACCTransportIOAccessoryAuthCP *)&self->_representsInternalModule _authInternalModuleWithCert:v24 withError:v35, v36, v37, v38, v39, v40];
      }

      v4 = 0;
      goto LABEL_87;
    }

    v4 = 0;
  }

LABEL_89:
  v41 = *MEMORY[0x277D85DE8];
  return v4;
}

void __71__ACCTransportIOAccessoryAuthCP__authInternalModuleWithCert_withError___block_invoke(uint64_t a1, int a2, void *a3, void *a4, int a5, int a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if (gLogObjects)
  {
    v13 = gNumLogObjects < 7;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v15 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315906;
    v21 = "[ACCTransportIOAccessoryAuthCP _authInternalModuleWithCert:withError:]_block_invoke";
    v22 = 1024;
    v23 = a2;
    v24 = 1024;
    v25 = a5;
    v26 = 1024;
    v27 = a6;
    _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, "%s: authPassed:%d, fdrValidationStatus:%d, authError:0x%x", &v20, 0x1Eu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = a6;
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v11;
  v18 = v11;

  *(*(*(a1 + 64) + 8) + 24) = a5;
  dispatch_semaphore_signal(*(a1 + 32));

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_authWithAuthIC:(unsigned int)c withCert:(const __CFData *)cert withError:(int *)error
{
  LOBYTE(v5) = 0;
  v57 = *MEMORY[0x277D85DE8];
  if (cert && error)
  {
    v53 = 0;
    v52 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v12 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      authTryCurrent = self->_authTryCurrent;
      authTryMaximum = self->_authTryMaximum;
      *buf = 67109376;
      *v55 = authTryCurrent;
      *&v55[4] = 1024;
      *&v55[6] = authTryMaximum;
      _os_log_impl(&dword_233656000, v12, OS_LOG_TYPE_DEFAULT, "Starting auth try:%02X of max:%02X", buf, 0xEu);
    }

    if (*cert)
    {
      CFRelease(*cert);
    }

    *cert = 0;
    DeviceInfo = cpGetDeviceInfo([(ACCTransportIOAccessoryBase *)self ioService], &v53 + 1, &v53, &v52 + 1, &v52, &v51);
    if (![(ACCTransportIOAccessoryAuthCP *)self _handleAuthDeviceInfo:DeviceInfo versionMajor:HIBYTE(v52) versionMinor:v52])
    {
      LOBYTE(v5) = 0;
      if ([(ACCTransportIOAccessoryAuthCP *)self _representsHardwareComponent])
      {
        v18 = 17;
      }

      else
      {
        v18 = 1;
      }

      v50 = v18;
      goto LABEL_96;
    }

    v16 = acc_userDefaults_BOOLForKey(@"TreatAuthCPDEVNAsV3");
    v17 = HIBYTE(v52);
    if (HIBYTE(v52) == 4)
    {
      if (!v16)
      {
        v19 = 5;
        goto LABEL_26;
      }
    }

    else if (HIBYTE(v52) != 3)
    {
LABEL_27:
      self->_authVersionMajor = v17;
      self->_deviceID = v51;
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v20 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v20 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        authVersionMajor = self->_authVersionMajor;
        deviceID = self->_deviceID;
        *buf = 67109376;
        *v55 = authVersionMajor;
        *&v55[4] = 1024;
        *&v55[6] = deviceID;
        _os_log_impl(&dword_233656000, v20, OS_LOG_TYPE_DEFAULT, "authMajor:%02X deviceID:%04X", buf, 0xEu);
      }

      v24 = cpCopyCertificateSerialNumber([(ACCTransportIOAccessoryBase *)self ioService]);
      if (![(ACCTransportIOAccessoryAuthCP *)self _handleAuthCertSerialNumber:v24 certData:&v49])
      {
        LOBYTE(v5) = 0;
        v26 = 2;
LABEL_39:
        v50 = v26;
LABEL_94:
        if (v24)
        {
          CFRelease(v24);
        }

LABEL_96:
        *error = v50;
        *cert = v49;
        goto LABEL_97;
      }

      if (v49)
      {
        v25 = 1;
      }

      else
      {
        v27 = cpCopyCertificate([(ACCTransportIOAccessoryBase *)self ioService]);
        v25 = 0;
        v49 = v27;
      }

      self->_certIsCached = v25;
      self->_certType = -1;
      v5 = [ACCTransportIOAccessoryAuthCP _handleAuthCertificate:"_handleAuthCertificate:serialNumber:authError:" serialNumber:? authError:?];
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v28 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v28 = MEMORY[0x277D86220];
        v29 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [ACCTransportIOAccessoryAuthCP _authWithAuthIC:v5 withCert:&self->_certType withError:v28];
      }

      if (!v5)
      {
        goto LABEL_94;
      }

      v30 = 0;
      certType = self->_certType;
      v32 = 1;
      if (certType != 3 && certType != 5)
      {
        LOBYTE(v30) = MFAACertificateAuthVersionNumber();
        v33 = acc_userDefaults_BOOLForKey(@"TreatAuthCPDEVNAsV3");
        v30 = v30;
        certType = self->_certType;
        v32 = v33 ^ 1;
      }

      if (certType != 3 && certType != 5 && v30 != HIBYTE(v52))
      {
        v34 = v30 == 3 && HIBYTE(v52) == 4;
        v35 = !v34;
        if ((v35 | v32))
        {
          v36 = logObjectForModule_1(6);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryAuthCP _authWithAuthIC:? withCert:? withError:?];
          }

          LOBYTE(v5) = 0;
          v26 = 9;
          goto LABEL_39;
        }
      }

      cf = 0;
      v37 = MFAACreateRandomNonce();
      if (!v37)
      {
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v40 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v40 = MEMORY[0x277D86220];
          v45 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryAuthCP _authWithAuthIC:withCert:withError:];
        }

        LOBYTE(v5) = 0;
        v26 = 10;
        goto LABEL_39;
      }

      v38 = v37;
      if (cpCreateSignature(c, v37, &cf))
      {
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v39 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v39 = MEMORY[0x277D86220];
          v43 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryAuthCP _authWithAuthIC:withCert:withError:];
        }

        LOBYTE(v5) = 0;
        v44 = 11;
      }

      else
      {
        if ([(ACCTransportIOAccessoryAuthCP *)self _handleAuthSignature:cf certData:v49 nonceData:v38])
        {
          v5 = [(ACCTransportIOAccessoryAuthCP *)self _validateCertCapsForCertificate:v49 authError:&v50];
          v41 = logObjectForModule_1(6);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            if (v50 > 0x1E)
            {
              v42 = "UninitializedAuthError";
            }

            else
            {
              v42 = kACCTransport_IOAccessoryAuthCP_AuthError_Strings[v50];
            }

            *buf = 136315394;
            *v55 = v42;
            *&v55[8] = 1024;
            v56 = v5;
            _os_log_impl(&dword_233656000, v41, OS_LOG_TYPE_INFO, "after validating cert caps, authError = %s, bAuthContinue = %d", buf, 0x12u);
          }

          goto LABEL_92;
        }

        LOBYTE(v5) = 0;
        v44 = 12;
      }

      v50 = v44;
LABEL_92:
      CFRelease(v38);
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_94;
    }

    v19 = 1;
LABEL_26:
    self->_certType = v19;
    goto LABEL_27;
  }

LABEL_97:
  v46 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)startAuthenticationProcess
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_bIsShuttingDown)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__1;
    v11[4] = __Block_byref_object_dispose__1;
    selfCopy = self;
    v3 = selfCopy;
    v12 = selfCopy;
    if (selfCopy->_accConnectionType == 1)
    {
      LOWORD(v14) = 0;
      *buf = 0;
      [(ACCTransportIOAccessoryAuthCP *)selfCopy ioServiceUpstream];
      if (!IOAccessoryManagerGetDigitalID() && (v14 & 0x10) != 0 && (buf[1] & 1) == 0)
      {
        parent = 0;
        if (IORegistryEntryGetParentEntry([(ACCTransportIOAccessoryAuthCP *)v3 ioServiceUpstream], "IOAccessory", &parent))
        {
          CFProperty = 0;
        }

        else
        {
          CFProperty = IORegistryEntryCreateCFProperty(parent, @"IOAccessoryAccessoryModelNumber", *MEMORY[0x277CBECE8], 0);
        }

        v7 = acc_userDefaults_copyIntegerForKey(@"AuthCPStartDelayMs");
        if (v7)
        {
          v8 = v7 & ~(v7 >> 63);
        }

        else if (CFProperty)
        {
          if (CFStringCompare(CFProperty, @"A1619", 0))
          {
            v8 = 100;
          }

          else
          {
            v8 = 500;
          }
        }

        else
        {
          v8 = 100;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v14 = CFProperty;
          v15 = 2048;
          v16 = v8;
          _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "parent %@, authCPStartDelayMs %ld \n", buf, 0x16u);
        }

        if (v8)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v14 = v8;
            _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Sleeping %ldms before starting auth. \n", buf, 0xCu);
          }

          usleep(1000 * v8);
        }

        if (parent)
        {
          IOObjectRelease(parent);
        }

        if (CFProperty)
        {
          CFRelease(CFProperty);
        }
      }
    }

    authWorkQueue = [(ACCTransportIOAccessoryAuthCP *)v3 authWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__ACCTransportIOAccessoryAuthCP_startAuthenticationProcess__block_invoke;
    block[3] = &unk_2789E9490;
    block[4] = v3;
    block[5] = v11;
    dispatch_async(authWorkQueue, block);

    _Block_object_dispose(v11, 8);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __59__ACCTransportIOAccessoryAuthCP_startAuthenticationProcess__block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) ioService];
  v4 = *v2;
  v5 = *(*v2 + 2);
  cf = 0;
  v4[58] = 1;
  *(*v2 + 25) = 31;
  *(*v2 + 17) = 0;
  *(*v2 + 56) = 0;
  v6 = *(*v2 + 15);
  *(*v2 + 15) = 0;

  *(*v2 + 60) = 0;
  *(*v2 + 33) = 0;
  v7 = *v2 + 208;
  *v7 = 0u;
  v7[1] = 0u;
  *(*v2 + 24) = 0;
  IOObjectRetain(v3);
  IOObjectRetain(v5);
  if (*(*v2 + 57))
  {
    v8 = 250000000000;
  }

  else
  {
    v8 = 30000000000;
  }

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v9 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*v2 ioService];
    v12 = *(*v2 + 59);
    *buf = 67109376;
    *v63 = v11;
    *&v63[4] = 1024;
    *&v63[6] = v12;
    _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "startAuthenticationProcess Starting auth process for AuthCP service:%4d, authTryMaximum:%02X", buf, 0xEu);
  }

  v13 = *v2;
  if ((*(*v2 + 61) & 1) == 0)
  {
    *(*v2 + 22) = systemInfo_getCurrentUnixTimeMS();
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v14 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*v2 ioService];
      v17 = *(*v2 + 19);
      *buf = 134218496;
      *v63 = ((v8 * 0x112E0BE827uLL) >> 64) >> 2;
      *&v63[8] = 1024;
      *v64 = v16;
      *&v64[4] = 1024;
      *v65 = v17;
      _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "Starting AppleAuthCP auth timer timeout secs:[%02lld] for AuthCP service:%4d, connectionType:%{coreacc:ACCConnection_Type_t}d", buf, 0x18u);
    }

    v18 = *(*v2 + 19);
    v19 = dispatch_time(0, v8);
    dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0);
    v13 = *v2;
  }

  if (v13[19] != 8 || (+[ACCTransportIOAccessorySharedManager sharedManager](ACCTransportIOAccessorySharedManager, "sharedManager"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 shouldEnableDirectAWCAuth], v20, v21))
  {
    if (acc_userDefaults_BOOLForKey(@"ForceAuthTimeout"))
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v22 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v22 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [*v2 ioService];
        *buf = 67109120;
        *v63 = v28;
        _os_log_impl(&dword_233656000, v22, OS_LOG_TYPE_DEFAULT, "startAuthenticationProcess: ForceAuthTimeout: don't actually auth for AuthCP service:%4d, allow timeout to occur, if any", buf, 8u);
      }

LABEL_51:

      goto LABEL_52;
    }

    v23 = *v2;
    if (*(*v2 + 61))
    {
LABEL_29:
      v24 = 0;
LABEL_30:
      if (gLogObjects)
      {
        v25 = gNumLogObjects < 7;
      }

      else
      {
        v25 = 1;
      }

      if (v25)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v29 = MEMORY[0x277D86220];
        v26 = MEMORY[0x277D86220];
      }

      else
      {
        v29 = *(gLogObjects + 48);
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [*v2 ioService];
        v31 = *(*v2 + 58);
        v32 = *(*v2 + 59);
        v33 = *(*v2 + 61);
        *buf = 67110144;
        *v63 = v30;
        *&v63[4] = 1024;
        *&v63[6] = v31;
        *v64 = 1024;
        *&v64[2] = v32;
        *v65 = 1024;
        *&v65[2] = v24 & 1;
        v66 = 1024;
        v67 = v33;
        _os_log_impl(&dword_233656000, v29, OS_LOG_TYPE_INFO, "AuthCP service:%4d: Auth process concluded on try:%02X of max:%02X, bAuthContinue:%d, bIsShuttingDown:%d", buf, 0x20u);
      }

      [*v2 _finishAuthentication:v24 & 1 authCert:cf];
      v34 = *v2;
      if ((*(*v2 + 92) & 2) != 0 && v34[17] == 2)
      {
        [v34 _validateDownstreamCertSerialNumber];
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      IOObjectRelease(v3);
      IOObjectRelease(v5);
      v35 = *(*(a1 + 40) + 8);
      v22 = *(v35 + 40);
      *(v35 + 40) = 0;
      goto LABEL_51;
    }

    v24 = 0;
    allocator = *MEMORY[0x277CBECE8];
    while (1)
    {
      if ((v24 & 1) != 0 || *(v23 + 58) > *(v23 + 59))
      {
        goto LABEL_30;
      }

      if (v23[17])
      {
        goto LABEL_29;
      }

      v60 = 31;
      v37 = gLogObjects;
      v38 = gNumLogObjects;
      if (gLogObjects)
      {
        v39 = gNumLogObjects < 7;
      }

      else
      {
        v39 = 1;
      }

      if (v39)
      {
        v41 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v63 = v37;
          *&v63[8] = 1024;
          *v64 = v38;
          _os_log_error_impl(&dword_233656000, v41, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v40 = v41;
      }

      else
      {
        v41 = *(gLogObjects + 48);
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [*v2 ioService];
        v43 = *(*v2 + 58);
        v44 = *(*v2 + 59);
        *buf = 67109632;
        *v63 = v42;
        *&v63[4] = 1024;
        *&v63[6] = v43;
        *v64 = 1024;
        *&v64[2] = v44;
        _os_log_impl(&dword_233656000, v41, OS_LOG_TYPE_DEFAULT, "AuthCP service:%4d: starting auth process on try:%02X of max:%02X", buf, 0x14u);
      }

      if (*(*v2 + 18))
      {
        CFProperty = IORegistryEntryCreateCFProperty(v3, @"isTrusted", allocator, 0);
        if (CFProperty)
        {
          v46 = CFProperty;
          v47 = CFGetTypeID(CFProperty);
          if (v47 == CFBooleanGetTypeID())
          {
            if (CFBooleanGetValue(v46))
            {
              v48 = cpCopyCertificate(v3);
              if (v48)
              {
                v49 = v48;
                v50 = gLogObjects;
                if (gLogObjects && gNumLogObjects >= 7)
                {
                  v51 = *(gLogObjects + 48);
                }

                else
                {
                  v58 = gNumLogObjects;
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v63 = v50;
                    *&v63[8] = 1024;
                    *v64 = v58;
                    _os_log_error_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v51 = MEMORY[0x277D86220];
                  v53 = MEMORY[0x277D86220];
                }

                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  __59__ACCTransportIOAccessoryAuthCP_startAuthenticationProcess__block_invoke_cold_3(v68, v2, v69, v51);
                }

                *(*v2 + 24) = 2;
                v60 = 0;
                cf = v49;
                CFRelease(v46);
                goto LABEL_90;
              }
            }
          }

          CFRelease(v46);
        }

        if (([*v2 _authInternalModuleWithCert:&cf withError:&v60] & 1) == 0)
        {
LABEL_79:
          v52 = *v2;
          if (!*(*v2 + 17) && *(v52 + 58) == *(v52 + 59))
          {
            if (v60 && v52[25] == 31)
            {
              v52[25] = v60;
              v52 = *v2;
            }

            v54 = v52[25] - 19;
            if (v54 > 4)
            {
              v55 = 1;
            }

            else
            {
              v55 = dword_2336C03F0[v54];
            }

            v52[17] = v55;
          }

          v56 = *v2;
          if (!*(*v2 + 17))
          {
            v57 = v56[58];
            if (v57 < v56[59])
            {
              v56[58] = v57 + 1;
              v56 = *v2;
            }
          }

          [v56 ioService];
          IOServiceGetState();
          v24 = 0;
          goto LABEL_99;
        }
      }

      else if (([*v2 _authWithAuthIC:v5 withCert:&cf withError:&v60] & 1) == 0)
      {
        goto LABEL_79;
      }

LABEL_90:
      v24 = 1;
LABEL_99:
      v23 = *v2;
      if (*(*v2 + 61))
      {
        goto LABEL_30;
      }
    }
  }

LABEL_52:
  v36 = *MEMORY[0x277D85DE8];
}

- (void)_validateDownstreamCertSerialNumber
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)_handleAuthDeviceInfo:(int)info versionMajor:(unsigned __int8)major versionMinor:(unsigned __int8)minor
{
  minorCopy = minor;
  majorCopy = major;
  v24 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109632;
    v19[1] = info;
    v20 = 1024;
    v21 = majorCopy;
    v22 = 1024;
    v23 = minorCopy;
    _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "_handleAuthDeviceInfo: ioretStatus %02X, authVerMajor:%02X, authVerMinor:%02X", v19, 0x14u);
  }

  if (self->_bIsShuttingDown || self->_authStatus)
  {
    goto LABEL_40;
  }

  if (info)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v12 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryAuthCP _handleAuthDeviceInfo:versionMajor:versionMinor:];
    }

LABEL_39:

LABEL_40:
    result = 0;
    goto LABEL_41;
  }

  v14 = majorCopy == 4 || (majorCopy & 0xFE) == 2;
  if (minorCopy || !v14)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v12 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryAuthCP _handleAuthDeviceInfo:versionMajor:versionMinor:];
    }

    goto LABEL_39;
  }

  result = 1;
LABEL_41:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_handleAuthCertSerialNumber:(__CFString *)number certData:(const __CFData *)data
{
  if (self->_bIsShuttingDown || self->_authStatus)
  {
    return 0;
  }

  if (number)
  {
    pAuthCertCache = self->_pAuthCertCache;
    v7 = MFAACreateCertDataFromSerialNumber();
  }

  else
  {
    v7 = 0;
  }

  *data = v7;
  return 1;
}

- (BOOL)_copyCertificateAttribute:(__CFData *)attribute forAttributeKey:(__CFNumber *)key withAttributeValue:(const __CFData *)value
{
  v22 = *MEMORY[0x277D85DE8];
  if (!attribute || !key || !value)
  {
    v9 = logObjectForModule_1(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[ACCTransportIOAccessoryAuthCP _copyCertificateAttribute:forAttributeKey:withAttributeValue:]";
      v19 = "%s: bad arguments";
LABEL_16:
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, v19, &v20, 0xCu);
    }

LABEL_18:
    v16 = 0;
    goto LABEL_11;
  }

  mEMORY[0x277D24E20] = [MEMORY[0x277D24E20] sharedManager];
  v9 = [mEMORY[0x277D24E20] copyParsedCertificateChainInfo:attribute];

  if (!v9)
  {
    v9 = logObjectForModule_1(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[ACCTransportIOAccessoryAuthCP _copyCertificateAttribute:forAttributeKey:withAttributeValue:]";
      v19 = "%s: !certInfo";
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v10 = [v9 objectForKey:@"LeafCertData"];
  v11 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], v10);
  if (!v11)
  {
    [ACCTransportIOAccessoryAuthCP _copyCertificateAttribute:v10 forAttributeKey:? withAttributeValue:?];
    goto LABEL_18;
  }

  v12 = v11;
  v13 = SecCertificateCopyComponentAttributes();
  if (v13)
  {
    v14 = v13;
    Value = CFDictionaryGetValue(v13, key);
    v16 = Value != 0;
    if (Value)
    {
      *value = Value;
      CFRetain(Value);
    }

    else
    {
      [ACCTransportIOAccessoryAuthCP _copyCertificateAttribute:forAttributeKey:withAttributeValue:];
    }

    CFRelease(v14);
  }

  else
  {
    [ACCTransportIOAccessoryAuthCP _copyCertificateAttribute:forAttributeKey:withAttributeValue:];
    v16 = 0;
  }

  CFRelease(v12);

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_handleAuthCertificate:(__CFData *)certificate serialNumber:(__CFString *)number authError:(int *)error
{
  v61 = *MEMORY[0x277D85DE8];
  self->_certType = -1;
  *error = 0;
  if (self->_bIsShuttingDown || self->_authStatus)
  {
    v6 = 0;
    goto LABEL_4;
  }

  v11 = 0x2812FE000uLL;
  if (certificate)
  {
    mEMORY[0x277D24E20] = [MEMORY[0x277D24E20] sharedManager];
    v14 = [mEMORY[0x277D24E20] copyParsedCertificateChainInfo:certificate];

    if (v14)
    {
      mEMORY[0x277D24E20]2 = [MEMORY[0x277D24E20] sharedManager];
      v16 = [mEMORY[0x277D24E20]2 copyEvaluatedCertificateChainInfo:v14];

      v17 = v14;
      if (v16)
      {
        v18 = v16;

        v19 = [MEMORY[0x277D24E20] isMFi2_3CertInfo:v18];
        v50 = v19;
        if ([MEMORY[0x277D24E20] isComponentCertInfo:v18])
        {
          self->_certType = 5;
          objc_storeStrong(&self->_certInfo, v16);
          v19 = 1;
        }

        v17 = v18;
      }

      else
      {
        v19 = 0;
        v50 = 0;
      }

      v11 = 0x2812FE000;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v22 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v22 = MEMORY[0x277D86220];
        v24 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *v53 = "[ACCTransportIOAccessoryAuthCP _handleAuthCertificate:serialNumber:authError:]";
        *&v53[8] = 1024;
        v54 = 2059;
        _os_log_impl(&dword_233656000, v22, OS_LOG_TYPE_DEFAULT, "%s:%d: !certInfo", buf, 0x12u);
      }

      v17 = 0;
      v19 = 0;
      v50 = 0;
    }

    v25 = *(v11 + 3720);
    if (v25 && gNumLogObjects >= 7)
    {
      v26 = *(v25 + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v26 = MEMORY[0x277D86220];
      v27 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      certType = self->_certType;
      *buf = 136316162;
      *v53 = "[ACCTransportIOAccessoryAuthCP _handleAuthCertificate:serialNumber:authError:]";
      *&v53[8] = 1024;
      v54 = 2098;
      v55 = 1024;
      v56 = v19;
      v57 = 1024;
      v58 = certType;
      v59 = 2112;
      v60 = v17;
      _os_log_debug_impl(&dword_233656000, v26, OS_LOG_TYPE_DEBUG, "%s:%d bAuthContinue %d, certType %d, certInfo %@", buf, 0x28u);
    }

    if (v50)
    {
      if (v17)
      {
        mEMORY[0x277D24E20]3 = [MEMORY[0x277D24E20] sharedManager];
        v29 = [mEMORY[0x277D24E20]3 verifyCertificateChainInfoSerialNumber:v17];

        if (v29)
        {
          if (number)
          {
            mEMORY[0x277D24E20]4 = [MEMORY[0x277D24E20] sharedManager];
            v31 = [mEMORY[0x277D24E20]4 copyLeafCertificateSerialNumber:v17];

            goto LABEL_70;
          }

LABEL_88:
          v46 = logObjectForModule_1(6);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *v53 = "[ACCTransportIOAccessoryAuthCP _handleAuthCertificate:serialNumber:authError:]";
            _os_log_impl(&dword_233656000, v46, OS_LOG_TYPE_DEFAULT, "%s createCertificateSerialNumber no cert serial, skip", buf, 0xCu);
          }

          goto LABEL_91;
        }
      }

      else if (MFAAVerifyCertificateSerialNumber())
      {
        if (number)
        {
          v31 = MFAACreateCertificateSerialNumber();
LABEL_70:
          if (v31)
          {
            v40 = MFAACreateSerialNumberStringFromData();
            if (v40)
            {
              v41 = v40;
              v42 = CFStringCompare(number, v40, 1uLL);
              v6 = v42 == kCFCompareEqualTo;
              if (v42)
              {
                v43 = logObjectForModule_1(6);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  [ACCTransportIOAccessoryAuthCP _handleAuthCertificate:serialNumber:authError:];
                }

                *error = 8;
              }

              CFRelease(v41);
            }

            else
            {
              v49 = logObjectForModule_1(6);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryAuthCP _handleAuthCertificate:serialNumber:authError:];
              }

              v6 = 0;
              *error = 7;
            }

            CFRelease(v31);
          }

          else
          {
            v48 = logObjectForModule_1(6);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryAuthCP _handleAuthCertificate:serialNumber:authError:];
            }

            v6 = 0;
            *error = 6;
          }

          goto LABEL_92;
        }

        goto LABEL_88;
      }

      v6 = 0;
      v44 = 5;
LABEL_87:
      *error = v44;
LABEL_92:

      goto LABEL_4;
    }

    if (v17)
    {
      v32 = v19;
    }

    else
    {
      v32 = 0;
    }

    if (v32 == 1 && [MEMORY[0x277D24E20] isComponentCertInfo:v17])
    {
      self->_certType = 5;
      objc_storeStrong(&self->_certInfo, v17);
LABEL_91:
      v6 = 1;
      goto LABEL_92;
    }

    v51 = v19;
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v33 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v33 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, v33, OS_LOG_TYPE_DEFAULT, "Check if certificate verifies against DEVN cert", buf, 2u);
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v36 = Mutable;
      CFArrayAppendValue(Mutable, certificate);
      mEMORY[0x277D24E20]5 = [MEMORY[0x277D24E20] sharedManager];
      v38 = [mEMORY[0x277D24E20]5 validateCertificateChain:v36 type:3 realtime:1 error:0];

      if (v38 == 1 && acc_userDefaults_BOOLForKey(@"EnableDEVNCertSupport"))
      {
        self->_certType = 3;
        v51 = 1;
      }

      if (gLogObjects && gNumLogObjects >= 7)
      {
        v39 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v39 = MEMORY[0x277D86220];
        v45 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v53 = v38;
        *&v53[4] = 1024;
        *&v53[6] = v51;
        _os_log_impl(&dword_233656000, v39, OS_LOG_TYPE_DEFAULT, "CertStatus = %d, bAuthContinue = %d", buf, 0xEu);
      }

      CFRelease(v36);
      if (v51)
      {
        goto LABEL_91;
      }
    }

    else if (v19)
    {
      goto LABEL_91;
    }

    v6 = 0;
    v44 = 4;
    goto LABEL_87;
  }

  if (gLogObjects)
  {
    v20 = gNumLogObjects < 7;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v23 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  else
  {
    v23 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessoryAuthCP _handleAuthCertificate:serialNumber:authError:];
  }

  v6 = 0;
  *error = 3;
LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_handleAuthSignature:(__CFData *)signature certData:(__CFData *)data nonceData:(__CFData *)nonceData
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_bIsShuttingDown || self->_authStatus)
  {
    goto LABEL_21;
  }

  if (!data || !signature || !nonceData)
  {
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    else
    {
      v11 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 134218496;
      signatureCopy = signature;
      v16 = 2048;
      nonceDataCopy = nonceData;
      v18 = 2048;
      dataCopy = data;
      _os_log_error_impl(&dword_233656000, v11, OS_LOG_TYPE_ERROR, "Parameter fail pkNonceSignature:%04lX, pkNonceData:%04lX, pCFCertData:%04lX", &v14, 0x20u);
    }

    goto LABEL_21;
  }

  if (acc_userDefaults_BOOLForKey(@"ForceAuthFail"))
  {
LABEL_21:
    v12 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282182FD0](data, nonceData, signature);
}

- (void)_handleAuthTimerTimeout
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_0(&dword_233656000, self, a3, "AppleAuthCP:%s timeout TTR", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_finishAuthentication:(BOOL)authentication authCert:(__CFData *)cert
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = 0x2812FE000;
  if (!self->_bIsShuttingDown)
  {
    authenticationCopy = authentication;
    dispatch_source_set_timer(self->_authTimerSource, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (!self->_authStatus)
    {
      v8 = authenticationCopy ? 2 : 1;
      self->_authStatus = v8;
      if (authenticationCopy)
      {
        self->_authErrorDescription = 0;
      }
    }

    if (gbAppleIDAuthAlwaysPasses == 1 && self->_authStatus != 2)
    {
      self->_authStatus = 2;
      if (cert && !(self->_authCertCaps.authCertCaps0 | self->_authCertCaps.authCertCaps1 | self->_authCertCaps.authCertCaps2 | self->_authCertCaps.authCertCaps3))
      {
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v9 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v9 = MEMORY[0x277D86220];
          v10 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          certType = self->_certType;
          *buf = 67109120;
          LODWORD(v64) = certType;
          _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "finishAuthentication: _certType %d", buf, 8u);
        }

        if (self->_certType == 3)
        {
          v12 = MFAACreateDEVNCertCapsForCable();
        }

        else
        {
          v12 = MFAACreateCapsFromAuthCert();
        }

        if (v12)
        {
          v13 = v12[1];
          *&self->_authCertCaps.authCertCaps0 = *v12;
          *&self->_authCertCaps.authCertCaps2 = v13;
          MFAADeallocAuthCertCaps();
        }
      }

      if (gLogObjects && gNumLogObjects >= 7)
      {
        v14 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v14 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryAuthCP _finishAuthentication:self authCert:?];
      }
    }

    cpSetAuthError(self->super._ioConnect, LOBYTE(self->_authErrorDescription));
    authErrorDescription = self->_authErrorDescription;
    if (authErrorDescription > 0x1E)
    {
      v17 = "UninitializedAuthError";
    }

    else
    {
      v17 = kACCTransport_IOAccessoryAuthCP_AuthError_Strings[authErrorDescription];
    }

    v18 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v17, 0x8000100u);
    if (v18)
    {
      v19 = v18;
      cpSetAuthErrorDescription(self->super._ioConnect, v18);
      CFRelease(v19);
    }

    authStatus = self->_authStatus;
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v21 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v21 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "FAILED";
      authVersionMajor = self->_authVersionMajor;
      deviceID = self->_deviceID;
      if (authStatus == 2)
      {
        v23 = "PASSED";
      }

      *buf = 136315650;
      v64 = v23;
      v65 = 1024;
      v66 = authVersionMajor;
      v67 = 1024;
      v68 = deviceID;
      _os_log_impl(&dword_233656000, v21, OS_LOG_TYPE_DEFAULT, "AID Authentication final state:[%s], authVersionMajor:%02X, deviceID:%04x", buf, 0x18u);
    }

    if (cpSetAuthStatus(self->super._ioConnect, authStatus == 2))
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v26 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v26 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryAuthCP _finishAuthentication:authCert:];
      }
    }

    if (!self->super._ioNotificationObject && IOServiceAddInterestNotification(self->super._ioNotificationPort, [(ACCTransportIOAccessoryBase *)self ioService], "IOGeneralInterest", AuthCPNotifyEvent, self, &self->super._ioNotificationObject))
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v28 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v28 = MEMORY[0x277D86220];
        v29 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryAuthCP _finishAuthentication:? authCert:?];
      }
    }

    if ([(ACCTransportIOAccessoryAuthCP *)self _representsHardwareComponent])
    {
      [(ACCTransportIOAccessoryAuthCP *)self _validateAuthCPFlagsForCertificate];
      [(ACCTransportIOAccessoryAuthCP *)self _validateModuleCertificate];
      authStatus = [(ACCTransportIOAccessoryAuthCP *)self authStatus];
      v31 = authStatus == 2 && self->_fdrValidationStatus == 2;
      if (authStatus == 3 && self->_softwareErrorRetry <= 2u)
      {
        v32 = dispatch_time(0, 60000000000);
        v33 = MEMORY[0x277D85CD0];
        v34 = MEMORY[0x277D85CD0];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __64__ACCTransportIOAccessoryAuthCP__finishAuthentication_authCert___block_invoke;
        block[3] = &unk_2789E8690;
        block[4] = self;
        dispatch_after(v32, v33, block);

        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      [(ACCTransportIOAccessoryAuthCP *)self _publishAuth:authStatus == 2 fdrStatus:self->_fdrValidationStatus trusted:v31 publishToUI:v35 ioconnect:self->super._ioConnect];
      [(ACCTransportIOAccessoryAuthCP *)self _publishAuthStats:authStatus == 2 fdrStatus:self->_fdrValidationStatus];
    }

    if (authStatus == 2)
    {
      if (cert)
      {
        CFRetain(cert);
        objc_storeStrong(&self->_pAuthCertificate, cert);
        pAuthCertCache = self->_pAuthCertCache;
        if ((MFAAAddCertDataEntryToCache() & 1) == 0)
        {
          if (gLogObjects && gNumLogObjects >= 7)
          {
            v37 = *(gLogObjects + 48);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v37 = MEMORY[0x277D86220];
            v42 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_233656000, v37, OS_LOG_TYPE_INFO, "Auth cert cache add failed", buf, 2u);
          }
        }
      }
    }

    else if (cert)
    {
      v38 = MFAACreateCertificateSerialNumber();
      v39 = MFAACreateSerialNumberStringFromData();
      v40 = self->_pAuthCertCache;
      if ((MFAARemoveCertDataEntryFromCache() & 1) == 0)
      {
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v41 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v41 = MEMORY[0x277D86220];
          v43 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_233656000, v41, OS_LOG_TYPE_INFO, "Auth cert cache remove failed", buf, 2u);
        }
      }

      if (v38)
      {
        CFRelease(v38);
      }

      if (v39)
      {
        CFRelease(v39);
      }
    }

    delegate = [(ACCTransportIOAccessoryAuthCP *)self delegate];
    if (delegate)
    {
      delegate2 = [(ACCTransportIOAccessoryAuthCP *)self delegate];
      v46 = objc_opt_respondsToSelector();

      if (v46)
      {
        if ([(ACCTransportIOAccessoryAuthCP *)self authStatus]== 2)
        {
          LOWORD(v64) = 0;
          *buf = 0;
          [(ACCTransportIOAccessoryAuthCP *)self ioServiceUpstream];
          delegate = (IOAccessoryManagerGetDigitalID() == 0) & buf[2];
        }

        else
        {
          delegate = 0;
        }

        v47 = 1;
      }

      else
      {
        v47 = 0;
        delegate = 0;
      }
    }

    else
    {
      v47 = 0;
    }

    if ((self->_representsInductiveTransport || acc_userDefaults_BOOLForKey(@"AuthTTRForAllTransports")) && !self->_bIsShuttingDown && authStatus != 2)
    {
      if (gbIsInternalBuild == 1 && (platform_systemInfo_isWatch() & 1) == 0 && (acc_userDefaults_BOOLForKey(@"EnableAuthTimeoutTTR") & 1) != 0)
      {
        v48 = logObjectForModule_1(6);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          notificationsAvailable = self->_notificationsAvailable;
          *buf = 136315394;
          v64 = "[ACCTransportIOAccessoryAuthCP _finishAuthentication:authCert:]";
          v65 = 1024;
          v66 = notificationsAvailable;
          _os_log_impl(&dword_233656000, v48, OS_LOG_TYPE_DEFAULT, "AppleAuthCP:%s failure TTR: _notificationsAvailable:%d", buf, 0x12u);
        }

        if (self->_notificationsAvailable)
        {
          if (acc_userDefaults_BOOLForKey(@"SysdiagnoseInsteadOfAuthTTR"))
          {
            acc_sysdiagnose_InitiateAuthFailureSysdiagnose();
          }

          else
          {
            acc_tapToRadar_InitiateAuthFailureTTR();
          }
        }
      }

      else if (self->_representsInductiveTransport)
      {
        v50 = acc_userNotifications_chargingNotSupported();
        v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[ACCTransportIOAccessoryBase ioService](self, "ioService")];
        v52 = acc_userNotifications_generateIdentifier(@"io-service", v51);
        [v50 setGroupIdentifier:v52];

        v53 = +[ACCUserNotificationManager sharedManager];
        [v53 presentNotification:v50 completionHandler:0];
      }
    }

    [(ACCTransportIOAccessoryAuthCP *)self _logToAnalytics];
    [(ACCTransportIOAccessoryAuthCP *)self _resetAfterAuthCompletion];
    if (v47)
    {
      delegate3 = [(ACCTransportIOAccessoryAuthCP *)self delegate];
      authStatus2 = [(ACCTransportIOAccessoryAuthCP *)self authStatus];
      authType = [(ACCTransportIOAccessoryAuthCP *)self authType];
      pAuthCertificate = [(ACCTransportIOAccessoryAuthCP *)self pAuthCertificate];
      [delegate3 IOAccessoryAuthCPServiceAuthStatusChanged:authStatus2 authType:authType authCert:pAuthCertificate certType:-[ACCTransportIOAccessoryAuthCP certType](self authCTA:"certType") service:{delegate, -[ACCTransportIOAccessoryBase ioService](self, "ioService")}];
    }

    v5 = 0x2812FE000uLL;
  }

  if (cpSetAuthFullPass(self->super._ioConnect, 1u))
  {
    if (gLogObjects)
    {
      v58 = *(v5 + 3704) < 7;
    }

    else
    {
      v58 = 1;
    }

    if (v58)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v60 = MEMORY[0x277D86220];
      v59 = MEMORY[0x277D86220];
    }

    else
    {
      v60 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryAuthCP _finishAuthentication:authCert:];
    }
  }

  v61 = *MEMORY[0x277D85DE8];
}

uint64_t __64__ACCTransportIOAccessoryAuthCP__finishAuthentication_authCert___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 61) & 1) == 0)
  {
    ++*(v1 + 63);
    return [*(result + 32) startAuthenticationProcess];
  }

  return result;
}

- (BOOL)_validateCertCapsForCertificate:(__CFData *)certificate authError:(int *)error
{
  v31 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 7;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    certType = self->_certType;
    v30[0] = 67109120;
    v30[1] = certType;
    _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "validateCertCapsForCertificate: _certType %d", v30, 8u);
  }

  v10 = self->_certType;
  if (v10 == 5)
  {
    v12 = 1;
    goto LABEL_73;
  }

  if (v10 == 3)
  {
    v11 = MFAACreateDEVNCertCapsForCable();
  }

  else
  {
    v11 = MFAACreateCapsFromAuthCert();
  }

  v13 = v11;
  if (!v11)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v18 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v18 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryAuthCP _validateCertCapsForCertificate:authError:];
    }

    v12 = 0;
    v19 = 13;
    if (error)
    {
      goto LABEL_72;
    }

    goto LABEL_73;
  }

  if (self->_representsInductiveTransport)
  {
    v14 = MFAACanChargeInductive();
    v12 = v14;
    if (gLogObjects)
    {
      v15 = gNumLogObjects <= 6;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (v14)
    {
      if (v16)
      {
        v17 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v17 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30[0]) = 0;
        _os_log_impl(&dword_233656000, v17, OS_LOG_TYPE_DEFAULT, "Auth cert capability bCanChargeInductive passed!", v30, 2u);
      }

      v19 = 0;
    }

    else
    {
      if (v16)
      {
        v17 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v17 = MEMORY[0x277D86220];
        v22 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryAuthCP _validateCertCapsForCertificate:authError:];
      }

      v19 = 14;
    }
  }

  else
  {
    v19 = 0;
    v12 = 1;
  }

  if ([(ACCTransportIOAccessoryAuthCP *)self _representsHardwareComponent])
  {
    representsInternalModule = self->_representsInternalModule;
    if (representsInternalModule == 1)
    {
      if (MFAAIsAppleBatteryModule())
      {
LABEL_57:
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v24 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v24 = MEMORY[0x277D86220];
          v29 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v30[0]) = 0;
          _os_log_impl(&dword_233656000, v24, OS_LOG_TYPE_DEFAULT, "Success: validated cert caps", v30, 2u);
        }

LABEL_70:

        goto LABEL_71;
      }
    }

    else if (representsInternalModule == 3 && (MFAAIsAppleTouchControllerModule() & 1) != 0)
    {
      goto LABEL_57;
    }

    if (gLogObjects && gNumLogObjects >= 7)
    {
      v24 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30[0]) = 0;
      _os_log_impl(&dword_233656000, v24, OS_LOG_TYPE_DEFAULT, "Failure: validated cert caps, but auth flags contain module bit and certificate does not contain module bit", v30, 2u);
    }

    v12 = 0;
    v19 = 16;
    goto LABEL_70;
  }

LABEL_71:
  v26 = v13[1];
  *&self->_authCertCaps.authCertCaps0 = *v13;
  *&self->_authCertCaps.authCertCaps2 = v26;
  MFAADeallocAuthCertCaps();
  if (error)
  {
LABEL_72:
    *error = v19;
  }

LABEL_73:
  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int)_fdrCertCheck
{
  v53[1] = *MEMORY[0x277D85DE8];
  cf = 0;
  v3 = cpCopyCertificate([(ACCTransportIOAccessoryBase *)self ioService]);
  v52 = @"CopyAllowUnsealed";
  v53[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  representsInternalModule = self->_representsInternalModule;
  if (representsInternalModule == 1 || representsInternalModule == 4 || (v6 = 0, representsInternalModule == 3))
  {
    v6 = AMFDRSealingMapCopyLocalDataForClass();
  }

  if (!v3 || !v6)
  {
    if (v6)
    {
      if (v3)
      {
LABEL_25:
        v22 = 0;
        goto LABEL_78;
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v30 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v30 = MEMORY[0x277D86220];
        v32 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryAuthCP _fdrCertCheck];
      }

      if (v3)
      {
        goto LABEL_25;
      }
    }

    if (gLogObjects && gNumLogObjects >= 7)
    {
      v33 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v33 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryAuthCP _fdrCertCheck];
    }

    v22 = 0;
    if (v6)
    {
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  mEMORY[0x277D24E20] = [MEMORY[0x277D24E20] sharedManager];
  v8 = mEMORY[0x277D24E20];
  if (!mEMORY[0x277D24E20])
  {
    [ACCTransportIOAccessoryAuthCP _fdrCertCheck];
    v10 = 0;
    v9 = 0;
LABEL_70:
    v22 = 1;
    goto LABEL_77;
  }

  v9 = [mEMORY[0x277D24E20] copyParsedCertificateChainInfo:v3];
  if (!v9)
  {
    [ACCTransportIOAccessoryAuthCP _fdrCertCheck];
    v10 = 0;
    goto LABEL_70;
  }

  v10 = [v8 copyEvaluatedCertificateChainInfo:v9];
  if (!v10)
  {
    [ACCTransportIOAccessoryAuthCP _fdrCertCheck];
    goto LABEL_70;
  }

  v11 = [MEMORY[0x277D24E20] isMFi2_3CertInfo:v10];
  v12 = [MEMORY[0x277D24E20] isComponentCertInfo:v10];
  if (v11)
  {
    v41 = v9;
    v42 = v4;
    BytePtr = CFDataGetBytePtr(v3);
    v14 = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(v3);
    v16 = CFDataGetLength(v6);
    v17 = v16;
    if (!BytePtr || !v14 || Length != v16)
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v31 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v31 = MEMORY[0x277D86220];
        v35 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109888;
        *&buf[4] = v17;
        v46 = 1024;
        v47 = Length;
        v48 = 2048;
        v49 = BytePtr;
        v50 = 2048;
        v51 = v14;
        _os_log_error_impl(&dword_233656000, v31, OS_LOG_TYPE_ERROR, "AuthIC/FDR cert comparison precondition failure. FDR cert len = %d  authIC cert len = %d pAuthChipCertDataBytes=0x%p pFdrCertDataBytes=0x%p", buf, 0x22u);
      }

      v22 = 1;
      v9 = v41;
      v4 = v42;
      goto LABEL_77;
    }

    v18 = memcmp(BytePtr, v14, Length);
    if (gLogObjects)
    {
      v19 = gNumLogObjects <= 6;
    }

    else
    {
      v19 = 1;
    }

    v20 = !v19;
    if (!v18)
    {
      v9 = v41;
      v4 = v42;
      if (v20)
      {
        v36 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v36 = MEMORY[0x277D86220];
        v38 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_233656000, v36, OS_LOG_TYPE_DEFAULT, "AuthIC cert == FDR cert", buf, 2u);
      }

      v22 = 2;
      goto LABEL_77;
    }

    v9 = v41;
    v4 = v42;
    if (v20)
    {
      v21 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v21 = MEMORY[0x277D86220];
      v37 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryAuthCP _fdrCertCheck];
    }

    goto LABEL_70;
  }

  if (v12)
  {
    v23 = [v8 copyParsedCertificateChainInfo:v6];
    if (v23)
    {
      v24 = [v8 copyEvaluatedCertificateChainInfo:v23];
      if (v24)
      {
        v25 = v24;
        v43 = v23;
        [v24 objectForKey:@"LeafCertData"];
        v27 = v26 = v9;
        v28 = [v10 objectForKey:@"LeafCertData"];
        v29 = [v27 isEqualToData:v28];

        if (v29)
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }

        v9 = v26;
        goto LABEL_77;
      }

      [(ACCTransportIOAccessoryAuthCP *)buf _fdrCertCheck];
    }

    else
    {
      [(ACCTransportIOAccessoryAuthCP *)buf _fdrCertCheck];
    }

    goto LABEL_70;
  }

  v22 = 0;
LABEL_77:

LABEL_78:
  CFRelease(v3);
  if (v6)
  {
LABEL_79:
    CFRelease(v6);
  }

LABEL_80:

  v39 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)_incrementAuthStat:(const __CFString *)stat dict:(__CFDictionary *)dict
{
  valuePtr = -1431655766;
  Value = CFDictionaryGetValue(dict, stat);
  if (!Value)
  {
    [ACCTransportIOAccessoryAuthCP _incrementAuthStat:dict:];
    return;
  }

  v7 = Value;
  if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
  {
    ++valuePtr;
    v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    if (!v8)
    {
      [ACCTransportIOAccessoryAuthCP _incrementAuthStat:dict:];
      return;
    }

    v7 = v8;
    CFDictionarySetValue(dict, stat, v8);
  }

  else
  {
    [ACCTransportIOAccessoryAuthCP _incrementAuthStat:dict:];
  }

  CFRelease(v7);
}

- (void)_validateAuthCPFlagsForCertificate
{
  if (!self->_fdrValidationStatus)
  {
    self->_fdrValidationStatus = [(ACCTransportIOAccessoryAuthCP *)self _fdrCertCheck];
  }
}

- (void)_publishAuth:(BOOL)auth fdrStatus:(int)status trusted:(BOOL)trusted publishToUI:(BOOL)i ioconnect:(unsigned int)ioconnect
{
  iCopy = i;
  trustedCopy = trusted;
  v29 = *MEMORY[0x277D85DE8];
  if (cpSetFdrValidationStatus(ioconnect, status))
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 7;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v13 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    else
    {
      v13 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryAuthCP _publishAuth:fdrStatus:trusted:publishToUI:ioconnect:];
    }
  }

  if (gLogObjects)
  {
    v14 = gNumLogObjects < 7;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v16 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  else
  {
    v16 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "no";
    if (status == 2)
    {
      v17 = "yes";
    }

    v25 = 67109378;
    statusCopy = status;
    v27 = 2080;
    v28 = v17;
    _os_log_impl(&dword_233656000, v16, OS_LOG_TYPE_DEFAULT, "authFlags need FDRValidation, FDRValidationStatus = %d, pass = %s", &v25, 0x12u);
  }

  if (cpSetTrustStatus(ioconnect, trustedCopy))
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v18 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryAuthCP _publishAuth:fdrStatus:trusted:publishToUI:ioconnect:];
    }
  }

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v20 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 67109376;
    statusCopy = iCopy;
    v27 = 1024;
    LODWORD(v28) = trustedCopy;
    _os_log_impl(&dword_233656000, v20, OS_LOG_TYPE_DEFAULT, "publishToUI=%d, cpSetTrustStatusForUI=%d", &v25, 0xEu);
  }

  if (iCopy && cpSetTrustStatusForUI(ioconnect, trustedCopy))
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v22 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v22 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryAuthCP _publishAuth:fdrStatus:trusted:publishToUI:ioconnect:];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_logToAnalytics
{
  v56[6] = *MEMORY[0x277D85DE8];
  v3 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber]== 512 && self->_representsInductiveTransport;
  CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
  authTimerStartTimestamp = self->_authTimerStartTimestamp;
  v5 = MEMORY[0x277CBEB38];
  v6 = @"Failed";
  if (!self->_authErrorDescription)
  {
    v6 = @"Passed";
  }

  v56[0] = v6;
  v55[0] = @"authState";
  v55[1] = @"authTries";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_authTryCurrent];
  v56[1] = v7;
  v55[2] = @"authErrorDescription";
  authErrorDescription = self->_authErrorDescription;
  if (authErrorDescription > 0x1E)
  {
    v9 = "UninitializedAuthError";
  }

  else
  {
    v9 = kACCTransport_IOAccessoryAuthCP_AuthError_Strings[authErrorDescription];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  v56[2] = v10;
  v55[3] = @"authCertCached";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_certIsCached];
  v56[3] = v11;
  v55[4] = @"isInductive";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v56[4] = v12;
  v55[5] = @"isPeriodic";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v56[5] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:6];
  v15 = [v5 dictionaryWithDictionary:v14];

  if (systemInfo_isInternalBuild() && self->_forcedReAuthCount)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v15 setObject:v16 forKey:@"forcedReAuthCount"];
  }

  v17 = CurrentUnixTimeMS - authTimerStartTimestamp;
  if (v3)
  {
    BucketizedInductiveAuthDuration = acc_analytics_createBucketizedInductiveAuthDuration(v17 / 0x3E8);
    v19 = @"inductiveAuthDuration";
  }

  else
  {
    BucketizedInductiveAuthDuration = acc_analytics_createBucketizedWiredAuthDuration(v17);
    v19 = @"wiredAuthDuration";
  }

  [v15 setObject:BucketizedInductiveAuthDuration forKey:v19];

  if ([(ACCTransportIOAccessoryAuthCP *)self _representsHardwareComponent])
  {
    representsInternalModule = self->_representsInternalModule;
    if (representsInternalModule - 2 < 2)
    {
      v22 = *(&kACCTransportIOAccessoryAuthCPInternalModule_Strings + representsInternalModule);
    }

    else if (representsInternalModule == 4)
    {
      v22 = @"LAS";
    }

    else
    {
      if (representsInternalModule != 1)
      {
LABEL_23:
        v23 = MEMORY[0x277CCACA8];
        fdrValidationStatus = [(ACCTransportIOAccessoryAuthCP *)self fdrValidationStatus];
        if (fdrValidationStatus > 2)
        {
          v25 = "AuthSuccess";
        }

        else
        {
          v25 = kACCTransport_IOAccessoryAuthCP_FDRStatus_Strings[fdrValidationStatus];
        }

        v26 = [v23 stringWithUTF8String:v25];
        [v15 setObject:v26 forKey:@"FDRStatus"];

        processInfo = [MEMORY[0x277CCAC38] processInfo];
        [processInfo systemUptime];
        v29 = v28;

        v30 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
        [v15 setObject:v30 forKey:@"Uptime"];

        v31 = [MEMORY[0x277CCABB0] numberWithBool:_checkSpringBoardStarted()];
        [v15 setObject:v31 forKey:@"SpringBoardStarted"];

        goto LABEL_27;
      }

      v21 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v15 setObject:v21 forKey:@"isBatteryModule"];

      v22 = *(&kACCTransportIOAccessoryAuthCPInternalModule_Strings + self->_representsInternalModule);
    }

    [v15 setObject:v22 forKey:@"internalModuleType"];
    goto LABEL_23;
  }

LABEL_27:
  v32 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v33 = [v32 managerForIOAccessoryManagerService:{-[ACCTransportIOAccessoryBase upstreamManagerService](self, "upstreamManagerService")}];

  if (v33)
  {
    accessoryInfoLock = [v33 accessoryInfoLock];
    [accessoryInfoLock lock];

    deviceName = [v33 deviceName];

    if (deviceName)
    {
      deviceName2 = [v33 deviceName];
      [v15 setObject:deviceName2 forKey:@"accessoryName"];
    }

    deviceVendorName = [v33 deviceVendorName];

    if (deviceVendorName)
    {
      deviceVendorName2 = [v33 deviceVendorName];
      [v15 setObject:deviceVendorName2 forKey:@"accessoryManufacturer"];
    }

    deviceModelNumber = [v33 deviceModelNumber];

    if (deviceModelNumber)
    {
      deviceModelNumber2 = [v33 deviceModelNumber];
      [v15 setObject:deviceModelNumber2 forKey:@"accessoryModel"];
    }

    deviceHardwareRevision = [v33 deviceHardwareRevision];

    if (deviceHardwareRevision)
    {
      deviceHardwareRevision2 = [v33 deviceHardwareRevision];
      [v15 setObject:deviceHardwareRevision2 forKey:@"accessoryHardwareVersion"];
    }

    deviceFirmwareRevision = [v33 deviceFirmwareRevision];

    if (deviceFirmwareRevision)
    {
      deviceFirmwareRevision2 = [v33 deviceFirmwareRevision];
      [v15 setObject:deviceFirmwareRevision2 forKey:@"accessoryFirmwareVersionActive"];
    }

    accessoryInfoLock2 = [v33 accessoryInfoLock];
    [accessoryInfoLock2 unlock];
  }

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v46 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v46 = MEMORY[0x277D86220];
    v47 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v52 = @"com.apple.accessories.authCPEvent";
    v53 = 2112;
    v54 = v15;
    _os_log_impl(&dword_233656000, v46, OS_LOG_TYPE_DEFAULT, "CoreAnalytics event: %@\neventDict: %@", buf, 0x16u);
  }

  AnalyticsSendEvent();
  v48 = [ACCAnalytics loggerForUser:1];
  [v48 logACCAnalyticsForEventNamed:@"accessoryAuthCPEvent" withAttributes:v15];

  v49 = *MEMORY[0x277D85DE8];
}

- (ACCTransportIOAccessoryAuthCPProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

uint64_t __53__ACCTransportIOAccessoryAuthCP_doPostAuthentication__block_invoke(uint64_t a1)
{
  v2 = 0;
  *(*(a1 + 32) + 58) = 0;
  v3 = (*(a1 + 32) + 208);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = *MEMORY[0x277CBECE8];
  v5 = 3;
  while (1)
  {
    CFProperty = IORegistryEntryCreateCFProperty([*(a1 + 32) ioService], @"AuthPassed", v4, 0);
    v7 = IORegistryEntryCreateCFProperty([*(a1 + 32) ioService], @"authError", v4, 0);
    if (CFProperty && (v8 = CFGetTypeID(CFProperty), v8 == CFBooleanGetTypeID()) && CFBooleanGetValue(CFProperty))
    {
      v2 = IORegistryEntryCreateCFProperty([*(a1 + 32) ioService], @"AccessoryCertificate", v4, 0);
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    if (CFProperty)
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9;
    }

    v13 = v11 & ~v9;
    if (!v2)
    {
      v13 = 0;
    }

    if (v12 & 1) != 0 || (v13)
    {
      break;
    }

    result = usleep(0xC350u);
    if (!--v5)
    {
      return result;
    }
  }

  v15 = CFGetTypeID(CFProperty);
  result = CFBooleanGetTypeID();
  if (v15 == result)
  {
    v16 = CFGetTypeID(v7);
    result = CFNumberGetTypeID();
    if (v16 == result)
    {
      if (!v2 || (v17 = CFGetTypeID(v2), result = CFDataGetTypeID(), v17 == result))
      {
        Value = CFBooleanGetValue(CFProperty);
        CFNumberGetValue(v7, kCFNumberCharType, (*(a1 + 32) + 100));
        result = *(a1 + 32);
        if (*(result + 100) <= 0x1Eu)
        {

          return [result _finishAuthentication:Value != 0 authCert:v2];
        }
      }
    }
  }

  return result;
}

- (__CFDictionary)_copyOrCreateStatsSubDict:(__CFDictionary *)dict forSerialNumber:(__CFString *)number
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  if (![(ACCTransportIOAccessoryAuthCP *)self _representsHardwareComponent])
  {
LABEL_7:
    Mutable = 0;
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(dict, number);
  if (!Value)
  {
    valuePtr = 0;
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    if (Mutable)
    {
      v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
      if (v10)
      {
        v11 = v10;
        OUTLINED_FUNCTION_12_1(v10, @"AuthPassedCount");
        OUTLINED_FUNCTION_12_1(v12, @"AuthFailedCount");
        OUTLINED_FUNCTION_12_1(v13, @"FDRPassedCount");
        OUTLINED_FUNCTION_12_1(v14, @"FDRFailedCount");
        OUTLINED_FUNCTION_12_1(v15, @"FDRUnknownCount");
        CFRelease(v11);
        v16 = selfCopy->_representsInternalModule - 1;
        if (v16 <= 3)
        {
          CFDictionarySetValue(Mutable, @"AccessoryType", off_2789E94B0[v16]);
        }

        selfCopy = objc_alloc_init(MEMORY[0x277CCA968]);
        [(ACCTransportIOAccessoryAuthCP *)selfCopy setDateFormat:@"MM-dd-yyyy HH:mm:ss Z"];
        date = [MEMORY[0x277CBEAA8] date];
        v18 = [(ACCTransportIOAccessoryAuthCP *)selfCopy stringFromDate:date];

        if (v18)
        {
          OUTLINED_FUNCTION_12_1(v19, @"FirstAuthTimestamp");
        }

        goto LABEL_15;
      }

      v29 = logObjectForModule_1(6);
      if (OUTLINED_FUNCTION_13_0(v29))
      {
        LOWORD(v37) = 0;
        OUTLINED_FUNCTION_4_1();
        goto LABEL_21;
      }
    }

    else
    {
      v22 = logObjectForModule_1(6);
      if (OUTLINED_FUNCTION_13_0(v22))
      {
        v37 = 138412290;
        numberCopy = number;
        v23 = &dword_233656000;
        v24 = "_copyOrCreateStatsSubDict: Failed to create sub-dictionary associated with certSn = %@";
        v25 = &v37;
        p_super = &selfCopy->super.super;
        v27 = OS_LOG_TYPE_ERROR;
        v28 = 12;
LABEL_21:
        _os_log_error_impl(v23, p_super, v27, v24, v25, v28);
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutableCopy(0, 0, Value);
  if (!Mutable)
  {
    v9 = logObjectForModule_1(6);
    if (OUTLINED_FUNCTION_15_0(v9))
    {
      LOWORD(v37) = 0;
      OUTLINED_FUNCTION_4_1();
      _os_log_error_impl(v30, v31, v32, v33, v34, v35);
    }

    goto LABEL_7;
  }

LABEL_16:
  v20 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (void)_publishAuthStats:(BOOL)stats fdrStatus:(int)status
{
  statsCopy = stats;
  v75 = *MEMORY[0x277D85DE8];
  if (![(ACCTransportIOAccessoryAuthCP *)self _representsHardwareComponent])
  {
    goto LABEL_53;
  }

  v8 = CFPreferencesCopyAppValue(@"AuthStats", @"com.apple.accessoryd");
  if (v8)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v8);
    if (!MutableCopy)
    {
      v10 = logObjectForModule_1(6);
      if (OUTLINED_FUNCTION_13_0(v10))
      {
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_4_1();
        _os_log_error_impl(v57, v58, v59, v60, v61, v62);
      }

      v11 = v8;
      goto LABEL_52;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, 0, 0);
    if (!MutableCopy)
    {
      v50 = logObjectForModule_1(6);
      if (OUTLINED_FUNCTION_15_0(v50))
      {
        OUTLINED_FUNCTION_4_1();
        _os_log_error_impl(v69, v70, v71, v72, v73, v74);
      }

      goto LABEL_53;
    }
  }

  v12 = MutableCopy;
  if (self->_representsInternalModule == 2)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], @"N/A");
LABEL_11:
    v14 = [(ACCTransportIOAccessoryAuthCP *)self _copyOrCreateStatsSubDict:v12 forSerialNumber:Copy];
    if (v14)
    {
      if (statsCopy)
      {
        v15 = @"AuthPassedCount";
      }

      else
      {
        v15 = @"AuthFailedCount";
      }

      [(ACCTransportIOAccessoryAuthCP *)self _incrementAuthStat:v15 dict:v14];
      v16 = 0;
      v17 = @"CertificateSupportsVeridian";
      switch(self->_representsInternalModule)
      {
        case 1:
          v17 = @"CertificateSupportsBattery";
          if (MFAAIsAppleBatteryModule())
          {
            goto LABEL_19;
          }

          goto LABEL_17;
        case 2:
          goto LABEL_24;
        case 3:
          v17 = @"CertificateSupportsTouchController";
          if (MFAAIsAppleTouchControllerModule())
          {
LABEL_19:
            if (gLogObjects && gNumLogObjects >= 7)
            {
              v18 = *(gLogObjects + 48);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                OUTLINED_FUNCTION_2();
                OUTLINED_FUNCTION_1(&dword_233656000, MEMORY[0x277D86220], v43, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v44, v45, v46, v47, 0);
              }

              v18 = MEMORY[0x277D86220];
              v28 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_17_0(&dword_233656000, v29, v30, "Success for auth stats: Cert caps show Internal Module, and certificate contains module bit", v31, v32, v33, v34, 0);
            }

            v27 = MEMORY[0x277CBED28];
            goto LABEL_40;
          }

LABEL_17:
          v16 = 0;
LABEL_24:
          if (gLogObjects && gNumLogObjects >= 7)
          {
            v19 = *(gLogObjects + 48);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_2();
              OUTLINED_FUNCTION_1(&dword_233656000, MEMORY[0x277D86220], v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v39, v40, v41, v42, 0);
            }

            v19 = MEMORY[0x277D86220];
            v20 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_17_0(&dword_233656000, v21, v22, "Failure for auth stats: Cert caps show Internal Module, but certificate does not contain module bit", v23, v24, v25, v26, 0);
          }

          if ((v16 & 1) == 0)
          {
            v27 = MEMORY[0x277CBED10];
LABEL_40:
            CFDictionarySetValue(v14, v17, *v27);
          }

          v35 = @"FDRUnknownCount";
          if (status == 2)
          {
            v35 = @"FDRPassedCount";
          }

          if (status == 1)
          {
            v36 = @"FDRFailedCount";
          }

          else
          {
            v36 = v35;
          }

          [(ACCTransportIOAccessoryAuthCP *)self _incrementAuthStat:v36 dict:v14];
          CFDictionarySetValue(v12, Copy, v14);
          CFPreferencesSetValue(@"AuthStats", v12, @"com.apple.accessoryd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
          if (Copy)
          {
            goto LABEL_47;
          }

          goto LABEL_48;
        case 4:
          v16 = 0;
          v17 = @"CertificateSupportsLAS";
          goto LABEL_24;
        default:
          v17 = 0;
          v16 = 1;
          goto LABEL_24;
      }
    }

    v48 = logObjectForModule_1(6);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_4_1();
      _os_log_error_impl(v51, v52, v53, v54, v55, v56);
    }

    if (Copy)
    {
LABEL_47:
      CFRelease(Copy);
    }

    goto LABEL_48;
  }

  Copy = cpCopyCertificateSerialNumber([(ACCTransportIOAccessoryBase *)self ioService]);
  if (Copy)
  {
    goto LABEL_11;
  }

  v49 = logObjectForModule_1(6);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4_1();
    _os_log_error_impl(v63, v64, v65, v66, v67, v68);
  }

  v14 = 0;
LABEL_48:
  if (v8)
  {
    CFRelease(v8);
  }

  CFRelease(v12);
  if (v14)
  {
    v11 = v14;
LABEL_52:
    CFRelease(v11);
  }

LABEL_53:
  v37 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:andIOService:connectionType:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:andIOService:connectionType:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:andIOService:connectionType:.cold.9()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithDelegate:andIOService:connectionType:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:andIOService:connectionType:.cold.14()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithDelegate:andIOService:connectionType:.cold.16()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithDelegate:andIOService:connectionType:.cold.18()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithDelegate:andIOService:connectionType:.cold.20()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_authInternalModuleWithCert:withError:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_authInternalModuleWithCert:(uint64_t)a3 withError:(uint64_t)a4 .cold.8(int *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  OUTLINED_FUNCTION_1(&dword_233656000, a2, a3, "%s: unknown module type: %d", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_authWithAuthIC:(char)a1 withCert:(int *)a2 withError:(os_log_t)log .cold.4(char a1, int *a2, os_log_t log)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 136315906;
  v6 = "[ACCTransportIOAccessoryAuthCP _authWithAuthIC:withCert:withError:]";
  v7 = 1024;
  v8 = 1219;
  v9 = 1024;
  v10 = a1 & 1;
  v11 = 1024;
  v12 = v3;
  _os_log_debug_impl(&dword_233656000, log, OS_LOG_TYPE_DEBUG, "%s:%d bAuthContinue = %d, _certType = %d", &v5, 0x1Eu);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_authWithAuthIC:(unsigned __int8 *)a1 withCert:withError:.cold.5(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_authWithAuthIC:withCert:withError:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_authWithAuthIC:withCert:withError:.cold.9()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__ACCTransportIOAccessoryAuthCP_startAuthenticationProcess__block_invoke_cold_3(uint8_t *a1, id *a2, _DWORD *a3, NSObject *a4)
{
  v7 = [*a2 ioService];
  *a1 = 67109120;
  *a3 = v7;
  _os_log_error_impl(&dword_233656000, a4, OS_LOG_TYPE_ERROR, "AuthCP service:%4d: Skip auth since auth already passed", a1, 8u);
}

- (void)_handleAuthDeviceInfo:versionMajor:versionMinor:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_233656000, v0, v1, "%s Auth device info read failed ioretStatus:%02X", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleAuthDeviceInfo:versionMajor:versionMinor:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_copyCertificateAttribute:forAttributeKey:withAttributeValue:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_10_1();
  v3 = logObjectForModule_1(v2);
  if (OUTLINED_FUNCTION_14_1(v3))
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_copyCertificateAttribute:forAttributeKey:withAttributeValue:.cold.2()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_10_1();
  v3 = logObjectForModule_1(v2);
  if (OUTLINED_FUNCTION_14_1(v3))
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_copyCertificateAttribute:(void *)a1 forAttributeKey:withAttributeValue:.cold.3(void *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_10_1();
  v4 = logObjectForModule_1(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_16();
    _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleAuthCertificate:serialNumber:authError:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleAuthCertificate:serialNumber:authError:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleAuthCertificate:serialNumber:authError:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleAuthCertificate:serialNumber:authError:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_finishAuthentication:(int *)a1 authCert:(uint64_t)a2 .cold.3(int *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(a2 + 208);
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_finishAuthentication:authCert:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_finishAuthentication:(void *)a1 authCert:.cold.8(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 ioService];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_finishAuthentication:authCert:.cold.12()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_validateCertCapsForCertificate:authError:.cold.3()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_validateCertCapsForCertificate:authError:.cold.8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_fdrCertCheck
{
  v1 = logObjectForModule_1(6);
  if (OUTLINED_FUNCTION_14_1(v1))
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_incrementAuthStat:dict:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_10_1();
  v3 = logObjectForModule_1(v2);
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    OUTLINED_FUNCTION_5_0();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_incrementAuthStat:dict:.cold.2()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_10_1();
  v3 = logObjectForModule_1(v2);
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    OUTLINED_FUNCTION_5_0();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_incrementAuthStat:dict:.cold.3()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_10_1();
  v3 = logObjectForModule_1(v2);
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    OUTLINED_FUNCTION_5_0();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_publishAuth:fdrStatus:trusted:publishToUI:ioconnect:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_publishAuth:fdrStatus:trusted:publishToUI:ioconnect:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_publishAuth:fdrStatus:trusted:publishToUI:ioconnect:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end