@interface USBDeviceManager
- (BOOL)sendPingToUSBDevice:(id)device;
- (USBDeviceManager)initWithBTAddress:(id)address;
- (id)getUSBColor:(id)color;
- (id)getUSBFWVersion:(id)version;
- (id)getUSBFeatureBitmask:(id)bitmask;
- (id)getUSBModelID:(id)d;
- (id)getUSBName:(id)name;
- (id)getUSBPairingMode:(id)mode;
- (id)getUSBPid:(id)pid;
- (id)updateHostSideInfo;
- (void)addUSBAudioDevice:(id)device withModelID:(id)d;
- (void)cleanUSBInformation;
- (void)disableAirPlaneModeForUSBPortWithUID:(id)d;
- (void)enableAirPlaneModeForUSBPortWithUID:(id)d;
- (void)hideUSBPortWithUID:(id)d UpdateAirPodsState:(BOOL)state;
- (void)needToRemoveUSBDeviceFromList:(id)list;
- (void)playbackOverUSBChanged:(id)changed;
- (void)processUSBDeviceBluetoothInformation:(id)information withBTAddress:(__CFDictionary *)address;
- (void)propertyChangeBTAddress:(id)address;
- (void)registerUSBDeviceNotification:(id)notification;
- (void)removeUSBAudioDevice:(id)device;
- (void)sendUSBcMetric;
- (void)startPairingProcess:(id)process;
- (void)unHideUSBPortWithUID:(id)d UpdateAirPodsState:(BOOL)state;
- (void)updateHostSideLocalBTAddress:(id)address withState:(id)state;
@end

@implementation USBDeviceManager

- (USBDeviceManager)initWithBTAddress:(id)address
{
  v6.receiver = self;
  v6.super_class = USBDeviceManager;
  v3 = [(USBDeviceManager *)&v6 init];
  if (v3)
  {
    v3->_usbAudioDeviceList = objc_alloc_init(NSMutableDictionary);
    v3->_usbMetric = objc_alloc_init(USBMetric);
    v3->_hostSideUSBInfo = objc_alloc_init(NSMutableDictionary);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3->_usbQueue = dispatch_queue_create("USBCManager", v4);
    v3->_btPowerState = 0;
  }

  return v3;
}

- (id)updateHostSideInfo
{
  if (!self->_hostSideUSBInfo)
  {
    self->_hostSideUSBInfo = objc_alloc_init(NSMutableDictionary);
  }

  v22 = 0;
  v21 = 0;
  v3 = objc_alloc_init(NSMutableArray);
  [sub_4A7E8(qword_D8DF0) UTF8String];
  v4 = TextToHardwareAddress();
  for (i = 0; i != 6; ++i)
  {
    v6 = [[NSNumber alloc] initWithUnsignedInt:*(&v21 + i)];
    if (v6)
    {
      [v3 addObject:v6];
    }

    CFRelease(v6);
  }

  if (!v4 && v3)
  {
    [(NSMutableDictionary *)[(USBDeviceManager *)self hostSideUSBInfo] setObject:v3 forKey:@"bt_addr"];
    v7 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110400;
      *v24 = v21;
      *&v24[4] = 1024;
      *&v24[6] = BYTE1(v21);
      v25 = 1024;
      v26 = BYTE2(v21);
      v27 = 1024;
      v28 = HIBYTE(v21);
      v29 = 1024;
      v30 = v22;
      v31 = 1024;
      v32 = HIBYTE(v22);
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Setting host side address as 0x%.2x:%.2x:%.2x:%.2x:%.2x:%.2x", buf, 0x26u);
    }

    v8 = [NSNumber numberWithInt:1];
    [(NSMutableDictionary *)[(USBDeviceManager *)self hostSideUSBInfo] setObject:v8 forKey:@"source"];
    v9 = qword_D8560;
    if (!os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    hostSideUSBInfo = [(USBDeviceManager *)self hostSideUSBInfo];
    *buf = 138412290;
    *v24 = hostSideUSBInfo;
LABEL_13:
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Created hostSideUSBInfo %@", buf, 0xCu);
LABEL_14:
    CFRelease(v8);
    return self->_hostSideUSBInfo;
  }

  if (v4 && !self->_btPowerState)
  {
    v12 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      hostSideUSBInfo2 = [(USBDeviceManager *)self hostSideUSBInfo];
      *buf = 138412290;
      *v24 = hostSideUSBInfo2;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "BT power state is off, continue with sending correct state %@", buf, 0xCu);
    }

    WORD2(v20) = 0;
    LODWORD(v20) = 0;
    v14 = objc_alloc_init(NSMutableArray);
    [@"11:11:22:33:44:55" UTF8String];
    v15 = TextToHardwareAddress();
    for (j = 0; j != 6; ++j)
    {
      v17 = [[NSNumber alloc] initWithUnsignedInt:*(&v20 + j)];
      if (v17)
      {
        [v14 addObject:v17];
      }

      CFRelease(v17);
    }

    if (!v15 && v14)
    {
      [(NSMutableDictionary *)[(USBDeviceManager *)self hostSideUSBInfo] setObject:v14 forKey:@"bt_addr"];
      v18 = qword_D8560;
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110400;
        *v24 = v20;
        *&v24[4] = 1024;
        *&v24[6] = BYTE1(v20);
        v25 = 1024;
        v26 = BYTE2(v20);
        v27 = 1024;
        v28 = BYTE3(v20);
        v29 = 1024;
        v30 = BYTE4(v20);
        v31 = 1024;
        v32 = BYTE5(v20);
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Setting host side address as 0x%.2x:%.2x:%.2x:%.2x:%.2x:%.2x", buf, 0x26u);
      }

      v8 = [NSNumber numberWithInt:1, v20];
      [(NSMutableDictionary *)[(USBDeviceManager *)self hostSideUSBInfo] setObject:v8 forKey:@"source"];
      v9 = qword_D8560;
      if (!os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      hostSideUSBInfo3 = [(USBDeviceManager *)self hostSideUSBInfo];
      *buf = 138412290;
      *v24 = hostSideUSBInfo3;
      goto LABEL_13;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7E774();
    }

    self->_hostSideUSBInfo = 0;
  }

  return self->_hostSideUSBInfo;
}

