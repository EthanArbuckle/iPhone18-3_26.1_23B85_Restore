@interface ACCTransportIOAccessoryManager
- (BOOL)isBatteryPackModeEnabled;
- (BOOL)isPowerDuringSleepEnabled;
- (BOOL)isPowerDuringSleepSupported;
- (BOOL)resetAccessoryBaseCurrent;
- (BOOL)setAccessoryRequestedCurrent:(unsigned int)current;
- (BOOL)setAccessoryUsedCurrent:(unsigned int)current;
- (BOOL)setFeaturesFromAuthStatus:(int)status authCert:(id)cert certType:(int)type;
- (BOOL)setPowerDuringSleepEnabled:(BOOL)enabled;
- (BOOL)setUSBCurrentLimitBase:(unsigned int)base forceResponse:(BOOL)response;
- (BOOL)setUSBCurrentOffset:(int)offset;
- (BOOL)setUSBMode:(int)mode;
- (BOOL)supervisedTransportsRestricted;
- (NSNumber)inductiveLocalDeviceID;
- (NSSet)authCPChildPorts;
- (NSSet)configStreamChildPorts;
- (NSSet)eaProtocolChildPorts;
- (NSSet)ioAccessoryChildPorts;
- (NSSet)oobPairingChildPorts;
- (NSString)connectionUUID;
- (NSString)inductiveDeviceUID;
- (NSString)regionCode;
- (id)_connectionUUIDsForNotification;
- (int)USBCurrentLimitOffsetInmA;
- (int)_ACCPlatformUSBModeForIOAccessoryUSBConnectType:(int)type;
- (int)_IOAccUSBModeTypeForSetUSBMode:(int)mode;
- (int)_connectionTypeForPrimaryPort;
- (int)cableType;
- (int)getUSBMode;
- (unsigned)USBChargingVoltageInmV;
- (unsigned)USBCurrentLimitBaseInmA;
- (unsigned)USBCurrentLimitInmA;
- (unsigned)accessoryChargingCurrentInmA;
- (unsigned)accessoryPowerModeCurrentLimitInmA:(int)a;
- (unsigned)sleepPowerCurrentLimitInmA;
- (void)USBChargingVoltageInmV;
- (void)USBCurrentLimitBaseInmA;
- (void)USBCurrentLimitInmA;
- (void)USBCurrentLimitOffsetInmA;
- (void)_clearAccessoryInfo;
- (void)_connectionTypeForPrimaryPort;
- (void)_connectionUUIDsForNotification;
- (void)_handleNotificationUarpEndUpdateForModel:(id)model;
- (void)_handleNotificationUarpStagingStatusForModel:(id)model state:(unint64_t)state;
- (void)_handleNotificationUarpStartUpdateForModel:(id)model;
- (void)_handleRegisterationForUarpActivityForModel:(id)model shouldRegister:(BOOL)register;
- (void)_handleUartActivityTimeout;
- (void)_kickTimerForUarpActivityForModel:(id)model;
- (void)_pokeResistorID;
- (void)_processAccessoryInfo;
- (void)_registerForBatteryNotifications;
- (void)_registerForIOAccessoryIDBusHIDDevice;
- (void)_registerForIOAccessoryManagerInterestNotifications;
- (void)_sendNotification:(id)notification;
- (void)_stopAuthTimer;
- (void)_stopTimerForUarpActivityForModel:(id)model;
- (void)_updateInductiveInfo:(BOOL)info;
- (void)addIOAccessoryChildPort:(id)port;
- (void)cableType;
- (void)dealloc;
- (void)getUSBMode;
- (void)notifyDriverOfInductiveActivity:(BOOL)activity paused:(BOOL)paused;
- (void)removeIOAccessoryChildPort:(id)port;
- (void)resetAccessoryBaseCurrent;
- (void)setAccessoryPowerMode:(int)mode;
- (void)setConnectionUUID:(id)d;
- (void)setInductiveDeviceUID:(id)d;
- (void)setInductiveLocalDeviceID:(id)d;
- (void)setRegionCode:(id)code;
- (void)supervisedTransportsRestricted;
- (void)transportClassTerminated;
@end

@implementation ACCTransportIOAccessoryManager

- (void)_processAccessoryInfo
{
  v8 = *MEMORY[0x277D85DE8];
  *self;
  [a2 ioService];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

- (int)_connectionTypeForPrimaryPort
{
  if ([(ACCTransportIOAccessoryManager *)self bIsInductive])
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  [(ACCTransportIOAccessoryBase *)self upstreamManagerService];
  Type = IOAccessoryManagerGetType();
  if (Type == 6 || Type == 3)
  {
    v3 = 6;
  }

  primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
  switch(primaryPortNumber)
  {
    case 512:
      v3 = 4;
      break;
    case 257:
      v3 = 8;
      break;
    case 256:
      v3 = 3;
      break;
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v7 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager _connectionTypeForPrimaryPort];
  }

  return v3;
}

- (id)_connectionUUIDsForNotification
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
  if (connectionUUID)
  {
    [v3 addObject:connectionUUID];
  }

  if ([(ACCTransportIOAccessoryManager *)self isRootPort]&& [(ACCTransportIOAccessoryManager *)self _connectionTypeForPrimaryPort]!= 3)
  {
    v27 = connectionUUID;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v5 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager _connectionUUIDsForNotification];
    }

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v7 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager _connectionUUIDsForNotification];
    }

    v9 = +[ACCTransportIOAccessorySharedManager sharedManager];
    delegate = [v9 delegate];

    [delegate startSafeConnectionTransaction];
    [delegate allEndpointsUUIDs];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v32 = 0u;
    v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      v14 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [delegate connectionUUIDForEndpointWithUUID:*(*(&v29 + 1) + 8 * i)];
          v17 = [delegate connectionTypeForConnectionWithUUID:v16];
          if (v17 == 6 || v17 == 1)
          {
            v19 = v17;
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
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v35 = v20;
                *&v35[8] = 1024;
                *&v35[10] = v21;
                _os_log_error_impl(&dword_233656000, v14, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v23 = v14;
              v24 = v14;
            }

            else
            {
              v24 = *(gLogObjects + 24);
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              *v35 = v19;
              *&v35[4] = 2112;
              *&v35[6] = v16;
              _os_log_impl(&dword_233656000, v24, OS_LOG_TYPE_DEFAULT, "Found %{coreacc:ACCConnection_Type_t}d connectionType, need to send notification for connectionUUID %@", buf, 0x12u);
            }

            [v3 addObject:v16];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    [delegate stopSafeConnectionTransaction];

    connectionUUID = v27;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)connectionUUID
{
  [(NSLock *)self->_propertyLock lock];
  if (self->_connectionUUID)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithString:?];
  }

  else
  {
    v3 = 0;
  }

  [(NSLock *)self->_propertyLock unlock];

  return v3;
}

void __52__ACCTransportIOAccessoryManager_initWithIOService___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = +[ACCTransportIOAccessorySharedManager sharedManager];
    v4 = [v3 delegate];

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v5 = *(gLogObjects + 24);
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
      v7 = *(a1 + 48);
      v8 = *(*(a1 + 32) + 156);
      *buf = 67109376;
      v21 = v7;
      v22 = 1024;
      v23 = v8;
      _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "AppleIDBus auth timeout completed for IOAccMgr service:%d, connectionType:%{coreacc:ACCConnection_Type_t}d", buf, 0xEu);
    }

    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 connectionUUID];
    v11 = [v4 setAuthenticationStatus:3 andCertificateData:0 authCTA:0 forConnectionWithUUID:v10];

    if ((v11 & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v12 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v12 = MEMORY[0x277D86220];
        v13 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __52__ACCTransportIOAccessoryManager_initWithIOService___block_invoke_cold_3();
      }
    }

    v14 = objc_loadWeakRetained((a1 + 40));
    [v14 setFeaturesFromAuthStatus:4 authCert:0 certType:0xFFFFFFFFLL];

    v15 = *(*(a1 + 32) + 156);
    if (v15 != 1 && v15 != 8)
    {
      v16 = acc_userNotifications_accessoryNotSupported();
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(a1 + 48)];
      [v16 setGroupIdentifier:v17];

      v18 = +[ACCUserNotificationManager sharedManager];
      [v18 presentNotification:v16 completionHandler:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __52__ACCTransportIOAccessoryManager_initWithIOService___block_invoke_48(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
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
      [ACCTransportIOAccessoryOOBPairing dealloc];
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
    v7 = 136315138;
    v8 = "[ACCTransportIOAccessoryManager initWithIOService:]_block_invoke";
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "%s: uarpStagingStatusActivityTimer fired!", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUartActivityTimeout];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v20 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
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
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "deallocating manager with service %d", buf, 8u);
  }

  [(NSMutableSet *)self->_mutableioAccessoryChildPorts removeAllObjects];
  mutableioAccessoryChildPorts = self->_mutableioAccessoryChildPorts;
  self->_mutableioAccessoryChildPorts = 0;

  [(NSMutableSet *)self->_mutableioAccessoryEAChildPorts removeAllObjects];
  mutableioAccessoryEAChildPorts = self->_mutableioAccessoryEAChildPorts;
  self->_mutableioAccessoryEAChildPorts = 0;

  [(NSMutableSet *)self->_mutableioAccessoryAuthCPChildPorts removeAllObjects];
  mutableioAccessoryAuthCPChildPorts = self->_mutableioAccessoryAuthCPChildPorts;
  self->_mutableioAccessoryAuthCPChildPorts = 0;

  [(NSMutableSet *)self->_mutableioAccessoryOOBPairingChildPorts removeAllObjects];
  mutableioAccessoryOOBPairingChildPorts = self->_mutableioAccessoryOOBPairingChildPorts;
  self->_mutableioAccessoryOOBPairingChildPorts = 0;

  [(NSMutableSet *)self->_mutableioAccessoryConfigStreamChildPorts removeAllObjects];
  mutableioAccessoryConfigStreamChildPorts = self->_mutableioAccessoryConfigStreamChildPorts;
  self->_mutableioAccessoryConfigStreamChildPorts = 0;

  if (self->_authTimerAccessory)
  {
    [(ACCTransportIOAccessoryManager *)self _stopAuthTimer];
    dispatch_source_cancel(self->_authTimerAccessory);
    authTimerAccessory = self->_authTimerAccessory;
    self->_authTimerAccessory = 0;
  }

  notificationUarpStagingStatusActivityTimer = self->_notificationUarpStagingStatusActivityTimer;
  if (notificationUarpStagingStatusActivityTimer)
  {
    dispatch_source_set_timer(notificationUarpStagingStatusActivityTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_cancel(self->_notificationUarpStagingStatusActivityTimer);
    v13 = self->_notificationUarpStagingStatusActivityTimer;
    self->_notificationUarpStagingStatusActivityTimer = 0;
  }

  [(ACCTransportIOAccessoryManager *)self setAccessoryPowerMode:1];
  accessoryInfoLock = self->_accessoryInfoLock;
  self->_accessoryInfoLock = 0;

  propertyLock = self->_propertyLock;
  self->_propertyLock = 0;

  v17.receiver = self;
  v17.super_class = ACCTransportIOAccessoryManager;
  [(ACCTransportIOAccessoryBase *)&v17 dealloc];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)transportClassTerminated
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_authTimerAccessory)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 4;
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
      v5 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "IOAccessoryManager canceling auth timer for service %d", buf, 8u);
    }

    [(ACCTransportIOAccessoryManager *)self _stopAuthTimer];
    dispatch_source_cancel(self->_authTimerAccessory);
    authTimerAccessory = self->_authTimerAccessory;
    self->_authTimerAccessory = 0;
  }

  notificationUarpStagingStatusActivityTimer = self->_notificationUarpStagingStatusActivityTimer;
  if (notificationUarpStagingStatusActivityTimer)
  {
    dispatch_source_set_timer(notificationUarpStagingStatusActivityTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_cancel(self->_notificationUarpStagingStatusActivityTimer);
    v8 = self->_notificationUarpStagingStatusActivityTimer;
    self->_notificationUarpStagingStatusActivityTimer = 0;
  }

  v10.receiver = self;
  v10.super_class = ACCTransportIOAccessoryManager;
  [(ACCTransportIOAccessoryBase *)&v10 transportClassTerminated];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)addIOAccessoryChildPort:(id)port
{
  portCopy = port;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager addIOAccessoryChildPort:portCopy];
  }

  mutableioAccessoryChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryChildPorts];
  [mutableioAccessoryChildPorts addObject:portCopy];

  if ([portCopy ioServiceClassType] == 2)
  {
    mutableioAccessoryEAChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryEAChildPorts];
    [mutableioAccessoryEAChildPorts addObject:portCopy];
  }

  if ([portCopy ioServiceClassType] == 3)
  {
    mutableioAccessoryAuthCPChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryAuthCPChildPorts];
    [mutableioAccessoryAuthCPChildPorts addObject:portCopy];
  }

  if ([portCopy ioServiceClassType] == 4)
  {
    mutableioAccessoryOOBPairingChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryOOBPairingChildPorts];
    [mutableioAccessoryOOBPairingChildPorts addObject:portCopy];
  }

  if ([portCopy ioServiceClassType] == 6)
  {
    mutableioAccessoryConfigStreamChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryConfigStreamChildPorts];
    [mutableioAccessoryConfigStreamChildPorts addObject:portCopy];
  }

  [(ACCTransportIOAccessoryManager *)self _pokeResistorID];
}

