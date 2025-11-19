@interface AppleUSBCLightningAdapterAnalytics
- (AppleUSBCLightningAdapterAnalytics)init;
- (BOOL)_startEventMonitoring;
- (void)_handleServiceMatched:(unsigned int)a3;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation AppleUSBCLightningAdapterAnalytics

- (AppleUSBCLightningAdapterAnalytics)init
{
  v12.receiver = self;
  v12.super_class = AppleUSBCLightningAdapterAnalytics;
  v2 = [(AppleUSBCLightningAdapterAnalytics *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = os_log_create("com.apple.accessories", [v8 UTF8String]);
    log = v2->_log;
    v2->_log = v9;

    v2->_started = 0;
  }

  return v2;
}

- (void)start
{
  v3 = [(AppleUSBCLightningAdapterAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting %@...", buf, 0xCu);
  }

  v6 = [(AppleUSBCLightningAdapterAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __43__AppleUSBCLightningAdapterAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(v6, block);
}

void __43__AppleUSBCLightningAdapterAnalytics_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) started];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43__AppleUSBCLightningAdapterAnalytics_start__block_invoke_cold_1(v4);
    }
  }

  else
  {
    [v3 setStarted:1];
    v5 = *(a1 + 32);

    [v5 _startEventMonitoring];
  }
}

- (void)stop
{
  v3 = [(AppleUSBCLightningAdapterAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping %@...", buf, 0xCu);
  }

  v6 = [(AppleUSBCLightningAdapterAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__AppleUSBCLightningAdapterAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(v6, block);
}

void __42__AppleUSBCLightningAdapterAnalytics_stop__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) started];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setStarted:0];
    v4 = *(a1 + 32);

    [v4 _stopEventMonitoring];
  }

  else
  {
    v5 = [v3 log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __42__AppleUSBCLightningAdapterAnalytics_stop__block_invoke_cold_1(v5);
    }
  }
}

