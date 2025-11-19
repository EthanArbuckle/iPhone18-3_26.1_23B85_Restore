@interface ACCiAP2ShimServerClient
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (ACCiAP2ShimServerClient)initWithCapabilities:(unsigned int)a3 auditToken:(id *)a4 xpcConnection:(id)a5 eaProtocols:(id)a6 andBundleId:(id)a7;
- (BOOL)canSendConnectionEventForAccessory:(id)a3;
- (id)_applicationInfoForBundleIDSync:(id)a3;
- (int)processId;
- (void)dealloc;
- (void)releaseProcessAssertion;
- (void)takeProcessAssertion:(id)a3;
@end

@implementation ACCiAP2ShimServerClient

- (ACCiAP2ShimServerClient)initWithCapabilities:(unsigned int)a3 auditToken:(id *)a4 xpcConnection:(id)a5 eaProtocols:(id)a6 andBundleId:(id)a7
{
  v52 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v50.receiver = self;
  v50.super_class = ACCiAP2ShimServerClient;
  v16 = [(ACCiAP2ShimServerClient *)&v50 init];
  v17 = v16;
  if (v16)
  {
    v16->_capabilities = a3;
    v16->_iapSessionRefCount = 0;
    v18 = *&a4->var0[4];
    *v16->_auditToken.val = *a4->var0;
    *&v16->_auditToken.val[4] = v18;
    objc_storeStrong(&v16->_xpcConnection, a5);
    v19 = [v15 copy];
    bundleId = v17->_bundleId;
    v17->_bundleId = v19;

    v17->_processId = -1;
    v21 = dispatch_queue_create("IAPEAClient Process Assertion Queue", 0);
    processAssertionQ = v17->_processAssertionQ;
    v17->_processAssertionQ = v21;

    v17->_clientRequiresAccReset = 0;
    v17->_entitlementForAllAccessories = 0;
    v17->_processAssertion = 0;
    v17->_processAssertionStartTime = 0;
    v23 = [v14 copy];
    clientEAProtocols = v17->_clientEAProtocols;
    v17->_clientEAProtocols = v23;

    v25 = *&a4->var0[4];
    *buf = *a4->var0;
    *&buf[16] = v25;
    v17->_entitlementForAllAccessories = __hasEntitlementForAuditToken(@"com.apple.private.externalaccessory.showallaccessories", buf);
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v26 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v26 = MEMORY[0x277D86220];
      v27 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_23DC47000, v26, OS_LOG_TYPE_INFO, "[#ServerClient] INIT - capability=0x%x", buf, 8u);
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v28 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v28 = MEMORY[0x277D86220];
      v29 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v30 = "YES";
      if ((a3 & 0x10) == 0)
      {
        v30 = "NO";
      }

      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = v30;
      _os_log_impl(&dword_23DC47000, v28, OS_LOG_TYPE_INFO, "[#ServerClient] %@ supports EA while suspended = %s", buf, 0x16u);
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v31 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v31 = MEMORY[0x277D86220];
      v32 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v33 = "YES";
      if ((a3 & 0x20) == 0)
      {
        v33 = "NO";
      }

      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = v33;
      _os_log_impl(&dword_23DC47000, v31, OS_LOG_TYPE_INFO, "[#ServerClient] %@ supports EA while backgrounded = %s", buf, 0x16u);
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v34 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v34 = MEMORY[0x277D86220];
      v35 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v36 = "YES";
      if ((a3 & 0x8000) == 0)
      {
        v36 = "NO";
      }

      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = v36;
      _os_log_impl(&dword_23DC47000, v34, OS_LOG_TYPE_INFO, "[#ServerClient] %@ supports Application state = %s", buf, 0x16u);
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v37 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v37 = MEMORY[0x277D86220];
      v38 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      entitlementForAllAccessories = v17->_entitlementForAllAccessories;
      *buf = 67109120;
      *&buf[4] = entitlementForAllAccessories;
      _os_log_impl(&dword_23DC47000, v37, OS_LOG_TYPE_INFO, "[#ServerClient] _entitlementForAllAccessories = %d", buf, 8u);
    }

    v40 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v17->_processAssertionQ);
    processAssertionTimer = v17->_processAssertionTimer;
    v17->_processAssertionTimer = v40;

    v42 = v17->_processAssertionTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __97__ACCiAP2ShimServerClient_initWithCapabilities_auditToken_xpcConnection_eaProtocols_andBundleId___block_invoke;
    handler[3] = &unk_278BF8188;
    v43 = v17;
    v49 = v43;
    dispatch_source_set_event_handler(v42, handler);
    dispatch_source_set_timer(v17->_processAssertionTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v17->_processAssertionTimer);
    v45 = 0;
    if ((v17->_capabilities & 2) != 0)
    {
      v44 = *&a4->var0[4];
      *buf = *a4->var0;
      *&buf[16] = v44;
      if (__hasEntitlementForAuditToken(@"com.apple.iapd.accessibility", buf))
      {
        v45 = 1;
      }
    }

    v43->_supportsAccessibility = v45;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v17;
}