- (void)removeIOAccessoryChildPort:(id)port
{
  v17 = *MEMORY[0x277D85DE8];
  portCopy = port;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager removeIOAccessoryChildPort:portCopy];
  }

  mutableioAccessoryChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryChildPorts];
  [mutableioAccessoryChildPorts removeObject:portCopy];

  if ([portCopy ioServiceClassType] == 2)
  {
    mutableioAccessoryEAChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryEAChildPorts];
    [mutableioAccessoryEAChildPorts removeObject:portCopy];
  }

  if ([portCopy ioServiceClassType] == 3)
  {
    mutableioAccessoryAuthCPChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryAuthCPChildPorts];
    [mutableioAccessoryAuthCPChildPorts removeObject:portCopy];

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v11 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16[0] = 67109120;
      v16[1] = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "Stop auth timer on AuthCP service removal, for IOAccessoryManager service %d", v16, 8u);
    }

    [(ACCTransportIOAccessoryManager *)self _stopAuthTimer];
  }

  if ([portCopy ioServiceClassType] == 4)
  {
    mutableioAccessoryOOBPairingChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryOOBPairingChildPorts];
    [mutableioAccessoryOOBPairingChildPorts removeObject:portCopy];
  }

  if ([portCopy ioServiceClassType] == 6)
  {
    mutableioAccessoryConfigStreamChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryConfigStreamChildPorts];
    [mutableioAccessoryConfigStreamChildPorts removeObject:portCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)setFeaturesFromAuthStatus:(int)status authCert:(id)cert certType:(int)type
{
  v131 = *MEMORY[0x277D85DE8];
  certCopy = cert;
  ioService = [(ACCTransportIOAccessoryBase *)self ioService];
  CFProperty = IORegistryEntryCreateCFProperty(ioService, @"IOAccessoryManagerInductiveFwMode", *MEMORY[0x277CBECE8], 0);
  valuePtr = 3;
  if (CFProperty)
  {
    v10 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
    CFRelease(v10);
  }

  if (self->_authTimerAccessory)
  {
    [(ACCTransportIOAccessoryManager *)self _stopAuthTimer];
  }

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

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v120 = type;
    _os_log_impl(&dword_233656000, v11, OS_LOG_TYPE_DEFAULT, "setFeaturesFromAuthStatus: certType %d", buf, 8u);
  }

  if (type == 3)
  {
    v13 = MFAACreateDEVNCertCapsForCable();
  }

  else
  {
    v13 = MFAACreateCapsFromAuthCert();
  }

  v14 = v13;
  v114 = MFAACertificateAuthVersionNumber();
  v115 = certCopy;
  if (v14)
  {
    v113 = *v14;
  }

  else
  {
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
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v120 = type;
      _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, "setFeaturesFromAuthStatus: certType %d, certCaps: NONE", buf, 8u);
    }

    v113 = 0;
  }

  v17 = MFAACanReceiveInductivePower();
  v18 = acc_userDefaults_copyIntegerForKey(@"OverrideCanReceiveInductivePowerOID");
  v19 = acc_policies_supportInductivePowerTX(v18, v17);
  if (type == -1)
  {
    type = mfaa_certificateManager_determineCertificateType();
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

    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *v120 = "[ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:]";
      *&v120[8] = 1024;
      *v121 = -1;
      *&v121[4] = 1024;
      *v122 = type;
      _os_log_impl(&dword_233656000, v20, OS_LOG_TYPE_INFO, "%s: certType %d -> %d", buf, 0x18u);
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
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v22 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
    bAccConnected = [(ACCTransportIOAccessoryManager *)self bAccConnected];
    bIsInductivePowerToAccessory = self->_bIsInductivePowerToAccessory;
    bIsInductive = self->_bIsInductive;
    *buf = 67111680;
    *v120 = primaryPortNumber;
    *&v120[4] = 1024;
    *&v120[6] = status;
    *v121 = 1024;
    *&v121[2] = type;
    *v122 = 1024;
    *&v122[2] = ioService2;
    *v123 = 1024;
    *&v123[2] = bAccConnected;
    LOWORD(v124) = 1024;
    *(&v124 + 2) = bIsInductivePowerToAccessory;
    HIWORD(v124) = 1024;
    *v125 = bIsInductive;
    *&v125[4] = 1024;
    *v126 = valuePtr;
    *&v126[4] = 1024;
    *v127 = v17;
    *&v127[4] = 1024;
    v128 = v18;
    v129 = 1024;
    v130 = v19;
    _os_log_impl(&dword_233656000, v22, OS_LOG_TYPE_DEFAULT, "setFeaturesFromAuthStatus: [%d] authStatus %d, certType %d, ioService %d, bAccConnected %d, _bIsInductivePowerToAccessory %d, _bIsInductive %d, inductiveFwMode %d, certAllowPowerOut %d, override %d, supportInductivePowerTX %d", buf, 0x44u);
  }

  if ((valuePtr != 1 || !self->_bIsInductive) | v19 & 1)
  {
    v29 = 0;
    v30 = 0xFFFF;
    v31 = 0x7FFFFFFF;
    v32 = 0x2812FE000uLL;
    if (status == 1 || status == 4)
    {
      v36 = 0;
LABEL_81:
      v34 = 0x2812FE000uLL;
      goto LABEL_82;
    }

    if (status == 2)
    {
      if (![(ACCTransportIOAccessoryManager *)self bAccConnected])
      {
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v33 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v33 = MEMORY[0x277D86220];
          v42 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          primaryPortNumber2 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
          ioService3 = [(ACCTransportIOAccessoryBase *)self ioService];
          *buf = 67109376;
          *v120 = primaryPortNumber2;
          *&v120[4] = 1024;
          *&v120[6] = ioService3;
          _os_log_impl(&dword_233656000, v33, OS_LOG_TYPE_DEFAULT, "[%d] bAccConnected for service %d is false, but auth has passed", buf, 0xEu);
        }

        [(ACCTransportIOAccessoryManager *)self setBAccConnected:1];
        v32 = 0x2812FE000uLL;
      }

      if (self->_bIsInductivePowerToAccessory)
      {
        v30 = 448;
        v36 = 65087;
LABEL_80:
        v31 = 0x7FFFFFFF;
        status = 2;
        v29 = 1;
        goto LABEL_81;
      }

      if (self->_bIsInductive)
      {
        v87 = 449;
        v88 = 65086;
        if (type != 2 && type != 7)
        {
          if (MFAACanChargeInductive())
          {
            v87 = 449;
            v88 = 65086;
          }

          else
          {
            if (gLogObjects && gNumLogObjects >= 4)
            {
              v99 = *(gLogObjects + 24);
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [ACCTransportIOAccessoryOOBPairing dealloc];
              }

              v99 = MEMORY[0x277D86220];
              v111 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:? authCert:? certType:?];
            }

            v87 = 465;
            v88 = 65070;
            v32 = 0x2812FE000;
          }
        }

        v112 = type == 2;
        if (type == 2)
        {
          v36 = v88 | 0x100;
        }

        else
        {
          v36 = v88;
        }

        if (v112)
        {
          v30 = v87 & 0xD1;
        }

        else
        {
          v30 = v87;
        }

        if (v19)
        {
          v30 &= 0x151u;
          v36 |= 0x80u;
        }

        goto LABEL_80;
      }

      if (v114 == 2)
      {
        v93 = MFAACertificateAuthV2Class();
        v34 = 0x2812FE000uLL;
        if (v93 == 4)
        {
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v94 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v94 = MEMORY[0x277D86220];
            v100 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            primaryPortNumber3 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
            *buf = 67109120;
            *v120 = primaryPortNumber3;
            _os_log_impl(&dword_233656000, v94, OS_LOG_TYPE_DEFAULT, "[%d] V2.0 Class4, don't revoke nor allow AdvancedCharging !", buf, 8u);
          }

          v98 = 449;
          v31 = 4;
          v32 = 0x2812FE000uLL;
        }

        else
        {
          v31 = v93;
          v98 = 465;
        }
      }

      else
      {
        v98 = 465;
        v31 = 0x7FFFFFFF;
        v34 = 0x2812FE000;
      }

      if (MFAACanChargeHighVoltage())
      {
        v102 = *(v34 + 3720);
        if (v102 && gNumLogObjects >= 4)
        {
          v103 = *(v102 + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v103 = MEMORY[0x277D86220];
          v105 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
        {
          primaryPortNumber4 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
          *buf = 67109120;
          *v120 = primaryPortNumber4;
          _os_log_impl(&dword_233656000, v103, OS_LOG_TYPE_DEFAULT, "[%d] HVC capable, allow AdvancedCharging !", buf, 8u);
        }

        v104 = 65086;
      }

      else
      {
        if (acc_userDefaults_BOOLForKey(@"DisableIAPHVCFixForAuth"))
        {
          v104 = 65070;
LABEL_248:
          v110 = MFAACanUseAccPwrUHPM();
          v36 = v104 | v110;
          if (v110)
          {
            v30 = v98 & 0x1FE;
          }

          else
          {
            v30 = v98;
          }

          if (MFAACanUseAccPwrLoV())
          {
            v30 &= ~0x40u;
            v36 |= 0x40u;
          }

          status = 2;
          v29 = 1;
          goto LABEL_82;
        }

        v107 = *(v34 + 3720);
        if (v107 && gNumLogObjects >= 4)
        {
          v103 = *(v107 + 24);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportIOAccessoryOOBPairing dealloc];
          }

          v103 = MEMORY[0x277D86220];
          v108 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
        {
          primaryPortNumber5 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
          *buf = 67109120;
          *v120 = primaryPortNumber5;
          _os_log_impl(&dword_233656000, v103, OS_LOG_TYPE_DEFAULT, "[%d] override caps and don't revoke nor allow AdvancedCharging !", buf, 8u);
        }

        v104 = 65070;
      }

      v98 = 449;
      v32 = 0x2812FE000;
      goto LABEL_248;
    }

    v34 = 0x2812FE000uLL;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v40 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v40 = MEMORY[0x277D86220];
      v41 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:];
    }

    v29 = 0;
    v36 = 0;
    v30 = 0;
  }

  else
  {
    v34 = 0x2812FE000uLL;
    v32 = 0x2812FE000uLL;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v35 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v35 = MEMORY[0x277D86220];
      v37 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      primaryPortNumber6 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
      v39 = self->_bIsInductive;
      *buf = 67110656;
      *v120 = primaryPortNumber6;
      *&v120[4] = 1024;
      *&v120[6] = v39;
      *v121 = 1024;
      *&v121[2] = valuePtr;
      *v122 = 1024;
      *&v122[2] = 1;
      *v123 = 1024;
      *&v123[2] = 0;
      LOWORD(v124) = 1024;
      *(&v124 + 2) = status;
      HIWORD(v124) = 1024;
      *v125 = 1;
      _os_log_impl(&dword_233656000, v35, OS_LOG_TYPE_DEFAULT, "setFeaturesFromAuthStatus: [%d] _bIsInductive %d, inductiveFwMode %d (TX %d), supportInductivePowerTX %d, force AuthStatus to Failed! %d -> %d", buf, 0x2Cu);
    }

    v29 = 0;
    v36 = 0;
    v30 = 0xFFFF;
    v31 = 0x7FFFFFFF;
    status = 1;
  }

