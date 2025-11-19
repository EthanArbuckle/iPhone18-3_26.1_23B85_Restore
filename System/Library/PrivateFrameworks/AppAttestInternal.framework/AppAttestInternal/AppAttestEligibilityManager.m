@interface AppAttestEligibilityManager
- (BOOL)containsValidEntitlements;
- (BOOL)isEligibleApplicationExtensionFor:(id *)a3;
- (BOOL)isEligibleApplicationFor:(id *)a3;
- (BOOL)isEligibleClientFor:(id *)a3;
- (BOOL)isEligibleDaemonFor:(id *)a3;
- (BOOL)isEligibleForPrivService:(id *)a3;
- (BOOL)isSupportedSPIClient;
- (BOOL)meetsSecurityControlsForAuditToken:(id *)a3;
- (NSArray)allowlistedDaemons;
- (NSArray)allowlistedFirstPartyExtensions;
- (NSArray)allowlistedThirdPartyExtensions;
- (id)fetchBundleRecordFor:(id *)a3;
- (id)fetchEntitlementForAuditToken:(id *)a3 withKey:(id)a4;
@end

@implementation AppAttestEligibilityManager

- (NSArray)allowlistedDaemons
{
  allowlistedDaemons = self->_allowlistedDaemons;
  if (!allowlistedDaemons)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
    if ([v4 BOOLForKey:@"addTestDaemonToAllowlist"])
    {
      v5 = [&unk_283960E90 arrayByAddingObject:@"com.apple.dctestd"];
      v6 = [v5 arrayByAddingObject:@"com.apple.appattestctl"];
    }

    else
    {
      v6 = &unk_283960E90;
    }

    v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v6];
    v8 = self->_allowlistedDaemons;
    self->_allowlistedDaemons = v7;

    allowlistedDaemons = self->_allowlistedDaemons;
  }

  return allowlistedDaemons;
}

- (NSArray)allowlistedThirdPartyExtensions
{
  allowlistedThirdPartyExtensions = self->_allowlistedThirdPartyExtensions;
  if (!allowlistedThirdPartyExtensions)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:&unk_283960EA8];
    v5 = self->_allowlistedThirdPartyExtensions;
    self->_allowlistedThirdPartyExtensions = v4;

    allowlistedThirdPartyExtensions = self->_allowlistedThirdPartyExtensions;
  }

  return allowlistedThirdPartyExtensions;
}

- (NSArray)allowlistedFirstPartyExtensions
{
  allowlistedFirstPartyExtensions = self->_allowlistedFirstPartyExtensions;
  if (!allowlistedFirstPartyExtensions)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
    if ([v4 BOOLForKey:@"addTestFirstPartyExtensionToAllowlist"])
    {
      v5 = [&unk_283960EC0 arrayByAddingObject:@"com.apple.DCAppContainer.Extension"];
    }

    else
    {
      v5 = &unk_283960EC0;
    }

    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v5];
    v7 = self->_allowlistedFirstPartyExtensions;
    self->_allowlistedFirstPartyExtensions = v6;

    allowlistedFirstPartyExtensions = self->_allowlistedFirstPartyExtensions;
  }

  return allowlistedFirstPartyExtensions;
}

- (BOOL)isEligibleClientFor:(id *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  if ([(AppAttestEligibilityManager *)self isSupportedHardware])
  {
    if ([(AppAttestEligibilityManager *)self isSupportedSPIClient])
    {
      if ([(AppAttestEligibilityManager *)self containsValidEntitlements])
      {
        v5 = *&a3->var0[4];
        *v34 = *a3->var0;
        *&v34[16] = v5;
        if ([(AppAttestEligibilityManager *)self isEligibleApplicationFor:v34]|| (v6 = *&a3->var0[4], *v34 = *a3->var0, *&v34[16] = v6, [(AppAttestEligibilityManager *)self isEligibleDaemonFor:v34]) || (v7 = *&a3->var0[4], *v34 = *a3->var0, *&v34[16] = v7, [(AppAttestEligibilityManager *)self isEligibleApplicationExtensionFor:v34]))
        {
          LOBYTE(v8) = 1;
          goto LABEL_48;
        }

        if (AAInternalLogSystem_onceToken_4 != -1)
        {
          [AppAttestEligibilityManager isEligibleClientFor:];
        }

        v9 = AAInternalLogSystem_log_4;
        v8 = os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG);
        if (v8)
        {
          v28 = 0;
          v29 = 0;
          v30 = 47;
          do
          {
            v31 = &aLibraryCachesC_4[v28];
            if (v30 == 47)
            {
              v29 = &aLibraryCachesC_4[v28];
            }

            v30 = v31[1];
            if (!v31[1])
            {
              break;
            }

            v14 = v28++ >= 0xFFF;
          }

          while (!v14);
          if (v29)
          {
            v32 = v29 + 1;
          }

          else
          {
            v32 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
          }

          *v34 = 136315394;
          *&v34[4] = v32;
          *&v34[12] = 1024;
          *&v34[14] = 133;
          v16 = "%25s:%-5d Client is not of eligible type.";
LABEL_47:
          _os_log_impl(&dword_226177000, v9, OS_LOG_TYPE_DEBUG, v16, v34, 0x12u);
          LOBYTE(v8) = 0;
        }
      }

      else
      {
        if (AAInternalLogSystem_onceToken_4 != -1)
        {
          [AppAttestEligibilityManager isEligibleClientFor:];
        }

        v9 = AAInternalLogSystem_log_4;
        v8 = os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG);
        if (v8)
        {
          v22 = 0;
          v23 = 0;
          v24 = 47;
          do
          {
            v25 = &aLibraryCachesC_4[v22];
            if (v24 == 47)
            {
              v23 = &aLibraryCachesC_4[v22];
            }

            v24 = v25[1];
            if (!v25[1])
            {
              break;
            }

            v14 = v22++ >= 0xFFF;
          }

          while (!v14);
          if (v23)
          {
            v26 = v23 + 1;
          }

          else
          {
            v26 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
          }

          *v34 = 136315394;
          *&v34[4] = v26;
          *&v34[12] = 1024;
          *&v34[14] = 125;
          v16 = "%25s:%-5d Client does not have valid entitlements.";
          goto LABEL_47;
        }
      }
    }

    else
    {
      if (AAInternalLogSystem_onceToken_4 != -1)
      {
        [AppAttestEligibilityManager isEligibleClientFor:];
      }

      v9 = AAInternalLogSystem_log_4;
      v8 = os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        v17 = 0;
        v18 = 0;
        v19 = 47;
        do
        {
          v20 = &aLibraryCachesC_4[v17];
          if (v19 == 47)
          {
            v18 = &aLibraryCachesC_4[v17];
          }

          v19 = v20[1];
          if (!v20[1])
          {
            break;
          }

          v14 = v17++ >= 0xFFF;
        }

        while (!v14);
        if (v18)
        {
          v21 = v18 + 1;
        }

        else
        {
          v21 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
        }

        *v34 = 136315394;
        *&v34[4] = v21;
        *&v34[12] = 1024;
        *&v34[14] = 119;
        v16 = "%25s:%-5d Client is not supported SPI client.";
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v9 = AAInternalLogSystem_log_4;
    v8 = os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      v10 = 0;
      v11 = 0;
      v12 = 47;
      do
      {
        v13 = &aLibraryCachesC_4[v10];
        if (v12 == 47)
        {
          v11 = &aLibraryCachesC_4[v10];
        }

        v12 = v13[1];
        if (!v13[1])
        {
          break;
        }

        v14 = v10++ >= 0xFFF;
      }

      while (!v14);
      if (v11)
      {
        v15 = v11 + 1;
      }

      else
      {
        v15 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      *v34 = 136315394;
      *&v34[4] = v15;
      *&v34[12] = 1024;
      *&v34[14] = 113;
      v16 = "%25s:%-5d AppAttest not supported on this device.";
      goto LABEL_47;
    }
  }

