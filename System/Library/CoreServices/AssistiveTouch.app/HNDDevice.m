@interface HNDDevice
+ (id)createNewDevice:(__IOHIDDevice *)a3;
- (BOOL)load;
- (HNDDeviceDelegate)delegate;
- (id)_initWithHIDDevice:(__IOHIDDevice *)a3;
- (id)description;
- (void)dealloc;
- (void)handleUsagePage:(unsigned int)a3 usage:(unsigned int)a4 value:(int64_t)a5;
- (void)handleValueCallback:(__IOHIDValue *)a3;
- (void)unload;
@end

@implementation HNDDevice

- (id)_initWithHIDDevice:(__IOHIDDevice *)a3
{
  v4 = [(HNDDevice *)self init];
  v5 = v4;
  if (a3 && v4)
  {
    v4->_hidDevice = a3;
    CFRetain(a3);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [HNDVirtualHIDMouse addActiveClientWithReason:v7];
    activeHIDVirtualMouseClientAssertion = v5->_activeHIDVirtualMouseClientAssertion;
    v5->_activeHIDVirtualMouseClientAssertion = v8;
  }

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = HNDDevice;
  v3 = [(HNDDevice *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@: %@", v3, self->_hidDevice];

  return v4;
}

+ (id)createNewDevice:(__IOHIDDevice *)a3
{
  IsSwitchControlRunning = UIAccessibilityIsSwitchControlRunning();
  v5 = ASTLogMouse();
  v6 = v5;
  if (IsSwitchControlRunning)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Switch Control is running. Ignoring device: %@", buf, 0xCu);
    }

    goto LABEL_48;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v53 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Attempting to create new HNDDevice from %@", buf, 0xCu);
  }

  v7 = IOHIDDeviceGetProperty(a3, @"DeviceUsagePairs");
  v8 = ASTLogMouse();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v53 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "device usagePairs: %@", buf, 0xCu);
  }

  device = a3;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = v7;
  v9 = [v6 countByEnumeratingWithState:&v48 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v46 = 0;
    v47 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *v49;
    do
    {
      v14 = v6;
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v14);
        }

        v16 = *(*(&v48 + 1) + 8 * i);
        v17 = [NSString stringWithUTF8String:"DeviceUsage"];
        v18 = [v16 objectForKeyedSubscript:v17];

        v19 = [NSString stringWithUTF8String:"DeviceUsagePage"];
        v20 = [v16 objectForKeyedSubscript:v19];

        v21 = [v20 intValue];
        if ([v20 intValue] == 96)
        {
          v46 |= [v18 intValue] == 1;
        }

        if (v21 == 1)
        {
          v22 = [v18 intValue] == 2;
          v23 = [v18 intValue] == 6 || objc_msgSend(v18, "intValue") == 7;
          v12 |= v22;
          v11 = v23 | v11 & 1;
          BYTE4(v47) |= [v18 intValue] == 4;
          LOBYTE(v47) = v47 | ([v18 intValue] == 5);
        }
      }

      v6 = v14;
      v10 = [v14 countByEnumeratingWithState:&v48 objects:v64 count:16];
    }

    while (v10);
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v11 = 0;
    v12 = 0;
  }

  v24 = a3;
  v25 = [IOHIDDeviceGetProperty(a3 @"IAPHIDAccessoryCategory")];
  v26 = ASTLogMouse();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = NSStringFromBOOL();
    NSStringFromBOOL();
    v28 = v44 = v25;
    v29 = NSStringFromBOOL();
    v30 = NSStringFromBOOL();
    v31 = NSStringFromBOOL();
    v32 = NSStringFromBOOL();
    *buf = 138413570;
    v53 = v27;
    v54 = 2112;
    v55 = v28;
    v56 = 2112;
    v57 = v29;
    v58 = 2112;
    v59 = v30;
    v60 = 2112;
    v61 = v31;
    v62 = 2112;
    v63 = v32;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "\n                \t - hasMouseCapabilities: %@\n                \t - hasMouseKeysCapabilities: %@\n                \t - hasJoystickCapabilities: %@\n                \t - hasGamePadCapabilities: %@\n                \t - hasTadmorCapabilities: %@\n                \t - isIAPDevice: %@", buf, 0x3Eu);

    v24 = device;
    v25 = v44;
  }

  if (v12)
  {
    if (sub_100042C64() && v25 != 2)
    {
      v33 = ASTLogMouse();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v53 = v24;
        v34 = "let the system handle mouse devices. skipping %@";
LABEL_46:
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, v34, buf, 0xCu);
        goto LABEL_47;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v35 = +[AXSettings sharedInstance];
    if (([v35 assistiveTouchMouseKeysEnabled] & v11) == 1 && _AXSAssistiveTouchEnabled())
    {
      v36 = UIAccessibilityIsSwitchControlRunning();

      if (BYTE4(v47) & 1 | !v36)
      {
        goto LABEL_40;
      }
    }

    else
    {

      if ((v47 & 0x100000000) != 0)
      {
        goto LABEL_40;
      }
    }

    if ((v47 & 1) == 0 || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 assistiveTouchGameControllerEnabled], v37, (v38 & 1) == 0))
    {
      if ((v46 & 1) == 0 || !AXDeviceSupportsTadmor())
      {
LABEL_44:
        v33 = ASTLogMouse();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v53 = v24;
          v34 = "Unsupported device: %@";
          goto LABEL_46;
        }

LABEL_47:

LABEL_48:
        v42 = 0;
        goto LABEL_49;
      }
    }
  }