LABEL_82:
  MFAADeallocAuthCertCaps();
  v45 = *(v34 + 3720);
  if (v45 && *(v32 + 3704) >= 4)
  {
    v46 = *(v45 + 24);
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
    if (v29)
    {
      v48 = "PASSED";
    }

    else
    {
      v48 = "FAILED";
    }

    primaryPortNumber7 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    ioService4 = [(ACCTransportIOAccessoryBase *)self ioService];
    *buf = 136316930;
    *v120 = v48;
    v32 = 0x2812FE000uLL;
    *&v120[8] = 1024;
    *v121 = primaryPortNumber7;
    *&v121[4] = 1024;
    *v122 = v114;
    *&v122[4] = 1024;
    *v123 = v31;
    *&v123[4] = 2048;
    v124 = v113;
    *v125 = 1024;
    *&v125[2] = v30;
    *v126 = 1024;
    *&v126[2] = v36;
    *v127 = 1024;
    *&v127[2] = ioService4;
    _os_log_impl(&dword_233656000, v46, OS_LOG_TYPE_DEFAULT, "AUTH [%s], [%d] ver %d / %x, authCertCaps0:%08llX -> ioAccFeatMaskRevoke:%08X, ioAccFeatMaskAllow:%08X, self.ioService %d\n", buf, 0x3Au);
  }

  connect = 0;
  ioService5 = [(ACCTransportIOAccessoryBase *)self ioService];
  v52 = IOServiceOpen(ioService5, *MEMORY[0x277D85F48], 0, &connect);
  if (!v52 && connect)
  {
    v53 = v115;
    if (v30 && IOAccessoryManagerRevokeFeatures())
    {
      v54 = *(v34 + 3720);
      if (v54 && *(v32 + 3704) >= 7)
      {
        v55 = *(v54 + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v55 = MEMORY[0x277D86220];
        v60 = MEMORY[0x277D86220];
      }

      v34 = 0x2812FE000uLL;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:];
      }

      v58 = 0;
      if (!v36)
      {
        goto LABEL_127;
      }
    }

    else
    {
      v58 = 1;
      if (!v36)
      {
LABEL_127:
        IOServiceClose(connect);
        goto LABEL_128;
      }
    }

    if (IOAccessoryManagerAllowFeatures())
    {
      v61 = *(v34 + 3720);
      if (v61 && *(v32 + 3704) >= 7)
      {
        v62 = *(v61 + 48);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v62 = MEMORY[0x277D86220];
        v63 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:];
      }

      v58 = 0;
    }

    goto LABEL_127;
  }

  v56 = *(v34 + 3720);
  v53 = v115;
  if (v56 && *(v32 + 3704) >= 7)
  {
    v57 = *(v56 + 48);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v57 = MEMORY[0x277D86220];
    v59 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    primaryPortNumber8 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    v96 = connect;
    ioService6 = [(ACCTransportIOAccessoryBase *)self ioService];
    *buf = 67109888;
    *v120 = primaryPortNumber8;
    *&v120[4] = 1024;
    *&v120[6] = v52;
    *v121 = 1024;
    *&v121[2] = v96;
    v32 = 0x2812FE000;
    *v122 = 1024;
    *&v122[2] = ioService6;
    _os_log_error_impl(&dword_233656000, v57, OS_LOG_TYPE_ERROR, "[%d] IOServiceOpen fail kernStatus:%02X, ioConnForService:%04X ioService:%d", buf, 0x1Au);
  }

  v58 = 0;
LABEL_128:
  if (self->_bIsInductivePowerToAccessory)
  {
    if (v29)
    {
      v64 = 4;
    }

    else
    {
      v64 = 2;
    }

    v65 = *(v34 + 3720);
    if (v65 && *(v32 + 3704) >= 4)
    {
      v66 = *(v65 + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v66 = MEMORY[0x277D86220];
      v67 = MEMORY[0x277D86220];
    }

    v34 = 0x2812FE000uLL;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      if (v29)
      {
        v68 = "PASSED";
      }

      else
      {
        v68 = "FAILED";
      }

      primaryPortNumber9 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
      ioService7 = [(ACCTransportIOAccessoryBase *)self ioService];
      *buf = 136315906;
      *v120 = v68;
      *&v120[8] = 1024;
      *v121 = primaryPortNumber9;
      *&v121[4] = 1024;
      *v122 = v64;
      *&v122[4] = 1024;
      *v123 = ioService7;
      _os_log_impl(&dword_233656000, v66, OS_LOG_TYPE_DEFAULT, "AUTH [%s], for AWC [%d], setting power mode %d, self.ioService %d", buf, 0x1Eu);
    }

    [(ACCTransportIOAccessoryManager *)self setAccessoryPowerMode:v64];
  }

  connectionType = self->_connectionType;
  v72 = acc_userDefaultsIapd_copyIntegerForKey(@"PretendBatteryLevel");
  v73 = !self->_bIsInductive;
  v74 = 1;
  if (!v73 && connectionType != 8)
  {
    v74 = acc_userDefaults_BOOLForKey(@"DisableInductiveAuthTTR") ^ 1;
    v73 = !self->_bIsInductive;
  }

  if (v73 || connectionType == 8)
  {
    v75 = acc_userDefaults_BOOLForKey(@"AuthTTRForAllTransports");
  }

  else
  {
    v75 = 1;
  }

  if ([(ACCTransportIOAccessoryManager *)self batteryChargeLevelPercent]>= 0x50)
  {
    if (v72)
    {
      v76 = v72 < 80;
    }

    else
    {
      v76 = 0;
    }

    v77 = v76;
    v74 &= v77;
  }

  if ((v75 & v74) != 1)
  {
    if (status != 4 && status != 1)
    {
      goto LABEL_208;
    }

    v80 = *(v34 + 3720);
    if (v80 && gNumLogObjects >= 4)
    {
      v81 = *(v80 + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v81 = MEMORY[0x277D86220];
      v82 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v120 = "[ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:]";
      _os_log_impl(&dword_233656000, v81, OS_LOG_TYPE_DEFAULT, "IOAccessoryManager:%s Skipped auth TTR!!!", buf, 0xCu);
    }

LABEL_207:

    goto LABEL_208;
  }

  if (status != 4)
  {
    if (status == 1)
    {
      v78 = *(v34 + 3720);
      if (v78 && gNumLogObjects >= 4)
      {
        v79 = *(v78 + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v79 = MEMORY[0x277D86220];
        v86 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
      {
        [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:];
      }

      if (acc_userDefaults_BOOLForKey(@"SysdiagnoseInsteadOfAuthTTR"))
      {
        acc_sysdiagnose_InitiateAuthFailureSysdiagnose();
      }

      else
      {
        acc_tapToRadar_InitiateAuthFailureTTR();
      }
    }

    goto LABEL_208;
  }

  v83 = acc_userDefaults_BOOLForKey(@"EnableAuthTimeoutTTR");
  v84 = *(v34 + 3720);
  if (!v83)
  {
    if (v84 && gNumLogObjects >= 7)
    {
      v81 = *(v84 + 48);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v81 = MEMORY[0x277D86220];
      v90 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:];
    }

    goto LABEL_207;
  }

  if (v84 && gNumLogObjects >= 4)
  {
    v85 = *(v84 + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v85 = MEMORY[0x277D86220];
    v89 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager setFeaturesFromAuthStatus:authCert:certType:];
  }

  if (acc_userDefaults_BOOLForKey(@"SysdiagnoseInsteadOfAuthTTR"))
  {
    acc_sysdiagnose_InitiateAuthTimeoutSysdiagnose();
  }

  else
  {
    acc_tapToRadar_InitiateAuthTimeoutTTR();
  }

LABEL_208:

  v91 = *MEMORY[0x277D85DE8];
  return v58;
}

- (BOOL)setUSBMode:(int)mode
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(ACCTransportIOAccessoryManager *)self _IOAccUSBModeTypeForSetUSBMode:?];
  ioConnect = self->super._ioConnect;
  v7 = IOAccessoryManagerConfigureUSBMode();
  v8 = v7;
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v7)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 67109632;
      modeCopy2 = mode;
      v18 = 1024;
      v19 = v5;
      v20 = 1024;
      ioService = v8;
      _os_log_error_impl(&dword_233656000, v11, OS_LOG_TYPE_ERROR, "ERROR - IOAccessoryManagerConfigureUSBMode usbMode=%d usbModeType (IOAccessoryUSBModeType) %d failed 0x%X", &v16, 0x14u);
    }
  }

  else
  {
    if (v10)
    {
      v11 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v11 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = 67109632;
      modeCopy2 = mode;
      v18 = 1024;
      v19 = v5;
      v20 = 1024;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_debug_impl(&dword_233656000, v11, OS_LOG_TYPE_DEBUG, "successfully set USB Mode %d (IOAccessoryUSBModeType %d) for service %d", &v16, 0x14u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8 == 0;
}

- (int)getUSBMode
{
  v20 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  USBConnectType = IOAccessoryManagerGetUSBConnectType();
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (USBConnectType)
  {
    if (v5)
    {
      v6 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager getUSBMode];
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      v15 = -1;
      v16 = 1024;
      v17 = 0;
      v18 = 1024;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_debug_impl(&dword_233656000, v6, OS_LOG_TYPE_DEBUG, "USB Connect %d, usbConnectActive %d, for service %d", buf, 0x14u);
    }
  }

  v9 = [(ACCTransportIOAccessoryManager *)self _ACCPlatformUSBModeForIOAccessoryUSBConnectType:0xFFFFFFFFLL];
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v10 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager getUSBMode];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)setUSBCurrentOffset:(int)offset
{
  ioConnect = self->super._ioConnect;
  v4 = IOAccessoryManagerSetUSBCurrentOffset();
  v5 = v4;
  if (gLogObjects)
  {
    v6 = gNumLogObjects <= 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v4)
  {
    if (v7)
    {
      v8 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setUSBCurrentOffset:];
    }
  }

  else
  {
    if (v7)
    {
      v8 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager setUSBCurrentOffset:];
    }
  }

  return v5 == 0;
}

- (BOOL)setUSBCurrentLimitBase:(unsigned int)base forceResponse:(BOOL)response
{
  responseCopy = response;
  v35 = *MEMORY[0x277D85DE8];
  ioConnect = self->super._ioConnect;
  v8 = IOAccessoryManagerSetUSBCurrentLimitBase();
  v9 = v8;
  if (gLogObjects)
  {
    v10 = gNumLogObjects <= 3;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v8)
  {
    if (v11)
    {
      v12 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setUSBCurrentLimitBase:forceResponse:];
    }
  }

  else
  {
    if (v11)
    {
      v12 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v12 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager setUSBCurrentLimitBase:forceResponse:];
    }
  }

  if ((platform_systemInfo_isLightning() & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v15 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v15 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      currentLimitBaseInmA = self->_currentLimitBaseInmA;
      currentLimitBaseInmAValid = self->_currentLimitBaseInmAValid;
      *buf = 67110144;
      v26 = currentLimitBaseInmA;
      v27 = 1024;
      baseCopy = base;
      v29 = 1024;
      v30 = currentLimitBaseInmAValid;
      v31 = 1024;
      v32 = 1;
      v33 = 1024;
      v34 = responseCopy;
      _os_log_impl(&dword_233656000, v15, OS_LOG_TYPE_DEFAULT, "setUSBCurrentLimitBase: not lightning device, currentLimitBaseInmA %d -> %d, valid %d -> %d, forceResponse %d", buf, 0x20u);
    }

    if (responseCopy || self->_currentLimitBaseInmA != base)
    {
      self->_currentLimitBaseInmA = base;
      self->_currentLimitBaseInmAValid = 1;
    }

    else
    {
      v19 = self->_currentLimitBaseInmAValid;
      self->_currentLimitBaseInmAValid = 1;
      if (v19)
      {
        goto LABEL_37;
      }
    }

    v20 = dispatch_time(0, 10000000);
    notificationPortQueue = self->super._notificationPortQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__ACCTransportIOAccessoryManager_setUSBCurrentLimitBase_forceResponse___block_invoke;
    block[3] = &unk_2789E8690;
    block[4] = self;
    dispatch_after(v20, notificationPortQueue, block);
  }