- (void)updateHostSideLocalBTAddress:(id)address withState:(id)state
{
  if (*(qword_D8DF0 + 496))
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "kBTAudioMsgMethod", 0x22uLL);
    v8 = *(qword_D8DF0 + 496);
    usbQueue = self->_usbQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_525CC;
    handler[3] = &unk_B0C08;
    handler[4] = self;
    handler[5] = state;
    handler[6] = address;
    xpc_connection_send_message_with_reply(v8, v7, usbQueue, handler);
    xpc_release(v7);
  }

  else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7E7E4();
  }
}

- (id)getUSBModelID:(id)d
{
  result = [(NSMutableDictionary *)self->_usbAudioDeviceList objectForKeyedSubscript:?];
  if (result)
  {
    v6 = [(NSMutableDictionary *)self->_usbAudioDeviceList objectForKeyedSubscript:d];

    return [v6 modelID];
  }

  return result;
}

- (id)getUSBName:(id)name
{
  result = [(NSMutableDictionary *)self->_usbAudioDeviceList objectForKeyedSubscript:?];
  if (result)
  {
    v6 = [(NSMutableDictionary *)self->_usbAudioDeviceList objectForKeyedSubscript:name];

    return [v6 name];
  }

  return result;
}

- (id)getUSBColor:(id)color
{
  result = [(NSMutableDictionary *)self->_usbAudioDeviceList objectForKeyedSubscript:?];
  if (result)
  {
    v6 = [(NSMutableDictionary *)self->_usbAudioDeviceList objectForKeyedSubscript:color];

    return [v6 color];
  }

  return result;
}

- (id)getUSBFWVersion:(id)version
{
  result = [(NSMutableDictionary *)self->_usbAudioDeviceList objectForKeyedSubscript:?];
  if (result)
  {
    v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{version), "fwVersion"}];

    return v6;
  }

  return result;
}

- (id)getUSBPid:(id)pid
{
  result = [(NSMutableDictionary *)self->_usbAudioDeviceList objectForKeyedSubscript:?];
  if (result)
  {
    v6 = [(NSMutableDictionary *)self->_usbAudioDeviceList objectForKeyedSubscript:pid];

    return [v6 pid];
  }

  return result;
}

- (id)getUSBPairingMode:(id)mode
{
  result = [(NSMutableDictionary *)self->_usbAudioDeviceList objectForKeyedSubscript:?];
  if (result)
  {
    v6 = [(NSMutableDictionary *)self->_usbAudioDeviceList objectForKeyedSubscript:mode];

    return [v6 pairingMode];
  }

  return result;
}

- (id)getUSBFeatureBitmask:(id)bitmask
{
  result = [(NSMutableDictionary *)self->_usbAudioDeviceList objectForKeyedSubscript:?];
  if (result)
  {
    v6 = [(NSMutableDictionary *)self->_usbAudioDeviceList objectForKeyedSubscript:bitmask];

    return [v6 featureBitmask];
  }

  return result;
}

- (void)addUSBAudioDevice:(id)device withModelID:(id)d
{
  if (!self->_usbAudioDeviceList)
  {
    self->_usbAudioDeviceList = objc_alloc_init(NSMutableDictionary);
    self->_currentRoutedDeviceIsUnified = 0;
  }

  if (!self->_usbMetric)
  {
    self->_usbMetric = objc_alloc_init(USBMetric);
  }

  v7 = objc_alloc_init(USBDevice);
  [(USBDevice *)v7 setUsbDevice:device];
  -[USBDevice setUsbUID:](v7, "setUsbUID:", [device deviceUID]);
  [(USBDevice *)v7 setModelID:d];
  -[USBDevice setName:](v7, "setName:", [device name]);
  [(USBDevice *)v7 setColor:0];
  v8 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = [device deviceUID];
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Adding USBC device with id:%@ %p", buf, 0x16u);
  }

  self->_currentRoutedUSBDeviceUID = [device deviceUID];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_usbAudioDeviceList, "setObject:forKeyedSubscript:", v7, [device deviceUID]);
  if ([device hasProperty:1967669844 scope:1735159650 ofElement:0] && objc_msgSend(device, "isMainGlobalPropertySettable:", 1967669844))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v13 = [(USBDeviceManager *)self sendPingToUSBDevice:device];
    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      v9 = dispatch_time(0, 20000000000);
      usbQueue = self->_usbQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_52D08;
      block[3] = &unk_B0C30;
      block[5] = device;
      block[6] = buf;
      block[4] = self;
      dispatch_after(v9, usbQueue, block);
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)registerUSBDeviceNotification:(id)notification
{
  usbQueue = self->_usbQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_52EF4;
  v8[3] = &unk_B0C58;
  v8[4] = self;
  v8[5] = notification;
  [notification onQueue:usbQueue forMainGlobalProperty:1967407700 addListener:v8];
  v6 = self->_usbQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_52F00;
  v7[3] = &unk_B0C58;
  v7[4] = self;
  v7[5] = notification;
  [notification onQueue:v6 forMainGlobalProperty:1735356005 addListener:v7];
}

