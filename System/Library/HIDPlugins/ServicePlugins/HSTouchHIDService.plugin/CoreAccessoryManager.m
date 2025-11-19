@interface CoreAccessoryManager
- (CoreAccessoryManager)init;
- (NSDictionary)debug;
- (id)coreAccessoryServiceInfoFromProperties:(id)a3;
- (void)accessoryConnectionInfoFromTransport:(id)a3 connection:(int *)a4 transport:(int *)a5;
- (void)dealloc;
- (void)deregisterForDeviceManagementMatching;
- (void)handleDeviceManagementMatching:(unsigned int)a3;
- (void)publishCoreAccessoryService:(id)a3;
- (void)registerForDeviceManagementMatching;
- (void)setDriverFirmwareVersion:(id)a3;
- (void)setQueue:(id)a3;
- (void)setSerialNumber:(id)a3;
- (void)unpublishCoreAccessoryService;
@end

@implementation CoreAccessoryManager

- (CoreAccessoryManager)init
{
  v10.receiver = self;
  v10.super_class = CoreAccessoryManager;
  v2 = [(CoreAccessoryManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    serialNumber = v2->_serialNumber;
    v2->_serialNumber = 0;

    driverFirmwareVersion = v3->_driverFirmwareVersion;
    v3->_driverFirmwareVersion = 0;

    connectionUUID = v3->_connectionUUID;
    v3->_connectionUUID = 0;

    publishedAccessoryInfo = v3->_publishedAccessoryInfo;
    v3->_publishedAccessoryInfo = 0;

    v3->_dmMatchedNotifierPortRef = 0;
    v3->_dmMatchedIterator = 0;
    v8 = v3;
  }

  return v3;
}

- (void)dealloc
{
  v3 = MTLoggingPlugin();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 136315906;
    v8 = "";
    v9 = 2080;
    v10 = "";
    v11 = 2080;
    v12 = "[CoreAccessoryManager dealloc]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s ~%@", buf, 0x2Au);
  }

  [(CoreAccessoryManager *)self unpublishCoreAccessoryService];
  [(CoreAccessoryManager *)self deregisterForDeviceManagementMatching];
  v6.receiver = self;
  v6.super_class = CoreAccessoryManager;
  [(CoreAccessoryManager *)&v6 dealloc];
}

- (void)registerForDeviceManagementMatching
{
  v22 = [(CoreAccessoryManager *)self serialNumber];
  if (v22)
  {
    v3 = [(CoreAccessoryManager *)self driverFirmwareVersion];
    if (v3)
    {
      v4 = [(CoreAccessoryManager *)self queue];

      if (v4)
      {
        v5 = MTLoggingPlugin();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v6 = [(CoreAccessoryManager *)self serialNumber];
          *buf = 136315906;
          v24 = "[Debug] ";
          v25 = 2080;
          v26 = "";
          v27 = 2080;
          v28 = "[CoreAccessoryManager registerForDeviceManagementMatching]";
          v29 = 2114;
          v30 = v6;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [%{public}@] Registering for device mangement matching notifications", buf, 0x2Au);
        }

        p_dmMatchedIterator = &self->_dmMatchedIterator;
        if (self->_dmMatchedIterator || self->_dmMatchedNotifierPortRef)
        {
          [(CoreAccessoryManager *)self deregisterForDeviceManagementMatching];
        }

        v37[0] = @"IOPropertyMatch";
        v35 = @"SerialNumber";
        v8 = [(CoreAccessoryManager *)self serialNumber];
        v36 = v8;
        v9 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v37[1] = @"IONameMatch";
        v38[0] = v9;
        v38[1] = @"AppleDeviceManagementHIDEventService";
        v10 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];

        v11 = IONotificationPortCreate(kIOMainPortDefault);
        self->_dmMatchedNotifierPortRef = v11;
        if (v11)
        {
          v12 = IOServiceAddMatchingNotification(v11, "IOServiceFirstMatch", v10, _dmMatchedCallback, self, &self->_dmMatchedIterator);
          if (v12 || !*p_dmMatchedIterator)
          {
            v13 = MTLoggingPlugin();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = [(CoreAccessoryManager *)self serialNumber];
              v15 = *p_dmMatchedIterator;
              *buf = 136316418;
              v24 = "[Error] ";
              v25 = 2080;
              v26 = "";
              v27 = 2080;
              v28 = "[CoreAccessoryManager registerForDeviceManagementMatching]";
              v29 = 2114;
              v30 = v14;
              v31 = 1024;
              v32 = v12;
              v33 = 2048;
              v34 = v15;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Failed to create notification port: 0x%08x (deviceIterator: 0x%08jx)", buf, 0x3Au);
            }

            IONotificationPortDestroy(self->_dmMatchedNotifierPortRef);
            self->_dmMatchedNotifierPortRef = 0;
          }

          else
          {
            v18 = MTLoggingPlugin();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v19 = [(CoreAccessoryManager *)self serialNumber];
              *buf = 136315906;
              v24 = "[Debug] ";
              v25 = 2080;
              v26 = "";
              v27 = 2080;
              v28 = "[CoreAccessoryManager registerForDeviceManagementMatching]";
              v29 = 2114;
              v30 = v19;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [%{public}@] Successfully registered for device mangement matching notifications", buf, 0x2Au);
            }

            [(CoreAccessoryManager *)self handleDeviceManagementMatching:self->_dmMatchedIterator];
            dmMatchedNotifierPortRef = self->_dmMatchedNotifierPortRef;
            v21 = [(CoreAccessoryManager *)self queue];
            IONotificationPortSetDispatchQueue(dmMatchedNotifierPortRef, v21);
          }
        }

        else
        {
          v16 = MTLoggingPlugin();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = [(CoreAccessoryManager *)self serialNumber];
            *buf = 136315906;
            v24 = "[Error] ";
            v25 = 2080;
            v26 = "";
            v27 = 2080;
            v28 = "[CoreAccessoryManager registerForDeviceManagementMatching]";
            v29 = 2114;
            v30 = v17;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Failed to create notification port for device", buf, 0x2Au);
          }
        }
      }
    }

    else
    {
    }
  }
}

