@interface AccessoryUSBBillboardDeviceListener
- (AccessoryUSBBillboardDeviceListener)initWithVID:(unsigned __int16)d PID:(unsigned __int16)iD;
- (BOOL)startDetectUSBBillboardDevice;
- (BOOL)stopDetectUSBBillboardDevice;
- (void)dealloc;
- (void)startDetectUSBBillboardDevice;
@end

@implementation AccessoryUSBBillboardDeviceListener

- (AccessoryUSBBillboardDeviceListener)initWithVID:(unsigned __int16)d PID:(unsigned __int16)iD
{
  iDCopy = iD;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = AccessoryUSBBillboardDeviceListener;
  v6 = [(AccessoryUSBBillboardDeviceListener *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessoryUSBBillboardDeviceVIDPID = iDCopy | (dCopy << 16);
    v6->_appleUSBHostBillboardDeviceNotify = 0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    accessoryUSBBillboardDeviceRegistryIDs = v7->_accessoryUSBBillboardDeviceRegistryIDs;
    v7->_accessoryUSBBillboardDeviceRegistryIDs = v8;

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%x", "com.apple.coreaccessories.USBBillboardListener", v7->_accessoryUSBBillboardDeviceVIDPID];
    v11 = dispatch_queue_create([v10 UTF8String], 0);
    accessoryUSBBillboardDeviceListenerQueue = v7->_accessoryUSBBillboardDeviceListenerQueue;
    v7->_accessoryUSBBillboardDeviceListenerQueue = v11;
  }

  return v7;
}

- (void)dealloc
{
  [(AccessoryUSBBillboardDeviceListener *)self stopDetectUSBBillboardDevice];
  v3.receiver = self;
  v3.super_class = AccessoryUSBBillboardDeviceListener;
  [(AccessoryUSBBillboardDeviceListener *)&v3 dealloc];
}

- (BOOL)startDetectUSBBillboardDevice
{
  v46 = *MEMORY[0x277D85DE8];
  accessoryUSBBillboardDeviceVIDPID = self->_accessoryUSBBillboardDeviceVIDPID;
  v37 = accessoryUSBBillboardDeviceVIDPID;
  valuePtr = HIWORD(accessoryUSBBillboardDeviceVIDPID);
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
    v7 = self->_accessoryUSBBillboardDeviceVIDPID;
    *buf = 136316162;
    *v40 = "[AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice]";
    *&v40[8] = 1024;
    *v41 = accessoryUSBBillboardDeviceVIDPID;
    *&v41[4] = 1024;
    *v42 = valuePtr;
    *&v42[4] = 1024;
    *v43 = v37;
    *&v43[4] = 1024;
    *&v43[6] = v7;
    _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_DEFAULT, "%s: vidpid = 0x%X (0x%x,0x%x), vs 0x%X", buf, 0x24u);
  }

  if (!self->_started)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_appleUSBHostBillboardDeviceNotify)
    {
      v9 = IONotificationPortCreate(*MEMORY[0x277CD28A0]);
      selfCopy->_appleUSBHostBillboardDeviceNotify = v9;
      IONotificationPortSetDispatchQueue(v9, selfCopy->_accessoryUSBBillboardDeviceListenerQueue);
    }

    v10 = IOServiceMatching("AppleUSBHostBillboardDevice");
    if (v10)
    {
      v11 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v13 = CFNumberCreate(v11, kCFNumberSInt32Type, &valuePtr);
        CFDictionaryAddValue(Mutable, @"idVendor", v13);
        v14 = CFNumberCreate(v11, kCFNumberSInt32Type, &v37);
        CFDictionaryAddValue(Mutable, @"idProduct", v14);
        v15 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v16 = v15;
        if (v15)
        {
          CFDictionaryAddValue(v15, @"IOProviderClass", @"IOUSBHostInterface");
          CFDictionaryAddValue(v16, @"IOPropertyMatch", Mutable);
          CFDictionaryAddValue(v10, @"IOParentMatch", v16);
          CFRetain(v10);
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v17 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
            }

            v17 = MEMORY[0x277D86220];
            v18 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v19 = self->_accessoryUSBBillboardDeviceVIDPID;
            *buf = 136316418;
            *v40 = "[AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice]";
            *&v40[8] = 1024;
            *v41 = accessoryUSBBillboardDeviceVIDPID;
            *&v41[4] = 1024;
            *v42 = valuePtr;
            *&v42[4] = 1024;
            *v43 = v37;
            *&v43[4] = 1024;
            *&v43[6] = v19;
            v44 = 2112;
            v45 = v10;
            _os_log_impl(&dword_2336F5000, v17, OS_LOG_TYPE_DEFAULT, "%s: vidpid = 0x%X (0x%x,0x%x), vs 0x%X, matchingDictionary = %@", buf, 0x2Eu);
          }

          if (!IOServiceAddMatchingNotification(selfCopy->_appleUSBHostBillboardDeviceNotify, "IOServicePublish", v10, __AppleUSBHostBillboardDeviceAdded, selfCopy, &selfCopy->_billboardAddedIterator))
          {
            __AppleUSBHostBillboardDeviceAdded(selfCopy, selfCopy->_billboardAddedIterator);
            CFRetain(v10);
            v20 = IOServiceAddMatchingNotification(selfCopy->_appleUSBHostBillboardDeviceNotify, "IOServiceTerminate", v10, __AppleUSBHostBillboardDeviceTerminated, selfCopy, &selfCopy->_billboardRemovedIterator);
            if (!v20)
            {
              __AppleUSBHostBillboardDeviceTerminated(selfCopy, selfCopy->_billboardRemovedIterator);
              self->_started = 1;
              objc_sync_exit(selfCopy);

              v21 = 1;
LABEL_28:
              CFRelease(v10);
              goto LABEL_29;
            }

            v24 = logObjectForModule();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_47;
            }

            v36 = self->_accessoryUSBBillboardDeviceVIDPID;
            *buf = 67110144;
            *v40 = v20;
            *&v40[4] = 1024;
            *&v40[6] = accessoryUSBBillboardDeviceVIDPID;
            *v41 = 1024;
            *&v41[2] = valuePtr;
            *v42 = 1024;
            *&v42[2] = v37;
            *v43 = 1024;
            *&v43[2] = v36;
            v28 = "Failed to AddMatchingNotification for Termination, ret 0x%x, vidpid = 0x%X (0x%x,0x%x), vs 0x%X";
            v29 = v24;
            v30 = 32;
            goto LABEL_61;
          }

          v24 = logObjectForModule();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v27 = self->_accessoryUSBBillboardDeviceVIDPID;
            *buf = 67110146;
            *v40 = accessoryUSBBillboardDeviceVIDPID;
            *&v40[4] = 1024;
            *&v40[6] = valuePtr;
            *v41 = 1024;
            *&v41[2] = v37;
            *v42 = 1024;
            *&v42[2] = v27;
            *v43 = 2112;
            *&v43[2] = v10;
            v28 = "Failed to GetMatchingNotification, vidpid = 0x%X (0x%x,0x%x), vs 0X%X, matchingDictionary %@";
            v29 = v24;
            v30 = 36;
