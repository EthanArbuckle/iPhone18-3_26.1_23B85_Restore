@interface ACCiAP2ShimServerUnregisteredClient
- (ACCiAP2ShimServerUnregisteredClient)initWithBundleId:(id)a3;
- (id)_applicationInfoForBundleIDSync:(id)a3;
- (int)_getProcessId;
- (void)releaseProcessAssertion;
- (void)takeProcessAssertion:(id)a3;
@end

@implementation ACCiAP2ShimServerUnregisteredClient

- (ACCiAP2ShimServerUnregisteredClient)initWithBundleId:(id)a3
{
  v4.receiver = self;
  v4.super_class = ACCiAP2ShimServerUnregisteredClient;
  return [(ACCiAP2ShimServerUnregisteredClient *)&v4 init];
}

- (void)takeProcessAssertion:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
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
      v17 = 138412546;
      v18 = bundleId;
      v19 = 1024;
      v20 = [(ACCiAP2ShimServerUnregisteredClient *)self _getProcessId];
      _os_log_impl(&dword_23DC47000, v10, OS_LOG_TYPE_INFO, "[#ServerClient] creating process assertion - appId=%@ pid=%d", &v17, 0x12u);
    }

    v12 = *MEMORY[0x277CBECE8];
    [(ACCiAP2ShimServerUnregisteredClient *)self _getProcessId];
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
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v15 = self->_bundleId;
        v17 = 138412546;
        v18 = v15;
        v19 = 1024;
        v20 = [(ACCiAP2ShimServerUnregisteredClient *)self _getProcessId];
        _os_log_impl(&dword_23DC47000, v5, OS_LOG_TYPE_INFO, "[#ServerClient] renewing process assertion - appId=%@ pid=%d", &v17, 0x12u);
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

    v13 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_23DC47000, v13, OS_LOG_TYPE_INFO, "[#ServerClient] using ea process hysteresis", &v17, 2u);
  }

LABEL_35:
  v16 = *MEMORY[0x277D85DE8];
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

- (id)_applicationInfoForBundleIDSync:(id)a3
{
  v3 = a3;
  v4 = _getApplicationStateMonitor();
  v5 = [v4 applicationInfoForApplication:v3];

  return v5;
}

- (int)_getProcessId
{
  result = self->_processId;
  if (result == -1)
  {
    self->_processId = 0;
    if (self->_bundleId)
    {
      v4 = [(ACCiAP2ShimServerUnregisteredClient *)self _applicationInfoForBundleIDSync:?];
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

- (void)takeProcessAssertion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_23DC47000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

@end