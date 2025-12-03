@interface AccessoryUSBBillboardDevice
+ (unint64_t)getRegistryEntryIDFromService:(unsigned int)service;
+ (unsigned)parentServiceVidPid:(unsigned int)pid;
- (void)dismissNotSupportNotification;
- (void)presentNotSupportNotification;
@end

@implementation AccessoryUSBBillboardDevice

- (void)presentNotSupportNotification
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = acc_userNotifications_accessoryNotSupported();
  v4 = [(NSString *)self->_identifier copy];
  [v3 setGroupIdentifier:v4];

  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    vid = self->_vid;
    pid = self->_pid;
    registryEntryID = self->_registryEntryID;
    groupIdentifier = [v3 groupIdentifier];
    v14 = 136316418;
    v15 = "[AccessoryUSBBillboardDevice presentNotSupportNotification]";
    v16 = 1024;
    v17 = vid;
    v18 = 1024;
    v19 = pid;
    v20 = 2048;
    v21 = registryEntryID;
    v22 = 2112;
    v23 = groupIdentifier;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_2336F5000, v7, OS_LOG_TYPE_DEFAULT, "%s: vid/pid 0x%X/0x%X, registryID 0x%llx, groupidentifer %@, pAccErrorNotification %@", &v14, 0x36u);
  }

  v12 = +[ACCUserNotificationManager sharedManager];
  [v12 presentNotification:v3 completionHandler:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dismissNotSupportNotification
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(NSString *)self->_identifier copy];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    vid = self->_vid;
    pid = self->_pid;
    registryEntryID = self->_registryEntryID;
    v12 = 136316162;
    v13 = "[AccessoryUSBBillboardDevice dismissNotSupportNotification]";
    v14 = 1024;
    v15 = vid;
    v16 = 1024;
    v17 = pid;
    v18 = 2048;
    v19 = registryEntryID;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_DEFAULT, "%s: vid/pid 0x%X/0x%X, registryID 0x%llx, groupidentifer %@", &v12, 0x2Cu);
  }

  v10 = +[ACCUserNotificationManager sharedManager];
  [v10 dismissNotificationsWithGroupIdentifier:v3];

  v11 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)getRegistryEntryIDFromService:(unsigned int)service
{
  entryID = 0;
  if (IORegistryEntryGetRegistryEntryID(service, &entryID))
  {
    return 0;
  }

  else
  {
    return entryID;
  }
}

+ (unsigned)parentServiceVidPid:(unsigned int)pid
{
  v31 = *MEMORY[0x277D85DE8];
  parent = 0;
  ParentEntry = IORegistryEntryGetParentEntry(pid, "IOService", &parent);
  if (ParentEntry)
  {
    [(AccessoryUSBBillboardDevice *)&parent parentServiceVidPid:pid, ParentEntry];
    v5 = 0;
    v8 = 0;
    CFProperty = 0;
    v10 = 0;
  }

  else
  {
    if (parent)
    {
      v5 = IOObjectCopyClass(parent);
      v6 = *MEMORY[0x277CBECE8];
      CFProperty = IORegistryEntryCreateCFProperty(parent, @"idVendor", *MEMORY[0x277CBECE8], 0);
      v8 = IORegistryEntryCreateCFProperty(parent, @"idProduct", v6, 0);
      IOObjectRelease(parent);
    }

    else
    {
      v5 = 0;
      v8 = 0;
      CFProperty = 0;
    }

    unsignedShortValue = [CFProperty unsignedShortValue];
    v10 = [v8 unsignedShortValue] | (unsignedShortValue << 16);
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136316674;
    v18 = "+[AccessoryUSBBillboardDevice parentServiceVidPid:]";
    v19 = 1024;
    pidCopy = pid;
    v21 = 1024;
    v22 = parent;
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = CFProperty;
    v27 = 2112;
    v28 = v8;
    v29 = 1024;
    v30 = v10;
    _os_log_impl(&dword_2336F5000, v13, OS_LOG_TYPE_INFO, "%s: service(%d) parent(%d - %@) vid/pid(%@/%@) vidpid 0X%X", buf, 0x3Cu);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)parentServiceVidPid:(int)a3 .cold.1(int *a1, int a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = logObjectForModule();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a1;
    v9 = 136315906;
    v10 = "+[AccessoryUSBBillboardDevice parentServiceVidPid:]";
    v11 = 1024;
    v12 = a2;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_DEFAULT, "%s: service(%d) parent(%d) not available. (%d)", &v9, 0x1Eu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end