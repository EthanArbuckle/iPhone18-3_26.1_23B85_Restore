@interface _LSDDeviceIdentifierClient
- (BOOL)canAccessAdvertisingIdentifier;
- (BOOL)hasEntitlementToClearAllIdentifiersOfType:(int64_t)a3;
- (BOOL)hasUninstallEntitlement;
- (_LSDDeviceIdentifierClient)initWithXPCConnection:(id)a3;
- (unsigned)findAppBundleForExecutableURL:(id)a3 withContext:(LSContext *)a4;
- (void)clearAllIdentifiersOfType:(int64_t)a3;
- (void)clearIdentifiersForUninstallationWithVendorName:(id)a3 bundleIdentifier:(id)a4;
- (void)generateIdentifiersWithVendorName:(id)a3 bundleIdentifier:(id)a4;
- (void)getClientProcessVendorNameBundleIdentifierAndRestrictedIDAccessWithType:(int64_t)a3 completionHandler:(id)a4;
- (void)getIdentifierOfType:(int64_t)a3 completionHandler:(id)a4;
- (void)getIdentifierOfType:(int64_t)a3 vendorName:(id)a4 bundleIdentifier:(id)a5 completionHandler:(id)a6;
- (void)urlContainsDeviceIdentifierForAdvertising:(id)a3 completionHandler:(id)a4;
@end

@implementation _LSDDeviceIdentifierClient

- (_LSDDeviceIdentifierClient)initWithXPCConnection:(id)a3
{
  v4.receiver = self;
  v4.super_class = _LSDDeviceIdentifierClient;
  return [(_LSDClient *)&v4 initWithXPCConnection:a3];
}

- (unsigned)findAppBundleForExecutableURL:(id)a3 withContext:(LSContext *)a4
{
  v5 = a3;
  v11 = 0;
  v6 = [[FSNode alloc] initWithURL:v5 flags:0 error:0];
  if (v6)
  {
    if (_LSBundleFindWithNode(a4, v6, &v11, 0))
    {
      v10 = 0;
      v7 = _LSPluginFindWithInfo(a4->db, 0, 0, 0, v6, &v10, 0);
      if (v7)
      {
        v11 = *(v7 + 224);
      }
    }
  }

  v8 = v11;
  return v8;
}

- (BOOL)hasUninstallEntitlement
{
  v2 = [(_LSDClient *)self XPCConnection];
  v3 = [v2 _xpcConnection];
  v4 = _LSCheckMIAllowedSPIForXPCConnection(v3, @"UninstallForLaunchServices") != 0;

  return v4;
}

- (BOOL)hasEntitlementToClearAllIdentifiersOfType:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = [(_LSDClient *)self XPCConnection];
      v5 = [v4 _xpcConnection];
      v6 = _LSCheckEntitlementForXPCConnection(v5, @"com.apple.launchservices.clearadvertisingid");
LABEL_8:
      v7 = v6 != 0;

      return v7;
    }

    return 0;
  }

  else
  {
    if (![(_LSDDeviceIdentifierClient *)self hasUninstallEntitlement])
    {
      v4 = [(_LSDClient *)self XPCConnection];
      v5 = [v4 _xpcConnection];
      v6 = _LSCheckEntitlementForXPCConnection(v5, @"com.apple.launchservices.clearvendorid");
      goto LABEL_8;
    }

    return 1;
  }
}

- (BOOL)canAccessAdvertisingIdentifier
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = +[LSApplicationRestrictionsManager sharedInstance];
  if (([(LSApplicationRestrictionsManager *)v3 isAdTrackingEnabled]& 1) == 0)
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(_LSDClient *)self XPCConnection];
      buf.val[0] = 67109120;
      buf.val[1] = [v8 processIdentifier];
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "Advertising identifier: PID %d access denied because app tracking disabled by device management profile", &buf, 8u);
    }

