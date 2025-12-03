@interface ACCTransportPluginIOAccessoryManager
- (BOOL)isBatteryPackModeEnabled:(id)enabled;
- (BOOL)isPowerDuringSleepEnabled:(id)enabled;
- (BOOL)isPowerDuringSleepSupported:(id)supported;
- (BOOL)resetAccessoryBaseCurrent:(id)current;
- (BOOL)sendOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD;
- (int)CableType:(id)type;
- (int)USBModeForConnectionUUID:(id)d;
- (int)USBModeForEndpointUUID:(id)d;
- (unsigned)USBChargingVoltageInmV:(id)v;
- (unsigned)USBCurrentLimitBaseInmA:(id)a;
- (unsigned)USBCurrentLimitInmA:(id)a;
- (unsigned)USBCurrentLimitOffsetInmA:(id)a;
- (unsigned)accessoryChargingCurrentInmA:(id)a;
- (unsigned)sleepPowerCurrentLimitInmA:(id)a;
- (void)authStatusDidChange:(int)change forConnectionWithUUID:(id)d previousAuthStatus:(int)status authType:(int)type connectionIsAuthenticated:(BOOL)authenticated connectionWasAuthenticated:(BOOL)wasAuthenticated;
- (void)initPlugin;
- (void)resetLightningBusForEndpointWithUUID:(id)d;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation ACCTransportPluginIOAccessoryManager

- (void)initPlugin
{
  init_logging();
  v3.receiver = self;
  v3.super_class = ACCTransportPluginIOAccessoryManager;
  [(ACCTransportPlugin *)&v3 initPlugin];
}

- (void)startPlugin
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
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "Starting IOAccessoryManager transport plugin...", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = ACCTransportPluginIOAccessoryManager;
  [(ACCTransportPlugin *)&v8 startPlugin];
  v6 = +[ACCTransportIOAccessorySharedManager sharedManager];
  [v6 setDelegate:self];

  v7 = +[ACCTransportIOAccessorySharedManager sharedManager];
  [v7 startIOACCTransportManager];

  [(ACCTransportPlugin *)self setHandler:&__block_literal_global_8 forEndpointProperty:*MEMORY[0x277CFD2C8]];
  [(ACCTransportPluginIOAccessoryManager *)self setIsRunning:1];
}

void __51__ACCTransportPluginIOAccessoryManager_startPlugin__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  LODWORD(a4) = [a4 BOOLValue];
  v6 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v7 = v6;
  if (a4)
  {
    [v6 handleOpenEASessionNotification:v5];
  }

  else
  {
    [v6 handleCloseEASessionNotification:v5];
  }
}

- (void)stopPlugin
{
  [(ACCTransportPlugin *)self setHandler:0 forEndpointProperty:*MEMORY[0x277CFD2C8]];
  v3 = +[ACCTransportIOAccessorySharedManager sharedManager];
  [v3 stopIOACCTransportManager];

  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  [v4 setDelegate:0];

  v8.receiver = self;
  v8.super_class = ACCTransportPluginIOAccessoryManager;
  [(ACCTransportPlugin *)&v8 stopPlugin];
  [(ACCTransportPluginIOAccessoryManager *)self setIsRunning:0];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v5 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "Stopped IOAccessoryManager plugin!", v7, 2u);
  }
}

