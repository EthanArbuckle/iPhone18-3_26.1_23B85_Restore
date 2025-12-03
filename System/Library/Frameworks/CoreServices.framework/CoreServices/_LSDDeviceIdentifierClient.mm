@interface _LSDDeviceIdentifierClient
- (BOOL)canAccessAdvertisingIdentifier;
- (BOOL)hasEntitlementToClearAllIdentifiersOfType:(int64_t)type;
- (BOOL)hasUninstallEntitlement;
- (_LSDDeviceIdentifierClient)initWithXPCConnection:(id)connection;
- (unsigned)findAppBundleForExecutableURL:(id)l withContext:(LSContext *)context;
- (void)clearAllIdentifiersOfType:(int64_t)type;
- (void)clearIdentifiersForUninstallationWithVendorName:(id)name bundleIdentifier:(id)identifier;
- (void)generateIdentifiersWithVendorName:(id)name bundleIdentifier:(id)identifier;
- (void)getClientProcessVendorNameBundleIdentifierAndRestrictedIDAccessWithType:(int64_t)type completionHandler:(id)handler;
- (void)getIdentifierOfType:(int64_t)type completionHandler:(id)handler;
- (void)getIdentifierOfType:(int64_t)type vendorName:(id)name bundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)urlContainsDeviceIdentifierForAdvertising:(id)advertising completionHandler:(id)handler;
@end

@implementation _LSDDeviceIdentifierClient

- (_LSDDeviceIdentifierClient)initWithXPCConnection:(id)connection
{
  v4.receiver = self;
  v4.super_class = _LSDDeviceIdentifierClient;
  return [(_LSDClient *)&v4 initWithXPCConnection:connection];
}

- (unsigned)findAppBundleForExecutableURL:(id)l withContext:(LSContext *)context
{
  lCopy = l;
  v11 = 0;
  v6 = [[FSNode alloc] initWithURL:lCopy flags:0 error:0];
  if (v6)
  {
    if (_LSBundleFindWithNode(context, v6, &v11, 0))
    {
      v10 = 0;
      v7 = _LSPluginFindWithInfo(context->db, 0, 0, 0, v6, &v10, 0);
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
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  v4 = _LSCheckMIAllowedSPIForXPCConnection(_xpcConnection, @"UninstallForLaunchServices") != 0;

  return v4;
}

- (BOOL)hasEntitlementToClearAllIdentifiersOfType:(int64_t)type
{
  if (type)
  {
    if (type == 1)
    {
      xPCConnection = [(_LSDClient *)self XPCConnection];
      _xpcConnection = [xPCConnection _xpcConnection];
      v6 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.launchservices.clearadvertisingid");
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
      xPCConnection = [(_LSDClient *)self XPCConnection];
      _xpcConnection = [xPCConnection _xpcConnection];
      v6 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.launchservices.clearvendorid");
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
      xPCConnection = [(_LSDClient *)self XPCConnection];
      buf.val[0] = 67109120;
      buf.val[1] = [xPCConnection processIdentifier];
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "Advertising identifier: PID %d access denied because app tracking disabled by device management profile", &buf, 8u);
    }

LABEL_6:

    v9 = 0;
    goto LABEL_7;
  }

  v4 = getkTCCServiceUserTracking();
  xPCConnection2 = [(_LSDClient *)self XPCConnection];
  v6 = xPCConnection2;
  if (xPCConnection2)
  {
    [xPCConnection2 auditToken];
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
        xPCConnection3 = [(_LSDClient *)self XPCConnection];
        processIdentifier = [xPCConnection3 processIdentifier];
        buf.val[0] = 67109120;
        buf.val[1] = processIdentifier;
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
            xPCConnection4 = [(_LSDClient *)self XPCConnection];
            processIdentifier2 = [xPCConnection4 processIdentifier];
            buf.val[0] = 67109120;
            buf.val[1] = processIdentifier2;
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
              xPCConnection5 = [(_LSDClient *)self XPCConnection];
              processIdentifier3 = [xPCConnection5 processIdentifier];
              buf.val[0] = 67109120;
              buf.val[1] = processIdentifier3;
              _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_INFO, "Advertising identifier: PID %d access permitted because AppTrackingTransparency enforcement is off and LimitAdTracking is off", &buf, 8u);

              v9 = 1;
            }

            goto LABEL_30;
          }

          v13 = _LSDefaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            xPCConnection6 = [(_LSDClient *)self XPCConnection];
            processIdentifier4 = [xPCConnection6 processIdentifier];
            buf.val[0] = 67109120;
            buf.val[1] = processIdentifier4;
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
        xPCConnection7 = [(_LSDClient *)self XPCConnection];
        processIdentifier5 = [xPCConnection7 processIdentifier];
        buf.val[0] = 67109376;
        buf.val[1] = processIdentifier5;
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
    xPCConnection8 = [(_LSDClient *)self XPCConnection];
    processIdentifier6 = [xPCConnection8 processIdentifier];
    buf.val[0] = 67109120;
    buf.val[1] = processIdentifier6;
    _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_INFO, "Advertising identifier: PID %d access permitted because user granted kTCCServiceUserTracking", &buf, 8u);
  }

  v9 = 1;