LABEL_6:

    v9 = 0;
    goto LABEL_7;
  }

  v4 = getkTCCServiceUserTracking();
  v5 = [(_LSDClient *)self XPCConnection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    memset(&v28, 0, sizeof(v28));
  }

  buf = v28;
  v12 = softLinkTCCAccessPreflightWithAuditToken(v4, &buf, 0);

  if (v12)
  {
    if (v12 == 1)
    {
      v7 = _LSDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v16 = [(_LSDClient *)self XPCConnection];
        v17 = [v16 processIdentifier];
        buf.val[0] = 67109120;
        buf.val[1] = v17;
        _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "Advertising identifier: PID %d access denied because because user denided kTCCServiceUserTracking", &buf, 8u);
      }
    }

    else
    {
      if (v12 == 2)
      {
        *v28.val = 0;
        if ([LSATTrackingEnforcementManager shouldEnforceTrackingWithReasonCode:&v28])
        {
          v13 = _LSDefaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [(_LSDClient *)self XPCConnection];
            v15 = [v14 processIdentifier];
            buf.val[0] = 67109120;
            buf.val[1] = v15;
            _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_INFO, "Advertising identifier: PID %d access denied because because app has not requested kTCCServiceUserTracking", &buf, 8u);
          }
        }

        else
        {
          v21 = _LSDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            buf.val[0] = 134217984;
            *&buf.val[1] = *v28.val;
            _os_log_impl(&dword_18162D000, v21, OS_LOG_TYPE_INFO, "Advertising identifier: AppTrackingTransparency enforcement is off (ATEnforcementServiceReasonCode %ld)", &buf, 0xCu);
          }

          if (![(LSApplicationRestrictionsManager *)v3 isLimitAdTrackingForced])
          {
            v13 = _LSDefaultLog();
            v9 = 1;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v24 = [(_LSDClient *)self XPCConnection];
              v25 = [v24 processIdentifier];
              buf.val[0] = 67109120;
              buf.val[1] = v25;
              _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_INFO, "Advertising identifier: PID %d access permitted because AppTrackingTransparency enforcement is off and LimitAdTracking is off", &buf, 8u);

              v9 = 1;
            }

            goto LABEL_30;
          }

          v13 = _LSDefaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v22 = [(_LSDClient *)self XPCConnection];
            v23 = [v22 processIdentifier];
            buf.val[0] = 67109120;
            buf.val[1] = v23;
            _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_INFO, "Advertising identifier: PID %d access denied because LimitAdTracking is on", &buf, 8u);
          }
        }

        v9 = 0;
LABEL_30:

        goto LABEL_7;
      }

      v7 = _LSDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v26 = [(_LSDClient *)self XPCConnection];
        v27 = [v26 processIdentifier];
        buf.val[0] = 67109376;
        buf.val[1] = v27;
        LOWORD(buf.val[2]) = 1024;
        *(&buf.val[2] + 2) = v12;
        _os_log_error_impl(&dword_18162D000, v7, OS_LOG_TYPE_ERROR, "Advertising identifier: PID %d access denied because because kTCCServiceUserTracking has invalid state %u", &buf, 0xEu);
      }
    }

    goto LABEL_6;
  }

  v18 = _LSDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [(_LSDClient *)self XPCConnection];
    v20 = [v19 processIdentifier];
    buf.val[0] = 67109120;
    buf.val[1] = v20;
    _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_INFO, "Advertising identifier: PID %d access permitted because user granted kTCCServiceUserTracking", &buf, 8u);
  }

  v9 = 1;
LABEL_7:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)getClientProcessVendorNameBundleIdentifierAndRestrictedIDAccessWithType:(int64_t)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 == 1 && (-[_LSDClient XPCConnection](self, "XPCConnection"), v7 = objc_claimAutoreleasedReturnValue(), [v7 _xpcConnection], v8 = objc_claimAutoreleasedReturnValue(), v9 = _LSCheckEntitlementForXPCConnectionQuiet(v8, @"com.apple.developer.exposure-notification"), v8, v7, v9))
  {
    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = @"com.apple.developer.exposure-notification";
      _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "Request for IDFA/IDFV from a process that has entitlement %{public}@; ignoring.", buf, 0xCu);
    }

    (*(v6 + 2))(v6, 0, 0, 1);
  }

  else
  {
    v11 = _LSServer_DatabaseExecutionContext();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __120___LSDDeviceIdentifierClient_getClientProcessVendorNameBundleIdentifierAndRestrictedIDAccessWithType_completionHandler___block_invoke;
    v13[3] = &unk_1E6A1BC08;
    v13[4] = self;
    v14 = v6;
    [(LSDBExecutionContext *)v11 syncRead:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)getIdentifierOfType:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68___LSDDeviceIdentifierClient_getIdentifierOfType_completionHandler___block_invoke;
  v8[3] = &unk_1E6A1BC30;
  v9 = v6;
  v10 = a3;
  v8[4] = self;
  v7 = v6;
  [(_LSDDeviceIdentifierClient *)self getClientProcessVendorNameBundleIdentifierAndRestrictedIDAccessWithType:a3 completionHandler:v8];
}

