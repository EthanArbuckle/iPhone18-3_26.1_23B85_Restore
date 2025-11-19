@interface AccessoryUSBBillboardDeviceManager
+ (id)sharedManager;
- (AccessoryUSBBillboardDeviceManager)init;
- (BOOL)isStartedDetectUSBBillboardDeviceWithVID:(unsigned __int16)a3 PID:(unsigned __int16)a4;
- (BOOL)stopDetectUSBBillboardDeviceWithVID:(unsigned __int16)a3 PID:(unsigned __int16)a4;
- (id)copyDetectedBillboardDevices;
- (void)dealloc;
- (void)stopDetectUSBBillboardDeviceAll;
@end

@implementation AccessoryUSBBillboardDeviceManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AccessoryUSBBillboardDeviceManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_sharedInstance;

  return v2;
}

uint64_t __51__AccessoryUSBBillboardDeviceManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (AccessoryUSBBillboardDeviceManager)init
{
  v8.receiver = self;
  v8.super_class = AccessoryUSBBillboardDeviceManager;
  v2 = [(AccessoryUSBBillboardDeviceManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    usbBillboardDeviceListeners = v2->_usbBillboardDeviceListeners;
    v2->_usbBillboardDeviceListeners = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    detectedBillboardDevices = v2->_detectedBillboardDevices;
    v2->_detectedBillboardDevices = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(AccessoryUSBBillboardDeviceManager *)self stopDetectUSBBillboardDeviceAll];
  v3.receiver = self;
  v3.super_class = AccessoryUSBBillboardDeviceManager;
  [(AccessoryUSBBillboardDeviceManager *)&v3 dealloc];
}

- (id)copyDetectedBillboardDevices
{
  v3 = self->_detectedBillboardDevices;
  objc_sync_enter(v3);
  if ([(NSMutableDictionary *)self->_detectedBillboardDevices count])
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_detectedBillboardDevices];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v3);

  return v4;
}

- (BOOL)stopDetectUSBBillboardDeviceWithVID:(unsigned __int16)a3 PID:(unsigned __int16)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4 | (a3 << 16);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v5];
  v7 = self->_usbBillboardDeviceListeners;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_usbBillboardDeviceListeners objectForKey:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 started];
    v11 = v10;
    if (gLogObjects)
    {
      v12 = gNumLogObjects <= 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = !v12;
    if (v10)
    {
      if (v13)
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
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315650;
        v25 = "[AccessoryUSBBillboardDeviceManager stopDetectUSBBillboardDeviceWithVID:PID:]";
        v26 = 1024;
        v27 = v5;
        v28 = 2112;
        v29 = v9;
        _os_log_impl(&dword_2336F5000, v14, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, stop listener, %@", &v24, 0x1Cu);
      }

      [v9 stopDetectUSBBillboardDevice];
    }

    else
    {
      if (v13)
      {
        v16 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v16 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315650;
        v25 = "[AccessoryUSBBillboardDeviceManager stopDetectUSBBillboardDeviceWithVID:PID:]";
        v26 = 1024;
        v27 = v5;
        v28 = 2112;
        v29 = v9;
        _os_log_impl(&dword_2336F5000, v16, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, listener already stopped, %@", &v24, 0x1Cu);
      }
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v20 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v20 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315650;
      v25 = "[AccessoryUSBBillboardDeviceManager stopDetectUSBBillboardDeviceWithVID:PID:]";
      v26 = 1024;
      v27 = v5;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_2336F5000, v20, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, remove listener, %@", &v24, 0x1Cu);
    }

    [(NSMutableDictionary *)self->_usbBillboardDeviceListeners removeObjectForKey:v6];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v15 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v15 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "[AccessoryUSBBillboardDeviceManager stopDetectUSBBillboardDeviceWithVID:PID:]";
      v26 = 1024;
      v27 = v5;
      _os_log_impl(&dword_2336F5000, v15, OS_LOG_TYPE_DEFAULT, "%s: vidpid 0x%X, Failed to find listener!!!", &v24, 0x12u);
    }

    v11 = 0;
  }

  objc_sync_exit(v7);
  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)stopDetectUSBBillboardDeviceAll
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_usbBillboardDeviceListeners;
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableDictionary *)self->_usbBillboardDeviceListeners allValues];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) stopDetectUSBBillboardDevice];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_usbBillboardDeviceListeners removeAllObjects];
  objc_sync_exit(v3);

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isStartedDetectUSBBillboardDeviceWithVID:(unsigned __int16)a3 PID:(unsigned __int16)a4
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4 | (a3 << 16)];
  v6 = self->_usbBillboardDeviceListeners;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)self->_usbBillboardDeviceListeners objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 started];
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v6);
  return v9;
}

- (void)startDetectUSBBillboardDeviceWithVID:PID:.cold.5()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_2336F5000, v0, v1, "%s: vidpid 0x%X, Failed to create listener!!!", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end