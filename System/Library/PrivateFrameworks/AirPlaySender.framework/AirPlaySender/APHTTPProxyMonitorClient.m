@interface APHTTPProxyMonitorClient
- (APHTTPProxyMonitorClient)initWithCallback:(id)a3 forLink:(unsigned __int8)a4 forIP:(__CFString *)a5;
- (int)registerToDeviceManager;
- (void)dealloc;
- (void)deviceInfoDidChange:(id)a3 deviceInfo:(id)a4;
- (void)deviceIsRegisteredDidChange:(id)a3 isRegistered:(BOOL)a4;
@end

@implementation APHTTPProxyMonitorClient

- (int)registerToDeviceManager
{
  v10[1] = *MEMORY[0x277D85DE8];

  self->_nrMonitor = 0;
  self->_nrDeviceID = 0;
  v3 = objc_alloc_init(MEMORY[0x277D2CA18]);
  if (!v3)
  {
    [APHTTPProxyMonitorClient registerToDeviceManager];
    v4 = 0;
LABEL_14:
    v8 = -6728;
    goto LABEL_9;
  }

  v4 = objc_alloc_init(MEMORY[0x277D2C9F8]);
  if (!v4)
  {
    [APHTTPProxyMonitorClient registerToDeviceManager];
    goto LABEL_14;
  }

  [v3 setIsExternalPairing:1];
  [v4 setProxyProviderType:3];
  [v4 setProxyProviderAuthMode:1];
  if (self->_isWireless)
  {
    v5 = 2;
  }

  else
  {
    v5 = 5;
  }

  v10[0] = [MEMORY[0x277CCABB0] numberWithInt:v5];
  [v4 setAllowedLinkTypes:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v10, 1)}];
  [v4 setProxyCapability:1];
  v6 = [MEMORY[0x277D2C9C8] newEphemeralDeviceIdentifier];
  self->_nrDeviceID = v6;
  if (!v6)
  {
    [APHTTPProxyMonitorClient registerToDeviceManager];
    goto LABEL_14;
  }

  [objc_msgSend(MEMORY[0x277D2C9D8] "copySharedDeviceManager")];
  v7 = [objc_alloc(MEMORY[0x277D2C9E8]) initWithDeviceIdentifier:self->_nrDeviceID delegate:self queue:self->_dispatchQueue];
  self->_nrMonitor = v7;
  if (!v7)
  {
    [APHTTPProxyMonitorClient registerToDeviceManager];
    goto LABEL_14;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

uint64_t __51__APHTTPProxyMonitorClient_registerToDeviceManager__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return __51__APHTTPProxyMonitorClient_registerToDeviceManager__block_invoke_cold_1();
  }

  return result;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277D2C9D8] "copySharedDeviceManager")];
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  self->_nrMonitor = 0;
  self->_nrDeviceID = 0;
  handleProxyParametersChanged = self->_handleProxyParametersChanged;
  if (handleProxyParametersChanged)
  {
    _Block_release(handleProxyParametersChanged);
    self->_handleProxyParametersChanged = 0;
  }

  v5.receiver = self;
  v5.super_class = APHTTPProxyMonitorClient;
  [(APHTTPProxyMonitorClient *)&v5 dealloc];
}