LABEL_40:
  v39 = objc_opt_class();
  if (!v39)
  {
    goto LABEL_44;
  }

  v40 = v39;
  v41 = ASTLogMouse();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v53 = v40;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "making device: %@", buf, 0xCu);
  }

  v42 = [objc_allocWithZone(v40) _initWithHIDDevice:v24];
LABEL_49:

  return v42;
}

- (void)dealloc
{
  [(HNDDevice *)self unload];
  hidDevice = self->_hidDevice;
  if (hidDevice)
  {
    CFRelease(hidDevice);
    self->_hidDevice = 0;
  }

  v4.receiver = self;
  v4.super_class = HNDDevice;
  [(HNDDevice *)&v4 dealloc];
}

- (void)handleValueCallback:(__IOHIDValue *)a3
{
  v5 = ASTLogMouse();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[device: %@] handleValueCallback: %@", &v9, 0x16u);
  }

  Element = IOHIDValueGetElement(a3);
  UsagePage = IOHIDElementGetUsagePage(Element);
  Usage = IOHIDElementGetUsage(Element);
  [(HNDDevice *)self handleUsagePage:UsagePage usage:Usage value:IOHIDValueGetIntegerValue(a3)];
}

- (void)handleUsagePage:(unsigned int)a3 usage:(unsigned int)a4 value:(int64_t)a5
{
  v5 = *&a4;
  v6 = *&a3;
  if (a3 == 1)
  {
    if (a4 != 56)
    {
      if (a4 == 49)
      {
        v10 = a5;
        v9 = 3;
        v11 = 0.0;
      }

      else
      {
        if (a4 != 48)
        {
          return;
        }

        v11 = a5;
        v9 = 3;
        v10 = 0.0;
      }

      v8 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    if (!a5)
    {
      return;
    }

    v9 = 4;
    v10 = 0.0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (a3 != 9)
    {
      return;
    }

    v8 = a4;
    if (a5 > 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v10 = 0.0;
  }

  v11 = 0.0;
LABEL_14:
  v14 = [objc_allocWithZone(HNDEvent) init];
  [v14 setType:v9];
  [v14 setDeltaX:v11];
  [v14 setDeltaY:v10];
  [v14 setButtonNumber:v8];
  v12 = [(HNDDevice *)self actionOverrideForUsagePage:v6 usage:v5];
  [v14 setActionOverride:v12];

  v13 = [(HNDDevice *)self delegate];
  [v13 device:self didPostEvent:v14];
}

- (BOOL)load
{
  if ([(HNDDevice *)self isLoaded])
  {
    return 1;
  }

  p_hidDevice = &self->_hidDevice;
  hidDevice = self->_hidDevice;
  if (!hidDevice)
  {
    return 0;
  }

  v6 = IOHIDDeviceOpen(hidDevice, 0);
  if (v6)
  {
    v7 = v6;
    v8 = ASTLogMouse();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100128D64(&self->_hidDevice, v7, v8);
    }

    v3 = 0;
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
    v9 = [NSNumber numberWithInt:1];
    [v8 setObject:v9 forKey:@"UsagePage"];

    v10 = [NSNumber numberWithInt:48];
    [v8 setObject:v10 forKey:@"Usage"];

    v11 = IOHIDDeviceCopyMatchingElements(*p_hidDevice, v8, 0);
    if (![(__CFArray *)v11 count])
    {
      goto LABEL_43;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v12 = v11;
    v13 = [(__CFArray *)v12 countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v55;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v55 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v54 + 1) + 8 * i);
          if (self->_maxX == 0.0)
          {
            self->_maxX = IOHIDElementGetLogicalMax(*(*(&v54 + 1) + 8 * i));
          }

          if (self->_minX == 0.0)
          {
            self->_minX = IOHIDElementGetLogicalMin(v17);
          }
        }

        v14 = [(__CFArray *)v12 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v14);
    }

    v18 = [NSNumber numberWithInt:1];
    [v8 setObject:v18 forKey:@"UsagePage"];

    v19 = [NSNumber numberWithInt:49];
    [v8 setObject:v19 forKey:@"Usage"];

    v11 = IOHIDDeviceCopyMatchingElements(*p_hidDevice, v8, 0);
    if (![(__CFArray *)v11 count])
    {
      goto LABEL_43;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v20 = v11;
    v21 = [(__CFArray *)v20 countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v51;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v51 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v50 + 1) + 8 * j);
          if (self->_maxY == 0.0)
          {
            self->_maxY = IOHIDElementGetLogicalMax(*(*(&v50 + 1) + 8 * j));
          }

          if (self->_minY == 0.0)
          {
            self->_minY = IOHIDElementGetLogicalMin(v25);
          }
        }

        v22 = [(__CFArray *)v20 countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v22);
    }

    v26 = [NSNumber numberWithInt:1];
    [v8 setObject:v26 forKey:@"UsagePage"];

    v27 = [NSNumber numberWithInt:56];
    [v8 setObject:v27 forKey:@"Usage"];

    v28 = IOHIDDeviceCopyMatchingElements(*p_hidDevice, v8, 0);
    v29 = [(__CFArray *)v28 count];
    v30 = v29 != 0;
    if (v29)
    {
      v31 = [(__CFArray *)v28 objectAtIndex:0];
      LogicalMin = IOHIDElementGetLogicalMin(v31);

      v33 = [(__CFArray *)v28 objectAtIndex:0];
      LogicalMax = IOHIDElementGetLogicalMax(v33);

      v35 = ASTLogMouse();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v59 = LogicalMin;
        v60 = 2048;
        v61 = LogicalMax;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Min wheel: %ld Max wheel: %ld", buf, 0x16u);
      }
    }

    v36 = [NSNumber numberWithInt:9];
    [v8 setObject:v36 forKey:@"UsagePage"];

    v37 = [NSNumber numberWithInt:1];
    [v8 setObject:v37 forKey:@"Usage"];

    v11 = IOHIDDeviceCopyMatchingElements(*p_hidDevice, v8, 0);
    if ([(__CFArray *)v11 count])
    {
      v38 = [NSNumber numberWithInt:9];
      [v8 setObject:v38 forKey:@"UsagePage"];

      v39 = [NSNumber numberWithInt:2];
      [v8 setObject:v39 forKey:@"Usage"];

      v40 = IOHIDDeviceCopyMatchingElements(self->_hidDevice, v8, 0);
      v41 = [(__CFArray *)v40 count]!= 0;
      v42 = [NSNumber numberWithInt:9];
      [v8 setObject:v42 forKey:@"UsagePage"];

      v43 = [NSNumber numberWithInt:3];
      [v8 setObject:v43 forKey:@"Usage"];

      v11 = IOHIDDeviceCopyMatchingElements(self->_hidDevice, v8, 0);
      v44 = [(__CFArray *)v11 count];
      self->_wheel = v30;
      self->_secondaryButton = v41;
      self->_tertiaryButton = v44 != 0;
      AXSetThreadPriority();
      IOHIDDeviceRegisterRemovalCallback(self->_hidDevice, j__objc_msgSend_unload, self);
      IOHIDDeviceRegisterInputValueCallback(self->_hidDevice, sub_10003BF0C, self);
      Property = IOHIDDeviceGetProperty(self->_hidDevice, @"MaxInputReportSize");
      valuePtr = 0;
      if (Property)
      {
        CFNumberGetValue(Property, kCFNumberIntType, &valuePtr);
        v46 = malloc_type_malloc(valuePtr, 0xFCBFE345uLL);
        self->_hidReportBuffer = v46;
        IOHIDDeviceRegisterInputReportCallback(self->_hidDevice, v46, valuePtr, sub_10003BF14, self);
      }

      self->_isLoaded = 1;
      v47 = ASTLogMouse();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v59 = self;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "loaded: %@", buf, 0xCu);
      }

      v3 = 1;
    }

    else
    {
LABEL_43:
      v3 = 0;
    }
  }

  return v3;
}

- (void)unload
{
  v3 = ASTLogMouse();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Unload device: %@", &v10, 0xCu);
  }

  if (self->_isLoaded)
  {
    hidDevice = self->_hidDevice;
    Current = CFRunLoopGetCurrent();
    IOHIDDeviceUnscheduleFromRunLoop(hidDevice, Current, kCFRunLoopDefaultMode);
    IOHIDDeviceClose(self->_hidDevice, 0);
    *&self->_isLoaded = 0;
    hidReportBuffer = self->_hidReportBuffer;
    if (hidReportBuffer)
    {
      free(hidReportBuffer);
      self->_hidReportBuffer = 0;
    }

    v7 = self;
    WeakRetained = objc_loadWeakRetained(&v7->_delegate);
    [WeakRetained device:v7 didUnload:1];

    v9 = self->_hidDevice;
    if (v9)
    {
      CFRelease(v9);
      self->_hidDevice = 0;
    }

    [(BSInvalidatable *)v7->_activeHIDVirtualMouseClientAssertion invalidate];
  }
}

- (HNDDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end