LABEL_61:
            _os_log_error_impl(&dword_2336F5000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
          }

LABEL_47:

          objc_sync_exit(selfCopy);
          goto LABEL_48;
        }

        v24 = logObjectForModule();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v35 = self->_accessoryUSBBillboardDeviceVIDPID;
          *buf = 67109888;
          *v40 = accessoryUSBBillboardDeviceVIDPID;
          *&v40[4] = 1024;
          *&v40[6] = valuePtr;
          *v41 = 1024;
          *&v41[2] = v37;
          *v42 = 1024;
          *&v42[2] = v35;
          _os_log_error_impl(&dword_2336F5000, v24, OS_LOG_TYPE_ERROR, "Could not create parentMatchingDictionary, vidpid = 0x%X (0x%x,0x%x), vs 0x%X", buf, 0x1Au);
        }

LABEL_43:
        v16 = 0;
        goto LABEL_47;
      }

      v24 = logObjectForModule();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
LABEL_40:
        Mutable = 0;
        goto LABEL_43;
      }

      v34 = self->_accessoryUSBBillboardDeviceVIDPID;
      *buf = 67109888;
      *v40 = accessoryUSBBillboardDeviceVIDPID;
      *&v40[4] = 1024;
      *&v40[6] = valuePtr;
      *v41 = 1024;
      *&v41[2] = v37;
      *v42 = 1024;
      *&v42[2] = v34;
      v26 = "Could not create parentPropertyDictionary, vidpid = 0x%X (0x%x,0x%x), vs 0x%X";
    }

    else
    {
      v24 = logObjectForModule();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      v25 = self->_accessoryUSBBillboardDeviceVIDPID;
      *buf = 67109888;
      *v40 = accessoryUSBBillboardDeviceVIDPID;
      *&v40[4] = 1024;
      *&v40[6] = valuePtr;
      *v41 = 1024;
      *&v41[2] = v37;
      *v42 = 1024;
      *&v42[2] = v25;
      v26 = "Could not create matchingDictionary, vidpid = 0x%X (0x%x,0x%x), vs 0x%X";
    }

    _os_log_error_impl(&dword_2336F5000, v24, OS_LOG_TYPE_ERROR, v26, buf, 0x1Au);
    goto LABEL_40;
  }

  selfCopy = logObjectForModule();
  if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
  {
    v33 = self->_accessoryUSBBillboardDeviceVIDPID;
    *buf = 67109888;
    *v40 = accessoryUSBBillboardDeviceVIDPID;
    *&v40[4] = 1024;
    *&v40[6] = valuePtr;
    *v41 = 1024;
    *&v41[2] = v37;
    *v42 = 1024;
    *&v42[2] = v33;
    _os_log_error_impl(&dword_2336F5000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Already started detecting billboard device, vidpid = 0x%X (0x%x,0x%x), vs 0x%X", buf, 0x1Au);
  }

  v10 = 0;
  v16 = 0;
  Mutable = 0;
LABEL_48:

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v31 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v31 = MEMORY[0x277D86220];
    v32 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [(AccessoryUSBBillboardDeviceListener *)accessoryUSBBillboardDeviceVIDPID startDetectUSBBillboardDevice];
  }

  [(AccessoryUSBBillboardDeviceListener *)self stopDetectUSBBillboardDevice];
  v21 = 0;
  if (v10)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)stopDetectUSBBillboardDevice
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  appleUSBHostBillboardDeviceNotify = selfCopy->_appleUSBHostBillboardDeviceNotify;
  if (appleUSBHostBillboardDeviceNotify)
  {
    IONotificationPortDestroy(appleUSBHostBillboardDeviceNotify);
    selfCopy->_appleUSBHostBillboardDeviceNotify = 0;
  }

  billboardAddedIterator = selfCopy->_billboardAddedIterator;
  if (billboardAddedIterator)
  {
    IOObjectRelease(billboardAddedIterator);
    selfCopy->_billboardAddedIterator = 0;
  }

  billboardRemovedIterator = selfCopy->_billboardRemovedIterator;
  if (billboardRemovedIterator)
  {
    IOObjectRelease(billboardRemovedIterator);
    selfCopy->_billboardRemovedIterator = 0;
  }

  selfCopy->_started = 0;
  objc_sync_exit(selfCopy);

  return 1;
}

- (void)startDetectUSBBillboardDevice
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_error_impl(&dword_2336F5000, a2, OS_LOG_TYPE_ERROR, "Failed startDetectUSBBillboardDevice, cleanup, vidpid = 0x%X", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end