- (BOOL)sendPingToUSBDevice:(id)device
{
  [(USBDeviceManager *)self registerUSBDeviceNotification:?];
  if (self->_btPowerState)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = [NSNumber numberWithInt:v5];
  if (!sub_530BC(qword_D8DF0) && self->_btPowerState)
  {
    [(USBDeviceManager *)self updateHostSideLocalBTAddress:device withState:v6];
  }

  updateHostSideInfo = [(USBDeviceManager *)self updateHostSideInfo];
  v8 = updateHostSideInfo;
  if (updateHostSideInfo)
  {
    [updateHostSideInfo setObject:v6 forKey:@"state"];
    CFRelease(v6);
    v9 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 138412290;
      *&v12[4] = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Setting dictionary of %@ on the 515c USB device", v12, 0xCu);
    }

    *v12 = v8;
    CFRetain(v8);
    [device setMainGlobalProperty:1967669844 withData:v12 ofSize:8 withQualifier:0 ofSize:0];
    [v8 removeObjectForKey:@"state"];
  }

  else
  {
    v10 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "USB-C Error unable to create host info", v12, 2u);
    }
  }

  return v8 != 0;
}

- (void)needToRemoveUSBDeviceFromList:(id)list
{
  if ([list count])
  {
    v5 = [list count];
    v6 = dword_D8570;
    v7 = qword_D8560;
    v8 = os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT);
    if (v6 <= v5)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "ADDING A USB DEVICE, No need to remove any device", buf, 2u);
      }
    }

    else
    {
      if (v8)
      {
        currentRoutedUSBDeviceUID = self->_currentRoutedUSBDeviceUID;
        currentBTDeviceUID = self->_currentBTDeviceUID;
        *buf = 138412546;
        *&buf[4] = currentBTDeviceUID;
        *&buf[12] = 2112;
        *&buf[14] = currentRoutedUSBDeviceUID;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "REMOVING A USB DEVICE with BT_UID %@ usbUID is %@", buf, 0x16u);
      }

      if (self->_currentBTDeviceUID)
      {
        usbAudioDeviceList = self->_usbAudioDeviceList;
        if (usbAudioDeviceList)
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          obj = [(NSMutableDictionary *)usbAudioDeviceList allKeys];
          v12 = [obj countByEnumeratingWithState:&v40 objects:v57 count:16];
          if (v12)
          {
            v13 = *v41;
            do
            {
              for (i = 0; i != v12; i = i + 1)
              {
                if (*v41 != v13)
                {
                  objc_enumerationMutation(obj);
                }

                v15 = *(*(&v40 + 1) + 8 * i);
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3052000000;
                v59 = sub_4B860;
                v60 = sub_4B870;
                v61 = 0;
                v45 = 0;
                v46 = &v45;
                v47 = 0x3052000000;
                v48 = sub_4B860;
                v49 = sub_4B870;
                v50 = 0;
                if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{v15), "btAddress"}] && -[NSString containsString:](self->_currentBTDeviceUID, "containsString:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList, "objectForKeyedSubscript:", v15), "btAddress")) || objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList, "objectForKeyedSubscript:", v15), "usbUID") && objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList, "objectForKeyedSubscript:", v15), "usbUID"), "containsString:", self->_currentBTDeviceUID))
                {
                  if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{v15), "usbUID"}])
                  {
                    v16 = [[NSMutableString alloc] initWithString:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList, "objectForKeyedSubscript:", v15), "usbUID")}];
                    *(*&buf[8] + 40) = v16;

                    [-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{v15), "setUsbUID:", 0}];
                  }

                  if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{v15), "btAddress"}])
                  {
                    v17 = [[NSMutableString alloc] initWithString:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList, "objectForKeyedSubscript:", v15), "btAddress")}];
                    v46[5] = v17;

                    [-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{v15), "setBtAddress:", 0}];
                  }

                  v18 = *(qword_D8DF0 + 176);
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_53AC4;
                  block[3] = &unk_B0CC8;
                  block[6] = &v45;
                  block[4] = self;
                  block[5] = buf;
                  dispatch_async(v18, block);
                }

                _Block_object_dispose(&v45, 8);
                _Block_object_dispose(buf, 8);
              }

              v12 = [obj countByEnumeratingWithState:&v40 objects:v57 count:16];
            }

            while (v12);
          }
        }
      }
    }

    dword_D8570 = v5;
    return;
  }

  dword_D8570 = 0;
  v19 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(NSMutableDictionary *)self->_usbAudioDeviceList count];
    *buf = 134217984;
    *&buf[4] = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "All USB devices are gone, cleanup. Count of total USB devices found %lu", buf, 0xCu);
  }

  v21 = self->_currentBTDeviceUID;
  if (v21)
  {
    v22 = qword_D8DF0;
    sub_2088(__p, [(NSString *)v21 UTF8String]);
    v35 = sub_4E0CC(v22, __p);
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v35 = 0;
  }

  v23 = self->_usbAudioDeviceList;
  if (v23)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    allKeys = [(NSMutableDictionary *)v23 allKeys];
    v24 = [allKeys countByEnumeratingWithState:&v51 objects:v62 count:16];
    if (v24)
    {
      obja = *v52;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v52 != obja)
          {
            objc_enumerationMutation(allKeys);
          }

          v26 = *(*(&v51 + 1) + 8 * j);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3052000000;
          v59 = sub_4B860;
          v60 = sub_4B870;
          v61 = 0;
          if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{v26), "usbUID"}])
          {
            v27 = [[NSMutableString alloc] initWithString:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList, "objectForKeyedSubscript:", v26), "usbUID")}];
            *(*&buf[8] + 40) = v27;

            [-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{v26), "setUsbUID:", 0}];
          }

          v45 = 0;
          v46 = &v45;
          v47 = 0x3052000000;
          v48 = sub_4B860;
          v49 = sub_4B870;
          v50 = 0;
          if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{v26), "btAddress"}])
          {
            v28 = [[NSMutableString alloc] initWithString:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList, "objectForKeyedSubscript:", v26), "btAddress")}];
            v46[5] = v28;

            [-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{v26), "setBtAddress:", 0}];
          }

          v29 = *(qword_D8DF0 + 176);
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_53A38;
          v44[3] = &unk_B0C80;
          v44[4] = buf;
          v44[5] = &v45;
          dispatch_async(v29, v44);
          if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{v26), "usbDevice"}])
          {

            [-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{v26), "setUsbDevice:", 0}];
          }

          [(NSMutableDictionary *)self->_usbAudioDeviceList removeObjectForKey:v26];
          _Block_object_dispose(&v45, 8);
          _Block_object_dispose(buf, 8);
        }

        v24 = [allKeys countByEnumeratingWithState:&v51 objects:v62 count:16];
      }

      while (v24);
    }

    [(NSMutableDictionary *)self->_usbAudioDeviceList removeAllObjects];

    self->_usbAudioDeviceList = 0;
  }

  v30 = self->_currentRoutedUSBDeviceUID;
  if (!v30)
  {
    v31 = self->_currentBTDeviceUID;
    if (!v31)
    {
      self->_currentRoutedUSBDeviceStreaming = 0;
      return;
    }

    goto LABEL_52;
  }

  self->_currentRoutedUSBDeviceUID = 0;
  v31 = self->_currentBTDeviceUID;
  if (v31)
  {
LABEL_52:

    self->_currentBTDeviceUID = 0;
  }

  self->_currentRoutedUSBDeviceStreaming = 0;
  if (self->_usbMetric && v35)
  {
    v32 = *(v35 + 9280);
    v33 = mach_absolute_time();
    [(USBMetric *)self->_usbMetric setDurationRoutedUnifiedAudio:(sub_352E8(v32, v33 - self->_usbRoutedTs, 0) + [(USBMetric *)self->_usbMetric durationRoutedUnifiedAudio])];
    self->_usbRoutedTs = 0;
  }

  [(USBDeviceManager *)self sendUSBcMetric];
  v34 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Force reconfig", buf, 2u);
  }

  dispatch_async(*(qword_D8DF0 + 176), &stru_B0CA0);
}