LABEL_48:
  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isEligibleApplicationFor:(id *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *&a3->var0[4];
  *v22 = *a3->var0;
  *&v22[16] = v3;
  v4 = [(AppAttestEligibilityManager *)self fetchBundleRecordFor:v22];
  if (!v4)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v14 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v15 = 0;
      v16 = 0;
      v17 = 47;
      do
      {
        v18 = &aLibraryCachesC_4[v15];
        if (v17 == 47)
        {
          v16 = &aLibraryCachesC_4[v15];
        }

        v17 = v18[1];
        if (!v18[1])
        {
          break;
        }

        v10 = v15++ >= 0xFFF;
      }

      while (!v10);
      if (v16)
      {
        v19 = v16 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      *v22 = 136315394;
      *&v22[4] = v19;
      *&v22[12] = 1024;
      *&v22[14] = 162;
      _os_log_impl(&dword_226177000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch bundle record.", v22, 0x12u);
    }

    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_30:
    v13 = 0;
    goto LABEL_31;
  }

  if (AAInternalLogSystem_onceToken_4 != -1)
  {
    [AppAttestEligibilityManager isEligibleClientFor:];
  }

  v5 = AAInternalLogSystem_log_4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 0;
    v7 = 0;
    v8 = 47;
    do
    {
      v9 = &aLibraryCachesC_4[v6];
      if (v8 == 47)
      {
        v7 = &aLibraryCachesC_4[v6];
      }

      v8 = v9[1];
      if (!v9[1])
      {
        break;
      }

      v10 = v6++ >= 0xFFF;
    }

    while (!v10);
    if (v7)
    {
      v11 = v7 + 1;
    }

    else
    {
      v11 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    v12 = [v4 bundleIdentifier];
    *v22 = 136315650;
    *&v22[4] = v11;
    *&v22[12] = 1024;
    *&v22[14] = 167;
    *&v22[18] = 2112;
    *&v22[20] = v12;
    _os_log_impl(&dword_226177000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client is eligible. { 'type':App, 'identifier':%@ }", v22, 0x1Cu);
  }

  v13 = 1;
LABEL_31:

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)isEligibleApplicationExtensionFor:(id *)a3
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = *&a3->var0[4];
  *buf.val = *a3->var0;
  *&buf.val[4] = v5;
  v6 = [(AppAttestEligibilityManager *)self fetchBundleRecordFor:&buf];
  if (!v6)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v20 = AAInternalLogSystem_log_4;
    if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_46;
    }

    v21 = 0;
    v22 = 0;
    v23 = 47;
    do
    {
      v24 = &aLibraryCachesC_4[v21];
      if (v23 == 47)
      {
        v22 = &aLibraryCachesC_4[v21];
      }

      v23 = v24[1];
      if (!v24[1])
      {
        break;
      }

      v16 = v21++ >= 0xFFF;
    }

    while (!v16);
    if (v22)
    {
      v25 = v22 + 1;
    }

    else
    {
      v25 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    buf.val[0] = 136315394;
    *&buf.val[1] = v25;
    LOWORD(buf.val[3]) = 1024;
    *(&buf.val[3] + 2) = 177;
    v26 = "%25s:%-5d Failed to fetch bundle record.";
    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v88 = [v7 extensionPointRecord];
    v8 = [(AppAttestEligibilityManager *)self allowlistedThirdPartyExtensions];
    v9 = [v88 name];
    if ([v8 containsObject:v9])
    {
      v10 = +[FeatureFlagsManager isExtensionAttestationEnabled];

      if (v10)
      {
        if (AAInternalLogSystem_onceToken_4 != -1)
        {
          [AppAttestEligibilityManager isEligibleClientFor:];
        }

        v11 = AAInternalLogSystem_log_4;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = 0;
          v13 = 0;
          v14 = 47;
          do
          {
            v15 = &aLibraryCachesC_4[v12];
            if (v14 == 47)
            {
              v13 = &aLibraryCachesC_4[v12];
            }

            v14 = v15[1];
            if (!v15[1])
            {
              break;
            }

            v16 = v12++ >= 0xFFF;
          }

          while (!v16);
          if (v13)
          {
            v17 = v13 + 1;
          }

          else
          {
            v17 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
          }

          v18 = [v7 bundleIdentifier];
          buf.val[0] = 136315650;
          *&buf.val[1] = v17;
          LOWORD(buf.val[3]) = 1024;
          *(&buf.val[3] + 2) = 202;
          HIWORD(buf.val[4]) = 2112;
          *&buf.val[5] = v18;
          _os_log_impl(&dword_226177000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client is eligible. { 'type':AppExtension, 'identifier':%@ }", &buf, 0x1Cu);
        }

        v19 = 1;
        goto LABEL_65;
      }
    }

    else
    {
    }

    v32 = *MEMORY[0x277CBECE8];
    v33 = *&a3->var0[4];
    *buf.val = *a3->var0;
    *&buf.val[4] = v33;
    v34 = SecTaskCreateWithAuditToken(v32, &buf);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__AppAttestEligibilityManager_isEligibleApplicationExtensionFor___block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v34;
    v11 = _Block_copy(aBlock);
    v90[4] = 0;
    error = 0;
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __65__AppAttestEligibilityManager_isEligibleApplicationExtensionFor___block_invoke_2;
    v90[3] = &__block_descriptor_40_e5_v8__0l;
    v35 = _Block_copy(v90);
    v36 = SecTaskCopyValueForEntitlement(v34, @"com.apple.devicecheck.extension-client", &error);
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __65__AppAttestEligibilityManager_isEligibleApplicationExtensionFor___block_invoke_3;
    v89[3] = &__block_descriptor_40_e5_v8__0l;
    v89[4] = v36;
    v37 = _Block_copy(v89);
    if (error)
    {
      if (AAInternalLogSystem_onceToken_4 != -1)
      {
        [AppAttestEligibilityManager isEligibleClientFor:];
      }

      v38 = AAInternalLogSystem_log_4;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v39 = 0;
        v40 = 0;
        v41 = 47;
        do
        {
          v42 = &aLibraryCachesC_4[v39];
          if (v41 == 47)
          {
            v40 = &aLibraryCachesC_4[v39];
          }

          v41 = v42[1];
          if (!v42[1])
          {
            break;
          }

          v16 = v39++ >= 0xFFF;
        }

        while (!v16);
        v43 = [(__CFError *)error localizedDescription];
        v44 = v43;
        if (v40)
        {
          v45 = v40 + 1;
        }

        else
        {
          v45 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
        }

        buf.val[0] = 136315650;
        *&buf.val[1] = v45;
        LOWORD(buf.val[3]) = 1024;
        *(&buf.val[3] + 2) = 219;
        HIWORD(buf.val[4]) = 2112;
        *&buf.val[5] = v43;
        _os_log_impl(&dword_226177000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch extension entitlement. { error=%@ }", &buf, 0x1Cu);
      }

      goto LABEL_63;
    }

    if ([v36 intValue] == 1)
    {
      v48 = [v7 teamIdentifier];
      v87 = [v48 isEqualToString:@"0000000000"];

      v49 = [v7 bundleIdentifier];
      v86 = [v49 hasPrefix:@"com.apple."];

      v50 = [(AppAttestEligibilityManager *)self allowlistedFirstPartyExtensions];
      v51 = [v7 bundleIdentifier];
      v85 = [v50 containsObject:v51];

      v52 = *&a3->var0[4];
      *buf.val = *a3->var0;
      *&buf.val[4] = v52;
      v53 = [(AppAttestEligibilityManager *)self meetsSecurityControlsForAuditToken:&buf];
      if (v53)
      {
        if (AAInternalLogSystem_onceToken_4 != -1)
        {
          [AppAttestEligibilityManager isEligibleClientFor:];
        }

        v54 = AAInternalLogSystem_log_4;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = 0;
          v56 = 0;
          v57 = 47;
          do
          {
            v58 = &aLibraryCachesC_4[v55];
            if (v57 == 47)
            {
              v56 = &aLibraryCachesC_4[v55];
            }

            v57 = v58[1];
            if (!v58[1])
            {
              break;
            }

            v16 = v55++ >= 0xFFF;
          }

          while (!v16);
          v59 = [v7 bundleIdentifier];
          if (v56)
          {
            v60 = v56 + 1;
          }

          else
          {
            v60 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
          }

          buf.val[0] = 136315650;
          *&buf.val[1] = v60;
          LOWORD(buf.val[3]) = 1024;
          *(&buf.val[3] + 2) = 251;
          HIWORD(buf.val[4]) = 2112;
          *&buf.val[5] = v59;
          v61 = v59;
          _os_log_impl(&dword_226177000, v54, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client meets security standards. { type=AppExtension, identifier=%@ }", &buf, 0x1Cu);
        }

        if ((v53 & v87 & v86 & v85) == 1)
        {
          if (AAInternalLogSystem_onceToken_4 != -1)
          {
            [AppAttestEligibilityManager isEligibleClientFor:];
          }

          v62 = AAInternalLogSystem_log_4;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            v63 = 0;
            v64 = 0;
            v65 = 47;
            do
            {
              v66 = &aLibraryCachesC_4[v63];
              if (v65 == 47)
              {
                v64 = &aLibraryCachesC_4[v63];
              }

              v65 = v66[1];
              if (!v66[1])
              {
                break;
              }

              v16 = v63++ >= 0xFFF;
            }

            while (!v16);
            v67 = [v7 bundleIdentifier];
            v68 = v67;
            if (v64)
            {
              v69 = v64 + 1;
            }

            else
            {
              v69 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
            }

            buf.val[0] = 136315650;
            *&buf.val[1] = v69;
            LOWORD(buf.val[3]) = 1024;
            *(&buf.val[3] + 2) = 254;
            HIWORD(buf.val[4]) = 2112;
            *&buf.val[5] = v67;
            _os_log_impl(&dword_226177000, v62, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client is eligible. { 'type':AppExtension, 'identifier':%@ }", &buf, 0x1Cu);
          }

          v19 = 1;
          goto LABEL_64;
        }

LABEL_63:
        v19 = 0;
LABEL_64:
        v37[2](v37);

        v35[2](v35);
        (v11[2].isa)(v11);
LABEL_65:

        goto LABEL_66;
      }

      if (AAInternalLogSystem_onceToken_4 != -1)
      {
        [AppAttestEligibilityManager isEligibleClientFor:];
      }

      v79 = AAInternalLogSystem_log_4;
      if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_63;
      }

      v80 = 0;
      v81 = 0;
      v82 = 47;
      do
      {
        v83 = &aLibraryCachesC_4[v80];
        if (v82 == 47)
        {
          v81 = &aLibraryCachesC_4[v80];
        }

        v82 = v83[1];
        if (!v83[1])
        {
          break;
        }

        v16 = v80++ >= 0xFFF;
      }

      while (!v16);
      if (v81)
      {
        v84 = v81 + 1;
      }

      else
      {
        v84 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      buf.val[0] = 136315394;
      *&buf.val[1] = v84;
      LOWORD(buf.val[3]) = 1024;
      *(&buf.val[3] + 2) = 250;
      v76 = "%25s:%-5d Client is ineligible and does not meet security standards.";
      v77 = v79;
      v78 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (AAInternalLogSystem_onceToken_4 != -1)
      {
        [AppAttestEligibilityManager isEligibleClientFor:];
      }

      v70 = AAInternalLogSystem_log_4;
      if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_63;
      }

      v71 = 0;
      v72 = 0;
      v73 = 47;
      do
      {
        v74 = &aLibraryCachesC_4[v71];
        if (v73 == 47)
        {
          v72 = &aLibraryCachesC_4[v71];
        }

        v73 = v74[1];
        if (!v74[1])
        {
          break;
        }

        v16 = v71++ >= 0xFFF;
      }

      while (!v16);
      if (v72)
      {
        v75 = v72 + 1;
      }

      else
      {
        v75 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      buf.val[0] = 136315394;
      *&buf.val[1] = v75;
      LOWORD(buf.val[3]) = 1024;
      *(&buf.val[3] + 2) = 224;
      v76 = "%25s:%-5d Extension client entitlement not set.";
      v77 = v70;
      v78 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(&dword_226177000, v77, v78, v76, &buf, 0x12u);
    goto LABEL_63;
  }

  if (AAInternalLogSystem_onceToken_4 != -1)
  {
    [AppAttestEligibilityManager isEligibleClientFor:];
  }

  v20 = AAInternalLogSystem_log_4;
  if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
  {
    v27 = 0;
    v28 = 0;
    v29 = 47;
    do
    {
      v30 = &aLibraryCachesC_4[v27];
      if (v29 == 47)
      {
        v28 = &aLibraryCachesC_4[v27];
      }

      v29 = v30[1];
      if (!v30[1])
      {
        break;
      }

      v16 = v27++ >= 0xFFF;
    }

    while (!v16);
    if (v28)
    {
      v31 = v28 + 1;
    }

    else
    {
      v31 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    buf.val[0] = 136315394;
    *&buf.val[1] = v31;
    LOWORD(buf.val[3]) = 1024;
    *(&buf.val[3] + 2) = 182;
    v26 = "%25s:%-5d Bundle record is not of application extension type.";
LABEL_45:
    _os_log_impl(&dword_226177000, v20, OS_LOG_TYPE_DEBUG, v26, &buf, 0x12u);
  }

LABEL_46:
  v19 = 0;
LABEL_66:

  v46 = *MEMORY[0x277D85DE8];
  return v19;
}

void __65__AppAttestEligibilityManager_isEligibleApplicationExtensionFor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __65__AppAttestEligibilityManager_isEligibleApplicationExtensionFor___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __65__AppAttestEligibilityManager_isEligibleApplicationExtensionFor___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (BOOL)isEligibleDaemonFor:(id *)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = *&a3->var0[4];
  *v56 = *a3->var0;
  *&v56[16] = v5;
  v6 = [(AppAttestEligibilityManager *)self fetchEntitlementForAuditToken:v56 withKey:@"com.apple.devicecheck.daemon-client"];
  v7 = v6;
  if (v6 && [v6 intValue] == 1)
  {
    v8 = *&a3->var0[4];
    *v56 = *a3->var0;
    *&v56[16] = v8;
    v9 = [(AppAttestEligibilityManager *)self fetchEntitlementForAuditToken:v56 withKey:@"application-identifier"];
    v10 = v9;
    if (v9)
    {
      if ([v9 hasPrefix:@"com.apple."])
      {
        v11 = [(AppAttestEligibilityManager *)self allowlistedDaemons];
        v12 = [v11 containsObject:v10];

        if (v12)
        {
          if (AAInternalLogSystem_onceToken_4 != -1)
          {
            [AppAttestEligibilityManager isEligibleClientFor:];
          }

          v13 = AAInternalLogSystem_log_4;
          if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
          {
            v14 = 0;
            v15 = 0;
            v16 = 47;
            do
            {
              v17 = &aLibraryCachesC_4[v14];
              if (v16 == 47)
              {
                v15 = &aLibraryCachesC_4[v14];
              }

              v16 = v17[1];
              if (!v17[1])
              {
                break;
              }

              v18 = v14++ >= 0xFFF;
            }

            while (!v18);
            if (v15)
            {
              v19 = v15 + 1;
            }

            else
            {
              v19 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
            }

            *v56 = 136315650;
            *&v56[4] = v19;
            *&v56[12] = 1024;
            *&v56[14] = 281;
            *&v56[18] = 2112;
            *&v56[20] = v10;
            _os_log_impl(&dword_226177000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client is eligible. { 'type':Daemon, 'identifier':%@ }", v56, 0x1Cu);
          }
        }

        v20 = *&a3->var0[4];
        *v56 = *a3->var0;
        *&v56[16] = v20;
        v21 = [(AppAttestEligibilityManager *)self meetsSecurityControlsForAuditToken:v56];
        if (v21)
        {
          if (AAInternalLogSystem_onceToken_4 != -1)
          {
            [AppAttestEligibilityManager isEligibleClientFor:];
          }

          v22 = AAInternalLogSystem_log_4;
          if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_89;
          }

          v23 = 0;
          v24 = 0;
          v25 = 47;
          do
          {
            v26 = &aLibraryCachesC_4[v23];
            if (v25 == 47)
            {
              v24 = &aLibraryCachesC_4[v23];
            }

            v25 = v26[1];
            if (!v26[1])
            {
              break;
            }

            v18 = v23++ >= 0xFFF;
          }

          while (!v18);
          if (v24)
          {
            v27 = v24 + 1;
          }

          else
          {
            v27 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
          }

          *v56 = 136315394;
          *&v56[4] = v27;
          *&v56[12] = 1024;
          *&v56[14] = 285;
          v28 = "%25s:%-5d Client meets security standards. { type=Daemon }";
        }

        else
        {
          if (AAInternalLogSystem_onceToken_4 != -1)
          {
            [AppAttestEligibilityManager isEligibleClientFor:];
          }

          v22 = AAInternalLogSystem_log_4;
          if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_89;
          }

          v49 = 0;
          v50 = 0;
          v51 = 47;
          do
          {
            v52 = &aLibraryCachesC_4[v49];
            if (v51 == 47)
            {
              v50 = &aLibraryCachesC_4[v49];
            }

            v51 = v52[1];
            if (!v52[1])
            {
              break;
            }

            v18 = v49++ >= 0xFFF;
          }

          while (!v18);
          if (v50)
          {
            v53 = v50 + 1;
          }

          else
          {
            v53 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
          }

          *v56 = 136315394;
          *&v56[4] = v53;
          *&v56[12] = 1024;
          *&v56[14] = 284;
          v28 = "%25s:%-5d Client is ineligible and does not meet security standards. { type=Daemon }";
        }

        _os_log_impl(&dword_226177000, v22, OS_LOG_TYPE_DEFAULT, v28, v56, 0x12u);
LABEL_89:
        v35 = v12 & v21;
        goto LABEL_90;
      }

      if (AAInternalLogSystem_onceToken_4 != -1)
      {
        [AppAttestEligibilityManager isEligibleClientFor:];
      }

      v42 = AAInternalLogSystem_log_4;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v43 = 0;
        v44 = 0;
        v45 = 47;
        do
        {
          v46 = &aLibraryCachesC_4[v43];
          if (v45 == 47)
          {
            v44 = &aLibraryCachesC_4[v43];
          }

          v45 = v46[1];
          if (!v46[1])
          {
            break;
          }

          v18 = v43++ >= 0xFFF;
        }

        while (!v18);
        if (v44)
        {
          v47 = v44 + 1;
        }

        else
        {
          v47 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
        }

        v48 = [v10 UTF8String];
        *v56 = 136315650;
        *&v56[4] = v47;
        *&v56[12] = 1024;
        *&v56[14] = 276;
        *&v56[18] = 2080;
        *&v56[20] = v48;
        _os_log_impl(&dword_226177000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d Invalid daemon application identifier. { appID=%s }", v56, 0x1Cu);
      }
    }

    else
    {
      if (AAInternalLogSystem_onceToken_4 != -1)
      {
        [AppAttestEligibilityManager isEligibleClientFor:];
      }

      v36 = AAInternalLogSystem_log_4;
      if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
      {
        v37 = 0;
        v38 = 0;
        v39 = 47;
        do
        {
          v40 = &aLibraryCachesC_4[v37];
          if (v39 == 47)
          {
            v38 = &aLibraryCachesC_4[v37];
          }

          v39 = v40[1];
          if (!v40[1])
          {
            break;
          }

          v18 = v37++ >= 0xFFF;
        }

        while (!v18);
        if (v38)
        {
          v41 = v38 + 1;
        }

        else
        {
          v41 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
        }

        *v56 = 136315394;
        *&v56[4] = v41;
        *&v56[12] = 1024;
        *&v56[14] = 271;
        _os_log_impl(&dword_226177000, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Daemon client is missing application identifier entitlement.", v56, 0x12u);
      }
    }

    v35 = 0;
LABEL_90:

    goto LABEL_91;
  }

  if (AAInternalLogSystem_onceToken_4 != -1)
  {
    [AppAttestEligibilityManager isEligibleClientFor:];
  }

  v29 = AAInternalLogSystem_log_4;
  if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
  {
    v30 = 0;
    v31 = 0;
    v32 = 47;
    do
    {
      v33 = &aLibraryCachesC_4[v30];
      if (v32 == 47)
      {
        v31 = &aLibraryCachesC_4[v30];
      }

      v32 = v33[1];
      if (!v33[1])
      {
        break;
      }

      v18 = v30++ >= 0xFFF;
    }

    while (!v18);
    if (v31)
    {
      v34 = v31 + 1;
    }

    else
    {
      v34 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    *v56 = 136315394;
    *&v56[4] = v34;
    *&v56[12] = 1024;
    *&v56[14] = 264;
    _os_log_impl(&dword_226177000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Daemon client entitlement not set.", v56, 0x12u);
  }

  v35 = 0;
LABEL_91:

  v54 = *MEMORY[0x277D85DE8];
  return v35;
}

- (BOOL)isEligibleForPrivService:(id *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *&a3->var0[4];
  *v35 = *a3->var0;
  *&v35[16] = v5;
  v6 = [(AppAttestEligibilityManager *)self fetchEntitlementForAuditToken:v35 withKey:@"com.apple.devicecheck.private.api"];
  v7 = v6;
  if (!v6 || [v6 intValue] != 1)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v18 = AAInternalLogSystem_log_4;
    if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_31;
    }

    v19 = 0;
    v20 = 0;
    v21 = 47;
    do
    {
      v22 = &aLibraryCachesC_4[v19];
      if (v21 == 47)
      {
        v20 = &aLibraryCachesC_4[v19];
      }

      v21 = v22[1];
      if (!v22[1])
      {
        break;
      }

      v16 = v19++ >= 0xFFF;
    }

    while (!v16);
    if (v20)
    {
      v23 = v20 + 1;
    }

    else
    {
      v23 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    *v35 = 136315394;
    *&v35[4] = v23;
    *&v35[12] = 1024;
    *&v35[14] = 296;
    v24 = "%25s:%-5d Priv service client entitlement not set.";
    v25 = v18;
    v26 = OS_LOG_TYPE_DEBUG;
    goto LABEL_30;
  }

  v8 = *&a3->var0[4];
  *v35 = *a3->var0;
  *&v35[16] = v8;
  v9 = [(AppAttestEligibilityManager *)self meetsSecurityControlsForAuditToken:v35];
  if (!v9)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v29 = AAInternalLogSystem_log_4;
    if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v30 = 0;
    v31 = 0;
    v32 = 47;
    do
    {
      v33 = &aLibraryCachesC_4[v30];
      if (v32 == 47)
      {
        v31 = &aLibraryCachesC_4[v30];
      }

      v32 = v33[1];
      if (!v33[1])
      {
        break;
      }

      v16 = v30++ >= 0xFFF;
    }

    while (!v16);
    if (v31)
    {
      v34 = v31 + 1;
    }

    else
    {
      v34 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    *v35 = 136315394;
    *&v35[4] = v34;
    *&v35[12] = 1024;
    *&v35[14] = 301;
    v24 = "%25s:%-5d Client is ineligible and does not meet security standards. { type=Priv }";
    v25 = v29;
    v26 = OS_LOG_TYPE_DEFAULT;
LABEL_30:
    _os_log_impl(&dword_226177000, v25, v26, v24, v35, 0x12u);
LABEL_31:
    v10 = 0;
    goto LABEL_32;
  }

  v10 = v9;
  if (AAInternalLogSystem_onceToken_4 != -1)
  {
    [AppAttestEligibilityManager isEligibleClientFor:];
  }

  v11 = AAInternalLogSystem_log_4;
  if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 0;
    v13 = 0;
    v14 = 47;
    do
    {
      v15 = &aLibraryCachesC_4[v12];
      if (v14 == 47)
      {
        v13 = &aLibraryCachesC_4[v12];
      }

      v14 = v15[1];
      if (!v15[1])
      {
        break;
      }

      v16 = v12++ >= 0xFFF;
    }

    while (!v16);
    if (v13)
    {
      v17 = v13 + 1;
    }

    else
    {
      v17 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    *v35 = 136315394;
    *&v35[4] = v17;
    *&v35[12] = 1024;
    *&v35[14] = 302;
    _os_log_impl(&dword_226177000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Client meets security standards.", v35, 0x12u);
  }

LABEL_32:

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isSupportedSPIClient
{
  v2 = copy_current_process_name();
  v3 = [&unk_283960ED8 containsObject:v2];

  return v3;
}

- (BOOL)containsValidEntitlements
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__AppAttestEligibilityManager_containsValidEntitlements__block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v2;
  v3 = _Block_copy(aBlock);
  v40[4] = 0;
  error = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __56__AppAttestEligibilityManager_containsValidEntitlements__block_invoke_2;
  v40[3] = &__block_descriptor_40_e5_v8__0l;
  v4 = _Block_copy(v40);
  v5 = SecTaskCopyValueForEntitlement(v2, @"com.apple.appattest.spi", &error);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __56__AppAttestEligibilityManager_containsValidEntitlements__block_invoke_3;
  v39[3] = &__block_descriptor_40_e5_v8__0l;
  v39[4] = v5;
  v6 = _Block_copy(v39);
  if (error)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v7 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 0;
      v9 = 0;
      v10 = 47;
      do
      {
        v11 = &aLibraryCachesC_4[v8];
        if (v10 == 47)
        {
          v9 = &aLibraryCachesC_4[v8];
        }

        v10 = v11[1];
        if (!v11[1])
        {
          break;
        }

        v12 = v8++ >= 0xFFF;
      }

      while (!v12);
      v13 = CFErrorCopyDescription(error);
      if (v9)
      {
        v14 = v9 + 1;
      }

      else
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      *buf = 136315650;
      v44 = v14;
      v45 = 1024;
      v46 = 334;
      v47 = 2112;
      v48 = v13;
      v15 = v13;
      _os_log_impl(&dword_226177000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch AppAttest SPI entitlement value. { error=%@ }", buf, 0x1Cu);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!v5 || v5 != *MEMORY[0x277CBED28])
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v27 = AAInternalLogSystem_log_4;
    if (!os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    v28 = 0;
    v29 = 0;
    v30 = 47;
    do
    {
      v31 = &aLibraryCachesC_4[v28];
      if (v30 == 47)
      {
        v29 = &aLibraryCachesC_4[v28];
      }

      v30 = v31[1];
      if (!v31[1])
      {
        break;
      }

      v12 = v28++ >= 0xFFF;
    }

    while (!v12);
    if (v29)
    {
      v32 = v29 + 1;
    }

    else
    {
      v32 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    *buf = 136315394;
    v44 = v32;
    v45 = 1024;
    v46 = 339;
    v33 = "%25s:%-5d AppAttest SPI entitlement value is invalid.";
    goto LABEL_48;
  }

  v19 = SecTaskCopyValueForEntitlement(v2, @"com.apple.security.attestation.access", &error);
  if (error)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v7 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v20 = 0;
      v21 = 0;
      v22 = 47;
      do
      {
        v23 = &aLibraryCachesC_4[v20];
        if (v22 == 47)
        {
          v21 = &aLibraryCachesC_4[v20];
        }

        v22 = v23[1];
        if (!v23[1])
        {
          break;
        }

        v12 = v20++ >= 0xFFF;
      }

      while (!v12);
      v24 = CFErrorCopyDescription(error);
      if (v21)
      {
        v25 = v21 + 1;
      }

      else
      {
        v25 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      *buf = 136315650;
      v44 = v25;
      v45 = 1024;
      v46 = 345;
      v47 = 2112;
      v48 = v24;
      v26 = v24;
      _os_log_impl(&dword_226177000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch AppAttest attestation SPI entitlement value. { error=%@ }", buf, 0x1Cu);
    }

    goto LABEL_15;
  }

  if (v19 && v19 == v5)
  {
    v16 = 1;
    goto LABEL_17;
  }

  if (AAInternalLogSystem_onceToken_4 != -1)
  {
    [AppAttestEligibilityManager isEligibleClientFor:];
  }

  v27 = AAInternalLogSystem_log_4;
  if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
  {
    v34 = 0;
    v35 = 0;
    v36 = 47;
    do
    {
      v37 = &aLibraryCachesC_4[v34];
      if (v36 == 47)
      {
        v35 = &aLibraryCachesC_4[v34];
      }

      v36 = v37[1];
      if (!v37[1])
      {
        break;
      }

      v12 = v34++ >= 0xFFF;
    }

    while (!v12);
    if (v35)
    {
      v38 = v35 + 1;
    }

    else
    {
      v38 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
    }

    *buf = 136315394;
    v44 = v38;
    v45 = 1024;
    v46 = 350;
    v33 = "%25s:%-5d AppAttest attestation SPI entitlement value is invalid.";
LABEL_48:
    _os_log_impl(&dword_226177000, v27, OS_LOG_TYPE_DEBUG, v33, buf, 0x12u);
  }

LABEL_16:
  v16 = 0;
LABEL_17:
  v6[2](v6);

  v4[2](v4);
  v3[2](v3);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void __56__AppAttestEligibilityManager_containsValidEntitlements__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __56__AppAttestEligibilityManager_containsValidEntitlements__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __56__AppAttestEligibilityManager_containsValidEntitlements__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (id)fetchEntitlementForAuditToken:(id *)a3 withKey:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *MEMORY[0x277CBECE8];
  v7 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(v6, &token);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__AppAttestEligibilityManager_fetchEntitlementForAuditToken_withKey___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v8;
  v9 = _Block_copy(aBlock);
  v35[4] = 0;
  error = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __69__AppAttestEligibilityManager_fetchEntitlementForAuditToken_withKey___block_invoke_2;
  v35[3] = &__block_descriptor_40_e5_v8__0l;
  v10 = _Block_copy(v35);
  v11 = SecTaskCopyValueForEntitlement(v8, v5, &error);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __69__AppAttestEligibilityManager_fetchEntitlementForAuditToken_withKey___block_invoke_3;
  v34[3] = &__block_descriptor_40_e5_v8__0l;
  v34[4] = v11;
  v12 = _Block_copy(v34);
  if (error)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v13 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = 0;
      v15 = 0;
      v16 = 47;
      do
      {
        v17 = &aLibraryCachesC_4[v14];
        if (v16 == 47)
        {
          v15 = &aLibraryCachesC_4[v14];
        }

        v16 = v17[1];
        if (!v17[1])
        {
          break;
        }

        v18 = v14++ >= 0xFFF;
      }

      while (!v18);
      v19 = [(__CFError *)error localizedDescription];
      v20 = v19;
      if (v15)
      {
        v21 = v15 + 1;
      }

      else
      {
        v21 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315650;
      *&token.val[1] = v21;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 369;
      HIWORD(token.val[4]) = 2112;
      *&token.val[5] = v19;
      _os_log_impl(&dword_226177000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch entitlement. { error=%@ }", &token, 0x1Cu);
    }

    goto LABEL_16;
  }

  if (!v11)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v28 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v29 = 0;
      v30 = 0;
      v31 = 47;
      do
      {
        v32 = &aLibraryCachesC_4[v29];
        if (v31 == 47)
        {
          v30 = &aLibraryCachesC_4[v29];
        }

        v31 = v32[1];
        if (!v32[1])
        {
          break;
        }

        v18 = v29++ >= 0xFFF;
      }

      while (!v18);
      if (v30)
      {
        v33 = v30 + 1;
      }

      else
      {
        v33 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v33;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 374;
      _os_log_impl(&dword_226177000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch entitlement.", &token, 0x12u);
    }

    goto LABEL_16;
  }

  v23 = CFGetTypeID(v11);
  if (v23 != CFNumberGetTypeID())
  {
    v24 = CFGetTypeID(v11);
    if (v24 != CFStringGetTypeID())
    {
      v25 = CFGetTypeID(v11);
      if (v25 != CFBooleanGetTypeID())
      {
LABEL_16:
        v22 = 0;
        goto LABEL_22;
      }
    }
  }

  v22 = v11;
LABEL_22:
  v12[2](v12);

  v10[2](v10);
  v9[2](v9);

  v26 = *MEMORY[0x277D85DE8];

  return v22;
}

void __69__AppAttestEligibilityManager_fetchEntitlementForAuditToken_withKey___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __69__AppAttestEligibilityManager_fetchEntitlementForAuditToken_withKey___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __69__AppAttestEligibilityManager_fetchEntitlementForAuditToken_withKey___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (BOOL)meetsSecurityControlsForAuditToken:(id *)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBECE8];
  v6 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v6;
  v7 = SecTaskCreateWithAuditToken(v5, &token);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AppAttestEligibilityManager_meetsSecurityControlsForAuditToken___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v7;
  v8 = _Block_copy(aBlock);
  if (SecTaskEntitlementsValidated() == 1)
  {
    v9 = 0;
    goto LABEL_114;
  }

  CodeSignStatus = SecTaskGetCodeSignStatus(v7);
  if ((CodeSignStatus & 1) == 0)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v11 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v12 = 0;
      v13 = 0;
      v14 = 47;
      do
      {
        v15 = &aLibraryCachesC_4[v12];
        if (v14 == 47)
        {
          v13 = &aLibraryCachesC_4[v12];
        }

        v14 = v15[1];
        if (!v15[1])
        {
          break;
        }

        v16 = v12++ >= 0xFFF;
      }

      while (!v16);
      if (v13)
      {
        v17 = v13 + 1;
      }

      else
      {
        v17 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v17;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 405;
      _os_log_impl(&dword_226177000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d CS_VALID code sign flag not set.", &token, 0x12u);
    }
  }

  if ((CodeSignStatus & 0x4000000) == 0)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v18 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v19 = 0;
      v20 = 0;
      v21 = 47;
      do
      {
        v22 = &aLibraryCachesC_4[v19];
        if (v21 == 47)
        {
          v20 = &aLibraryCachesC_4[v19];
        }

        v21 = v22[1];
        if (!v22[1])
        {
          break;
        }

        v16 = v19++ >= 0xFFF;
      }

      while (!v16);
      if (v20)
      {
        v23 = v20 + 1;
      }

      else
      {
        v23 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v23;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 406;
      _os_log_impl(&dword_226177000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d CS_PLATFORM_BINARY code sign flag not set.", &token, 0x12u);
    }
  }

  if ((CodeSignStatus & 0x2000) == 0)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v24 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v25 = 0;
      v26 = 0;
      v27 = 47;
      do
      {
        v28 = &aLibraryCachesC_4[v25];
        if (v27 == 47)
        {
          v26 = &aLibraryCachesC_4[v25];
        }

        v27 = v28[1];
        if (!v28[1])
        {
          break;
        }

        v16 = v25++ >= 0xFFF;
      }

      while (!v16);
      if (v26)
      {
        v29 = v26 + 1;
      }

      else
      {
        v29 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v29;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 407;
      _os_log_impl(&dword_226177000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d CS_REQUIRE_LV code sign flag not set.", &token, 0x12u);
    }
  }

  v9 = (CodeSignStatus & 0x4002001) == 67117057;
  if (os_variant_allows_internal_security_policies())
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v30 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v31 = 0;
      v32 = 0;
      v33 = 47;
      do
      {
        v34 = &aLibraryCachesC_4[v31];
        if (v33 == 47)
        {
          v32 = &aLibraryCachesC_4[v31];
        }

        v33 = v34[1];
        if (!v34[1])
        {
          break;
        }

        v16 = v31++ >= 0xFFF;
      }

      while (!v16);
      if (v32)
      {
        v35 = v32 + 1;
      }

      else
      {
        v35 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v35;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 412;
      _os_log_impl(&dword_226177000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d Internal build variant, attempting internal binary security check.", &token, 0x12u);
    }

    v36 = *&a3->var0[4];
    *token.val = *a3->var0;
    *&token.val[4] = v36;
    v37 = [(AppAttestEligibilityManager *)self fetchBundleRecordFor:&token];
    v38 = v37;
    v39 = -335552513;
    if (v37)
    {
      v40 = [v37 bundleIdentifier];
      v41 = [v40 isEqualToString:@"com.apple.DeviceCheckTests.xctrunner"];

      if (v41)
      {
        v42 = -268443649;
      }

      else
      {
        v42 = -335552513;
      }

      if ((CodeSignStatus >> 26) & 1 | v41 & 1)
      {
        v39 = v42;
LABEL_79:
        if ((CodeSignStatus & 0x10000000) == 0)
        {
          if (AAInternalLogSystem_onceToken_4 != -1)
          {
            [AppAttestEligibilityManager isEligibleClientFor:];
          }

          v49 = AAInternalLogSystem_log_4;
          if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
          {
            v50 = 0;
            v51 = 0;
            v52 = 47;
            do
            {
              v53 = &aLibraryCachesC_4[v50];
              if (v52 == 47)
              {
                v51 = &aLibraryCachesC_4[v50];
              }

              v52 = v53[1];
              if (!v53[1])
              {
                break;
              }

              v16 = v50++ >= 0xFFF;
            }

            while (!v16);
            if (v51)
            {
              v54 = v51 + 1;
            }

            else
            {
              v54 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
            }

            token.val[0] = 136315394;
            *&token.val[1] = v54;
            LOWORD(token.val[3]) = 1024;
            *(&token.val[3] + 2) = 420;
            _os_log_impl(&dword_226177000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d CS_DEBUGGED code sign flag not set.", &token, 0x12u);
          }
        }

        if ((CodeSignStatus & 0x2000) == 0)
        {
          if (AAInternalLogSystem_onceToken_4 != -1)
          {
            [AppAttestEligibilityManager isEligibleClientFor:];
          }

          v55 = AAInternalLogSystem_log_4;
          if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
          {
            v56 = 0;
            v57 = 0;
            v58 = 47;
            do
            {
              v59 = &aLibraryCachesC_4[v56];
              if (v58 == 47)
              {
                v57 = &aLibraryCachesC_4[v56];
              }

              v58 = v59[1];
              if (!v59[1])
              {
                break;
              }

              v16 = v56++ >= 0xFFF;
            }

            while (!v16);
            if (v57)
            {
              v60 = v57 + 1;
            }

            else
            {
              v60 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
            }

            token.val[0] = 136315394;
            *&token.val[1] = v60;
            LOWORD(token.val[3]) = 1024;
            *(&token.val[3] + 2) = 421;
            _os_log_impl(&dword_226177000, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d CS_REQUIRE_LV code sign flag not set.", &token, 0x12u);
          }
        }

        v9 = (CodeSignStatus & 0x4002001) == 0x4002001 || (v39 | CodeSignStatus) == -1;

        goto LABEL_114;
      }
    }

    else if ((CodeSignStatus & 0x4000000) != 0)
    {
      goto LABEL_79;
    }

    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v43 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v44 = 0;
      v45 = 0;
      v46 = 47;
      do
      {
        v47 = &aLibraryCachesC_4[v44];
        if (v46 == 47)
        {
          v45 = &aLibraryCachesC_4[v44];
        }

        v46 = v47[1];
        if (!v47[1])
        {
          break;
        }

        v16 = v44++ >= 0xFFF;
      }

      while (!v16);
      if (v45)
      {
        v48 = v45 + 1;
      }

      else
      {
        v48 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v48;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 417;
      _os_log_impl(&dword_226177000, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d CS_PLATFORM_BINARY code sign flag not set.", &token, 0x12u);
    }

    goto LABEL_79;
  }

LABEL_114:
  v8[2](v8);

  v62 = *MEMORY[0x277D85DE8];
  return v9;
}

void __66__AppAttestEligibilityManager_meetsSecurityControlsForAuditToken___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (id)fetchBundleRecordFor:(id *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBECE8];
  v5 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &token);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__AppAttestEligibilityManager_fetchBundleRecordFor___block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v6;
  v7 = _Block_copy(aBlock);
  v29 = 0;
  v8 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v8;
  v9 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:&token error:&v29];
  v10 = v29;
  if (v10)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v11 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = 0;
      v13 = 0;
      v14 = 47;
      do
      {
        v15 = &aLibraryCachesC_4[v12];
        if (v14 == 47)
        {
          v13 = &aLibraryCachesC_4[v12];
        }

        v14 = v15[1];
        if (!v15[1])
        {
          break;
        }

        v16 = v12++ >= 0xFFF;
      }

      while (!v16);
      v17 = [v10 localizedDescription];
      v18 = v17;
      if (v13)
      {
        v19 = v13 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315650;
      *&token.val[1] = v19;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 443;
      HIWORD(token.val[4]) = 2112;
      *&token.val[5] = v17;
      _os_log_impl(&dword_226177000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch bundle record. { error=%@ }", &token, 0x1Cu);
    }

LABEL_16:
    v20 = 0;
    goto LABEL_19;
  }

  if (!v9)
  {
    if (AAInternalLogSystem_onceToken_4 != -1)
    {
      [AppAttestEligibilityManager isEligibleClientFor:];
    }

    v23 = AAInternalLogSystem_log_4;
    if (os_log_type_enabled(AAInternalLogSystem_log_4, OS_LOG_TYPE_DEBUG))
    {
      v24 = 0;
      v25 = 0;
      v26 = 47;
      do
      {
        v27 = &aLibraryCachesC_4[v24];
        if (v26 == 47)
        {
          v25 = &aLibraryCachesC_4[v24];
        }

        v26 = v27[1];
        if (!v27[1])
        {
          break;
        }

        v16 = v24++ >= 0xFFF;
      }

      while (!v16);
      if (v25)
      {
        v28 = v25 + 1;
      }

      else
      {
        v28 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/AppAttestEligibilityManager.m";
      }

      token.val[0] = 136315394;
      *&token.val[1] = v28;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 448;
      _os_log_impl(&dword_226177000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to construct bundle record from audit token.", &token, 0x12u);
    }

    goto LABEL_16;
  }

  v20 = v9;
LABEL_19:

  v7[2](v7);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __52__AppAttestEligibilityManager_fetchBundleRecordFor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

@end