void __97__ACCiAP2ShimServerClient_initWithCapabilities_auditToken_xpcConnection_eaProtocols_andBundleId___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 72))
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 1;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v5 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 32) + 16);
      v7 = *(*(a1 + 32) + 20);
      v9[0] = 67109376;
      v9[1] = v7;
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&dword_23DC47000, v5, OS_LOG_TYPE_INFO, "[#ServerClient] releasing process assertion - clientID=%d pid=%d", v9, 0xEu);
    }

    CFRelease(*(*(a1 + 32) + 72));
    *(*(a1 + 32) + 72) = 0;
    v2 = *(a1 + 32);
  }

  dispatch_source_set_timer(*(v2 + 88), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  *(*(a1 + 32) + 80) = 0;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 67109120;
    v18 = clientID;
    _os_log_impl(&dword_23DC47000, v5, OS_LOG_TYPE_INFO, "[#ServerClient] DEALLOC - clientID=%d", buf, 8u);
  }

  processAssertionTimer = self->_processAssertionTimer;
  if (processAssertionTimer)
  {
    dispatch_source_cancel(processAssertionTimer);
    v8 = self->_processAssertionTimer;
    self->_processAssertionTimer = 0;
  }

  processAssertionQ = self->_processAssertionQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ACCiAP2ShimServerClient_dealloc__block_invoke;
  block[3] = &unk_278BF8188;
  block[4] = self;
  dispatch_sync(processAssertionQ, block);
  self->_processAssertionStartTime = 0;
  dispatch_sync(self->_processAssertionQ, &__block_literal_global_0);
  v10 = self->_processAssertionQ;
  self->_processAssertionQ = 0;

  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;

  bundleId = self->_bundleId;
  self->_bundleId = 0;

  clientEAProtocols = self->_clientEAProtocols;
  self->_clientEAProtocols = 0;

  v15.receiver = self;
  v15.super_class = ACCiAP2ShimServerClient;
  [(ACCiAP2ShimServerClient *)&v15 dealloc];
  v14 = *MEMORY[0x277D85DE8];
}

void __34__ACCiAP2ShimServerClient_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 72) = 0;
  }
}

- (void)takeProcessAssertion:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_processAssertion)
  {
LABEL_7:
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v10 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *gLogObjects;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      bundleId = self->_bundleId;
      processId = self->_processId;
      v20 = 138412546;
      v21 = bundleId;
      v22 = 1024;
      v23 = processId;
      _os_log_impl(&dword_23DC47000, v10, OS_LOG_TYPE_INFO, "[#ServerClient] creating process assertion - appId=%@ pid=%d", &v20, 0x12u);
    }

    v13 = *MEMORY[0x277CBECE8];
    v14 = self->_processId;
    self->_processAssertion = SBSProcessAssertionCreateForPID();
    self->_processAssertionStartTime = time(0);
    goto LABEL_35;
  }

  if (time(0) - self->_processAssertionStartTime >= 3)
  {
    if (self->_processAssertion)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v5 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v5 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v17 = self->_bundleId;
        v18 = self->_processId;
        v20 = 138412546;
        v21 = v17;
        v22 = 1024;
        v23 = v18;
        _os_log_impl(&dword_23DC47000, v5, OS_LOG_TYPE_INFO, "[#ServerClient] renewing process assertion - appId=%@ pid=%d", &v20, 0x12u);
      }

      self->_processAssertionStartTime = 0;
      goto LABEL_35;
    }

    goto LABEL_7;
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
    }

    v15 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v15 = *gLogObjects;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_23DC47000, v15, OS_LOG_TYPE_INFO, "[#ServerClient] using ea process hysteresis", &v20, 2u);
  }

LABEL_35:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)releaseProcessAssertion
{
  p_processAssertion = &self->_processAssertion;
  processAssertion = self->_processAssertion;
  if (processAssertion)
  {
    CFRelease(processAssertion);
    *p_processAssertion = 0;
    p_processAssertion[1] = 0;
  }
}