LABEL_37:
  result = v9 == 0;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __71__ACCTransportIOAccessoryManager_setUSBCurrentLimitBase_forceResponse___block_invoke(uint64_t a1)
{
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
      [ACCTransportIOAccessoryOOBPairing dealloc];
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
    *v6 = 0;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "setUSBCurrentLimitBase: auto generate kIOAccessoryManagerMessageUSBCurrentLimitChange", v6, 2u);
  }

  return [*(a1 + 32) _handleUSBCurrentLimitNotification];
}

- (unsigned)USBCurrentLimitInmA
{
  v29 = *MEMORY[0x277D85DE8];
  v21 = 0;
  [(ACCTransportIOAccessoryBase *)self ioService];
  USBCurrentLimit = IOAccessoryManagerGetUSBCurrentLimit();
  if (USBCurrentLimit)
  {
    v21 = 0;
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
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
      *buf = 67109890;
      *v23 = v21;
      *&v23[4] = 1024;
      *&v23[6] = USBCurrentLimit;
      *v24 = 2112;
      *&v24[2] = connectionUUID;
      v25 = 1024;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_error_impl(&dword_233656000, v8, OS_LOG_TYPE_ERROR, "ERROR - IOAccessoryManagerGetUSBCurrentLimit currentLimitBaseInmA=%d failed 0x%X for connectionUUID %@, self.ioService %d", buf, 0x1Eu);
    }

    if ((platform_systemInfo_isLightning() & 1) == 0 && self->_currentLimitBaseInmAValid)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v9 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v9 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        currentLimitBaseInmA = self->_currentLimitBaseInmA;
        *buf = 67109376;
        *v23 = v21;
        *&v23[4] = 1024;
        *&v23[6] = currentLimitBaseInmA;
        _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_INFO, "USBCurrentLimitInmA: not lightning device and _currentLimitBaseInmAValid, usbCurrentLimitInmA %d -> %d", buf, 0xEu);
      }

      v21 = self->_currentLimitBaseInmA;
    }
  }

  else
  {
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
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ACCTransportIOAccessoryManager *)&v21 USBCurrentLimitInmA];
    }

    platform_systemInfo_isLightning();
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v13 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v21;
    ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
    currentLimitBaseInmAValid = self->_currentLimitBaseInmAValid;
    *buf = 136316162;
    *v23 = "[ACCTransportIOAccessoryManager USBCurrentLimitInmA]";
    *&v23[8] = 1024;
    *v24 = USBCurrentLimit;
    *&v24[4] = 1024;
    *&v24[6] = v15;
    v25 = 1024;
    ioService = ioService2;
    v27 = 1024;
    v28 = currentLimitBaseInmAValid;
    _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "%s: status %x, IOAccessoryManagerGetUSBCurrentLimit -> %d for service %d, _currentLimitBaseInmAValid %d", buf, 0x24u);
  }

  result = v21;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)USBCurrentLimitBaseInmA
{
  v29 = *MEMORY[0x277D85DE8];
  v21 = 0;
  [(ACCTransportIOAccessoryBase *)self ioService];
  USBCurrentLimitBase = IOAccessoryManagerGetUSBCurrentLimitBase();
  if (USBCurrentLimitBase)
  {
    v21 = 0;
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
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
      *buf = 67109890;
      *v23 = v21;
      *&v23[4] = 1024;
      *&v23[6] = USBCurrentLimitBase;
      *v24 = 2112;
      *&v24[2] = connectionUUID;
      v25 = 1024;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_error_impl(&dword_233656000, v8, OS_LOG_TYPE_ERROR, "ERROR - IOAccessoryManagerGetUSBCurrentLimitBase currentLimitBaseInmA=%d failed 0x%X for connectionUUID %@, self.ioService %d", buf, 0x1Eu);
    }

    if ((platform_systemInfo_isLightning() & 1) == 0 && self->_currentLimitBaseInmAValid)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v9 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v9 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        currentLimitBaseInmA = self->_currentLimitBaseInmA;
        *buf = 67109376;
        *v23 = v21;
        *&v23[4] = 1024;
        *&v23[6] = currentLimitBaseInmA;
        _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_INFO, "USBCurrentLimitBaseInmA: not lightning device and _currentLimitBaseInmAValid, usbCurrentLimitBaseInmA %d -> %d", buf, 0xEu);
      }

      v21 = self->_currentLimitBaseInmA;
    }
  }

  else
  {
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
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ACCTransportIOAccessoryManager *)&v21 USBCurrentLimitBaseInmA];
    }

    platform_systemInfo_isLightning();
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v13 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v21;
    ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
    currentLimitBaseInmAValid = self->_currentLimitBaseInmAValid;
    *buf = 136316162;
    *v23 = "[ACCTransportIOAccessoryManager USBCurrentLimitBaseInmA]";
    *&v23[8] = 1024;
    *v24 = USBCurrentLimitBase;
    *&v24[4] = 1024;
    *&v24[6] = v15;
    v25 = 1024;
    ioService = ioService2;
    v27 = 1024;
    v28 = currentLimitBaseInmAValid;
    _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "%s: status %x, IOAccessoryManagerGetUSBCurrentLimitBase -> %d for service %d, _currentLimitBaseInmAValid %d", buf, 0x24u);
  }

  result = v21;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)USBCurrentLimitOffsetInmA
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0;
  [(ACCTransportIOAccessoryBase *)self ioService];
  USBCurrentLimitOffset = IOAccessoryManagerGetUSBCurrentLimitOffset();
  if (USBCurrentLimitOffset)
  {
    v15 = 0;
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
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ACCTransportIOAccessoryManager *)&v15 USBCurrentLimitOffsetInmA];
    }
  }

  else
  {
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
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ACCTransportIOAccessoryManager *)&v15 USBCurrentLimitOffsetInmA];
    }
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v9 = *(gLogObjects + 24);
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
    v11 = v15;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    *buf = 136315906;
    v17 = "[ACCTransportIOAccessoryManager USBCurrentLimitOffsetInmA]";
    v18 = 1024;
    v19 = USBCurrentLimitOffset;
    v20 = 1024;
    v21 = v11;
    v22 = 1024;
    v23 = ioService;
    _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "%s: status %x, IOAccessoryManagerGetUSBCurrentLimitOffset -> %d for service %d", buf, 0x1Eu);
  }

  result = v15;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)USBChargingVoltageInmV
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0;
  [(ACCTransportIOAccessoryBase *)self ioService];
  USBChargingVoltage = IOAccessoryManagerGetUSBChargingVoltage();
  if (USBChargingVoltage)
  {
    v15 = 0;
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
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ACCTransportIOAccessoryManager *)&v15 USBChargingVoltageInmV];
    }
  }

  else
  {
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
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ACCTransportIOAccessoryManager *)&v15 USBChargingVoltageInmV];
    }
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v9 = *(gLogObjects + 24);
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
    v11 = v15;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    *buf = 136315906;
    v17 = "[ACCTransportIOAccessoryManager USBChargingVoltageInmV]";
    v18 = 1024;
    v19 = USBChargingVoltage;
    v20 = 1024;
    v21 = v11;
    v22 = 1024;
    v23 = ioService;
    _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "%s: status %x, IOAccessoryManagerGetUSBChargingVoltage -> %d for service %d", buf, 0x1Eu);
  }

  result = v15;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)cableType
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = -1;
  [(ACCTransportIOAccessoryBase *)self ioService];
  USBConnectType = IOAccessoryManagerGetUSBConnectType();
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (USBConnectType)
  {
    if (v5)
    {
      v6 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager getUSBMode];
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      v15 = v13;
      v16 = 1024;
      v17 = 0;
      v18 = 1024;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_debug_impl(&dword_233656000, v6, OS_LOG_TYPE_DEBUG, "CableType: %d, usbConnectActive %d, for service %d", buf, 0x14u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v9 = *(gLogObjects + 24);
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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportIOAccessoryManager *)&v13 cableType];
  }

  result = v13;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)sleepPowerCurrentLimitInmA
{
  ioService = [(ACCTransportIOAccessoryBase *)self ioService];

  return MEMORY[0x2821F10D8](ioService);
}

- (BOOL)isPowerDuringSleepSupported
{
  v18 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  IsSupported = IOAccessoryManagerPowerDuringSleepIsSupported();
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
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v12 = 67109120;
    LODWORD(v13) = IsSupported != 0;
    _os_log_impl(&dword_233656000, v6, OS_LOG_TYPE_INFO, "powerDuringSleepIsSupported = %d", &v12, 8u);
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v7 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    v12 = 136315650;
    v13 = "[ACCTransportIOAccessoryManager isPowerDuringSleepSupported]";
    v14 = 1024;
    v15 = IsSupported != 0;
    v16 = 1024;
    v17 = ioService;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: IOAccessoryManagerPowerDuringSleepIsSupported -> %d for service %d", &v12, 0x18u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return IsSupported != 0;
}

- (BOOL)setPowerDuringSleepEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x277D85DE8];
  ioConnect = self->super._ioConnect;
  v6 = IOAccessoryManagerSetPowerDuringSleep();
  v7 = v6;
  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v6)
  {
    if (v9)
    {
      v10 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setPowerDuringSleepEnabled:];
    }
  }

  else
  {
    if (v9)
    {
      v10 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15[0] = 67109376;
      v15[1] = enabledCopy;
      v16 = 1024;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_INFO, "successfully set IOAccessoryManagerSetPowerDuringSleep enabled %d for service %d", v15, 0xEu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7 == 0;
}

- (BOOL)isPowerDuringSleepEnabled
{
  v9 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  PowerDuringSleep = IOAccessoryManagerGetPowerDuringSleep();
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
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
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = PowerDuringSleep != 0;
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_INFO, "powerDuringSleepIsEnabled = %d", v8, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return PowerDuringSleep != 0;
}

uint64_t __67__ACCTransportIOAccessoryManager_setBatteryPackMode_forceResponse___block_invoke(uint64_t a1)
{
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
      [ACCTransportIOAccessoryOOBPairing dealloc];
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
    *v6 = 0;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "setBatteryPackMode: auto generate kIOAccessoryManagerMessageUSBBatteryPackChange", v6, 2u);
  }

  return [*(a1 + 32) _handleBatteryPackNotification];
}

- (BOOL)isBatteryPackModeEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  BatteryPackMode = IOAccessoryManagerGetBatteryPackMode();
  v4 = BatteryPackMode != 0;
  if ((platform_systemInfo_isLightning() & 1) == 0 && self->_batteryPackModeEnabledValid)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v5 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      batteryPackModeEnabled = self->_batteryPackModeEnabled;
      v14 = 67109376;
      *v15 = BatteryPackMode != 0;
      *&v15[4] = 1024;
      *&v15[6] = batteryPackModeEnabled;
      _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_INFO, "setBatteryPackMode: not lightning device and batteryPackModeEnabledValid, batteryPackModeEnabled %d -> %d", &v14, 0xEu);
    }

    v4 = self->_batteryPackModeEnabled;
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    batteryPackModeEnabledValid = self->_batteryPackModeEnabledValid;
    v14 = 136315650;
    *v15 = "[ACCTransportIOAccessoryManager isBatteryPackModeEnabled]";
    *&v15[8] = 1024;
    v16 = v4;
    v17 = 1024;
    v18 = batteryPackModeEnabledValid;
    _os_log_impl(&dword_233656000, v10, OS_LOG_TYPE_DEFAULT, "%s: batteryPackModeIsEnabled = %d, _batteryPackModeEnabledValid %d", &v14, 0x18u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)setAccessoryRequestedCurrent:(unsigned int)current
{
  ioConnect = self->super._ioConnect;
  v4 = IOAccessoryManagerSetAccessoryRequestedCurrent();
  v5 = v4;
  if (gLogObjects)
  {
    v6 = gNumLogObjects <= 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v4)
  {
    if (v7)
    {
      v8 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setAccessoryRequestedCurrent:];
    }
  }

  else
  {
    if (v7)
    {
      v8 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager setAccessoryRequestedCurrent:];
    }
  }

  return v5 == 0;
}