- (BOOL)sendOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 1;
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
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412802;
    v17 = dataCopy;
    v18 = 2112;
    v19 = iDCopy;
    v20 = 2112;
    v21 = dCopy;
    _os_log_debug_impl(&dword_233656000, v12, OS_LOG_TYPE_DEBUG, "Plugin sending outgoing data %@ for connection UUID: %@ endpoint UUID: %@", &v16, 0x20u);
  }

  v13 = +[ACCTransportIOAccessorySharedManager sharedManager];
  [v13 transmitData:dataCopy forEndpointUUID:dCopy];

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)authStatusDidChange:(int)change forConnectionWithUUID:(id)d previousAuthStatus:(int)status authType:(int)type connectionIsAuthenticated:(BOOL)authenticated connectionWasAuthenticated:(BOOL)wasAuthenticated
{
  wasAuthenticatedCopy = wasAuthenticated;
  authenticatedCopy = authenticated;
  v72 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 1;
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
    v16 = *gLogObjects;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = "NO";
    *buf = 138413570;
    v61 = dCopy;
    if (authenticatedCopy)
    {
      v18 = "YES";
    }

    else
    {
      v18 = "NO";
    }

    v62 = 1024;
    changeCopy4 = change;
    if (wasAuthenticatedCopy)
    {
      v17 = "YES";
    }

    v64 = 1024;
    typeCopy2 = status;
    v66 = 1024;
    typeCopy = type;
    v68 = 2080;
    v69 = v18;
    v70 = 2080;
    v71 = v17;
    _os_log_impl(&dword_233656000, v16, OS_LOG_TYPE_INFO, "authStatusDidChange handler!\nconnectionUUID: %@, authStatus: %{coreacc:ACCAuthInfo_Status_t}d, previousAuthStatus: %{coreacc:ACCAuthInfo_Status_t}d, authType: %{coreacc:ACCAuthInfo_Type_t}d, connectionIsAuthenticated: %s, connectionWasAuthenticated: %s", buf, 0x32u);
  }

  if (type <= 2)
  {
    if (type != 1)
    {
      if (type == 2)
      {
        v19 = +[ACCTransportIOAccessorySharedManager sharedManager];
        delegate = [v19 delegate];
        v21 = [delegate connectionTypeForConnectionWithUUID:dCopy];
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v22 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v22 = MEMORY[0x277D86220];
          v41 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          v61 = dCopy;
          v62 = 1024;
          changeCopy4 = change;
          v64 = 1024;
          typeCopy2 = 2;
          v66 = 1024;
          typeCopy = v21;
          _os_log_impl(&dword_233656000, v22, OS_LOG_TYPE_INFO, "authStatusDidChange handler!\nconnectionUUID: %@, authStatus: %{coreacc:ACCAuthInfo_Status_t}d, authType: %{coreacc:ACCAuthInfo_Type_t}d, connectionType %{coreacc:ACCConnection_Type_t}d", buf, 0x1Eu);
        }

        if (v21 != 8)
        {
          goto LABEL_79;
        }

        v40 = [delegate certificateDataForConnectionWithUUID:dCopy];
        if (change == 2)
        {
          v42 = 2;
        }

        else
        {
          v42 = 1;
        }

        v43 = v19;
        v44 = v40;
        v45 = 0xFFFFFFFFLL;
        v46 = dCopy;
        v47 = 8;
        goto LABEL_77;
      }

      goto LABEL_80;
    }

LABEL_24:
    v19 = +[ACCTransportIOAccessorySharedManager sharedManager];
    delegate2 = [v19 delegate];
    v23 = [delegate2 connectionTypeForConnectionWithUUID:dCopy];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v24 = *gLogObjects;
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

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v61 = dCopy;
      v62 = 1024;
      changeCopy4 = change;
      v64 = 1024;
      typeCopy2 = type;
      v66 = 1024;
      typeCopy = v23;
      _os_log_impl(&dword_233656000, v24, OS_LOG_TYPE_INFO, "authStatusDidChange handler!\nconnectionUUID: %@, authStatus: %{coreacc:ACCAuthInfo_Status_t}d, authType: %{coreacc:ACCAuthInfo_Type_t}d, connectionType %{coreacc:ACCConnection_Type_t}d", buf, 0x1Eu);
    }

    if (v23 > 6)
    {
      delegate = delegate2;
      goto LABEL_79;
    }

    delegate = delegate2;
    if (((1 << v23) & 0x5A) == 0)
    {
LABEL_79:

      goto LABEL_80;
    }

    v26 = [delegate2 certificateDataForConnectionWithUUID:dCopy];
    if ((change - 1) > 2)
    {
      v27 = 0;
    }

    else
    {
      v27 = dword_2336C0380[change - 1];
    }

    v54 = v26;
    v51 = dCopy;
    [v19 setFeaturesFromAuthStatus:v27 andAuthCert:? certType:? forConnectionUUID:? withConnectionType:?];
    allConnectionUUIDs = [(ACCTransportPlugin *)self allConnectionUUIDs];
    allObjects = [allConnectionUUIDs allObjects];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v31 = [allObjects countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v56;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v56 != v33)
          {
            objc_enumerationMutation(allObjects);
          }

          v35 = *(*(&v55 + 1) + 8 * i);
          if ([(ACCTransportPlugin *)self connectionTypeForConnectionWithUUID:v35]== 1)
          {
            v36 = [v19 digitalIDDataForUpstreamConnection:v35];
            bytes = [v36 bytes];
            v38 = [v36 length];
            if (bytes)
            {
              v39 = v38 == 6;
            }

            else
            {
              v39 = 0;
            }

            if (v39 && (*bytes & 0x38) == 0x18)
            {
              [v19 setFeaturesFromAuthStatus:v27 andAuthCert:v54 certType:0xFFFFFFFFLL forConnectionUUID:v35 withConnectionType:1];
            }
          }
        }

        v32 = [allObjects countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v32);
    }

    dCopy = v51;
    delegate = delegate2;
    v40 = v54;