- (BOOL)canSendConnectionEventForAccessory:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACCiAP2ShimServerClient *)self capabilities];
  v6 = [(ACCiAP2ShimServerClient *)self capabilities];
  v7 = [(ACCiAP2ShimServerClient *)self capabilities];
  v8 = [(ACCiAP2ShimServerClient *)self applicationState];
  v28 = [(ACCiAP2ShimServerClient *)self applicationState];
  v9 = [v4 objectForKey:*MEMORY[0x277D18450]];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if ([(NSArray *)self->_clientEAProtocols count])
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __62__ACCiAP2ShimServerClient_canSendConnectionEventForAccessory___block_invoke;
    v29[3] = &unk_278BF81D8;
    v29[4] = self;
    v29[5] = &v30;
    [v9 enumerateKeysAndObjectsUsingBlock:v29];
    if ((v31[3] & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v10 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
        }

        v10 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        bundleId = self->_bundleId;
        *buf = 138412290;
        v35 = bundleId;
        _os_log_impl(&dword_23DC47000, v10, OS_LOG_TYPE_DEFAULT, "[#ServerClient] No protocols found for client %@", buf, 0xCu);
      }
    }
  }

  if ((v31[3] & 1) != 0 || self->_entitlementForAllAccessories)
  {
    v13 = v6 & 0x20;
    v14 = v7 & 0x8000;
    v15 = 1;
    v16 = v5 & 0x10;
    if ((v5 & 0x10) == 0 && v7 < 0)
    {
      v17 = v8 == 4;
      if (v28 > 4)
      {
        v17 = 1;
      }

      if (!v13)
      {
        v17 = 0;
      }

      v15 = v28 > 4 || v17;
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v18 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v26 = v9;
      v27 = v4;
      v20 = self->_bundleId;
      entitlementForAllAccessories = self->_entitlementForAllAccessories;
      v22 = *(v31 + 24);
      v23 = [(ACCiAP2ShimServerClient *)self applicationState];
      *buf = 138414594;
      v35 = v20;
      v36 = 1024;
      v37 = v16 >> 4;
      v38 = 1024;
      v39 = v13 >> 5;
      v40 = 1024;
      v41 = v8 == 4;
      v42 = 1024;
      v43 = v28 > 4;
      v44 = 1024;
      v45 = v14 >> 15;
      v46 = 1024;
      v47 = entitlementForAllAccessories;
      v48 = 1024;
      v49 = v22;
      v50 = 1024;
      v51 = v23;
      v52 = 1024;
      v53 = v15;
      _os_log_impl(&dword_23DC47000, v18, OS_LOG_TYPE_INFO, "[#ServerClient] bundleID %@ supportsEAWhenSuspended = %d, supportsEAInBackground = %d, clientAppStateInBackground = %d, clientAppStateInForeground = %d, clientLinksUIApplication = %d, _entitlementForAllAccessories = %d, anyProtocolFound = %d, self.applicationState = 0x%X, canSendConnectionEvent = %d", buf, 0x42u);
      v9 = v26;
      v4 = v27;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  _Block_object_dispose(&v30, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

void __62__ACCiAP2ShimServerClient_canSendConnectionEventForAccessory___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(*(a1 + 32) + 56);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__ACCiAP2ShimServerClient_canSendConnectionEventForAccessory___block_invoke_2;
  v11[3] = &unk_278BF81B0;
  v12 = v6;
  if ([v7 indexOfObjectPassingTest:v11] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v8 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCiAP2ShimServerUnregisteredClient takeProcessAssertion:];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_23DC47000, v8, OS_LOG_TYPE_INFO, "[#ServerClient] protocol %@ found from accessory", buf, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_applicationInfoForBundleIDSync:(id)a3
{
  v3 = a3;
  v4 = _getApplicationStateMonitor();
  v5 = [v4 applicationInfoForApplication:v3];

  return v5;
}

- (int)processId
{
  result = self->_processId;
  if (result == -1)
  {
    self->_processId = 0;
    if (self->_bundleId)
    {
      v4 = [(ACCiAP2ShimServerClient *)self _applicationInfoForBundleIDSync:?];
      v5 = [v4 valueForKey:*MEMORY[0x277CEEE80]];
      v6 = [v5 unsignedIntegerValue];

      self->_processId = v6;
      return self->_processId;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[3].var0[4];
  *retstr->var0 = *self[3].var0;
  *&retstr->var0[4] = v3;
  return self;
}

@end