- (BOOL)setAccessoryUsedCurrent:(unsigned int)current
{
  ioConnect = self->super._ioConnect;
  v4 = IOAccessoryManagerSetAccessoryUsedCurrent();
  v5 = v4;
  if (gLogObjects)
  {
    v6 = gNumLogObjects <= 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v4)
  {
    if (v7)
    {
      v8 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setAccessoryUsedCurrent:];
    }
  }

  else
  {
    if (v7)
    {
      v8 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ACCTransportIOAccessoryManager setAccessoryUsedCurrent:];
    }
  }

  return v5 == 0;
}

- (BOOL)resetAccessoryBaseCurrent
{
  ioConnect = self->super._ioConnect;
  v4 = IOAccessoryManagerRestoreUSBCurrentLimitBase();
  v5 = v4;
  if (gLogObjects)
  {
    v6 = gNumLogObjects <= 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v4)
  {
    if (v7)
    {
      v8 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager resetAccessoryBaseCurrent];
    }
  }

  else
  {
    if (v7)
    {
      v8 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v8 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ACCTransportIOAccessoryManager *)self resetAccessoryBaseCurrent];
    }
  }

  return v5 == 0;
}

- (unsigned)accessoryChargingCurrentInmA
{
  v15 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  ActivePowerMode = IOAccessoryManagerGetActivePowerMode();
  v4 = [(ACCTransportIOAccessoryManager *)self accessoryPowerModeCurrentLimitInmA:ActivePowerMode];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 67109632;
    v10[1] = v4;
    v11 = 1024;
    v12 = ActivePowerMode;
    v13 = 1024;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_debug_impl(&dword_233656000, v7, OS_LOG_TYPE_DEBUG, "successfully get accessoryChargingCurrentInmA %d with IOAccessoryPowerMode %d for service %d", v10, 0x14u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (unsigned)accessoryPowerModeCurrentLimitInmA:(int)a
{
  v16 = *MEMORY[0x277D85DE8];
  [(ACCTransportIOAccessoryBase *)self ioService];
  v5 = IOAccessoryManagerPowerModeCurrentLimit();
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
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11[0] = 67109632;
    v11[1] = v5;
    v12 = 1024;
    aCopy = a;
    v14 = 1024;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_debug_impl(&dword_233656000, v8, OS_LOG_TYPE_DEBUG, "successfully get IOAccessoryManagerPowerModeCurrentLimit %d with ACCPlatform_Power_Mode_t %d for service %d", v11, 0x14u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)supervisedTransportsRestricted
{
  if ([(ACCTransportIOAccessoryBase *)self ioService]&& (v3 = [(ACCTransportIOAccessoryBase *)self ioService], (CFProperty = IORegistryEntryCreateCFProperty(v3, @"SupervisedTransportsRestricted", *MEMORY[0x277CBECE8], 0)) != 0))
  {
    v5 = CFProperty != *MEMORY[0x277CBED10];
    CFRelease(CFProperty);
  }

  else
  {
    v5 = 1;
  }

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
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportIOAccessoryManager *)v5 supervisedTransportsRestricted];
  }

  return v5;
}

- (void)_registerForIOAccessoryManagerInterestNotifications
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerForBatteryNotifications
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerForIOAccessoryIDBusHIDDevice
{
  [(ACCTransportIOAccessoryManager *)self setIoAccessoryIDBusHIDDevicePortRef:IONotificationPortCreate(*MEMORY[0x277CD2898])];
  RunLoopSource = IONotificationPortGetRunLoopSource([(ACCTransportIOAccessoryManager *)self ioAccessoryIDBusHIDDevicePortRef]);
  if (RunLoopSource)
  {
    v4 = RunLoopSource;
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v4, *MEMORY[0x277CBF058]);
    v6 = IOServiceMatching("IOAccessoryIDBusHIDDevice");
    [v6 setObject:@"IOAccessoryBulkDataEndpoint" forKeyedSubscript:@"IOProviderClass"];
    if (IOServiceAddMatchingNotification([(ACCTransportIOAccessoryManager *)self ioAccessoryIDBusHIDDevicePortRef], "IOServiceFirstMatch", v6, __IOAccessoryIDBusHIDDeviceMatch, self, &self->_idbusHIDDeviceIterator))
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v7 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v7 = MEMORY[0x277D86220];
        v8 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryManager _registerForBatteryNotifications];
      }
    }

    else
    {
      __IOAccessoryIDBusHIDDeviceMatch(self, self->_idbusHIDDeviceIterator);
    }
  }
}

- (int)_IOAccUSBModeTypeForSetUSBMode:(int)mode
{
  if (mode >= 3)
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
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager _IOAccUSBModeTypeForSetUSBMode:];
    }

    v3 = 0;
  }

  else
  {
    v3 = dword_2336C0300[mode];
  }

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
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager _IOAccUSBModeTypeForSetUSBMode:];
  }

  return v3;
}

- (int)_ACCPlatformUSBModeForIOAccessoryUSBConnectType:(int)type
{
  if (type >= 6)
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
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager _ACCPlatformUSBModeForIOAccessoryUSBConnectType:];
    }

    v3 = -1;
  }

  else
  {
    v3 = dword_2336C030C[type];
  }

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
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportIOAccessoryManager _ACCPlatformUSBModeForIOAccessoryUSBConnectType:];
  }

  return v3;
}

void __70__ACCTransportIOAccessoryManager__handleResistorIDChangeNotification___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
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
      [ACCTransportIOAccessoryOOBPairing dealloc];
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
    v5 = *(a1 + 40);
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "Manager: Have no connection UUID for valid resistorID %d on resistor ID change notification. Tell shared Manager", v8, 8u);
  }

  v6 = +[ACCTransportIOAccessorySharedManager sharedManager];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 IOAccessoryManagerResistorIDChanged:*(a1 + 40) forManager:*(a1 + 32)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __70__ACCTransportIOAccessoryManager__handleResistorIDChangeNotification___block_invoke_76(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
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
      [ACCTransportIOAccessoryOOBPairing dealloc];
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
    v5 = *(a1 + 40);
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, "Manager: Still have no connection UUID for a valid resistorID %d that should have a connectionUUID. Tell shared Manager", v8, 8u);
  }

  v6 = +[ACCTransportIOAccessorySharedManager sharedManager];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 IOAccessoryManagerResistorIDChanged:*(a1 + 40) forManager:*(a1 + 32)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_sendNotification:(id)notification
{
  v38 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = +[ACCTransportIOAccessorySharedManager sharedManager];
  [v5 lockAccessoryPorts];

  _connectionUUIDsForNotification = [(ACCTransportIOAccessoryManager *)self _connectionUUIDsForNotification];
  if ([_connectionUUIDsForNotification count])
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v7 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(ACCTransportIOAccessoryManager *)notificationCopy _sendNotification:_connectionUUIDsForNotification, v7];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = _connectionUUIDsForNotification;
    obj = _connectionUUIDsForNotification;
    v9 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      v12 = *MEMORY[0x277CFD1B8];
      v13 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v35 = v12;
          v36 = v15;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v17 = gLogObjects;
          v18 = gNumLogObjects;
          if (gLogObjects)
          {
            v19 = gNumLogObjects < 4;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v32 = v17;
              v33 = 1024;
              LODWORD(v34) = v18;
              _os_log_error_impl(&dword_233656000, v13, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v20 = v13;
            v21 = v13;
          }

          else
          {
            v21 = *(gLogObjects + 24);
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v32 = notificationCopy;
            v33 = 2112;
            v34 = v16;
            _os_log_debug_impl(&dword_233656000, v21, OS_LOG_TYPE_DEBUG, "Sending %@ notification, notificationDict=%@", buf, 0x16u);
          }

          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:notificationCopy object:0 userInfo:v16];
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v10);
    }

    _connectionUUIDsForNotification = v25;
  }

  v23 = +[ACCTransportIOAccessorySharedManager sharedManager];
  [v23 unlockAccessoryPorts];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_updateInductiveInfo:(BOOL)info
{
  infoCopy = info;
  *&v59[5] = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    bIsInductive = self->_bIsInductive;
    *buf = 136315650;
    v57 = "[ACCTransportIOAccessoryManager _updateInductiveInfo:]";
    v58 = 1024;
    *v59 = bIsInductive;
    v59[2] = 1024;
    *&v59[3] = infoCopy;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: _bIsInductive %d, force %d", buf, 0x18u);
  }

  if (infoCopy || self->_bIsInductive)
  {
    [(NSRecursiveLock *)self->_accessoryInfoLock lock];
    valuePtr = 0;
    v50 = 0;
    if (infoCopy || ([(ACCTransportIOAccessoryManager *)self regionCode], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      v11 = *MEMORY[0x277CBECE8];
      CFProperty = IORegistryEntryCreateCFProperty(ioService, @"IOAccessoryManagerInductiveRegionCodeData", *MEMORY[0x277CBECE8], 0);
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v13 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v13 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v57 = "[ACCTransportIOAccessoryManager _updateInductiveInfo:]";
        v58 = 2112;
        *v59 = CFProperty;
        _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "%s: cfRegionCode = %@", buf, 0x16u);
      }

      if (CFProperty)
      {
        *buf = -21846;
        CFNumberGetValue(CFProperty, kCFNumberSInt16Type, buf);
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c", buf[1], buf[0]];
        [(ACCTransportIOAccessoryManager *)self setRegionCode:v15];

        CFRelease(CFProperty);
        if (infoCopy)
        {
          goto LABEL_29;
        }
      }

      else
      {
        [(ACCTransportIOAccessoryManager *)self setRegionCode:0];
        if (infoCopy)
        {
          goto LABEL_29;
        }
      }
    }

    inductiveDeviceType = [(ACCTransportIOAccessoryManager *)self inductiveDeviceType];

    if (inductiveDeviceType)
    {
      goto LABEL_41;
    }

    v11 = *MEMORY[0x277CBECE8];
LABEL_29:
    v17 = IORegistryEntryCreateCFProperty([(ACCTransportIOAccessoryBase *)self ioService], @"IOAccessoryManagerInductiveDeviceType", v11, 0);
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v18 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v57 = "[ACCTransportIOAccessoryManager _updateInductiveInfo:]";
      v58 = 2112;
      *v59 = v17;
      _os_log_impl(&dword_233656000, v18, OS_LOG_TYPE_DEFAULT, "%s: cfInductiveDeviceType = %@", buf, 0x16u);
    }

    if (v17)
    {
      CFNumberGetValue(v17, kCFNumberSInt16Type, &valuePtr);
      v20 = [(__CFNumber *)v17 copy];
      [(ACCTransportIOAccessoryManager *)self setInductiveDeviceType:v20];

      CFRelease(v17);
      if (infoCopy)
      {
        goto LABEL_43;
      }
    }

    else
    {
      [(ACCTransportIOAccessoryManager *)self setInductiveDeviceType:0];
      if (infoCopy)
      {
        goto LABEL_43;
      }
    }

LABEL_41:
    inductiveDeviceID = [(ACCTransportIOAccessoryManager *)self inductiveDeviceID];

    if (inductiveDeviceID)
    {
      goto LABEL_55;
    }

    v11 = *MEMORY[0x277CBECE8];