- (void)urlContainsDeviceIdentifierForAdvertising:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90___LSDDeviceIdentifierClient_urlContainsDeviceIdentifierForAdvertising_completionHandler___block_invoke;
  v10[3] = &unk_1E6A1BC58;
  v11 = v6;
  v12 = v7;
  v8 = v6;
  v9 = v7;
  [(_LSDDeviceIdentifierClient *)self getIdentifierOfType:1 completionHandler:v10];
}

- (void)generateIdentifiersWithVendorName:(id)a3 bundleIdentifier:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v5;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Generating identifiers for vendor %@", &v18, 0xCu);
    }

    v9 = +[_LSDeviceIdentifierManager sharedInstance];
    v10 = [getUMUserManagerClass() sharedManager];
    v11 = [v10 currentPersona];
    v12 = [v9 cacheForPersona:v11];
    [v12 getIdentifierOfType:0 vendorName:v5 bundleIdentifier:v7 completionHandler:0];

    v13 = +[_LSDeviceIdentifierManager sharedInstance];
    v14 = [getUMUserManagerClass() sharedManager];
    v15 = [v14 currentPersona];
    v16 = [v13 cacheForPersona:v15];
    [v16 getIdentifierOfType:1 vendorName:v5 bundleIdentifier:v7 completionHandler:0];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)clearIdentifiersForUninstallationWithVendorName:(id)a3 bundleIdentifier:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    if ([(_LSDDeviceIdentifierClient *)self hasUninstallEntitlement])
    {
      v9 = _LSDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = v6;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Asking to clear identifiers for vendor %@/bundle %@", &v16, 0x16u);
      }

      v10 = +[_LSDeviceIdentifierManager sharedInstance];
      v11 = [getUMUserManagerClass() sharedManager];
      v12 = [v11 currentPersona];
      v13 = [v10 cacheForPersona:v12];
      [v13 clearIdentifiersForUninstallationWithVendorName:v6 bundleIdentifier:v8];
    }

    else
    {
      v10 = _LSDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(_LSDClient *)self XPCConnection];
        v16 = 138412802;
        v17 = v14;
        v18 = 2112;
        v19 = v6;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "Unentitled request from XPC connection %@ to clear identifiers for vendor %@/bundle %@", &v16, 0x20u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)getIdentifierOfType:(int64_t)a3 vendorName:(id)a4 bundleIdentifier:(id)a5 completionHandler:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v10 || !v11)
  {
LABEL_8:
    v12[2](v12, 0);
    goto LABEL_9;
  }

  v13 = [(_LSDClient *)self XPCConnection];
  v14 = [v13 _xpcConnection];
  v15 = _LSCheckEntitlementForXPCConnection(v14, @"com.apple.lsapplicationproxy.deviceidentifierforvendor");

  if (!v15)
  {
    v20 = _LSDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(_LSDClient *)self XPCConnection];
      v23 = 138412802;
      v24 = v21;
      v25 = 1024;
      v26 = a3;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEFAULT, "Unentitled request from XPC connection %@ for identifier type %i of vendor %@", &v23, 0x1Cu);
    }

    goto LABEL_8;
  }

  v16 = +[_LSDeviceIdentifierManager sharedInstance];
  v17 = [getUMUserManagerClass() sharedManager];
  v18 = [v17 currentPersona];
  v19 = [v16 cacheForPersona:v18];
  [v19 getIdentifierOfType:a3 vendorName:v10 bundleIdentifier:v11 completionHandler:v12];

LABEL_9:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)clearAllIdentifiersOfType:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(_LSDDeviceIdentifierClient *)self hasEntitlementToClearAllIdentifiersOfType:?];
  v6 = _LSDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v13 = 67109120;
      LODWORD(v14) = a3;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Asking to clear all identifiers of type %i", &v13, 8u);
    }

    v6 = +[_LSDeviceIdentifierManager sharedInstance];
    v8 = [getUMUserManagerClass() sharedManager];
    v9 = [v8 currentPersona];
    v10 = [v6 cacheForPersona:v9];
    [v10 clearAllIdentifiersOfType:a3];
  }

  else if (v7)
  {
    v11 = [(_LSDClient *)self XPCConnection];
    v13 = 138412546;
    v14 = v11;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Unentitled request from XPC connection %@ to clear all identifiers of type %i", &v13, 0x12u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end