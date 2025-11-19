@interface iAP2EASession
- (BOOL)closeDataPipes;
- (BOOL)openPipeFromApp;
- (BOOL)openPipeToApp;
- (iAP2EASession)init;
- (iAP2EASession)initWithProtocol:(id)a3 endpointUUID:(id)a4 eaSessionUUID:(id)a5;
- (id)description;
- (int)_createListenSocket;
- (void)_createListenSocket;
- (void)dealloc;
- (void)shuttingDownSession;
@end

@implementation iAP2EASession

- (iAP2EASession)init
{
  [MEMORY[0x277CBEAD8] raise:@"IAPSession" format:@"must call initWithConnectionID:protocolID:sessionID:"];

  return 0;
}

- (iAP2EASession)initWithProtocol:(id)a3 endpointUUID:(id)a4 eaSessionUUID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v23.receiver = self;
  v23.super_class = iAP2EASession;
  v9 = [(iAP2EASession *)&v23 init];
  if (v9)
  {
    v10 = [v7 copy];
    endpointUUID = v9->_endpointUUID;
    v9->_endpointUUID = v10;

    v12 = [v8 copy];
    eaSessionUUID = v9->_eaSessionUUID;
    v9->_eaSessionUUID = v12;

    *&v9->_listenSock = -1;
    *&v9->_openPipeToAppAfterAccept = 0;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v14 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(iAP2EASession *)&v9->_endpointUUID initWithProtocol:v14 endpointUUID:v16 eaSessionUUID:v17, v18, v19, v20, v21];
    }

    if (initWithProtocol_endpointUUID_eaSessionUUID__onceToken != -1)
    {
      [iAP2EASession initWithProtocol:endpointUUID:eaSessionUUID:];
    }
  }

  return v9;
}

- (void)shuttingDownSession
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 8));
  OUTLINED_FUNCTION_6_0(&dword_2336F5000, a2, a3, "endpointUUID: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = iAP2EASession;
  [(iAP2EASession *)&v2 dealloc];
}

- (BOOL)openPipeToApp
{
  if (self->_sock < 0)
  {
    self->_openPipeToAppAfterAccept = 1;
  }

  else
  {
    [(iAP2EASession *)self _openPipeToApp];
  }

  return 1;
}

- (BOOL)openPipeFromApp
{
  if (self->_sock < 0)
  {
    self->_openPipeFromAppAfterAccept = 1;
  }

  else
  {
    [(iAP2EASession *)self _openPipeFromApp];
  }

  return 1;
}

- (BOOL)closeDataPipes
{
  listenSock = self->_listenSock;
  if ((listenSock & 0x80000000) == 0)
  {
    close(listenSock);
    self->_listenSock = -1;
  }

  sock = self->_sock;
  if ((sock & 0x80000000) == 0)
  {
    close(sock);
    self->_sock = -1;
  }

  return 1;
}

- (int)_createListenSocket
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__str = 0u;
  v12 = 0u;
  snprintf(__str, 0x100uLL, "%s/ea.%lu", "/var/mobile/Library/ExternalAccessory", [(NSString *)self->_eaSessionUUID hash]);
  unlink(__str);
  v2 = socket(1, 1, 0);
  if (v2 < 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v3 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v3 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [iAP2EASession _createListenSocket];
    }

    goto LABEL_29;
  }

  v10 = 0;
  memset(v9.sa_data, 0, 96);
  *&v9.sa_len = 362;
  __strlcpy_chk();
  if (bind(v2, &v9, 0x6Au))
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v3 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [iAP2EASession _createListenSocket];
    }

LABEL_28:
    v2 = -1;
LABEL_29:

    goto LABEL_30;
  }

  if (listen(v2, 5))
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v3 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v3 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [iAP2EASession _createListenSocket];
    }

    goto LABEL_28;
  }

LABEL_30:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = iAP2EASession;
  v4 = [(iAP2EASession *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ endpointUUID: %@", v4, self->_endpointUUID];

  return v5;
}

- (void)initWithProtocol:(uint64_t)a3 endpointUUID:(uint64_t)a4 eaSessionUUID:(uint64_t)a5 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_6_0(&dword_2336F5000, a2, a3, "endpointUUID: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_createListenSocket
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_0(&dword_2336F5000, v0, v1, "%s:%d can't create socket", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end