- (void)deregisterForDeviceManagementMatching
{
  v3 = MTLoggingPlugin();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(CoreAccessoryManager *)self serialNumber];
    v7 = 136315906;
    v8 = "[Debug] ";
    v9 = 2080;
    v10 = "";
    v11 = 2080;
    v12 = "[CoreAccessoryManager deregisterForDeviceManagementMatching]";
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [%{public}@] enter", &v7, 0x2Au);
  }

  dmMatchedIterator = self->_dmMatchedIterator;
  if (dmMatchedIterator)
  {
    IOObjectRelease(dmMatchedIterator);
    self->_dmMatchedIterator = 0;
  }

  dmMatchedNotifierPortRef = self->_dmMatchedNotifierPortRef;
  if (dmMatchedNotifierPortRef)
  {
    IONotificationPortDestroy(dmMatchedNotifierPortRef);
    self->_dmMatchedNotifierPortRef = 0;
  }
}

- (void)handleDeviceManagementMatching:(unsigned int)a3
{
  v5 = IOIteratorNext(a3);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      if (v7 >= 2)
      {
        v8 = MTLoggingPlugin();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = [(CoreAccessoryManager *)self serialNumber];
          *buf = 136315906;
          v16 = "[Error] ";
          v17 = 2080;
          v18 = "";
          v19 = 2080;
          v20 = "[CoreAccessoryManager handleDeviceManagementMatching:]";
          v21 = 2114;
          v22 = v9;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Found multiple device management services expected only one", buf, 0x2Au);
        }
      }

      properties = 0xAAAAAAAAAAAAAAAALL;
      v10 = IORegistryEntryCreateCFProperties(v6, &properties, kCFAllocatorDefault, 0);
      v11 = properties;
      if (v10 || !properties)
      {
        v12 = MTLoggingPlugin();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [(CoreAccessoryManager *)self serialNumber];
          *buf = 136315906;
          v16 = "[Error] ";
          v17 = 2080;
          v18 = "";
          v19 = 2080;
          v20 = "[CoreAccessoryManager handleDeviceManagementMatching:]";
          v21 = 2114;
          v22 = v13;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Failed to retrieve the properties from device management service", buf, 0x2Au);
        }
      }

      else
      {
        [(CoreAccessoryManager *)self publishCoreAccessoryService:properties];
      }

      IOObjectRelease(v6);

      v6 = IOIteratorNext(a3);
      ++v7;
    }

    while (v6);
  }
}