- (void)deviceInfoDidChange:(id)a3 deviceInfo:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = [a4 proxyInfo];
  if (a4)
  {
    v8 = v7;
    if (v7)
    {
      if ([objc_msgSend(v7 "httpConnectURLs")])
      {
        if (!Mutable)
        {
          [APHTTPProxyMonitorClient deviceInfoDidChange:deviceInfo:];
          return;
        }

        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [v8 httpConnectURLs];
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [MEMORY[0x277CCACE0] componentsWithString:*(*(&v17 + 1) + 8 * i)];
              if (v14)
              {
                v15 = v14;
                if (!self->_hasDesiredSockAddr || ([v14 host], APSCFStringToSockAddr(), !SockAddrCompareAddr()))
                {
                  v16 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", objc_msgSend(v8, "httpConnectUserName"), objc_msgSend(v8, "httpConnectPassword")), "dataUsingEncoding:", 4), "base64EncodedStringWithOptions:", 0];
                  CFDictionarySetValue(Mutable, @"proxyUrl", [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@", objc_msgSend(v15, "scheme"), objc_msgSend(v15, "host")]);
                  CFDictionarySetValue(Mutable, @"proxyPort", [v15 port]);
                  CFDictionarySetValue(Mutable, @"proxyPsk", [v8 httpConnectPSK]);
                  CFDictionarySetValue(Mutable, @"proxyPskIdentity", [v8 httpConnectPSKIdentity]);
                  CFDictionarySetValue(Mutable, @"proxyAuthorization", [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", v16]);
                  if (gLogCategory_APHTTPProxyMonitorClient <= 30 && (gLogCategory_APHTTPProxyMonitorClient != -1 || _LogCategory_Initialize()))
                  {
                    [APHTTPProxyMonitorClient deviceInfoDidChange:deviceInfo:];
                  }

                  (*(self->_handleProxyParametersChanged + 2))();
                  goto LABEL_23;
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        if (gLogCategory_APHTTPProxyMonitorClient <= 90 && (gLogCategory_APHTTPProxyMonitorClient != -1 || _LogCategory_Initialize()))
        {
          [APHTTPProxyMonitorClient deviceInfoDidChange:deviceInfo:];
        }
      }

      else
      {
        [APHTTPProxyMonitorClient deviceInfoDidChange:deviceInfo:];
      }
    }

    else
    {
      [APHTTPProxyMonitorClient deviceInfoDidChange:deviceInfo:];
    }
  }

  else
  {
    [APHTTPProxyMonitorClient deviceInfoDidChange:deviceInfo:];
  }

LABEL_23:
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

- (APHTTPProxyMonitorClient)initWithCallback:(id)a3 forLink:(unsigned __int8)a4 forIP:(__CFString *)a5
{
  v5 = self;
  v11 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    APSLogErrorAt();
LABEL_4:

    return 0;
  }

  v9.receiver = self;
  v9.super_class = APHTTPProxyMonitorClient;
  v5 = [(APHTTPProxyMonitorClient *)&v9 init];
  if (v5)
  {
    v5->_handleProxyParametersChanged = _Block_copy(a3);
    v5->_hasDesiredSockAddr = APSCFStringToSockAddr() == 0;
    v5->_isWireless = a4;
    SNPrintF();
    v5->_dispatchQueue = dispatch_queue_create(label, 0);
    if ([(APHTTPProxyMonitorClient *)v5 registerToDeviceManager])
    {
      goto LABEL_4;
    }
  }

  return v5;
}

- (void)deviceIsRegisteredDidChange:(id)a3 isRegistered:(BOOL)a4
{
  if (!a4)
  {
    if ([(APHTTPProxyMonitorClient *)self registerToDeviceManager])
    {

      APSLogErrorAt();
    }

    else if (gLogCategory_APHTTPProxyMonitorClient <= 50 && (gLogCategory_APHTTPProxyMonitorClient != -1 || _LogCategory_Initialize()))
    {

      LogPrintF();
    }
  }
}

uint64_t __51__APHTTPProxyMonitorClient_registerToDeviceManager__block_invoke_cold_1()
{
  result = APSLogErrorAt();
  if (gLogCategory_APHTTPProxyMonitorClient <= 90)
  {
    if (gLogCategory_APHTTPProxyMonitorClient != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (void)deviceInfoDidChange:deviceInfo:.cold.3()
{
  if (gLogCategory_APHTTPProxyMonitorClient <= 90 && (gLogCategory_APHTTPProxyMonitorClient != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_8();
  }
}

- (void)deviceInfoDidChange:deviceInfo:.cold.4()
{
  if (gLogCategory_APHTTPProxyMonitorClient <= 60 && (gLogCategory_APHTTPProxyMonitorClient != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_8();
  }
}

- (void)deviceInfoDidChange:deviceInfo:.cold.5()
{
  if (gLogCategory_APHTTPProxyMonitorClient <= 60 && (gLogCategory_APHTTPProxyMonitorClient != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_8();
  }
}

- (void)deviceInfoDidChange:deviceInfo:.cold.6()
{
  if (gLogCategory_APHTTPProxyMonitorClient <= 60 && (gLogCategory_APHTTPProxyMonitorClient != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_8();
  }
}

@end