- (BOOL)_startEventMonitoring
{
  if ([(AppleUSBCLightningAdapterAnalytics *)self monitoring]|| ![(AppleUSBCLightningAdapterAnalytics *)self started])
  {

    return [(AppleUSBCLightningAdapterAnalytics *)self monitoring];
  }

  else
  {
    v3 = [(AppleUSBCLightningAdapterAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting matching notifications...", buf, 2u);
    }

    v4 = [(AppleUSBCLightningAdapterAnalytics *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v12, 2u);
    }

    [(AppleUSBCLightningAdapterAnalytics *)self setMonitoring:1];
    [(AppleUSBCLightningAdapterAnalytics *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
    v5 = [(AppleUSBCLightningAdapterAnalytics *)self ioNotificationPort];
    v6 = [(AppleUSBCLightningAdapterAnalytics *)self queue];
    IONotificationPortSetDispatchQueue(v5, v6);

    v7 = IOServiceMatching("AppleUSBLightningAdapter");
    v8 = [(AppleUSBCLightningAdapterAnalytics *)self ioNotificationPort];
    v9 = v7;
    v10 = IOServiceAddMatchingNotification(v8, "IOServiceTerminate", v9, _serviceMatched_0, self, &self->_ioServiceMatchingIterator);
    if (v10)
    {
      [(AUVDMAnalytics *)self _startEventMonitoring];
    }

    else
    {
      _serviceMatched_0(self, self->_ioServiceMatchingIterator);
    }

    return v10 == 0;
  }
}

- (void)_stopEventMonitoring
{
  if ([(AppleUSBCLightningAdapterAnalytics *)self monitoring])
  {
    v3 = [(AppleUSBCLightningAdapterAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v5, 2u);
    }

    [(AppleUSBCLightningAdapterAnalytics *)self setMonitoring:0];
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    if ([(AppleUSBCLightningAdapterAnalytics *)self ioNotificationPort])
    {
      IONotificationPortDestroy([(AppleUSBCLightningAdapterAnalytics *)self ioNotificationPort]);
    }
  }
}

- (void)_handleServiceMatched:(unsigned int)a3
{
  v5 = [(AppleUSBCLightningAdapterAnalytics *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Service matched!", buf, 2u);
  }

  if (!a3)
  {
    return;
  }

  if (![(AppleUSBCLightningAdapterAnalytics *)self analyticsEventsEnabled])
  {
    v11 = [(AppleUSBCLightningAdapterAnalytics *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v172 = @"com.apple.accessories.USBCLightningAdapter.Disconnected";
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Analytics disabled for this event - ignoring... (eventName: %@)", buf, 0xCu);
    }

    goto LABEL_89;
  }

  v168 = self;
  v169 = objc_opt_new();
  IOObjectRetain(a3);
  v6 = kCFAllocatorDefault;
  HIDWORD(v167) = a3;
  while (1)
  {
    v7 = IOObjectConformsTo(a3, "IOPortTransportProtocolAppleUVDM");
    if (v7)
    {
      v8 = OUTLINED_FUNCTION_1_4(a3, @"Firmware Version");
      if (v8)
      {
        [(__CFString *)v169 setObject:v8 forKey:@"AUVDM_FirmwareVersion"];
      }

      v9 = v6;
      v10 = OUTLINED_FUNCTION_1_4(a3, @"Hardware Version");

      if (v10)
      {
        [(__CFString *)v169 setObject:v10 forKey:@"AUVDM_HardwareVersion"];
      }

      v6 = v9;
    }

    *buf = 0;
    IORegistryEntryGetParentEntry(a3, "IOService", buf);
    IOObjectRelease(a3);
    a3 = *buf;
    if (v7)
    {
      break;
    }

    if (!*buf)
    {
      goto LABEL_19;
    }
  }

  if (*buf)
  {
    IOObjectRelease(*buf);
  }

LABEL_19:
  v12 = HIDWORD(v167);
  v13 = OUTLINED_FUNCTION_1_4(HIDWORD(v167), @"USB Mode");
  if (v13)
  {
    [(__CFString *)v169 setObject:v13 forKey:@"AUXP_USBMode"];
  }

  iterator = 0;
  IORegistryEntryGetParentIterator(HIDWORD(v167), "IOPort", &iterator);
  v14 = IOIteratorNext(iterator);
  v15 = v168;
  if (!v14)
  {
    goto LABEL_39;
  }

  v16 = v14;
  while (!IOObjectConformsTo(v16, "IOPort"))
  {
LABEL_26:
    IOObjectRelease(v16);
    v16 = IOIteratorNext(iterator);
    if (!v16)
    {
      goto LABEL_39;
    }
  }

  v17 = OUTLINED_FUNCTION_1_4(v16, @"BuiltIn");
  if (![v17 BOOLValue])
  {

    goto LABEL_26;
  }

  v18 = OUTLINED_FUNCTION_1_4(v16, @"ConnectionActiveDurationS");
  if (v18)
  {
    [(__CFString *)v169 setObject:v18 forKey:@"ConnectionDuration_S"];
  }

  *buf = 0;
  IORegistryEntryGetChildIterator(v16, "IOPort", buf);
  v19 = IOIteratorNext(*buf);
  if (v19)
  {
    v20 = v19;
    while (!IOObjectConformsTo(v20, "IOPortTransportStateUSB2"))
    {
      IOObjectRelease(v20);
      v20 = IOIteratorNext(*buf);
      if (!v20)
      {
        goto LABEL_38;
      }
    }

    v21 = OUTLINED_FUNCTION_1_4(v20, @"DataRole");
    if (v21)
    {
      [(__CFString *)v169 setObject:v21 forKey:@"USB2_DataRole"];
    }

    IOObjectRelease(v20);
  }

LABEL_38:
  IOObjectRelease(*buf);

  IOObjectRelease(v16);
LABEL_39:
  IOObjectRelease(iterator);
  iterator = 0;
  v22 = OUTLINED_FUNCTION_1_4(HIDWORD(v167), @"AID Info");
  v23 = v22;
  if (v22)
  {
    v24 = [v22 objectForKeyedSubscript:@"Accessory Firmware Version Major"];
    if (v24)
    {
      v25 = v24;
      v26 = [v23 objectForKeyedSubscript:@"Accessory Firmware Version Minor"];
      if (!v26)
      {
        goto LABEL_44;
      }

      v27 = v26;
      v28 = [v23 objectForKeyedSubscript:@"Accessory Firmware Version Rev"];

      if (v28)
      {
        v25 = [v23 objectForKeyedSubscript:@"Accessory Firmware Version Major"];
        v29 = [v23 objectForKeyedSubscript:@"Accessory Firmware Version Minor"];
        v30 = [v23 objectForKeyedSubscript:@"Accessory Firmware Version Rev"];
        v31 = [NSString stringWithFormat:@"%@.%@.%@"];
        OUTLINED_FUNCTION_0_3(v31, v32, v33, @"AUXP_AID_AccessoryFirmwareVersion", v34, v35, v36, v37, v25, v29, v30, v167, v168, v169);

LABEL_44:
      }
    }

    v38 = [v23 objectForKeyedSubscript:@"Accessory Hardware Version Major"];
    if (v38)
    {
      v39 = v38;
      v40 = [v23 objectForKeyedSubscript:@"Accessory Hardware Version Minor"];
      if (!v40)
      {
        goto LABEL_49;
      }

      v41 = v40;
      v42 = [v23 objectForKeyedSubscript:@"Accessory Hardware Version Rev"];

      if (v42)
      {
        v39 = [v23 objectForKeyedSubscript:@"Accessory Hardware Version Major"];
        v43 = [v23 objectForKeyedSubscript:@"Accessory Hardware Version Minor"];
        v44 = [v23 objectForKeyedSubscript:@"Accessory Hardware Version Rev"];
        v45 = [NSString stringWithFormat:@"%@.%@.%@"];
        OUTLINED_FUNCTION_0_3(v45, v46, v47, @"AUXP_AID_AccessoryHardwareVersion", v48, v49, v50, v51, v39, v43, v44, v167, v168, v169);

LABEL_49:
      }
    }

    v52 = [v23 objectForKeyedSubscript:@"Accessory Manufacturer"];

    if (v52)
    {
      v53 = [v23 objectForKeyedSubscript:@"Accessory Manufacturer"];
      OUTLINED_FUNCTION_0_3(v53, v54, v55, @"AUXP_AID_AccessoryManufacturer", v56, v57, v58, v59, v164, v165, v166, v167, v168, v169);
    }

    v60 = [v23 objectForKeyedSubscript:@"Accessory Model"];

    if (v60)
    {
      v61 = [v23 objectForKeyedSubscript:@"Accessory Model"];
      OUTLINED_FUNCTION_0_3(v61, v62, v63, @"AUXP_AID_AccessoryModel", v64, v65, v66, v67, v164, v165, v166, v167, v168, v169);
    }

    v68 = [v23 objectForKeyedSubscript:@"Accessory Name"];

    if (v68)
    {
      v69 = [v23 objectForKeyedSubscript:@"Accessory Name"];
      OUTLINED_FUNCTION_0_3(v69, v70, v71, @"AUXP_AID_AccessoryName", v72, v73, v74, v75, v164, v165, v166, v167, v168, v169);
    }

    v76 = [v23 objectForKeyedSubscript:@"Digital ID"];
    if (v76)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v76 length] == &dword_4 + 2)
      {
        v77 = [v76 bytes];
        v78 = [NSNumber numberWithUnsignedLongLong:*v77 | (*(v77 + 2) << 32)];
        [(__CFString *)v169 setObject:v78 forKey:@"AUXP_AID_DigitalID"];
        v79 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", *([v76 bytes] + 2) & 1);
        OUTLINED_FUNCTION_2_2();

        v80 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", (*([v76 bytes] + 2) >> 3) & 1);
        OUTLINED_FUNCTION_2_2();

        v81 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", (*[v76 bytes] >> 5) & 1);
        OUTLINED_FUNCTION_2_2();

        v82 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", (*[v76 bytes] >> 2) & 1);
        OUTLINED_FUNCTION_2_2();

        v83 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", *([v76 bytes] + 2) >> 7);
        OUTLINED_FUNCTION_2_2();

        v84 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", *([v76 bytes] + 1) >> 4);
        OUTLINED_FUNCTION_2_2();

        v85 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", *[v76 bytes] & 3);
        OUTLINED_FUNCTION_2_2();

        v86 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", (*[v76 bytes] >> 3) & 3);
        OUTLINED_FUNCTION_2_2();
      }
    }

    v87 = [v23 objectForKeyedSubscript:@"Accessory HID VID"];

    if (v87)
    {
      v88 = [v23 objectForKeyedSubscript:@"Accessory HID VID"];
      OUTLINED_FUNCTION_0_3(v88, v89, v90, @"AUXP_AID_HID_PID", v91, v92, v93, v94, v164, v165, v166, v167, v168, v169);
    }

    v95 = [v23 objectForKeyedSubscript:@"Accessory HID PID"];

    if (v95)
    {
      v96 = [v23 objectForKeyedSubscript:@"Accessory HID PID"];
      OUTLINED_FUNCTION_0_3(v96, v97, v98, @"AUXP_AID_HID_VID", v99, v100, v101, v102, v164, v165, v166, v167, v168, v169);
    }
  }

  v103 = OUTLINED_FUNCTION_1_4(v12, @"MikeyBus Info");
  v104 = v103;
  if (v103)
  {
    v105 = [v103 objectForKeyedSubscript:@"Product Firmware Revision"];

    if (v105)
    {
      v106 = [v104 objectForKeyedSubscript:@"Product Firmware Revision"];
      OUTLINED_FUNCTION_0_3(v106, v107, v108, @"AUXP_MikeyBus_FirmwareRevision", v109, v110, v111, v112, v164, v165, v166, v167, v168, v169);
    }

    v113 = [v104 objectForKeyedSubscript:@"Product Hardware Revision"];

    if (v113)
    {
      v114 = [v104 objectForKeyedSubscript:@"Product Hardware Revision"];
      OUTLINED_FUNCTION_0_3(v114, v115, v116, @"AUXP_MikeyBus_HardwareRevision", v117, v118, v119, v120, v164, v165, v166, v167, v168, v169);
    }

    v121 = [v104 objectForKeyedSubscript:@"Product ID"];

    if (v121)
    {
      v122 = [v104 objectForKeyedSubscript:@"Product ID"];
      OUTLINED_FUNCTION_0_3(v122, v123, v124, @"AUXP_MikeyBus_PID", v125, v126, v127, v128, v164, v165, v166, v167, v168, v169);
    }

    v129 = [v104 objectForKeyedSubscript:@"Product Model Number"];

    if (v129)
    {
      v130 = [v104 objectForKeyedSubscript:@"Product Model Number"];
      OUTLINED_FUNCTION_0_3(v130, v131, v132, @"AUXP_MikeyBus_ProductModelNumber", v133, v134, v135, v136, v164, v165, v166, v167, v168, v169);
    }

    v137 = [v104 objectForKeyedSubscript:@"Product Name"];

    if (v137)
    {
      v138 = [v104 objectForKeyedSubscript:@"Product Name"];
      OUTLINED_FUNCTION_0_3(v138, v139, v140, @"AUXP_MikeyBus_ProductName", v141, v142, v143, v144, v164, v165, v166, v167, v168, v169);
    }

    v145 = [v104 objectForKeyedSubscript:@"Product Vendor Name"];

    if (v145)
    {
      v146 = [v104 objectForKeyedSubscript:@"Product Vendor Name"];
      OUTLINED_FUNCTION_0_3(v146, v147, v148, @"AUXP_MikeyBus_ProductVendorName", v149, v150, v151, v152, v164, v165, v166, v167, v168, v169);
    }

    v153 = [v104 objectForKeyedSubscript:@"Product Vendor ID"];

    if (v153)
    {
      v154 = [v104 objectForKeyedSubscript:@"Product Vendor ID"];
      OUTLINED_FUNCTION_0_3(v154, v155, v156, @"AUXP_MikeyBus_VID", v157, v158, v159, v160, v164, v165, v166, v167, v168, v169);
    }
  }

  v161 = [(AppleUSBCLightningAdapterAnalytics *)v15 log];
  if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v172 = @"com.apple.accessories.USBCLightningAdapter.Disconnected";
    _os_log_impl(&dword_0, v161, OS_LOG_TYPE_DEFAULT, "Sending analytics event... (eventName: %@)", buf, 0xCu);
  }

  v162 = [(AppleUSBCLightningAdapterAnalytics *)v15 log];
  if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v172 = v169;
    _os_log_debug_impl(&dword_0, v162, OS_LOG_TYPE_DEBUG, "eventDict: %@", buf, 0xCu);
  }

  v11 = v169;
  if ((AnalyticsSendEventLazy() & 1) == 0)
  {
    v163 = [(AppleUSBCLightningAdapterAnalytics *)v15 log];
    if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v172 = @"com.apple.accessories.USBCLightningAdapter.Disconnected";
      _os_log_error_impl(&dword_0, v163, OS_LOG_TYPE_ERROR, "Failed to send analytics event! (eventName: %@)", buf, 0xCu);
    }
  }

LABEL_89:
}

@end