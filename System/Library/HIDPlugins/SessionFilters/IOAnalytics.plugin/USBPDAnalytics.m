@interface USBPDAnalytics
- (BOOL)_startEventMonitoring;
- (USBPDAnalytics)init;
- (void)_handleServiceMatched:(unsigned int)a3;
- (void)_startEventMonitoring;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation USBPDAnalytics

- (USBPDAnalytics)init
{
  v12.receiver = self;
  v12.super_class = USBPDAnalytics;
  v2 = [(USBPDAnalytics *)&v12 init];
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
  v3 = [(USBPDAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting %@...", buf, 0xCu);
  }

  v6 = [(USBPDAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __23__USBPDAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(v6, block);
}

void __23__USBPDAnalytics_start__block_invoke(uint64_t a1)
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
  v3 = [(USBPDAnalytics *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping %@...", buf, 0xCu);
  }

  v6 = [(USBPDAnalytics *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __22__USBPDAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(v6, block);
}

void __22__USBPDAnalytics_stop__block_invoke(uint64_t a1)
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
  if (![(USBPDAnalytics *)self monitoring]&& [(USBPDAnalytics *)self started])
  {
    v3 = [(USBPDAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting matching notifications...", buf, 2u);
    }

    v4 = [(USBPDAnalytics *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v13, 2u);
    }

    [(USBPDAnalytics *)self setMonitoring:1];
    [(USBPDAnalytics *)self setIoNotificationPort:IONotificationPortCreate(kIOMainPortDefault)];
    v5 = [(USBPDAnalytics *)self ioNotificationPort];
    v6 = [(USBPDAnalytics *)self queue];
    IONotificationPortSetDispatchQueue(v5, v6);

    v7 = IOServiceMatching("IOPortTransportComponentCCUSBPD");
    v8 = v7;
    if (v7)
    {
      [(__CFDictionary *)v7 setObject:&off_240E8 forKey:@"IOPropertyExistsMatch"];
      v9 = [(USBPDAnalytics *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(AUVDMAnalytics *)v8 _startEventMonitoring];
      }

      v10 = IOServiceAddMatchingNotification([(USBPDAnalytics *)self ioNotificationPort], "IOServiceMatched", v8, _servicesMatched_3, self, &self->_ioServiceMatchingIterator);
      if (!v10)
      {
        _servicesMatched_3(self, self->_ioServiceMatchingIterator);
        v11 = 1;
LABEL_12:

        return v11;
      }

      [(AUVDMAnalytics *)self _startEventMonitoring];
    }

    else
    {
      [(USBPDAnalytics *)self _startEventMonitoring];
    }

    v11 = 0;
    goto LABEL_12;
  }

  return [(USBPDAnalytics *)self monitoring];
}

- (void)_stopEventMonitoring
{
  if ([(USBPDAnalytics *)self monitoring])
  {
    v3 = [(USBPDAnalytics *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v5, 2u);
    }

    [(USBPDAnalytics *)self setMonitoring:0];
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    if ([(USBPDAnalytics *)self ioNotificationPort])
    {
      IONotificationPortDestroy([(USBPDAnalytics *)self ioNotificationPort]);
    }
  }
}

- (void)_handleServiceMatched:(unsigned int)a3
{
  if (a3)
  {
    memset(name, 0, sizeof(name));
    IORegistryEntryGetName(a3, name);
    v5 = [(USBPDAnalytics *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v148 = name;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Service matched! (serviceName: %s)", buf, 0xCu);
    }

    if (![(USBPDAnalytics *)self analyticsEventsEnabled])
    {
      v14 = [(USBPDAnalytics *)self log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_5_3();
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Analytics disabled for this event - ignoring... (eventName: %@)", buf, 0xCu);
      }

      goto LABEL_79;
    }

    if (!IOObjectConformsTo(a3, "IOPortTransportComponentCCUSBPD"))
    {
      v14 = [(USBPDAnalytics *)self log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_5_3();
        _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Could not find AUVDM service in %s plane!", buf, 0xCu);
      }

      goto LABEL_79;
    }

    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = OUTLINED_FUNCTION_0();
    CFProperty = IORegistryEntryCreateCFProperty(v7, v8, v9, v10);
    objc_opt_class();
    v12 = OUTLINED_FUNCTION_1_5();
    v13 = castNSObjectToType(v12);

    if (v13)
    {
      [v6 setObject:v13 forKey:@"PortType"];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v15, "Could not find parent port type!", v16, v17, v18, v19, v121, v122, v123, v124, v125, v126, v127, v129, v130, v131, v133, v135, v137, v138, v139, v140, v141, cf, v143, v144, v145, v146, 0);
    }

    v20 = OUTLINED_FUNCTION_0();
    v24 = IORegistryEntryCreateCFProperty(v20, v21, v22, v23);
    objc_opt_class();
    v25 = castNSObjectToType(v24);

    v136 = v13;
    if (v25)
    {
      OUTLINED_FUNCTION_7_0();
      if (v13)
      {
        v26 = IOServiceMatching("IOPort");
        v143 = @"PortType";
        v144 = @"PortNumber";
        v145 = v13;
        v146 = v25;
        v27 = [NSDictionary dictionaryWithObjects:&v145 forKeys:&v143 count:2];
        [(__CFDictionary *)v26 setObject:v27 forKey:@"IOPropertyMatch"];

        v28 = [(USBPDAnalytics *)self log];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v148 = v26;
          _os_log_debug_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "matchingDict: %@", buf, 0xCu);
        }

        v29 = v26;
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v29);
        if (MatchingService)
        {
          v31 = MatchingService;
          v130 = v25;
          v131 = self;
          v32 = IORegistryEntryCreateCFProperty(MatchingService, @"BuiltIn", kCFAllocatorDefault, 0);
          objc_opt_class();
          v33 = castNSObjectToType(v32);

          if (v33)
          {
            [v6 setObject:v33 forKey:@"PortBuiltIn"];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v49, "Could not find if parent port is built-in!", v50, v51, v52, v53, v121, v122, v123, v124, v125, v126, v127, v129, v25, self, v133, v136, v137, v138, v139, v140, v141, cf, v143, v144, v145, v146, 0);
          }

          v54 = IORegistryEntryCreateCFProperty(v31, @"ConnectionUUID", kCFAllocatorDefault, 0);
          objc_opt_class();
          v55 = OUTLINED_FUNCTION_1_5();
          v56 = castNSObjectToType(v55);

          if (v56)
          {
            [v6 setObject:v56 forKey:@"ConnectionUUID"];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v57, "Could not find parent port connection UUID!", v58, v59, v60, v61, v121, v122, v123, v124, v125, v126, v127, v129, v130, v131, v133, v136, v137, v138, v139, v140, v141, cf, v143, v144, v145, v146, 0);
          }

          IOObjectRelease(v31);

          v25 = v130;
          self = v131;
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v44, "Could not find parent port!", v45, v46, v47, v48, v121, v122, v123, v124, v125, v126, v127, v129, v130, v131, v133, v13, v137, v138, v139, v140, v141, cf, v143, v144, v145, v146, 0);
        }

LABEL_36:
        v62 = v25;
        v63 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v63, v64, v65, v66);
        OUTLINED_FUNCTION_3_4();
        v67 = OUTLINED_FUNCTION_1_5();
        v68 = castNSObjectToType(v67);

        if (v68)
        {
          [v6 setObject:v68 forKey:@"USBPD_ComponentAddress"];
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v69, "Could not find component address!", v70, v71, v72, v73, v121, v122, v123, v124, v125, v126, v127, v129, v130, v131, v133, v136, v137, v138, v139, v140, v141, cf, v143, v144, v145, v146, 0);
        }

        v74 = OUTLINED_FUNCTION_0();
        IORegistryEntryCreateCFProperty(v74, v75, v76, v77);
        OUTLINED_FUNCTION_3_4();
        v78 = OUTLINED_FUNCTION_1_5();
        v79 = castNSObjectToType(v78);

        v134 = v79;
        if (v79)
        {
          [v6 setObject:v79 forKey:@"USBPD_SpecificationRevision"];
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v80, "Could not find specification revision!", v81, v82, v83, v84, v121, v122, v123, v124, v125, v126, v127, v129, v130, v131, 0, v136, v137, v138, v139, v140, v141, cf, v143, v144, v145, v146, 0);
        }

        v85 = OUTLINED_FUNCTION_0();
        v89 = IORegistryEntryCreateCFProperty(v85, v86, v87, v88);
        objc_opt_class();
        v90 = OUTLINED_FUNCTION_1_5();
        v91 = castNSObjectToType(v90);

        v92 = v62;
        v93 = v91;
        v94 = v136;
        if (v91)
        {
          [v91 objectForKeyedSubscript:@"Vendor ID"];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_3_4();
          v95 = OUTLINED_FUNCTION_1_5();
          v96 = castNSObjectToType(v95);

          if (v96)
          {
            v94 = [v93 objectForKeyedSubscript:@"Vendor ID"];
            OUTLINED_FUNCTION_7_0();
          }

          [v93 objectForKeyedSubscript:@"Product ID"];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_3_4();
          v97 = OUTLINED_FUNCTION_1_5();
          v98 = castNSObjectToType(v97);

          if (v98)
          {
            v94 = [v93 objectForKeyedSubscript:@"Product ID"];
            OUTLINED_FUNCTION_7_0();
          }

          [v93 objectForKeyedSubscript:@"bcdDevice"];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_3_4();
          v99 = OUTLINED_FUNCTION_1_5();
          v100 = castNSObjectToType(v99);

          if (v100)
          {
            v94 = [v93 objectForKeyedSubscript:@"bcdDevice"];
            OUTLINED_FUNCTION_7_0();
          }

          v132 = self;
          if (v68 == &dword_0 + 2)
          {
            [v93 objectForKeyedSubscript:@"Product Type"];
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_4();
            v101 = OUTLINED_FUNCTION_1_5();
            v102 = castNSObjectToType(v101);

            if (v102)
            {
              v103 = [v93 objectForKeyedSubscript:@"Product Type"];
              OUTLINED_FUNCTION_7_0();
            }
          }

          v104 = v6;
          v128 = v93;
          v105 = [v93 objectForKeyedSubscript:@"VDOs"];
          objc_opt_class();
          v106 = OUTLINED_FUNCTION_1_5();
          v107 = castNSObjectToType(v106);

          if (v107 && [v107 count])
          {
            v108 = 0;
            do
            {
              v109 = [v107 objectAtIndexedSubscript:v108];
              objc_opt_class();
              v110 = OUTLINED_FUNCTION_1_5();
              v111 = castNSObjectToType(v110);

              if (v111)
              {
                v112 = [v107 objectAtIndexedSubscript:v108];
                v113 = *[v112 bytes];

                v114 = @"USBPD_VDO_DiscoverIdentity_IDHeader";
                switch(v108)
                {
                  case 0:
                    goto LABEL_64;
                  case 1:
                    v114 = @"USBPD_VDO_DiscoverIdentity_CertStat";
                    goto LABEL_64;
                  case 2:
                    v114 = @"USBPD_VDO_DiscoverIdentity_Product";
                    goto LABEL_64;
                  case 3:
                    v114 = @"USBPD_VDO_DiscoverIdentity_4";
                    goto LABEL_64;
                  case 4:
                    v114 = @"USBPD_VDO_DiscoverIdentity_5";
                    goto LABEL_64;
                  case 5:
                    v114 = @"USBPD_VDO_DiscoverIdentity_6";
LABEL_64:
                    v115 = [NSNumber numberWithUnsignedInt:bswap32(v113)];
                    [v104 setObject:v115 forKey:v114];

                    break;
                  default:
                    break;
                }
              }

              v116 = [v107 count];
              if (v116 >= 6)
              {
                v117 = 6;
              }

              else
              {
                v117 = v116;
              }

              ++v108;
            }

            while (v117 > v108);
          }

          v94 = v136;
          v6 = v104;
          self = v132;
          v93 = v128;
        }

        v118 = [(USBPDAnalytics *)self log];
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_5_3();
          _os_log_impl(&dword_0, v118, OS_LOG_TYPE_DEFAULT, "Sending analytics event... (eventName: %@)", buf, 0xCu);
        }

        v119 = [(USBPDAnalytics *)self log];
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v148 = v6;
          _os_log_debug_impl(&dword_0, v119, OS_LOG_TYPE_DEBUG, "eventDict: %@", buf, 0xCu);
        }

        v14 = v6;
        if ((AnalyticsSendEventLazy() & 1) == 0)
        {
          v120 = [(USBPDAnalytics *)self log];
          if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v148 = @"com.apple.ioport.transport.component.USBPD.published";
            _os_log_error_impl(&dword_0, v120, OS_LOG_TYPE_ERROR, "Failed to send analytics event! (eventName: %@)", buf, 0xCu);
          }
        }

LABEL_79:
        return;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_4(&dword_0, &_os_log_default, v34, "Could not find parent port number!", v35, v36, v37, v38, v121, v122, v123, v124, v125, v126, v127, v129, v130, v131, v133, v13, v137, v138, v139, v140, v141, cf, v143, v144, v145, v146, 0);
    }

    cf = 0;
    v39 = OUTLINED_FUNCTION_0();
    IORegistryEntryCreateCFProperties(v39, v40, v41, v42);
    v43 = [(USBPDAnalytics *)self log];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_5_3();
      _os_log_fault_impl(&dword_0, v43, OS_LOG_TYPE_FAULT, "Could not find parent port type and number! (serviceProperties: %@)", buf, 0xCu);
    }

    goto LABEL_36;
  }
}

- (void)_startEventMonitoring
{
  v1 = [a1 log];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "IOServiceMatching failed", v2, 2u);
  }
}

@end