LABEL_43:
    v22 = IORegistryEntryCreateCFProperty([(ACCTransportIOAccessoryBase *)self ioService], @"IOAccessoryManagerInductiveDeviceID", v11, 0);
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v23 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v23 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v57 = "[ACCTransportIOAccessoryManager _updateInductiveInfo:]";
      v58 = 2112;
      *v59 = v22;
      _os_log_impl(&dword_233656000, v23, OS_LOG_TYPE_DEFAULT, "%s: cfInductiveDeviceID = %@", buf, 0x16u);
    }

    if (v22)
    {
      CFNumberGetValue(v22, kCFNumberSInt32Type, &v50);
      v25 = [(__CFNumber *)v22 copy];
      [(ACCTransportIOAccessoryManager *)self setInductiveDeviceID:v25];

      CFRelease(v22);
      if (infoCopy)
      {
        goto LABEL_56;
      }
    }

    else
    {
      [(ACCTransportIOAccessoryManager *)self setInductiveDeviceID:0];
      if (infoCopy)
      {
LABEL_56:
        inductiveDeviceType2 = [(ACCTransportIOAccessoryManager *)self inductiveDeviceType];
        if (inductiveDeviceType2)
        {
          v27 = inductiveDeviceType2;
          inductiveDeviceID2 = [(ACCTransportIOAccessoryManager *)self inductiveDeviceID];

          if (inductiveDeviceID2)
          {
            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%03X-%06X", valuePtr, v50];
            [(NSLock *)self->_propertyLock lock];
            inductiveDeviceUID = self->_inductiveDeviceUID;
            if (!inductiveDeviceUID || ![(NSString *)inductiveDeviceUID isEqualToString:v29])
            {
              objc_storeStrong(&self->_inductiveDeviceUID, v29);
            }

            [(NSLock *)self->_propertyLock unlock];
          }
        }

        if (infoCopy)
        {
LABEL_64:
          ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
          v33 = IORegistryEntryCreateCFProperty(ioService2, @"IOAccessoryManagerInductiveLocalDeviceID", *MEMORY[0x277CBECE8], 0);
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v34 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCTransportIOAccessoryOOBPairing dealloc];
            }

            v34 = MEMORY[0x277D86220];
            v35 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v57 = "[ACCTransportIOAccessoryManager _updateInductiveInfo:]";
            v58 = 2112;
            *v59 = v33;
            _os_log_impl(&dword_233656000, v34, OS_LOG_TYPE_DEFAULT, "%s: cfInductiveLocalDeviceID = %@", buf, 0x16u);
          }

          if (v33)
          {
            inductiveLocalDeviceID = [(ACCTransportIOAccessoryManager *)self inductiveLocalDeviceID];
            v37 = [v33 copy];
            [(ACCTransportIOAccessoryManager *)self setInductiveLocalDeviceID:v37];

            CFRelease(v33);
            inductiveLocalDeviceID2 = [(ACCTransportIOAccessoryManager *)self inductiveLocalDeviceID];
            v39 = inductiveLocalDeviceID2;
            if (inductiveLocalDeviceID2 && inductiveLocalDeviceID)
            {
              inductiveLocalDeviceID3 = [(ACCTransportIOAccessoryManager *)self inductiveLocalDeviceID];
              v41 = [inductiveLocalDeviceID3 isEqualToNumber:inductiveLocalDeviceID];

              if (v41)
              {
                goto LABEL_80;
              }
            }

            else
            {
            }

            v54 = *MEMORY[0x277CFD2A8];
            inductiveLocalDeviceID4 = [(ACCTransportIOAccessoryManager *)self inductiveLocalDeviceID];
            v55 = inductiveLocalDeviceID4;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];

            v44 = +[ACCTransportIOAccessorySharedManager sharedManager];
            [v44 setProperties:v43 forManager:self];

LABEL_80:
            goto LABEL_81;
          }

          [(ACCTransportIOAccessoryManager *)self setInductiveLocalDeviceID:0];
LABEL_81:
          inductiveDeviceType3 = [(ACCTransportIOAccessoryManager *)self inductiveDeviceType];

          if (inductiveDeviceType3)
          {
            v52 = *MEMORY[0x277CFD2A0];
            inductiveDeviceType4 = [(ACCTransportIOAccessoryManager *)self inductiveDeviceType];
            v53 = inductiveDeviceType4;
            v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];

            v48 = +[ACCTransportIOAccessorySharedManager sharedManager];
            [v48 setProperties:v47 forManager:self];
          }

          [(NSRecursiveLock *)self->_accessoryInfoLock unlock];
          goto LABEL_84;
        }

LABEL_63:
        inductiveLocalDeviceID5 = [(ACCTransportIOAccessoryManager *)self inductiveLocalDeviceID];

        if (inductiveLocalDeviceID5)
        {
          goto LABEL_81;
        }

        goto LABEL_64;
      }
    }

LABEL_55:
    if (self->_inductiveDeviceUID)
    {
      goto LABEL_63;
    }

    goto LABEL_56;
  }

LABEL_84:
  v49 = *MEMORY[0x277D85DE8];
}

- (void)_clearAccessoryInfo
{
  v10 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_accessoryInfoLock lock];
  if ([(ACCTransportIOAccessoryManager *)self bIsInductive])
  {
    deviceModelNumber = [(ACCTransportIOAccessoryManager *)self deviceModelNumber];

    if (deviceModelNumber)
    {
      deviceModelNumber2 = [(ACCTransportIOAccessoryManager *)self deviceModelNumber];
      [(ACCTransportIOAccessoryManager *)self _unregisterForUarpActivityForModel:deviceModelNumber2];
    }
  }

  if (self->_allAccessoryInfoFieldsAreValid)
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 4;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "Clearing accessory info for manager %d", v9, 8u);
    }

    self->_allAccessoryInfoFieldsAreValid = 0;
    [(ACCTransportIOAccessoryManager *)self setDeviceModelNumber:0];
    [(ACCTransportIOAccessoryManager *)self setDeviceName:0];
    [(ACCTransportIOAccessoryManager *)self setDeviceVendorName:0];
    [(ACCTransportIOAccessoryManager *)self setDeviceSerialNumber:0];
    [(ACCTransportIOAccessoryManager *)self setDeviceHardwareRevision:0];
    [(ACCTransportIOAccessoryManager *)self setDeviceFirmwareRevision:0];
    [(ACCTransportIOAccessoryManager *)self setDigitalID:0];
    [(ACCTransportIOAccessoryManager *)self setRegionCode:0];
    [(ACCTransportIOAccessoryManager *)self setInductiveDeviceType:0];
    [(ACCTransportIOAccessoryManager *)self setInductiveDeviceID:0];
    [(ACCTransportIOAccessoryManager *)self setInductiveLocalDeviceID:0];
  }

  [(NSRecursiveLock *)self->_accessoryInfoLock unlock];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_pokeResistorID
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(ACCTransportIOAccessoryManager *)self resistorID]== 100 && [(ACCTransportIOAccessoryBase *)self primaryPortNumber]!= 1)
  {
    if (!gLogObjects || gNumLogObjects < 4)
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
      v5 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      ioService = [(ACCTransportIOAccessoryBase *)self ioService];
      _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_DEFAULT, "Poking resistorID for service (%d) for rear-port IOAccessoryManager", &v16, 8u);
    }

    [(ACCTransportIOAccessoryBase *)self ioService];
    AccessoryID = IOAccessoryManagerGetAccessoryID();
    if (AccessoryID <= 0xF)
    {
      resistorID2 = AccessoryID;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v8 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v8 = MEMORY[0x277D86220];
        v13 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
        v16 = 67109376;
        ioService = resistorID2;
        v18 = 1024;
        v19 = ioService2;
        _os_log_impl(&dword_233656000, v8, OS_LOG_TYPE_DEFAULT, "Have a resistorID to update from poke, %d, from service %d", &v16, 0xEu);
      }

LABEL_34:
      [(ACCTransportIOAccessoryManager *)self _handleResistorIDChangeNotification:resistorID2];
      goto LABEL_35;
    }
  }

  if (([(ACCTransportIOAccessoryManager *)self resistorID]& 0x80000000) == 0 && [(ACCTransportIOAccessoryManager *)self resistorID]<= 15)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v9 = *(gLogObjects + 24);
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
      resistorID = [(ACCTransportIOAccessoryManager *)self resistorID];
      ioService3 = [(ACCTransportIOAccessoryBase *)self ioService];
      v16 = 67109376;
      ioService = resistorID;
      v18 = 1024;
      v19 = ioService3;
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "Already have a resistorID to update from poke, %d, from service %d. Checking if we need to advertise connection", &v16, 0xEu);
    }

    resistorID2 = [(ACCTransportIOAccessoryManager *)self resistorID];
    goto LABEL_34;
  }