- (void)removeUSBAudioDevice:(id)device
{
  v5 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    deviceUID = [device deviceUID];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Remove listeners for device with id%@", &v6, 0xCu);
  }

  [device onQueue:self->_usbQueue forMainGlobalProperty:1967407700 removeListener:&stru_B0CE8];
  [device onQueue:self->_usbQueue forMainGlobalProperty:1735356005 removeListener:&stru_B0D08];
  [device onQueue:self->_usbQueue forMainGlobalProperty:1967281251 removeListener:&stru_B0D28];
}

- (void)playbackOverUSBChanged:(id)changed
{
  v5 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "playbackOverUSBChanged changed", buf, 2u);
  }

  v36 = 4;
  v37 = 0;
  if ([changed getMainGlobalProperty:1735356005 withData:&v37 ofSize:&v36 withQualifier:0 ofSize:0])
  {
    v6 = -[NSString isEqual:](self->_currentRoutedUSBDeviceUID, "isEqual:", [changed deviceUID]);
    v7 = qword_D8560;
    if (v6)
    {
      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
      {
        currentRoutedUSBDeviceUID = self->_currentRoutedUSBDeviceUID;
        v9 = @" Streaming ";
        if (!v37)
        {
          v9 = @" NOT Streaming";
        }

        *buf = 138478083;
        v39 = currentRoutedUSBDeviceUID;
        v40 = 2112;
        v41 = v9;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Current active USB-C device %{private}@ stream state changed to %@", buf, 0x16u);
      }

      self->_currentRoutedUSBDeviceStreaming = v37 != 0;
    }

    else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      deviceUID = [changed deviceUID];
      v30 = self->_currentRoutedUSBDeviceUID;
      if (v37)
      {
        v31 = @" Streaming ";
      }

      else
      {
        v31 = @" NOT Streaming";
      }

      *buf = 138478339;
      v39 = deviceUID;
      v40 = 2113;
      v41 = v30;
      v42 = 2112;
      v43 = v31;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Got stream state for non-routed device %{private}@  current routed device is %{private}@ stream state changed to %@", buf, 0x20u);
    }

    v17 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Telling audioaccessoryd USB-C stream state changed", buf, 2u);
    }

    v18 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v18, "kBTAudioMsgMethod", 0x1EuLL);
    currentBTDeviceUID = self->_currentBTDeviceUID;
    if (currentBTDeviceUID)
    {
      xpc_dictionary_set_string(v18, "kAccAudioMsgArgBTAddress", [(NSString *)currentBTDeviceUID UTF8String]);
    }

    v20 = self->_currentRoutedUSBDeviceUID;
    if (v20)
    {
      xpc_dictionary_set_string(v18, "kAccAudioMsgArgUSBID", [(NSString *)v20 UTF8String]);
    }

    xpc_dictionary_set_BOOL(v18, "kAccAudioMsgArgUSBDeviceStreamingState", self->_currentRoutedUSBDeviceStreaming);
    xpc_connection_send_message(*(qword_D8DF0 + 496), v18);
    xpc_release(v18);
    if (_os_feature_enabled_impl())
    {
      v21 = self->_currentBTDeviceUID;
      if (v21)
      {
        v22 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          currentRoutedUSBDeviceStreaming = self->_currentRoutedUSBDeviceStreaming;
          *buf = 138412546;
          v39 = v21;
          v40 = 1024;
          LODWORD(v41) = currentRoutedUSBDeviceStreaming;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Calling BTHAL for BTAddress : %@ and state : %d", buf, 0x12u);
        }

        v24 = self->_currentBTDeviceUID;
        if (self->_currentRoutedUSBDeviceStreaming)
        {
          sub_50C80(qword_D8DF0, v24, 2);
          if (self->_usbMetric)
          {
            self->_usbIOStartTs = mach_absolute_time();
          }

          return;
        }

        sub_50C80(qword_D8DF0, v24, 1);
        v25 = qword_D8DF0;
        sub_2088(v34, [(NSString *)self->_currentBTDeviceUID UTF8String]);
        v26 = sub_4E0CC(v25, v34);
        if (v35 < 0)
        {
          operator delete(v34[0]);
        }

        if (self->_usbMetric && v26)
        {
          v27 = *(v26 + 9280);
          v28 = mach_absolute_time();
          p_usbIOStartTs = &self->_usbIOStartTs;
          [(USBMetric *)self->_usbMetric setDurationPlaybackUnifiedAudio:(sub_352E8(v27, v28 - self->_usbIOStartTs, 0) + [(USBMetric *)self->_usbMetric durationPlaybackUnifiedAudio])];
          goto LABEL_40;
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      sub_7E8B4();
    }

    if (_os_feature_enabled_impl())
    {
      v10 = self->_currentBTDeviceUID;
      if (v10)
      {
        v11 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v39 = v10;
          _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Error, sending unknown to BTHAL for BTAddress : %@", buf, 0xCu);
          v10 = self->_currentBTDeviceUID;
        }

        sub_50C80(qword_D8DF0, v10, 0);
        v12 = qword_D8DF0;
        sub_2088(__p, [(NSString *)self->_currentBTDeviceUID UTF8String]);
        v13 = sub_4E0CC(v12, __p);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }

        if (self->_usbMetric && v13)
        {
          v14 = *(v13 + 9280);
          v15 = mach_absolute_time();
          p_usbIOStartTs = &self->_usbIOStartTs;
          [(USBMetric *)self->_usbMetric setDurationPlaybackUnifiedAudio:(sub_352E8(v14, v15 - self->_usbIOStartTs, 0) + [(USBMetric *)self->_usbMetric durationPlaybackUnifiedAudio])];
LABEL_40:
          *p_usbIOStartTs = 0;
        }
      }
    }
  }
}