- (void)publishCoreAccessoryService:(id)a3
{
  v4 = a3;
  if (self->_connectionUUID)
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(CoreAccessoryManager *)self serialNumber];
      *buf = 136315906;
      v27 = "[Debug] ";
      v28 = 2080;
      v29 = "";
      v30 = 2080;
      v31 = "[CoreAccessoryManager publishCoreAccessoryService:]";
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s [%{public}@] Existing device has already been published - Unpublishing previous device first", buf, 0x2Au);
    }

    [(CoreAccessoryManager *)self unpublishCoreAccessoryService];
  }

  v24 = -1431655766;
  v25 = -1431655766;
  v7 = [v4 objectForKeyedSubscript:@"Transport"];
  [(CoreAccessoryManager *)self accessoryConnectionInfoFromTransport:v7 connection:&v25 transport:&v24];

  v8 = +[ACCTransportClient sharedClient];
  v9 = v25;
  v10 = [(CoreAccessoryManager *)self serialNumber];
  v11 = [v8 createConnectionWithType:v9 andIdentifier:v10];

  if (v11)
  {
    v12 = +[ACCTransportClient sharedClient];
    v13 = [v12 createEndpointWithTransportType:v24 andProtocol:1 andIdentifier:0 andDataOutHandler:0 forConnectionWithUUID:v11 publishConnection:0];

    if (v13)
    {
      v14 = [(CoreAccessoryManager *)self coreAccessoryServiceInfoFromProperties:v4];
      v15 = +[ACCTransportClient sharedClient];
      [v15 setAccessoryInfo:v14 forEndpointWithUUID:v13];

      v16 = +[ACCTransportClient sharedClient];
      [v16 publishConnectionWithUUID:v11];

      v17 = [v14 copy];
      publishedAccessoryInfo = self->_publishedAccessoryInfo;
      self->_publishedAccessoryInfo = v17;

      objc_storeStrong(&self->_connectionUUID, v11);
      v19 = MTLoggingPlugin();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(CoreAccessoryManager *)self serialNumber];
        v21 = [v14 objectForKeyedSubscript:kACCInfo_Name];
        *buf = 136316418;
        v27 = "";
        v28 = 2080;
        v29 = "";
        v30 = 2080;
        v31 = "[CoreAccessoryManager publishCoreAccessoryService:]";
        v32 = 2114;
        v33 = v20;
        v34 = 2114;
        v35 = v21;
        v36 = 2114;
        v37 = v11;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s [%{public}@] Published device %{public}@ with connection UUID %{public}@", buf, 0x3Eu);
      }
    }

    else
    {
      v14 = MTLoggingPlugin();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v23 = [(CoreAccessoryManager *)self serialNumber];
        *buf = 136315906;
        v27 = "[Error] ";
        v28 = 2080;
        v29 = "";
        v30 = 2080;
        v31 = "[CoreAccessoryManager publishCoreAccessoryService:]";
        v32 = 2114;
        v33 = v23;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Could not create CoreAccessory endpoint", buf, 0x2Au);
      }
    }
  }

  else
  {
    v13 = MTLoggingPlugin();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v22 = [(CoreAccessoryManager *)self serialNumber];
      *buf = 136315906;
      v27 = "[Error] ";
      v28 = 2080;
      v29 = "";
      v30 = 2080;
      v31 = "[CoreAccessoryManager publishCoreAccessoryService:]";
      v32 = 2114;
      v33 = v22;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Could not create CoreAccessory connection", buf, 0x2Au);
    }
  }
}

- (void)unpublishCoreAccessoryService
{
  if (self->_connectionUUID)
  {
    v3 = MTLoggingPlugin();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CoreAccessoryManager *)self serialNumber];
      connectionUUID = self->_connectionUUID;
      v8 = 136316162;
      v9 = "";
      v10 = 2080;
      v11 = "";
      v12 = 2080;
      v13 = "[CoreAccessoryManager unpublishCoreAccessoryService]";
      v14 = 2114;
      v15 = v4;
      v16 = 2114;
      v17 = connectionUUID;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s [%{public}@] Unpublishing device with connection UUID %{public}@", &v8, 0x34u);
    }

    v6 = +[ACCTransportClient sharedClient];
    [v6 destroyConnectionWithUUID:self->_connectionUUID];

    v7 = self->_connectionUUID;
    self->_connectionUUID = 0;
  }
}