LABEL_35:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_stopAuthTimer
{
  v9 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
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
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_impl(&dword_233656000, v5, OS_LOG_TYPE_INFO, "Stopping auth timer for service %d", v8, 8u);
  }

  authTimerAccessory = self->_authTimerAccessory;
  if (authTimerAccessory)
  {
    dispatch_source_set_timer(authTimerAccessory, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  self->_isAuthTimedOut = 0;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleRegisterationForUarpActivityForModel:(id)model shouldRegister:(BOOL)register
{
  registerCopy = register;
  v90 = *MEMORY[0x277D85DE8];
  modelCopy = model;
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
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    *buf = 136316162;
    v73 = "[ACCTransportIOAccessoryManager _handleRegisterationForUarpActivityForModel:shouldRegister:]";
    v74 = 1024;
    v75 = primaryPortNumber;
    v76 = 2112;
    v77 = connectionUUID;
    v78 = 2112;
    v79 = modelCopy;
    v80 = 1024;
    v81 = registerCopy;
    _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel %@, shouldRegister %d", buf, 0x2Cu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (registerCopy)
  {
    if (selfCopy->_notificationUarpRegistered)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v13 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v13 = MEMORY[0x277D86220];
        v28 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        primaryPortNumber2 = [(ACCTransportIOAccessoryBase *)selfCopy primaryPortNumber];
        connectionUUID2 = [(ACCTransportIOAccessoryManager *)selfCopy connectionUUID];
        *buf = 136316162;
        v73 = "[ACCTransportIOAccessoryManager _handleRegisterationForUarpActivityForModel:shouldRegister:]";
        v74 = 1024;
        v75 = primaryPortNumber2;
        v76 = 2112;
        v77 = connectionUUID2;
        v78 = 2112;
        v79 = modelCopy;
        v80 = 1024;
        v81 = 1;
        _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', shouldRegister=%d, Already registered!!!", buf, 0x2Cu);
      }

LABEL_39:

      goto LABEL_64;
    }

    v17 = [modelCopy isEqualToString:@"A3250"];
    v18 = @"A2580";
    if (!v17)
    {
      v18 = 0;
    }

    v71 = v18;
    modelCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"com.apple.uarp.startupdate.", modelCopy];
    notificationUarpStartUpdateName = selfCopy->_notificationUarpStartUpdateName;
    selfCopy->_notificationUarpStartUpdateName = modelCopy;

    modelCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"com.apple.uarp.endupdate.", modelCopy];
    notificationUarpEndUpdateName = selfCopy->_notificationUarpEndUpdateName;
    selfCopy->_notificationUarpEndUpdateName = modelCopy2;

    modelCopy3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"com.apple.uarp.stagingstatus.", modelCopy];
    notificationUarpStagingStatusName = selfCopy->_notificationUarpStagingStatusName;
    selfCopy->_notificationUarpStagingStatusName = modelCopy3;

    if (v17)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"com.apple.uarp.stagingstatus.", @"A2580"];
      notificationUarpStagingStatusName2 = selfCopy->_notificationUarpStagingStatusName2;
      selfCopy->_notificationUarpStagingStatusName2 = v25;
    }

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v27 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v27 = MEMORY[0x277D86220];
      v53 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      primaryPortNumber3 = [(ACCTransportIOAccessoryBase *)selfCopy primaryPortNumber];
      connectionUUID3 = [(ACCTransportIOAccessoryManager *)selfCopy connectionUUID];
      v56 = selfCopy->_notificationUarpStartUpdateName;
      v57 = selfCopy->_notificationUarpEndUpdateName;
      v58 = selfCopy->_notificationUarpStagingStatusName;
      v59 = selfCopy->_notificationUarpStagingStatusName2;
      *buf = 136317186;
      v73 = "[ACCTransportIOAccessoryManager _handleRegisterationForUarpActivityForModel:shouldRegister:]";
      v74 = 1024;
      v75 = primaryPortNumber3;
      v76 = 2112;
      v77 = connectionUUID3;
      v78 = 2112;
      v79 = modelCopy;
      v80 = 1024;
      v81 = 1;
      v82 = 2112;
      v83 = v56;
      v84 = 2112;
      v85 = v57;
      v86 = 2112;
      v87 = v58;
      v88 = 2112;
      v89 = v59;
      _os_log_impl(&dword_233656000, v27, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', shouldRegister=%d, Register %@ / %@ / %@ / %@", buf, 0x54u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpStartUpdateName = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStartUpdateName];
    CFNotificationCenterAddObserver(DarwinNotifyCenter, selfCopy, __handleNotificationUarpStartUpdate, notificationUarpStartUpdateName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v62 = CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpEndUpdateName = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpEndUpdateName];
    CFNotificationCenterAddObserver(v62, selfCopy, __handleNotificationUarpEndUpdate, notificationUarpEndUpdateName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v64 = CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpStagingStatusName = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStagingStatusName];
    CFNotificationCenterAddObserver(v64, selfCopy, __handleNotificationUarpStagingStatus, notificationUarpStagingStatusName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    if (selfCopy->_notificationUarpStagingStatusName2)
    {
      v66 = CFNotificationCenterGetDarwinNotifyCenter();
      notificationUarpStagingStatusName2 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStagingStatusName2];
      CFNotificationCenterAddObserver(v66, selfCopy, __handleNotificationUarpStagingStatus, notificationUarpStagingStatusName2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpStagingStatusName3 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStagingStatusName];
    __handleNotificationUarpStagingStatus(notificationUarpStagingStatusName3, selfCopy, notificationUarpStagingStatusName3);

    if (selfCopy->_notificationUarpStagingStatusName2)
    {
      CFNotificationCenterGetDarwinNotifyCenter();
      notificationUarpStagingStatusName22 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStagingStatusName2];
      __handleNotificationUarpStagingStatus(notificationUarpStagingStatusName22, selfCopy, notificationUarpStagingStatusName22);
    }

    selfCopy->_notificationUarpRegistered = 1;
  }

  else
  {
    if (gLogObjects)
    {
      v14 = gNumLogObjects <= 3;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    if (!selfCopy->_notificationUarpRegistered)
    {
      if (v15)
      {
        v13 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v13 = MEMORY[0x277D86220];
        v50 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        primaryPortNumber4 = [(ACCTransportIOAccessoryBase *)selfCopy primaryPortNumber];
        connectionUUID4 = [(ACCTransportIOAccessoryManager *)selfCopy connectionUUID];
        *buf = 136316162;
        v73 = "[ACCTransportIOAccessoryManager _handleRegisterationForUarpActivityForModel:shouldRegister:]";
        v74 = 1024;
        v75 = primaryPortNumber4;
        v76 = 2112;
        v77 = connectionUUID4;
        v78 = 2112;
        v79 = modelCopy;
        v80 = 1024;
        v81 = 0;
        _os_log_impl(&dword_233656000, v13, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', shouldRegister=%d, Already unregistered!!!", buf, 0x2Cu);
      }

      goto LABEL_39;
    }

    if (v15)
    {
      v16 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v16 = MEMORY[0x277D86220];
      v31 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      primaryPortNumber5 = [(ACCTransportIOAccessoryBase *)selfCopy primaryPortNumber];
      connectionUUID5 = [(ACCTransportIOAccessoryManager *)selfCopy connectionUUID];
      v34 = selfCopy->_notificationUarpStartUpdateName;
      v35 = selfCopy->_notificationUarpEndUpdateName;
      v36 = selfCopy->_notificationUarpStagingStatusName;
      v37 = selfCopy->_notificationUarpStagingStatusName2;
      *buf = 136317186;
      v73 = "[ACCTransportIOAccessoryManager _handleRegisterationForUarpActivityForModel:shouldRegister:]";
      v74 = 1024;
      v75 = primaryPortNumber5;
      v76 = 2112;
      v77 = connectionUUID5;
      v78 = 2112;
      v79 = modelCopy;
      v80 = 1024;
      v81 = 0;
      v82 = 2112;
      v83 = v34;
      v84 = 2112;
      v85 = v35;
      v86 = 2112;
      v87 = v36;
      v88 = 2112;
      v89 = v37;
      _os_log_impl(&dword_233656000, v16, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', shouldRegister=%d, Unregister %@ / %@ / %@ / %@", buf, 0x54u);
    }

    [(ACCTransportIOAccessoryManager *)selfCopy _stopTimerForUarpActivityForModel:modelCopy];
    v38 = CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpStartUpdateName2 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStartUpdateName];
    CFNotificationCenterRemoveObserver(v38, selfCopy, notificationUarpStartUpdateName2, 0);

    v40 = CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpEndUpdateName2 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpEndUpdateName];
    CFNotificationCenterRemoveObserver(v40, selfCopy, notificationUarpEndUpdateName2, 0);

    v42 = CFNotificationCenterGetDarwinNotifyCenter();
    notificationUarpStagingStatusName4 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStagingStatusName];
    CFNotificationCenterRemoveObserver(v42, selfCopy, notificationUarpStagingStatusName4, 0);

    if (selfCopy->_notificationUarpStagingStatusName2)
    {
      v44 = CFNotificationCenterGetDarwinNotifyCenter();
      notificationUarpStagingStatusName23 = [(ACCTransportIOAccessoryManager *)selfCopy notificationUarpStagingStatusName2];
      CFNotificationCenterRemoveObserver(v44, selfCopy, notificationUarpStagingStatusName23, 0);
    }

    v46 = selfCopy->_notificationUarpStartUpdateName;
    selfCopy->_notificationUarpStartUpdateName = 0;

    v47 = selfCopy->_notificationUarpEndUpdateName;
    selfCopy->_notificationUarpEndUpdateName = 0;

    v48 = selfCopy->_notificationUarpStagingStatusName;
    selfCopy->_notificationUarpStagingStatusName = 0;

    v49 = selfCopy->_notificationUarpStagingStatusName2;
    selfCopy->_notificationUarpStagingStatusName2 = 0;

    selfCopy->_notificationUarpRegistered = 0;
  }

LABEL_64:
  objc_sync_exit(selfCopy);

  v70 = *MEMORY[0x277D85DE8];
}

- (void)_kickTimerForUarpActivityForModel:(id)model
{
  v36 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    v10 = self->_notificationUarpStagingStatusActivityTimer != 0;
    v24 = 136316162;
    v25 = "[ACCTransportIOAccessoryManager _kickTimerForUarpActivityForModel:]";
    v26 = 1024;
    v27 = primaryPortNumber;
    v28 = 2112;
    v29 = connectionUUID;
    v30 = 2112;
    v31 = modelCopy;
    v32 = 1024;
    LODWORD(v33) = v10;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', (timer exist %d)", &v24, 0x2Cu);
  }

  if (self->_notificationUarpStagingStatusActivityTimer)
  {
    v11 = acc_userDefaults_copyIntegerForKey(@"UARPActivityTimerS");
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = 600;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v15 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v15 = MEMORY[0x277D86220];
        v22 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ACCTransportIOAccessoryManager _kickTimerForUarpActivityForModel:?];
      }

      dispatch_source_set_timer(self->_notificationUarpStagingStatusActivityTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    else
    {
      if (v12 >= 0x78)
      {
        v13 = 30;
      }

      else
      {
        v13 = v12 >> 2;
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v14 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v14 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        primaryPortNumber2 = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
        connectionUUID2 = [(ACCTransportIOAccessoryManager *)self connectionUUID];
        v24 = 136316418;
        v25 = "[ACCTransportIOAccessoryManager _kickTimerForUarpActivityForModel:]";
        v26 = 1024;
        v27 = primaryPortNumber2;
        v28 = 2112;
        v29 = connectionUUID2;
        v30 = 2112;
        v31 = modelCopy;
        v32 = 2048;
        v33 = v12;
        v34 = 2048;
        v35 = v13;
        _os_log_impl(&dword_233656000, v14, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', start check timer. (%ld / %llu)", &v24, 0x3Au);
      }

      notificationUarpStagingStatusActivityTimer = self->_notificationUarpStagingStatusActivityTimer;
      v20 = dispatch_time(0, 1000000000 * v12);
      dispatch_source_set_timer(notificationUarpStagingStatusActivityTimer, v20, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * v13);
      v21 = __copyModelFromUarpNotificationName(self->_notificationUarpStagingStatusName2);
      self->_notificationUarpStagingStatusAlternateActive = [v21 isEqualToString:modelCopy];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_stopTimerForUarpActivityForModel:(id)model
{
  v23 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    v10 = self->_notificationUarpStagingStatusActivityTimer != 0;
    v13 = 136316162;
    v14 = "[ACCTransportIOAccessoryManager _stopTimerForUarpActivityForModel:]";
    v15 = 1024;
    v16 = primaryPortNumber;
    v17 = 2112;
    v18 = connectionUUID;
    v19 = 2112;
    v20 = modelCopy;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel '%@', stop check timer. (timer exist %d)", &v13, 0x2Cu);
  }

  notificationUarpStagingStatusActivityTimer = self->_notificationUarpStagingStatusActivityTimer;
  if (notificationUarpStagingStatusActivityTimer)
  {
    dispatch_source_set_timer(notificationUarpStagingStatusActivityTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleNotificationUarpStartUpdateForModel:(id)model
{
  v19 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    v11 = 136315906;
    v12 = "[ACCTransportIOAccessoryManager _handleNotificationUarpStartUpdateForModel:]";
    v13 = 1024;
    v14 = primaryPortNumber;
    v15 = 2112;
    v16 = connectionUUID;
    v17 = 2112;
    v18 = modelCopy;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel %@", &v11, 0x26u);
  }

  [(ACCTransportIOAccessoryManager *)self notifyDriverOfInductiveActivity:1 paused:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleNotificationUarpEndUpdateForModel:(id)model
{
  v19 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    v11 = 136315906;
    v12 = "[ACCTransportIOAccessoryManager _handleNotificationUarpEndUpdateForModel:]";
    v13 = 1024;
    v14 = primaryPortNumber;
    v15 = 2112;
    v16 = connectionUUID;
    v17 = 2112;
    v18 = modelCopy;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel %@", &v11, 0x26u);
  }

  [(ACCTransportIOAccessoryManager *)self notifyDriverOfInductiveActivity:0 paused:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleNotificationUarpStagingStatusForModel:(id)model state:(unint64_t)state
{
  v26 = *MEMORY[0x277D85DE8];
  modelCopy = model;
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
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    notificationUarpStagingStatus = self->_notificationUarpStagingStatus;
    v14 = 136316418;
    v15 = "[ACCTransportIOAccessoryManager _handleNotificationUarpStagingStatusForModel:state:]";
    v16 = 1024;
    v17 = primaryPortNumber;
    v18 = 2112;
    v19 = connectionUUID;
    v20 = 2112;
    v21 = modelCopy;
    v22 = 2048;
    v23 = notificationUarpStagingStatus;
    v24 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, accessoryModel %@, state %llu -> %llu", &v14, 0x3Au);
  }

  if (self->_notificationUarpStagingStatus != state)
  {
    self->_notificationUarpStagingStatus = state;
    [(ACCTransportIOAccessoryManager *)self notifyDriverOfInductiveActivity:state != 0 paused:state == 2];
    state = self->_notificationUarpStagingStatus;
  }

  if (state == 1)
  {
    [(ACCTransportIOAccessoryManager *)self _kickTimerForUarpActivityForModel:modelCopy];
  }

  else
  {
    [(ACCTransportIOAccessoryManager *)self _stopTimerForUarpActivityForModel:modelCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleUartActivityTimeout
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_deviceModelNumber)
  {
    self->_notificationUarpStagingActivityTimedOut = 1;
    p_notificationUarpStagingStatusName2 = &self->_notificationUarpStagingStatusName2;
    if (self->_notificationUarpStagingStatusName2 && self->_notificationUarpStagingStatusAlternateActive)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v4 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v4 = MEMORY[0x277D86220];
        v8 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v9 = *p_notificationUarpStagingStatusName2;
      v12 = 136315394;
      v13 = "[ACCTransportIOAccessoryManager _handleUartActivityTimeout]";
      v14 = 2112;
      v15 = v9;
      v7 = "%s: uarpStagingStatusTimer, handle alternate %@, force Inactive";
LABEL_21:
      _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, v7, &v12, 0x16u);
LABEL_22:

      v10 = __copyModelFromUarpNotificationName(*p_notificationUarpStagingStatusName2);
      [(ACCTransportIOAccessoryManager *)self _handleNotificationUarpStagingStatusForModel:v10 state:0];

      goto LABEL_23;
    }

    p_notificationUarpStagingStatusName2 = &self->_notificationUarpStagingStatusName;
    if (self->_notificationUarpStagingStatusName)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v4 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportIOAccessoryOOBPairing dealloc];
        }

        v4 = MEMORY[0x277D86220];
        v5 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v6 = *p_notificationUarpStagingStatusName2;
      v12 = 136315394;
      v13 = "[ACCTransportIOAccessoryManager _handleUartActivityTimeout]";
      v14 = 2112;
      v15 = v6;
      v7 = "%s: uarpStagingStatusTimer, handle %@, force Inactive";
      goto LABEL_21;
    }
  }

LABEL_23:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)notifyDriverOfInductiveActivity:(BOOL)activity paused:(BOOL)paused
{
  pausedCopy = paused;
  activityCopy = activity;
  v38 = *MEMORY[0x277D85DE8];
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
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    connectionUUID = [(ACCTransportIOAccessoryManager *)self connectionUUID];
    *buf = 136316418;
    v28 = "[ACCTransportIOAccessoryManager notifyDriverOfInductiveActivity:paused:]";
    v29 = 1024;
    v30 = primaryPortNumber;
    v31 = 2112;
    *v32 = connectionUUID;
    *&v32[8] = 1024;
    v33 = activityCopy;
    v34 = 1024;
    v35 = pausedCopy;
    v36 = 1024;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "%s: [%d] %@, active %d, paused %d, service %d", buf, 0x2Eu);
  }

  connect = 0;
  ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
  v13 = IOServiceOpen(ioService2, *MEMORY[0x277D85F48], 0, &connect);
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = connect == 0;
  }

  if (v14)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v15 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v15 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = connect;
      ioService3 = [(ACCTransportIOAccessoryBase *)self ioService];
      *buf = 136315906;
      v28 = "[ACCTransportIOAccessoryManager notifyDriverOfInductiveActivity:paused:]";
      v29 = 1024;
      v30 = v13;
      v31 = 1024;
      *v32 = v24;
      *&v32[4] = 1024;
      *&v32[6] = ioService3;
      _os_log_error_impl(&dword_233656000, v15, OS_LOG_TYPE_ERROR, "%s: IOServiceOpen fail kernStatus:%02X, ioConnForService:%04X ioService:%d", buf, 0x1Eu);
    }
  }

  else
  {
    if (activityCopy)
    {
      v16 = 0x400000;
    }

    else
    {
      v16 = 0;
    }

    if (pausedCopy)
    {
      v17 = v16 | 0x800000;
    }

    else
    {
      v17 = v16;
    }

    if ((!activityCopy || !pausedCopy) && IOAccessoryManagerRevokeFeatures())
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v18 = *(gLogObjects + 24);
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
        [ACCTransportIOAccessoryManager notifyDriverOfInductiveActivity:paused:];
      }
    }

    if (v17 && IOAccessoryManagerAllowFeatures())
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v21 = *(gLogObjects + 24);
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

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryManager notifyDriverOfInductiveActivity:paused:];
      }
    }

    IOServiceClose(connect);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (NSSet)ioAccessoryChildPorts
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  mutableioAccessoryChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryChildPorts];
  v5 = [v3 initWithSet:mutableioAccessoryChildPorts];

  return v5;
}