- (void)propertyChangeBTAddress:(id)address
{
  v5 = qword_D8560;
  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "propertyChangeBTAddress changed", buf, 2u);
  }

  v7 = 8;
  cf = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if ([address getMainGlobalProperty:1967407700 withData:&cf ofSize:&v7 withQualifier:0 ofSize:0])
  {
    [(USBDeviceManager *)self processUSBDeviceBluetoothInformation:address withBTAddress:cf];
  }

  else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
  {
    sub_7E8E8();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

- (void)processUSBDeviceBluetoothInformation:(id)information withBTAddress:(__CFDictionary *)address
{
  if (address)
  {
    v7 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      addressCopy = address;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Received usb BT information %@", buf, 0xCu);
    }

    Value = CFDictionaryGetValue(address, @"bt_addr");
    v9 = CFDictionaryGetValue(address, @"state");
    v10 = v9;
    if (!Value)
    {
      goto LABEL_11;
    }

    informationCopy = information;
    v11 = v9;
    v12 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      addressCopy = Value;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "BTAddress is %@", buf, 0xCu);
    }

    v13 = objc_alloc_init(NSMutableString);
    for (i = 0; ; ++i)
    {
      [v13 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%02llX", objc_msgSend(CFArrayGetValueAtIndex(Value, i), "longLongValue"))}];
      if (i == 5)
      {
        break;
      }

      [v13 appendString:@":"];
    }

    v10 = v11;
    if (([(NSString *)self->_currentBTDeviceUID isEqual:v13]& 1) == 0)
    {
      currentBTDeviceUID = self->_currentBTDeviceUID;
      self->_currentBTDeviceUID = v13;
      if (v13)
      {
        CFRetain(v13);
      }

      if (currentBTDeviceUID)
      {
        CFRelease(currentBTDeviceUID);
      }

      [-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{objc_msgSend(informationCopy, "deviceUID")), "setBtAddress:", objc_msgSend([NSString alloc], "initWithString:", v13)}];
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{objc_msgSend(informationCopy, "deviceUID")), "setFwVersion:", CFDictionaryGetValue(address, @"fw_vers"}];
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{objc_msgSend(informationCopy, "deviceUID")), "setPid:", CFDictionaryGetValue(address, @"bt_pid"}];
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{objc_msgSend(informationCopy, "deviceUID")), "setColor:", CFDictionaryGetValue(address, @"color"}];
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{objc_msgSend(informationCopy, "deviceUID")), "setFeatureBitmask:", CFDictionaryGetValue(address, @"feature_bitmask"}];
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{objc_msgSend(informationCopy, "deviceUID")), "setBtAddress:", objc_msgSend([NSString alloc], "initWithString:", v13)}];
      if ([v11 intValue])
      {
        v22 = &off_B3740;
      }

      else
      {
        v22 = &off_B3728;
      }

      [-[NSMutableDictionary objectForKeyedSubscript:](self->_usbAudioDeviceList objectForKeyedSubscript:{objc_msgSend(informationCopy, "deviceUID")), "setPairingMode:", v22}];
      sub_519A8(qword_D8DF0);
      if (self->_currentBTDeviceUID)
      {
        outputLatency = [informationCopy outputLatency];
        v24 = qword_D8560;
        if (outputLatency)
        {
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
          {
            outputLatency2 = [informationCopy outputLatency];
            *buf = 67109120;
            LODWORD(addressCopy) = outputLatency2;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Updating A2DP latency to the new USB latency %u", buf, 8u);
          }

          self->_usbLatency = [informationCopy outputLatency];
        }

        else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          sub_7E91C();
        }

        outputSafetyOffset = [informationCopy outputSafetyOffset];
        v35 = qword_D8560;
        if (outputSafetyOffset)
        {
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
          {
            outputLatency3 = [informationCopy outputLatency];
            *buf = 67109120;
            LODWORD(addressCopy) = outputLatency3;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "Updating A2DP outputSafetyOffset to USB %u", buf, 8u);
          }

          self->_safetyOffset = [informationCopy outputSafetyOffset];
        }

        else if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
        {
          sub_7E950();
        }

        v37 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          v38 = self->_currentBTDeviceUID;
          *buf = 138412290;
          addressCopy = v38;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Trying to reconfig %@", buf, 0xCu);
        }

        v39 = *(qword_D8DF0 + 176);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_54AB8;
        block[3] = &unk_ADD50;
        block[4] = self;
        dispatch_async(v39, block);
      }
    }

    else
    {
LABEL_11:
      if (!self->_currentBTDeviceUID)
      {
        return;
      }

      if (![v10 intValue])
      {
        v26 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          v27 = self->_currentBTDeviceUID;
          *buf = 138412290;
          addressCopy = v27;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Telling audioaccessoryd device %@ is ready to pair", buf, 0xCu);
        }

        v17 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v17, "kBTAudioMsgMethod", 0x1EuLL);
        v28 = self->_currentBTDeviceUID;
        if (v28)
        {
          xpc_dictionary_set_string(v17, "kAccAudioMsgArgBTAddress", [(NSString *)v28 UTF8String]);
        }

        currentRoutedUSBDeviceUID = self->_currentRoutedUSBDeviceUID;
        if (currentRoutedUSBDeviceUID)
        {
          xpc_dictionary_set_string(v17, "kAccAudioMsgArgUSBID", [(NSString *)currentRoutedUSBDeviceUID UTF8String]);
        }

        v20 = "kAccAudioMsgArgUSBDevicePairingState";
        goto LABEL_41;
      }

      if (!self->_currentBTDeviceUID)
      {
        return;
      }

      if ([v10 intValue] == 3)
      {
        v15 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          v16 = self->_currentBTDeviceUID;
          *buf = 138412290;
          addressCopy = v16;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Telling audioaccessoryd device %@ is AirPlane Mode Off", buf, 0xCu);
        }

        v17 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v17, "kBTAudioMsgMethod", 0x1EuLL);
        v18 = self->_currentBTDeviceUID;
        if (v18)
        {
          xpc_dictionary_set_string(v17, "kAccAudioMsgArgBTAddress", [(NSString *)v18 UTF8String]);
        }

        v19 = self->_currentRoutedUSBDeviceUID;
        if (v19)
        {
          xpc_dictionary_set_string(v17, "kAccAudioMsgArgUSBID", [(NSString *)v19 UTF8String]);
        }

        v20 = "kAccAudioMsgArgUSBDeviceAirPlaneModeOff";