LABEL_7:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)getClientProcessVendorNameBundleIdentifierAndRestrictedIDAccessWithType:(int64_t)type completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (type == 1 && (-[_LSDClient XPCConnection](self, "XPCConnection"), v7 = objc_claimAutoreleasedReturnValue(), [v7 _xpcConnection], v8 = objc_claimAutoreleasedReturnValue(), v9 = _LSCheckEntitlementForXPCConnectionQuiet(v8, @"com.apple.developer.exposure-notification"), v8, v7, v9))
  {
    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = @"com.apple.developer.exposure-notification";
      _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "Request for IDFA/IDFV from a process that has entitlement %{public}@; ignoring.", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 1);
  }

  else
  {
    v11 = _LSServer_DatabaseExecutionContext();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __120___LSDDeviceIdentifierClient_getClientProcessVendorNameBundleIdentifierAndRestrictedIDAccessWithType_completionHandler___block_invoke;
    v13[3] = &unk_1E6A1BC08;
    v13[4] = self;
    v14 = handlerCopy;
    [(LSDBExecutionContext *)v11 syncRead:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)getIdentifierOfType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68___LSDDeviceIdentifierClient_getIdentifierOfType_completionHandler___block_invoke;
  v8[3] = &unk_1E6A1BC30;
  v9 = handlerCopy;
  typeCopy = type;
  v8[4] = self;
  v7 = handlerCopy;
  [(_LSDDeviceIdentifierClient *)self getClientProcessVendorNameBundleIdentifierAndRestrictedIDAccessWithType:type completionHandler:v8];
}

- (void)urlContainsDeviceIdentifierForAdvertising:(id)advertising completionHandler:(id)handler
{
  advertisingCopy = advertising;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90___LSDDeviceIdentifierClient_urlContainsDeviceIdentifierForAdvertising_completionHandler___block_invoke;
  v10[3] = &unk_1E6A1BC58;
  v11 = advertisingCopy;
  v12 = handlerCopy;
  v8 = advertisingCopy;
  v9 = handlerCopy;
  [(_LSDDeviceIdentifierClient *)self getIdentifierOfType:1 completionHandler:v10];
}

- (void)generateIdentifiersWithVendorName:(id)name bundleIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (nameCopy && identifierCopy)
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = nameCopy;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Generating identifiers for vendor %@", &v18, 0xCu);
    }

    v9 = +[_LSDeviceIdentifierManager sharedInstance];
    sharedManager = [getUMUserManagerClass() sharedManager];
    currentPersona = [sharedManager currentPersona];
    v12 = [v9 cacheForPersona:currentPersona];
    [v12 getIdentifierOfType:0 vendorName:nameCopy bundleIdentifier:v7 completionHandler:0];

    v13 = +[_LSDeviceIdentifierManager sharedInstance];
    sharedManager2 = [getUMUserManagerClass() sharedManager];
    currentPersona2 = [sharedManager2 currentPersona];
    v16 = [v13 cacheForPersona:currentPersona2];
    [v16 getIdentifierOfType:1 vendorName:nameCopy bundleIdentifier:v7 completionHandler:0];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)clearIdentifiersForUninstallationWithVendorName:(id)name bundleIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (nameCopy && identifierCopy)
  {
    if ([(_LSDDeviceIdentifierClient *)self hasUninstallEntitlement])
    {
      v9 = _LSDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = nameCopy;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Asking to clear identifiers for vendor %@/bundle %@", &v16, 0x16u);
      }

      v10 = +[_LSDeviceIdentifierManager sharedInstance];
      sharedManager = [getUMUserManagerClass() sharedManager];
      currentPersona = [sharedManager currentPersona];
      v13 = [v10 cacheForPersona:currentPersona];
      [v13 clearIdentifiersForUninstallationWithVendorName:nameCopy bundleIdentifier:v8];
    }

    else
    {
      v10 = _LSDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        xPCConnection = [(_LSDClient *)self XPCConnection];
        v16 = 138412802;
        v17 = xPCConnection;
        v18 = 2112;
        v19 = nameCopy;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "Unentitled request from XPC connection %@ to clear identifiers for vendor %@/bundle %@", &v16, 0x20u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)getIdentifierOfType:(int64_t)type vendorName:(id)name bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!nameCopy || !identifierCopy)
  {
LABEL_8:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_9;
  }

  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  v15 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.lsapplicationproxy.deviceidentifierforvendor");

  if (!v15)
  {
    v20 = _LSDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      xPCConnection2 = [(_LSDClient *)self XPCConnection];
      v23 = 138412802;
      v24 = xPCConnection2;
      v25 = 1024;
      typeCopy = type;
      v27 = 2112;
      v28 = nameCopy;
      _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEFAULT, "Unentitled request from XPC connection %@ for identifier type %i of vendor %@", &v23, 0x1Cu);
    }

    goto LABEL_8;
  }

  v16 = +[_LSDeviceIdentifierManager sharedInstance];
  sharedManager = [getUMUserManagerClass() sharedManager];
  currentPersona = [sharedManager currentPersona];
  v19 = [v16 cacheForPersona:currentPersona];
  [v19 getIdentifierOfType:type vendorName:nameCopy bundleIdentifier:identifierCopy completionHandler:handlerCopy];

LABEL_9:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)clearAllIdentifiersOfType:(int64_t)type
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
      LODWORD(v14) = type;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Asking to clear all identifiers of type %i", &v13, 8u);
    }

    v6 = +[_LSDeviceIdentifierManager sharedInstance];
    sharedManager = [getUMUserManagerClass() sharedManager];
    currentPersona = [sharedManager currentPersona];
    v10 = [v6 cacheForPersona:currentPersona];
    [v10 clearAllIdentifiersOfType:type];
  }

  else if (v7)
  {
    xPCConnection = [(_LSDClient *)self XPCConnection];
    v13 = 138412546;
    v14 = xPCConnection;
    v15 = 1024;
    typeCopy = type;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Unentitled request from XPC connection %@ to clear all identifiers of type %i", &v13, 0x12u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end