- (NSSet)eaProtocolChildPorts
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  mutableioAccessoryEAChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryEAChildPorts];
  v5 = [v3 initWithSet:mutableioAccessoryEAChildPorts];

  return v5;
}

- (NSSet)authCPChildPorts
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  mutableioAccessoryAuthCPChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryAuthCPChildPorts];
  v5 = [v3 initWithSet:mutableioAccessoryAuthCPChildPorts];

  return v5;
}

- (NSSet)oobPairingChildPorts
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  mutableioAccessoryOOBPairingChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryOOBPairingChildPorts];
  v5 = [v3 initWithSet:mutableioAccessoryOOBPairingChildPorts];

  return v5;
}

- (NSSet)configStreamChildPorts
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  mutableioAccessoryConfigStreamChildPorts = [(ACCTransportIOAccessoryManager *)self mutableioAccessoryConfigStreamChildPorts];
  v5 = [v3 initWithSet:mutableioAccessoryConfigStreamChildPorts];

  return v5;
}

- (NSString)inductiveDeviceUID
{
  [(NSLock *)self->_propertyLock lock];
  v3 = [(NSString *)self->_inductiveDeviceUID copy];
  [(NSLock *)self->_propertyLock unlock];

  return v3;
}

- (NSNumber)inductiveLocalDeviceID
{
  [(NSLock *)self->_propertyLock lock];
  v3 = [(NSNumber *)self->_inductiveLocalDeviceID copy];
  [(NSLock *)self->_propertyLock unlock];

  return v3;
}

- (NSString)regionCode
{
  [(NSLock *)self->_propertyLock lock];
  v3 = [(NSString *)self->_regionCode copy];
  [(NSLock *)self->_propertyLock unlock];

  return v3;
}

- (void)setAccessoryPowerMode:(int)mode
{
  v21 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryOOBPairing dealloc];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 67109632;
    primaryPortNumber = [(ACCTransportIOAccessoryBase *)self primaryPortNumber];
    v17 = 1024;
    ioService = [(ACCTransportIOAccessoryBase *)self ioService];
    v19 = 1024;
    modeCopy = mode;
    _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, "setAccessoryPowerMode: primaryPort %d, ioService %d, accessoryPowerMode: %d", &v15, 0x14u);
  }

  ioConnect = self->super._ioConnect;
  if (IOAccessoryManagerConfigurePower())
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v9 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryManager setAccessoryPowerMode:];
    }
  }

  else
  {
    self->_accessoryPowerMode = mode;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v9 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportIOAccessoryOOBPairing dealloc];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      accessoryPowerMode = [(ACCTransportIOAccessoryManager *)self accessoryPowerMode];
      ioService2 = [(ACCTransportIOAccessoryBase *)self ioService];
      v15 = 67109376;
      primaryPortNumber = accessoryPowerMode;
      v17 = 1024;
      ioService = ioService2;
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, "Successfully set acc. power mode to %u for service %u", &v15, 0xEu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setConnectionUUID:(id)d
{
  propertyLock = self->_propertyLock;
  dCopy = d;
  [(NSLock *)propertyLock lock];
  v6 = [dCopy copy];

  connectionUUID = self->_connectionUUID;
  self->_connectionUUID = v6;

  v8 = self->_propertyLock;

  [(NSLock *)v8 unlock];
}

- (void)setInductiveDeviceUID:(id)d
{
  propertyLock = self->_propertyLock;
  dCopy = d;
  [(NSLock *)propertyLock lock];
  v6 = [dCopy copy];

  inductiveDeviceUID = self->_inductiveDeviceUID;
  self->_inductiveDeviceUID = v6;

  v8 = self->_propertyLock;

  [(NSLock *)v8 unlock];
}

- (void)setInductiveLocalDeviceID:(id)d
{
  propertyLock = self->_propertyLock;
  dCopy = d;
  [(NSLock *)propertyLock lock];
  v6 = [dCopy copy];

  inductiveLocalDeviceID = self->_inductiveLocalDeviceID;
  self->_inductiveLocalDeviceID = v6;

  v8 = self->_propertyLock;

  [(NSLock *)v8 unlock];
}

- (void)setRegionCode:(id)code
{
  propertyLock = self->_propertyLock;
  codeCopy = code;
  [(NSLock *)propertyLock lock];
  v6 = [codeCopy copy];

  regionCode = self->_regionCode;
  self->_regionCode = v6;

  v8 = self->_propertyLock;

  [(NSLock *)v8 unlock];
}

- (void)initWithIOService:(unsigned __int8 *)a1 .cold.2(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithIOService:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__ACCTransportIOAccessoryManager_initWithIOService___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addIOAccessoryChildPort:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 ioService];
  [a1 ioServiceClassType];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeIOAccessoryChildPort:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 ioService];
  [a1 ioServiceClassType];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setFeaturesFromAuthStatus:(void *)a1 authCert:certType:.cold.11(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 primaryPortNumber];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setFeaturesFromAuthStatus:authCert:certType:.cold.13()
{
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x277D85DE8];
  [v0 primaryPortNumber];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x14u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setFeaturesFromAuthStatus:authCert:certType:.cold.17()
{
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x277D85DE8];
  [v0 primaryPortNumber];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setFeaturesFromAuthStatus:authCert:certType:.cold.19()
{
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x277D85DE8];
  [v0 primaryPortNumber];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setFeaturesFromAuthStatus:authCert:certType:.cold.23()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setFeaturesFromAuthStatus:authCert:certType:.cold.25()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setFeaturesFromAuthStatus:authCert:certType:.cold.27()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getUSBMode
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setUSBCurrentOffset:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setUSBCurrentOffset:.cold.4()
{
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x277D85DE8];
  [v0 ioService];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setUSBCurrentLimitBase:forceResponse:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setUSBCurrentLimitBase:forceResponse:.cold.4()
{
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x277D85DE8];
  [v0 ioService];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)USBCurrentLimitInmA
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13(self, a2);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xEu);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)USBCurrentLimitBaseInmA
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13(self, a2);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xEu);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)USBCurrentLimitOffsetInmA
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13(self, a2);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xEu);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)USBChargingVoltageInmV
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13(self, a2);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xEu);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)cableType
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *self;
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPowerDuringSleepEnabled:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setBatteryPackMode:forceResponse:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setBatteryPackMode:(uint64_t)a1 forceResponse:(void *)a2 .cold.4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 ioService];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryRequestedCurrent:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryRequestedCurrent:.cold.4()
{
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x277D85DE8];
  [v0 ioService];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryUsedCurrent:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryUsedCurrent:.cold.4()
{
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x277D85DE8];
  [v0 ioService];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)resetAccessoryBaseCurrent
{
  v7 = *MEMORY[0x277D85DE8];
  [self ioService];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)supervisedTransportsRestricted
{
  v9 = *MEMORY[0x277D85DE8];
  connectionUUID = [a2 connectionUUID];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_IOAccUSBModeTypeForSetUSBMode:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_IOAccUSBModeTypeForSetUSBMode:.cold.4()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  v4 = v0;
  _os_log_debug_impl(&dword_233656000, v1, OS_LOG_TYPE_DEBUG, "returning %d for IOAccessoryUSBModeType, ACCPlatform_USB_ModeSet_t %d", v3, 0xEu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_ACCPlatformUSBModeForIOAccessoryUSBConnectType:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_ACCPlatformUSBModeForIOAccessoryUSBConnectType:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_connectionTypeForPrimaryPort
{
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x277D85DE8];
  [v0 primaryPortNumber];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_connectionUUIDsForNotification
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleResistorIDChangeNotification:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sendNotification:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_233656000, log, OS_LOG_TYPE_DEBUG, "Sending %@ notification for ConnectionUUIDs %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_kickTimerForUarpActivityForModel:(void *)a1 .cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 primaryPortNumber];
  v2 = [a1 connectionUUID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)notifyDriverOfInductiveActivity:paused:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)notifyDriverOfInductiveActivity:paused:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryPowerMode:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

@end