LABEL_41:
        xpc_dictionary_set_BOOL(v17, v20, 1);
        xpc_connection_send_message(*(qword_D8DF0 + 496), v17);
        xpc_release(v17);
        return;
      }

      if (self->_currentBTDeviceUID && [v10 intValue] == 2)
      {
        v30 = qword_D8560;
        if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
        {
          v31 = self->_currentBTDeviceUID;
          *buf = 138412290;
          addressCopy = v31;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Telling audioaccessoryd device %@ is AirPlane Mode On", buf, 0xCu);
        }

        v17 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v17, "kBTAudioMsgMethod", 0x1EuLL);
        v32 = self->_currentBTDeviceUID;
        if (v32)
        {
          xpc_dictionary_set_string(v17, "kAccAudioMsgArgBTAddress", [(NSString *)v32 UTF8String]);
        }

        v33 = self->_currentRoutedUSBDeviceUID;
        if (v33)
        {
          xpc_dictionary_set_string(v17, "kAccAudioMsgArgUSBID", [(NSString *)v33 UTF8String]);
        }

        v20 = "kAccAudioMsgArgUSBDeviceAirPlaneModeOn";
        goto LABEL_41;
      }
    }
  }
}

- (void)enableAirPlaneModeForUSBPortWithUID:(id)d
{
  v4 = [d length];
  v5 = qword_D8560;
  v6 = os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 138412290;
      *&buf[4] = d;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Connected USB device with ID %@ enable airplane mode on.", buf, 0xCu);
    }

    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [+[ASACoreAudio sharedCoreAudioObject](ASACoreAudio "sharedCoreAudioObject")];
    v7 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v37;
      *&v8 = 138412290;
      v29 = v8;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v36 + 1) + 8 * i);
          v13 = qword_D8560;
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
          {
            modelName = [v12 modelName];
            boxUID = [v12 boxUID];
            audioDeviceObjectIDs = [v12 audioDeviceObjectIDs];
            *buf = 138412802;
            *&buf[4] = modelName;
            v42 = 2112;
            v43 = boxUID;
            v44 = 2112;
            v45 = audioDeviceObjectIDs;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Found box object with modelName %@ and boxUID %@ %@", buf, 0x20u);
          }

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          audioDevices = [v12 audioDevices];
          v18 = [audioDevices countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v33;
            while (2)
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v33 != v20)
                {
                  objc_enumerationMutation(audioDevices);
                }

                v22 = *(*(&v32 + 1) + 8 * j);
                if ([v22 hasProperty:1967272528 scope:1735159650 ofElement:0] && objc_msgSend(objc_msgSend(v22, "deviceUID"), "isEqual:", d))
                {
                  v23 = qword_D8560;
                  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = v29;
                    *&buf[4] = d;
                    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "UNHIDING device with UID %@", buf, 0xCu);
                  }

                  [v12 setAcquired:1];
                  v24 = [NSNumber numberWithInt:2];
                  if (sub_530BC(qword_D8DF0) || !self->_btPowerState)
                  {
                    updateHostSideInfo = [(USBDeviceManager *)self updateHostSideInfo];
                    if (updateHostSideInfo)
                    {
                      v26 = updateHostSideInfo;
                      v27 = [NSNumber numberWithInt:2];
                      [v26 setObject:v27 forKey:@"state"];
                      CFRelease(v27);
                      v28 = qword_D8560;
                      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = v29;
                        *&buf[4] = v26;
                        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Setting dictionary of %@ on the 515c USB device", buf, 0xCu);
                      }

                      *buf = v26;
                      CFRetain(v26);
                      [v22 setMainGlobalProperty:1967669844 withData:buf ofSize:8 withQualifier:0 ofSize:0];
                      [v26 removeObjectForKey:@"state"];
                    }
                  }

                  else
                  {
                    [(USBDeviceManager *)self updateHostSideLocalBTAddress:v22 withState:v24];
                  }

                  goto LABEL_30;
                }
              }

              v19 = [audioDevices countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

LABEL_30:
          ;
        }

        v9 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v9);
    }
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "No USB device connected", buf, 2u);
  }
}