- (id)coreAccessoryServiceInfoFromProperties:(id)a3
{
  v21 = a3;
  v4 = [v21 mutableCopy];
  v23 = [v4 objectForKeyedSubscript:@"MTFW Version"];
  if (!v23 || ![v23 intValue])
  {
    v5 = [(CoreAccessoryManager *)self driverFirmwareVersion];

    if (v5)
    {
      v6 = [(CoreAccessoryManager *)self driverFirmwareVersion];
      [v4 setObject:v6 forKeyedSubscript:@"MTFW Version"];
    }

    else
    {
      v7 = MTLoggingPlugin();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [(CoreAccessoryManager *)self serialNumber];
        *buf = 136315906;
        v36 = "[Error] ";
        v37 = 2080;
        v38 = "";
        v39 = 2080;
        v40 = "[CoreAccessoryManager coreAccessoryServiceInfoFromProperties:]";
        v41 = 2114;
        v42 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s [%{public}@] Failed to determine MTFW version", buf, 0x2Au);
      }

      [v4 setObject:&off_112470 forKeyedSubscript:@"MTFW Version"];
    }
  }

  v24 = [v4 objectForKeyedSubscript:@"SerialNumber"];
  v25 = [v4 objectForKeyedSubscript:@"Product"];
  v26 = [v4 objectForKeyedSubscript:@"Manufacturer"];
  v9 = [v4 objectForKeyedSubscript:@"HardwareID"];
  v22 = v9;
  if (v9)
  {
    v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%04X", [v9 unsignedIntegerValue]);
  }

  else
  {
    v27 = &stru_10DCA8;
  }

  v10 = [NSMutableString stringWithCapacity:20];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [&off_112BF8 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(&off_112BF8);
        }

        v14 = [v4 objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
        if (v14)
        {
          if ([v10 length])
          {
            [v10 appendString:@"."];
          }

          v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%04X", [v14 unsignedIntegerValue]);
          [v10 appendString:v15];
        }
      }

      v11 = [&off_112BF8 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v11);
  }

  v16 = v25;
  if (!v25)
  {
    v16 = &stru_10DCA8;
  }

  v32[0] = kACCInfo_Name;
  v32[1] = kACCInfo_Manufacturer;
  v17 = @"Apple Inc.";
  if (v26)
  {
    v17 = v26;
  }

  v33[0] = v16;
  v33[1] = v17;
  v18 = v24;
  if (!v24)
  {
    v18 = &stru_10DCA8;
  }

  v32[2] = kACCInfo_SerialNumber;
  v32[3] = kACCInfo_FirmwareVersionActive;
  v33[2] = v18;
  v33[3] = v10;
  v32[4] = kACCInfo_HardwareVersion;
  v32[5] = kACCInfo_Model;
  v33[4] = v27;
  v33[5] = &stru_10DCA8;
  v19 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:6];

  return v19;
}

- (void)accessoryConnectionInfoFromTransport:(id)a3 connection:(int *)a4 transport:(int *)a5
{
  v10 = a3;
  if ([v10 isEqualToString:@"AID"])
  {
    v7 = 7;
    v8 = 3;
  }

  else if ([v10 isEqualToString:@"USB"])
  {
    v7 = 0;
    v8 = 6;
  }

  else
  {
    v9 = [v10 isEqualToString:@"Bluetooth"];
    if (v9)
    {
      v8 = 2;
    }

    else
    {
      v8 = 11;
    }

    if (v9)
    {
      v7 = 2;
    }

    else
    {
      v7 = 18;
    }
  }

  *a4 = v8;
  *a5 = v7;
}

- (void)setSerialNumber:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v5 = [(CoreAccessoryManager *)self serialNumber];
    v6 = [v5 isEqualToString:v7];

    if ((v6 & 1) == 0)
    {
      objc_storeStrong(&self->_serialNumber, a3);
      [(CoreAccessoryManager *)self registerForDeviceManagementMatching];
    }
  }
}

- (void)setDriverFirmwareVersion:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v5 = [(CoreAccessoryManager *)self driverFirmwareVersion];
    v6 = [v5 isEqualToString:v7];

    if ((v6 & 1) == 0)
    {
      objc_storeStrong(&self->_driverFirmwareVersion, a3);
      [(CoreAccessoryManager *)self registerForDeviceManagementMatching];
    }
  }
}

- (void)setQueue:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"CoreAccessoryManager.mm" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  objc_storeStrong(&self->_queue, a3);
  [(CoreAccessoryManager *)self registerForDeviceManagementMatching];
}

- (NSDictionary)debug
{
  v14[0] = @"SerialNumber";
  v3 = [(CoreAccessoryManager *)self serialNumber];
  v4 = v3;
  v5 = @"Unknown";
  if (v3)
  {
    v5 = v3;
  }

  v15[0] = v5;
  v14[1] = @"MultitouchDriverFirmwareVersion";
  v6 = [(CoreAccessoryManager *)self driverFirmwareVersion];
  v7 = v6;
  v8 = @"None";
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = @"None";
  }

  connectionUUID = self->_connectionUUID;
  publishedAccessoryInfo = self->_publishedAccessoryInfo;
  if (!connectionUUID)
  {
    connectionUUID = @"None";
  }

  v15[1] = v9;
  v15[2] = connectionUUID;
  v14[2] = @"ConnectionUUID";
  v14[3] = @"PublishedAccessoryInfo";
  if (publishedAccessoryInfo)
  {
    v8 = [(NSDictionary *)publishedAccessoryInfo copy];
  }

  v15[3] = v8;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (publishedAccessoryInfo)
  {
  }

  return v12;
}

@end