LABEL_78:

    goto LABEL_79;
  }

  if (type == 4)
  {
    v19 = +[ACCTransportIOAccessorySharedManager sharedManager];
    delegate = [v19 delegate];
    v28 = [delegate connectionTypeForConnectionWithUUID:dCopy];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v29 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v29 = MEMORY[0x277D86220];
      v48 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v61 = dCopy;
      v62 = 1024;
      changeCopy4 = change;
      v64 = 1024;
      typeCopy2 = 4;
      v66 = 1024;
      typeCopy = v28;
      _os_log_impl(&dword_233656000, v29, OS_LOG_TYPE_INFO, "authStatusDidChange handler!\nconnectionUUID: %@, authStatus: %{coreacc:ACCAuthInfo_Status_t}d, authType: %{coreacc:ACCAuthInfo_Type_t}d, connectionType %{coreacc:ACCConnection_Type_t}d", buf, 0x1Eu);
    }

    if (v28 != 4)
    {
      goto LABEL_79;
    }

    v40 = [delegate certificateDataForConnectionWithUUID:dCopy];
    if (change == 2)
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }

    v43 = v19;
    v44 = v40;
    v45 = 2;
    v46 = dCopy;
    v47 = 4;
LABEL_77:
    [v43 setFeaturesFromAuthStatus:v42 andAuthCert:v44 certType:v45 forConnectionUUID:v46 withConnectionType:v47];
    goto LABEL_78;
  }

  if (type == 3)
  {
    goto LABEL_24;
  }

LABEL_80:

  v49 = *MEMORY[0x277D85DE8];
}

- (int)USBModeForConnectionUUID:(id)d
{
  dCopy = d;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v5 = [v4 USBModeForConnectionUUID:dCopy];

  return v5;
}

- (int)USBModeForEndpointUUID:(id)d
{
  dCopy = d;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v5 = [v4 USBModeForEndpointUUID:dCopy];

  return v5;
}

- (unsigned)USBCurrentLimitInmA:(id)a
{
  aCopy = a;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v5 = [v4 USBCurrentLimitInmA:aCopy];

  return v5;
}

- (unsigned)USBCurrentLimitBaseInmA:(id)a
{
  aCopy = a;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v5 = [v4 USBCurrentLimitBaseInmA:aCopy];

  return v5;
}

- (unsigned)USBCurrentLimitOffsetInmA:(id)a
{
  aCopy = a;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v5 = [v4 USBCurrentLimitOffsetInmA:aCopy];

  return v5;
}

- (unsigned)USBChargingVoltageInmV:(id)v
{
  vCopy = v;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v5 = [v4 USBChargingVoltageInmV:vCopy];

  return v5;
}

- (int)CableType:(id)type
{
  typeCopy = type;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v5 = [v4 CableType:typeCopy];

  return v5;
}

- (unsigned)sleepPowerCurrentLimitInmA:(id)a
{
  aCopy = a;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v5 = [v4 sleepPowerCurrentLimitInmA:aCopy];

  return v5;
}

- (BOOL)isPowerDuringSleepSupported:(id)supported
{
  supportedCopy = supported;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v5 = [v4 isPowerDuringSleepSupported:supportedCopy];

  return v5;
}

- (BOOL)isPowerDuringSleepEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v5 = [v4 isPowerDuringSleepEnabled:enabledCopy];

  return v5;
}

- (BOOL)isBatteryPackModeEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v5 = [v4 isBatteryPackModeEnabled:enabledCopy];

  return v5;
}

- (unsigned)accessoryChargingCurrentInmA:(id)a
{
  aCopy = a;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v5 = [v4 accessoryChargingCurrentInmA:aCopy];

  return v5;
}

- (BOOL)resetAccessoryBaseCurrent:(id)current
{
  currentCopy = current;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  v5 = [v4 resetAccessoryBaseCurrent:currentCopy];

  return v5;
}

- (void)resetLightningBusForEndpointWithUUID:(id)d
{
  dCopy = d;
  v4 = +[ACCTransportIOAccessorySharedManager sharedManager];
  [v4 resetLightningBusForEndpointWithUUID:dCopy];
}

@end