- (void)disableAirPlaneModeForUSBPortWithUID:(id)d
{
  v5 = [d length];
  v6 = qword_D8560;
  v7 = os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      *&buf[4] = d;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Connected USB device with ID %@ disable airplane mode", buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [+[ASACoreAudio sharedCoreAudioObject](ASACoreAudio "sharedCoreAudioObject")];
    v8 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v36;
      *&v9 = 138412290;
      v29 = v9;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          v14 = qword_D8560;
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
          {
            modelName = [v13 modelName];
            boxUID = [v13 boxUID];
            audioDeviceObjectIDs = [v13 audioDeviceObjectIDs];
            *buf = 138412802;
            *&buf[4] = modelName;
            v41 = 2112;
            v42 = boxUID;
            v43 = 2112;
            v44 = audioDeviceObjectIDs;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Found box object with modelName %@ and boxUID %@ %@", buf, 0x20u);
          }

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          audioDevices = [v13 audioDevices];
          v19 = [audioDevices countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v32;
            while (2)
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v32 != v21)
                {
                  objc_enumerationMutation(audioDevices);
                }

                v23 = *(*(&v31 + 1) + 8 * j);
                if ([v23 hasProperty:1967272528 scope:1735159650 ofElement:0] && objc_msgSend(objc_msgSend(v23, "deviceUID"), "isEqual:", d))
                {
                  v24 = [NSNumber numberWithInt:3];
                  if (sub_530BC(qword_D8DF0) || !self->_btPowerState)
                  {
                    updateHostSideInfo = [(USBDeviceManager *)self updateHostSideInfo];
                    if (updateHostSideInfo)
                    {
                      v26 = updateHostSideInfo;
                      v27 = [NSNumber numberWithInt:3];
                      [v26 setObject:v27 forKey:@"state"];
                      CFRelease(v27);
                      v28 = qword_D8560;
                      if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = v29;
                        *&buf[4] = v26;
                        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Setting dictionary of %@ on the 515c USB device", buf, 0xCu);
                      }

                      *buf = v26;
                      CFRetain(v26);
                      [v23 setMainGlobalProperty:1967669844 withData:buf ofSize:8 withQualifier:0 ofSize:0];
                      [v26 removeObjectForKey:@"state"];
                    }
                  }

                  else
                  {
                    [(USBDeviceManager *)self updateHostSideLocalBTAddress:v23 withState:v24];
                  }

                  goto LABEL_28;
                }
              }

              v20 = [audioDevices countByEnumeratingWithState:&v31 objects:v39 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

LABEL_28:
          ;
        }

        v10 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v10);
    }
  }

  else if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "No USB device connected", buf, 2u);
  }
}

- (void)unHideUSBPortWithUID:(id)d UpdateAirPodsState:(BOOL)state
{
  v5 = [d length];
  v6 = qword_D8560;
  v7 = os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      dCopy2 = d;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Connected USB device with ID %@ unhide it.", buf, 0xCu);
    }

    if ([d isEqual:self->_currentRoutedUSBDeviceUID])
    {
      self->_currentRoutedDeviceIsUnified = 0;
    }

    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [+[ASACoreAudio sharedCoreAudioObject](ASACoreAudio "sharedCoreAudioObject")];
    v8 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v34;
      *&v9 = 138412290;
      v26 = v9;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v14 = qword_D8560;
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
          {
            modelName = [v13 modelName];
            boxUID = [v13 boxUID];
            audioDeviceObjectIDs = [v13 audioDeviceObjectIDs];
            *buf = 138412802;
            dCopy2 = modelName;
            v40 = 2112;
            v41 = boxUID;
            v42 = 2112;
            v43 = audioDeviceObjectIDs;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Found box object with modelName %@ and boxUID %@ %@", buf, 0x20u);
          }

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          audioDevices = [v13 audioDevices];
          v19 = [audioDevices countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v30;
            while (2)
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v30 != v21)
                {
                  objc_enumerationMutation(audioDevices);
                }

                v23 = *(*(&v29 + 1) + 8 * j);
                if ([v23 hasProperty:1967272528 scope:1735159650 ofElement:0] && objc_msgSend(objc_msgSend(v23, "deviceUID"), "isEqual:", d))
                {
                  v24 = qword_D8560;
                  if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = v26;
                    dCopy2 = d;
                    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "UNHIDING device with UID %@", buf, 0xCu);
                  }

                  [v13 setAcquired:1];
                  usbMetric = self->_usbMetric;
                  if (usbMetric)
                  {
                    if (![(USBMetric *)usbMetric usbcOnlyMetricCounter])
                    {
                      [(USBMetric *)self->_usbMetric setTotalCountUSBCOnly:[(USBMetric *)self->_usbMetric totalCountUSBCOnly]+ 1];
                      [(USBMetric *)self->_usbMetric setUsbcOnlyMetricCounter:1];
                    }
                  }

                  goto LABEL_28;
                }
              }

              v20 = [audioDevices countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

LABEL_28:
          ;
        }

        v10 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
      }

      while (v10);
    }
  }

  else if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "No USB device connected", buf, 2u);
  }
}

- (void)hideUSBPortWithUID:(id)d UpdateAirPodsState:(BOOL)state
{
  v6 = [d length];
  v7 = qword_D8560;
  v8 = os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      dCopy2 = d;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Connected USB device with ID %@ hide it.", buf, 0xCu);
    }

    if ([d isEqual:self->_currentRoutedUSBDeviceUID])
    {
      self->_currentRoutedDeviceIsUnified = 0;
    }

    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [+[ASACoreAudio sharedCoreAudioObject](ASACoreAudio "sharedCoreAudioObject")];
    v29 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v29)
    {
      v28 = *v35;
      *&v9 = 138412290;
      v26 = v9;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = qword_D8560;
          if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT))
          {
            modelName = [v11 modelName];
            boxUID = [v11 boxUID];
            audioDeviceObjectIDs = [v11 audioDeviceObjectIDs];
            *buf = 138412802;
            dCopy2 = modelName;
            v41 = 2112;
            v42 = boxUID;
            v43 = 2112;
            v44 = audioDeviceObjectIDs;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Found box object with modelName %@ and boxUID %@ %@", buf, 0x20u);
          }

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          audioDevices = [v11 audioDevices];
          v17 = [audioDevices countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v31;
            while (2)
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v31 != v19)
                {
                  objc_enumerationMutation(audioDevices);
                }

                v21 = *(*(&v30 + 1) + 8 * j);
                if ([v21 hasProperty:1967272528 scope:1735159650 ofElement:0] && objc_msgSend(objc_msgSend(v21, "deviceUID"), "isEqual:", d))
                {
                  usbMetric = self->_usbMetric;
                  if (usbMetric && [(USBMetric *)usbMetric usbcOnlyMetricCounter]== 1)
                  {
                    [(USBMetric *)self->_usbMetric setUsbcOnlyMetricCounter:0];
                  }

                  isAcquired = [v11 isAcquired];
                  v24 = qword_D8560;
                  v25 = os_log_type_enabled(qword_D8560, OS_LOG_TYPE_DEFAULT);
                  if (isAcquired)
                  {
                    if (v25)
                    {
                      *buf = v26;
                      dCopy2 = d;
                      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "HIDING device with UID %@", buf, 0xCu);
                    }

                    [v11 setAcquired:0];
                    goto LABEL_32;
                  }

                  if (v25)
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Device is already hidden nothing to do.", buf, 2u);
                  }
                }
              }

              v18 = [audioDevices countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

LABEL_32:
          ;
        }

        v29 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
      }

      while (v29);
    }
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "No USB device connected", buf, 2u);
  }
}

- (void)startPairingProcess:(id)process
{
  usbAudioDeviceList = self->_usbAudioDeviceList;
  if (!usbAudioDeviceList)
  {
    v6 = qword_D8560;
    if (os_log_type_enabled(qword_D8560, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      processCopy = process;
      _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Error, unable to pair to device %@", buf, 0xCu);
      usbAudioDeviceList = self->_usbAudioDeviceList;
    }

    else
    {
      usbAudioDeviceList = 0;
    }
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_55D4C;
  v7[3] = &unk_B0D50;
  v7[4] = process;
  [(NSMutableDictionary *)usbAudioDeviceList enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)sendUSBcMetric
{
  usbMetric = self->_usbMetric;
  if (usbMetric)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = sub_4B860;
    v12 = sub_4B870;
    v14[0] = @"totalCountUnifiedAudio";
    v15[0] = [NSNumber numberWithInt:[(USBMetric *)usbMetric totalCountUnifiedAudio]];
    v14[1] = @"totalCountUSBCOnly";
    v15[1] = [NSNumber numberWithInt:[(USBMetric *)self->_usbMetric totalCountUSBCOnly]];
    v14[2] = @"totalCountBTOnly";
    v15[2] = [NSNumber numberWithInt:[(USBMetric *)self->_usbMetric totalCountBTOnly]];
    v14[3] = @"totalCountCallUnifiedAudio";
    v15[3] = [NSNumber numberWithInt:[(USBMetric *)self->_usbMetric totalCountCallUnifiedAudio]];
    v14[4] = @"totalCountSiriUnifiedAudio";
    v15[4] = [NSNumber numberWithInt:[(USBMetric *)self->_usbMetric totalCountSiriUnifiedAudio]];
    v14[5] = @"audioTypeDuringPlugin";
    v15[5] = [NSNumber numberWithInt:[(USBMetric *)self->_usbMetric audioTypeDuringPlugin]];
    v14[6] = @"durationPlaybackUnifiedAudio";
    v15[6] = [NSNumber numberWithInt:[(USBMetric *)self->_usbMetric durationPlaybackUnifiedAudio]];
    v14[7] = @"durationRoutedUnifiedAudio";
    v15[7] = [NSNumber numberWithInt:[(USBMetric *)self->_usbMetric durationRoutedUnifiedAudio]];
    v14[8] = @"spatialStatusLongestDurationUnifiedAudio";
    v15[8] = [NSNumber numberWithInt:[(USBMetric *)self->_usbMetric spatialStatusLongestDurationUnifiedAudio]];
    v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:9];
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3052000000;
    v7[3] = sub_4B860;
    v7[4] = sub_4B870;
    v7[5] = @"com.apple.Bluetooth.USBCInfo";
    v4 = v9[5];
    v5 = *(qword_D8DF0 + 192);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_561E0;
    block[3] = &unk_B0C80;
    block[4] = v7;
    block[5] = &v8;
    dispatch_async(v5, block);

    self->_usbMetric = 0;
    _Block_object_dispose(v7, 8);
    _Block_object_dispose(&v8, 8);
  }
}

- (void)cleanUSBInformation
{
  currentRoutedUSBDeviceUID = self->_currentRoutedUSBDeviceUID;
  if (currentRoutedUSBDeviceUID)
  {

    self->_currentRoutedUSBDeviceUID = 0;
  }

  currentBTDeviceUID = self->_currentBTDeviceUID;
  if (currentBTDeviceUID)
  {

    self->_currentBTDeviceUID = 0;
  }
}

@end